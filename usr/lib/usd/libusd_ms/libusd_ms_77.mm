uint64_t sub_29A47539C(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v21 = a1;
  if (v6)
  {
    v9 = sub_29A00C9BC(a1, v6);
    v6 = v10;
    v3 = *a1;
    v4 = a1[1];
    v11 = (v4 - *a1) >> 3;
  }

  else
  {
    v9 = 0;
    v11 = v5;
  }

  v12 = &v9[8 * v5];
  v18 = v9;
  v19 = v12;
  v13 = &v12[-8 * v11];
  *v12 = *a2;
  *a2 = 0;
  *&v20 = v12 + 8;
  *(&v20 + 1) = &v9[8 * v6];
  sub_29A4754B0(a1, v3, v4, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A475558(&v18);
  return v17;
}

void sub_29A47549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A475558(va);
  _Unwind_Resume(a1);
}

void sub_29A4754B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }
}

void sub_29A475534(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A321930();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A475558(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 8;
    sub_29A321930();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A4755A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *&v16 = v15;
  *(&v16 + 1) = &v7[56 * v6];
  *(sub_29A41B000(v15, a2) + 10) = *(a2 + 40);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A4756F8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A4757A4(&v14);
  return v13;
}

void sub_29A4756E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4757A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4756F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_29A41B000(a4, v8);
      *(a4 + 40) = *(v8 + 40);
      v8 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_29A41AF74(v6);
      v6 += 56;
    }
  }

  return result;
}

void sub_29A475780(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_29A41AF74(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4757A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_29A41AF74(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A4757F4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void *sub_29A475874(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1BF94C(a1, a2);
    v4 = a1[1];
    bzero(v4, a2 << 6);
    a1[1] = &v4[64 * a2];
  }

  return a1;
}

void sub_29A4758F4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A321930();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A475978(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    if (v6)
    {
      v7 = sub_29A10CB10(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v7[4 * v2] = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }

  sub_29A00C9A4();
}

void sub_29A475AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A475B70(va);
  _Unwind_Resume(a1);
}

void sub_29A475AB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }
}

void sub_29A475B48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A321930();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A475B70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 32;
    sub_29A321930();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A475BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_29B2A78E0(a1, v5);
      v5 += 64;
    }
  }

  return sub_29A475C9C(v11);
}

uint64_t sub_29A475C9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A475CD4(a1);
  }

  return a1;
}

uint64_t *sub_29A475CD4(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 64;
      result = sub_29B2A78E0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

atomic_uint *sub_29A475D28(atomic_uint *a1)
{
  sub_29A475D5C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint *sub_29A475D5C(atomic_uint *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 64;
      result = sub_29B2A78E0(v4, v1 - 64);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A475DA4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v18 = v8;
  v19 = v9;
  *(&v20 + 1) = &v8[64 * v7];
  *v9 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(a2 + 16);
  *(v9 + 4) = *(a2 + 32);
  *(v9 + 1) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v11 = *(a2 + 40);
  *(v9 + 7) = *(a2 + 56);
  *(v9 + 40) = v11;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *&v20 = v9 + 64;
  v12 = a1[1];
  v13 = &v9[*a1 - v12];
  sub_29A475BC0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A475D28(&v18);
  return v17;
}

void sub_29A475ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A475D28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A475EE0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A00C9BC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[v7];
  *v16 = *a2;
  sub_29B293C98(&v8[v2]);
  *&v17 = v17 + 8;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  sub_29A475FF4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A47609C(&v15);
  return v14;
}

void sub_29A475FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A47609C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A475FF4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      *a4 = *v8;
      result = sub_29B293C98(a4);
      ++v8;
      ++a4;
      v7 -= 8;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_29A34BEAC(v6++);
    }
  }

  return result;
}

void sub_29A476078(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = sub_29A34BEAC(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A47609C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_29A34BEAC((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_29A4760FC()
{
  result = *(v1 + 8);
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_29A476128(pxrInternal__aapl__pxrReserved__::SdfPath *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&a49, (v49 + 24), a1);
}

uint64_t *sub_29A476160@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{

  return sub_29A321960(&a42, (a1 + v42));
}

void sub_29A47617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);

  sub_29A0176E4(&a10);
}

void sub_29A476198()
{
  *v0 = *v1;
  *v1 = 0;

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
}

__n128 sub_29A4761C8@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  *(a1 + 120) = *v1;
  return result;
}

void sub_29A4761E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{

  sub_29A184A10((v19 + 16), a19);
}

void **sub_29A476208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return sub_29A01729C(a23, &a49);
}

pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::PcpLayerStackIdentifier(pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::PcpExpressionVariablesSource(this + 7);
  *(this + 9) = 0;
  return this;
}

void sub_29A476264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  sub_29A0176E4(&a10);
  v12 = *(v10 + 24);
  if (v12)
  {
    sub_29B28FFF4(v12);
  }

  sub_29B293818(v10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    sub_29B28FD1C((a1 + 8), (a2 + 8));
    *(a1 + 16) = *(a2 + 16);
    sub_29B28FD1C((a1 + 24), (a2 + 24));
    sub_29A476744(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    v6 = *(a2 + 56);
    v5 = *(a2 + 64);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 64);
    *(a1 + 56) = v6;
    *(a1 + 64) = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator==(void *a1, void *a2)
{
  v4[0] = a1 + 9;
  v4[1] = a1;
  v4[2] = a1 + 2;
  v4[3] = a1 + 4;
  v4[4] = a1 + 7;
  v3[0] = a2 + 9;
  v3[1] = a2;
  v3[2] = a2 + 2;
  v3[3] = a2 + 4;
  v3[4] = a2 + 7;
  return sub_29A476884(&v5, v4, v3);
}

void *pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatBaseName(void *a1)
{
  v2 = *(*a1 - 24);
  v3 = sub_29A476490();
  *std::ios_base::iword((a1 + v2), v3) = 2;
  return a1;
}

uint64_t sub_29A476490()
{
  if ((atomic_load_explicit(&qword_2A1741FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741FA0))
  {
    qword_2A1741F98 = std::ios_base::xalloc();
    __cxa_guard_release(&qword_2A1741FA0);
  }

  return qword_2A1741F98;
}

void *pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatRealPath(void *a1)
{
  v2 = *(*a1 - 24);
  v3 = sub_29A476490();
  *std::ios_base::iword((a1 + v2), v3) = 1;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatIdentifier(void *a1)
{
  v2 = *(*a1 - 24);
  v3 = sub_29A476490();
  *std::ios_base::iword((a1 + v2), v3) = 0;
  return a1;
}

void sub_29A4765DC(void *a1, uint64_t a2)
{
  v4 = sub_29A00911C(a1, "@", 1);
  sub_29B2A8044(a1, a2, &__p);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v16;
  }

  v7 = sub_29A00911C(v4, p_p, v6);
  sub_29A00911C(v7, "@", 1);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v8 = sub_29B293A0C(a2 + 16);
  if (v9 & 1 | v8)
  {
    v11 = sub_29A00911C(a1, ",@", 2);
    sub_29B2A8044(a1, a2 + 16, &__p);
    v12 = (v17 & 0x80u) == 0 ? &__p : __p;
    v13 = (v17 & 0x80u) == 0 ? v17 : v16;
    v14 = sub_29A00911C(v11, v12, v13);
    sub_29A00911C(v14, "@", 1);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    sub_29A00911C(a1, ",exprVarOverrideSource=", 23);
    sub_29A4765DC(a1, v10);
  }
}

void sub_29A476724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A476744(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29A03AF64(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(a1, v11);
    v12 = sub_29A1C5018(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29A4274B8(&v18, a2, (a2 + v13), v8);
    v12 = sub_29A1C5018(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29A4274B8(&v19, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v17 = *(v16 - 8);
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      v16 -= 16;
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

uint64_t sub_29A476884(uint64_t a1, void **a2, void **a3)
{
  result = sub_29A4768C8(&v6, a2, a3);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::operator==(a2[4], a3[4]);
  }

  return result;
}

uint64_t sub_29A4768C8(uint64_t a1, void **a2, void **a3)
{
  result = sub_29A47690C(&v6, a2, a3);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::ArResolverContext::operator==(a2[3], a3[3]);
  }

  return result;
}

uint64_t sub_29A47690C(uint64_t a1, void **a2, void **a3)
{
  result = sub_29A476964(&v4, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return result;
}

uint64_t sub_29A476964(uint64_t a1, void **a2, void **a3)
{
  if (**a2 == **a3)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return 0;
}

uint64_t sub_29A476AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (pxrInternal__aapl__pxrReserved__::ArResolverContext::operator<(*(a2 + 16), *(a3 + 16)))
  {
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::ArResolverContext::operator<(*(a3 + 16), *(a2 + 16)))
  {
    return 0;
  }

  return sub_29A476B58(&v6, a2, a3);
}

uint64_t sub_29A476B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::operator<(*(a2 + 24), *(a3 + 24));
  if ((v5 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::operator<(*(a3 + 24), *(a2 + 24));
  }

  return v5;
}

unint64_t sub_29A476CA8(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a3)
{
  v5 = sub_29A476D34(&v7, a2);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  result = pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::GetHash(a3);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

unint64_t sub_29A476D34(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 4;
    do
    {
      v7 = *v2;
      v2 += 2;
      v8 = (*(*v7 + 48))(v7);
      if (v4)
      {
        v8 += (v8 + v5 + (v8 + v5) * (v8 + v5)) >> 1;
      }

      v4 = 1;
      v5 = v8;
      --v6;
    }

    while (v6);
    v3 = 0x9E3779B97F4A7C55 * v8;
  }

  return bswap64(v3);
}

void *pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **this, const char *a2, char *a3)
{
  if ((atomic_load_explicit(&qword_2A1741FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741FE0))
  {
    sub_29A41AF24(&unk_2A1741FA8);
    __cxa_atexit(sub_29A476E94, &unk_2A1741FA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741FE0);
  }

  v4 = *this;
  if (!*this)
  {
    return &unk_2A1741FA8;
  }

  return pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(v4, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *this, const char *a2, char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(this + 225);
  if ((v4 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_EvaluateUncached(this, a2, a3, v10);
    sub_29A0EB5BC(&v9, this + 224);
    v5 = atomic_load(this + 225);
    if ((v5 & 1) == 0)
    {
      if (this + 88 != v10)
      {
        v6 = sub_29A41AF74(this + 88);
        sub_29A41B000(v6, v10);
      }

      *(this + 8) = v11;
      atomic_store(1u, this + 225);
    }

    v7 = v9;
    if (v9)
    {
      __dmb(0xBu);
      *v7 = 0;
    }

    sub_29A41AF74(v10);
  }

  return this + 88;
}

void sub_29A476F68(_Unwind_Exception *a1, _BYTE *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    __dmb(0xBu);
    *a2 = 0;
  }

  sub_29A41AF74(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::Identity(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1741FF0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1741FF0);
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::PcpMapFunction::Identity(v4);
      pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(v5, &qword_2A1741FE8);
      __cxa_atexit(sub_29A4770F8, &qword_2A1741FE8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1741FF0);
    }
  }

  v3 = qword_2A1741FE8;
  *a1 = qword_2A1741FE8;
  if (v3)
  {
    atomic_fetch_add((v3 + 84), 1u);
  }
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(pxrInternal__aapl__pxrReserved__::PcpMapExpression *this@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(0, &v7, &v6, this, &v8);
  v5 = v8;
  *a2 = v8;
  if (v5)
  {
    atomic_fetch_add(v5 + 21, 1u);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v4);
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6, v4);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }
}

void sub_29A4770D4(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, atomic_uint *a11)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10, a2);
  }

  if (a11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_29A4770F8(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *a1;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, atomic_uint **a5@<X8>)
{
  v22[7] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v17, "Pcp", "PcpMapExpresion");
  sub_29A478520(&v19, a1, a2, a3, a4);
  if (v19 == 1)
  {
    v10 = operator new(0xE8uLL);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Node(v10, &v19);
    *a5 = v10;
    atomic_fetch_add(v10 + 21, 1u);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
    if (!v11)
    {
      v11 = sub_29A4785B4(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
    }

    if ((sub_29A4787D4(v11, 1, &v19, &v14, sub_29A478C20) & 1) != 0 || !atomic_fetch_add((*(v16 + 96) + 84), 1u))
    {
      v12 = operator new(0xE8uLL);
      pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Node(v12, &v19);
      *a5 = v12;
      atomic_fetch_add(v12 + 21, 1u);
      *(v16 + 96) = v12;
    }

    else
    {
      *a5 = *(v16 + 96);
    }

    v16 = 0;
    sub_29A0F845C(&v14);
  }

  sub_29A41AF74(v22);
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21, v13);
  }

  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v13);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29A477344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v6 = 0;
  sub_29A0F845C(va);
  sub_29A477AC4(va2);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapExpression *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpMapExpression *a2@<X1>, char *a3@<X2>, pxrInternal__aapl__pxrReserved__ **a4@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = *this;
  if (*this)
  {
    if (!*v7)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity((v7 + 6));
      if (result)
      {
        v9 = *a2;
        goto LABEL_9;
      }
    }
  }

  v10 = *a2;
  if (*a2)
  {
    if (!*v10)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity((v10 + 6));
      if (result)
      {
        v9 = *this;
LABEL_9:
        *a4 = v9;
        if (v9)
        {
          atomic_fetch_add((v9 + 84), 1u);
        }

        return result;
      }
    }
  }

  if (**this || **a2)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_29A41AF24(v18);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(3, this, a2, v18, &v17);
    v12 = v17;
    *a4 = v17;
    if (v12)
    {
      atomic_fetch_add(v12 + 21, 1u);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v11);
      }
    }
  }

  else
  {
    v13 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(this, a2, a3);
    v16 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a2, v14, v15);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::Compose(v13, v16, v18);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(v18, a4);
  }

  return sub_29A41AF74(v18);
}

void sub_29A477520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A41AF74(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::Inverse(pxrInternal__aapl__pxrReserved__::PcpMapExpression *this@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  if (**this)
  {
LABEL_2:
    v12 = 0;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_29A41AF24(v14);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(2, this, &v12, v14, &v13);
    v5 = v13;
    *a2 = v13;
    if (v5)
    {
      atomic_fetch_add(v5 + 21, 1u);
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v4);
      }
    }

    sub_29A41AF74(v14);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v6);
    }

    return;
  }

  IsIdentity = pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity((*this + 24));
  v10 = *this;
  if (!IsIdentity)
  {
    if (!*v10)
    {
      v11 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(this, v8, v9);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetInverse(v11, v14);
      pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(v14, a2);
      sub_29A41AF74(v14);
      return;
    }

    goto LABEL_2;
  }

  *a2 = v10;
  if (v10)
  {
    atomic_fetch_add(v10 + 21, 1u);
  }
}

void sub_29A477668(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A41AF74(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::AddRootIdentity(atomic_uint **this@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *this;
  if (**this)
  {
    goto LABEL_2;
  }

  IsIdentity = pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity((v4 + 6));
  v4 = *this;
  if (IsIdentity)
  {
    *a2 = v4;
    if (!v4)
    {
      return;
    }

    v5 = v4 + 21;
    goto LABEL_7;
  }

  if (*v4)
  {
LABEL_2:
    if (*(v4 + 80) == 1)
    {
      *a2 = v4;
      v5 = v4 + 21;
LABEL_7:
      atomic_fetch_add(v5, 1u);
      return;
    }

    v13 = 0;
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_29A41AF24(v15);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(4, this, &v13, v15, &v14);
    v10 = v14;
    *a2 = v14;
    if (v10)
    {
      atomic_fetch_add(v10 + 21, 1u);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v9);
      }
    }

    sub_29A41AF74(v15);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v11);
    }
  }

  else
  {
    v12 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(this, v7, v8);
    sub_29A477820(v12, v15);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(v15, a2);
    sub_29A41AF74(v15);
  }
}

void sub_29A4777E4(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A41AF74(va);
  _Unwind_Resume(a1);
}

void sub_29A477820(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 36) == 1)
  {
    sub_29A41B000(a2, this);
    *(a2 + 40) = *(this + 40);
  }

  else
  {
    SourceToTargetMap = pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetSourceToTargetMap(this, v7);
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(SourceToTargetMap);
    v8 = v5;
    v6 = sub_29A472B80(v7, v5, &unk_29B4D6118, &v8);
    sub_29A2258F0(v6 + 9, v5);
    sub_29A225948(v6 + 10, v5 + 1);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(v7, (this + 40), a2);
    sub_29A1EF938(v7, v7[1]);
  }
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::NewVariable(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x10uLL);
  v7 = 0;
  v8 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_29A41AF24(v10);
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::New(1, &v8, &v7, v10, &v9);
  v5 = v9;
  *v4 = &unk_2A20502E8;
  v4[1] = v5;
  sub_29A41AF74(v10);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v6);
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
  }

  pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::SetValueForVariable(v4[1], a1);
  *a2 = v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_ExpressionTreeAlwaysHasIdentity(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
LABEL_9:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }

      goto LABEL_7;
    }

    v3 = *(a1 + 8);
    if (!v3)
    {
      return v3 & 1;
    }

    if (*(v3 + 80) == 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v1)
  {
    LOBYTE(v3) = *(a1 + 60);
    return v3 & 1;
  }

  if (v1 == 1)
  {
    goto LABEL_15;
  }

LABEL_7:
  v2 = *(a1 + 8);
  if (v2 && (*(v2 + 80) & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  v3 = *(a1 + 16);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 80);
  }

  return v3 & 1;
}

uint64_t sub_29A477AC4(uint64_t a1)
{
  sub_29A41AF74(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, v2);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Node(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add((v4 + 84), 1u);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add((v5 + 84), 1u);
  }

  sub_29A41B000((a1 + 24), a2 + 24);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_ExpressionTreeAlwaysHasIdentity(a1);
  sub_29A41AF24(a1 + 88);
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 160) = 0;
  sub_29A41AF24(a1 + 168);
  *(a1 + 224) = 0;
  atomic_store(0, (a1 + 225));
  atomic_store(0, (a1 + 84));
  v6 = *(a1 + 8);
  if (v6)
  {
    sub_29A0EB5BC(v14, v6 + 224);
    v7 = *(a1 + 8);
    v13 = a1;
    sub_29A0F2BE4((v7 + 144), &v13, &v13);
    v8 = v14[0];
    if (v14[0])
    {
      __dmb(0xBu);
      *v8 = 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29A0EB5BC(v14, v9 + 224);
    v10 = *(a1 + 16);
    v13 = a1;
    sub_29A0F2BE4((v10 + 144), &v13, &v13);
    v11 = v14[0];
    if (v14[0])
    {
      __dmb(0xBu);
      *v11 = 0;
    }
  }

  return a1;
}

void sub_29A477C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  sub_29A41AF74(v12 + 24);
  sub_29A082B84(v12, *v13);
  sub_29A41AF74(v11 + 88);
  sub_29A477AC4(v11);
  _Unwind_Resume(a1);
}

void sub_29A477CA8(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, a2);
  }

  JUMPOUT(0x29A477CA0);
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::~_Node(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    sub_29A0EB5BC(&v32, v2 + 224);
    v3 = *(this + 1);
    v36[0] = this;
    sub_29A479190((v3 + 144), v36);
    v4 = v32;
    if (v32)
    {
      __dmb(0xBu);
      *v4 = 0;
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    sub_29A0EB5BC(&v32, v5 + 224);
    v6 = *(this + 2);
    v36[0] = this;
    sub_29A479190((v6 + 144), v36);
    v7 = v32;
    if (v32)
    {
      __dmb(0xBu);
      *v7 = 0;
    }
  }

  if (*this != 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
    if (!v8)
    {
      v8 = sub_29A4785B4(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
    }

    if (v34)
    {
      v9 = v32;
      v32 = 0;
      if (v33 == 1)
      {
LABEL_12:
        v10 = *v9;
        v11 = *v9 & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v12 = v10;
          atomic_compare_exchange_strong(v9, &v12, v11);
          if (v12 == v10)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v9, 0, memory_order_relaxed) != v10)
          {
            sched_yield();
            goto LABEL_12;
          }
        }
      }

      else
      {
        atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFCLL);
      }

      v34 = 0;
    }

    if (sub_29A4787D4(v8, 0, this, &v32, sub_29A479214) && *(v34 + 96) == this)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
      if (!v13)
      {
        v13 = sub_29A4785B4(&pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_nodeRegistry);
      }

      v14 = v34;
      v15 = v35;
      v16 = *v13;
      __dmb(0xBu);
      while (1)
      {
        sub_29A478CB0(v36, v13, v16 & v15, 1);
        v17 = (v36[2] + 16);
        do
        {
          v18 = v17;
          v17 = *v17;
          if (v17)
          {
            v19 = v17 == v14;
          }

          else
          {
            v19 = 1;
          }
        }

        while (!v19);
        if (v17)
        {
          break;
        }

        v20 = *v13;
        __dmb(0xBu);
        if (v16 == v20 || !sub_29A108BB8(v13, v15, v16, v20))
        {
          if (v34)
          {
            v21 = v32;
            v32 = 0;
            if (v33 == 1)
            {
LABEL_35:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_35;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            v34 = 0;
          }

          sub_29A0F845C(v36);
          goto LABEL_53;
        }

        sub_29A0F845C(v36);
        v16 = v20;
      }

      *v18 = *v14;
      atomic_fetch_add(v13 + 65, 0xFFFFFFFFFFFFFFFFLL);
      sub_29A0F845C(v36);
      if ((v33 & 1) == 0)
      {
        v33 = 1;
        tbb::spin_rw_mutex_v3::internal_upgrade(v32);
      }

      if (v34)
      {
        v25 = v32;
        v32 = 0;
        if (v33 == 1)
        {
LABEL_43:
          v26 = *v25;
          v27 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v28 = v26;
            atomic_compare_exchange_strong(v25, &v28, v27);
            if (v28 == v26)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v26)
            {
              sched_yield();
              goto LABEL_43;
            }
          }
        }

        else
        {
          atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFCLL);
        }

        v34 = 0;
      }

      sub_29A478788(v14);
    }

LABEL_53:
    v34 = 0;
    sub_29A0F845C(&v32);
  }

  sub_29A41AF74(this + 168);
  sub_29A082B84(this + 144, *(this + 19));
  sub_29A41AF74(this + 88);
  sub_29A41AF74(this + 24);
  v30 = *(this + 2);
  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30, v29);
  }

  v31 = *(this + 1);
  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31, v29);
  }
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_EvaluateUncached(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *this@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *this;
  if (*this <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      sub_29A41B000(a4, this + 168);
      v8 = *(this + 13);
    }

    else
    {
      sub_29A41B000(a4, this + 24);
      v8 = *(this + 4);
    }

    *(a4 + 40) = v8;
    return;
  }

  switch(v6)
  {
    case 2:
      v9 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(*(this + 1));

      pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetInverse(v9, a4);
      break;
    case 3:
      v10 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(*(this + 1));
      v11 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(*(this + 2));

      pxrInternal__aapl__pxrReserved__::PcpMapFunction::Compose(v10, v11, a4);
      break;
    case 4:
      v7 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::EvaluateAndCache(*(this + 1));

      sub_29A477820(v7, a4);
      return;
    default:
LABEL_19:
      v13[0] = "pcp/mapExpression.cpp";
      v13[1] = "_EvaluateUncached";
      v13[2] = 310;
      v13[3] = "PcpMapExpression::Value pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_EvaluateUncached() const";
      v14 = 0;
      v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("unhandled case", a2, a3);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "false", v12);
      *(a4 + 48) = 0;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      sub_29A41AF24(a4);
      return;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Invalidate(uint64_t this)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = atomic_load((this + 225));
  if (v1)
  {
    v2 = this;
    atomic_store(0, (this + 225));
    memset(v11, 0, sizeof(v11));
    sub_29A41AF24(v11);
    if ((v2 + 88) != v11)
    {
      v3 = sub_29A41AF74(v2 + 88);
      sub_29A41BCAC(v3, v11);
    }

    *(v2 + 128) = *&v11[40];
    this = sub_29A41AF74(v11);
    v4 = *(v2 + 144);
    v5 = (v2 + 152);
    if (v4 != (v2 + 152))
    {
      do
      {
        v6 = v4[4];
        sub_29A0EB5BC(v11, v6 + 224);
        this = pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Invalidate(v6);
        v7 = *v11;
        if (*v11)
        {
          __dmb(0xBu);
          *v7 = 0;
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != v5);
    }
  }

  return this;
}

void sub_29A4782EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::SetValueForVariable(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29A0EB5BC(v6, a1 + 224);
    if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator!=(a1 + 168, a2))
    {
      if (a1 + 168 != a2)
      {
        v4 = sub_29A41AF74(a1 + 168);
        sub_29A41BCAC(v4, a2);
      }

      *(a1 + 208) = *(a2 + 40);
      pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::_Invalidate(a1);
    }

    v5 = v6[0];
    if (v6[0])
    {
      __dmb(0xBu);
      *v5 = 0;
    }
  }

  else
  {
    v6[0] = "pcp/mapExpression.cpp";
    v6[1] = "SetValueForVariable";
    v6[2] = 335;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::SetValueForVariable(Value &&)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Cannot set value for non-variable");
  }
}

void sub_29A4783DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (a10)
  {
    __dmb(0xBu);
    *a10 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::Key::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator==(a1 + 24, a2 + 24);
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(atomic_uint *this, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  add = atomic_fetch_add(this + 21, 0xFFFFFFFF);
  if (this && add == 1)
  {
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::~_Node(this);

    operator delete(v4);
  }
}

uint64_t sub_29A478488(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  return a1;
}

void sub_29A4784B8(void *__p, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v3 = __p[1];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  operator delete(__p);
}

uint64_t sub_29A478504@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 84), 1u);
  }

  return result;
}

uint64_t sub_29A478520(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  *a1 = a2;
  v7 = *a3;
  *(a1 + 8) = *a3;
  if (v7)
  {
    atomic_fetch_add((v7 + 84), 1u);
  }

  v8 = *a4;
  *(a1 + 16) = *a4;
  if (v8)
  {
    atomic_fetch_add((v8 + 84), 1u);
  }

  sub_29A41B000((a1 + 24), a5);
  *(a1 + 64) = *(a5 + 40);
  return a1;
}

void sub_29A478590(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, a2);
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A4785B4(atomic_ullong *a1)
{
  result = operator new(0x248uLL);
  v3 = 0;
  *(result + 67) = 0;
  *(result + 70) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0u;
  *(result + 200) = 0u;
  *(result + 216) = 0u;
  *(result + 232) = 0u;
  *(result + 8) = 0u;
  *(result + 248) = 0u;
  *(result + 264) = 0u;
  *(result + 280) = 0u;
  *(result + 296) = 0u;
  *(result + 312) = 0u;
  *(result + 328) = 0u;
  *(result + 344) = 0u;
  *(result + 360) = 0u;
  *(result + 376) = 0u;
  *(result + 392) = 0u;
  *(result + 408) = 0u;
  *(result + 424) = 0u;
  *(result + 440) = 0u;
  *(result + 456) = 0u;
  *(result + 472) = 0u;
  *(result + 488) = 0u;
  *(result + 504) = 0u;
  __dmb(0xBu);
  *result = 0;
  __dmb(0xBu);
  *(result + 65) = 0;
  *(result + 1) = result + 528;
  *(result + 33) = 0u;
  *(result + 34) = 0u;
  *(result + 35) = 0u;
  __dmb(0xBu);
  *result = 1;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    v4 = sub_29A478698(result);
    operator delete(v4);
    return atomic_load(a1);
  }

  return result;
}

unint64_t *sub_29A478698(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v4 = sub_29A0EC0EC(v2);
  for (i = a1 + 1; ; i[v4--] = 0)
  {
    v6 = 0;
    v7 = i[v4];
    v8 = v4 <= 1 ? 1 : v4;
    do
    {
      v9 = v7 + 24 * v6;
      while (1)
      {
        v10 = *(v9 + 16);
        if (v10 <= 0x3F)
        {
          break;
        }

        *(v9 + 16) = *v10;
        sub_29A478788(v10);
      }

      ++v6;
    }

    while (!(v6 >> v8));
    if (v4 < 8 && v4 != 1)
    {
      break;
    }

    tbb::internal::deallocate_via_handler_v3(i[v4], v3);
LABEL_14:
    ;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  __dmb(0xBu);
  *a1 = 1;
  return a1;
}

uint64_t sub_29A478788(uint64_t a1)
{
  sub_29A41AF74(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, v2);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v2);
  }

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

uint64_t sub_29A4787D4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, void))
{
  v8 = *(a3 + 8);
  v45 = *(a3 + 16);
  v46 = v8;
  v42 = 0;
  v43 = 0;
  sub_29A478F10(&v42, a3, &v46, &v45, (a3 + 24));
  v9 = 0;
  v10 = 0;
  v11 = bswap64(0x9E3779B97F4A7C55 * v42);
  v12 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A478CB0(&v42, a1, v12 & v11, 0);
    v13 = (v44 + 16);
    do
    {
      v13 = *v13;
    }

    while (v13 >= 0x40 && !pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::Key::operator==(a3, (v13 + 2)));
    if (a2)
    {
      break;
    }

    if (v13)
    {
      v40 = 1;
LABEL_10:
      v14 = v9;
      if (!a4)
      {
        goto LABEL_57;
      }

      goto LABEL_11;
    }

    v21 = *a1;
    __dmb(0xBu);
    if (v12 == v21 || !sub_29A108BB8(a1, v11, v12, v21))
    {
      sub_29A0F845C(&v42);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v42);
    v12 = v21;
  }

  if (v13)
  {
LABEL_7:
    v40 = 0;
    goto LABEL_10;
  }

  if (!v9)
  {
    v9 = a5(a1 + 72, a3, 0);
  }

  if ((v43 & 1) == 0)
  {
    v43 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v42) & 1) == 0)
    {
      v13 = (v44 + 16);
      while (1)
      {
        v13 = *v13;
        if (v13 < 0x40)
        {
          break;
        }

        if (pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node::Key::operator==(a3, (v13 + 2)))
        {
          if (v43 != 1)
          {
            goto LABEL_7;
          }

          v40 = 0;
          atomic_fetch_add(v42, 3uLL);
          v43 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v21 = *a1;
  __dmb(0xBu);
  if (v12 != v21)
  {
    if (!sub_29A108BB8(a1, v11, v12, v21))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v21 = v12;
LABEL_33:
  v10 = sub_29A108650(a1, v44, v9, v21);
  v14 = 0;
  v40 = 1;
  v13 = v9;
  if (!a4)
  {
LABEL_57:
    sub_29A0F845C(&v42);
    if (!v10)
    {
      goto LABEL_54;
    }

    goto LABEL_41;
  }

LABEL_11:
  *(a4 + 8) = 1;
  if (!tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v13 + 1))
  {
    sched_yield();
    v15 = 2;
    while (1)
    {
      *(a4 + 8) = 1;
      if (tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v13 + 1))
      {
        break;
      }

      sched_yield();
      v16 = v15 < 16;
      v15 *= 2;
      if (!v16)
      {
        v17 = v42;
        v42 = 0;
        if (v43 == 1)
        {
LABEL_16:
          v18 = *v17;
          v19 = *v17 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v20 = v18;
            atomic_compare_exchange_strong(v17, &v20, v19);
            if (v20 == v18)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v17, 0, memory_order_relaxed) != v18)
            {
              sched_yield();
              goto LABEL_16;
            }
          }
        }

        else
        {
          atomic_fetch_add(v17, 0xFFFFFFFFFFFFFFFCLL);
        }

        sched_yield();
        v21 = *a1;
        __dmb(0xBu);
        v9 = v14;
        goto LABEL_31;
      }
    }
  }

  *a4 = v13 + 1;
  sub_29A0F845C(&v42);
  *(a4 + 16) = v13;
  *(a4 + 24) = v11;
  if (v10)
  {
LABEL_41:
    if (v10 < 8)
    {
      v26 = tbb::internal::allocate_via_handler_v3(0x17D0);
      v27 = (v26 + 16);
      v28 = 254;
      do
      {
        *(v27 - 1) = 0;
        *v27 = 3;
        v27 += 3;
        --v28;
      }

      while (v28);
      v29 = 0;
      v30 = v26 - 48;
      v31 = xmmword_29B43B8D0;
      v32 = a1 + 3;
      v33 = vdupq_n_s64(7uLL);
      v34 = vdupq_n_s64(1uLL);
      v35 = vdupq_n_s64(2uLL);
      v25 = 255;
      do
      {
        v36 = vorrq_s8(vdupq_n_s64(v29), xmmword_29B430070);
        v37 = vshlq_u64(v34, v31);
        if (vmovn_s64(vcgtq_u64(v33, v36)).u8[0])
        {
          *(v32 - 1) = v30 + 24 * v37.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v36)).i32[1])
        {
          *v32 = v30 + 24 * v37.i64[1];
        }

        v29 += 2;
        v31 = vaddq_s64(v31, v35);
        v32 += 2;
      }

      while (v29 != 8);
    }

    else
    {
      v22 = tbb::internal::allocate_via_handler_v3((24 << v10));
      v23 = 1 << v10;
      v24 = (v22 + 16);
      do
      {
        *(v24 - 1) = 0;
        *v24 = 3;
        v24 += 3;
        --v23;
      }

      while (v23);
      a1[v10 + 1] = v22;
      v25 = (2 << v10) - 1;
    }

    __dmb(0xBu);
    *a1 = v25;
  }

LABEL_54:
  if (v14)
  {
    sub_29A478788(v14);
  }

  return v40;
}

uint64_t sub_29A478C20(uint64_t a1, _DWORD *a2)
{
  v4 = tbb::internal::allocate_via_handler_v3(0x68);
  v7[1] = a1;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v8 = a2;
  sub_29A4790F4(v4 + 16, &v8);
  v7[0] = 0;
  sub_29A4790C0(v7, v5);
  return v4;
}

uint64_t sub_29A478CB0(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      __dmb(0xBu);
      *(v11 + 16) = 0;
      if (a3)
      {
        v12 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          v12 = a3;
        }

        v13 = 32 * (HIDWORD(a3) != 0);
        if (v12 >= 0x10000)
        {
          v12 >>= 16;
          v13 = (32 * (HIDWORD(a3) != 0)) | 0x10;
        }

        if (v12 >= 0x100)
        {
          v12 >>= 8;
          v13 |= 8u;
        }

        if (v12 >= 0x10)
        {
          v12 >>= 4;
          v13 |= 4u;
        }

        v14 = v12 >= 4;
        if (v12 >= 4)
        {
          LODWORD(v12) = v12 >> 2;
        }

        v15 = (v12 >> 1) & 1;
        if (v14)
        {
          v13 += 2;
        }

        v16 = v15 + v13;
      }

      else
      {
        v16 = -1;
      }

      v19 = ~(-1 << v16);
      sub_29A478CB0(&v24, a2, v19 & a3, 0);
      v20 = (v26 + 16);
      v21 = *(v26 + 16);
      __dmb(0xBu);
      if (v21 >= 0x40)
      {
        v22 = (2 * v19) | 1;
        while (1)
        {
          v23 = *(v21 + 24);
          v27 = *(v21 + 32);
          v28 = v23;
          v29 = 0;
          v30 = 0;
          sub_29A478F10(&v29, (v21 + 16), &v28, &v27, (v21 + 40));
          if ((bswap64(0x9E3779B97F4A7C55 * v29) & v22) != a3)
          {
            break;
          }

          if (v25 & 1) != 0 || (v25 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v24)))
          {
            *v20 = *v21;
            *v21 = *(v11 + 16);
            *(v11 + 16) = v21;
LABEL_31:
            v21 = *v20;
            if (*v20 <= 0x3F)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v20 = (v26 + 16);
            v21 = *(v26 + 16);
            __dmb(0xBu);
            if (v21 < 0x40)
            {
              goto LABEL_34;
            }
          }
        }

        v20 = v21;
        goto LABEL_31;
      }

LABEL_34:
      sub_29A0F845C(&v24);
    }
  }

  else
  {
    v17 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v17;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v17);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v17);
    }
  }

  return a1;
}

unint64_t sub_29A478F10(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A478F4C(a1, a3, a4, a5);
}

unint64_t sub_29A478F4C(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A478F84(a1, a3, a4);
}

unint64_t sub_29A478F84(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29A478FB8(a1, a3);
}

unint64_t sub_29A478FB8(uint64_t a1, unsigned int *a2)
{
  sub_29A479010(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash((a2 + 10));
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

uint64_t sub_29A479010(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 36);
  if (*(a1 + 8))
  {
    v2 += (*a1 + v2 + (*a1 + v2) * (*a1 + v2)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  v3 = a2[8];
  *a1 = v3 + ((v2 + v3 + (v2 + v3) * (v2 + v3)) >> 1);
  if (v3 >= 3)
  {
    a2 = *a2;
  }

  return sub_29A479060(a1, a2, &a2[4 * v3]);
}

uint64_t sub_29A479060(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      sub_29A1E33B4(v5, v4);
      result = sub_29A1E33B4(v5, v4 + 2);
      v4 += 4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *sub_29A4790C0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

uint64_t sub_29A4790F4(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  *a1 = **a2;
  v4 = *(v3 + 1);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add((v4 + 84), 1u);
  }

  v5 = *(v3 + 2);
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add((v5 + 84), 1u);
  }

  sub_29A41B000((a1 + 24), (v3 + 6));
  *(a1 + 64) = *(v3 + 4);
  *(a1 + 80) = 0;
  return a1;
}

void sub_29A47916C(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, a2);
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A479190(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_29A03AFE8(a1, v4);
  operator delete(v4);
  return 1;
}

int **pxrInternal__aapl__pxrReserved__::PcpMapFunction::PcpMapFunction(int **a1, char *a2, char *a3, char a4, double a5, double a6)
{
  result = sub_29A47ACC4(a1, a2, a3, a4);
  *(result + 5) = a5;
  *(result + 6) = a6;
  return result;
}

{
  result = sub_29A47ACC4(a1, a2, a3, a4);
  *(result + 5) = a5;
  *(result + 6) = a6;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29A0ECEEC(&v31, "Pcp", "PcpMapFunction");
  v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
  sub_29A1E21F4(&v30, v7);
  sub_29A1E2240(&v30 + 1, v7 + 1);
  v8 = a1[2];
  if (v8 == 1)
  {
    IsIdentity = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity(a2);
    if (IsIdentity)
    {
      v10 = *(*a1 + 28);
      if (v10 == v30 && *(*a1 + 36) == v10)
      {
        v11 = pxrInternal__aapl__pxrReserved__::PcpMapFunction::Identity(IsIdentity);
        sub_29A41B000(a3, v11);
        *(a3 + 40) = *(v11 + 40);
        goto LABEL_29;
      }
    }

    v8 = a1[2];
  }

  if (v8 >> 31)
  {
    v25 = "pcp/mapFunction.cpp";
    v26 = "Create";
    v27 = 341;
    v28 = "static PcpMapFunction pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(const PathMap &, const SdfLayerOffset &)";
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v25, 3, "Cannot construct a PcpMapFunction with %zu entries; limit is %zu", v8, 0x7FFFFFFFuLL);
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    sub_29A41AF24(a3);
  }

  else
  {
    v12 = *a1;
    if (*a1 == a1 + 1)
    {
LABEL_23:
      sub_29A47BE58(&v25, v12, a1 + 1);
      v16 = 126 - 2 * __clz((v26 - v25) >> 4);
      v33 = v25;
      v24 = v26;
      if (v26 == v25)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      sub_29A47C020(v25, v26, v17, 1);
      v18 = sub_29A479640(&v33, &v24);
      v19 = *a2;
      v20 = *(a2 + 1);
      sub_29A47ACC4(a3, v33, v24, v18);
      *(a3 + 40) = v19;
      *(a3 + 48) = v20;
      v33 = &v25;
      sub_29A23F9D4(&v33);
    }

    else
    {
      while (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((v12 + 28)) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v12 + 28)) || pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath((v12 + 28))) && (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 9) || pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((v12 + 36)) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v12 + 36)) || (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath((v12 + 36)) & 1) != 0)))
      {
        v13 = v12[1];
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
            v14 = v12[2];
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
        if (v14 == a1 + 1)
        {
          v12 = *a1;
          goto LABEL_23;
        }
      }

      v25 = "pcp/mapFunction.cpp";
      v26 = "Create";
      v27 = 365;
      v28 = "static PcpMapFunction pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(const PathMap &, const SdfLayerOffset &)";
      v29 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v12 + 28));
      v22 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v12 + 36));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v25, 1, "The mapping of '%s' to '%s' is invalid.", Text, v22);
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      sub_29A41AF24(a3);
    }
  }

LABEL_29:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
  result = sub_29A1DE3A4(&v30);
  if (v31)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }

  return result;
}

void sub_29A479564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapFunction::Identity(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this)
{
  if ((atomic_load_explicit(&qword_2A1742000, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1742000);
    if (v2)
    {
      qword_2A1741FF8 = pxrInternal__aapl__pxrReserved__::Pcp_MakeIdentity(v2);
      __cxa_guard_release(&qword_2A1742000);
    }
  }

  return qword_2A1741FF8;
}

uint64_t sub_29A479640(pxrInternal__aapl__pxrReserved__::SdfPath **a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return 0;
  }

  do
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v2 + 2))
    {
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v2);
      v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + 8));
      if ((*v6 ^ *NameToken) > 7)
      {
        goto LABEL_20;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v2, &v24);
      v7 = sub_29A47CE30(&v24, a1, a2);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
      v6 = sub_29A1DE3A4(&v24);
      v25 = v7;
      if (v7 == *a2)
      {
        goto LABEL_20;
      }

      v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 2);
      if ((v6 & 1) == 0)
      {
        goto LABEL_20;
      }

      PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v2 + 8));
      v9 = PathElementCount - pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v7 + 8));
      v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v2);
      v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v7);
      if (v9 != v10 - v6)
      {
        goto LABEL_20;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v2, &v24);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v2 + 8), &v23);
      if (v24 == *v7)
      {
        if (*(v7 + 1) == v23)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v2 + 8), &v21);
          v15 = sub_29A47CEF8(&v21, a1, a2, &v25);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
          v16 = !v15;
          sub_29A1DE3A4(&v21);
          goto LABEL_19;
        }
      }

      else
      {
        v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v24);
        if ((*pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v23) ^ *v11) <= 7)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v24, &v21);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }

      v16 = 0;
LABEL_19:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      sub_29A1DE3A4(&v23);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
      v6 = sub_29A1DE3A4(&v24);
      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v2, &v24);
    v12 = sub_29A47CE30(&v24, a1, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
    sub_29A1DE3A4(&v24);
    v25 = v12;
    if (v12 != *a2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 2))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v24, v2, v12, (v12 + 8), 1);
      v13 = sub_29A47CEF8(&v24, a1, a2, &v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
      v6 = sub_29A1DE3A4(&v24);
      if (!v13)
      {
LABEL_20:
        v2 = (v2 + 16);
        v14 = *a2;
        continue;
      }
    }

LABEL_13:
    v14 = (*a2 - 16);
    v6 = v2;
    if (v2 != v14)
    {
      sub_29A46A260();
    }

    *a2 = v14;
  }

  while (v2 != v14);
  if (*a1 != v14)
  {
    v17 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v6);
    v18 = *a1;
    v19 = **a1;
    if (v19 == *v17 && *(v18 + 1) == v19)
    {
      *a1 = (v18 + 16);
      return 1;
    }
  }

  return 0;
}

void sub_29A4799B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsNull(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this)
{
  if (*(this + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 36) ^ 1;
  }

  return v1 & 1;
}

_BYTE *pxrInternal__aapl__pxrReserved__::Pcp_MakeIdentity(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = operator new(0x38uLL);
  sub_29A41AF24(v1);
  v1[36] = 1;
  return v1;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpMapFunction::IdentityPathMap(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this)
{
  result = atomic_load(&qword_2A1742008);
  if (!result)
  {
    return sub_29A47CFC4();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentityPathMapping(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this)
{
  if (*(this + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 36);
  }

  return v1 & 1;
}

__n128 pxrInternal__aapl__pxrReserved__::PcpMapFunction::Swap(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this, pxrInternal__aapl__pxrReserved__::PcpMapFunction *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A41BCAC(v7, this);
  if (this != a2)
  {
    v4 = sub_29A41AF74(this);
    sub_29A41BCAC(v4, a2);
  }

  if (v7 != a2)
  {
    v5 = sub_29A41AF74(a2);
    sub_29A41BCAC(v5, v7);
  }

  sub_29A41AF74(v7);
  result = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator==(uint64_t a1, uint64_t a2)
{
  result = sub_29A479BF4(a1, a2);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==((a1 + 40), (a2 + 40));
  }

  return result;
}

uint64_t sub_29A479BF4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (__PAIR64__(*(a1 + 36), v2) != __PAIR64__(*(a2 + 36), *(a2 + 32)))
  {
    return 0;
  }

  if (v2 >= 3)
  {
    a1 = *a1;
    v3 = &a1[2 * v2];
  }

  else
  {
    if (!v2)
    {
      return 1;
    }

    v3 = &a1[2 * v2];
  }

  v5 = *a2;
  if (v2 < 3)
  {
    v5 = a2;
  }

  do
  {
    v6 = *a1;
    v7 = a1[1];
    a1 += 2;
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v4 = v6 == v8 && v7 == v9;
  }

  while (v4 && a1 != v3);
  return v4;
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *(this + 8);
  v5 = this;
  if (v4 >= 3)
  {
    v5 = *this;
  }

  return sub_29A479CE4(a2, v5, v4, *(this + 36), 0, a3);
}

_DWORD *sub_29A479CE4@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  v10 = (a2 + 16 * a3);
  v20 = v10;
  v21 = a2;
  if (a5)
  {
    v11 = sub_29A47AF40(a1, &v21, &v20, 0);
  }

  else
  {
    v11 = sub_29A47AFC8(a1, &v21, &v20, 0);
  }

  v12 = v11;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  if (v12 != v10)
  {
    if (a5)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v17, a1, (v12 + 8), v12, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v17, a1, v12, (v12 + 8), 0);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (a4)
  {
    sub_29A2258F0(&v18, a1);
    sub_29A225948(&v19, a1 + 1);
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18))
  {
    goto LABEL_21;
  }

  if (v12 != v20)
  {
    v13 = 8;
    if (a5)
    {
      v13 = 0;
    }

    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v12 + v13));
    if (a5)
    {
      goto LABEL_15;
    }

LABEL_17:
    v15 = sub_29A47AF40(&v18, &v21, &v20, PathElementCount);
    goto LABEL_18;
  }

  PathElementCount = 0;
  if (!a5)
  {
    goto LABEL_17;
  }

LABEL_15:
  v15 = sub_29A47AFC8(&v18, &v21, &v20, PathElementCount);
LABEL_18:
  if (v15 == v20 || v15 == v12)
  {
LABEL_21:
    sub_29A1DDD84(a6, &v18);
    sub_29A1DDDC0(a6 + 1, &v19);
    goto LABEL_22;
  }

  *a6 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a6 + 1);
LABEL_22:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  return sub_29A1DE3A4(&v18);
}

void sub_29A479EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *(this + 8);
  v5 = this;
  if (v4 >= 3)
  {
    v5 = *this;
  }

  return sub_29A479CE4(a2, v5, v4, *(this + 36), 1, a3);
}

void pxrInternal__aapl__pxrReserved__::PcpMapFunction::_MapPathExpressionImpl(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = a2;
  v14 = a5;
  v15 = a4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10[0] = a1;
  v10[1] = &v16;
  v8[0] = &v11;
  v8[1] = v10;
  v8[2] = &v14;
  v9 = &v11;
  v7[0] = &v11;
  v7[1] = v10;
  v7[2] = &v15;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::Walk(a3, &v9, sub_29A47B09C, v8, sub_29A47B3A8, v7, sub_29A47B968);
  if (v11 != v12)
  {
    sub_29A218364(a6);
  }

  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v8[0] = &v11;
  sub_29A3A3C6C(v8);
}

void sub_29A47A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A3A3C6C(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpMapFunction::Compose@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpMapFunction *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v55, "Pcp", "PcpMapFunction");
  if (__PAIR64__(*(this + 36), *(this + 8)) != 0x100000000 || !pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity((this + 40)))
  {
    if (!*(a2 + 8) && *(a2 + 36) == 1 && pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity((a2 + 40)))
    {
      result = sub_29A41B000(a3, this);
      v7 = *(this + 40);
      goto LABEL_8;
    }

    for (i = 0; i != 64; i += 16)
    {
      v9 = sub_29A3DFDB8(&v58[i]);
    }

    memset(v54, 0, sizeof(v54));
    v10 = v58;
    v57 = v58;
    v11 = *(this + 36);
    v12 = *(a2 + 8) + *(a2 + 36) + *(this + 8) + v11;
    if (v12 < 5)
    {
      v53 = v58;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = sub_29A47A5EC(v54, v12);
      v10 = v54[0];
      v57 = v54[0];
      v13 = *(this + 36);
      v53 = v54[0];
      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*(a2 + 36) == 1)
    {
      v53 = (v10 + 4);
      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v9);
      sub_29A2258F0(v10, v14);
      v15 = sub_29A225948(v10 + 1, v14 + 1);
      v16 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v15);
      sub_29A2258F0(v10 + 2, v16);
      sub_29A225948(v10 + 3, v16 + 1);
    }

LABEL_17:
    v50 = a3;
    v17 = *(a2 + 8);
    if (v17 >= 3)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v17)
    {
      v19 = v53;
      v53 = (v53 + 16);
      sub_29A2258F0(v19, v18);
      v20 = (v18 + 4);
      sub_29A225948(v19 + 1, v20);
      v21 = *(this + 8);
      v22 = this;
      if (v21 >= 3)
      {
        v22 = *this;
      }

      sub_29A479CE4((v20 + 1), v22, v21, *(this + 36), 0, &v51);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    v23 = v53;
    v24 = *(this + 8);
    if (v24 >= 3)
    {
      v26 = *this;
      v25 = (*this + 16 * v24);
    }

    else
    {
      if (!v24)
      {
LABEL_57:
        v43 = sub_29A479640(&v57, &v53);
        v44 = v57;
        v45 = v53;
        v46 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(this + 5, a2 + 5);
        v48 = v47;
        sub_29A47ACC4(v50, v44, v45, v43);
        *(v50 + 40) = v46;
        *(v50 + 48) = v48;
        v57 = v54;
        sub_29A23F9D4(&v57);
        v49 = 16;
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v58[v49 * 4 - 4]);
          sub_29A1DE3A4(&v58[v49 * 4 - 8]);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56[v49 + 1]);
          result = sub_29A1DE3A4(&v56[v49]);
          v49 -= 4;
        }

        while (v49 * 4);
        goto LABEL_59;
      }

      v25 = (this + 16 * v24);
      v26 = this;
    }

    do
    {
      v27 = *(a2 + 8);
      if (v27 >= 3)
      {
        v28 = *a2;
      }

      else
      {
        v28 = a2;
      }

      sub_29A479CE4(v26, v28, v27, *(a2 + 36), 1, &v51);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v51))
      {
        v29 = v57;
        if (v23 != v57)
        {
          v30 = (v23 - v57) >> 4;
          do
          {
            v31 = (v29 + 16 * (v30 >> 1));
            v32 = sub_29A47D2A4(v31, &v51);
            if (v32)
            {
              v30 += ~(v30 >> 1);
            }

            else
            {
              v30 >>= 1;
            }

            if (v32)
            {
              v29 = (v31 + 16);
            }
          }

          while (v30);
        }

        if (v29 == v23 || sub_29A47D2A4(&v51, v29))
        {
          v53 = (v53 + 16);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v52);
      sub_29A1DE3A4(&v51);
      v26 = (v26 + 16);
    }

    while (v26 != v25);
    v33 = v53;
    if (v23 != v53)
    {
      v34 = (v53 - v23) >> 4;
      sub_29A47C020(v23, v53, 126 - 2 * __clz(v34), 1);
      v35 = v57;
      v36 = (v23 - v57) >> 4;
      if (v34 >= v36)
      {
        v37 = (v23 - v57) >> 4;
      }

      else
      {
        v37 = (v33 - v23) >> 4;
      }

      if (v37 < 1)
      {
        v42 = 0;
      }

      else
      {
        v38 = MEMORY[0x29EDC9418];
        while (1)
        {
          v39 = operator new(16 * v37, v38);
          if (v39)
          {
            break;
          }

          v40 = v37 >> 1;
          v41 = v37 > 1;
          v37 >>= 1;
          if (!v41)
          {
            v42 = 0;
            v37 = v40;
            goto LABEL_55;
          }
        }

        v42 = v39;
      }

LABEL_55:
      sub_29A47D314(v35, v23, v33, v36, (v33 - v23) >> 4, v42, v37);
      if (v42)
      {
        operator delete(v42);
      }
    }

    goto LABEL_57;
  }

  result = sub_29A41B000(a3, a2);
  v7 = *(a2 + 40);
LABEL_8:
  *(a3 + 40) = v7;
LABEL_59:
  if (v55)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v56[0], v55);
  }

  return result;
}

void sub_29A47A53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void **a18, char a19)
{
  a18 = &a13;
  sub_29A23F9D4(&a18);
  for (i = 48; i != -16; i -= 16)
  {
    sub_29A47A67C(&a19 + i);
  }

  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

void **sub_29A47A5EC(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 16 * a2;
      while (v3 != v6)
      {
        v3 -= 16;
        result = sub_29A23E934(v2, v3);
      }

      *(v2 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return sub_29A47D164(result, v5);
  }

  return result;
}

_DWORD *sub_29A47A67C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpMapFunction::ComposeOffset(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A41B000(a3, this);
  *(a3 + 40) = *(this + 40);
  *(a3 + 40) = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*((a3 + 40), a2);
  *(a3 + 48) = v6;
}

void pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetInverse(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A0ECEEC(&v17, "Pcp", "PcpMapFunction");
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_29A47A8CC(&v14, *(this + 8));
  v4 = *(this + 8);
  if (v4 >= 3)
  {
    v6 = *this;
    v5 = (*this + 16 * v4);
  }

  else
  {
    if (!v4)
    {
      v7 = v15;
      goto LABEL_10;
    }

    v5 = (this + 16 * v4);
    v6 = this;
  }

  v7 = v15;
  do
  {
    if (v7 >= v16)
    {
      v7 = sub_29A447B84(&v14, v6 + 2, v6);
    }

    else
    {
      sub_29A23E7D8(v7, v6 + 2, v6);
      v7 += 4;
    }

    v15 = v7;
    v6 = (v6 + 16);
  }

  while (v6 != v5);
LABEL_10:
  v8 = v14;
  v9 = 126 - 2 * __clz((v7 - v14) >> 4);
  if (v7 == v14)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_29A47C020(v14, v7, v10, 1);
  Inverse = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetInverse((this + 40));
  v13 = v12;
  sub_29A47ACC4(a2, v8, v7, *(this + 36));
  *(a2 + 40) = Inverse;
  *(a2 + 48) = v13;
  v19 = &v14;
  sub_29A23F9D4(&v19);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29A47A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_29A23F9D4(&a14);
  sub_29A0E9CEC(&a12);
  _Unwind_Resume(a1);
}

void **sub_29A47A8CC(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29A23E834(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A23EA14(&v12);
  }

  return result;
}

void sub_29A47A974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A23EA14(va);
  _Unwind_Resume(a1);
}

int *pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetSourceToTargetMap@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, uint64_t **a2@<X8>)
{
  v4 = *(this + 8);
  v5 = this;
  if (v4 >= 3)
  {
    v5 = *this;
  }

  result = sub_29A47D870(a2, v5, &v5[2 * v4]);
  if (*(this + 36) == 1)
  {
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(result);
    v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7);
    v8 = sub_29A472B80(a2, v9, &unk_29B4D6118, &v9);
    sub_29A2258F0(v8 + 9, v7);
    return sub_29A225948(v8 + 10, v7 + 1);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(pxrInternal__aapl__pxrReserved__::PcpMapFunction *this@<X0>, std::string *a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsIdentity((this + 40)))
  {
    sub_29A45F9DC(this + 5);
    sub_29A091654(&v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetSourceToTargetMap(this, __p);
  sub_29A47D8F4(&v14, __p[0], &__p[1]);
  v12 = v14;
  v13 = &v15;
  while (v12 != v13)
  {
    v4 = sub_29A449BA8(&v12);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v4 + 28));
    v6 = sub_29A449BA8(&v12);
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v6 + 36));
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s -> %s", v8, v9, Text, v7);
    sub_29A091654(&v18, &v10);
    if (v11 < 0)
    {
      operator delete(v10);
    }

    sub_29A449BE0(&v12);
  }

  sub_29A11CF98("\n", v18, v19, a2);
  sub_29A1EF938(&v14, v15);
  sub_29A1EF938(__p, __p[1]);
  __p[0] = &v18;
  sub_29A012C90(__p);
}

void sub_29A47ABA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = (v27 - 56);
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

unint64_t sub_29A47AC50(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v6 = 0;
  sub_29A479010(&v5, a2);
  Hash = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetHash((a2 + 10));
  if (v6 == 1)
  {
    Hash += (v5 + Hash + (v5 + Hash) * (v5 + Hash)) >> 1;
  }

  return bswap64(0x9E3779B97F4A7C55 * Hash);
}

int **sub_29A47ACC4(int **a1, char *a2, char *a3, char a4)
{
  v4 = a1;
  v5 = (a3 - a2) >> 4;
  *(a1 + 8) = v5;
  *(a1 + 36) = a4;
  if (v5)
  {
    v7 = a2;
    if (v5 > 2)
    {
      v9 = ((a3 - a2) >> 4) & 0x7FFFFFFF;
      v10 = 16 * v9;
      v11 = operator new[](16 * v9 + 16);
      *v11 = 16;
      v11[1] = v9;
      v12 = (v11 + 2);
      v13 = v11 + 2;
      do
      {
        v13 = sub_29A3DFDB8(v13) + 4;
        v10 -= 16;
      }

      while (v10);
      sub_29A47ADA8(v4, v12);
      if (v7 != a3)
      {
        v14 = *v4;
        do
        {
          sub_29A469C60(v14, v7);
          v7 += 16;
          v14 += 4;
        }

        while (v7 != a3);
      }
    }

    else if (a2 != a3)
    {
      do
      {
        v8 = sub_29A23F744(a1, v7);
        v7 += 16;
        a1 = (v8 + 4);
      }

      while (v7 != a3);
    }
  }

  return v4;
}

void *sub_29A47ADA8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2050338;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A47AE08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_29A47AE34(&a13, v13);
  __cxa_rethrow();
}

void sub_29A47AE34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 - 8);
    if (v3)
    {
      v4 = (a2 + 16 * v3 - 8);
      v5 = -16 * v3;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v4 + 1);
        sub_29A1DE3A4(v4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v4 - 1);
        sub_29A1DE3A4(v4 - 2);
        v4 -= 4;
        v5 += 16;
      }

      while (v5);
    }

    operator delete[]((a2 - 16));
  }
}

void sub_29A47AED0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A47AF00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2050378))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A47AF40(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a3;
  for (i = *a2; i != *a3; i += 16)
  {
    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((i + 8));
    if (PathElementCount >= a4)
    {
      v10 = PathElementCount;
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, (i + 8)))
      {
        a4 = v10;
        v4 = i;
      }
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A47AFC8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2, pxrInternal__aapl__pxrReserved__::SdfPath **a3, unint64_t a4)
{
  v8 = *a2;
  v9 = *a3;
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (v9 != v8)
  {
    v11 = PathElementCount;
    v12 = (v9 - v8) >> 4;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v8 + 16 * (v12 >> 1))) > v11)
      {
        v12 >>= 1;
      }

      else
      {
        v8 = (v8 + 16 * (v12 >> 1) + 16);
        v12 += ~(v12 >> 1);
      }
    }

    while (v12);
  }

  while (v8 != *a2)
  {
    v8 = (v8 - 16);
    if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v8) < a4)
    {
      break;
    }

    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, v8))
    {
      return v8;
    }
  }

  return *a3;
}

uint64_t *sub_29A47B09C(uint64_t *result, pxrInternal__aapl__pxrReserved__::SdfPathExpression *a2, int a3)
{
  v3 = result;
  if (a2)
  {
    if (a3 == 2)
    {
      v5 = *(*result + 8);
      *v10 = *(v5 - 96);
      v11 = *(v5 - 80);
      *(v5 - 96) = 0;
      *(v5 - 88) = 0;
      *(v5 - 80) = 0;
      v12 = *(v5 - 72);
      v13 = *(v5 - 56);
      *(v5 - 72) = 0;
      *(v5 - 64) = 0;
      *(v5 - 56) = 0;
      v14 = *(v5 - 48);
      v15 = *(v5 - 32);
      *(v5 - 48) = 0;
      *(v5 - 40) = 0;
      *(v5 - 32) = 0;
      v6 = *(v5 - 24);
      v17 = *(v5 - 8);
      v16 = v6;
      *(v5 - 16) = 0;
      *(v5 - 8) = 0;
      *(v5 - 24) = 0;
      v7 = *result;
      v8 = *(*result + 8) - 96;
      sub_29A39716C(*result, v8);
      *(v7 + 8) = v8;
      pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeOp(a2, *(*v3 + 8) - 96, __p);
    }
  }

  else if (a3 == 1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeComplement((*(*result + 8) - 96), v10);
  }

  return result;
}

void sub_29A47B394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

void sub_29A47B3A8(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(*v4 + 8);
    v7 = *v4;
    if (v6 >= 3)
    {
      v7 = *v5;
    }

    sub_29A479CE4(a2, v7, v6, v5[36], *v4[1], &v15);
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
    {
      v10 = **(a1 + 16);
      if (v10)
      {
        v10 = sub_29A47B5F8(v10, a2);
      }

      v11 = *a1;
      pxrInternal__aapl__pxrReserved__::SdfPathExpression::Nothing(v10);
      sub_29A47B658(v11);
    }

    v8 = *a1;
    sub_29A1E21F4(&v12, &v15);
    sub_29A1E2240(&v12 + 1, &v16);
    if (*(a2 + 31) < 0)
    {
      sub_29A008D14(v13, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      *v13 = *(a2 + 8);
      v14 = *(a2 + 24);
    }

    pxrInternal__aapl__pxrReserved__::SdfPathExpression::MakeAtom(&v12, &v17);
    sub_29A39726C(v8, &v17);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v23 = v20;
    sub_29A218CE8(&v23);
    v23 = v19;
    sub_29A21859C(&v23);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
    sub_29A1DE3A4(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
  }

  else
  {
    v9 = *a1;
    sub_29A394C1C(a2, &v17);
    sub_29A39726C(v9, &v17);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v12 = v20;
    sub_29A218CE8(&v12);
    v12 = v19;
    sub_29A21859C(&v12);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }
}

void sub_29A47B594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29A47B5F8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A47B6AC(a1, a2);
  }

  else
  {
    sub_29A47B7C0(a1, a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_29A47B658(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29A218364(*(a1 + 8));
  }

  sub_29A47B838(a1);
}

uint64_t sub_29A47B6AC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29A47B7C0(a1, v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A3A3170(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A3A3254(&v15);
  return v14;
}

void sub_29A47B7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3A3254(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A47B7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  result = sub_29A1E2240((a2 + 4), (a3 + 4));
  if (*(a3 + 31) < 0)
  {
    return sub_29A008D14((a2 + 8), *(a3 + 8), *(a3 + 16));
  }

  v6 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v6;
  return result;
}

void sub_29A47B838(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 <= 0x2AAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
    {
      v3 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    v9 = a1;
    if (v3)
    {
      v4 = sub_29A0CFEE8(a1, v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = &v4[96 * v1];
    v7 = v6;
    v8 = &v4[96 * v3];
    sub_29A218364(v6);
  }

  sub_29A00C9A4();
}

void sub_29A47B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3975A4(va);
  _Unwind_Resume(a1);
}

void sub_29A47B968(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPathPattern *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPathPattern::HasLeadingStretch(this))
  {
    sub_29A3976B8(this);
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(*v4 + 8);
  v7 = *v4;
  if (v6 >= 3)
  {
    v7 = *v5;
  }

  sub_29A479CE4(this, v7, v6, v5[36], *v4[1], &v11);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v11))
  {
    sub_29A1E21F4(v10, this);
    sub_29A1E2240(v10 + 1, this + 1);
    memset(&v10[1], 0, 24);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>();
  }

  v8 = **(a1 + 16);
  if (v8)
  {
    sub_29A47BC18(v8, this);
  }

  v9 = *a1;
  pxrInternal__aapl__pxrReserved__::SdfPathExpression::Nothing(0);
  sub_29A47B658(v9);
}

void sub_29A47BBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18)
{
  sub_29A2174F4(&a18);
  sub_29A396444(&a9);
  sub_29A1DCEA8(&a17);
  _Unwind_Resume(a1);
}

void sub_29A47BC18(void *a1, _DWORD *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29A47BD8C(a1, a1[1], a2);
  }

  sub_29A47BC78(a1, a2);
}

void sub_29A47BC78(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 58))
  {
    v6 = a1[2] - *a1;
    if (v6 >> 5 > v3)
    {
      v3 = v6 >> 5;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFC0)
    {
      v7 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v3;
    }

    v12 = a1;
    if (v7)
    {
      v8 = sub_29A0BE3C0(a1, v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = &v8[64 * v2];
    v11 = &v8[64 * v7];
    sub_29A47BD8C(a1, v10, a2);
  }

  sub_29A00C9A4();
}

void sub_29A47BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3A392C(va);
  _Unwind_Resume(a1);
}

void sub_29A47BD8C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), a3 + 1);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*>();
}

void sub_29A47BE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10C99C(va);
  sub_29A1DCEA8(v2);
  _Unwind_Resume(a1);
}

void *sub_29A47BE58(void *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_29A47BEDC(a1, a2, a3, v4);
  return a1;
}

void *sub_29A47BEDC(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A47BF64(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A47BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A23F9D4(&a9);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A47BF64(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A23F744(v4, v6 + 7);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v4 = v14 + 4;
      v14 += 4;
      v6 = v8;
    }

    while (v8 != a3);
  }

  v12 = 1;
  sub_29A23E988(v11);
  return v4;
}

int *sub_29A47C020(int *result, int *a2, uint64_t a3, char a4)
{
  v37 = (a2 - 12);
  v38 = (a2 - 8);
  v6 = result;
  v7 = result;
  v8 = (a2 - result) >> 4;
  v9 = v8 - 2;
  if (v8 <= 2)
  {
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      result = sub_29A47C914((a2 - 4), result);
      if (result)
      {
        v24 = v6;
        v23 = a2 - 4;
        return sub_29A47CDD8(v24, v23);
      }

      return result;
    }

LABEL_8:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (result != a2)
        {
          v25 = (result + 4);
          if (result + 4 != a2)
          {
            v26 = 0;
            v27 = result;
            do
            {
              v28 = v27;
              v27 = v25;
              result = sub_29A47C914(v25, v28);
              if (result)
              {
                sub_29A23E8E4(v40, v27);
                sub_29A46A260();
              }

              v25 = (v27 + 16);
              v26 += 16;
            }

            while ((v27 + 16) != a2);
          }
        }
      }

      else if (result != a2)
      {
        v35 = (result + 4);
        if (result + 4 != a2)
        {
          do
          {
            v36 = v35;
            result = sub_29A47C914(v35, v7);
            if (result)
            {
              sub_29A23E8E4(v40, v36);
              sub_29A46A260();
            }

            v35 = (v36 + 16);
            v7 = v36;
          }

          while ((v36 + 16) != a2);
        }
      }
    }

    else
    {
      if (a3)
      {
        v10 = v8 >> 1;
        v11 = &result[4 * (v8 >> 1)];
        if (v8 < 0x81)
        {
          sub_29A47C9A8(&result[4 * (v8 >> 1)], result, (a2 - 4));
        }

        else
        {
          sub_29A47C9A8(result, &result[4 * (v8 >> 1)], (a2 - 4));
          sub_29A47C9A8((v7 + 4), (v11 - 4), v38);
          sub_29A47C9A8((v7 + 8), &v7[4 * v10 + 4], v37);
          sub_29A47C9A8((v11 - 4), &v7[4 * (v8 >> 1)], &v7[4 * v10 + 4]);
          sub_29A47CDD8(v7, &v7[4 * (v8 >> 1)]);
        }

        if ((a4 & 1) != 0 || sub_29A47C914((v7 - 4), v7))
        {
          sub_29A23E8E4(v40, v7);
          v12 = 0;
          do
          {
            v13 = sub_29A47C914(&v7[v12 + 4], v40);
            v12 += 4;
          }

          while (v13);
          v14 = &v7[v12];
          v15 = a2;
          if (v12 == 4)
          {
            v15 = a2;
            do
            {
              if (v14 >= v15)
              {
                break;
              }

              v15 = (v15 - 16);
            }

            while (!sub_29A47C914(v15, v40));
          }

          else
          {
            do
            {
              v15 = (v15 - 16);
            }

            while (!sub_29A47C914(v15, v40));
          }

          if (v14 >= v15)
          {
            v18 = (v14 - 16);
          }

          else
          {
            v16 = &v7[v12];
            v17 = v15;
            do
            {
              sub_29A47CDD8(v16, v17);
              do
              {
                v16 += 4;
              }

              while (sub_29A47C914(v16, v40));
              do
              {
                v17 -= 4;
              }

              while (!sub_29A47C914(v17, v40));
            }

            while (v16 < v17);
            v18 = v16 - 4;
          }

          if (v18 != v7)
          {
            sub_29A46A260();
          }

          sub_29A46A260();
        }

        sub_29A23E8E4(v40, v7);
        if (sub_29A47C914(v40, (a2 - 4)))
        {
          v19 = v7;
          do
          {
            v19 = (v19 + 16);
          }

          while (!sub_29A47C914(v40, v19));
        }

        else
        {
          v20 = (v7 + 4);
          do
          {
            v19 = v20;
            if (v20 >= a2)
            {
              break;
            }

            v21 = sub_29A47C914(v40, v20);
            v20 = (v19 + 16);
          }

          while (!v21);
        }

        v22 = a2;
        if (v19 < a2)
        {
          v22 = a2;
          do
          {
            v22 = (v22 - 16);
          }

          while (sub_29A47C914(v40, v22));
        }

        while (v19 < v22)
        {
          sub_29A47CDD8(v19, v22);
          do
          {
            v19 = (v19 + 16);
          }

          while (!sub_29A47C914(v40, v19));
          do
          {
            v22 = (v22 - 16);
          }

          while (sub_29A47C914(v40, v22));
        }

        if ((v19 - 16) != v7)
        {
          sub_29A46A260();
        }

        sub_29A46A260();
      }

      if (result != a2)
      {
        v29 = v9 >> 1;
        v30 = v9 >> 1;
        while (1)
        {
          v31 = v30;
          if (v29 >= v30)
          {
            v32 = (2 * v30) | 1;
            v33 = &v7[4 * v32];
            if (2 * v30 + 2 < v8 && sub_29A47C914(&v7[4 * v32], (v33 + 4)))
            {
              v33 += 4;
            }

            if (!sub_29A47C914(v33, &v7[4 * v31]))
            {
              sub_29A23E8E4(v40, &v7[4 * v31]);
              sub_29A46A260();
            }
          }

          v30 = v31 - 1;
          if (!v31)
          {
            sub_29A23E8E4(v39, v7);
            sub_29A47C914((v7 + 4), (v7 + 8));
            sub_29A46A260();
          }
        }
      }
    }

    return result;
  }

  if (v8 == 3)
  {
    return sub_29A47C9A8(result, (result + 4), (a2 - 4));
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      return sub_29A47CA74(result, (result + 4), (result + 8), result + 12, (a2 - 4));
    }

    goto LABEL_8;
  }

  sub_29A47C9A8(result, (result + 4), (result + 8));
  result = sub_29A47C914((a2 - 4), (v6 + 8));
  if (result)
  {
    sub_29A47CDD8(v6 + 8, a2 - 4);
    result = sub_29A47C914((v6 + 8), (v6 + 4));
    if (result)
    {
      sub_29A47CDD8(v6 + 4, v6 + 8);
      result = sub_29A47C914((v6 + 4), v6);
      if (result)
      {
        v23 = v6 + 4;
        v24 = v6;
        return sub_29A47CDD8(v24, v23);
      }
    }
  }

  return result;
}

void sub_29A47C874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A47A67C(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A47C914(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (PathElementCount == pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2))
  {
    if (*a1 < *a2)
    {
      return 1;
    }

    if (*a1 != *a2)
    {
      return 0;
    }

    v7 = *(a1 + 1) >= *(a2 + 1);
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
    v7 = v6 >= pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
  }

  return !v7;
}

int *sub_29A47C9A8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = sub_29A47C914(a2, a1);
  result = sub_29A47C914(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = a1;
    }

    else
    {
      sub_29A47CDD8(a1, a2);
      result = sub_29A47C914(a3, a2);
      if (!result)
      {
        return result;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29A47CDD8(a2, a3);
    result = sub_29A47C914(a2, a1);
    if (!result)
    {
      return result;
    }

    v8 = a1;
    v9 = a2;
  }

  return sub_29A47CDD8(v8, v9);
}

int *sub_29A47CA74(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int *a4, pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  sub_29A47C9A8(a1, a2, a3);
  if (sub_29A47C914(a4, a3))
  {
    sub_29A47CDD8(a3, a4);
    if (sub_29A47C914(a3, a2))
    {
      sub_29A47CDD8(a2, a3);
      if (sub_29A47C914(a2, a1))
      {
        sub_29A47CDD8(a1, a2);
      }
    }
  }

  result = sub_29A47C914(a5, a4);
  if (result)
  {
    sub_29A47CDD8(a4, a5);
    result = sub_29A47C914(a4, a3);
    if (result)
    {
      sub_29A47CDD8(a3, a4);
      result = sub_29A47C914(a3, a2);
      if (result)
      {
        sub_29A47CDD8(a2, a3);
        result = sub_29A47C914(a2, a1);
        if (result)
        {

          return sub_29A47CDD8(a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A47CB9C(int *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 16);
      if (sub_29A47C914((a2 - 16), a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        sub_29A47CDD8(v6, v7);
        return 1;
      }

      return 1;
    }

LABEL_12:
    v8 = (a1 + 8);
    sub_29A47C9A8(a1, (a1 + 4), (a1 + 8));
    v9 = (a1 + 12);
    if (a1 + 12 != a2)
    {
      v10 = 0;
      do
      {
        if (sub_29A47C914(v9, v8))
        {
          sub_29A23E8E4(v13, v9);
          sub_29A46A260();
        }

        v8 = v9;
        v10 += 16;
        v9 = (v9 + 16);
      }

      while (v9 != a2);
    }

    return 1;
  }

  if (v4 == 3)
  {
    sub_29A47C9A8(a1, (a1 + 4), (a2 - 16));
    return 1;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      sub_29A47CA74(a1, (a1 + 4), (a1 + 8), a1 + 12, (a2 - 16));
      return 1;
    }

    goto LABEL_12;
  }

  v11 = (a2 - 16);
  sub_29A47C9A8(a1, (a1 + 4), (a1 + 8));
  if (sub_29A47C914(v11, (a1 + 8)))
  {
    sub_29A47CDD8(a1 + 8, v11);
    if (sub_29A47C914((a1 + 8), (a1 + 4)))
    {
      sub_29A47CDD8(a1 + 4, a1 + 8);
      if (sub_29A47C914((a1 + 4), a1))
      {
        v7 = a1 + 4;
        v6 = a1;
        goto LABEL_6;
      }
    }
  }

  return 1;
}

int *sub_29A47CDD8(int *a1, int *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a1 + 2, a2 + 2);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap(a1 + 3, a2 + 3);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A47CE30(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2, pxrInternal__aapl__pxrReserved__::SdfPath **a3)
{
  v6 = *a2;
  v7 = *a3;
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (v7 != v6)
  {
    v9 = PathElementCount;
    v10 = (v7 - v6) >> 4;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v6 + 16 * (v10 >> 1))) > v9)
      {
        v10 >>= 1;
      }

      else
      {
        v6 = (v6 + 16 * (v10 >> 1) + 16);
        v10 += ~(v10 >> 1);
      }
    }

    while (v10);
  }

  while (v6 != *a2)
  {
    v6 = (v6 - 16);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v6);
    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, v6))
    {
      return v6;
    }
  }

  return *a3;
}

BOOL sub_29A47CEF8(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  if (*a4 == *a3)
  {
    PathElementCount = 0;
  }

  else
  {
    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v8 + 8));
    v8 = *a3;
  }

  v10 = *a2;
  if (*a2 == v8)
  {
    v10 = v8;
  }

  else
  {
    do
    {
      v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v10 + 8));
      if (v11 >= PathElementCount)
      {
        v12 = v11;
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a1, (v10 + 8)))
        {
          PathElementCount = v12;
          v8 = v10;
        }
      }

      v10 += 16;
    }

    while (v10 != *a3);
  }

  return v8 != v10 && v8 != *a4;
}

unint64_t sub_29A47CFC4()
{
  v0 = operator new(0x18uLL);
  *(v0 + 2) = 0;
  *(v0 + 1) = 0;
  *v0 = v0 + 8;
  v1 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v0);
  sub_29A23E7D8(&v4, v1, v1);
  sub_29A47D0A4(v0, &v4, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  sub_29A1DE3A4(&v4);
  v2 = 0;
  atomic_compare_exchange_strong(&qword_2A1742008, &v2, v0);
  if (v2)
  {
    sub_29A1EF938(v0, *(v0 + 1));
    operator delete(v0);
    return atomic_load(&qword_2A1742008);
  }

  return v0;
}

uint64_t **sub_29A47D0A4(uint64_t **a1, unint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 28);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x30uLL);
    sub_29A23E8E4(v10 + 7, a3);
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void **sub_29A47D164(uint64_t a1, unint64_t a2)
{
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (a2 <= (v5 - result) >> 4)
  {
    if (a2)
    {
      v13 = 16 * a2;
      v14 = &result[2 * a2];
      do
      {
        result = (sub_29A3DFDB8(result) + 4);
        v13 -= 16;
      }

      while (v13);
      result = v14;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v7 = result - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 4;
    v10 = v5 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v26 = a1;
    if (v11)
    {
      v12 = sub_29A017BD4(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v15 = &v12[16 * v9];
    v23 = v12;
    v24 = v15;
    *(&v25 + 1) = &v12[16 * v11];
    v16 = 16 * a2;
    v17 = v15;
    v18 = &v15[16 * a2];
    do
    {
      v17 = (sub_29A3DFDB8(v17) + 4);
      v16 -= 16;
    }

    while (v16);
    *&v25 = v18;
    v19 = *(a1 + 8);
    v20 = &v15[*a1 - v19];
    sub_29A23E834(a1, *a1, v19, v20);
    v21 = *a1;
    *a1 = v20;
    v22 = *(a1 + 16);
    *(a1 + 8) = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    v23 = v21;
    v24 = v21;
    return sub_29A23EA14(&v23);
  }

  return result;
}

void sub_29A47D290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A23EA14(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A47D2A4(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
  if (PathElementCount == pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2))
  {
    v5 = *a1 >= *a2;
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a1);
    v5 = v6 >= pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
  }

  return !v5;
}

uint64_t sub_29A47D314(uint64_t result, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::SdfPath *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  v9 = a5;
  v13 = result;
  while (v9 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    for (i = v13; ; i = (i + 16))
    {
      result = sub_29A47C914(a2, v13);
      if (result)
      {
        break;
      }

      v13 = (v13 + 16);
      if (!--a4)
      {
        return result;
      }
    }

    v43 = a3;
    if (a4 >= v9)
    {
      if (a4 == 1)
      {

        return sub_29A47CDD8(v13, a2);
      }

      v20 = a4 / 2;
      v21 = a3;
      v18 = (v13 + 16 * (a4 / 2));
      v22 = v21 - a2;
      if (v22)
      {
        v42 = a7;
        v23 = v22 >> 4;
        v16 = a2;
        do
        {
          v24 = &v16[4 * (v23 >> 1)];
          v25 = sub_29A47C914(v24, (v13 + 16 * (a4 / 2)));
          if (v25)
          {
            v23 += ~(v23 >> 1);
          }

          else
          {
            v23 >>= 1;
          }

          if (v25)
          {
            v16 = (v24 + 16);
          }
        }

        while (v23);
        a7 = v42;
        v20 = a4 / 2;
      }

      else
      {
        v16 = a2;
      }

      v15 = (v16 - a2) >> 4;
    }

    else
    {
      v15 = v9 / 2;
      v16 = (a2 + 16 * (v9 / 2));
      v17 = i;
      v18 = v13;
      if (v13 != a2)
      {
        v41 = a7;
        v19 = (a2 - i) >> 4;
        v18 = v13;
        do
        {
          if (sub_29A47C914((a2 + 16 * (v9 / 2)), &v18[4 * (v19 >> 1)]))
          {
            v19 >>= 1;
          }

          else
          {
            v18 += 4 * (v19 >> 1) + 4;
            v19 += ~(v19 >> 1);
          }
        }

        while (v19);
        v17 = v18;
        a7 = v41;
        v15 = v9 / 2;
      }

      v20 = (v17 - i) >> 4;
    }

    v26 = v16;
    if (v18 != a2)
    {
      v26 = v18;
      if (a2 != v16)
      {
        v27 = a2;
        v28 = v20;
        v29 = v15;
        v30 = sub_29A47D7B8(v18, v27, v16);
        v15 = v29;
        v20 = v28;
        v26 = v30;
      }
    }

    v31 = a4 - v20;
    v32 = v9 - v15;
    if (v20 + v15 >= v9 - (v20 + v15) + a4)
    {
      v33 = v20;
      v34 = v15;
      result = sub_29A47D314(v26, v16, v43, a4 - v20, v32, a6, a7);
      v16 = v18;
      v32 = v34;
      v31 = v33;
      a3 = v26;
    }

    else
    {
      result = sub_29A47D314(v13, v18, v26, v20, v15, a6, a7);
      v13 = v26;
      a3 = v43;
    }

    a4 = v31;
    v9 = v32;
    a2 = v16;
    if (!v32)
    {
      return result;
    }
  }

  if (a4 <= v9)
  {
    if (v13 != a2)
    {
      v38 = 0;
      v39 = a6;
      v40 = v13;
      do
      {
        sub_29A23E8E4(v39, v40);
        ++v38;
        v40 = (v40 + 16);
        v39 = (v39 + 16);
      }

      while (v40 != a2);
      v44 = v38;
      if (a2 != a3)
      {
        if (sub_29A47C914(a2, a6))
        {
          sub_29A46A260();
        }

        sub_29A46A260();
      }

      sub_29A46A260();
    }
  }

  else if (a2 != a3)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      result = sub_29A23E8E4((a6 + v35), (a2 + v35));
      ++v36;
      v35 += 16;
    }

    while ((a2 + v35) != a3);
    v44 = v36;
    v37 = (a6 + v35);
    if (a2 != v13)
    {
      sub_29A47C914((v37 - 16), (a2 - 16));
      sub_29A46A260();
    }

    if (v37 != a6)
    {
      sub_29A46A260();
    }

    goto LABEL_57;
  }

  v44 = 0;
LABEL_57:
  if (a6)
  {
    return sub_29A47D744(&v44, a6);
  }

  return result;
}

void sub_29A47D724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if (v14)
  {
    sub_29A47D744(&a14, v14);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29A47D744(unint64_t *result, _DWORD *a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
      sub_29A1DE3A4(a2 + 2);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);
      result = sub_29A1DE3A4(a2);
      ++v4;
      a2 += 4;
    }

    while (v4 < *v3);
  }

  return result;
}

int *sub_29A47D7B8(int *a1, int *a2, int *a3)
{
  v4 = a2;
  sub_29A47CDD8(a1, a2);
  v6 = a1 + 4;
  for (i = v4 + 4; i != a3; i += 4)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    sub_29A47CDD8(v6, i);
    v6 += 4;
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        sub_29A47CDD8(v8, v4);
        v8 += 4;
        v4 += 4;
        if (v4 == a3)
        {
          break;
        }

        if (v8 == v9)
        {
          v9 = v4;
        }
      }

      v4 = v9;
    }

    while (v8 != v9);
  }

  return v6;
}

uint64_t sub_29A47D870(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A455308(a1, v4, v6, v6);
      v6 += 2;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t *sub_29A47D8F4(uint64_t *a1, void *a2, void *a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A23F630(a1, a2, a3);
  return a1;
}

void sub_29A47D944()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 0, "PcpNamespaceEdits::EditPath", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 1, "PcpNamespaceEdits::EditInherit", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 2, "PcpNamespaceEdits::EditSpecializes", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 3, "PcpNamespaceEdits::EditReference", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 4, "PcpNamespaceEdits::EditPayload", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050388, 5, "PcpNamespaceEdits::EditRelocate", 0);
}

void pxrInternal__aapl__pxrReserved__::PcpComputeNamespaceEdits(pxrInternal__aapl__pxrReserved__::PcpCache *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  memset(v3, 0, sizeof(v3));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStack(a1, &v5);
    if (*(&v5 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
  }

  *&v4 = v3;
  sub_29A1E234C(&v4);
}

void sub_29A47FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  sub_29A1E2AEC(v64 - 176, *(v64 - 168));
  sub_29A082B84(&a58, a59);
  sub_29A082B84(&a61, a62);
  *(v64 - 200) = &a64;
  sub_29A42375C((v64 - 200));
  sub_29A1DCEA8((v64 - 256));
  sub_29A41B088();
}

_DWORD *sub_29A4801F8(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_29A4815CC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (result != v7)
    {
      result = sub_29A481490(result - 14);
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t sub_29A48028C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_29A419260(a2);
  }

  return result;
}

void sub_29A480530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A480568(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t a3, int *a4, int *a5)
{
  sub_29A1E21F4(&v44, a4);
  sub_29A1E2240(&v45, a4 + 1);
  sub_29A1E21F4(&v42, a5);
  sub_29A1E2240(&v43, a5 + 1);
  sub_29A48117C(a2, a4, &v50);
  sub_29A48117C(a2, a5, &v48);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a4))
  {
    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
    v47 = v10;
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&ParentNode);
    sub_29A41CF24(&v38, LayerStack);
    sub_29A419260(&v38);
  }

  sub_29A2258F0(a4, &v50);
  sub_29A225948(a4 + 1, &v50 + 1);
  sub_29A2258F0(a5, &v48);
  sub_29A225948(a5 + 1, &v49);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v49);
  sub_29A1DE3A4(&v48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v50 + 1);
  v12 = sub_29A1DE3A4(&v50);
  sub_29A1E21F4(v12, a4);
  sub_29A1E2240(&v50 + 1, a4 + 1);
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2) == 3)
  {
    sub_29A2258F0(a4, &v44);
    sub_29A225948(a4 + 1, &v45);
    sub_29A2258F0(a5, &v42);
    sub_29A225948(a5 + 1, &v43);
    if (sub_29A418240(5))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - not final. skipping relocate\n", v13, v14);
    }

    v15 = 0;
    goto LABEL_21;
  }

  if (*a4 == *a5)
  {
    if (sub_29A418240(5))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - final.  stopping at node where path is unaffected\n", v16, v17);
    }

    goto LABEL_10;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a4) || (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a2) & 1) != 0)
  {
    sub_29A2258F0(&v44, a4);
    sub_29A225948(&v45, a4 + 1);
    sub_29A2258F0(&v42, a5);
    sub_29A225948(&v43, a5 + 1);
    v18 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  if (sub_29A418240(5))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - final.  direct arc fixup\n", v31, v32);
  }

  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2);
  v18 = ArcType;
  if (ArcType <= 3)
  {
    v15 = 1;
    if (ArcType != 1)
    {
      if (ArcType == 2)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  else
  {
    switch(ArcType)
    {
      case 4:
        v15 = 1;
        v18 = 3;
        break;
      case 5:
        v15 = 1;
        v18 = 4;
        break;
      case 6:
        v15 = 1;
        v18 = 2;
        break;
      default:
LABEL_31:
        *&v38 = "pcp/namespaceEdits.cpp";
        *(&v38 + 1) = "_AddLayerStackSite";
        v39 = 364;
        v40 = "BOOL pxrInternal__aapl__pxrReserved__::_AddLayerStackSite(PcpNamespaceEdits *, const PcpNodeRef &, size_t, SdfPath *, SdfPath *)";
        v41 = 0;
        v34 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2);
        v37 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Unexpected arc type %d", v35, v36, v34);
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v38, "false", v37);
LABEL_10:
        v15 = 1;
        goto LABEL_21;
    }
  }

LABEL_14:
  if (a1)
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v42, &v44);
    v20 = 24;
    if (HasPrefix)
    {
      v20 = 48;
    }

    v21 = (a1 + v20);
    sub_29A4801F8(v21, 0x6DB6DB6DB6DB6DB7 * ((v21[1] - *v21) >> 3) + 1);
    v22 = v21[1];
    *(v22 - 56) = a3;
    *(v22 - 48) = v18;
    sub_29A2258F0((v22 - 24), &v50);
    sub_29A225948((v22 - 20), &v50 + 1);
    sub_29A2258F0((v22 - 16), &v44);
    sub_29A225948((v22 - 12), &v45);
    sub_29A2258F0((v22 - 8), &v42);
    sub_29A225948((v22 - 4), &v43);
    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
    v47 = v23;
    v24 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&ParentNode);
    sub_29A41CF24(&v38, v24);
    v25 = *(v22 - 32);
    *(v22 - 40) = v38;
    *(&v38 + 1) = 0;
    if (v25)
    {
      sub_29B290F6C(v25, &v38 + 1, &v38);
    }

    if (sub_29A418240(5))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v22 - 16));
      v27 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v22 - 8));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - adding layer stack edit <%s> -> <%s>\n", v28, v29, Text, v27);
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v50 + 1);
  sub_29A1DE3A4(&v50);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43);
  sub_29A1DE3A4(&v42);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v45);
  sub_29A1DE3A4(&v44);
  return v15;
}

void sub_29A480C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  sub_29A1DCEA8((v8 - 88));
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void **sub_29A480D58(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_29A481DF8(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 24;
      result = sub_29A481578(v2, v3);
    }

    *(v2 + 8) = v7;
  }

  return result;
}

void *sub_29A480DF4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A8228();
  }

  return result;
}

void *sub_29A480E2C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::PcpNodeRef>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::PcpNodeRef>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29A480ED4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A8274();
  }

  return result;
}

void *sub_29A480F0C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::PcpLayerStackSite, unsigned long>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::PcpLayerStackSite, unsigned long>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29A480FB4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A82C0();
  }

  return result;
}

void *sub_29A480FEC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::CacheSite>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

void *sub_29A48106C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A830C();
  }

  return result;
}

void *sub_29A4810A4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::PcpNamespaceEdits::LayerStackSite>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 56;
  }

  return a1;
}

void **sub_29A481124(void **a1)
{
  v3 = a1 + 6;
  sub_29A48140C(&v3);
  v3 = a1 + 3;
  sub_29A48140C(&v3);
  v3 = a1;
  sub_29A4814F0(&v3);
  return a1;
}

_DWORD *sub_29A48117C@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a1);
  v9 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v7, v8);
  v10 = pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v9, a2, &v28);
  if (v28 == *a2)
  {
    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v10);
    sub_29A1E21F4(&v25, v11);
    sub_29A1E2240(&v25 + 1, v11 + 1);
    v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a1);
    v15 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v12, v13, v14);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v15, &v25, &v29);
    v16 = v29;
    v17 = v25;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29 + 1);
    sub_29A1DE3A4(&v29);
    if (v16 == v17)
    {
      *a3 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
      sub_29A1DE3A4(&v25);
      goto LABEL_11;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
    sub_29A1DE3A4(&v25);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(&v28, &v25);
  v18 = v25;
  if (v25 == v26)
  {
    sub_29A1DDD84(a3, &v28);
    sub_29A1DDDC0(a3 + 1, &v28 + 1);
  }

  else
  {
    v19 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a1);
    v22 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v19, v20, v21);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v22, v18, &v29);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v29))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v24, &v28, v18, &v29, 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29 + 1);
    sub_29A1DE3A4(&v29);
  }

  v29 = &v25;
  sub_29A1E234C(&v29);
LABEL_11:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28 + 1);
  return sub_29A1DE3A4(&v28);
}

void sub_29A4813AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A48140C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_29A481490(v4 - 14);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A481490(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 13);
  sub_29A1DE3A4(a1 + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29B2A7CD4(a1);
  return a1;
}

void sub_29A4814F0(void ***a1)
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
        v4 -= 6;
        sub_29A481578(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A481578(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 5);
  sub_29A1DE3A4(a2 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);

  return sub_29A1DE3A4(a2 + 2);
}

_DWORD *sub_29A4815CC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {

    return sub_29A481768(a1, a2);
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v22 = a1;
    if (v9)
    {
      v10 = sub_29A040BCC(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[56 * v6];
    v19 = v10;
    v20 = v12;
    *&v21 = v12;
    *(&v21 + 1) = &v10[56 * v9];
    v13 = 56 * a2;
    v14 = v12 + 56 * a2;
    do
    {
      sub_29A4817D0(v22, v12);
      v12 += 56;
      v13 -= 56;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(a1 + 8);
    v16 = v20 + *a1 - v15;
    sub_29A481858(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    *(a1 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return sub_29A481970(&v19);
  }
}

void sub_29A481748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A481970(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A481768(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 56 * a2;
    v5 = 56 * a2;
    do
    {
      result = sub_29A4817D0(v2, v3);
      v3 += 56;
      v5 -= 56;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 8) = v3;
  return result;
}

_DWORD *sub_29A4817D0(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  v3 = (a2 + 48);
  *(a2 + 32) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 36));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 44));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v3);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 52));
}

_DWORD *sub_29A481858(_DWORD *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    v8 = a2;
    do
    {
      result = sub_29A4818DC(v7, a4, v8);
      v8 += 7;
      a4 += 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_29A481490(v6);
      v6 += 7;
    }
  }

  return result;
}

_DWORD *sub_29A4818DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v5;
  *(a2 + 16) = *(a3 + 1);
  a3[2] = 0;
  a3[3] = 0;
  sub_29A1DDD84((a2 + 32), a3 + 8);
  sub_29A1DDDC0((a2 + 36), a3 + 9);
  sub_29A1DDD84((a2 + 40), a3 + 10);
  sub_29A1DDDC0((a2 + 44), a3 + 11);
  sub_29A1DDD84((a2 + 48), a3 + 12);

  return sub_29A1DDDC0((a2 + 52), a3 + 13);
}

uint64_t sub_29A481970(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_29A481490((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_OWORD *sub_29A4819C0(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_29A481A4C(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x38uLL);
    v6[2] = *a3;
    *(v6 + 6) = *(a3 + 16);
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_29A481A4C(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *a3;
        v9 = v4[4];
        if (*a3 >= v9)
        {
          break;
        }

LABEL_3:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v8)
      {
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a3 + 1, v7 + 5))
        {
          goto LABEL_3;
        }

        v9 = v7[4];
        v8 = *a3;
      }

      if (v9 < v8 || v8 >= v9 && pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v7 + 5, a3 + 1))
      {
        v5 = v7 + 1;
        v4 = v7[1];
        if (v4)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  v7 = (a1 + 8);
LABEL_14:
  *a2 = v7;
  return v5;
}

_OWORD *sub_29A481B04(char *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  ParentNode = a2;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  if (a2)
  {
    while (a3 != -1)
    {
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v13) != 2)
      {
        a3 = *(&v13 + 1);
        ParentNode = v13;
        break;
      }

      ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v13);
      a3 = v7;
      *&v13 = ParentNode;
      *(&v13 + 1) = v7;
      if (!ParentNode)
      {
        break;
      }
    }
  }

  if (ParentNode && a3 != -1 || (v9 = "pcp/namespaceEdits.cpp", *&v10 = "InsertCacheNodePair", *(&v10 + 1) = 468, v11 = "static void pxrInternal__aapl__pxrReserved__::PcpComputeNamespaceEdits(const PcpCache *, const std::vector<PcpCache *> &, const SdfPath &, const SdfPath &, const SdfLayerHandle &)::_CacheNodeHelper::InsertCacheNodePair(size_t, PcpNodeRef, std::set<CacheNodePair> *)", v12 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v9, "node", 0), result))
  {
    v9 = a1;
    v10 = v13;
    return sub_29A4819C0(a4, &v9, &v9);
  }

  return result;
}

uint64_t sub_29A481BDC(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29A481BDC(result, *a2);
    sub_29A481BDC(v3, a2[1]);
    sub_29A481C38((a2 + 4));
  }

  return result;
}

void sub_29A481C38(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  sub_29A41B088();
}

uint64_t *sub_29A481C80(uint64_t **a1, void *a2, uint64_t a3)
{
  v5 = sub_29A481D00(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A481D88(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *sub_29A481D00(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

_DWORD *sub_29A481D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = *a2;
  *a2 = 0;
  sub_29A1DDD84(v6 + 10, (a2 + 8));
  result = sub_29A1DDDC0(v6 + 11, (a2 + 12));
  *(a3 + 16) = 1;
  return result;
}

void **sub_29A481DF8(void **result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * (&v4[-v5] >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        result = sub_29A481F8C(v3, v5);
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v24 = result;
    if (v9)
    {
      v10 = sub_29A012C48(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v6];
    v21 = v10;
    v22 = v13;
    *(&v23 + 1) = &v10[24 * v9];
    v14 = &v13[24 * a2];
    v15 = 24 * a2;
    v16 = v13;
    do
    {
      sub_29A481F8C(v3, v16);
      v16 += 24;
      v15 -= 24;
    }

    while (v15);
    *&v23 = v14;
    v17 = *(v3 + 8);
    v18 = &v13[*v3 - v17];
    sub_29A482004(v3, *v3, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = *(v3 + 16);
    *(v3 + 8) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return sub_29A4821BC(&v21);
  }

  return result;
}

void sub_29A481F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4821BC(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A481F8C(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  v3 = (a2 + 20);
  *(a2 + 16) = 0;
  v4 = (a2 + 16);
  *(a2 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v4);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3);
}

uint64_t sub_29A482004(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
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
    v7 = a2;
    do
    {
      sub_29A4820B8(a1, a4, v7);
      v7 += 24;
      a4 = v12 + 24;
      v12 += 24;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A481578(a1, v5);
      v5 += 6;
    }
  }

  return sub_29A482130(v9);
}

_DWORD *sub_29A4820B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 20);
  *a2 = *a3;
  v6 = (a2 + 20);
  sub_29A1DDD84((a2 + 8), (a3 + 8));
  sub_29A1DDDC0((a2 + 12), (a3 + 12));
  sub_29A1DDD84((a2 + 16), (a3 + 16));

  return sub_29A1DDDC0(v6, v5);
}

uint64_t sub_29A482130(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A482168(a1);
  }

  return a1;
}

uint64_t *sub_29A482168(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 6;
      result = sub_29A481578(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A4821BC(void **a1)
{
  sub_29A4821F0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A4821F0(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 24;
      result = sub_29A481578(v4, (v1 - 24));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A482238(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29A482238(result, *a2);
    sub_29A482238(v3, a2[1]);
    sub_29A482294((a2 + 4));
  }

  return result;
}

void sub_29A482294(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  sub_29A41B088();
}

uint64_t *sub_29A4822DC(uint64_t **a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_29A482374(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v9 = a4[1];
    v7[4] = *a4;
    v7[5] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }

    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A482374(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v11 = sub_29A0ECB5C(a5);
    if (v11 >= sub_29A0ECB5C((a2 + 4)))
    {
      v14 = sub_29A0ECB5C((a2 + 4));
      if (v14 >= sub_29A0ECB5C(a5))
      {
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

      a4 = a2 + 1;
      v15 = a2[1];
      if (v15)
      {
        v16 = a2[1];
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        v21 = a2;
        do
        {
          v17 = v21[2];
          v19 = *v17 == v21;
          v21 = v17;
        }

        while (!v19);
      }

      if (v17 != v9)
      {
        v22 = sub_29A0ECB5C(a5);
        if (v22 >= sub_29A0ECB5C((v17 + 4)))
        {
          goto LABEL_28;
        }

        v15 = *a4;
      }

      if (v15)
      {
        *a3 = v17;
        return v17;
      }

      else
      {
        *a3 = a2;
      }

      return a4;
    }
  }

  if (*a1 == a2)
  {
    v13 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v12 = *a2;
  if (*a2)
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
    v18 = a2;
    do
    {
      v13 = v18[2];
      v19 = *v13 == v18;
      v18 = v13;
    }

    while (v19);
  }

  v20 = sub_29A0ECB5C((v13 + 4));
  if (v20 < sub_29A0ECB5C(a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_29A43BEB4(a1, a3, a5);
}

void sub_29A482538(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A482538(a1, *a2);
    sub_29A482538(a1, a2[1]);
    sub_29A482594(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29A482594(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29A4825D4(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29A48266C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_DWORD *sub_29A48266C@<X0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1E21F4(v6 + 8, v7);
  result = sub_29A1E2240(v6 + 9, v7 + 1);
  *(v6 + 5) = 0;
  *(v6 + 6) = -1;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A4826DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator<(a2, v2 + 4) & 1) == 0)
      {
        if (!pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator<(v2 + 4, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_29A482744(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  result = *sub_29A481D00(a1, &v8, a2);
  if (!result)
  {
    sub_29A4827DC(a1, a4, v7);
  }

  return result;
}

void sub_29A4827DC(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29B2A8168(v6 + 4, &v7);
}

void sub_29A48285C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A482294(v2 + 32);
    }

    operator delete(v2);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  return *a1 < *a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginRootNode(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  result = *this;
  v3 = *(this + 1);
  v4 = **(result + 16);
  do
  {
    v5 = v3;
    v3 = *(v4 + 48 * v3 + 26);
    v6 = v3 == 0xFFFF || result == 0;
  }

  while (!v6 && *(v4 + 48 * v5 + 24) != v3);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  if (*(**(*this + 16) + 48 * *(this + 1) + 26) == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *this;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  if (*(**(*this + 16) + 48 * *(this + 1) + 24) == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *this;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSymmetry(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, int a2)
{
  result = *this;
  v5 = *(this + 1);
  if (((((*(**(result + 16) + 48 * v5 + 42) & 1) == 0) ^ a2) & 1) == 0)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(result, v5);
    if (a2)
    {
      v6 = 0x10000;
    }

    else
    {
      v6 = 0;
    }

    *(result + 40) = *(result + 40) & 0xFFFEFFFF | v6;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetPermission(unint64_t *a1, int a2)
{
  result = *a1;
  v5 = a1[1];
  if (*(**(result + 16) + 48 * v5 + 41) != a2)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(result, v5);
    *(result + 41) = a2;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetCulled(void *this, int a2)
{
  if (((((*(*(*this + 32) + 12 * this[1] + 10) & 2) == 0) ^ a2) & 1) == 0)
  {
    v2 = this;
    if (a2)
    {
      *(*this + 56) &= ~4u;
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    this = pxrInternal__aapl__pxrReserved__::PcpNodeRef::_RecordRestrictionDepth(this, a2 ^ 1u);
    v4 = *(*v2 + 32) + 12 * v2[1];
    *(v4 + 10) = *(v4 + 10) & 0xFD | v3;
  }

  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::_RecordRestrictionDepth(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, int a2)
{
  if (a2)
  {
    CanContributeSpecs = pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(this);
    v4 = (*(*this + 32) + 12 * *(this + 1));
    if (CanContributeSpecs)
    {
      result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = (*(*this + 32) + 12 * *(this + 1));
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v4);
  if (result >= 0x10000)
  {
    v7[0] = "pcp/node.cpp";
    v7[1] = "_RecordRestrictionDepth";
    v7[2] = 200;
    v7[3] = "void pxrInternal__aapl__pxrReserved__::PcpNodeRef::_RecordRestrictionDepth(_Restricted)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v7, "Maximum restriction namespace depth exceeded", v6);
    result = 0xFFFFLL;
  }

LABEL_7:
  *(v4 + 4) = result;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetRestricted(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, int a2)
{
  result = *this;
  v5 = *(this + 1);
  v6 = *(**(result + 16) + 48 * v5 + 40);
  if (((((v6 & 0x40000) == 0) ^ a2) & 1) == 0)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(result, v5);
    if (a2)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = 0;
    }

    *(result + 40) = *(result + 40) & 0xFFFBFFFF | v7;
  }

  if (a2 != (v6 & 0x40000u) >> 18)
  {

    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::_RecordRestrictionDepth(this, a2 ^ 1u);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, int a2)
{
  result = *this;
  v5 = *(this + 1);
  if ((*(**(result + 16) + 48 * v5 + 42) & 2) != 0)
  {
    if (a2)
    {
      return result;
    }

    v7 = 1;
  }

  else
  {
    v6 = *(*(result + 32) + 12 * v5 + 10);
    if ((a2 & 1) == 0)
    {
      if (a2 == (v6 & 2) >> 1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v7 = (v6 >> 1) & 1;
  }

  result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::_GetWriteableNode(result, v5);
  if (a2)
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0;
  }

  *(result + 40) = *(result + 40) & 0xFFFDFFFF | v8;
  if (v7 != a2)
  {
LABEL_10:

    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::_RecordRestrictionDepth(this, a2 ^ 1u);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  v1 = *(this + 1);
  if ((*(**(*this + 16) + 48 * v1 + 42) & 2) != 0)
  {
    return 1;
  }

  else
  {
    return (*(*(*this + 32) + 12 * v1 + 10) >> 1) & 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = *(**(*this + 16) + 48 * v2 + 40);
  if ((v3 & 0x20000) != 0 || (*(*(v1 + 32) + 12 * v2 + 10) & 2) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000) != 0)
  {
    return (*(v1 + 56) >> 3) & 1;
  }

  return 1;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetIsDueToAncestor(void *this, int a2)
{
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v2 = *(*this + 32) + 12 * this[1];
  *(v2 + 10) = *(v2 + 10) & 0xFB | v3;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSpecs(void *this, char a2)
{
  v2 = *(*this + 32) + 12 * this[1];
  *(v2 + 10) = *(v2 + 10) & 0xFE | a2;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = 0;
  v4 = *this;
  if (*this)
  {
    if (*(**(v4 + 16) + 48 * *(this + 1) + 24) != 0xFFFF)
    {
      return pxrInternal__aapl__pxrReserved__::PcpNode_GetNonVariantPathElementCount((*(v4 + 32) + 12 * *(**(v4 + 16) + 48 * *(this + 1) + 24)), a2) - *(**(*this + 16) + 48 * *(this + 1) + 38);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNode_GetNonVariantPathElementCount(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(this))
  {
    sub_29A1E21F4(&v6, this);
    sub_29A1E2240(&v7, this + 1);
    if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v6) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, &v5);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return PathElementCount;
}

void sub_29A483190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v4 = (*(*this + 32) + 12 * *(this + 1));
  DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(this, a2);

  return sub_29A483208(v4, DepthBelowIntroduction, a3);
}

_DWORD *sub_29A483208@<X0>(_DWORD *a1@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  sub_29A1E21F4(a3, a1);
  result = sub_29A1E2240(a3 + 1, a1 + 1);
  if (a2)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a3))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetIntroPath@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v4 = *this;
  if (!*this || *(**(v4 + 16) + 48 * *(this + 1) + 24) == 0xFFFF)
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
    sub_29A1E21F4(a3, v8);

    return sub_29A1E2240(a3 + 1, v8 + 1);
  }

  else
  {
    v5 = (*(v4 + 32) + 12 * *(**(v4 + 16) + 48 * *(this + 1) + 24));
    DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(this, a2);

    return sub_29A483208(v5, DepthBelowIntroduction, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtOriginRootIntroduction@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v4 = **(*this + 16);
  v5 = *(this + 1);
  do
  {
    v6 = v5;
    v5 = *(v4 + 48 * v5 + 26);
  }

  while (v5 != 0xFFFF && *(v4 + 48 * v6 + 24) != v5);
  v7 = (*(*this + 32) + 12 * *(this + 1));
  v10[0] = *this;
  v10[1] = v6;
  DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(v10, a2);

  return sub_29A483208(v7, DepthBelowIntroduction, a3);
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenRange@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(**(*this + 16) + 48 * v3 + 28);
  *a2 = *this;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v2;
  a2[4] = v3;
  a2[5] = 0xFFFFLL;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::PcpNodeRef_ChildrenIterator(void *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, char a3)
{
  *this = *a2;
  if (a3)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = *(**(*this + 16) + 48 * this[1] + 28);
  }

  this[2] = v3;
  return this;
}

{
  *this = *a2;
  if (a3)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = *(**(*this + 16) + 48 * this[1] + 28);
  }

  this[2] = v3;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetChildrenReverseRange@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(**(*this + 16) + 48 * v3 + 30);
  *a2 = *this;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v2;
  a2[4] = v3;
  a2[5] = 0xFFFFLL;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::PcpNodeRef_ChildrenReverseIterator(void *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, char a3)
{
  *this = *a2;
  if (a3)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = *(**(*this + 16) + 48 * this[1] + 30);
  }

  this[2] = v3;
  return this;
}

{
  *this = *a2;
  if (a3)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = *(**(*this + 16) + 48 * this[1] + 30);
  }

  this[2] = v3;
  return this;
}

double pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::PcpNodeRef_ChildrenIterator(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *this)
{
  *this = 0;
  result = NAN;
  *(this + 8) = xmmword_29B494C40;
  return result;
}

{
  *this = 0;
  result = NAN;
  *(this + 8) = xmmword_29B494C40;
  return result;
}

double pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::PcpNodeRef_ChildrenReverseIterator(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator *this)
{
  *this = 0;
  result = NAN;
  *(this + 8) = xmmword_29B494C40;
  return result;
}

{
  *this = 0;
  result = NAN;
  *(this + 8) = xmmword_29B494C40;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::PcpNodeRef_ChildrenReverseIterator(uint64_t *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *a2)
{
  *this = *a2;
  v2 = *(a2 + 2);
  v3 = *this;
  if (v2 == 0xFFFF)
  {
    v4 = (**(v3 + 16) + 48 * this[1] + 30);
  }

  else
  {
    v4 = (**(v3 + 16) + 48 * v2 + 32);
  }

  this[2] = *v4;
  return this;
}

{
  *this = *a2;
  v2 = *(a2 + 2);
  v3 = *this;
  if (v2 == 0xFFFF)
  {
    v4 = (**(v3 + 16) + 48 * this[1] + 30);
  }

  else
  {
    v4 = (**(v3 + 16) + 48 * v2 + 32);
  }

  this[2] = *v4;
  return this;
}

void pxrInternal__aapl__pxrReserved__::operator<<(void *a1, void *a2)
{
  v3 = sub_29A00911C(a1, "(", 1);
  v4 = MEMORY[0x29C2C1F00](v3, a2[1]);
  v5 = sub_29A00911C(v4, ") ", 2);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(qword_2A204E198, *(**(*a2 + 16) + 48 * a2[1] + 40), __p);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_29A00911C(v5, v6, v7);
  v9 = sub_29A00911C(v8, " ", 1);
  pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v10, **(*a2 + 16) + 48 * a2[1], *(*a2 + 32) + 12 * a2[1]);
  pxrInternal__aapl__pxrReserved__::operator<<(v9, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  sub_29A1DE3A4(&v11);
  sub_29A41B088();
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromNodeToRoot@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(a2, &v26);
  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(this);
  v9 = MapToRoot;
  if (a3)
  {
    *a3 = 0;
  }

  if (!*MapToRoot)
  {
    v35 = "pcp/pathTranslation.cpp";
    v36 = "Pcp_TranslatePath";
    v37 = 33;
    v38 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v39 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Null map function");
    goto LABEL_10;
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v26))
  {
    goto LABEL_12;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v26))
  {
    v35 = "pcp/pathTranslation.cpp";
    v36 = "Pcp_TranslatePath";
    v37 = 45;
    v38 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v39 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v26);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Path to translate <%s> is not absolute.", Text);
    goto LABEL_10;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v26))
  {
    v35 = "pcp/pathTranslation.cpp";
    v36 = "Pcp_TranslatePath";
    v37 = 50;
    v38 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v39 = 0;
    v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v26);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Path to translate <%s> must not contain a variant selection.", v12);
LABEL_10:
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
    goto LABEL_15;
  }

  v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v9, v10, v11);
  if (!pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity(v14))
  {
    v18 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v9, v15, v16);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v18, &v26, &v33);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v33))
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(&v33, &v35);
      v31 = v35;
      v32 = v36;
      while (v31 != v32)
      {
        v21 = sub_29A1E25CC(&v31, v19, v20);
        v24 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v9, v22, v23);
        pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v24, v21, &v29);
        v25 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
        if (v25)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v28, &v33, v21, &v29, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        *a4 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30);
        sub_29A1DE3A4(&v29);
        if (!v25)
        {
          goto LABEL_27;
        }

        sub_29A1E264C(&v31);
      }

      if (a3)
      {
        *a3 = 1;
      }

      sub_29A1DDD84(a4, &v33);
      sub_29A1DDDC0(a4 + 1, &v34);
LABEL_27:
      v31 = &v35;
      sub_29A1E234C(&v31);
    }

    else
    {
      *a4 = 0;
      sub_29A225424(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34);
    sub_29A1DE3A4(&v33);
  }

  else
  {
LABEL_12:
    if (a3)
    {
      *a3 = 1;
    }

    sub_29A1E21F4(a4, &v26);
    sub_29A1E2240(a4 + 1, &v27);
  }

LABEL_15:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
  return sub_29A1DE3A4(&v26);
}

void sub_29A483B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, int a15, int a16, char a17)
{
  a13 = &a17;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a15);
  sub_29A1DCEA8(&a10);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromRootToNode@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a4@<X8>)
{
  v16 = 0;
  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(this);
  result = sub_29A483D08(MapToRoot, a2, &v16, a4);
  if (v16 == 1)
  {
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(this);
    sub_29A1E21F4(&v14, Path);
    sub_29A1E2240(&v15, Path + 1);
    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v14, &v13);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, a4, &v13, &v14, 0);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (a3)
  {
    *a3 = v16;
  }

  return result;
}

void sub_29A483CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a13);
  sub_29A1DCEA8(v13);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A483D08@<X0>(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!*a1)
  {
    v29 = "pcp/pathTranslation.cpp";
    v30 = "Pcp_TranslatePath";
    v31 = 33;
    v32 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 1, "Null map function");
    goto LABEL_10;
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    goto LABEL_13;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    v29 = "pcp/pathTranslation.cpp";
    v30 = "Pcp_TranslatePath";
    v31 = 45;
    v32 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 1, "Path to translate <%s> is not absolute.");
    goto LABEL_10;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(a2))
  {
    v29 = "pcp/pathTranslation.cpp";
    v30 = "Pcp_TranslatePath";
    v31 = 50;
    v32 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapExpression]";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 1, "Path to translate <%s> must not contain a variant selection.");
LABEL_10:
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  }

  v11 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a1, v8, v9);
  if (!pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity(v11))
  {
    v14 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a1, v12, v13);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(v14, a2, &v27);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v27))
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(&v27, &v29);
      v25 = v29;
      v26 = v30;
      while (v25 != v26)
      {
        v17 = sub_29A1E25CC(&v25, v15, v16);
        v20 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a1, v18, v19);
        pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(v20, v17, &v23);
        v21 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
        if (v21)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v22, &v27, v17, &v23, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        *a4 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
        sub_29A1DE3A4(&v23);
        if (!v21)
        {
          goto LABEL_29;
        }

        sub_29A1E264C(&v25);
      }

      if (a3)
      {
        *a3 = 1;
      }

      sub_29A1DDD84(a4, &v27);
      sub_29A1DDDC0(a4 + 1, &v28);
LABEL_29:
      v25 = &v29;
      sub_29A1E234C(&v25);
    }

    else
    {
      *a4 = 0;
      sub_29A225424(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28);
    return sub_29A1DE3A4(&v27);
  }

  else
  {
LABEL_13:
    if (a3)
    {
      *a3 = 1;
    }

    sub_29A1E21F4(a4, a2);

    return sub_29A1E2240(a4 + 1, a2 + 1);
  }
}

void sub_29A484020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, int a15, int a16, char a17)
{
  a13 = &a17;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpTranslateTargetPathFromRootToNode@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(this);

  return sub_29A483D08(MapToRoot, a2, a3, a4);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromRootToNodeUsingFunction@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpMapFunction *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsNull(this))
  {
    v21 = "pcp/pathTranslation.cpp";
    v22 = "Pcp_TranslatePath";
    v23 = 33;
    v24 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Null map function");
LABEL_5:
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    goto LABEL_13;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    v21 = "pcp/pathTranslation.cpp";
    v22 = "Pcp_TranslatePath";
    v23 = 45;
    v24 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Path to translate <%s> is not absolute.");
    goto LABEL_5;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(a2))
  {
    v21 = "pcp/pathTranslation.cpp";
    v22 = "Pcp_TranslatePath";
    v23 = 50;
    v24 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = false, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Path to translate <%s> must not contain a variant selection.");
    goto LABEL_5;
  }

  if (!pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity(this))
  {
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(this, a2, &v19);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v19))
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(&v19, &v21);
      v17 = v21;
      v18 = v22;
      while (v17 != v18)
      {
        v12 = sub_29A1E25CC(&v17, v10, v11);
        pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(this, v12, &v15);
        v13 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
        if (v13)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v14, &v19, v12, &v15, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        *a4 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
        sub_29A1DE3A4(&v15);
        if (!v13)
        {
          goto LABEL_29;
        }

        sub_29A1E264C(&v17);
      }

      if (a3)
      {
        *a3 = 1;
      }

      sub_29A1DDD84(a4, &v19);
      sub_29A1DDDC0(a4 + 1, &v20);
LABEL_29:
      v17 = &v21;
      sub_29A1E234C(&v17);
    }

    else
    {
      *a4 = 0;
      sub_29A225424(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
    return sub_29A1DE3A4(&v19);
  }

  else
  {
LABEL_13:
    if (a3)
    {
      *a3 = 1;
    }

    sub_29A1E21F4(a4, a2);

    return sub_29A1E2240(a4 + 1, a2 + 1);
  }
}

void sub_29A4843D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, int a15, int a16, char a17)
{
  a13 = &a17;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromNodeToRootUsingFunction@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpMapFunction *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(a2, &v15);
  if (a3)
  {
    *a3 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsNull(this))
  {
    v24 = "pcp/pathTranslation.cpp";
    v25 = "Pcp_TranslatePath";
    v26 = 33;
    v27 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v28 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Null map function");
LABEL_5:
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
    goto LABEL_15;
  }

  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
  {
    goto LABEL_12;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v15))
  {
    v24 = "pcp/pathTranslation.cpp";
    v25 = "Pcp_TranslatePath";
    v26 = 45;
    v27 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v28 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v15);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Path to translate <%s> is not absolute.", Text);
    goto LABEL_5;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(&v15))
  {
    v24 = "pcp/pathTranslation.cpp";
    v25 = "Pcp_TranslatePath";
    v26 = 50;
    v27 = "SdfPath pxrInternal__aapl__pxrReserved__::Pcp_TranslatePath(const Mapping &, const SdfPath &, BOOL *) [NodeToRoot = true, Mapping = pxrInternal__aapl__pxrReserved__::PcpMapFunction]";
    v28 = 0;
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v15);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Path to translate <%s> must not contain a variant selection.", v8);
    goto LABEL_5;
  }

  if (!pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity(this))
  {
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(this, &v15, &v22);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v22))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively(&v22, &v24);
      v20 = v24;
      v21 = v25;
      while (v20 != v21)
      {
        v13 = sub_29A1E25CC(&v20, v11, v12);
        pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(this, v13, &v18);
        v14 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
        if (v14)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v17, &v22, v13, &v18, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        *a4 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
        sub_29A1DE3A4(&v18);
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_29A1E264C(&v20);
      }

      if (a3)
      {
        *a3 = 1;
      }

      sub_29A1DDD84(a4, &v22);
      sub_29A1DDDC0(a4 + 1, &v23);
LABEL_27:
      v20 = &v24;
      sub_29A1E234C(&v20);
    }

    else
    {
      *a4 = 0;
      sub_29A225424(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
    sub_29A1DE3A4(&v22);
  }

  else
  {
LABEL_12:
    if (a3)
    {
      *a3 = 1;
    }

    sub_29A1E21F4(a4, &v15);
    sub_29A1E2240(a4 + 1, &v16);
  }

LABEL_15:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  return sub_29A1DE3A4(&v15);
}

void sub_29A484754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, int a15, int a16, char a17)
{
  a13 = &a17;
  sub_29A1E234C(&a13);
  sub_29A1DCEA8(&a15);
  sub_29A1DCEA8(&a10);
  _Unwind_Resume(a1);
}

void sub_29A4847C0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::MENV30_ENABLE_NEW_DEFAULT_STANDIN_BEHAVIOR))
  {
    sub_29B2A83E4();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpIsNewDefaultStandinBehaviorEnabled(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::MENV30_ENABLE_NEW_DEFAULT_STANDIN_BEHAVIOR);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  return *v1;
}

double pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (*this)
  {
    v1 = sub_29A42AF94(this);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetRootNode(v1);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (*this)
  {
    v2 = sub_29A42AF94(this);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetRootNode(v2);
    v6[0] = v3;
    v6[1] = v4;
    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v6);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(this);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::HasSpecs(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (!*this || (*(sub_29A42AF94(this) + 56) & 8) == 0)
  {
    return *(this + 1) != *(this + 2);
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(this, 6u, &v10);
  v4 = v10;
  v3 = v11;
  v5 = v12;
  if (v10 == v12 && v11 == v13)
  {
    return 0;
  }

  v7 = v13 - 1;
  do
  {
    v8 = v3;
    v9[0] = v4;
    v9[1] = v3;
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(v9);
    if (result)
    {
      break;
    }

    v3 = v8 + 1;
  }

  while (v4 != v5 || v7 != v8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsUsd(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (*this)
  {
    return (*(sub_29A42AF94(this) + 56) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v7 = sub_29A42AF94(a1);
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForRange(v7, a2);
    v4 = *a1;
  }

  else
  {
    result = -1;
    v9 = -1;
  }

  *a3 = v4;
  a3[1] = result;
  a3[2] = v4;
  a3[3] = v9;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::HasAnyPayloads(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (!*this)
  {
    return 0;
  }

  v1 = sub_29A42AF94(this);

  return pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::HasPayloads(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsInstanceable(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this)
{
  if (!*this)
  {
    return 0;
  }

  v1 = sub_29A42AF94(this);

  return pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::IsInstanceable(v1);
}

pxrInternal__aapl__pxrReserved__::PcpPrimIndex *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  *(this + 4) = 0;
  v4 = (this + 32);
  *this = 0u;
  *(this + 1) = 0u;
  *this = *a2;
  sub_29B293C98(a2);
  sub_29B290B2C(this, 0);
  if (this != a2)
  {
    sub_29A36CF34(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    sub_29A426D84(v6, *v5, v5[1], (v5[1] - *v5) >> 4);
    sub_29A151CB4(v4, v6);
  }

  return this;
}

void sub_29A484B38(_Unwind_Exception *a1)
{
  v4 = v3;
  operator delete(v4);
  sub_29A151CB4(v2, 0);
  v6 = *(v1 + 8);
  if (v6)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  sub_29A436E3C(v1);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::Swap(uint64_t *this, pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  return this;
}

pxrInternal__aapl__pxrReserved__::PcpNodeRef *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::DumpToDotGraph(pxrInternal__aapl__pxrReserved__ *a1, char *a2, const char *a3, uint64_t a4)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return pxrInternal__aapl__pxrReserved__::PcpDumpDotGraph(a1, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeIteratorAtNode(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2)
{
  v2 = *this;
  if (*this)
  {
    v4 = sub_29A42AF94(this);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexForNode(v4, a2);
  }

  return v2;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeSubtreeRange@<X0>(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v7 = sub_29A42AF94(this);
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForSubtreeRange(v7, a2);
    v4 = *this;
  }

  else
  {
    result = -1;
    v9 = -1;
  }

  *a3 = v4;
  a3[1] = result;
  a3[2] = v4;
  a3[3] = v9;
  return result;
}

double pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPrimRange@<D0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (*a1)
  {
    if (a2 == 6)
    {
      v6 = a1;
      v7 = 0;
    }

    else
    {
      v9 = sub_29A42AF94(a1);
      NodeIndexesForRange = pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::GetNodeIndexesForRange(v9, a2);
      v12 = a1[1];
      v13 = a1[2] - v12;
      v7 = v13 >> 2;
      if (v13)
      {
        v14 = 0;
        if (v7 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v7;
        }

        v16 = (v12 + 4);
        while (1)
        {
          v17 = *(v16 - 2);
          if (NodeIndexesForRange <= v17 && v11 > v17)
          {
            break;
          }

          ++v14;
          v16 += 2;
          if (v15 == v14)
          {
            goto LABEL_17;
          }
        }

        if (v7 <= v14 + 1)
        {
          v22 = v14 + 1;
        }

        else
        {
          v22 = v7;
        }

        v23 = v14;
        while (++v23 < v7)
        {
          v24 = *v16;
          v16 += 2;
          if (v11 <= v24)
          {
            goto LABEL_28;
          }
        }

        v23 = v22;
LABEL_28:
        pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(&v25, a1, v14);
        v20 = a3 + 2;
        v21 = a1;
        v19 = v23;
        goto LABEL_19;
      }

LABEL_17:
      v6 = a1;
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(&v25, v6, v7);
    v19 = (a1[2] - a1[1]) >> 2;
    v20 = a3 + 2;
    v21 = a1;
LABEL_19:
    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(v20, v21, v19);
    result = *&v25;
    *a3 = v25;
    return result;
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a3);

  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a3 + 2);
  return result;
}

double pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPrimRangeForNode@<D0>(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(&v16, this, 0);
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(v15, this, (*(this + 2) - *(this + 1)) >> 2);
  while (!pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v16, v15))
  {
    Node = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::GetNode(&v16);
    if (v7 == *(a2 + 1) && *a2 == Node)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::increment(&v16);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v16, v15))
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a3);
    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a3 + 2);
  }

  else
  {
    v14 = v16;
    do
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIterator::increment(&v14);
      if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v14, v15))
      {
        break;
      }

      v10 = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::GetNode(&v14);
    }

    while (v11 == *(a2 + 1) && *a2 == v10);
    result = *&v16;
    v13 = v14;
    *a3 = v16;
    *(a3 + 1) = v13;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeProvidingSpec(uint64_t *a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v4 = sub_29A2F6760(a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v4, v9);
  v5 = sub_29A2F6760(a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v5, &v8);
  NodeProvidingSpec = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeProvidingSpec(a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
  sub_29B295ABC(&v8, v9);
  return NodeProvidingSpec;
}

void sub_29A484F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  sub_29A1DCEA8(&a10);
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeProvidingSpec(uint64_t *a1, uint64_t a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a1, 6u, &v15);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  if (v15 == v17 && v16 == v18)
  {
    return 0;
  }

  v9 = v18 - 1;
  while (1)
  {
    v10 = v5;
    v14[0] = v6;
    v14[1] = v5;
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(v14))
    {
      if (*pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v14) == *a3)
      {
        LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v14);
        v12 = sub_29A4184C4(LayerStack);
        if (pxrInternal__aapl__pxrReserved__::PcpLayerStack::HasLayer(v12, a2))
        {
          break;
        }
      }
    }

    v5 = v10 + 1;
    if (v6 == v7 && v9 == v10)
    {
      return 0;
    }
  }

  return v14[0];
}

BOOL pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComposeAuthoredVariantSelections@<W0>(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *this@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v4 = *(v3 + 59);
  v29 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPrimRange(this, 6u, &v30);
  sub_29A423C30(v27, &v30);
  while (1)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(v27, &v28);
    if (result)
    {
      break;
    }

    SiteRef = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::_GetSiteRef(v27);
    v8 = v7;
    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    v9 = sub_29A3302A8(SiteRef);
    *(&v30 + 1) = &v25;
    v31 = &stru_2A2049428;
    v32 = 0;
    *&v30 = &unk_2A204E9B8;
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v9, v8, &v29, &v30) && (v32 & 1) == 0)
    {
      v10 = v25;
      if (v25 != v26)
      {
        while (1)
        {
          if (!pxrInternal__aapl__pxrReserved__::Pcp_IsVariableExpression(v10 + 7))
          {
            goto LABEL_22;
          }

          *&v30 = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::GetNode(v27);
          *(&v30 + 1) = v11;
          LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v30);
          v30 = 0uLL;
          v31 = 0;
          v13 = *(sub_29A4184C4(LayerStack) + 400);
          sub_29A008E78(&__p, "variant");
          sub_29A321960(&v20, SiteRef);
          pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression((v10 + 7), v13, &__p, &v20, v8, 0, &v30, &v23);
          if (*(v10 + 79) < 0)
          {
            operator delete(v10[7]);
          }

          *(v10 + 7) = v23;
          v10[9] = v24;
          HIBYTE(v24) = 0;
          LOBYTE(v23) = 0;
          v14 = v21;
          if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v14 + 8))(v14);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v30 == *(&v30 + 1))
          {
            break;
          }

          v15 = sub_29A03AFE8(&v25, v10);
          sub_29A00B454((v10 + 4));
          operator delete(v10);
          *&v23 = &v30;
          sub_29A0176E4(&v23);
LABEL_27:
          v10 = v15;
          if (v15 == v26)
          {
            v18 = v25;
            goto LABEL_30;
          }
        }

        *&v23 = &v30;
        sub_29A0176E4(&v23);
LABEL_22:
        v16 = v10[1];
        if (v16)
        {
          do
          {
            v15 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v15 = v10[2];
            v17 = *v15 == v10;
            v10 = v15;
          }

          while (!v17);
        }

        goto LABEL_27;
      }

      v18 = v26;
LABEL_30:
      sub_29A0193A8(a2, v18, v26);
    }

    sub_29A01752C(&v25, v26[0]);
    sub_29A41EBC0(v27);
  }

  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetSelectionAppliedForVariantSet(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a1, 6u, &v24);
  v6 = v24;
  v5 = v25;
  v7 = v26;
  if (v24 == v26 && v25 == v27)
  {
LABEL_27:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v9 = v27 - 1;
  while (1)
  {
    v10 = v5;
    v23[0] = v6;
    v23[1] = v5;
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v23);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(Path))
    {
      goto LABEL_22;
    }

    v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v23);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(v12, v19);
    v13 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = v19[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      v17 = (v20 & 0x80u) == 0 ? v19 : v19[0];
      v18 = v16 >= 0 ? a2 : *a2;
      if (!memcmp(v17, v18, v14))
      {
        break;
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((v13 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v19[0]);
LABEL_22:
    v5 = v10 + 1;
    if (v6 == v7 && v9 == v10)
    {
      goto LABEL_27;
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_29A008D14(a3, __p, *(&__p + 1));
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *a3 = __p;
    *(a3 + 16) = v22;
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *pxrInternal__aapl__pxrReserved__::PcpPrimIndex::AddChildPrimIndex(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *v14 = *(a2 + 8);
  inserted = pxrInternal__aapl__pxrReserved__::PcpNodeRef::InsertChildSubgraph(v14, a3, a2, a4);
  if (inserted && v6 != -1)
  {
    v8 = sub_29A42AF94(a3);
    if (pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::HasPayloads(v8))
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::SetHasPayloads(v14[0], 1);
    }

    v9 = a3[4];
    if (v9)
    {
      v12 = *(a1 + 32);
      v11 = (a1 + 32);
      v10 = v12;
      if (v12)
      {
        sub_29A44DFEC(v10, *(v10 + 8), *v9, v9[1], (v9[1] - *v9) >> 4);
      }

      else
      {
        a3[4] = 0;
        sub_29A151CB4(v11, v9);
      }
    }
  }

  return inserted;
}

BOOL pxrInternal__aapl__pxrReserved__::PcpPrimIndexInputs::IsEquivalentTo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    if ((atomic_load_explicit(&qword_2A1742028, memory_order_acquire) & 1) == 0)
    {
      sub_29B2A8418();
    }

    v6 = &qword_2A1742038;
    if (!v4)
    {
      v4 = &qword_2A1742038;
    }

    if (v5)
    {
      v6 = v5;
    }

    if (v4[2] != v6[2])
    {
      return 0;
    }

    v9 = *v4;
    v7 = v4 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      v10 = *v6;
      while (sub_29A43A4E0(&v21, (v8 + 4), (v10 + 4)))
      {
        v11 = v8[1];
        v12 = v8;
        if (v11)
        {
          do
          {
            v8 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v8 = v12[2];
            v13 = *v8 == v12;
            v12 = v8;
          }

          while (!v13);
        }

        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v10[2];
            v13 = *v15 == v10;
            v10 = v15;
          }

          while (!v13);
        }

        v10 = v15;
        if (v8 == v7)
        {
          goto LABEL_23;
        }
      }

      return 0;
    }
  }

LABEL_23:
  v16 = *(a1 + 16);
  v17 = *(a2 + 16);
  if (v16 == v17)
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  if ((atomic_load_explicit(&qword_2A1742030, memory_order_acquire) & 1) == 0)
  {
    sub_29B2A8498();
  }

  v18 = v16 ? v16 : &xmmword_2A1742050;
  v19 = v17 ? v17 : &xmmword_2A1742050;
  result = Overlay::__operatorEqualsEquals(v18, v19);
  if (result)
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *pxrInternal__aapl__pxrReserved__::PcpPrimIndexOutputs::Append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::AddChildPrimIndex(a1, a3, a2, a4);
  if (v7)
  {
    if (v6 != -1)
    {
      pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::AppendDependencyData((a1 + 72), (a2 + 72));
      pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::AppendDependencyData((a1 + 80), (a2 + 80));
      sub_29A41B814((a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
      sub_29A4272D4((a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 4);
      v8 = *(a2 + 64);
      if (v8)
      {
        v9 = *(a1 + 64);
        if (v9)
        {
          if (v8 != v9)
          {
            v14[0] = "pcp/primIndex.cpp";
            v14[1] = "Append";
            v14[2] = 466;
            v14[3] = "PcpNodeRef pxrInternal__aapl__pxrReserved__::PcpPrimIndexOutputs::Append(PcpPrimIndexOutputs &&, const PcpArc &, PcpErrorBasePtr *)";
            v15 = 0;
            Path = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPath(a1);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Inconsistent payload states for primIndex <%s> -- parent=%d vs child=%d; taking parent=%d\n", v12, Text, *(a1 + 64), *(a2 + 64), *(a1 + 64));
          }
        }

        else
        {
          *(a1 + 64) = v8;
        }
      }
    }
  }

  return v7;
}

void sub_29A485974()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 0, "Task::EvalNodeRelocations", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 1, "Task::EvalImpliedRelocations", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 2, "Task::EvalNodeReferences", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 3, "Task::EvalNodePayloads", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 4, "Task::EvalNodeInherits", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 5, "Task::EvalImpliedClasses", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 6, "Task::EvalNodeSpecializes", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 12, "Task::EvalImpliedSpecializes", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 7, "Task::EvalNodeAncestralVariantSets", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 8, "Task::EvalNodeAncestralVariantAuthored", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 9, "Task::EvalNodeAncestralVariantFallback", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 10, "Task::EvalNodeAncestralVariantNoneFound", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 13, "Task::EvalNodeVariantSets", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 14, "Task::EvalNodeVariantAuthored", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 15, "Task::EvalNodeVariantFallback", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 16, "Task::EvalNodeVariantNoneFound", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 11, "Task::EvalNodeAncestralDynamicPayloads", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 17, "Task::EvalNodeDynamicPayloads", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 18, "Task::EvalUnresolvedPrimPathError", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2050398, 19, "Task::None", 0);
}

void pxrInternal__aapl__pxrReserved__::Pcp_RescanForSpecs(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  sub_29A0ECEEC(&v44, "Pcp", "Pcp_RescanForSpecs");
  if (a2)
  {
    if (a3)
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a1, 6u, &v38);
      v42 = v38;
      v43 = v39;
      v40 = v38;
      v41 = v39;
      while (v40 != v41 || *(&v40 + 1) != *(&v41 + 1))
      {
        *&v38 = sub_29A485ED4(&v40, v8, v9);
        *(&v38 + 1) = v11;
        v12 = sub_29A485F5C(&v40);
        v13 = v12[1];
        *&v36 = *v12;
        *(&v36 + 1) = v13;
        LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v38);
        Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v38);
        HasPrimSpecs = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path);
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSpecs(&v36, HasPrimSpecs);
        sub_29A485F9C(&v40);
      }
    }
  }

  else
  {
    v36 = 0uLL;
    v37 = 0;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a1, 6u, &v38);
    v42 = v38;
    v43 = v39;
    v40 = v38;
    v41 = v39;
    while (v40 != v41 || *(&v40 + 1) != *(&v41 + 1))
    {
      *&v38 = sub_29A485ED4(&v40, v17, v18);
      *(&v38 + 1) = v20;
      if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(&v38) & 1) == 0 && pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v38) && (v21 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v38), v22 = sub_29A4184C4(v21), Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v22), v24 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v38), (v25 = Layers[1] - *Layers) != 0))
      {
        v26 = v24;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = v25 >> 3;
        do
        {
          v31 = sub_29A3302A8((*Layers + v27));
          if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v31, v26))
          {
            if (a4)
            {
              sub_29A321960(&v35, (*Layers + v27));
              sub_29A44D2DC();
            }

            sub_29A48BDF8(v46, *(&v38 + 1), v28);
            v34 = v46[0];
            sub_29A486024(&v36, &v34);
            v29 = 1;
          }

          ++v28;
          v27 += 8;
        }

        while (v30 != v28);
      }

      else
      {
        v29 = 0;
      }

      if (a3)
      {
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSpecs(&v38, v29 & 1);
      }

      sub_29A485F9C(&v40);
    }

    v32 = a1[1];
    *(a1 + 1) = v36;
    v33 = a1[3];
    a1[3] = v37;
    *&v36 = v32;
    v37 = v33;
    if (v32)
    {
      *(&v36 + 1) = v32;
      operator delete(v32);
    }
  }

  if (v44)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v45, v44);
  }
}

uint64_t sub_29A485ED4(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[2] && a1[1] == a1[3])
  {
    v6[0] = "tf/iterator.h";
    v6[1] = "operator*";
    v6[2] = 254;
    v6[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::pair<pxrInternal__aapl__pxrReserved__::PcpNodeIterator, pxrInternal__aapl__pxrReserved__::PcpNodeIterator>>::operator*() [T = std::pair<pxrInternal__aapl__pxrReserved__::PcpNodeIterator, pxrInternal__aapl__pxrReserved__::PcpNodeIterator>, Reverse = false]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A485F5C(void *result)
{
  if (*result == result[2] && result[1] == result[3])
  {
    sub_29B2A8504();
  }

  return result;
}

void *sub_29A485F9C(void *a1)
{
  v2 = a1[1];
  if (*a1 == a1[2] && v2 == a1[3])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator++";
    v5[2] = 233;
    v5[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::pair<pxrInternal__aapl__pxrReserved__::PcpNodeIterator, pxrInternal__aapl__pxrReserved__::PcpNodeIterator>>::operator++() [T = std::pair<pxrInternal__aapl__pxrReserved__::PcpNodeIterator, pxrInternal__aapl__pxrReserved__::PcpNodeIterator>, Reverse = false]";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "iterator exhausted");
  }

  else
  {
    a1[1] = v2 + 1;
  }

  return a1;
}

void sub_29A486024(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_29A00E7A8(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[4 * v10];
    v12 = &v11[4 * v7];
    *v12 = *a2;
    v6 = v12 + 4;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}