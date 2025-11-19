double sub_29AD031A8@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29AD031F8;
  a1[2] = &stru_2A20420F8;
  return result;
}

uint64_t sub_29AD031F8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  return result;
}

void sub_29AD03244(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1)
{
  *a1 = &unk_2A20854A0;
  sub_29AD03344(a1 + 392, *(a1 + 50));
  sub_29A447324(a1 + 368, *(a1 + 47));
  sub_29A1EF938(a1 + 328, *(a1 + 42));
  sub_29A1EF938(a1 + 304, *(a1 + 39));
  sub_29A43A24C(a1 + 264);
  sub_29AD03BBC(a1 + 240, *(a1 + 31));
  sub_29AD03B14(a1 + 216, *(a1 + 28));
  sub_29AD03A78(a1 + 192, *(a1 + 25));
  sub_29AD039D0(a1 + 168, *(a1 + 22));
  sub_29AD0392C(a1 + 144, *(a1 + 19));
  sub_29AD03798(a1 + 120, *(a1 + 16));
  sub_29AD036C0(a1 + 96, *(a1 + 13));
  sub_29AD03618(a1 + 72, *(a1 + 10));
  sub_29AD03510(a1 + 48, *(a1 + 7));
  sub_29AD0346C(a1 + 24, *(a1 + 4));

  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(a1);
}

void sub_29AD03344(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD03344(a1, *a2);
    sub_29AD03344(a1, a2[1]);
    sub_29AD033A0(a2 + 7);

    operator delete(a2);
  }
}

_DWORD *sub_29AD033A0(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType *sub_29AD033E0(atomic_ullong *a1)
{
  result = sub_29AD03428();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType::~HdPrimvarRoleTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType *sub_29AD03428()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens_StaticTokenType::HdPrimvarRoleTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AD0346C(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29AD0346C(result, *a2);
    sub_29AD0346C(v3, a2[1]);
    sub_29AD034C8((a2 + 4));
  }

  return result;
}

uint64_t sub_29AD03510(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29AD03510(result, *a2);
    sub_29AD03510(v3, a2[1]);
    sub_29AD0356C(a2 + 4);
  }

  return result;
}

void sub_29AD0356C(void *a1)
{
  v1 = a1[18];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[17];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[16];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29AD03618(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29AD03618(result, *a2);
    sub_29AD03618(v3, a2[1]);
    sub_29AD03674();
  }

  return result;
}

uint64_t sub_29AD036C0(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29AD036C0(result, *a2);
    sub_29AD036C0(v3, a2[1]);
    sub_29AD0371C((a2 + 4));
  }

  return result;
}

void sub_29AD0371C(uint64_t a1)
{
  v1 = (a1 + 232);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AD03798(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD03798(a1, *a2);
    sub_29AD03798(a1, a2[1]);
    sub_29AD037F4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AD037F4(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29AD03840(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AD03840(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29AD038C8();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29AD0392C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD0392C(a1, *a2);
    sub_29AD0392C(a1, a2[1]);
    sub_29AD03988(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29AD03988(_DWORD *a1)
{
  sub_29A186B14((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD039D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD039D0(a1, *a2);
    sub_29AD039D0(a1, a2[1]);
    sub_29AD03A2C((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AD03A2C(uint64_t a1)
{
  sub_29A184A10((a1 + 8), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AD03A78(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD03A78(a1, *a2);
    sub_29AD03A78(a1, a2[1]);
    sub_29AD03AD4(a2 + 7);

    operator delete(a2);
  }
}

_DWORD *sub_29AD03AD4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AD03B14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD03B14(a1, *a2);
    sub_29AD03B14(a1, a2[1]);
    sub_29AD03B70((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AD03B70(uint64_t a1)
{
  sub_29A184A10((a1 + 8), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AD03BBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AD03BBC(a1, *a2);
    sub_29AD03BBC(a1, a2[1]);
    sub_29AD03C18((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AD03C18(uint64_t a1)
{
  sub_29A184A10((a1 + 8), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29AD03C64(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29AD03CFC(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

double sub_29AD03CFC@<D0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x228uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1E21F4(v6 + 8, v7);
  sub_29A1E2240(v6 + 9, v7 + 1);
  result = 0.0;
  *(v6 + 120) = 0u;
  v6 += 120;
  *(v6 + 52) = 0;
  *(v6 + 25) = 0u;
  *(v6 - 5) = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 23) = 0u;
  *(v6 + 48) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29AD03DAC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29AD03F1C(a1);
    if (a4 > 0x333333333333333)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    sub_29AB876CC(a1, v10);
    result = sub_29AD03F88(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 4) < a4)
  {
    sub_29AD041A0(&v14, a2, a2 + v12, v8);
    result = sub_29AD03F88(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AD041A0(&v15, a2, a3, v8);
  if (*(a1 + 8) != v13)
  {
    sub_29AD038C8();
  }

  *(a1 + 8) = v13;
  return result;
}

void sub_29AD03F1C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29AD038C8();
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AD03F88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AD04034(a1, v4, v6);
      v6 += 10;
      v4 = v12 + 80;
      v12 += 80;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AD04114(v9);
  return v4;
}

void *sub_29AD04034(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = sub_29A186EF4((a2 + 8), a3 + 1);
  *(a2 + 24) = *(a3 + 6);
  v7 = a3[4];
  *(a2 + 32) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(a3 + 5);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 40) = v8;
  v9 = a3[9];
  *(a2 + 72) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(a2 + 64))
    {
      v10 = *(a2 + 64);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AD04114(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD0414C(a1);
  }

  return a1;
}

uint64_t sub_29AD0414C(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    sub_29AD038C8();
  }

  return result;
}

uint64_t sub_29AD041A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A166F2C(a4, v5);
    sub_29A1854E8((a4 + 8), (v5 + 8));
    *(a4 + 24) = *(v5 + 24);
    sub_29A166F2C((a4 + 32), (v5 + 32));
    sub_29A27CF04((a4 + 40), (v5 + 40));
    a4 += 80;
    v5 += 80;
  }

  while (v5 != v6);
  return v6;
}

uint64_t *sub_29AD04230(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29AD042C8(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

double sub_29AD042C8@<D0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x120uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  sub_29A1E21F4(v6 + 8, v7);
  sub_29A1E2240(v6 + 9, v7 + 1);
  *(v6 + 33) = 0;
  *(v6 + 34) = 0;
  *(v6 + 35) = 0;
  result = 0.0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(a3 + 16) = 1;
  return result;
}

char *sub_29AD04364(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0xB8uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 168) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

double sub_29AD04424(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  sub_29A186A3C((v4 + 8), (a2 + 8));
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 40) = v5;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(v4 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 8) = v4 + 80;
  return result;
}

uint64_t sub_29AD044AC(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A09AEA8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[10 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[10 * v6];
  *v8 = *a2;
  *a2 = 0;
  sub_29A186A3C(v8 + 1, (a2 + 8));
  *(v8 + 6) = *(a2 + 24);
  *(v8 + 4) = *(a2 + 32);
  *(a2 + 32) = 0;
  v9 = *(a2 + 40);
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 40) = v9;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(v8 + 9) = *(a2 + 72);
  *(a2 + 72) = 0;
  *&v18 = v8 + 80;
  v10 = *(a1 + 8);
  v11 = &v8[*a1 - v10];
  sub_29AD04620(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29AD046EC(&v16);
  return v15;
}

void sub_29AD0460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD046EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD04620(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_29AD04034(a1, a4, v7);
      v7 += 10;
      a4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    if (a2 != a3)
    {
      sub_29AD038C8();
    }
  }

  return sub_29AD04114(v9);
}

void **sub_29AD046EC(void **a1)
{
  sub_29AD04720(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AD04720(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 8))
  {
    *(result + 16) = v1 - 80;
    sub_29AD038C8();
  }

  return result;
}

char *sub_29AD04768(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x50uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 9) = 0;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t sub_29AD04810(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4, uint64_t *a5, __int128 *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v14 = 0x333333333333333;
  }

  else
  {
    v14 = v7;
  }

  v25 = a1;
  if (v14)
  {
    v15 = sub_29A09AEA8(a1, v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;
  v23 = &v15[10 * v6];
  *(&v24 + 1) = &v15[10 * v14];
  sub_29AD01450(v23, a2, a3, a4, a5, a6);
  *&v24 = v23 + 10;
  v16 = *(a1 + 8);
  v17 = v23 + *a1 - v16;
  sub_29AD04620(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = *(a1 + 16);
  v21 = v24;
  *(a1 + 8) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_29AD046EC(&v22);
  return v21;
}

void sub_29AD0495C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD046EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD04970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    if (a2 != a4)
    {
      if ((*v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      *(a2 + v7) = 0;
      sub_29A18606C((a4 + v7 + 8), (a2 + v7 + 8));
      *(a4 + v7 + 24) = *(a2 + v7 + 24);
      v10 = *(a4 + v7 + 32);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a4 + v7 + 32) = *(v9 + 32);
      *(v9 + 32) = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    sub_29A18606C((v8 + 8), (a2 + v7 + 8));
    *(v8 + 24) = *(a2 + v7 + 24);
    v7 += 80;
  }

  while (a2 + v7 != v6);
  return v6;
}

char *sub_29AD04A98(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x70uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 13) = 0;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

_DWORD *sub_29AD04B48(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x38uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 8, v9);
    sub_29A1E2240(v7 + 9, v9 + 1);
    *(v7 + 6) = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29AD04BE4(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A1EF804(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 7, v9);
    sub_29A1E2240(v7 + 8, v9 + 1);
    *(v7 + 9) = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

_DWORD *sub_29AD04C80(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A1EF804(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 7, v9);
    sub_29A1E2240(v7 + 8, v9 + 1);
    *(v7 + 36) = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29AD04D1C(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A1EF804(a1, &v11);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x38uLL);
    v9 = *a4;
    sub_29A1E21F4(v7 + 7, v9);
    sub_29A1E2240(v7 + 8, v9 + 1);
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t sub_29AD04DB4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 0;
}

BOOL sub_29AD04E1C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = sub_29A1EF6EC(a1);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5)
  {
    sub_29A2258F0(a3, (v5 + 36));
    sub_29A225948(a3 + 1, (v6 + 40));
  }

  return v7 != v6;
}

uint64_t sub_29AD04E7C(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v4 = (*(a1 + 8) - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v10 = *(a1 + 16) - *a1;
  if (v10 >> 4 > v5)
  {
    v5 = v10 >> 4;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFE0)
  {
    v11 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v5;
  }

  v22 = a1;
  if (v11)
  {
    v12 = sub_29A10CB10(a1, v11);
  }

  else
  {
    v12 = 0;
  }

  v19 = v12;
  v20 = &v12[32 * v4];
  *(&v21 + 1) = &v12[32 * v11];
  sub_29ACCA394(v20, a2, *a3, a4, 0);
  *&v21 = v20 + 32;
  v13 = *(a1 + 8);
  v14 = &v20[*a1 - v13];
  sub_29ACCD500(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29ACCD5D4(&v19);
  return v18;
}

void sub_29AD04F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCD5D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD04FA4(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A10CB10(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[32 * v3];
  *(&v19 + 1) = &v10[32 * v9];
  sub_29AD050C0(a1, v18, a2, a3);
  *&v19 = v18 + 32;
  v11 = *(a1 + 8);
  v12 = &v18[*a1 - v11];
  sub_29ACCD500(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29ACCD5D4(&v17);
  return v16;
}

void sub_29AD050AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCD5D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD050C0(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v6 = *a4;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
  if (!v7)
  {
    v7 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
  }

  return sub_29ACCA394(a2, a3, v6, v7, 0);
}

uint64_t sub_29AD05134(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, char *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v12 = *(a1 + 16) - *a1;
  if (v12 >> 4 > v6)
  {
    v6 = v12 >> 4;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFE0)
  {
    v13 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v6;
  }

  v24 = a1;
  if (v13)
  {
    v14 = sub_29A10CB10(a1, v13);
  }

  else
  {
    v14 = 0;
  }

  v21 = v14;
  v22 = &v14[32 * v5];
  *(&v23 + 1) = &v14[32 * v13];
  sub_29ACCA394(v22, a2, *a3, a4, *a5);
  *&v23 = v22 + 32;
  v15 = *(a1 + 8);
  v16 = &v22[*a1 - v15];
  sub_29ACCD500(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29ACCD5D4(&v21);
  return v20;
}

void sub_29AD0524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCD5D4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::Hd_TestDriver(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this)
{
  pxrInternal__aapl__pxrReserved__::HdEngine::HdEngine(this);
  v2[3] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::HdRenderDelegate((v2 + 3));
  *(this + 6) = &unk_2A20857F8;
  *(this + 16) = 0;
  *(this + 17) = 0;
  sub_29A008E78(&__p, "/__camera");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(this + 144, &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::CreateRenderPassState(this + 21);
  v3 = atomic_load(&qword_2A174C028);
  if (!v3)
  {
    v3 = sub_29AD063B4();
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((this + 184), (v3 + 48), &__p, 0, &v7);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v4)
  {
    v4 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v5 = *(v4 + 3);
  __p = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      __p = v6;
    }
  }

  v9 = 0;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Hd_TestDriver::_Init(this, &__p);
}

void sub_29AD0545C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((v12 + 184));
  v15 = *(v12 + 176);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = *(v12 + 160);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  sub_29A1DCEA8((v12 + 144));
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(v13);
  pxrInternal__aapl__pxrReserved__::HdEngine::~HdEngine(v12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::_Init(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  v33 = 0uLL;
  *&v34 = 0;
  v25[0] = 0;
  v25[1] = 0;
  *&v26 = 0;
  __p[0] = 0;
  __p[1] = 0;
  *&v18 = 0;
  *(this + 16) = pxrInternal__aapl__pxrReserved__::HdRenderIndex::New(this + 48);
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (v33)
  {
    *(&v33 + 1) = v33;
    operator delete(v33);
  }

  if (!*(this + 16))
  {
    sub_29B2C7A94(&v33);
  }

  v3 = operator new(0x1A0uLL);
  v4 = *(this + 16);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::HdUnitTestDelegate(v3, v4, v5);
  *(this + 17) = v3;
  pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::AddCamera(v3, (this + 144));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v6 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v25, 1.0);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v35 = v6[2];
  v36 = v7;
  v33 = v9;
  v34 = v8;
  v10 = v6[7];
  v12 = v6[4];
  v11 = v6[5];
  v39 = v6[6];
  v40 = v10;
  v37 = v12;
  v38 = v11;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *__p = xmmword_29B6ECCA0;
  *&v18 = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(v25, __p);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v33, v13);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  __p[0] = 0x3FF0000000000000;
  __p[1] = 0;
  *&v18 = 0;
  *(&v18 + 1) = 0xC056800000000000;
  v14 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v25, __p);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v33, v14);
  pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(v25);
  pxrInternal__aapl__pxrReserved__::GfFrustum::SetPerspective(v25, 45.0, 1, 1.0, 1.0, 10000.0);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeProjectionMatrix(v25, __p);
  v15 = xmmword_29B6ECCB0;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming(v16, &v15);
  pxrInternal__aapl__pxrReserved__::Hd_TestDriver::SetCamera(this, &v33, __p, v16);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::Hd_TestDriver(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  pxrInternal__aapl__pxrReserved__::HdEngine::HdEngine(this);
  v4[3] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::HdRenderDelegate((v4 + 3));
  *(this + 6) = &unk_2A20857F8;
  *(this + 16) = 0;
  *(this + 17) = 0;
  sub_29A008E78(&__p, "/__camera");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(this + 144, &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::CreateRenderPassState(this + 21);
  v5 = atomic_load(&qword_2A174C028);
  if (!v5)
  {
    v5 = sub_29AD063B4();
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((this + 184), (v5 + 48), &__p, 0, &v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Hd_TestDriver::_Init(this, a2);
}

void sub_29AD05958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *(v15 + 176);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = *(v15 + 160);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  sub_29A1DCEA8((v15 + 144));
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(v16);
  pxrInternal__aapl__pxrReserved__::HdEngine::~HdEngine(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::~Hd_TestDriver(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::~HdRenderIndex(v3);
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((this + 184));
  v5 = *(this + 22);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29A1DE3A4(this + 36);
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(this + 6);

  pxrInternal__aapl__pxrReserved__::HdEngine::~HdEngine(this);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::SetCamera(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, const pxrInternal__aapl__pxrReserved__::CameraUtilFraming *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v8, 1.0);
  v7 = 0x497424003F800000;
  __p = 0;
  v5 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(v9, &v8, 0, &v7, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29AD05FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AD060C4(void *a1, void *a2)
{
  sub_29A166F2C(a1 + 2, a2);
  sub_29A166F2C(a1 + 3, a2 + 1);

  return sub_29A166F2C(a1 + 4, a2 + 2);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::Draw(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this, unsigned __int8 a2)
{
  RenderPass = pxrInternal__aapl__pxrReserved__::Hd_TestDriver::GetRenderPass(this);

  pxrInternal__aapl__pxrReserved__::Hd_TestDriver::Draw(this, RenderPass, a2);
}

void pxrInternal__aapl__pxrReserved__::Hd_TestDriver::Draw(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  sub_29AD0672C(a2, (a1 + 168), &v6, &v4);
  v7 = v4;
  v4 = 0uLL;
  memset(v5, 0, sizeof(v5));
  sub_29AD06B88(v5, &v7, v8, 1uLL);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  pxrInternal__aapl__pxrReserved__::HdEngine::Execute(a1, *(*(a1 + 136) + 8), v5);
  *&v7 = v5;
  sub_29A0176E4(&v7);
}

void sub_29AD0622C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

char *pxrInternal__aapl__pxrReserved__::Hd_TestDriver::GetRenderPass(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this)
{
  v1 = this + 152;
  if (!*(this + 19))
  {
    v4 = operator new(0x78uLL);
    pxrInternal__aapl__pxrReserved__::HdRenderPass::HdRenderPass(v4, *(*(this + 17) + 8), (this + 184));
    *v4 = &unk_2A2085678;
    sub_29AD06CD0(&v7, v4);
    v5 = v7;
    v7 = 0uLL;
    v6 = *(this + 20);
    *(this + 152) = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }
    }
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_TestDriver::SetRepr(pxrInternal__aapl__pxrReserved__::Hd_TestDriver *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  sub_29AD060C4(this + 23, a2);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkCollectionDirty((*(this + 16) + 440), (this + 192));
  v3 = *(this + 19);

  return pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(v3, (this + 184));
}

void sub_29AD06388(pxrInternal__aapl__pxrReserved__::HdRenderPass *a1)
{
  pxrInternal__aapl__pxrReserved__::HdRenderPass::~HdRenderPass(a1);

  operator delete(v1);
}

unint64_t sub_29AD063B4()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "l0dir", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "l0color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "l1dir", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "l1color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "sceneAmbient", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "testCollection", 0);
  v1 = v0 + 7;
  v2 = *v0;
  v21 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v3;
    }
  }

  v4 = v0[1];
  v22 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v5;
    }
  }

  v6 = v0[2];
  v23 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v7;
    }
  }

  v8 = v0[3];
  v24 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v9;
    }
  }

  v10 = v0[4];
  v25 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v11;
    }
  }

  v12 = v0[5];
  v26 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v13;
    }
  }

  v14 = v0[6];
  v27 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v15;
    }
  }

  *v1 = 0;
  v0[8] = 0;
  v0[9] = 0;
  sub_29A12EF7C(v1, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v17 = *(&v21 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = 0;
  atomic_compare_exchange_strong(&qword_2A174C028, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A174C028);
  }

  return v0;
}

void sub_29AD06610(_Unwind_Exception *a1)
{
  v4 = 48;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AD0672C@<X0>(void *a1@<X1>, void *a2@<X2>, unsigned __int8 *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x60uLL);
  result = sub_29AD067A0(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AD067A0(void *a1, void *a2, void *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20856D0;
  sub_29AD06894((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_29AD06820(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20856D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29AD06894(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2, void *a3, int a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  pxrInternal__aapl__pxrReserved__::HdTask::HdTask(a1, v8);
  *a1 = &unk_2A2085720;
  v9 = a2[1];
  *(a1 + 2) = *a2;
  *(a1 + 3) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  *(a1 + 4) = *a3;
  *(a1 + 5) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  sub_29A1D7F98(a1 + 6, 2uLL);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  if (!v11)
  {
    v11 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
  }

  sub_29A1D8028(a1 + 48, v11);
  if (a4)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v12)
    {
      v12 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    sub_29A1D8028(a1 + 48, v12 + 1);
  }

  return a1;
}

void sub_29AD0699C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  v4 = *(v2 + 5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v2 + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(v2);
  _Unwind_Resume(a1);
}

void sub_29AD069D4(uint64_t a1)
{
  v4 = (a1 + 48);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(a1);
}

void sub_29AD06A2C(uint64_t a1)
{
  v5 = (a1 + 48);
  sub_29A124AB0(&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(a1);
  operator delete(v4);
}

void sub_29AD06A90(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v3 = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v4, this);
  (*(*v3 + 16))(v3, &v4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AD06AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD06B30(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 48);
  sub_29A124AB0(&v5);
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(a2);
}

void *sub_29AD06B88(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AD06C10(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD06BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AD06C10(uint64_t a1, void *a2, void *a3, void *a4)
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
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AD06C98(v7);
  return v4;
}

uint64_t sub_29AD06C98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void *sub_29AD06CD0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2085780;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AD06D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C7AE0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD06D44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD06D6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD06D9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20857D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::SUPPORTED_RPRIM_TYPES(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174C048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C048))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v2)
    {
      v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v3 = *(v2 + 7);
    v11 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v4;
      }
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v6 = *(v5 + 10);
    v12 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v8 = *(v7 + 13);
    v13 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174C030 = 0;
    *algn_2A174C038 = 0;
    qword_2A174C040 = 0;
    sub_29A12EF7C(&qword_2A174C030, &v11, &v14, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_guard_release(&qword_2A174C048);
  }

  return &qword_2A174C030;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::SUPPORTED_SPRIM_TYPES(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174C068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C068))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v2)
    {
      v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v3 = *(v2 + 17);
    v11 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v4;
      }
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v6 = *(v5 + 20);
    v12 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v8 = *(v7 + 19);
    v13 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174C050 = 0;
    *algn_2A174C058 = 0;
    qword_2A174C060 = 0;
    sub_29A12EF7C(&qword_2A174C050, &v11, &v14, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_guard_release(&qword_2A174C068);
  }

  return &qword_2A174C050;
}

uint64_t *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::SUPPORTED_BPRIM_TYPES(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A174C090, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C7B04();
  }

  return &qword_2A174C098;
}

void pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::GetResourceRegistry(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C080))
  {
    sub_29A0ECEEC(v5, "hd", "new HdResourceRegistry");
    v4 = malloc(8uLL);
    sub_29A0E9CEC(v5);
    pxrInternal__aapl__pxrReserved__::HdResourceRegistry::HdResourceRegistry(v4);
    sub_29AD09054(&qword_2A174C070, v4);
    __cxa_atexit(sub_29AD073D4, &qword_2A174C070, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C080);
  }

  v3 = *algn_2A174C078;
  *a1 = qword_2A174C070;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AD073AC(_Unwind_Exception *a1)
{
  free(v1);
  __cxa_guard_abort(&qword_2A174C080);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD073D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateRenderPass@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X2>, void *a3@<X8>)
{
  v7 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderPass::HdRenderPass(v7, a1, a2);
  *v7 = &unk_2A2085678;

  return sub_29AD06CD0(a3, v7);
}

pxrInternal__aapl__pxrReserved__::HdInstancer *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateInstancer(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdInstancer::HdInstancer(v5, a2, a3);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::DestroyInstancer(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdInstancer *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateRprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = operator new(0x1D8uLL);
  sub_29AD08248(v5, a2, a3);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::DestroyRprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdRprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterial *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateSprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v5 + 19) ^ *a2) <= 7)
  {
    v6 = operator new(0x10uLL);
    pxrInternal__aapl__pxrReserved__::HdMaterial::HdMaterial(v6, a3);
    v7 = &unk_2A2085A08;
LABEL_17:
    *v6 = v7;
    return v6;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v8)
  {
    v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v8 + 30) ^ *a2) <= 7)
  {
    v6 = operator new(0x18uLL);
    v9 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v6);
    pxrInternal__aapl__pxrReserved__::HdLight::HdLight(v6, v9);
    v7 = &unk_2A2085A58;
    goto LABEL_17;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v10)
  {
    v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v10 + 20) ^ *a2) <= 7)
  {
    v6 = operator new(0x18uLL);
    pxrInternal__aapl__pxrReserved__::HdCoordSys::HdCoordSys(v6, a3);
    v7 = &unk_2A2085AA8;
    goto LABEL_17;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v11)
  {
    v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v12 = *a2;
  if ((*(v11 + 17) ^ *a2) <= 7)
  {
    v6 = operator new(0x140uLL);
    pxrInternal__aapl__pxrReserved__::HdCamera::HdCamera(v6, a3);
    v7 = &unk_2A2085AF8;
    goto LABEL_17;
  }

  v16[0] = "hd/unitTestNullRenderDelegate.cpp";
  v16[1] = "CreateSprim";
  v16[2] = 394;
  v16[3] = "virtual HdSprim *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateSprim(const TfToken &, const SdfPath &)";
  v17 = 0;
  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Unknown Sprim Type %s", v15);
  return 0;
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateFallbackSprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v3 + 19) ^ *a2) <= 7)
  {
    v4 = operator new(0x10uLL);
    v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdMaterial::HdMaterial(v4, v5);
    v6 = &unk_2A2085A08;
LABEL_17:
    *v4 = v6;
    return v4;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v7 + 30) ^ *a2) <= 7)
  {
    v4 = operator new(0x18uLL);
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdLight::HdLight(v4, v8);
    v6 = &unk_2A2085A58;
    goto LABEL_17;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v9)
  {
    v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v9 + 20) ^ *a2) <= 7)
  {
    v4 = operator new(0x18uLL);
    v10 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdCoordSys::HdCoordSys(v4, v10);
    v6 = &unk_2A2085AA8;
    goto LABEL_17;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v11)
  {
    v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v12 = *a2;
  if ((*(v11 + 17) ^ *a2) <= 7)
  {
    v4 = operator new(0x140uLL);
    v13 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    pxrInternal__aapl__pxrReserved__::HdCamera::HdCamera(v4, v13);
    v6 = &unk_2A2085AF8;
    goto LABEL_17;
  }

  v17[0] = "hd/unitTestNullRenderDelegate.cpp";
  v17[1] = "CreateFallbackSprim";
  v17[2] = 411;
  v17[3] = "virtual HdSprim *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateFallbackSprim(const TfToken &)";
  v18 = 0;
  v15 = v12 & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = (v15 + 16);
    if (*(v15 + 39) < 0)
    {
      v16 = *v16;
    }
  }

  else
  {
    v16 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v17, 1, "Unknown Sprim Type %s", v16);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::DestroySprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdSprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateBprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6[0] = "hd/unitTestNullRenderDelegate.cpp";
  v6[1] = "CreateBprim";
  v6[2] = 428;
  v6[3] = "virtual HdBprim *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateBprim(const TfToken &, const SdfPath &)";
  v7 = 0;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Unknown Bprim Type %s", v4);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateFallbackBprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v5[0] = "hd/unitTestNullRenderDelegate.cpp";
  v5[1] = "CreateFallbackBprim";
  v5[2] = 436;
  v5[3] = "virtual HdBprim *pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::CreateFallbackBprim(const TfToken &)";
  v6 = 0;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Unknown Bprim Type %s", v3);
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::DestroyBprim(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, pxrInternal__aapl__pxrReserved__::HdBprim *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::GetCommandDescriptors@<X0>(void *a1@<X8>)
{
  v19[2] = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&qword_2A174C088);
  if (!v3)
  {
    v3 = sub_29AD09160();
  }

  *&v14 = 0;
  sub_29A3E274C(&v13, "");
  sub_29AD08D1C(&v18, (v3 + 8), &v13);
  sub_29A186B14(&v13);
  v13 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(&v14, v19);
  memset(v7, 0, sizeof(v7));
  sub_29AD09320(v7, &v13, &v15, 1uLL);
  sub_29A186B14(&v14);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = atomic_load(&qword_2A174C088);
  if (!v4)
  {
    v4 = sub_29AD09160();
  }

  sub_29A008E78(&__p, "Print command");
  sub_29AD08D94(&v13, v4, &__p, v7);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = v13;
  if ((v13 & 7) != 0)
  {
    v5 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __p = v5;
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_29A008D14(&v10, v14, *(&v14 + 1));
  }

  else
  {
    v10 = v14;
    v11 = v15;
  }

  memset(v12, 0, sizeof(v12));
  sub_29AD08E74(v12, v16, v17, 0xAAAAAAAAAAAAAAABLL * (v17 - v16));
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29AD094C8(a1, &__p, &v13, 1uLL);
  v8 = v12;
  sub_29A321878(&v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &v16;
  sub_29A321878(&__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = v7;
  sub_29A321878(&v13);
  result = sub_29A186B14(v19);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AD07E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  a26 = &a9;
  sub_29A321878(&a26);
  sub_29A186B14(v26 + 8);
  v29 = *(v27 - 64);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AD07F50(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_29A321878(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::InvokeCommand(pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&qword_2A174C088);
  if (!v5)
  {
    v5 = sub_29AD09160();
  }

  v6 = *a2;
  if ((*v5 ^ *a2) > 7)
  {
    v23 = "hd/unitTestNullRenderDelegate.cpp";
    v24 = "InvokeCommand";
    v25 = 479;
    v26 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::InvokeCommand(const TfToken &, const HdCommandArgs &)";
    v27 = 0;
    v9 = v6 & 0xFFFFFFFFFFFFFFF8;
    if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = (v9 + 16);
      if (*(v9 + 39) < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v23, "Unknown command '%s'", a3, v10);
  }

  else
  {
    v7 = atomic_load(&qword_2A174C088);
    if (!v7)
    {
      v7 = sub_29AD09160();
    }

    if ((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
    }

    v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a3, EmptyString);
    v13 = v12;
    v14 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a3);
    if (v13 != v16 || (v13 ? (v17 = v11 == v14) : (v17 = 1), !v17))
    {
      sub_29A186EF4(&v23, (v11 + 56));
      v18 = sub_29A00911C(MEMORY[0x29EDC93C8], "Printing the message: ", 22);
      v19 = pxrInternal__aapl__pxrReserved__::operator<<(v18, &v23);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v22, MEMORY[0x29EDC93D0]);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v22);
      std::ostream::put();
      std::ostream::flush();
      sub_29A186B14(&v23);
      return 1;
    }

    v23 = "hd/unitTestNullRenderDelegate.cpp";
    v24 = "InvokeCommand";
    v25 = 471;
    v26 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hd_UnitTestNullRenderDelegate::InvokeCommand(const TfToken &, const HdCommandArgs &)";
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v23, "No argument 'message' argument found.", v15);
  }

  return 0;
}

void sub_29AD081F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11)
{
  std::locale::~locale(&a10);
  sub_29A186B14(&a11);
  _Unwind_Resume(a1);
}

void sub_29AD08220(void **a1)
{
  pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdRprim *sub_29AD08248(pxrInternal__aapl__pxrReserved__::HdRprim *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(a1, a3);
  *result = &unk_2A2085998;
  v5 = *a2;
  *(result + 58) = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 58) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29AD082B8(pxrInternal__aapl__pxrReserved__::HdRprim *a1)
{
  v1 = *(a1 + 58);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::~HdRprim(a1);
}

void sub_29AD082D4(pxrInternal__aapl__pxrReserved__::HdRprim *a1)
{
  v2 = *(a1 + 58);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::~HdRprim(a1);

  operator delete(v3);
}

void *sub_29AD08320(uint64_t a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, unsigned int *a4)
{
  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsExtentDirty(*a4, (a1 + 376), a3))
  {
    (*(*a2 + 64))(v23, a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(*a4, (a1 + 376), v7))
  {
    (*(*a2 + 112))(a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a4, (a1 + 376), v8))
  {
    sub_29AD08874(a1, a2, *a4);
  }

  v10 = *a4;
  if ((v10 & 0x80) != 0)
  {
    (*(*a2 + 296))(&v26, a2, a1 + 376);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
    sub_29A1DE3A4(&v26);
    v10 = *a4;
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(v10, (a1 + 376), v9))
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v12 + 7) ^ *(a1 + 464)) > 7)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v13)
      {
        v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v13 + 10) ^ *(a1 + 464)) <= 7)
      {
        (*(*a2 + 48))(v24, a2, a1 + 376);
        pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v24);
      }
    }

    else
    {
      (*(*a2 + 40))(v25, a2, a1 + 376);
      pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v25);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTransformDirty(*a4, (a1 + 376), v11))
  {
    (*(*a2 + 72))(v23, a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsVisibilityDirty(*a4, (a1 + 376), v14))
  {
    (*(*a2 + 80))(a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDoubleSidedDirty(*a4, (a1 + 376), v15))
  {
    (*(*a2 + 88))(a2, a1 + 376);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsCullStyleDirty(*a4, (a1 + 376), v16))
  {
    (*(*a2 + 96))(a2, a1 + 376);
  }

  pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsInstancerDirty(*a4, (a1 + 376), v17);
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsReprDirty(*a4);
  if (result)
  {
    result = (*(*a2 + 136))(&v20, a2, a1 + 376);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if ((*(a4 + 2) & 8) != 0)
  {
    result = (*(*a2 + 144))(&v19, a2, a1 + 376);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 &= 0xFF800000;
  return result;
}

uint64_t *sub_29AD0871C()
{
  if ((atomic_load_explicit(&qword_2A14F9A98, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C7B5C();
  }

  return &qword_2A14F9A80;
}

void sub_29AD0875C(void *a1, uint64_t *a2)
{
  v3 = a1[55];
  v4 = a1[56];
  v5 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v3 != v4)
  {
    while ((v5 ^ *v3) >= 8)
    {
      v3 += 3;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[56];
  if (v3 == v6)
  {
    v10 = 0;
    v11 = 0;
    if (v3 >= a1[57])
    {
      v8 = sub_29AD089E4((a1 + 55), a2, &v10);
      v9 = v11;
      a1[56] = v8;
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    else
    {
      v7 = *a2;
      *v6 = *a2;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v6 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6[1] = 0;
      v6[2] = 0;
      a1[56] = v6 + 3;
    }
  }
}

void sub_29AD0885C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD08874(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a3)
{
  v6 = 0;
  v14[2] = *MEMORY[0x29EDCA608];
  do
  {
    (*(*a2 + 416))(&v11, a2, a1 + 376, v6);
    if (v12 != v11)
    {
      v8 = 0;
      if (((v12 - v11) >> 5) <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v12 - v11) >> 5;
      }

      do
      {
        v10 = v11;
        if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(a3, (a1 + 376), (v11 + v8), v7))
        {
          (*(*a2 + 120))(v14, a2, a1 + 376, v10 + v8);
          sub_29A186B14(v14);
        }

        v8 += 32;
        --v9;
      }

      while (v9);
    }

    v13 = &v11;
    sub_29ABEE9FC(&v13);
    ++v6;
  }

  while (v6 != 6);
}

uint64_t sub_29AD089E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v21 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v18 = v9;
  v19 = v10;
  *(&v20 + 1) = &v9[24 * v8];
  v11 = *a2;
  *v10 = *a2;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *&v20 = v10 + 24;
  v12 = *(a1 + 8);
  v13 = &v10[*a1 - v12];
  sub_29AD08B40(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A3E0E04(&v18);
  return v17;
}

void sub_29AD08B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD08B40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 1);
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7 = 1;
  sub_29A3E0D9C(a1, a2, a3);
  return sub_29AD08BDC(v6);
}

uint64_t sub_29AD08BDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A3E0140(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AD08C2C(pxrInternal__aapl__pxrReserved__::HdMaterial *a1)
{
  pxrInternal__aapl__pxrReserved__::HdMaterial::~HdMaterial(a1);

  operator delete(v1);
}

void sub_29AD08C68(pxrInternal__aapl__pxrReserved__::HdLight *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLight::~HdLight(a1);

  operator delete(v1);
}

void sub_29AD08CA8(pxrInternal__aapl__pxrReserved__::HdCoordSys *a1)
{
  pxrInternal__aapl__pxrReserved__::HdCoordSys::~HdCoordSys(a1);

  operator delete(v1);
}

void sub_29AD08CE4(pxrInternal__aapl__pxrReserved__::HdCamera *a1)
{
  pxrInternal__aapl__pxrReserved__::HdCamera::~HdCamera(a1);

  operator delete(v1);
}

uint64_t *sub_29AD08D1C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

uint64_t sub_29AD08D94(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v6 = *a2;
  *a1 = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29AD08E74((a1 + 32), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * (a4[1] - *a4));
  return a1;
}

void sub_29AD08E38(_Unwind_Exception *exception_object)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AD08E74(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29AD08EFC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD08EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A321878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD08EFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AD08FA8(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AD0901C(v9);
  return v4;
}

void *sub_29AD08FA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return sub_29A186EF4(a2 + 1, a3 + 1);
}

uint64_t sub_29AD0901C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A322090(a1);
  }

  return a1;
}

void *sub_29AD09054(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2085B48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AD090AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C7BCC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD090C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD090F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD09120(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2085B98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AD09160()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "print", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "message", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174C088, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174C088);
  }

  return v0;
}

void sub_29AD092A4(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29AD09320(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29AD093A8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD09388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A321878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD093A8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AD09454(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AD0901C(v9);
  return v4;
}

void *sub_29AD09454(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return sub_29A186EF4(a2 + 1, a3 + 1);
}

void *sub_29AD094C8(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29AD09550(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AD09530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AD097C4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD09550(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AD095FC(a1, v4, v6);
      v6 += 7;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AD096D8(v9);
  return v4;
}

uint64_t *sub_29AD095FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a3 + 31) < 0)
  {
    sub_29A008D14((a2 + 8), a3[1], a3[2]);
  }

  else
  {
    v6 = *(a3 + 1);
    *(a2 + 24) = a3[3];
    *(a2 + 8) = v6;
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return sub_29AD08E74((a2 + 32), a3[4], a3[5], 0xAAAAAAAAAAAAAAABLL * ((a3[5] - a3[4]) >> 3));
}

void sub_29AD0969C(_Unwind_Exception *exception_object)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AD096D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD09710(a1);
  }

  return a1;
}

void sub_29AD09710(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_29AD09764(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AD09764(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  sub_29A321878(&v3);
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD097C4(void ***a1)
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
        sub_29AD09764(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUtils::HasActiveRenderSettingsPrim(uint64_t *a1, int *a2)
{
  if (!*a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromSceneIndex(a1, &v15);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15))
  {
    pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetActiveRenderSettingsPrim(&v15, &v13);
    if (v13)
    {
      (*(*v13 + 32))(&v12, 0.0);
      v4 = sub_29AC1199C(a1);
      (*(*v4 + 16))(v10);
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v5)
      {
        v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v6 = v10[0];
      if ((*(v5 + 40) ^ v10[0]) <= 7 && v10[1] != 0)
      {
        if (a2)
        {
          sub_29A2258F0(a2, &v12);
          sub_29A225948(a2 + 1, &v12 + 1);
        }

        if (v11)
        {
          sub_29A014BEC(v11);
        }

        if ((v10[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
        sub_29A1DE3A4(&v12);
        v8 = 1;
        goto LABEL_26;
      }

      if (v11)
      {
        sub_29A014BEC(v11);
        v6 = v10[0];
      }

      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      sub_29A1DE3A4(&v12);
    }

    v8 = 0;
LABEL_26:
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    goto LABEL_28;
  }

  v8 = 0;
LABEL_28:
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  return v8;
}

void sub_29AD09A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a12);
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUtils::GetCurrentFrame(uint64_t *a1, void *a2)
{
  if (!*a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetFromSceneIndex(a1, &v9);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
  {
    pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetCurrentFrame(&v9, &v7);
    v3 = v7;
    if (v7)
    {
      (*(*v7 + 32))(v7, 0.0);
      *a2 = v4;
      LOBYTE(a2) = 1;
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v5 = (v3 != 0) & a2;
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v5;
}

void sub_29AD09B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdUtils::ToConformWindowPolicy(pxrInternal__aapl__pxrReserved__::HdUtils *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, char *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  if (!v4)
  {
    v4 = sub_29AD0B658(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  }

  if ((*v4 ^ *this) < 8)
  {
    return 0;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  if (!v6)
  {
    v6 = sub_29AD0B658(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  }

  if ((*(v6 + 1) ^ *this) < 8)
  {
    return 1;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  if (!v7)
  {
    v7 = sub_29AD0B658(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  }

  if ((*(v7 + 2) ^ *this) < 8)
  {
    return 2;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  if (!v8)
  {
    v8 = sub_29AD0B658(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  }

  if ((*(v8 + 3) ^ *this) < 8)
  {
    return 3;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  if (!v9)
  {
    v9 = sub_29AD0B658(&pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens);
  }

  v10 = *this;
  if ((*(v9 + 4) ^ *this) >= 8)
  {
    v13[0] = "hd/utils.cpp";
    v13[1] = "ToConformWindowPolicy";
    v13[2] = 105;
    v13[3] = "CameraUtilConformWindowPolicy pxrInternal__aapl__pxrReserved__::HdUtils::ToConformWindowPolicy(const TfToken &)";
    v14 = 0;
    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid aspectRatioConformPolicy value '%s', falling back to expandAperture.", a3, v12);
    return 2;
  }

  return 4;
}

void pxrInternal__aapl__pxrReserved__::HdUtils::PrintSceneIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v4, a2, a3);
  v3 = *pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v4);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::HdUtils::ConvertHdMaterialNetworkToHdMaterialNetworkSchema(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  v106 = *MEMORY[0x29EDCA608];
  v96 = 0;
  v97 = 0;
  v98 = 0;
  memset(v95, 0, sizeof(v95));
  v92 = 0;
  v93 = 0;
  v94 = 0;
  memset(v91, 0, sizeof(v91));
  v4 = *a1;
  v69 = a1 + 1;
  if (*a1 == a1 + 1)
  {
    v64 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    do
    {
      if (v4[8] != v4[9])
      {
        v5 = sub_29A1D8028(&v96, v4 + 4);
        v6 = v4[8];
        v7 = v4[9];
        if (v6 != v7)
        {
          do
          {
            v89 = 0uLL;
            v90 = 0;
            v87 = 0uLL;
            v88 = 0;
            *(&v85 + 1) = 0;
            v86 = 0;
            *&v85 = &v85 + 8;
            v8 = v6[2];
            if (v8 != v6 + 3)
            {
              do
              {
                if ((v8[4] & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  EmptyString = ((v8[4] & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
                }

                v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
                if (!v10)
                {
                  v10 = sub_29AC4B8CC(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
                }

                if ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v11 = ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(EmptyString, v11, v99);
                if (BYTE8(v100) == 1)
                {
                  v13 = sub_29A27A0F8((v8 + 5));
                  v14 = sub_29AD0B038(&v85, v99);
                  v12 = sub_29A166F2C(v14 + 2, v13);
                }

                if ((v8[4] & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v15 = ((v8[4] & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
                }

                v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
                if (!v16)
                {
                  v16 = sub_29AC4B8CC(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchemaTokens);
                }

                if ((*(v16 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v17 = ((*(v16 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(v15, v17, __p);
                if (BYTE8(v73) == 1)
                {
                  v19 = sub_29A27A0F8((v8 + 5));
                  v20 = sub_29AD0B038(&v85, __p);
                  v5 = sub_29A166F2C(v20 + 3, v19);
                }

                else
                {
                  if ((v8[4] & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v21 = ((v8[4] & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  else
                  {
                    v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
                  }

                  v22 = sub_29AD0B038(&v85, v21);
                  v5 = sub_29A1854E8(v22, v8 + 5);
                }

                if (SBYTE7(v73) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SBYTE7(v100) < 0)
                {
                  operator delete(v99[0]);
                }

                v23 = v8[1];
                if (v23)
                {
                  do
                  {
                    v24 = v23;
                    v23 = *v23;
                  }

                  while (v23);
                }

                else
                {
                  do
                  {
                    v24 = v8[2];
                    v25 = *v24 == v8;
                    v8 = v24;
                  }

                  while (!v25);
                }

                v8 = v24;
              }

              while (v24 != v6 + 3);
              v26 = v85;
              if (v85 != (&v85 + 8))
              {
                do
                {
                  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v99);
                  sub_29A153214(&v89, v99);
                  if ((v99[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v99[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  v100 = 0u;
                  v101 = 0u;
                  *v99 = 0u;
                  sub_29ABF2EF0(v26 + 7, &v84);
                  v78 = v84;
                  v84 = 0uLL;
                  v27 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(v99, &v78);
                  if (v26[9])
                  {
                    sub_29ABCCFA4(v26 + 9, &v82);
                    v28 = v82;
                  }

                  else
                  {
                    v28 = 0uLL;
                  }

                  v83 = v28;
                  v82 = 0uLL;
                  v29 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetColorSpace(v27, &v83);
                  if (v26[10])
                  {
                    sub_29ABCCFA4(v26 + 10, &v80);
                    v30 = v80;
                  }

                  else
                  {
                    v30 = 0uLL;
                  }

                  v81 = v30;
                  v80 = 0uLL;
                  v31 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetTypeName(v29, &v81);
                  pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v31, v104);
                  *__p = v104[0];
                  v104[0] = 0uLL;
                  sub_29A01729C(&v87, __p);
                  if (__p[1])
                  {
                    sub_29A014BEC(__p[1]);
                  }

                  if (*(&v104[0] + 1))
                  {
                    sub_29A014BEC(*(&v104[0] + 1));
                  }

                  if (*(&v81 + 1))
                  {
                    sub_29A014BEC(*(&v81 + 1));
                  }

                  if (*(&v80 + 1))
                  {
                    sub_29A014BEC(*(&v80 + 1));
                  }

                  if (*(&v83 + 1))
                  {
                    sub_29A014BEC(*(&v83 + 1));
                  }

                  if (*(&v82 + 1))
                  {
                    sub_29A014BEC(*(&v82 + 1));
                  }

                  if (*(&v78 + 1))
                  {
                    sub_29A014BEC(*(&v78 + 1));
                  }

                  if (*(&v84 + 1))
                  {
                    sub_29A014BEC(*(&v84 + 1));
                  }

                  if (*(&v101 + 1))
                  {
                    sub_29A014BEC(*(&v101 + 1));
                  }

                  if (*(&v100 + 1))
                  {
                    sub_29A014BEC(*(&v100 + 1));
                  }

                  if (v99[1])
                  {
                    sub_29A014BEC(v99[1]);
                  }

                  v32 = v26[1];
                  if (v32)
                  {
                    do
                    {
                      v33 = v32;
                      v32 = *v32;
                    }

                    while (v32);
                  }

                  else
                  {
                    do
                    {
                      v33 = v26[2];
                      v25 = *v33 == v26;
                      v26 = v33;
                    }

                    while (!v25);
                  }

                  v26 = v33;
                }

                while (v33 != (&v85 + 8));
              }
            }

            v78 = 0u;
            v79 = 0u;
            v105 = 0x800000000;
            v103 = 0x800000000;
            v34 = v4[5];
            v35 = v4[6];
            if (v34 == v35)
            {
              v42 = 0;
              v43 = 0;
              v44 = 8;
            }

            else
            {
              do
              {
                if (*(v34 + 2) == *v6)
                {
                  Token = pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v34);
                  v37 = *Token;
                  *&v71 = v37;
                  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    *&v71 = v71 & 0xFFFFFFFFFFFFFFF8;
                  }

                  if ((*(v34 + 1) & 0xFFFFFFFFFFFFFFF8) == 0)
                  {
                    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Token);
                  }

                  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v70);
                  *__p = 0u;
                  v73 = 0u;
                  sub_29ABCCFA4(&v71, &v81);
                  v82 = v81;
                  v81 = 0uLL;
                  v38 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(__p, &v82);
                  sub_29ABCCFA4(&v70, &v77);
                  v80 = v77;
                  v77 = 0uLL;
                  v39 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v38, &v80);
                  pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v39, &v83);
                  v84 = v83;
                  v83 = 0uLL;
                  if (*(&v80 + 1))
                  {
                    sub_29A014BEC(*(&v80 + 1));
                  }

                  if (*(&v77 + 1))
                  {
                    sub_29A014BEC(*(&v77 + 1));
                  }

                  if (*(&v82 + 1))
                  {
                    sub_29A014BEC(*(&v82 + 1));
                  }

                  if (*(&v81 + 1))
                  {
                    sub_29A014BEC(*(&v81 + 1));
                  }

                  if (*(&v73 + 1))
                  {
                    sub_29A014BEC(*(&v73 + 1));
                  }

                  v40 = __p[1];
                  if (__p[1])
                  {
                    sub_29A014BEC(__p[1]);
                  }

                  if ((*(v34 + 3) & 0xFFFFFFFFFFFFFFF8) == 0)
                  {
                    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
                  }

                  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(__p);
                  v41 = sub_29AD0B190(&v78, __p);
                  sub_29AC50178(v41, &v84);
                  if ((__p[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if (*(&v84 + 1))
                  {
                    sub_29A014BEC(*(&v84 + 1));
                  }

                  if ((v70 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v71 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                v34 = (v34 + 32);
              }

              while (v34 != v35);
              v43 = *(&v78 + 1);
              v42 = v78;
              v44 = HIDWORD(v105);
            }

            v45 = 0x8E38E38E38E38E39 * ((v43 - v42) >> 4);
            if (v45 > v44)
            {
              sub_29AD0C260(v104, v45);
              v43 = *(&v78 + 1);
              v42 = v78;
              v45 = 0x8E38E38E38E38E39 * ((*(&v78 + 1) - v78) >> 4);
            }

            if (v45 > HIDWORD(v103))
            {
              sub_29AC501F8(v99, v45);
              v43 = *(&v78 + 1);
              v42 = v78;
            }

            if (v42 != v43)
            {
              v46 = v42 + 1;
              do
              {
                v47 = v46 - 1;
                sub_29AD0C328(v104, v46 - 1);
                *&v83 = *(v46 + 32);
                v48 = v46;
                if (*(v46 + 33) >= 9u)
                {
                  v48 = *v46;
                }

                *&v82 = v48;
                sub_29AC00FD8(&v83, &v82, &v84);
                *__p = v84;
                v84 = 0uLL;
                sub_29AD0C3B8(v99, __p);
                if (__p[1])
                {
                  sub_29A014BEC(__p[1]);
                }

                if (*(&v84 + 1))
                {
                  sub_29A014BEC(*(&v84 + 1));
                }

                v46 += 18;
              }

              while (v47 + 18 != v43);
            }

            v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v6);
            sub_29A1D8028(&v92, v49);
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            *__p = 0u;
            pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((*(&v89 + 1) - v89) >> 3, v89, v87, &v81);
            v82 = v81;
            v81 = 0uLL;
            v50 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetParameters(__p, &v82);
            if (HIDWORD(v105) >= 9)
            {
              v51 = *&v104[0];
            }

            else
            {
              v51 = v104;
            }

            if (HIDWORD(v103) >= 9)
            {
              v52 = v99[0];
            }

            else
            {
              v52 = v99;
            }

            pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v105, v51, v52, &v77);
            v80 = v77;
            v77 = 0uLL;
            v53 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetInputConnections(v50, &v80);
            sub_29ABCCFA4(v6 + 1, &v70);
            v71 = v70;
            v70 = 0uLL;
            v54 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetNodeIdentifier(v53, &v71);
            pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::Build(v54, &v83);
            v84 = v83;
            v83 = 0uLL;
            sub_29A01729C(v91, &v84);
            if (*(&v84 + 1))
            {
              sub_29A014BEC(*(&v84 + 1));
            }

            if (*(&v83 + 1))
            {
              sub_29A014BEC(*(&v83 + 1));
            }

            if (*(&v71 + 1))
            {
              sub_29A014BEC(*(&v71 + 1));
            }

            if (*(&v70 + 1))
            {
              sub_29A014BEC(*(&v70 + 1));
            }

            if (*(&v80 + 1))
            {
              sub_29A014BEC(*(&v80 + 1));
            }

            if (*(&v77 + 1))
            {
              sub_29A014BEC(*(&v77 + 1));
            }

            if (*(&v82 + 1))
            {
              sub_29A014BEC(*(&v82 + 1));
            }

            if (*(&v81 + 1))
            {
              sub_29A014BEC(*(&v81 + 1));
            }

            if (*(&v76 + 1))
            {
              sub_29A014BEC(*(&v76 + 1));
            }

            if (*(&v75 + 1))
            {
              sub_29A014BEC(*(&v75 + 1));
            }

            if (*(&v74 + 1))
            {
              sub_29A014BEC(*(&v74 + 1));
            }

            if (*(&v73 + 1))
            {
              sub_29A014BEC(*(&v73 + 1));
            }

            if (__p[1])
            {
              sub_29A014BEC(__p[1]);
            }

            sub_29AC2C710(v99);
            sub_29AD0B804(v104);
            v55 = *(&v79 + 1);
            *(&v79 + 1) = 0;
            if (v55)
            {
              v56 = sub_29A155EF4(v55);
              operator delete(v56);
            }

            v99[0] = &v78;
            sub_29AD0B5A0(v99);
            sub_29AD0B6E4(*(&v85 + 1));
            v99[0] = &v87;
            sub_29A0176E4(v99);
            v99[0] = &v89;
            sub_29A124AB0(v99);
            v6 += 5;
          }

          while (v6 != v7);
          v7 = v4[9];
        }

        *v99 = 0u;
        v100 = 0u;
        v57 = pxrInternal__aapl__pxrReserved__::SdfPath::GetToken((v7 - 5));
        sub_29ABCCFA4(v57, &v89);
        v78 = v89;
        v89 = 0uLL;
        v58 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(v99, &v78);
        sub_29ABCCFA4((v97 - 8), &v85);
        v87 = v85;
        v85 = 0uLL;
        v59 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v58, &v87);
        pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v59, v104);
        *__p = v104[0];
        v104[0] = 0uLL;
        sub_29A01729C(v95, __p);
        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        if (*(&v104[0] + 1))
        {
          sub_29A014BEC(*(&v104[0] + 1));
        }

        if (*(&v87 + 1))
        {
          sub_29A014BEC(*(&v87 + 1));
        }

        if (*(&v85 + 1))
        {
          sub_29A014BEC(*(&v85 + 1));
        }

        if (*(&v78 + 1))
        {
          sub_29A014BEC(*(&v78 + 1));
        }

        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (v99[1])
        {
          sub_29A014BEC(v99[1]);
        }
      }

      v60 = v4[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v4[2];
          v25 = *v61 == v4;
          v4 = v61;
        }

        while (!v25);
      }

      v4 = v61;
    }

    while (v61 != v69);
    v62 = v92;
    v63 = v93;
    v64 = v91[0];
    v2 = a1;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v63 - v62) >> 3, v62, v64, v99);
  *__p = *v99;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v97 - v96) >> 3, v96, v95[0], v99);
  v104[0] = *v99;
  pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS((v2 + 6), &v78);
  v101 = 0u;
  v102 = 0u;
  *v99 = 0u;
  v100 = 0u;
  v65 = pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::SetNodes(v99, __p);
  v66 = pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::SetTerminals(v65, v104);
  v67 = pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::SetConfig(v66, &v78);
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::Build(v67, a2);
  if (*(&v102 + 1))
  {
    sub_29A014BEC(*(&v102 + 1));
  }

  if (*(&v101 + 1))
  {
    sub_29A014BEC(*(&v101 + 1));
  }

  if (*(&v100 + 1))
  {
    sub_29A014BEC(*(&v100 + 1));
  }

  if (v99[1])
  {
    sub_29A014BEC(v99[1]);
  }

  if (*(&v78 + 1))
  {
    sub_29A014BEC(*(&v78 + 1));
  }

  if (*(&v104[0] + 1))
  {
    sub_29A014BEC(*(&v104[0] + 1));
  }

  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  v99[0] = v91;
  sub_29A0176E4(v99);
  v99[0] = &v92;
  sub_29A124AB0(v99);
  v99[0] = v95;
  sub_29A0176E4(v99);
  v99[0] = &v96;
  sub_29A124AB0(v99);
}

void sub_29AD0AC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 184);
  if (v69)
  {
    sub_29A014BEC(v69);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  __p = &a55;
  sub_29A0176E4(&__p);
  __p = &a58;
  sub_29A124AB0(&__p);
  __p = &a61;
  sub_29A0176E4(&__p);
  __p = &a64;
  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD0B038(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    v6 = a1 + 8;
LABEL_9:
    v7 = operator new(0x58uLL);
    v8 = v7;
    v13[0] = v7;
    v13[1] = a1;
    v14 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(v7 + 32, *a2, *(a2 + 8));
      v9 = v13[0];
    }

    else
    {
      *(v7 + 2) = *a2;
      *(v7 + 6) = *(a2 + 16);
      v9 = v7;
    }

    *(v8 + 72) = 0u;
    *(v8 + 56) = 0u;
    LOBYTE(v14) = 1;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v6;
    *v5 = v9;
    v10 = **a1;
    if (v10)
    {
      *a1 = v10;
      v9 = *v5;
    }

    sub_29A00B25C(*(a1 + 8), v9);
    ++*(a1 + 16);
    v11 = v13[0];
    v13[0] = 0;
    sub_29AD0B7B8(v13);
    return v11 + 7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      if (!sub_29A00AFCC(a1, a2, (v4 + 32)))
      {
        break;
      }

      v4 = *v6;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (!sub_29A00AFCC(a1, (v6 + 32), a2))
    {
      break;
    }

    v5 = (v6 + 8);
    v4 = *(v6 + 8);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v11 = *v5;
  if (!*v5)
  {
    goto LABEL_9;
  }

  return v11 + 7;
}

void sub_29AD0B17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD0B7B8(va);
  _Unwind_Resume(a1);
}

void *sub_29AD0B190(uint64_t *a1, uint64_t *a2)
{
  v7[17] = *MEMORY[0x29EDCA608];
  v5[16] = 0x800000000;
  sub_29AD0C144(&v6, a2, v5);
  v3 = sub_29AD0B880(a1, &v6);
  sub_29AC2C710(v7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC2C710(v5);
  return v3 + 1;
}

void sub_29AD0B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_29AC2C710(v26 + 8);
  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC2C710(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(pxrInternal__aapl__pxrReserved__::HdUtils *this@<X0>, _OWORD *a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(this);
  sub_29A1D7F98(&v17, v5);
  sub_29A039314(v16, v5);
  *&v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(this);
  *(&v15 + 1) = v6;
  v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  v9 = v15;
  if (v7)
  {
    v10 = v15 == v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (*(&v15 + 1) != v7 || v11 == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v14);
    sub_29A153214(&v17, &v14);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HdCreateTypedRetainedDataSource((v9 + 56), &v13);
    v14 = v13;
    v13 = 0uLL;
    sub_29A01729C(v16, &v14);
    if (*(&v14 + 1))
    {
      sub_29A014BEC(*(&v14 + 1));
    }

    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v18 - v17) >> 3, v17, v16[0], &v15);
  *a2 = v15;
  *&v15 = v16;
  sub_29A0176E4(&v15);
  v16[0] = &v17;
  sub_29A124AB0(v16);
}

void sub_29AD0B3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, char a18)
{
  a13 = &a15;
  sub_29A0176E4(&a13);
  a15 = &a18;
  sub_29A124AB0(&a15);
  _Unwind_Resume(a1);
}

void *sub_29AD0B460(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdUtils::ConvertHdMaterialNetworkToHdMaterialSchema(void *a1@<X0>, _OWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdUtils::ConvertHdMaterialNetworkToHdMaterialNetworkSchema(a1, &v6);
  v7 = v6;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
  }

  v4 = *(v3 + 1);
  *&v6 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *&v6 = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdMaterialSchema::BuildRetained(1uLL, &v6, &v7, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD0B568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD0B5A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AD0B5F4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AD0B5F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 144)
  {
    result = sub_29AC2C710(i - 136);
    v6 = *(i - 144);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType *sub_29AD0B658(atomic_ullong *a1)
{
  result = sub_29AD0B6A0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType::~HdAspectRatioConformPolicyTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType *sub_29AD0B6A0()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdAspectRatioConformPolicyTokens_StaticTokenType::HdAspectRatioConformPolicyTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AD0B6E4(void *a1)
{
  if (a1)
  {
    sub_29AD0B6E4(*a1);
    sub_29AD0B6E4(a1[1]);
    sub_29AD0B738((a1 + 4));

    operator delete(a1);
  }
}

void sub_29AD0B738(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

uint64_t sub_29AD0B7B8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AD0B738(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29AD0B804(uint64_t a1)
{
  v2 = *(a1 + 68);
  v3 = a1;
  if (v2 >= 9)
  {
    v3 = *a1;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = 8 * v4;
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
    v2 = *(a1 + 68);
  }

  if (v2 >= 9)
  {
    free(*a1);
  }

  return a1;
}

void *sub_29AD0B880(uint64_t *a1, uint64_t *a2)
{
  v13[17] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  if (v4)
  {
    v5 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = v6;
    v13[0] = v5;
    v7 = sub_29A162678(v4, &v12, &v12);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 144 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 18;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    sub_29AD0BF88(&v12, a2, (a2 + 1));
    sub_29AD0BA54(a1, &v12);
    sub_29AC2C710(v13);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v11 = a1[1];
    if (0x8E38E38E38E38E39 * ((v11 - *a1) >> 4) >= 0x80)
    {
      sub_29AD0C000(a1);
      v11 = a1[1];
    }

    return (v11 - 144);
  }

  return result;
}

void sub_29AD0BA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_29AC2C710(v10 + 8);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AD0BA54(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AD0BAA8(a1, a2);
  }

  else
  {
    sub_29AD0BBF0(*(a1 + 8), a2);
    result = v3 + 144;
    *(a1 + 8) = v3 + 144;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AD0BAA8(uint64_t a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29AD0BD20(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[18 * v2];
  *(&v16 + 1) = &v7[18 * v6];
  sub_29AD0BBF0(v15, a2);
  *&v16 = v15 + 18;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AD0BD6C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AD0BEE4(&v14);
  return v13;
}

void sub_29AD0BBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD0BEE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AD0BBF0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AD0BC68((a1 + 8), (a2 + 1));
  return a1;
}

_DWORD *sub_29AD0BC68(_DWORD *a1, uint64_t a2)
{
  v3 = a1;
  a1[33] = 8;
  v4 = *(a2 + 128);
  if (v4 <= 8)
  {
    a1[32] = v4;
    v5 = *a2;
    v6 = *(a2 + 128);
    if (*(a2 + 132) < 9u)
    {
      v5 = a2;
    }

    v7 = &v5[2 * v6];
    if (!v6)
    {
      return v3;
    }

    do
    {
LABEL_9:
      v9 = v5[1];
      *a1 = *v5;
      *(a1 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v5 += 2;
      a1 += 4;
    }

    while (v5 != v7);
    return v3;
  }

  a1 = malloc(16 * v4);
  *v3 = a1;
  v3[32] = v4;
  v3[33] = v4;
  v5 = *a2;
  v8 = *(a2 + 128);
  if (*(a2 + 132) < 9u)
  {
    v5 = a2;
  }

  v7 = &v5[2 * v8];
  if (v8)
  {
    goto LABEL_9;
  }

  return v3;
}

void *sub_29AD0BD20(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1C71C71C71C71C8)
  {
    sub_29A00C8B8();
  }

  return operator new(144 * a2);
}

uint64_t sub_29AD0BD6C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  i = 0;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_29AD0BBF0(a4, v6);
      v6 += 18;
      a4 = v11 + 144;
      v11 += 144;
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 += 18)
    {
      sub_29AC2C710((v5 + 1));
      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29AD0BE4C(v8);
}

uint64_t sub_29AD0BE4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AD0BE84(a1);
  }

  return a1;
}

uint64_t sub_29AD0BE84(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    result = sub_29AC2C710(v3 - 136);
    v6 = *(v3 - 144);
    v3 -= 144;
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29AD0BEE4(uint64_t a1)
{
  sub_29AD0BF1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AD0BF1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 144;
      result = sub_29AC2C710(v2 - 136);
      v5 = *(v2 - 144);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29AD0BF88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AD0BC68((a1 + 8), a3);
  return a1;
}

void sub_29AD0C000(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 144;
      }

      while (v6 < 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4));
    }
  }
}

void sub_29AD0C10C(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AD0C144(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AD0C1BC((a1 + 1), a3);
  return a1;
}

uint64_t sub_29AD0C1BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = 0x800000000;
  v4 = *(a2 + 128);
  if (v4 < 9)
  {
    if (*(a2 + 132) >= 9u)
    {
      v5 = *a2;
    }

    else
    {
      v5 = a2;
    }

    if (v4)
    {
      v6 = 16 * v4;
      v7 = a1;
      do
      {
        *v7++ = *v5;
        *v5 = 0;
        *(v5 + 8) = 0;
        v5 += 16;
        v6 -= 16;
      }

      while (v6);
    }

    sub_29AC2C750(a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 132) = *(a2 + 132);
    *(a2 + 132) = 8;
  }

  v8 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v8;
  return a1;
}

void sub_29AD0C260(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(8 * a2);
  v5 = v4;
  v6 = *(a1 + 68);
  v7 = a1;
  if (v6 >= 9)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 64);
  v9 = 8 * v8;
  if (v8)
  {
    v10 = 8 * v8;
    v11 = v4;
    do
    {
      *v11++ = *v7;
      *v7++ = 0;
      v10 -= 8;
    }

    while (v10);
  }

  v12 = a1;
  if (v6 >= 9)
  {
    v12 = *a1;
  }

  if (v8)
  {
    do
    {
      if ((*v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v12;
      v9 -= 8;
    }

    while (v9);
    v6 = *(a1 + 68);
  }

  if (v6 >= 9)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 68) = v2;
}

void sub_29AD0C328(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  if (v4 == v5)
  {
    sub_29AD0C260(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 68);
  }

  v6 = a1;
  if (v5 >= 9)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  v8 = *a2;
  *(v6 + 8 * v7) = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v6 + 8 * v7) &= 0xFFFFFFFFFFFFFFF8;
  }

  ++*(a1 + 64);
}

__n128 sub_29AD0C3B8(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 128);
  v4 = *(a1 + 132);
  if (v5 == v4)
  {
    sub_29AC501F8(a1, v5 + (v5 >> 1) + 1);
    v4 = *(a1 + 132);
  }

  v6 = a1;
  if (v4 >= 9)
  {
    v6 = *a1;
  }

  result = *a2;
  *(v6 + 16 * *(a1 + 128)) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++*(a1 + 128);
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdVectorSchema::BuildRetained@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a2;
  v7 = a1;
  sub_29AD0C46C(&v7, &v6, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void *sub_29AD0C46C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, *a2);

  return sub_29AC011AC(a3, v6);
}

void *pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetVector@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(pxrInternal__aapl__pxrReserved__::HdVectorSchema *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::Hd_VertexAdjacency(pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::~Hd_VertexAdjacency(pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v3)
  {
    v3 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SubtractCounter(v2, v3, (4 * *(this + 1)));
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::BuildAdjacencyTable(pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency *this, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2, char *a3)
{
  v5 = *(a2 + 12);
  v6 = *(a2 + 3);
  v7 = *(a2 + 8);
  v45 = *(a2 + 7);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (v6 >= 1 && v5 == 0)
  {
    v50 = "hd/vertexAdjacency.cpp";
    v51 = "BuildAdjacencyTable";
    v52 = 41;
    v53 = "void pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::BuildAdjacencyTable(const HdMeshTopology *)";
    v54 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, "Topology missing face vertex indices.", a3);
    *this = 0;
    sub_29A19D79C(this + 1);
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(v8 + 71);
    NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(a2);
    *this = NumPoints;
    v13 = 2 * NumPoints;
    sub_29A011440(__p, NumPoints);
    if (v6 < 1)
    {
LABEL_19:
      v43 = v5;
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v22)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      if (!v23)
      {
        v23 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::SubtractCounter(v22, v23, (4 * *(this + 1)));
      sub_29A19D79C(this + 1);
      v55 = 0;
      v50 = &v55;
      sub_29A19D7EC(this + 1, v13, &v50);
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v24)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      if (!v25)
      {
        v25 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v24, v25, (4 * v13));
      if (*this >= 1)
      {
        v26 = 0;
        v27 = 0;
        v28 = 2 * *this;
        do
        {
          sub_29A19DBEC(this + 8);
          *(*(this + 5) + v26) = v28;
          v28 += 2 * *(__p[0] + v27++);
          v26 += 8;
        }

        while (v27 < *this);
      }

      if (v6 >= 1)
      {
        v29 = 0;
        v47 = 0;
        v48 = v11 ^ v10;
        v44 = v6 & 0x7FFFFFFF;
        do
        {
          v46 = v29;
          v30 = *(v45 + 4 * v29);
          if (v30 >= 1)
          {
            v31 = 0;
            v32 = v43 + 4 * v47;
            do
            {
              v33 = *(v32 + 4 * v31);
              if (v30 - 1 == v31)
              {
                v34 = 0;
              }

              else
              {
                v34 = v31 + 1;
              }

              v35 = *(v32 + 4 * v34);
              if (v48 <= 7)
              {
                v36 = *(v32 + 4 * ((v30 + v31 - 1) % v30));
              }

              else
              {
                v36 = v35;
              }

              if (v48 <= 7)
              {
                v37 = v35;
              }

              else
              {
                v37 = *(v32 + 4 * ((v30 + v31 - 1) % v30));
              }

              sub_29A19DBEC(this + 8);
              v38 = *(*(this + 5) + 8 * v33);
              sub_29A19DBEC(this + 8);
              v39 = (2 * v33) | 1;
              v40 = *(this + 5);
              v41 = *(v40 + 4 * v39);
              *(v40 + 4 * v39) = v41 + 1;
              sub_29A19DBEC(this + 8);
              v42 = v38 + 2 * v41;
              *(*(this + 5) + 4 * v42) = v36;
              sub_29A19DBEC(this + 8);
              ++v31;
              *(*(this + 5) + 4 * v42 + 4) = v37;
            }

            while (v30 != v31);
          }

          v47 += v30;
          v29 = v46 + 1;
        }

        while (v46 + 1 != v44);
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *(v45 + 4 * v15);
        if (v17)
        {
          break;
        }

LABEL_18:
        v13 += 2 * v17;
        if (++v15 == (v6 & 0x7FFFFFFF))
        {
          goto LABEL_19;
        }
      }

      v18 = __p[0];
      if (v16 <= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v16;
      }

      v20 = *(v45 + 4 * v15);
      while (v19 != v16)
      {
        v21 = *(v5 + 4 * v16);
        if ((v21 & 0x80000000) != 0 || v21 >= *this)
        {
          v50 = "hd/vertexAdjacency.cpp";
          v51 = "BuildAdjacencyTable";
          v52 = 74;
          v53 = "void pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::BuildAdjacencyTable(const HdMeshTopology *)";
          v54 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v50, "vertex index out of range index: %d numPoints: %d", v14, v21, *this);
          *this = 0;
          sub_29A19D79C(this + 1);
          goto LABEL_49;
        }

        ++v18[v21];
        ++v16;
        if (!--v20)
        {
          goto LABEL_18;
        }
      }

      v50 = "hd/vertexAdjacency.cpp";
      v51 = "BuildAdjacencyTable";
      v52 = 66;
      v53 = "void pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::BuildAdjacencyTable(const HdMeshTopology *)";
      v54 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "vertex index out of range index: %d numFaceIndices: %d", v19, v7);
      *this = 0;
      sub_29A19D79C(this + 1);
    }

LABEL_49:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AD0CA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType::~HdVisibilitySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType::HdVisibilitySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "visibility", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(pxrInternal__aapl__pxrReserved__::HdVisibilitySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  v6 = *v4;
  if ((*v4 & 7) != 0)
  {
    v5 = (*v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    }

    sub_29A166F2C(v11, v4);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD0CDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::SetVisibility(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens))
    {
      sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdVisibilitySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!result)
  {
    return sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdVisibilitySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174C0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C0E8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C0B0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174C0B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C0E8);
  }

  return &unk_2A174C0B0;
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdVolume::HdVolume(pxrInternal__aapl__pxrReserved__::HdVolume *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(this, a2);
  *result = &unk_2A2085BC0;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdVolume::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdVolume *this)
{
  if ((atomic_load_explicit(&qword_2A174C0F0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C7BF0();
  }

  return &qword_2A174C0F8;
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType::~HdVolumeFieldBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType::HdVolumeFieldBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "volumeFieldBinding", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetVolumeFieldBindingNames@<X0>(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetVolumeFieldBinding(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 7) != 0)
  {
    v3 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v4 = v3;
    }
  }

  sub_29ABE18CC(this, a3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

double pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens))
    {
      sub_29ABEE8E4(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
  if (!result)
  {
    return sub_29ABEE8E4(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174C148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C148))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE8E4(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C110, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174C110, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C148);
  }

  return &unk_2A174C110;
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType::~HdVolumeFieldSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType::HdVolumeFieldSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "volumeField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "filePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "fieldName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "fieldIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "fieldDataType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "vectorDataRoleHint", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AD0D7EC(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetFilePath(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD0D974(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AD0E398(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetFieldName(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetFieldIndex(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetFieldDataType(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetVectorDataRoleHint(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14 + 1);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 2);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 3);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 4);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 5);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AD0DFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::Builder::SetFilePath(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::Builder::SetFieldName(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::Builder::SetFieldIndex(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::Builder::SetFieldDataType(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::Builder::SetVectorDataRoleHint(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens))
    {
      sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!result)
  {
    return sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174C188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C188))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C150, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174C150, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C188);
  }

  return &unk_2A174C150;
}

void *sub_29AD0E398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2083430, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVtBufferSource::_SetValue(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2, int a3, char a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = (this + 24);
  sub_29A1854E8(this + 3, a2);
  *(this + 5) = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v7, v8);
  *(this + 6) = v9;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v7) && (result = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v7)) == 0)
  {
    *(this + 3) = xmmword_29B4DB070;
  }

  else
  {
    if (sub_29A1EFCDC(v7))
    {
      v11 = *(this + 4);
      v12 = v7;
      if ((v11 & 4) != 0)
      {
        v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
      }

      v13 = *v12;
      *(&v46 + 1) = &unk_2A204475B;
      LODWORD(v46) = v13;
      sub_29A18606C(v7, &v46);
      result = sub_29A186B14(&v46);
    }

    else
    {
      result = sub_29A2CB120(v7);
      if (result)
      {
        v14 = *(this + 4);
        if ((v14 & 4) != 0)
        {
          v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
        }

        else
        {
          v15 = *v7;
        }

        v16 = *(v15 + 16);
        v46 = *v15;
        v47 = v16;
        v17 = *(v15 + 32);
        v48 = v17;
        if (v17)
        {
          v18 = (v17 - 16);
          if (*(&v47 + 1))
          {
            v18 = *(&v47 + 1);
          }

          atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
        }

        NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v7);
        sub_29A19D6E4(v44, NumElements);
        for (i = 0; i < pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v7); ++i)
        {
          sub_29A20D1F0(&v46);
          v21 = *(v48 + i);
          sub_29A19DBEC(v44);
          *(v45 + 4 * i) = v21;
        }

        v43[1] = &off_2A2043D18;
        v33 = operator new(0x30uLL);
        v34 = v44[1];
        *v33 = v44[0];
        *(v33 + 1) = v34;
        v35 = v45;
        *(v33 + 4) = v45;
        if (v35)
        {
          v36 = (v35 - 16);
          if (*(v33 + 3))
          {
            v36 = *(v33 + 3);
          }

          atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v33 + 10);
        v43[0] = v33;
        atomic_fetch_add_explicit(v33 + 10, 1u, memory_order_relaxed);
        sub_29A18606C(v7, v43);
        sub_29A186B14(v43);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      if ((a4 & 1) == 0)
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(v7))
        {
          if (sub_29A190184(v7))
          {
            v22 = *(this + 4);
            if ((v22 & 4) != 0)
            {
              v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
            }

            else
            {
              v23 = *v7;
            }

            sub_29A18E048(&v46, *v23);
            if (*v23)
            {
              v24 = 0;
              do
              {
                v25 = *(v23[4] + 8 * v24);
                sub_29A18E624(&v46);
                v26 = v25;
                *(v48 + 4 * v24++) = v26;
              }

              while (v24 < *v23);
            }

            *(&v44[0] + 1) = &off_2A2042F70;
            v27 = operator new(0x30uLL);
            v28 = v47;
            *v27 = v46;
            *(v27 + 1) = v28;
            v29 = v48;
            *(v27 + 4) = v48;
            if (v29)
            {
              v30 = (v29 - 16);
              if (*(v27 + 3))
              {
                v30 = *(v27 + 3);
              }

              atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
            }

            atomic_store(0, v27 + 10);
            *&v44[0] = v27;
            atomic_fetch_add_explicit(v27 + 10, 1u, memory_order_relaxed);
            sub_29A18606C(v7, v44);
            sub_29A186B14(v44);
            *(this + 5) = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v7, v31);
            *(this + 6) = v32;
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }

          if (sub_29A192658(v7))
          {
            sub_29AD0E9A0(v7, this + 5);
          }

          if (sub_29A194DC4(v7))
          {
            sub_29AD0EB28(v7, this + 5);
          }

          if (sub_29A197328(v7))
          {
            sub_29AD0ECE4(v7, this + 5);
          }

          if (sub_29A3FBB48(v7))
          {
            sub_29AD0EE74(v7, this + 5);
          }

          if (sub_29A3FC06C(v7))
          {
            sub_29AD0F014(v7, this + 5);
          }

          result = sub_29A19833C(v7);
          if (result)
          {
            sub_29AD0F1C4(v7, this + 5);
          }
        }

        else if (sub_29A346994(v7))
        {
          v38 = *(this + 4);
          v39 = v7;
          if ((v38 & 4) != 0)
          {
            v39 = (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
          }

          v40 = *v39;
          *(&v46 + 1) = &unk_2A2044C63;
          *&v46 = v40;
          sub_29A18606C(v7, &v46);
          sub_29A186B14(&v46);
          result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v7, v41);
          *(this + 5) = result;
          *(this + 6) = v42;
        }

        else if (sub_29A3FD4E0(v7))
        {
          result = sub_29AD0F378(v7, this + 5);
        }

        else if (sub_29A3FE138(v7))
        {
          result = sub_29AD0F430(v7, this + 5);
        }

        else if (sub_29A3FED30(v7))
        {
          result = sub_29AD0F518(v7, this + 5);
        }

        else if (sub_29A3FB9E8(v7))
        {
          result = sub_29AD0F5F8(v7, this + 5);
        }

        else if (sub_29A3FBEFC(v7))
        {
          result = sub_29AD0F6D4(v7, this + 5);
        }

        else
        {
          result = sub_29A3FC38C(v7);
          if (result)
          {
            result = sub_29AD0F7BC(v7, this + 5);
          }
        }
      }
    }

    v37 = *(this + 6) / a3;
    *(this + 6) = a3;
    *(this + 7) = v37;
  }

  return result;
}

void sub_29AD0E930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0E9A0(unint64_t **a1, void *a2)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29A190B18(v14, *v5);
  if (*v5)
  {
    v6 = 0;
    do
    {
      v13 = *(v5[4] + 16 * v6);
      sub_29A190F50(v14);
      *(v15 + 8 * v6++) = vcvt_f32_f64(v13);
    }

    while (v6 < *v5);
  }

  v16[1] = &off_2A2043198;
  v7 = operator new(0x30uLL);
  v8 = v14[1];
  *v7 = v14[0];
  *(v7 + 1) = v8;
  v9 = v15;
  *(v7 + 4) = v15;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(v7 + 3))
    {
      v10 = *(v7 + 3);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v7 + 10);
  v16[0] = v7;
  atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v16);
  sub_29A186B14(v16);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v11);
  a2[1] = v12;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AD0EAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0EB28(unint64_t **a1, void *a2)
{
  v22[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29A193124(v20, *v5);
  if (*v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (v5[4] + v7);
      v19 = *v9;
      v10 = v9[1].f64[0];
      sub_29A1935CC(v20);
      v11 = v10;
      v12 = (v21 + v6);
      *v12 = vcvt_f32_f64(v19);
      v12[1].f32[0] = v11;
      ++v8;
      v7 += 24;
      v6 += 12;
    }

    while (v8 < *v5);
  }

  v22[1] = &off_2A20433C0;
  v13 = operator new(0x30uLL);
  v14 = v20[1];
  *v13 = v20[0];
  *(v13 + 1) = v14;
  v15 = v21;
  *(v13 + 4) = v21;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(v13 + 3))
    {
      v16 = *(v13 + 3);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v13 + 10);
  v22[0] = v13;
  atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v22);
  sub_29A186B14(v22);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v17);
  a2[1] = v18;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD0ECA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0ECE4(unint64_t **a1, void *a2)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29A195790(v16, *v5);
  if (*v5)
  {
    v6 = 0;
    do
    {
      v7 = (v5[4] + 32 * v6);
      v14 = *v7;
      v15 = v7[1];
      sub_29A195BC4(v16);
      *(v17 + 16 * v6++) = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v15);
    }

    while (v6 < *v5);
  }

  v18[1] = &off_2A20435E8;
  v8 = operator new(0x30uLL);
  v9 = v16[1];
  *v8 = v16[0];
  *(v8 + 1) = v9;
  v10 = v17;
  *(v8 + 4) = v17;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(v8 + 3))
    {
      v11 = *(v8 + 3);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v8 + 10);
  v18[0] = v8;
  atomic_fetch_add_explicit(v8 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v18);
  sub_29A186B14(v18);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v12);
  a2[1] = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AD0EE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0EE74(unint64_t **a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29AC7F660(v15, *v5);
  if (*v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix2f::GfMatrix2f(&v17, (v5[4] + v7));
      sub_29AC7FCAC(v15);
      *(v16 + v6) = v17;
      ++v8;
      v7 += 32;
      v6 += 16;
    }

    while (v8 < *v5);
  }

  v17.i64[1] = &off_2A207D380;
  v9 = operator new(0x30uLL);
  v10 = v15[1];
  *v9 = v15[0];
  *(v9 + 1) = v10;
  v11 = v16;
  *(v9 + 4) = v16;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(v9 + 3))
    {
      v12 = *(v9 + 3);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v9 + 10);
  v17.i64[0] = v9;
  atomic_fetch_add_explicit(v9 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, &v17);
  sub_29A186B14(&v17);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v13);
  a2[1] = v14;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
}

void sub_29AD0EFD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0F014(unint64_t **a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29A859D60(v18, *v5);
  if (*v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix3f::GfMatrix3f(v20, (v5[4] + v7));
      sub_29A85C4A8(v18);
      v9 = v19 + v6;
      v10 = v20[0];
      v11 = v20[1];
      *(v9 + 32) = v21;
      *v9 = v10;
      *(v9 + 16) = v11;
      ++v8;
      v7 += 72;
      v6 += 36;
    }

    while (v8 < *v5);
  }

  *(&v20[0] + 1) = &off_2A207D2C8;
  v12 = operator new(0x30uLL);
  v13 = v18[1];
  *v12 = v18[0];
  *(v12 + 1) = v13;
  v14 = v19;
  *(v12 + 4) = v19;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(v12 + 3))
    {
      v15 = *(v12 + 3);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v12 + 10);
  *&v20[0] = v12;
  atomic_fetch_add_explicit(v12 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v20);
  sub_29A186B14(v20);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v16);
  a2[1] = v17;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

void sub_29AD0F188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AD0F1C4(unint64_t **a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  sub_29A198988(v19, *v5);
  if (*v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v21, (v5[4] + v7));
      sub_29A198DC8(v19);
      v9 = (v20 + v6);
      v10 = v21[0];
      v11 = v21[1];
      v12 = v21[3];
      v9[2] = v21[2];
      v9[3] = v12;
      *v9 = v10;
      v9[1] = v11;
      ++v8;
      v7 += 128;
      v6 += 64;
    }

    while (v8 < *v5);
  }

  *(&v21[0] + 1) = &off_2A20438C8;
  v13 = operator new(0x30uLL);
  v14 = v19[1];
  *v13 = v19[0];
  *(v13 + 1) = v14;
  v15 = v20;
  *(v13 + 4) = v20;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(v13 + 3))
    {
      v16 = *(v13 + 3);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v13 + 10);
  *&v21[0] = v13;
  atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v21);
  sub_29A186B14(v21);
  *a2 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v17);
  a2[1] = v18;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void sub_29AD0F33C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t sub_29AD0F378(float64x2_t **a1, uint64_t *a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v9[1] = &off_2A2042618 + 3;
  v9[0] = vcvt_f32_f64(*v5);
  sub_29A18606C(a1, v9);
  sub_29A186B14(v9);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_29AD0F430(float64x2_t **a1, uint64_t *a2)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5[1].f64[0];
  v12[1] = &off_2A2042840 + 2;
  v7 = vcvt_f32_f64(*v5);
  v8 = operator new(0x10uLL);
  *v8 = v7;
  *(v8 + 2) = v6;
  atomic_store(0, v8 + 3);
  v12[0] = v8;
  atomic_fetch_add_explicit(v8 + 3, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v12);
  sub_29A186B14(v12);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v9);
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t sub_29AD0F518(float64x2_t **a1, uint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v11[1] = &off_2A2042A68 + 2;
  v10 = vcvt_hight_f32_f64(vcvt_f32_f64(*v5), v5[1]);
  v6 = operator new(0x14uLL);
  *v6 = v10;
  atomic_store(0, v6 + 4);
  v11[0] = v6;
  atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v11);
  sub_29A186B14(v11);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v7);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_29AD0F5F8(__n128 **a1, uint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix2f::GfMatrix2f(&v10, v5);
  v11[1] = &off_2A20818D0 + 2;
  v6 = operator new(0x14uLL);
  *v6 = v10;
  atomic_store(0, &v6[1]);
  v11[0] = v6;
  atomic_fetch_add_explicit(&v6[1], 1u, memory_order_relaxed);
  sub_29A18606C(a1, v11);
  sub_29A186B14(v11);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v7);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_29AD0F6D4(const pxrInternal__aapl__pxrReserved__::GfMatrix3d **a1, uint64_t *a2)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix3f::GfMatrix3f(v11, v5);
  v13[1] = &off_2A2071A80 + 2;
  v6 = operator new(0x28uLL);
  v7 = v11[1];
  *v6 = v11[0];
  *(v6 + 1) = v7;
  *(v6 + 8) = v12;
  atomic_store(0, v6 + 9);
  v13[0] = v6;
  atomic_fetch_add_explicit(v6 + 9, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v13);
  sub_29A186B14(v13);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_29AD0F7BC(const pxrInternal__aapl__pxrReserved__::GfMatrix4d **a1, uint64_t *a2)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v12, v5);
  v13[1] = &off_2A2042C90 + 2;
  v6 = operator new(0x44uLL);
  v7 = v12[1];
  *v6 = v12[0];
  *(v6 + 1) = v7;
  v8 = v12[3];
  *(v6 + 2) = v12[2];
  *(v6 + 3) = v8;
  atomic_store(0, v6 + 16);
  v13[0] = v6;
  atomic_fetch_add_explicit(v6 + 16, 1u, memory_order_relaxed);
  sub_29A18606C(a1, v13);
  sub_29A186B14(v13);
  result = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(a1, v9);
  *a2 = result;
  a2[1] = v11;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdVtBufferSource *pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int a4, char a5)
{
  *(this + 2) = 0;
  *this = &unk_2A2085C30;
  v6 = *a2;
  *(this + 2) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 4) = 0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::_SetValue(this, a3, a4, a5);
  return this;
}

void sub_29AD0F930(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  v3 = *(v1 + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(v1);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdVtBufferSource *pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, int a4)
{
  v14[2] = *MEMORY[0x29EDCA608];
  *(this + 2) = 0;
  *this = &unk_2A2085C30;
  v6 = *a2;
  *(this + 2) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 4) = 0;
  if (a4)
  {
    v7 = pxrInternal__aapl__pxrReserved__::HdVtBufferSource::GetDefaultMatrixType(this) == 24;
  }

  else
  {
    v7 = 0;
  }

  v14[1] = &off_2A2042BD8 + 2;
  v8 = operator new(0x88uLL);
  v9 = *(a3 + 5);
  *(v8 + 4) = *(a3 + 4);
  *(v8 + 5) = v9;
  v10 = *(a3 + 7);
  *(v8 + 6) = *(a3 + 6);
  *(v8 + 7) = v10;
  v11 = *(a3 + 1);
  *v8 = *a3;
  *(v8 + 1) = v11;
  v12 = *(a3 + 3);
  *(v8 + 2) = *(a3 + 2);
  *(v8 + 3) = v12;
  atomic_store(0, v8 + 32);
  v14[0] = v8;
  atomic_fetch_add_explicit(v8 + 32, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::_SetValue(this, v14, 1, v7);
  sub_29A186B14(v14);
  return this;
}

void sub_29AD0FA9C(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  v3 = *(v1 + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVtBufferSource::GetDefaultMatrixType(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this)
{
  if ((atomic_load_explicit(&qword_2A174C198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C198))
  {
    sub_29A008E78(__p, "HD_ENABLE_DOUBLE_MATRIX");
    if (pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0))
    {
      v2 = 24;
    }

    else
    {
      v2 = 18;
    }

    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    dword_2A174C190 = v2;
    __cxa_guard_release(&qword_2A174C198);
  }

  return dword_2A174C190;
}

void sub_29AD0FB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174C198);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v11[2] = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *a1 = &unk_2A2085C30;
  v8 = *a2;
  *(a1 + 16) = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  if (a5)
  {
    v9 = pxrInternal__aapl__pxrReserved__::HdVtBufferSource::GetDefaultMatrixType(a1) == 24;
  }

  else
  {
    v9 = 0;
  }

  v11[1] = &off_2A2043810;
  sub_29A18ECC8(v11, a3);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::_SetValue(a1, v11, a4, v9);
  sub_29A186B14(v11);
  return a1;
}

void sub_29AD0FCB8(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  v3 = *(v1 + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdVtBufferSource::~HdVtBufferSource(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this)
{
  sub_29A186B14(this + 24);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::~HdVtBufferSource(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdVtBufferSource::Truncate(pxrInternal__aapl__pxrReserved__::HdVtBufferSource *this, unint64_t a2)
{
  v4 = *(this + 7);
  if (v4 >= a2)
  {
    *(this + 7) = a2;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v7[0] = "hd/vtBufferSource.cpp";
    v7[1] = "Truncate";
    v7[2] = 184;
    v7[3] = "void pxrInternal__aapl__pxrReserved__::HdVtBufferSource::Truncate(size_t)";
    v8 = 0;
    v5 = *(this + 2) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v6 = (v5 + 16);
      if (*(v5 + 39) < 0)
      {
        v6 = *v6;
      }
    }

    else
    {
      v6 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Buffer '%s', cannot truncate from length %zu to length %zu", v6, v4, a2);
  }
}

void sub_29AD0FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AD0FFF4(void *result, void *a2)
{
  v4 = result[5];
  v3 = result[6];
  v5 = result[2];
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = a2[1];
  v6 = a2[2];
  if (v7 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
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

    v15[4] = a2;
    if (v12)
    {
      v13 = sub_29A012C48(a2, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[24 * v9];
    v15[0] = v13;
    v15[1] = v14;
    v15[3] = &v13[24 * v12];
    *v14 = v5;
    *(v14 + 1) = v4;
    *(v14 + 2) = v3;
    v15[2] = v14 + 24;
    sub_29ABC711C(a2, v15);
    v8 = a2[1];
    result = sub_29ABC71C0(v15);
  }

  else
  {
    *v7 = v5;
    v7[1] = v4;
    v7[2] = v3;
    v8 = v7 + 3;
    a2[1] = v7 + 3;
  }

  a2[1] = v8;
  return result;
}

void sub_29AD10124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AD10154(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    sub_29AD1019C(a1);
  }

  return v2;
}

uint64_t sub_29AD1019C(uint64_t result)
{
  v1 = (result + 8);
  v2 = atomic_load((result + 8));
  if (v2 != 1)
  {
    result = sub_29B2C7C68(v3);
  }

  atomic_store(2u, v1);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType::~HdXformSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType::HdXformSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "xform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "matrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "resetXformStack", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AD103B0(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(pxrInternal__aapl__pxrReserved__::HdXformSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AD104E4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD104E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AD10A9C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdXformSchema::GetResetXformStack(pxrInternal__aapl__pxrReserved__::HdXformSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdXformSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = &v22;
  v24 = 0;
  v25[0] = 0;
  v6 = &v24;
  v22 = 0u;
  v23 = 0u;
  if (*a1)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8 + 1);
    v10 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v22 + 1);
    *&v22 = v10;
    *(&v22 + 1) = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*a2)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 2);
    ++v12;
    v15 = *a2;
    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v5 + 1);
    *v5 = v15;
    *(v5 + 1) = v14;
    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12, &v24, &v22, &v21);
  *a3 = v21;
  for (i = 24; i != -8; i -= 16)
  {
    v18 = *(&v22 + i);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  for (j = 1; j != -1; --j)
  {
    v20 = v25[j - 1];
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AD107BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = 24;
  while (1)
  {
    v18 = *(&a11 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      v19 = 8;
      while (1)
      {
        v20 = *(&a16 + v19);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 -= 8;
        if (v19 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens))
    {
      sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdXformSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!result)
  {
    return sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdXformSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174C1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C1D8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C1A0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174C1A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C1D8);
  }

  return &unk_2A174C1A0;
}

void *sub_29AD10A9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2077310, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType::~HdarSystemSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType::HdarSystemSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "assetResolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resolverContext", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AD10CA8(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetFromPath@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromPath(v8, a1, a2, &v19, &v17);
  if (v17)
  {
    sub_29ABC3244(&v17, &v15);
    v9 = v15;
    if (v15)
    {
      if (a3)
      {
        sub_29A2258F0(a3, &v19);
        sub_29A225948(a3 + 1, &v20);
        v9 = v15;
      }

      v10 = v16;
      *a4 = v9;
      a4[1] = v10;
    }

    else
    {
      v13[0] = "hdar/systemSchema.cpp";
      v13[1] = "GetFromPath";
      v13[2] = 55;
      v13[3] = "static HdContainerDataSourceHandle pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetFromPath(const HdSceneIndexBaseRefPtr &, const SdfPath &, SdfPath *)";
      v14 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v19);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "system.assetResolution at %s is not a container.", Text);
      *a4 = 0;
      a4[1] = 0;
      if (v16)
      {
        sub_29A014BEC(v16);
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  return sub_29A1DE3A4(&v19);
}

void sub_29AD10E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A1DCEA8((v19 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetResolverContext(pxrInternal__aapl__pxrReserved__::HdarSystemSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  }

  v5 = v4[1];
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AD10F54(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD10F54(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AD113D4(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdarSystemSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
    if (!v4)
    {
      v4 = sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD110D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdarSystemSchema::Builder::SetResolverContext(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens))
    {
      sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdarSystemSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  if (!result)
  {
    return sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdarSystemSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdarSystemSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174C218, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174C218);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
      if (!v4)
      {
        v4 = sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174C1E0);
      __cxa_atexit(sub_29ABC33B4, dword_2A174C1E0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C218);
    }
  }

  return dword_2A174C1E0;
}

atomic_uint **sub_29AD11348(atomic_ullong *a1)
{
  result = sub_29AD11390();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType::~HdarSystemSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AD11390()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens_StaticTokenType::HdarSystemSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AD113D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2085CB8, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType::~HdGpGenerativeProceduralTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType::HdGpGenerativeProceduralTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "hydraGenerativeProcedural", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resolvedHydraGenerativeProcedural", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "skippedHydraGenerativeProcedural", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "hdGp:proceduralType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "*", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AD116D0(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural::HdGpGenerativeProcedural(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2085CE0;
  v4 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v4, a2 + 1);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural::~HdGpGenerativeProcedural(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural *this)
{
  *this = &unk_2A2085CE0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

void *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural::GetChildNamesDependencyKey(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProcedural *this)
{
  if ((atomic_load_explicit(&qword_2A174C258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C258))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v2, "__childNames");
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C220, &v2);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29ABC33B4, &unk_2A174C220, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C258);
  }

  return &unk_2A174C220;
}

void sub_29AD11904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174C258);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPlugin::HdGpGenerativeProceduralPlugin(void *this)
{
  *this = &unk_2A2085D38;
  return this;
}

{
  *this = &unk_2A2085D38;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPlugin::~HdGpGenerativeProceduralPlugin(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPlugin *this)
{
  pxrInternal__aapl__pxrReserved__::HfPluginBase::~HfPluginBase(this);

  operator delete(v1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__38HdGpGenerativeProceduralPluginRegistryE" & 0x7FFFFFFFFFFFFFFFLL), &v12);
  v2 = std::string::insert(&v12, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v13, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v12);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x48uLL);
      pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::HdGpGenerativeProceduralPluginRegistry(v8, v9);
      v11 = atomic_load(a1);
      if (v11)
      {
        if (v8 != v11)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v16 = 86;
          v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry]";
          v18 = 0;
          v19 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v10);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v16 = 90;
        v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry]";
        v18 = 0;
        v19 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v10, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AD11BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance();
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::HdGpGenerativeProceduralPluginRegistry(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *this, const std::type_info *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(this, v3);
  *this = &unk_2A2085D78;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance, this))
  {
    v19 = "tf/instantiateSingleton.h";
    v20 = "SetInstanceConstructed";
    v21 = 54;
    v22 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry]";
    v23 = 0;
    v24 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v19, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v5);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v4);
  sub_29A008E78(&v19, "PXR_HDGP_TEST_PLUGIN_PATH");
  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(&v19, __p, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  v8 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v8 = v17[1];
  }

  if (v8)
  {
    v19 = "hdGp/generativeProceduralPluginRegistry.cpp";
    v20 = "HdGpGenerativeProceduralPluginRegistry";
    v21 = 37;
    v22 = "pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::HdGpGenerativeProceduralPluginRegistry()";
    v23 = 0;
    v9 = v17;
    if ((v18 & 0x80u) != 0)
    {
      v9 = v17[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostStatusHelper(&v19, "PXR_HDGP_TEST_PLUGIN_PATH set to %s", v7, v9);
    v11 = pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v10);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::RegisterPlugins(v11, v17, v14);
    v19 = v14;
    sub_29A17DEA8(&v19);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_instance);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(v12, &v19);
  __p[0] = &v19;
  sub_29AC877F8(__p);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return this;
}

void sub_29AD11F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(v30);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::~HdGpGenerativeProceduralPluginRegistry(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *this)
{
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(this);

  operator delete(v1);
}

const pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry::ConstructProcedural(pxrInternal__aapl__pxrReserved__::HdGpGenerativeProceduralPluginRegistry *this, atomic_uint **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = *a2;
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(this, &v13);
  v8 = v13;
  v9 = v14;
  while (v8 != v9)
  {
    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(a2, (v8 + 8)))
    {
      sub_29A166F2C(&v16, v8);
      break;
    }

    v8 += 40;
  }

  Plugin = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(this, &v16);
  v11 = Plugin;
  if (Plugin)
  {
    a3 = (*(*Plugin + 16))(Plugin, a3);
  }

  v17 = &v13;
  sub_29AC877F8(&v17);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v11)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}