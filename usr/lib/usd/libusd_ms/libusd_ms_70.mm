void sub_29A3FE59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3FE5D8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FB70();
  }

  return sub_29A18B70C(a1);
}

uint64_t sub_29A3FE614(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 14)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20420F8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FE64C(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2048280;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FE6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FE71C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29FBDC();
  }

  return sub_29A21E45C(a1);
}

uint64_t *sub_29A3FE7A0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A3FE8A4(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &off_2A20429B0 + 3;
  }

  result = sub_29A3FE8DC(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3FE818(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FE8A4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409E8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FE8A4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 64)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409E8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3FE8DC(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FC48();
  }

  return a1;
}

__n128 sub_29A3FE95C(unsigned int **a1, __n128 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FEA70(a1) & 1) == 0)
  {
    v6 = 0uLL;
    sub_29A3FEAA8(a1, &v6);
  }

  v4 = sub_29A3FEB94(a1);
  result = *v4;
  *v4 = *a2;
  *a2 = result;
  return result;
}

std::type_info *sub_29A3FE9E4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FEA70(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409D8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FEA70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409D8);
  }

  else
  {
    return 0;
  }
}

unsigned int **sub_29A3FEAA8(unsigned int **a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = (&off_2A2042A68 + 2);
  v4 = operator new(0x14uLL);
  *v4 = *a2;
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FEB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3FEB94(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FCB4();
  }

  return sub_29A18B70C(a1);
}

__n128 sub_29A3FEC18(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FED30(a1) & 1) == 0)
  {
    memset(v8, 0, 32);
    sub_29A3FED68(a1, v8);
  }

  v4 = sub_29A3FEE54(a1);
  v6 = *v4;
  result = *(v4 + 1);
  v7 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v7;
  *a2 = v6;
  a2[1] = result;
  return result;
}

std::type_info *sub_29A3FECA4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FED30(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409C8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FED30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 70)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409C8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FED68(void *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A2042B20 + 2;
  v4 = operator new(0x28uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  atomic_store(0, v4 + 8);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29A3FEE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FEE54(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FD20();
  }

  return sub_29A18BAF8(a1);
}

uint64_t *sub_29A3FEE90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A3FEEB0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A3FEFC0(a1);
}

uint64_t sub_29A3FEFA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A204D8D8;
  return sub_29A3FF3C4(a2, v2);
}

void sub_29A3FEFC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      sub_29A1D0D38(&v2);
      v2 = (v1 + 104);
      sub_29A1D0D38(&v2);
      v2 = (v1 + 80);
      sub_29A1D0D38(&v2);
      v2 = (v1 + 56);
      sub_29A1D0D38(&v2);
      v2 = (v1 + 32);
      sub_29A1D0D38(&v2);
      v2 = (v1 + 8);
      sub_29A1D0D38(&v2);
      operator delete(v1);
    }
  }
}

unint64_t sub_29A3FF06C(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A3FF0D8(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t sub_29A3FF0D8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29A3FF120(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29A3FF120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29A3FF1B0(a1, *a2, (*(a2 + 8) - *a2) >> 4);
  sub_29A3FF1B0(a1, *a3, (*(a3 + 8) - *a3) >> 4);

  return sub_29A3FF224(a1, a4, a5, a6, a7);
}

uint64_t sub_29A3FF1B0(uint64_t result, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this);
      if (*(v5 + 8))
      {
        result += (*v5 + result + (*v5 + result) * (*v5 + result)) >> 1;
      }

      else
      {
        *(v5 + 8) = 1;
      }

      this = (this + 16);
      *v5 = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A3FF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29A3FF1B0(a1, *a2, (*(a2 + 8) - *a2) >> 4);
  sub_29A3FF1B0(a1, *a3, (*(a3 + 8) - *a3) >> 4);

  return sub_29A3FF29C(a1, a4, a5);
}

uint64_t sub_29A3FF29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A3FF1B0(a1, *a2, (*(a2 + 8) - *a2) >> 4);
  v5 = *a3;
  v6 = (*(a3 + 8) - *a3) >> 4;

  return sub_29A3FF1B0(a1, v5, v6);
}

uint64_t sub_29A3FF2F4(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 152));
  if (v2 != 1)
  {
    sub_29A3FF35C(*a1, &v4);
    sub_29A3FEFC0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A3FEFC0(&v4);
  }

  return *a1;
}

uint64_t sub_29A3FF35C@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A27C964(v4, a1);
  atomic_store(0, v4 + 38);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A3FF3C4(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0xA0uLL);
  result = sub_29A27C964(v4, a2);
  atomic_store(0, v4 + 38);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 38, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A3FF42C(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDC9388];

  return __cxa_atexit(v4, a2, a3);
}

pxrInternal__aapl__pxrReserved__::SdfValueTypeName *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this)
{
  *this = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(this);
  return this;
}

{
  *this = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypePrivate::GetEmptyTypeName(this);
  return this;
}

void *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(*this + 8);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

uint64_t **pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeNameCopy@<X0>(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  v2 = **this;
  if (*(v2 + 31) < 0)
  {
    return sub_29A008D14(a2, *(v2 + 8), *(v2 + 16));
  }

  v3 = *(v2 + 8);
  *(a2 + 16) = *(v2 + 24);
  *a2 = v3;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetRoleCopy@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(**this + 32);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

__n128 pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions@<Q0>(uint64_t **this@<X0>, __n128 *a2@<X8>)
{
  v2 = **this;
  result = *(v2 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 56);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(void **a1, void **a2)
{
  v2 = **a1;
  v3 = **a2;
  return *v2 == *v3 && (v3[4] ^ v2[4]) < 8uLL;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfToken::operator==(v3, __p);
      v6 = v5;
      v3 = (v3 + 8);
      v7 = v3 == v4 || v5;
    }

    while (v7 != 1);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_29A3FF798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v5 == v4)
  {
    result = 0;
  }

  else
  {
    v6 = v5 + 8;
    do
    {
      v7 = v3 ^ *(v6 - 8);
      result = v7 < 8;
      v9 = v7 < 8 || v6 == v4;
      v6 += 8;
    }

    while (!v9);
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAliasesAsTokens(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *pxrInternal__aapl__pxrReserved__::operator<<(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v4 + 4);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v6 = *(EmptyString + 23);
  if (v6 >= 0)
  {
    v7 = EmptyString;
  }

  else
  {
    v7 = *EmptyString;
  }

  if (v6 >= 0)
  {
    v8 = *(EmptyString + 23);
  }

  else
  {
    v8 = EmptyString[1];
  }

  result = sub_29A00911C(a1, v7, v8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfVariableExpression *pxrInternal__aapl__pxrReserved__::SdfVariableExpression::SdfVariableExpression(pxrInternal__aapl__pxrReserved__::SdfVariableExpression *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  sub_29A008E78(__p, "No expression specified");
  sub_29A091654(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_29A3FF9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 63) < 0)
  {
    operator delete(*(v15 + 40));
  }

  v17 = *(v15 + 32);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  __p = v15;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfVariableExpression::SdfVariableExpression(uint64_t a1, __int128 *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v4;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ParseVariableExpression(a2, &v8);
  v5 = v8;
  v8 = 0;
  sub_29A3FFB3C((a1 + 24), v5);
  sub_29A095FDC(a1);
  *a1 = v9;
  *(a1 + 16) = v10;
  v10 = 0;
  v9 = 0uLL;
  v11 = &v9;
  sub_29A012C90(&v11);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_29A3FFAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 32);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  a10 = v10;
  sub_29A012C90(&a10);
  _Unwind_Resume(a1);
}

void sub_29A3FFB3C(void *a1, uint64_t a2)
{
  sub_29A400058(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfVariableExpression::~SdfVariableExpression(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[4];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = this;
  sub_29A012C90(&v3);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfVariableExpression::IsValidVariableType(pxrInternal__aapl__pxrReserved__::SdfVariableExpression *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::CoerceIfUnsupportedValueType(this, v7);
  if (v7[1])
  {
    v4 = v7;
  }

  else
  {
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueType(v4, v3) != 0;
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3FFC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfVariableExpression::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariableExpression *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!*(this + 3))
  {
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v5 = pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext::EvalContext(v7, a2);
  (*(**(this + 3) + 16))(v11, v5);
  sub_29A186A3C(a3, v11);
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  v13 = 0;
  v12 = 0uLL;
  sub_29A155CF8(a3 + 40, v8);
  v10 = &v12;
  sub_29A012C90(&v10);
  sub_29A186B14(v11);
  sub_29A3FFEFC(v9);
  return sub_29A0EB4E8(v8);
}

void pxrInternal__aapl__pxrReserved__::SdfVariableExpression::_FormatUnexpectedTypeError(pxrInternal__aapl__pxrReserved__::SdfVariableExpression *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, &v12);
  v4 = v13;
  v5 = v12.__vftable;
  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a2, &__p);
  if (v4 >= 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v5;
  }

  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__vftable;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Expression evaluated to '%s' but expected '%s'", v6, v7, v8, p_p);
  if (v11 < 0)
  {
    operator delete(__p.__vftable);
  }

  if (v13 < 0)
  {
    operator delete(v12.__vftable);
  }
}

void sub_29A3FFEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FFEFC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_29A0D6E48(a1);
}

void *sub_29A400058(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A204D9A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A4000B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B29FD8C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A4000CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A4000F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A400124(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204D9F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A400164()
{
  v1 = nullsub_280;
  var8.__vftable = &unk_2A204A980;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204AA60, &var8, &v1, 1, 8, 0, 0);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    __p = "sdf/variantSetSpec.cpp";
    v17 = "New";
    v18 = 31;
    v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfPrimSpecHandle &, const std::string &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "NULL owner prim");
LABEL_5:
    *a3 = 0;
    return;
  }

  if ((MEMORY[0x29C2BB200](a2) & 1) == 0)
  {
    __p = "sdf/variantSetSpec.cpp";
    v17 = "New";
    v18 = 37;
    v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfPrimSpecHandle &, const std::string &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot create variant set spec with invalid identifier: '%s'");
    goto LABEL_5;
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v15);
  v6 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v6, v14);
  v7 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v7, &v11);
  sub_29A008E78(&__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v11, a2, &__p, &v12);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v12))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec();
  }

  __p = "sdf/variantSetSpec.cpp";
  v17 = "New";
  v18 = 48;
  v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfPrimSpecHandle &, const std::string &)";
  v20 = 0;
  v8 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v8, &v11);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v11);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot create variant set spec at invalid path <%s{%s=}>", Text, v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29B29FDB0(&v12, v14, v15);
}

{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    __p = "sdf/variantSetSpec.cpp";
    v17 = "New";
    v18 = 66;
    v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfVariantSpecHandle &, const std::string &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "NULL owner variant");
LABEL_5:
    *a3 = 0;
    return;
  }

  if ((MEMORY[0x29C2BB200](a2) & 1) == 0)
  {
    __p = "sdf/variantSetSpec.cpp";
    v17 = "New";
    v18 = 72;
    v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfVariantSpecHandle &, const std::string &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot create variant set spec with invalid identifier: '%s'");
    goto LABEL_5;
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v15);
  v6 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v6, v14);
  v7 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v7, &v11);
  sub_29A008E78(&__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v11, a2, &__p, &v12);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v12))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec();
  }

  __p = "sdf/variantSetSpec.cpp";
  v17 = "New";
  v18 = 83;
  v19 = "static SdfVariantSetSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::New(const SdfVariantSpecHandle &, const std::string &)";
  v20 = 0;
  v8 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v8, &v11);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v11);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Cannot create variant set spec at invalid path <%s{%s=}>", Text, v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29B29FDB0(&v12, v14, v15);
}

void sub_29A400434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_29A1DCEA8(&a13);
  v23 = a15;
  if (a15)
  {
    if (atomic_fetch_add_explicit((a15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v23 + 8))(v23);
    }
  }

  sub_29A1DD644(&a16);
  _Unwind_Resume(a1);
}

void sub_29A400744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_29A1DCEA8(&a13);
  v23 = a15;
  if (a15)
  {
    if (atomic_fetch_add_explicit((a15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v23 + 8))(v23);
    }
  }

  sub_29A1DD644(&a16);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::GetName@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v6);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v6);
  if (*(Name + 23) < 0)
  {
    sub_29A008D14(a2, *Name, Name[1]);
  }

  else
  {
    v4 = *Name;
    *(a2 + 16) = Name[2];
    *a2 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29A40086C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::GetNameToken@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec *this@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v7);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v7);
  v4 = *NameToken;
  *a2 = *NameToken;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A4008F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4009B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a9);
  v14 = a13;
  if (a13)
  {
    if (atomic_fetch_add_explicit((a13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::GetVariants(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::Sdf_Children();
}

void sub_29A400AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
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

void sub_29A400B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3BB88C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSetSpec::RemoveVariant(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v9);
  v4 = sub_29A1F38D8(a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v4, &v6);
  sub_29A2F7448(&v6, &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
  sub_29A1DE3A4(&v6);
  v5 = sub_29A1F38D8(a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v5, &v7);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

void sub_29A400E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8((v17 - 48));
  sub_29A1DCEA8((v17 - 40));
  v19 = *(v17 - 24);
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_29A400F14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    v10 = result;
    sub_29A00C968(result, a6);
    result = sub_29A400FB4(v10, a2, a3, a4, a5, *(v10 + 8));
    *(v10 + 8) = result;
  }

  return result;
}

void sub_29A400F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1F19E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A400FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a5)
  {
    sub_29A3BB8F4();
  }

  return a6;
}

void sub_29A401048(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v4);
      v4 = (v5 - 8);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A40106C()
{
  v1 = nullsub_281;
  var8.__vftable = &unk_2A204A980;
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A204AA48, &var8, &v1, 1, 8, 0, 0);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSpec::New(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    __p = "sdf/variantSpec.cpp";
    v11 = "New";
    v12 = 34;
    v13 = "static SdfVariantSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSpec::New(const SdfVariantSetSpecHandle &, const std::string &)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "NULL owner variant set");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidVariantIdentifier(a2, &__p);
    if (v13 != 1)
    {
      v6 = sub_29A2F7944(a1);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v6, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8);
      sub_29A2F72E4(&__p, &v8, &v9);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
      sub_29A1DE3A4(&__p);
      v7 = sub_29A2F7944(a1);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v7, &__p);
      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec();
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    __p = "sdf/variantSpec.cpp";
    v11 = "New";
    v12 = 39;
    v13 = "static SdfVariantSpecHandle pxrInternal__aapl__pxrReserved__::SdfVariantSpec::New(const SdfVariantSetSpecHandle &, const std::string &)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Invalid variant name: %s");
  }

  *a3 = 0;
}

void sub_29A4012E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;
  if (a13)
  {
    if (atomic_fetch_add_explicit((a13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  sub_29A1DCEA8(&a11);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetName@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariantSpec *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(&v4, &__p);
  *a2 = v8;
  *(a2 + 16) = v9;
  v9 = 0;
  v8 = 0uLL;
  if (v7 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  return sub_29A1DE3A4(&v4);
}

void sub_29A4013F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetNameToken@<X0>(pxrInternal__aapl__pxrReserved__::SdfVariantSpec *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(&v4, &v6);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  return sub_29A1DE3A4(&v4);
}

void sub_29A401488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A0D2850(va1);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetOwner(pxrInternal__aapl__pxrReserved__::SdfVariantSpec *this)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, v2);
  sub_29A2F7448(v2, &v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2 + 1);
  sub_29A1DE3A4(v2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v2);
  sub_29A1DA6E4(v2);
}

void sub_29A401550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A40163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
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

void pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetVariantSets(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v4[12] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, v4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v3);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys))
  {
    sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Sdf_Children();
}

void sub_29A40179C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_29A1DCEA8(&a16);
  v20 = a18;
  if (a18)
  {
    if (atomic_fetch_add_explicit((a18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v20 + 8))(v20);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetVariantNames(pxrInternal__aapl__pxrReserved__::SdfSpec *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v5);
  sub_29A008E78(&__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v5, a2, &__p, v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  sub_29A1DE3A4(&v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(a1, &v6);
  sub_29A1DA6E4(&v6);
}

void sub_29A401A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfCreateVariantInLayer(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a2, a3, a4, &v6);
  pxrInternal__aapl__pxrReserved__::SdfCreatePrimInLayer(a1, &v6, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
  sub_29A1DA6E4(a1);
}

void sub_29A401C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A401C2C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA08, 0, "NDR_DISCOVERY", 0);
  v0 = sub_29A401D5C();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "NDR_DISCOVERY", "Diagnostics from discovering nodes for Node Definition Registry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA08, 1, "NDR_PARSING", 0);
  v1 = sub_29A401D5C();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "NDR_PARSING", "Diagnostics from parsing nodes for Node Definition Registry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA08, 2, "NDR_INFO", 0);
  v2 = sub_29A401D5C();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "NDR_INFO", "Advisory information for Node Definition Registry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA08, 3, "NDR_STATS", 0);
  v3 = sub_29A401D5C();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "NDR_STATS", "Statistics for registries derived from NdrRegistry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA08, 4, "NDR_DEBUG", 0);
  v4 = sub_29A401D5C() + 16;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4, "NDR_DEBUG", "Advanced debugging for Node Definition Registry");
}

uint64_t sub_29A401D5C()
{
  if ((atomic_load_explicit(&qword_2A14F7CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F7CE8))
  {
    v1 = operator new(0x14uLL);
    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = 0;
    qword_2A14F7CE0 = v1;
    __cxa_guard_release(&qword_2A14F7CE8);
  }

  return qword_2A14F7CE0;
}

void sub_29A401E00()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA18, 0, "NdrVersionFilterDefaultOnly", "DefaultOnly");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204DA18, 1, "NdrVersionFilterAllVersions", "AllVersions");
}

pxrInternal__aapl__pxrReserved__::NdrVersion *pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(pxrInternal__aapl__pxrReserved__::NdrVersion *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  if ((a3 | a2) <= 0)
  {
    *(this + 8) = 0;
    *this = 0;
    v5[0] = "ndr/declare.cpp";
    v5[1] = "NdrVersion";
    v5[2] = 66;
    v5[3] = "pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(int, int)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid version %d.%d: both components must be non-negative and at least one non-zero", a2, a3);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(uint64_t a1, uint64_t a2)
{
  *a1 = sub_29A401F28(a2);
  *(a1 + 8) = v3;
  return a1;
}

{
  *a1 = sub_29A401F28(a2);
  *(a1 + 8) = v3;
  return a1;
}

uint64_t sub_29A401F28(uint64_t a1)
{
  __idx = 0;
  v2 = std::stoi(a1, &__idx, 10);
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v4 = *(a1 + 8);
    if (__idx == v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a1 + 23);
    if (__idx == v3)
    {
LABEL_3:
      pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&v15, v2, 0);
      return v15;
    }
  }

  if (__idx >= v4)
  {
    goto LABEL_16;
  }

  v5 = v3 >= 0 ? a1 : *a1;
  if (*(v5 + __idx) != 46)
  {
    goto LABEL_16;
  }

  v13 = 0;
  std::string::basic_string(&__str, a1, __idx + 1, 0xFFFFFFFFFFFFFFFFLL, &v17);
  v6 = std::stoi(&__str, &v13, 10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  if (__idx + v13 + 1 == v7)
  {
    pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&v15, v2, v6);
  }

  else
  {
LABEL_16:
    v16 = 0;
    v15 = 0;
    __str.__r_.__value_.__r.__words[0] = "ndr/declare.cpp";
    __str.__r_.__value_.__l.__size_ = "_ParseVersionString";
    __str.__r_.__value_.__r.__words[2] = 53;
    v11 = "NdrVersion pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ParseVersionString(const std::string &)";
    v12 = 0;
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__str, 1, "Invalid version string '%s'", v8);
  }

  return v15;
}

void pxrInternal__aapl__pxrReserved__::NdrVersion::GetString(pxrInternal__aapl__pxrReserved__::NdrVersion *this@<X0>, std::string *a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 1);
  if (v4)
  {
    if (!v5)
    {

      std::to_string(a2, v4);
      return;
    }

    goto LABEL_7;
  }

  if (v5)
  {
LABEL_7:
    std::to_string(&v13, v4);
    v6 = std::string::append(&v13, ".");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 1));
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v14, p_p, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_29A008E78(a2, "<invalid version>");
}

void sub_29A40225C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::NdrVersion::GetStringSuffix(pxrInternal__aapl__pxrReserved__::NdrVersion *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 8) == 1)
  {
LABEL_2:

    sub_29A008E78(a2, "");
    return;
  }

  v4 = *this;
  v5 = *(this + 1);
  if (v4)
  {
    if (!v5)
    {
      std::to_string(&v17, v4);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6.__i_ = &v17;
      }

      else
      {
        v6.__i_ = v17.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v17, v6, 95);
      *a2 = v17;
      return;
    }
  }

  else if (!v5)
  {
    goto LABEL_2;
  }

  std::to_string(&v15, v4);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__i_ = &v15;
  }

  else
  {
    v7.__i_ = v15.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v15, v7, 95);
  v16 = v15;
  memset(&v15, 0, sizeof(v15));
  v8 = std::string::append(&v16, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(this + 1));
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v17, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  a2->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_29A402458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::NdrDiscoveryPlugin(uint64_t this)
{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *this = &unk_2A204DA38;
  return this;
}

void pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin *this, const void *a2)
{
  sub_29A0F6078(this + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

uint64_t sub_29A402564()
{
  v2 = nullsub_282;
  return sub_29A402CF0(v0);
}

void sub_29A4025C0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_SEARCH_PATHS))
  {
    sub_29B29FF74();
  }
}

void sub_29A4025F0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_ALLOWED_EXTS))
  {
    sub_29B29FFA8();
  }
}

void sub_29A402620()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_FOLLOW_SYMLINKS))
  {
    sub_29B29FFDC();
  }
}

pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin *pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::_NdrFilesystemDiscoveryPlugin(pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::NdrDiscoveryPlugin(this);
  *v2 = &unk_2A204DAA0;
  *(v2 + 24) = 0u;
  v3 = v2 + 24;
  v4 = v2 + 48;
  *(v2 + 104) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_SEARCH_PATHS);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29A008E78(__p, ":");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(v5, __p, &v11);
  sub_29A095FDC(v3);
  *(this + 24) = v11;
  *(this + 5) = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29A012C90(&v13);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_ALLOWED_EXTS);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29A008E78(__p, ":");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(v6, __p, &v11);
  sub_29A095FDC(v4);
  *(this + 3) = v11;
  *(this + 8) = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29A012C90(&v13);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_FS_PLUGIN_FOLLOW_SYMLINKS);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  *(this + 72) = *v7;
  return this;
}

void sub_29A402808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  sub_29A403038(v16 + 80);
  sub_29A012C90(&a16);
  sub_29A012C90(&a16);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(v16, v18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin *pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::_NdrFilesystemDiscoveryPlugin(pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::_NdrFilesystemDiscoveryPlugin(a1);
  sub_29A4030B8(v4 + 80, a2);
  return a1;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::_NdrFilesystemDiscoveryPlugin(a1);
  sub_29A4030B8(v4 + 80, a2);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::DiscoverNodes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 72);
  v11[0] = &unk_2A204DB40;
  v11[1] = pxrInternal__aapl__pxrReserved__::NdrFsHelpersSplitShaderIdentifier;
  v11[3] = v11;
  pxrInternal__aapl__pxrReserved__::NdrFsHelpersDiscoverNodes(a1 + 24, a1 + 48, v5, a2, v11, a3);
  result = sub_29A4031C0(v11);
  if (*(a1 + 104))
  {
    v8 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      v9 = *a3;
      do
      {
        v10 = *(a1 + 104);
        if (!v10)
        {
          sub_29A0DDCB0();
        }

        if ((*(*v10 + 48))(v10, v9))
        {
          if (v9 != v8)
          {
            sub_29A402A54(v8, v9);
          }

          v8 += 216;
        }

        v9 += 216;
        v7 = a3[1];
      }

      while (v9 != v7);
    }

    return sub_29A402C2C(a3, v8, v7);
  }

  return result;
}

void sub_29A402A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A403324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A402A54(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (a2 != a1)
  {
    v6 = *(a1 + 48);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = 0;
    v7 = *(a1 + 56);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a1 + 64);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v9 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v9;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v10 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v11 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v11;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  sub_29A402E54(a1 + 144, (a2 + 144));
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v12 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v12;
  *(a2 + 207) = 0;
  *(a2 + 184) = 0;
  if (a2 != a1)
  {
    v13 = *(a1 + 208);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 208) = *(a2 + 208);
    *(a2 + 208) = 0;
  }

  return a1;
}

uint64_t sub_29A402C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_29A402A54(v7, v4);
        v4 += 216;
        v7 += 216;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 216;
      sub_29A4033A8(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_29A402CC0(void **a1)
{
  sub_29A402FE0(a1);

  operator delete(v1);
}

uint64_t sub_29A402CF0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A204DAE8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A402D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A402DA0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A402DC8@<X0>(pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin **a1@<X8>)
{
  v2 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::_NdrFilesystemDiscoveryPlugin::_NdrFilesystemDiscoveryPlugin(v2);
  *a1 = v2;
  v4 = 0;
  return sub_29A402E24(&v4);
}

void sub_29A402E54(uint64_t a1, uint64_t *a2)
{
  sub_29A402EF8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_29A402EF8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A402F54(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29A402F54(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A402F98((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A402F98(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A402FE0(void **a1)
{
  sub_29A403038((a1 + 10));
  v3 = a1 + 6;
  sub_29A012C90(&v3);
  v3 = a1 + 3;
  sub_29A012C90(&v3);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(a1, v2);
}

uint64_t sub_29A403038(uint64_t a1)
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

uint64_t sub_29A4030B8(uint64_t a1, uint64_t a2)
{
  sub_29A40313C(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29A40313C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_29A4031C0(uint64_t a1)
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

void *sub_29A403248(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A204DB40;
  result[1] = v3;
  return result;
}

uint64_t sub_29A403290(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A204DB40;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A4032D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204DBC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A403324(void ***a1)
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
        v4 = sub_29A4033A8(v4 - 216);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A4033A8(uint64_t a1)
{
  v2 = *(a1 + 208);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_29A40349C(a1 + 144);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 56);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 48);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29A40349C(uint64_t a1)
{
  sub_29A402F54(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrFsHelpersSplitShaderIdentifier(pxrInternal__aapl__pxrReserved__ *this, std::string *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4, pxrInternal__aapl__pxrReserved__::NdrVersion *a5)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::TfStringTokenize(EmptyString, "_", &v30);
  if (v30 == v31)
  {
    goto LABEL_38;
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p);
  if (&__p == a2)
  {
    if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((a2->__r_.__value_.__r.__words[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((a2->__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    a2->__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
  }

  v10 = v30;
  v11 = v31;
  v12 = v31 - v30;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  if (v13 == 2)
  {
    if (sub_29A403888(&v31[-1]))
    {
      v14 = std::stoi(v11 - 1, 0, 10);
      pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&__p, v14, 0);
      *a4 = __p.__r_.__value_.__r.__words[0];
      *(a4 + 8) = __p.__r_.__value_.__s.__data_[8];
      v15 = a3;
      v16 = a2;
    }

    else
    {
      *(a4 + 8) = 0;
      *a4 = 0;
      v15 = a3;
      v16 = this;
    }

    sub_29A166F2C(v15, v16);
    goto LABEL_35;
  }

  if (v13 != 1)
  {
    v17 = sub_29A403888(&v31[-1]);
    if (!sub_29A403888(&v11[-2]))
    {
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = std::stoi((v10 + v12 - 24), 0, 10);
      pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&__p, v21, 0);
      *a4 = __p.__r_.__value_.__r.__words[0];
      *(a4 + 8) = __p.__r_.__value_.__s.__data_[8];
      sub_29A11CF98("_", v30, v31 - 1, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v26);
LABEL_24:
      if (&v26 == a3)
      {
        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*a3 & 7) != 0)
        {
          atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *a3 = v26;
        v26 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_35;
    }

    if (v17)
    {
      v19 = std::stoi(v11 - 2, 0, 10);
      v20 = std::stoi(v31 - 1, 0, 10);
      pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion(&__p, v19, v20);
      *a4 = __p.__r_.__value_.__r.__words[0];
      *(a4 + 8) = __p.__r_.__value_.__s.__data_[8];
      sub_29A11CF98("_", v30, v31 - 2, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v26);
      goto LABEL_24;
    }

    __p.__r_.__value_.__r.__words[0] = "ndr/filesystemDiscoveryHelpers.cpp";
    __p.__r_.__value_.__l.__size_ = "NdrFsHelpersSplitShaderIdentifier";
    __p.__r_.__value_.__r.__words[2] = 166;
    v28 = "BOOL pxrInternal__aapl__pxrReserved__::NdrFsHelpersSplitShaderIdentifier(const TfToken &, TfToken *, TfToken *, NdrVersion *)";
    v29 = 0;
    v22 = *this & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v23 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Invalid shader identifier '%s'.", v18, v23);
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  sub_29A166F2C(a2, this);
LABEL_14:
  sub_29A166F2C(a3, this);
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_35:
  v24 = 1;
LABEL_39:
  __p.__r_.__value_.__r.__words[0] = &v30;
  sub_29A012C90(&__p);
  return v24;
}

void sub_29A403830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_29A403888(unsigned __int8 *a1)
{
  v1 = a1[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      v2 = a1;
      v3 = a1[23];
      goto LABEL_6;
    }

    return 0;
  }

  v3 = *(a1 + 1);
  if (!v3)
  {
    return 0;
  }

  v2 = *a1;
LABEL_6:
  v4 = &v2[v3];
  while ((*(MEMORY[0x29EDCA600] + 4 * *v2 + 60) & 0x400) != 0)
  {
    ++v2;
    if (!--v3)
    {
      v2 = v4;
      break;
    }
  }

  v5 = *a1;
  if (v1 < 0)
  {
    v1 = *(a1 + 1);
  }

  else
  {
    v5 = a1;
  }

  return v2 == &v5[v1];
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrFsHelpersDiscoverNodes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v15 = a4;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v18);
  v11 = operator new(0x30uLL);
  *v11 = &unk_2A204DBF0;
  v11[1] = a6;
  v11[2] = v13;
  v11[3] = a2;
  v11[4] = &v15;
  v11[5] = a5;
  v17 = v11;
  sub_29A403A38(a1, v16, a3);
  sub_29A10218C(v16);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v18);
  return sub_29A0EB4E8(v13);
}

void sub_29A4039F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A10218C(&a16);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache((v16 - 72));
  sub_29A0EB4E8(&a9);
  sub_29A403324(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A403A38(uint64_t result, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = pxrInternal__aapl__pxrReserved__::TfIsDir(v3, 0);
      if (result)
      {
        sub_29A403C4C(v8, a2);
        v7[0] = &unk_2A203FF30;
        v7[1] = pxrInternal__aapl__pxrReserved__::TfWalkIgnoreErrorHandler;
        v7[3] = v7;
        pxrInternal__aapl__pxrReserved__::TfWalkDirs(v3, v8, 1, v7, a3);
        sub_29A101C9C(v7);
        result = sub_29A10218C(v8);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29A403B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A101C9C(va);
  sub_29A10218C(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrFsHelpersDiscoverFiles(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v9);
  v8[0] = &unk_2A204DC70;
  v8[1] = a2;
  v8[2] = a4;
  v8[3] = v8;
  sub_29A403A38(a1, v8, a3);
  sub_29A10218C(v8);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v9);
}

void sub_29A403C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A10218C(va);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(va1);
  sub_29A0D2770(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A403C4C(uint64_t a1, uint64_t a2)
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

__n128 sub_29A403CEC(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A204DBF0;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  *(v2 + 5) = *(a1 + 40);
  return result;
}

__n128 sub_29A403D48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204DBF0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A403D88(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v38 = **(a1 + 32);
    v10 = *(a1 + 40);
    do
    {
      pxrInternal__aapl__pxrReserved__::TfGetExtension(v4, &__p);
      pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(&__p, v54);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (sub_29A22B430(*v9, v9[1], v54) != v9[1])
      {
        pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a2, v4, &v52);
        pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(v4, 46, &__p);
        v11 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v51);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v51 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((v51 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v13 = *(EmptyString + 23);
        }

        else
        {
          v13 = EmptyString[1];
        }

        sub_29A022DE0(&__p, v13 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v13)
        {
          if (*(EmptyString + 23) >= 0)
          {
            v15 = EmptyString;
          }

          else
          {
            v15 = *EmptyString;
          }

          memmove(p_p, v15, v13);
        }

        *(&p_p->__r_.__value_.__l.__data_ + v13) = 45;
        if ((v55 & 0x80u) == 0)
        {
          v16 = v54;
        }

        else
        {
          v16 = v54[0];
        }

        if ((v55 & 0x80u) == 0)
        {
          v17 = v55;
        }

        else
        {
          v17 = v54[1];
        }

        v18 = std::string::append(&__p, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v50 = v18->__r_.__value_.__r.__words[2];
        *&v49.__r_.__value_.__r.__words[1] = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A2D1AC8(v8, &v49.__r_.__value_.__l.__size_, &v49.__r_.__value_.__l.__size_);
        if (v21)
        {
          v48 = 0;
          v49.__r_.__value_.__r.__words[0] = 0;
          v47 = 0;
          v46 = 0;
          if (*(v10 + 24))
          {
            v22 = sub_29A40443C(v10, &v51, &v49, &v48, &v46);
          }

          else
          {
            v22 = pxrInternal__aapl__pxrReserved__::NdrFsHelpersSplitShaderIdentifier(&v51, &v49, &v48, &v46, v20);
          }

          if (v22)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v42);
            v40 = v46;
            v41 = 1;
            v28 = v38;
            if (v38)
            {
              v28 = (*(*v38 + 16))(&v39);
            }

            else
            {
              v39 = 0;
            }

            Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v28);
            pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
            v35 = *(v7 + 1);
            if (v35 >= *(v7 + 2))
            {
              v36 = sub_29A40449C(v7, &v51, &v40, &v48, &v49, &v42, &v39, &v52, &__p);
            }

            else
            {
              sub_29A404634(v7, v35, &v51, &v40, &v48, &v49, &v42, &v39, &v52, &__p);
              v36 = v35 + 216;
              *(v7 + 1) = v35 + 216;
            }

            *(v7 + 1) = v36;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if ((v39 & 7) != 0)
            {
              atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v42 & 7) != 0)
            {
              atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            __p.__r_.__value_.__r.__words[0] = "ndr/filesystemDiscoveryHelpers.cpp";
            __p.__r_.__value_.__l.__size_ = "_FsHelpersExamineFiles";
            __p.__r_.__value_.__r.__words[2] = 79;
            v44 = "BOOL pxrInternal__aapl__pxrReserved__::_FsHelpersExamineFiles(NdrNodeDiscoveryResultVec *, NdrStringSet *, const NdrStringVec &, const NdrDiscoveryPluginContext *, const std::string &, const NdrStringVec &, const NdrParseIdentifierFn &)";
            v45 = 0;
            v29 = v51 & 0xFFFFFFFFFFFFFFF8;
            if ((v51 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v30 = (v29 + 16);
              if (*(v29 + 39) < 0)
              {
                v30 = *v30;
              }
            }

            else
            {
              v30 = "";
            }

            v33 = &v52;
            if (v53 < 0)
            {
              v33 = v52;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Could not parse the family, name, and version from shader indentifier '%s' for shader file '%s'. Skipping.", v23, v30, v33);
          }

          if ((v48 & 7) != 0)
          {
            atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v49.__r_.__value_.__s.__data_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v49.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else if (sub_29A4043D8(0))
        {
          v26 = v51 & 0xFFFFFFFFFFFFFFF8;
          if ((v51 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v27 = (v26 + 16);
            if (*(v26 + 39) < 0)
            {
              v27 = *v27;
            }
          }

          else
          {
            v27 = "";
          }

          v31 = v54;
          if ((v55 & 0x80u) != 0)
          {
            v31 = v54[0];
          }

          v32 = &v52;
          if (v53 < 0)
          {
            v32 = v52;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found a duplicate node with identifier [%s] and type [%s] at URI [%s]; ignoring.\n", v24, v25, v27, v31, v32);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__size_);
        }

        if ((v51 & 7) != 0)
        {
          atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v53 < 0)
        {
          operator delete(v52);
        }
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return 1;
}

void sub_29A404234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  *(v35 + 8) = v36;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a28 & 7) != 0)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  v39 = *(v37 - 144);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A404378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    JUMPOUT(0x29A40436CLL);
  }

  JUMPOUT(0x29A404370);
}

uint64_t sub_29A40438C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204DC50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29A4043D8(int a1)
{
  v2 = sub_29A401D5C();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A401D5C();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F2958B8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t sub_29A40443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v7 = a5;
  v8 = a4;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_29A0DDCB0();
  }

  return (*(*v5 + 48))(v5, a2, &v9, &v8, &v7);
}

uint64_t sub_29A40449C(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9)
{
  v9 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x12F684BDA12F684)
  {
    sub_29A00C9A4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v10)
  {
    v10 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v19 = 0x12F684BDA12F684;
  }

  else
  {
    v19 = v10;
  }

  v30 = a1;
  if (v19)
  {
    v20 = sub_29A404E8C(a1, v19);
  }

  else
  {
    v20 = 0;
  }

  v27 = v20;
  v28 = &v20[216 * v9];
  *(&v29 + 1) = &v20[216 * v19];
  sub_29A404634(a1, v28, a2, a3, a4, a5, a6, a7, a8, a9);
  *&v29 = v28 + 216;
  v21 = a1[1];
  v22 = &v28[*a1 - v21];
  sub_29A404ED8(a1, *a1, v21, v22);
  v23 = *a1;
  *a1 = v22;
  v24 = a1[2];
  v26 = v29;
  *(a1 + 1) = v29;
  *&v29 = v23;
  *(&v29 + 1) = v24;
  v27 = v23;
  v28 = v23;
  sub_29A405050(&v27);
  return v26;
}

void sub_29A404620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A405050(va);
  _Unwind_Resume(a1);
}

void sub_29A404634(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __int128 *a9, __int128 *a10)
{
  if ((*a5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v22 = 0uLL;
  v23 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  __p = 0uLL;
  v19 = 0;
  v17 = 0;
  sub_29A404780(a2, a3, a4, EmptyString, a6, a7, a8, a9, a10, &v22, v20, &__p, &v17);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  sub_29A40349C(v20);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }
}

void sub_29A404748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2A0010(va, va1, va2, v7 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29A404780(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, __int128 *a12, uint64_t *a13)
{
  v18 = *a2;
  *a1 = *a2;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *(a1 + 8) = v19;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v20;
  }

  v21 = *a5;
  *(a1 + 48) = *a5;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *a6;
  *(a1 + 56) = *a6;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *a7;
  *(a1 + 64) = *a7;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a8 + 23) < 0)
  {
    sub_29A008D14((a1 + 72), *a8, *(a8 + 1));
  }

  else
  {
    v24 = *a8;
    *(a1 + 88) = *(a8 + 2);
    *(a1 + 72) = v24;
  }

  if (*(a9 + 23) < 0)
  {
    sub_29A008D14((a1 + 96), *a9, *(a9 + 1));
  }

  else
  {
    v25 = *a9;
    *(a1 + 112) = *(a9 + 2);
    *(a1 + 96) = v25;
  }

  if (*(a10 + 23) < 0)
  {
    sub_29A008D14((a1 + 120), *a10, *(a10 + 1));
  }

  else
  {
    v26 = *a10;
    *(a1 + 136) = *(a10 + 2);
    *(a1 + 120) = v26;
  }

  sub_29A404A70(a1 + 144, a11);
  if (*(a12 + 23) < 0)
  {
    sub_29A008D14((a1 + 184), *a12, *(a12 + 1));
  }

  else
  {
    v27 = *a12;
    *(a1 + 200) = *(a12 + 2);
    *(a1 + 184) = v27;
  }

  v28 = *a13;
  *(a1 + 208) = *a13;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 208) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_29A404994(_Unwind_Exception *a1)
{
  sub_29A40349C(v1 + 144);
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 56);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(v1 + 48);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A404A70(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A404AE8(a1, i + 2, i + 2);
  }

  return a1;
}

void *sub_29A404AE8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A404D28(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A404D10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A404E30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A404D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A404D98((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A404D98(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 31) < 0)
  {
    sub_29A008D14((a1 + 8), a2[1], a2[2]);
  }

  else
  {
    v4 = *(a2 + 1);
    *(a1 + 24) = a2[3];
    *(a1 + 8) = v4;
  }

  return a1;
}

void sub_29A404E30(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A402F98(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A404E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12F684BDA12F685)
  {
    sub_29A00C8B8();
  }

  return operator new(216 * a2);
}

void sub_29A404ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A404F5C(a1, a4, v8);
      v8 += 216;
      a4 += 216;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_29A4033A8(v6);
      v6 += 216;
    }
  }
}

__n128 sub_29A404F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *a3 = 0;
  v5 = *(a3 + 8);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 8) = v5;
  v6 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v6;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 48) = 0;
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 56) = 0;
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 64) = 0;
  v7 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 72) = v7;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  v8 = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 96) = v8;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  v9 = *(a3 + 120);
  *(a2 + 136) = *(a3 + 136);
  *(a2 + 120) = v9;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  sub_29A155CF8(a2 + 144, (a3 + 144));
  result = *(a3 + 184);
  *(a2 + 200) = *(a3 + 200);
  *(a2 + 184) = result;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a2 + 208) = *(a3 + 208);
  *(a3 + 208) = 0;
  return result;
}

uint64_t sub_29A405050(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    sub_29A4033A8(i - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_29A4050A8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204DC70;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A4050F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204DC70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A405124(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::TfGetExtension(v4, __p);
      pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(__p, v19);
      if (SBYTE7(v18[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_29A22B430(**(a1 + 8), *(*(a1 + 8) + 8), v19) != *(*(a1 + 8) + 8))
      {
        memset(v18, 0, sizeof(v18));
        *__p = 0u;
        pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a2, v4, &__str);
        if (SBYTE7(v18[0]) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&__str.__r_.__value_.__l.__data_;
        *&v18[0] = *(&__str.__r_.__value_.__l + 2);
        Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v8);
        pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
        std::string::operator=((v18 + 8), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v10 = *(a1 + 16);
        v11 = *(v10 + 8);
        if (v11 >= *(v10 + 16))
        {
          v14 = sub_29A405360(*(a1 + 16), __p);
        }

        else
        {
          v12 = *__p;
          *(v11 + 16) = *&v18[0];
          *v11 = v12;
          __p[1] = 0;
          *&v18[0] = 0;
          __p[0] = 0;
          v13 = *(&v18[1] + 1);
          *(v11 + 24) = *(v18 + 8);
          *(v11 + 40) = v13;
          memset(v18 + 8, 0, 24);
          v14 = v11 + 48;
        }

        *(v10 + 8) = v14;
        if (SHIBYTE(v18[1]) < 0)
        {
          operator delete(*(&v18[0] + 1));
        }

        if (SBYTE7(v18[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return 1;
}

void sub_29A4052BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_29A0D2850(&a16);
  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A405314(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204DCD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A405360(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[48 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *&v19 = v8 + 48;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  sub_29A4054B0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0D407C(&v17);
  return v16;
}

void sub_29A40549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0D407C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4054B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_29A0D27F8(a1, v5);
      v5 += 48;
    }
  }

  return sub_29A405580(v11);
}

uint64_t sub_29A405580(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4055B8(a1);
  }

  return a1;
}

void sub_29A4055B8(uint64_t *a1)
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
      v3 -= 48;
      sub_29A0D27F8(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrNode::NdrNode(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9, uint64_t a10, uint64_t a11, __int128 *a12)
{
  *a1 = &unk_2A204DCF0;
  v17 = *a2;
  *(a1 + 16) = *a2;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 24) = v18;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v19 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v19;
  }

  v20 = *a5;
  *(a1 + 64) = *a5;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *a6;
  *(a1 + 72) = *a6;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 72) &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *a7;
  *(a1 + 80) = *a7;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 80) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a8 + 23) < 0)
  {
    sub_29A008D14((a1 + 88), *a8, *(a8 + 1));
  }

  else
  {
    v23 = *a8;
    *(a1 + 104) = *(a8 + 2);
    *(a1 + 88) = v23;
  }

  if (*(a9 + 23) < 0)
  {
    sub_29A008D14((a1 + 112), *a9, *(a9 + 1));
  }

  else
  {
    v24 = *a9;
    *(a1 + 128) = *(a9 + 2);
    *(a1 + 112) = v24;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *a10;
  *(a1 + 152) = *(a10 + 16);
  *a10 = 0;
  *(a10 + 8) = 0;
  *(a10 + 16) = 0;
  sub_29A404A70(a1 + 160, a11);
  if (*(a12 + 23) < 0)
  {
    sub_29A008D14((a1 + 200), *a12, *(a12 + 1));
  }

  else
  {
    v25 = *a12;
    *(a1 + 216) = *(a12 + 2);
    *(a1 + 200) = v25;
  }

  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v26 = *(a1 + 136);
  v27 = *(a1 + 144);
  *(a1 + 8) = v26 != v27;
  v28 = v27 - v26;
  if (v28)
  {
    v29 = 0;
    v30 = v28 >> 3;
    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    do
    {
      v32 = *(*(a1 + 136) + 8 * v29);
      if (*(v32 + 40) == 1)
      {
        sub_29A1D8028(a1 + 328, (v32 + 8));
        v33 = *(v32 + 8);
        v36 = v33;
        if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v36 &= 0xFFFFFFFFFFFFFFF8;
        }

        v37 = v32;
        sub_29A162678(a1 + 288, &v36, &v36);
      }

      else
      {
        sub_29A1D8028(a1 + 264, (v32 + 8));
        v34 = *(v32 + 8);
        v36 = v34;
        if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v36 &= 0xFFFFFFFFFFFFFFF8;
        }

        v37 = v32;
        sub_29A162678(a1 + 224, &v36, &v36);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v29;
    }

    while (v31 != v29);
  }

  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::NdrNode::NdrNode(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_29A40594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29A40349C((v10 + 3));
  a9 = v10;
  sub_29A405D94(&a9);
  if (*(v9 + 135) < 0)
  {
    operator delete(*(v9 + 112));
  }

  if (*(v9 + 111) < 0)
  {
    operator delete(*(v9 + 88));
  }

  v12 = *(v9 + 80);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(v9 + 72);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(v9 + 64);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v9 + 63) < 0)
  {
    operator delete(*(v9 + 40));
  }

  v15 = *(v9 + 16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrNode::~NdrNode(void **this)
{
  *this = &unk_2A204DCF0;
  v6 = this + 41;
  sub_29A124AB0(&v6);
  sub_29A155EF4((this + 36));
  v6 = this + 33;
  sub_29A124AB0(&v6);
  sub_29A155EF4((this + 28));
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  sub_29A40349C((this + 20));
  v6 = this + 17;
  sub_29A405D94(&v6);
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[10];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = this[9];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[8];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v5 = this[2];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  pxrInternal__aapl__pxrReserved__::NdrNode::~NdrNode(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::NdrNode::GetInfoString(pxrInternal__aapl__pxrReserved__::NdrNode *this)
{
  if ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v3 = *(this + 9) & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::NdrVersion::GetString((this + 24), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = *(this + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = (v8 + 16);
    if (*(v8 + 39) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = "";
  }

  v10 = (this + 88);
  if (*(this + 111) < 0)
  {
    v10 = *v10;
  }

  v11 = (this + 112);
  if (*(this + 135) < 0)
  {
    v11 = *v11;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s (context: '%s', version: '%s', family: '%s'); definition URI: '%s'; implementation URI: '%s'", v5, v6, EmptyString, v4, p_p, v9, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A405D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::NdrNode::GetInput(uint64_t a1, void *a2)
{
  result = sub_29A16039C((a1 + 224), a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::NdrNode::GetOutput(uint64_t a1, void *a2)
{
  result = sub_29A16039C((a1 + 288), a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

void sub_29A405D94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A405DE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A405DE8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::NdrParserPlugin::NdrParserPlugin(void *this)
{
  *this = &unk_2A204DD30;
  this[1] = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::NdrParserPlugin::GetInvalidNode(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x160uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, "unknown discovery type");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, "unknown source type");
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  __p = 0uLL;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::NdrNode::NdrNode(v4, a1, (a1 + 8), (a1 + 24), (a1 + 48), &v11, &v10, (a1 + 96), (a1 + 96), v9, v7, &__p);
  *a2 = v4;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  sub_29A40349C(v7);
  *&v7[0] = v9;
  sub_29A405D94(v7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A405FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A40349C(&a20);
  a20 = v21 - 72;
  sub_29A405D94(&a20);
  v23 = *(v21 - 48);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(v21 - 40);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrProperty::NdrProperty(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v13 = *a2;
  *a1 = &unk_2A204DD90;
  *(a1 + 8) = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a3;
  *(a1 + 16) = *a3;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 24), a4);
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  *(a1 + 57) = 1;
  sub_29A404A70(a1 + 64, a8);
  return a1;
}

void sub_29A40613C(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 24);
  v3 = *(v1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrProperty::~NdrProperty(pxrInternal__aapl__pxrReserved__::NdrProperty *this)
{
  *this = &unk_2A204DD90;
  sub_29A40349C(this + 64);
  sub_29A186B14(this + 24);
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
}

{
  pxrInternal__aapl__pxrReserved__::NdrProperty::~NdrProperty(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::NdrProperty::GetInfoString(pxrInternal__aapl__pxrReserved__::NdrProperty *this, const char *a2, char *a3)
{
  v3 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
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

  if (*(this + 40))
  {
    v7 = "output";
  }

  else
  {
    v7 = "input";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s (type: '%s'); %s", a2, a3, v4, v6, v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrProperty::IsConnectable(pxrInternal__aapl__pxrReserved__::NdrProperty *this)
{
  if (*(this + 57) == 1)
  {
    v1 = *(this + 40) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrProperty::GetTypeAsSdfType@<X0>(pxrInternal__aapl__pxrReserved__::NdrProperty *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v4)
  {
    v4 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(a2, v4 + 11, this + 2, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrProperty::GetDefaultValueAsSdfType(pxrInternal__aapl__pxrReserved__::NdrProperty *this)
{
  if ((atomic_load_explicit(qword_2A1741CD8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2A005C();
  }

  return qword_2A1741CD0;
}

void sub_29A4063C8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_SKIP_DISCOVERY_PLUGIN_DISCOVERY))
  {
    sub_29B2A00DC();
  }
}

void sub_29A4063F8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_SKIP_PARSER_PLUGIN_DISCOVERY))
  {
    sub_29B2A0110();
  }
}

void sub_29A406428()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_DISABLE_PLUGINS))
  {
    sub_29B2A0144();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry_ValidateProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**a2 + 56))();
  (*(**a2 + 48))(&v26);
  SdfType = pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetSdfType(&v26);
  if (!*(v6 + 1) || (v8 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v6, v7), EmptyString = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&SdfType), *EmptyString == v8))
  {
    result = 1;
  }

  else if (a3)
  {
    if ((*(*a1 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = (*(*a1 + 16) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v10 = EmptyString;
    }

    if (*(v10 + 23) < 0)
    {
      v10 = *v10;
    }

    if ((*(*a1 + 80) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = (*(*a1 + 80) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v12 = EmptyString;
    }

    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    if ((*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    }

    if (*(v13 + 23) < 0)
    {
      v13 = *v13;
    }

    Type = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&SdfType);
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(Type);
    if (*(TypeName + 23) >= 0)
    {
      v17 = TypeName;
    }

    else
    {
      v17 = *TypeName;
    }

    v22 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(v6, v16);
    v18 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v22);
    if (*(v18 + 23) >= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = *v18;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Default value type does not match specified type for property.\nNode identifier: %s\nSource type: %s\nProperty name: %s.\nType from SdfType: %s.\nType from default value: %s.\n", v19, v20, v10, v12, v13, v17, v21);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    result = 0;
    *a3 = v23;
    *(a3 + 16) = v24;
  }

  else
  {
    result = 0;
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A406654(_Unwind_Exception *a1)
{
  v2 = *(v1 - 64);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::NdrRegistry *pxrInternal__aapl__pxrReserved__::NdrRegistry::NdrRegistry(pxrInternal__aapl__pxrReserved__::NdrRegistry *this)
{
  *this = 0;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 9) = 850045863;
  *(this + 8) = 0;
  v2 = this + 136;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 64) = 1065353216;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 74) = 1065353216;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = this + 312;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindAndInstantiateParserPlugins(this);
  pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindAndInstantiateDiscoveryPlugins(this);
  pxrInternal__aapl__pxrReserved__::NdrRegistry::_RunDiscoveryPlugins(this, v2);
  return this;
}

void sub_29A40675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v16 = v15;
  sub_29A40AF30(v14);
  sub_29A1602D4(v10 + 304, *(v10 + 312));
  sub_29A0EB4E8(v13);
  sub_29A40AE90(v10 + 224);
  a10 = v16;
  sub_29A40ADD0(&a10);
  sub_29A155EF4(v10 + 160);
  sub_29A40AD4C(&a10);
  std::mutex::~mutex(v12);
  std::mutex::~mutex(v11);
  sub_29A0F6078(v10, v18);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindAndInstantiateParserPlugins(pxrInternal__aapl__pxrReserved__::NdrRegistry *this)
{
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_SKIP_PARSER_PLUGIN_DISCOVERY);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  if (!*v2)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = v6;
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v4, &v5);
    pxrInternal__aapl__pxrReserved__::NdrRegistry::_InstantiateParserPlugins(this, &v5);
    sub_29A082B84(&v5, v6[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindAndInstantiateDiscoveryPlugins(char **this)
{
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_SKIP_DISCOVERY_PLUGIN_DISCOVERY);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  if (!*v2)
  {
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(this);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetAllDerivedTypes(*v4, &v28);
    v5 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_DISABLE_PLUGINS);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
    }

    if (*(v5 + 23) < 0)
    {
      sub_29A008D14(__p, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      v27 = *(v5 + 16);
      *__p = v6;
    }

    pxrInternal__aapl__pxrReserved__::TfStringTokenizeToSet(__p, ",", v24);
    v7 = v28;
    if (v28 != v29)
    {
      do
      {
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v7 + 4));
        if (&v25 == sub_29A01BCCC(v24, TypeName))
        {
          if (sub_29A4043D8(0))
          {
            v12 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName((v7 + 4));
            if (*(v12 + 23) >= 0)
            {
              v15 = v12;
            }

            else
            {
              v15 = *v12;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found NdrDiscoveryPlugin '%s'\n", v13, v14, v15);
          }

          v16 = sub_29A407158((v7 + 4));
          if (v16 || (v22[0] = "ndr/registry.cpp", v22[1] = "_FindAndInstantiateDiscoveryPlugins", v22[2] = 911, v22[3] = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindAndInstantiateDiscoveryPlugins()", v23 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v22, "pluginFactory", 0) & 1) != 0))
          {
            (*(*v16 + 16))(v22, v16);
            v17 = this[18];
            if (v17 >= this[19])
            {
              v18 = sub_29A40B48C(this + 17, v22);
            }

            else
            {
              *v17 = v22[0];
              v18 = (v17 + 8);
              v22[0] = 0;
            }

            this[18] = v18;
            sub_29A40B45C();
          }
        }

        else if (sub_29A4043D8(0))
        {
          if (*(TypeName + 23) >= 0)
          {
            v11 = TypeName;
          }

          else
          {
            v11 = *TypeName;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PXR_NDR_DISABLE_PLUGINS] Disabled NdrDiscoveryPlugin '%s'\n", v9, v10, v11);
        }

        v19 = v7[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v7[2];
            v21 = *v20 == v7;
            v7 = v20;
          }

          while (!v21);
        }

        v7 = v20;
      }

      while (v20 != v29);
    }

    sub_29A019EE8(v24, v25);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A082B84(&v28, v29[0]);
  }
}

void sub_29A406B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26)
{
  sub_29A019EE8(&a16, a17);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29A082B84(&a25, a26);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::_RunDiscoveryPlugins(uint64_t a1, uint64_t a2)
{
  v10 = (*(a2 + 8) - *a2) >> 3;
  sub_29A40B950(v9, v10);
  v8[0] = &v10;
  v8[1] = v9;
  v8[2] = a2;
  v8[3] = a1;
  v11[0] = &unk_2A204DFC0;
  v11[1] = v8;
  tbb::interface7::internal::isolate_within_arena(v11, 0);
  std::mutex::lock((a1 + 8));
  v4 = v9[0];
  v5 = v9[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = v4[1];
    while (v6 != v7)
    {
      pxrInternal__aapl__pxrReserved__::NdrRegistry::_AddDiscoveryResultNoLock(a1, v6);
      v6 += 27;
    }

    v4 += 3;
  }

  std::mutex::unlock((a1 + 8));
  v8[0] = v9;
  sub_29A40B9F4(v8);
}

void sub_29A406CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_29A40B9F4(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::~NdrRegistry(pxrInternal__aapl__pxrReserved__::NdrRegistry *this)
{
  sub_29A40AF30(this + 328);
  sub_29A1602D4(this + 304, *(this + 39));
  sub_29A0EB4E8(this + 264);
  sub_29A40AE90(this + 224);
  v3 = (this + 200);
  sub_29A40ADD0(&v3);
  sub_29A155EF4(this + 160);
  v3 = (this + 136);
  sub_29A40AD4C(&v3);
  std::mutex::~mutex((this + 72));
  std::mutex::~mutex((this + 8));
  sub_29A0F6078(this, v2);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 72));
  if (*(a1 + 352))
  {
    v8[0] = "ndr/registry.cpp";
    v8[1] = "SetExtraDiscoveryPlugins";
    v8[2] = 291;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(DiscoveryPluginRefPtrVec)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "SetExtraDiscoveryPlugins() cannot be called after nodes have been parsed; ignoring.");
    std::mutex::unlock((a1 + 72));
  }

  else
  {
    std::mutex::unlock((a1 + 72));
    pxrInternal__aapl__pxrReserved__::NdrRegistry::_RunDiscoveryPlugins(a1, a2);
    v4 = *(a1 + 144);
    v5 = *a2;
    v6 = a2[1];
    v7 = (v6 - *a2) >> 3;

    sub_29A40B030((a1 + 136), v4, v5, v6, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(uint64_t a1, const std::type_info *a2)
{
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v5 = a2->__vftable;
  type_name = a2->__type_name;
  if (a2->__vftable == type_name)
  {
LABEL_13:
    v30 = 0;
    v15 = 0uLL;
    v29 = 0u;
    v16 = v36;
    if (v36 == v37)
    {
      v23 = 0;
    }

    else
    {
      do
      {
        v17 = sub_29A407158((v16 + 4));
        if (v17 || (v31 = "ndr/registry.cpp", v32 = "SetExtraDiscoveryPlugins", v33 = 325, v34 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(const std::vector<TfType> &)", v35 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "pluginFactory", 0) & 1) != 0))
        {
          (*(*v17 + 16))(&v31, v17);
          v18 = *(&v29 + 1);
          if (*(&v29 + 1) >= v30)
          {
            v19 = sub_29A40B48C(&v29, &v31);
          }

          else
          {
            **(&v29 + 1) = v31;
            v19 = v18 + 8;
            v31 = 0;
          }

          *(&v29 + 1) = v19;
          sub_29A40B45C();
        }

        v20 = v16[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v16[2];
            v22 = *v21 == v16;
            v16 = v21;
          }

          while (!v22);
        }

        v16 = v21;
      }

      while (v21 != v37);
      v15 = v29;
      v23 = v30;
    }

    v27 = v15;
    v28 = v23;
    v30 = 0;
    v29 = 0uLL;
    pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(a1, &v27);
    v31 = &v27;
    sub_29A40AD4C(&v31);
    v31 = &v29;
    sub_29A40AD4C(&v31);
  }

  else
  {
    v7 = v4;
    while (1)
    {
      if (!pxrInternal__aapl__pxrReserved__::TfType::IsA(v5, *v7))
      {
        v31 = "ndr/registry.cpp";
        v32 = "SetExtraDiscoveryPlugins";
        v33 = 313;
        v34 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraDiscoveryPlugins(const std::vector<TfType> &)";
        v35 = 0;
        TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v5);
        v25 = *(TypeName + 23);
        v24 = *TypeName;
        v26 = TypeName;
        v9 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v7);
        v12 = v26;
        if (v25 < 0)
        {
          v12 = v24;
        }

        v13 = *(v9 + 23) >= 0 ? v9 : *v9;
        v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type %s is not a %s", v10, v11, v12, v13);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "type.IsA(discoveryPluginType)", v14) & 1) == 0)
        {
          break;
        }
      }

      sub_29A0F2BE4(&v36, v5, v5);
      v5 = (v5 + 8);
      if (v5 == type_name)
      {
        goto LABEL_13;
      }
    }
  }

  sub_29A082B84(&v36, v37[0]);
}

void sub_29A4070F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a19;
  sub_29A40AD4C(&a22);
  sub_29A082B84(v22 - 112, *(v22 - 104));
  _Unwind_Resume(a1);
}

void *sub_29A407158(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::AddDiscoveryResult(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 8));
  pxrInternal__aapl__pxrReserved__::NdrRegistry::_AddDiscoveryResultNoLock(a1, a2);

  std::mutex::unlock((a1 + 8));
}

uint64_t *pxrInternal__aapl__pxrReserved__::NdrRegistry::_AddDiscoveryResultNoLock(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29A40BA68((a1 + 224), a2, a2);
  v5 = v3 + 3;
  sub_29A40BCB4((a1 + 264), (v3 + 6), &v5);
  return sub_29A372EA4(a1 + 304, v3 + 11, v3 + 11);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::AddDiscoveryResult(uint64_t a1, uint64_t *a2)
{
  sub_29A4098D8(v4, a2);
  pxrInternal__aapl__pxrReserved__::NdrRegistry::AddDiscoveryResult(a1, v4);
  return sub_29A4033A8(v4);
}

void sub_29A4072CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4033A8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraParserPlugins(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfType **a2)
{
  std::mutex::lock((a1 + 72));
  if (*(a1 + 352))
  {
    v21 = "ndr/registry.cpp";
    v22 = "SetExtraParserPlugins";
    v23 = 359;
    v24 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraParserPlugins(const std::vector<TfType> &)";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "SetExtraParserPlugins() cannot be called after nodes have been parsed; ignoring.");
    std::mutex::unlock((a1 + 72));
  }

  else
  {
    std::mutex::unlock((a1 + 72));
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v6 = *a2;
    v7 = a2[1];
    if (*a2 == v7)
    {
LABEL_15:
      pxrInternal__aapl__pxrReserved__::NdrRegistry::_InstantiateParserPlugins(a1, &v19);
    }

    else
    {
      v8 = v5;
      while (1)
      {
        if (!pxrInternal__aapl__pxrReserved__::TfType::IsA(v6, *v8))
        {
          v21 = "ndr/registry.cpp";
          v22 = "SetExtraParserPlugins";
          v23 = 371;
          v24 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::SetExtraParserPlugins(const std::vector<TfType> &)";
          v25 = 0;
          TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
          v17 = *(TypeName + 23);
          v16 = *TypeName;
          v18 = TypeName;
          v10 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
          v13 = v18;
          if (v17 < 0)
          {
            v13 = v16;
          }

          v14 = *(v10 + 23) >= 0 ? v10 : *v10;
          v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type %s is not a %s", v11, v12, v13, v14);
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "type.IsA(parserPluginType)", v15) & 1) == 0)
          {
            break;
          }
        }

        sub_29A0F2BE4(&v19, v6, v6);
        v6 = (v6 + 8);
        if (v6 == v7)
        {
          goto LABEL_15;
        }
      }
    }

    sub_29A082B84(&v19, v20[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::_InstantiateParserPlugins(void *a1, uint64_t a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::PXR_NDR_DISABLE_PLUGINS);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  if (*(v4 + 23) < 0)
  {
    sub_29A008D14(__p, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v60 = *(v4 + 16);
    *__p = v5;
  }

  pxrInternal__aapl__pxrReserved__::TfStringTokenizeToSet(__p, ",", v57);
  sub_29A40B774(&v55, *a2, (a2 + 8));
  v6 = 126 - 2 * __clz((v56 - v55) >> 3);
  if (v56 == v55)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_29A1D2EA8(v55, v56, v7, 1);
  v8 = v55;
  v53 = v56;
  if (v55 != v56)
  {
    v52 = (a1 + 25);
    do
    {
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
      if (&v58 == sub_29A01BCCC(v57, TypeName))
      {
        if (sub_29A4043D8(0))
        {
          v13 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
          if (*(v13 + 23) >= 0)
          {
            v16 = v13;
          }

          else
          {
            v16 = *v13;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found NdrParserPlugin '%s' for discovery types:\n", v14, v15, v16);
        }

        v17 = sub_29A4097DC(v8);
        if (v17 || (v61 = "ndr/registry.cpp", v62 = "_InstantiateParserPlugins", v63 = 967, v64 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::_InstantiateParserPlugins(const std::set<TfType> &)", LOBYTE(v65) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v61, "pluginFactory", 0) & 1) != 0))
        {
          v18 = (*(*v17 + 16))(v17);
          v19 = v18;
          v21 = a1[26];
          v20 = a1[27];
          if (v21 >= v20)
          {
            v23 = *v52;
            v24 = v21 - *v52;
            v25 = v24 >> 3;
            v26 = (v24 >> 3) + 1;
            if (v26 >> 61)
            {
              sub_29A00C9A4();
            }

            v27 = v20 - v23;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
            v29 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            v65 = a1 + 25;
            if (v29)
            {
              v30 = sub_29A00C9BC(v52, v29);
              v29 = v31;
              v23 = a1[25];
              v24 = a1[26] - v23;
            }

            else
            {
              v30 = 0;
            }

            v32 = &v30[8 * v25];
            v33 = &v30[8 * v29];
            v34 = &v32[-(v24 >> 3)];
            *v32 = v19;
            v22 = v32 + 1;
            memcpy(v34, v23, v24);
            v35 = a1[25];
            a1[25] = v34;
            a1[26] = v22;
            v36 = a1[27];
            a1[27] = v33;
            v63 = v35;
            v64 = v36;
            v61 = v35;
            v62 = v35;
            sub_29A40B8A4(&v61);
          }

          else
          {
            *v21 = v18;
            v22 = v21 + 1;
          }

          a1[26] = v22;
          v37 = (*(*v19 + 24))(v19);
          v39 = *v37;
          v38 = *(v37 + 8);
          while (v39 != v38)
          {
            if (sub_29A4043D8(0))
            {
              v42 = *v39 & 0xFFFFFFFFFFFFFFF8;
              if (v42)
              {
                v43 = (v42 + 16);
                if (*(v42 + 39) < 0)
                {
                  v43 = *v43;
                }
              }

              else
              {
                v43 = "";
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - %s\n", v40, v41, v43);
            }

            v61 = *v39;
            if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v61 &= 0xFFFFFFFFFFFFFFF8;
            }

            v62 = v19;
            v44 = sub_29A162678((a1 + 20), &v61, &v61);
            if ((v61 & 7) != 0)
            {
              atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v45 & 1) == 0)
            {
              v54 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(*(*v44[3] - 8), v45);
              v61 = "ndr/registry.cpp";
              v62 = "_InstantiateParserPlugins";
              v63 = 984;
              v64 = "void pxrInternal__aapl__pxrReserved__::NdrRegistry::_InstantiateParserPlugins(const std::set<TfType> &)";
              LOBYTE(v65) = 0;
              v46 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
              if (*(v46 + 23) >= 0)
              {
                v47 = v46;
              }

              else
              {
                v47 = *v46;
              }

              v48 = *v39 & 0xFFFFFFFFFFFFFFF8;
              if (v48)
              {
                v49 = (v48 + 16);
                if (*(v48 + 39) < 0)
                {
                  v49 = *v49;
                }
              }

              else
              {
                v49 = "";
              }

              v50 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v54);
              if (*(v50 + 23) >= 0)
              {
                v51 = v50;
              }

              else
              {
                v51 = *v50;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v61, 1, "Plugin type %s claims discovery type '%s' but that's already claimed by type %s", v47, v49, v51);
            }

            ++v39;
          }
        }
      }

      else if (sub_29A4043D8(0))
      {
        if (*(TypeName + 23) >= 0)
        {
          v12 = TypeName;
        }

        else
        {
          v12 = *TypeName;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PXR_NDR_DISABLE_PLUGINS] Disabled NdrParserPlugin '%s'\n", v10, v11, v12);
      }

      v8 = (v8 + 8);
    }

    while (v8 != v53);
    v8 = v55;
  }

  if (v8)
  {
    v56 = v8;
    operator delete(v8);
  }

  sub_29A019EE8(v57, v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A407994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, char *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29A019EE8(&a20, a21);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeFromAsset(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3, uint64_t *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v48);
  if (v44 < 0)
  {
    operator delete(__p);
  }

  v11 = sub_29A160470(a1 + 20, &v48);
  if (v11)
  {
    __p = 0;
    v43 = 0;
    v12 = sub_29A2158B8(&__p, a2, a2 + 24);
    v13 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * __p));
    for (i = *(a3 + 16); i; i = *i)
    {
      if ((i[2] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((i[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      v43 = 1;
      __p = v13;
      v12 = sub_29A2158B8(&__p, EmptyString, (i + 3));
      v13 = bswap64(0x9E3779B97F4A7C55 * __p);
    }

    std::to_string(&__dst, v13);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v19 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v19)
    {
      v20 = (v19 + 16);
      if (*(v19 + 39) < 0)
      {
        v20 = *v20;
      }
    }

    else
    {
      v20 = "";
    }

    v26 = *a5 & 0xFFFFFFFFFFFFFFF8;
    if (v26)
    {
      v27 = (v26 + 16);
      if (*(v26 + 39) < 0)
      {
        v27 = *v27;
      }
    }

    else
    {
      v27 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s<%s><%s>", v16, v17, p_dst, v20, v27);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v47);
    if (v44 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v28 = a5;
    if (!*a5)
    {
      v28 = (*(*v11[3] + 32))(v11[3]);
    }

    sub_29A3AA17C(&v45, &v47, v28);
    NodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifierAndType(a1, &v47, a5);
    if (!NodeByIdentifierAndType)
    {
      v30 = *(a2 + 47);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(a2 + 4);
      }

      v31 = v30 == 0;
      v32 = (a2 + 24);
      if (v31)
      {
        v32 = a2;
      }

      if (*(v32 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v32, v32[1]);
      }

      else
      {
        __dst = *v32;
      }

      v41 = 0;
      v40 = 0;
      pxrInternal__aapl__pxrReserved__::TfGetBaseName(&__dst, &v39);
      v38 = 0;
      sub_29A008E78(v36, "");
      sub_29A008E78(v34, "");
      sub_29A404780(&__p, &v47, &v40, &v39, &v38, &v48, v28, a2, &__dst, v36, a3, v34, a4);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      NodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_ParseNodeFromAssetOrSourceCode(a1, v11[3], &__p);
      sub_29A4033A8(&__p);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (sub_29A4043D8(1))
    {
      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v24 = v48 & 0xFFFFFFFFFFFFFFF8;
      if ((v48 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v25 = (v24 + 16);
        if (*(v24 + 39) < 0)
        {
          v25 = *v25;
        }
      }

      else
      {
        v25 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Encountered a asset @%s@ of type [%s], but a parser for the type could not be found; ignoring.\n", v21, v22, v23, v25);
    }

    NodeByIdentifierAndType = 0;
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return NodeByIdentifierAndType;
}

void sub_29A407E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v43 = *(v42 - 136);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(v42 - 144);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(v42 - 128);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(v42 - 120);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifierAndType(pxrInternal__aapl__pxrReserved__::NdrRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  std::mutex::lock((this + 8));
  v7 = sub_29A40B5A0(this + 28, a2);
  if (v7 == v6)
  {
    NodeInIdentifierRangeWithSourceType = 0;
  }

  else
  {
    NodeInIdentifierRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInIdentifierRangeWithSourceType(this, v7, v6, a3);
  }

  std::mutex::unlock((this + 8));
  return NodeInIdentifierRangeWithSourceType;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_ParseNodeFromAssetOrSourceCode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(*a2 + 16))(&v10, a2, a3);
  if (sub_29A408624(&v10, a3))
  {
    sub_29A3AA17C(&v8, a3, a3 + 8);
    std::mutex::lock((a1 + 8));
    pxrInternal__aapl__pxrReserved__::NdrRegistry::_AddDiscoveryResultNoLock(a1, a3);
    inserted = pxrInternal__aapl__pxrReserved__::NdrRegistry::_InsertNodeInCache(a1, &v8, &v10);
    std::mutex::unlock((a1 + 8));
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    inserted = 0;
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return inserted;
}

void sub_29A40816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeFromSourceCode(pxrInternal__aapl__pxrReserved__::NdrRegistry *a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  if (v5 == v6)
  {
    goto LABEL_53;
  }

  v10 = 0;
  do
  {
    if ((*a3 ^ *(*(**v5 + 32))()) <= 7)
    {
      v10 = *v5;
    }

    ++v5;
  }

  while (v5 != v6);
  if (!v10)
  {
LABEL_53:
    if (sub_29A4043D8(1))
    {
      v22 = *a3 & 0xFFFFFFFFFFFFFFF8;
      if (v22)
      {
        v23 = (v22 + 16);
        if (*(v22 + 39) < 0)
        {
          v23 = *v23;
        }
      }

      else
      {
        v23 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Encountered source code of type [%s], but a parser for the type could not be found; ignoring.\n", v20, v21, v23);
    }

    return 0;
  }

  else
  {
    v39.__r_.__value_.__r.__words[0] = 0;
    v39.__r_.__value_.__s.__data_[8] = 0;
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    appended = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v39, v12, v13);
    v15 = bswap64(0x9E3779B97F4A7C55 * v39.__r_.__value_.__r.__words[0]);
    for (i = *(a4 + 16); i; i = *i)
    {
      if ((i[2] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((i[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(appended);
      }

      v39.__r_.__value_.__s.__data_[8] = 1;
      v39.__r_.__value_.__r.__words[0] = v15;
      appended = sub_29A2158B8(&v39, EmptyString, (i + 3));
      v15 = bswap64(0x9E3779B97F4A7C55 * v39.__r_.__value_.__r.__words[0]);
    }

    std::to_string(&v39, v15);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v40);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    NodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifierAndType(a1, &v40, a3);
    if (!NodeByIdentifierAndType)
    {
      v38 = 0;
      v37 = 0;
      if ((v40 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v19 = ((v40 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(0);
      }

      v36 = 0;
      sub_29A008E78(&v27, "");
      sub_29A008E78(v34, "");
      __p = 0uLL;
      v33 = 0;
      v31 = 0;
      sub_29A404780(&v39, &v40, &v37, v19, &v36, a3, a3, &v27, v34, a2, a4, &__p, &v31);
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      NodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_ParseNodeFromAssetOrSourceCode(a1, v10, &v39);
      if (!NodeByIdentifierAndType)
      {
        *&v27 = "ndr/registry.cpp";
        *(&v27 + 1) = "GetNodeFromSourceCode";
        v28 = 493;
        v29 = "NdrNodeConstPtr pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeFromSourceCode(const std::string &, const TfToken &, const NdrTokenMap &)";
        v30 = 0;
        v24 = *a3 & 0xFFFFFFFFFFFFFFF8;
        if (v24)
        {
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }
        }

        else
        {
          v25 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 3, "Could not create node for the given source code of source type '%s'.", v25);
      }

      sub_29A4033A8(&v39);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return NodeByIdentifierAndType;
}

void sub_29A408558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_29A4033A8(&a38);
  v45 = *(v43 - 88);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A408624(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v47 = "ndr/registry.cpp";
    v48 = "_ValidateNode";
    v49 = 196;
    v50 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValidateNode(const NdrNodeUniquePtr &, const NdrNodeDiscoveryResult &)";
    v16 = *(a2 + 96);
    v51 = 0;
    if (*(a2 + 119) >= 0)
    {
      v16 = (a2 + 96);
    }

    v17 = *(a2 + 56) & 0xFFFFFFFFFFFFFFF8;
    if (v17)
    {
      v18 = (v17 + 16);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }
    }

    else
    {
      v18 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Parser for asset @%s@ of type %s returned null", v16, v18);
    return 0;
  }

  v5 = (*(*v4 + 16))(v4);
  v6 = *a1;
  if (v5)
  {
    v7 = *(v6 + 16);
    if ((*a2 ^ v7) > 7)
    {
      goto LABEL_24;
    }

    v8 = *(v6 + 63);
    if (v8 >= 0)
    {
      v9 = *(v6 + 63);
    }

    else
    {
      v9 = *(v6 + 48);
    }

    v10 = *(a2 + 47);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 32);
    }

    if (v9 != v10 || (v8 >= 0 ? (v12 = (v6 + 40)) : (v12 = *(v6 + 40)), v11 >= 0 ? (v13 = (a2 + 24)) : (v13 = *(a2 + 24)), (v5 = memcmp(v12, v13, v9), v5) || (*(a2 + 8) == *(v6 + 24) ? (v14 = *(a2 + 12) == *(v6 + 28)) : (v14 = 0), !v14 || (*(a2 + 48) ^ *(v6 + 64)) > 7 || (*(a2 + 64) ^ *(v6 + 80)) >= 8)))
    {
LABEL_24:
      v47 = "ndr/registry.cpp";
      v48 = "_ValidateNode";
      v49 = 225;
      v50 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValidateNode(const NdrNodeUniquePtr &, const NdrNodeDiscoveryResult &)";
      v51 = 0;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v7 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v26 = *(*a1 + 32);
      v44 = *(*a1 + 24);
      v45 = v26;
      v27 = &v46;
      pxrInternal__aapl__pxrReserved__::NdrVersion::GetString(&v44, &v46);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v46.__r_.__value_.__r.__words[0];
      }

      v29 = *a1;
      v30 = (*a1 + 40);
      if (*(*a1 + 63) < 0)
      {
        v30 = *v30;
      }

      v31 = *(v29 + 64) & 0xFFFFFFFFFFFFFFF8;
      if (v31)
      {
        v32 = (v31 + 16);
        if (*(v31 + 39) < 0)
        {
          v32 = *v32;
        }
      }

      else
      {
        v32 = "";
      }

      v33 = *(v29 + 80) & 0xFFFFFFFFFFFFFFF8;
      if (v33)
      {
        v34 = (v33 + 16);
        if (*(v33 + 39) < 0)
        {
          v34 = *v34;
        }
      }

      else
      {
        v34 = "";
      }

      if (*(a2 + 119) >= 0)
      {
        v35 = (a2 + 96);
      }

      else
      {
        v35 = *(a2 + 96);
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v36 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
      }

      if (*(v36 + 23) < 0)
      {
        v36 = *v36;
      }

      pxrInternal__aapl__pxrReserved__::NdrVersion::GetString((a2 + 8), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (*(a2 + 47) >= 0)
      {
        v38 = (a2 + 24);
      }

      else
      {
        v38 = *(a2 + 24);
      }

      v39 = *(a2 + 48) & 0xFFFFFFFFFFFFFFF8;
      if (v39)
      {
        v40 = (v39 + 16);
        if (*(v39 + 39) < 0)
        {
          v40 = *v40;
        }
      }

      else
      {
        v40 = "";
      }

      v41 = *(a2 + 64) & 0xFFFFFFFFFFFFFFF8;
      if (v41)
      {
        v42 = (v41 + 16);
        if (*(v41 + 39) < 0)
        {
          v42 = *v42;
        }
      }

      else
      {
        v42 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 3, "Parsed node %s:%s:%s:%s:%s doesn't match discovery result created for asset @%s@ - %s:%s:%s:%s:%s (identifier:version:name:family:source type); discarding.", EmptyString, v27, v30, v32, v34, v35, v36, p_p, v38, v40, v42);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      return 0;
    }
  }

  v47 = v6;
  InputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(v6);
  v20 = *InputNames;
  v21 = *(InputNames + 8);
  while (v20 != v21)
  {
    v46.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::NdrNode::GetInput(*a1, v20);
    sub_29A409B9C(&v47, &v46);
    ++v20;
  }

  OutputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetOutputNames(*a1);
  v23 = *OutputNames;
  v24 = *(OutputNames + 8);
  while (v23 != v24)
  {
    v46.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::NdrNode::GetOutput(*a1, v23);
    sub_29A409B9C(&v47, &v46);
    ++v23;
  }

  return 1;
}

void sub_29A408A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_InsertNodeInCache(uint64_t a1, void *a2, uint64_t *a3)
{
  std::mutex::lock((a1 + 72));
  v6 = sub_29A40BF08(a1 + 328, a2, a2, a3)[4];
  std::mutex::unlock((a1 + 72));
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetSearchURIs@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 136);
  if (v2 != *(this + 144))
  {
    v3 = sub_29A408BE8(v2);
    (*(*v3 + 24))(v3);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  return this;
}

void sub_29A408BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A408BE8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeIdentifiers(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  std::mutex::lock((a1 + 8));
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_29A1D7F98(a4, *(a1 + 248));
  for (i = *(a1 + 240); i; i = *i)
  {
    if (!*a2 || (i[9] ^ *a2) <= 7) && (a3 || (i[5]))
    {
      v9 = a4[1];
      if (*a4 == v9 || (i[3] ^ *(v9 - 8)) >= 8)
      {
        sub_29A1D8028(a4, i + 3);
      }
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_29A408D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  std::mutex::unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeNames(pxrInternal__aapl__pxrReserved__::NdrRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((this + 8));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_29A0925E4(a3, *(this + 36));
  for (i = *(this + 35); i; i = *i)
  {
    v7 = i[5];
    if (!*a2 || (*(v7 + 48) ^ *a2) <= 7)
    {
      v8 = *(a3 + 8);
      if (*a3 == v8)
      {
        goto LABEL_18;
      }

      v9 = *(v8 - 1);
      if (v9 >= 0)
      {
        v10 = *(v8 - 1);
      }

      else
      {
        v10 = *(v8 - 16);
      }

      v11 = *(v7 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 32);
      }

      if (v10 != v11 || ((v15 = *(v8 - 24), v13 = (v8 - 24), v14 = v15, v9 >= 0) ? (v16 = v13) : (v16 = v14), v12 >= 0 ? (v17 = (v7 + 24)) : (v17 = *(v7 + 24)), memcmp(v16, v17, v10)))
      {
LABEL_18:
        sub_29A070BA0(a3);
      }
    }
  }

  std::mutex::unlock((this + 8));
}

void sub_29A408E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  std::mutex::unlock((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifier(uint64_t a1, void *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  v6 = sub_29A40B5A0((a1 + 224), a2);
  v8 = v7;
  if (v6 == v7)
  {
LABEL_5:
    NodeInIdentifierRangeWithSourceType = 0;
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 8);
    if (*a3 == v10)
    {
      while (1)
      {
        NodeInIdentifierRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(a1, v6 + 3);
        if (NodeInIdentifierRangeWithSourceType)
        {
          break;
        }

        v6 = *v6;
        if (v6 == v8)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      while (1)
      {
        NodeInIdentifierRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInIdentifierRangeWithSourceType(a1, v6, v8, v9);
        if (NodeInIdentifierRangeWithSourceType)
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  std::mutex::unlock((a1 + 8));
  return NodeInIdentifierRangeWithSourceType;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(uint64_t a1, uint64_t *a2)
{
  sub_29A3AA17C(&v16, a2, a2 + 8);
  NodeInCache = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindNodeInCache(a1, &v16);
  if (!NodeInCache)
  {
    v6 = sub_29A160470((a1 + 160), a2 + 7);
    if (v6)
    {
      (*(*v6[3] + 16))(&v15);
      if (sub_29A408624(&v15, a2))
      {
        NodeInCache = pxrInternal__aapl__pxrReserved__::NdrRegistry::_InsertNodeInCache(a1, &v16, &v15);
      }

      else
      {
        NodeInCache = 0;
      }

      v11 = v15;
      v15 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    else
    {
      if (sub_29A4043D8(1))
      {
        v9 = a2[7] & 0xFFFFFFFFFFFFFFF8;
        if (v9)
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

        v14 = a2[3];
        v13 = a2 + 3;
        v12 = v14;
        if (*(v13 + 23) >= 0)
        {
          v12 = v13;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Encountered a node of type [%s], with name [%s], but a parser for that type could not be found; ignoring.\n", v7, v8, v10, v12);
      }

      NodeInCache = 0;
    }
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return NodeInCache;
}

void sub_29A4090F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInIdentifierRangeWithSourceType(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 == a3)
  {
    return 0;
  }

  v7 = a2;
  while (1)
  {
    if ((*a4 ^ v7[11]) <= 7)
    {
      result = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(a1, v7 + 3);
      if (result)
      {
        break;
      }
    }

    v7 = *v7;
    if (v7 == a3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 8));
  v8 = sub_29A1FF668((a1 + 264), a2);
  v10 = v9;
  if (v8 == v9)
  {
LABEL_10:
    NodeInNameRangeWithSourceType = 0;
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    if (*a3 == v12)
    {
      while (1)
      {
        v14 = v8[5];
        if (a4 || (v14[2] & 1) != 0)
        {
          NodeInNameRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(a1, v14);
          if (NodeInNameRangeWithSourceType)
          {
            break;
          }
        }

        v8 = *v8;
        if (v8 == v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      while (1)
      {
        NodeInNameRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInNameRangeWithSourceType(a1, v8, v10, v11, a4);
        if (NodeInNameRangeWithSourceType)
        {
          break;
        }

        if (++v11 == v12)
        {
          goto LABEL_10;
        }
      }
    }
  }

  std::mutex::unlock((a1 + 8));
  return NodeInNameRangeWithSourceType;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInNameRangeWithSourceType(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v9 = a2;
  while (1)
  {
    v11 = v9[5];
    if (*a4 ^ *(v11 + 64)) <= 7 && (a5 || (*(v11 + 16)))
    {
      result = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(a1, v11);
      if (result)
      {
        break;
      }
    }

    v9 = *v9;
    if (v9 == a3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByNameAndType(uint64_t a1, unsigned __int8 *a2, void *a3, int a4)
{
  std::mutex::lock((a1 + 8));
  v9 = sub_29A1FF668((a1 + 264), a2);
  if (v9 == v8)
  {
    NodeInNameRangeWithSourceType = 0;
  }

  else
  {
    NodeInNameRangeWithSourceType = pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetNodeInNameRangeWithSourceType(a1, v9, v8, a3, a4);
  }

  std::mutex::unlock((a1 + 8));
  return NodeInNameRangeWithSourceType;
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByIdentifier(pxrInternal__aapl__pxrReserved__::NdrRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((this + 8));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_29A40B5A0(this + 28, a2);
  v8 = v7;
  while (v6 != v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(this, v6 + 3);
    if (v9)
    {
      sub_29A0A71C8(a3, &v9);
    }

    v6 = *v6;
  }

  std::mutex::unlock((this + 8));
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByName(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  std::mutex::lock((a1 + 8));
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = sub_29A1FF668((a1 + 264), a2);
  v10 = v9;
  while (v8 != v10)
  {
    v11 = v8[5];
    if (a3 || (v11[2] & 1) != 0)
    {
      v12 = pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(a1, v11);
      if (v12)
      {
        sub_29A0A71C8(a4, &v12);
      }
    }

    v8 = *v8;
  }

  std::mutex::unlock((a1 + 8));
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByFamily(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v13 = a3;
  std::mutex::lock((a1 + 8));
  v11 = (a1 + 72);
  v12 = 1;
  std::mutex::lock((a1 + 72));
  v7 = *(a1 + 352);
  if (v7 != *(a1 + 248))
  {
    std::mutex::unlock((a1 + 72));
    v12 = 0;
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = &v13;
    v14[0] = &unk_2A204DDF0;
    v14[1] = v10;
    tbb::interface7::internal::isolate_within_arena(v14, 0);
    sub_29A409718(&v11);
    v7 = *(a1 + 352);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_29A08AF9C(a4, v7);
  for (i = *(a1 + 344); i; i = *i)
  {
    v9 = i[4];
    if (!*a2 || (*(v9 + 64) ^ *a2) <= 7) && (v13 || (*(v9 + 32)))
    {
      v10[0] = i[4];
      sub_29A0A71C8(a4, v10);
    }
  }

  if (v12 == 1)
  {
    std::mutex::unlock(v11);
  }

  std::mutex::unlock((a1 + 8));
}

void sub_29A4096C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, char a13)
{
  if (a13 == 1)
  {
    std::mutex::unlock(a12);
  }

  std::mutex::unlock((v13 + 8));
  _Unwind_Resume(a1);
}

void sub_29A409718(uint64_t a1)
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
  pxrInternal__aapl__pxrReserved__::NdrRegistry::GetAllNodeSourceTypes(v3, v4);
}

void pxrInternal__aapl__pxrReserved__::NdrRegistry::GetAllNodeSourceTypes(pxrInternal__aapl__pxrReserved__::NdrRegistry *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 8));
  sub_29A40B5F0(a2, *(this + 38), this + 39);

  std::mutex::unlock((this + 8));
}

void *sub_29A4097DC(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindNodeInCache(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 72));
  v4 = sub_29A40BE18((a1 + 328), a2);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 72));
  return v5;
}

void *pxrInternal__aapl__pxrReserved__::NdrRegistry::_GetParserForDiscoveryType(uint64_t a1, void *a2)
{
  result = sub_29A16039C((a1 + 160), a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t sub_29A4098D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[1];
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 8) = v5;
  if (*(a2 + 47) < 0)
  {
    sub_29A008D14((a1 + 24), a2[3], a2[4]);
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 40) = a2[5];
    *(a1 + 24) = v6;
  }

  v7 = a2[6];
  *(a1 + 48) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = a2[7];
  *(a1 + 56) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = a2[8];
  *(a1 + 64) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 95) < 0)
  {
    sub_29A008D14((a1 + 72), a2[9], a2[10]);
  }

  else
  {
    v10 = *(a2 + 9);
    *(a1 + 88) = a2[11];
    *(a1 + 72) = v10;
  }

  if (*(a2 + 119) < 0)
  {
    sub_29A008D14((a1 + 96), a2[12], a2[13]);
  }

  else
  {
    v11 = *(a2 + 6);
    *(a1 + 112) = a2[14];
    *(a1 + 96) = v11;
  }

  if (*(a2 + 143) < 0)
  {
    sub_29A008D14((a1 + 120), a2[15], a2[16]);
  }

  else
  {
    v12 = *(a2 + 15);
    *(a1 + 136) = a2[17];
    *(a1 + 120) = v12;
  }

  sub_29A404A70(a1 + 144, (a2 + 18));
  if (*(a2 + 207) < 0)
  {
    sub_29A008D14((a1 + 184), a2[23], a2[24]);
  }

  else
  {
    v13 = *(a2 + 23);
    *(a1 + 200) = a2[25];
    *(a1 + 184) = v13;
  }

  v14 = a2[26];
  *(a1 + 208) = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 208) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_29A409AC0(_Unwind_Exception *a1)
{
  sub_29A40349C(v1 + 144);
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 56);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(v1 + 48);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29A409B9C(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  if ((pxrInternal__aapl__pxrReserved__::NdrRegistry_ValidateProperty(a1, a2, &__p) & 1) == 0)
  {
    v2[0] = "ndr/registry.cpp";
    v2[1] = "_ValidateProperty";
    v2[2] = 183;
    v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValidateProperty(const NdrNodeConstPtr &, const NdrPropertyConstPtr &)";
    v3 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v2, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A409C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A409C3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(*v4 + 240);
  v11 = *(v4 + 1);
  v12 = v5;
  v17[0] = 0;
  v18 = 65539;
  v19 = 55;
  tbb::task_group_context::init(v17, a2, a3, a4);
  v13 = &v11;
  if (v6)
  {
    v14[0] = &unk_2A204DE30;
    v16 = v17;
    v7 = tbb::internal::allocate_root_with_context_proxy::allocate(&v16, 8uLL);
    *(v7 - 11) = 1;
    *v7 = &unk_2A203ACB0;
    v14[1] = &v13;
    v15 = v7;
    v8 = tbb::internal::allocate_child_proxy::allocate(v7, 0x20uLL);
    *(v8 - 11) = 1;
    *v8 = &unk_2A204DEE8;
    v8[1] = v6;
    v8[2] = 0;
    v8[3] = v14;
    v9 = v15;
    *(v15 - 3) = 2;
    (*(**(v9 - 5) + 8))(*(v9 - 5), v9, v8);
    sub_29A409E20(v14, v10);
  }

  tbb::task_group_context::~task_group_context(v17);
}

void sub_29A409DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A409DE0(unint64_t ***a1, uint64_t a2)
{
  v2 = **a1;
  v4 = (*a1)[1];
  result = (*a1)[2];
  v5 = *v4;
  v6 = *v2;
  if (!v6 || (*(a2 + 56) ^ v6) <= 7) && (v5 || (*(a2 + 24)))
  {
    return pxrInternal__aapl__pxrReserved__::NdrRegistry::_FindOrParseNodeInCache(result, (a2 + 8));
  }

  return result;
}

uint64_t sub_29A409E20(uint64_t a1, tbb::task *a2)
{
  *a1 = &unk_2A204DE30;
  tbb::interface5::internal::task_base::destroy(*(a1 + 16), a2);
  return a1;
}

void sub_29A409E6C(uint64_t a1, tbb::task *a2)
{
  v2 = sub_29A409E20(a1, a2);

  operator delete(v2);
}

uint64_t sub_29A409E94(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0xF0uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A204DEA0;
  sub_29A40A110(v5 + 1, a2);
  v5[29] = a1;
  return (***(v5 - 5))(*(v5 - 5), v5, (v5 - 1));
}

uint64_t sub_29A409F5C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0xF0uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A204DEA0;
  sub_29A40A188((v5 + 1), a2);
  v5[29] = a1;
  return (***(v5 - 5))();
}

void *sub_29A40A01C(void *a1)
{
  *a1 = &unk_2A204DEA0;
  sub_29A4033A8((a1 + 2));
  v2 = a1[1];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A40A078(void *a1)
{
  *a1 = &unk_2A204DEA0;
  sub_29A4033A8((a1 + 2));
  v2 = a1[1];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(a1);
}

uint64_t *sub_29A40A110(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A4098D8((a1 + 1), a2 + 1);
  return a1;
}

uint64_t sub_29A40A188(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 16) = v5;
  v6 = *(a2 + 2);
  *(a1 + 48) = a2[6];
  *(a1 + 32) = v6;
  a2[5] = 0;
  a2[6] = 0;
  a2[4] = 0;
  *(a1 + 56) = a2[7];
  a2[7] = 0;
  *(a1 + 64) = a2[8];
  a2[8] = 0;
  *(a1 + 72) = a2[9];
  a2[9] = 0;
  v7 = *(a2 + 5);
  *(a1 + 96) = a2[12];
  *(a1 + 80) = v7;
  a2[11] = 0;
  a2[12] = 0;
  a2[10] = 0;
  v8 = *(a2 + 13);
  *(a1 + 120) = a2[15];
  *(a1 + 104) = v8;
  a2[14] = 0;
  a2[15] = 0;
  a2[13] = 0;
  v9 = *(a2 + 8);
  *(a1 + 144) = a2[18];
  *(a1 + 128) = v9;
  a2[17] = 0;
  a2[18] = 0;
  a2[16] = 0;
  sub_29A155CF8(a1 + 152, a2 + 19);
  v10 = *(a2 + 12);
  *(a1 + 208) = a2[26];
  *(a1 + 192) = v10;
  a2[24] = 0;
  a2[25] = 0;
  a2[26] = 0;
  *(a1 + 216) = a2[27];
  a2[27] = 0;
  return a1;
}

void *sub_29A40A2B4(void *a1)
{
  v2 = 0;
  v4 = a1[1];
  v3 = a1[2];
  v5 = v4;
  while (v5 != v3)
  {
    v5 = *v5;
    a1[1] = v5;
    if (++v2 == 4)
    {
      if (v5 != v3)
      {
        *(a1 - 12) = 1;
      }

      v2 = 4;
      goto LABEL_8;
    }
  }

  if (v2)
  {
LABEL_8:
    v6 = *(a1[3] + 16);
    v9[0] = 0;
    v9[1] = v6;
    result = tbb::internal::allocate_additional_child_of_proxy::allocate(v9, 0x20uLL);
    v8 = a1[3];
    *(result - 11) = 1;
    *result = &unk_2A204DF30;
    result[1] = v8;
    result[2] = v4;
    result[3] = v2;
    return result;
  }

  return 0;
}

uint64_t sub_29A40A37C(tbb::internal::allocate_child_proxy *this)
{
  v2 = &v11;
  v11 = 0;
  v3 = 0x200000000;
  for (i = 1; ; ++i)
  {
    v12 = v2;
    v5 = tbb::internal::allocate_child_proxy::allocate(this, 0x18uLL);
    v6 = v5;
    v7 = *(this + 1);
    *(v5 - 11) = 1;
    v8 = *(this + 2);
    v9 = *(this + 3);
    *v5 = &unk_2A204DF78;
    v5[1] = v8;
    v5[2] = v7;
    *(this + 2) = **(this + 2);
    if (i == v9)
    {
      break;
    }

    *(v5 - 1) = 0;
    v2 = v5 - 1;
    *v12 = v5;
    v3 += 0x100000000;
  }

  *(this - 3) = v3 >> 32;
  if (v11)
  {
    (***(v11 - 40))(*(v11 - 40), v11, v12);
    v11 = 0;
    v12 = &v11;
  }

  (*(**(this - 5) + 8))(*(this - 5), this, v6);
  return 0;
}

void sub_29A40A4E8(pxrInternal__aapl__pxrReserved__ *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 1);
  v2 = *(v1 + 24);
  v3 = **v1;
  v9 = *(v1 + 8);
  v10 = v2;
  if (v3)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v12[0] = 0;
      v13 = 65539;
      v14 = 55;
      tbb::task_group_context::init(v12, v4, v5, v6);
      v11 = v12;
      v7 = tbb::internal::allocate_root_with_context_proxy::allocate(&v11, 0x38uLL);
      *(v7 - 11) = 1;
      *v7 = &unk_2A204E000;
      *(v7 + 8) = v3;
      *(v7 + 16) = xmmword_29B430070;
      *(v7 + 32) = &v9;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v7);
      *(v7 + 48) = 0;
      *(v7 + 52) = 5;
      *(v7 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v7 - 40) + 16))(*(v7 - 40), v7, v7 - 8);
      tbb::task_group_context::~task_group_context(v12);
    }

    else
    {
      sub_29A40AAAC(&v9, 0, v3);
    }
  }
}

void sub_29A40A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a13, v17);
  tbb::task_group_context::~task_group_context(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A40A68C(tbb::internal::allocate_continuation_proxy *this)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = v4 - v6;
  if (v7 < v4 - v6)
  {
    v9 = *(this + 5);
    if (v9 > 1)
    {
      goto LABEL_12;
    }

    if (v9 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v10 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v10 - 11) = 1;
        *v10 = &unk_2A204C520;
        __dmb(0xBu);
        v10[8] = 0;
        *(this - 4) = v10;
        *(v10 - 3) = 2;
        v11 = tbb::internal::allocate_child_proxy::allocate(v10, 0x38uLL);
        *(v11 - 11) = 1;
        v12 = *(this + 1);
        v13 = *(this + 2);
        *v11 = &unk_2A204E000;
        *(v11 + 8) = v12;
        v14 = v13 + ((v12 - v13) >> 1);
        *(this + 1) = v14;
        *(v11 + 16) = v14;
        *(v11 + 24) = *(this + 24);
        v15 = *(this + 5) >> 1;
        *(this + 5) = v15;
        *(v11 + 40) = v15;
        *(v11 + 48) = 2;
        *(v11 + 52) = *(this + 52);
        (***(v11 - 40))();
        v6 = *(this + 2);
        v7 = *(this + 3);
        v4 = *(this + 1);
        v8 = v4 - v6;
        if (v7 >= v4 - v6)
        {
          break;
        }

        v16 = *(this + 5);
        if (v16 <= 1)
        {
          if (!v16 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v7 < v8 && *(this + 52))
  {
    *v30 = 0x10000;
    v31 = *v5;
    v32 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v30, *(this + 52));
      v17 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v17)
      {
        v18 = *(this + 52) + 1;
        *(this + 52) = v18;
        v19 = v30[2];
        if (v30[2] >= 2u)
        {
          v20 = v30[1];
          v21 = v30[v30[1] + 3];
          v22 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v22 - 11) = 1;
          *v22 = &unk_2A204C520;
          __dmb(0xBu);
          v22[8] = 0;
          *(this - 4) = v22;
          *(v22 - 3) = 2;
          v23 = tbb::internal::allocate_child_proxy::allocate(v22, 0x38uLL);
          v24 = &v31 + 24 * v20;
          *(v23 - 11) = 1;
          *v23 = &unk_2A204E000;
          v25 = *v24;
          *(v23 + 24) = *(v24 + 2);
          *(v23 + 8) = v25;
          v26 = *(this + 4);
          v27 = *(this + 5) >> 1;
          *(this + 5) = v27;
          *(v23 + 32) = v26;
          *(v23 + 40) = v27;
          *(v23 + 48) = 2;
          *(v23 + 52) = *(this + 52) - v21;
          (***(v23 - 40))();
          v19 = --v30[2];
          v30[1] = (v30[1] + 1) & 7;
          goto LABEL_25;
        }

        v28 = v30[0];
        if (v30[v30[0] + 3] < v18 && *(&v31 + 3 * v30[0] + 2) < *(&v31 + 3 * v30[0]) - *(&v31 + 3 * v30[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v28 = v30[0];
      }

      sub_29A40AAAC(*(this + 4), *(&v31 + 3 * v28 + 1), *(&v31 + 3 * v28));
      v19 = --v30[2];
      v30[0] = (v30[0] - 1) & 7;
LABEL_25:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29A40AAAC(*(this + 4), v6, v4);
  return 0;
}

void sub_29A40AAAC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v5 = *(a1 + 16);
    v6 = 8 * a2;
    v7 = 24 * a2;
    do
    {
      v8 = sub_29A408BE8((**(a1 + 8) + v6));
      v12 = 1;
      v13[0] = 0;
      v13[1] = v5;
      v11 = &unk_2A204E048;
      (*(*v8 + 16))(&v14);
      v9 = **a1 + v7;
      sub_29A40ACEC(v9);
      *v9 = v14;
      *(v9 + 16) = v15;
      v14 = 0uLL;
      v15 = 0;
      v16 = &v14;
      sub_29A403324(&v16);
      sub_29A0F6078(v13, v10);
      pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(&v11);
      v6 += 8;
      v7 += 24;
      --v3;
    }

    while (v3);
  }
}

void sub_29A40ABCC(_Unwind_Exception *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A0F6078((v9 + 16), a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(&a9);
  _Unwind_Resume(a1);
}

void sub_29A40ABE8(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

void sub_29A40AC24(uint64_t *a1, const void *a2)
{
  sub_29A0F6078(a1 + 2, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);

  operator delete(v3);
}

atomic_uint **sub_29A40AC64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A16039C((*(a1 + 24) + 160), a2);
  if (!result || (result = result[3]) == 0)
  {
    v6 = 0;
LABEL_7:
    *a3 = v6;
    return result;
  }

  result = (*(*result + 4))(result);
  v5 = *result;
  *a3 = *result;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_29A40ACEC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_29A4033A8(v3 - 216);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29A40AD4C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A40B45C();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A40ADD0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A40AE24(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A40AE24(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29A40AE90(uint64_t a1)
{
  sub_29A40AECC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A40AECC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A4033A8((v2 + 3));
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A40AF30(uint64_t a1)
{
  sub_29A40AF6C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A40AF6C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A40AFB0(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A40AFB0(void *a1)
{
  result = a1[2];
  a1[2] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v3 = a1[1];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

char *sub_29A40B030(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        sub_29A40B224(a1, a2, a1[1], (a2 + 8 * a5));
        *v5 = *v7;
        *v7 = 0;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin>::_RemoveRef();
      }

      v19 = a1[1];
      if ((a3 + v10 - a2) != a4)
      {
        v19 = a1[1];
        v20 = (a3 + v10 - a2);
        v21 = v19;
        do
        {
          *v21++ = *v20;
          *v20++ = 0;
          ++v19;
        }

        while (v20 != a4);
      }

      a1[1] = v19;
      if (v18 >= 1)
      {
        sub_29A40B224(a1, a2, v10, (a2 + 8 * a5));
        if (v10 != v5)
        {
          *v5 = *v7;
          *v7 = 0;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin>::_RemoveRef();
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v26[4] = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v22 = &v17[8 * v16];
      v26[0] = v17;
      v26[1] = v22;
      v26[3] = &v17[8 * v15];
      v23 = 8 * a5;
      v24 = &v22[8 * a5];
      do
      {
        *v22 = *v7;
        v22 += 8;
        *v7++ = 0;
        v23 -= 8;
      }

      while (v23);
      v26[2] = v24;
      v5 = sub_29A40B2A8(a1, v26, v5);
      sub_29A40B40C(v26);
    }
  }

  return v5;
}

void sub_29A40B210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A40B40C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A40B224(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 8;
    *v6++ = 0;
  }

  *(result + 8) = v7;
  if (v4 != a4)
  {
    *(v4 - 1) = *&v5[a2 - 8];
    *&v5[a2 - 8] = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin>::_RemoveRef();
  }

  return result;
}

uint64_t sub_29A40B2A8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A40B364(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A40B364(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void sub_29A40B364(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin>::_AddRef();
  }
}

void sub_29A40B3E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A40B45C();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A40B40C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 8;
    sub_29A40B45C();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A40B48C(char **a1, void *a2)
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
  sub_29A40B364(a1, v3, v4, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A40B40C(&v18);
  return v17;
}

void sub_29A40B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A40B40C(va);
  _Unwind_Resume(a1);
}

void *sub_29A40B5A0(void *a1, void *a2)
{
  result = sub_29A160470(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && (*a2 ^ v4[2]) < 8);
  }

  return result;
}

void *sub_29A40B5F0(void *a1, void *a2, void *a3)
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

  sub_29A40B674(a1, a2, a3, v4);
  return a1;
}

void *sub_29A40B674(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29A40B6FC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A40B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A40B6FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[4];
      *result = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *result &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = a2[1];
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
          v7 = a2[2];
          v8 = *v7 == a2;
          a2 = v7;
        }

        while (!v8);
      }

      ++result;
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29A40B774(uint64_t a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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

  sub_29A40B7F8(a1, a2, a3, v4);
  return a1;
}

char *sub_29A40B7F8(char *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    if (a2 != a3)
    {
      do
      {
        *v7 = a2[4];
        v8 = a2[1];
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
            v9 = a2[2];
            v10 = *v9 == a2;
            a2 = v9;
          }

          while (!v10);
        }

        ++v7;
        a2 = v9;
      }

      while (v9 != a3);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A40B888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A40B8A4(uint64_t a1)
{
  sub_29A40B8DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A40B8DC(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_29A40B950(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v4, v5);
    a1[1] = &v4[v5];
  }

  return a1;
}

void sub_29A40B9F4(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_29A403324(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_29A40BA68(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = operator new(0xF0uLL);
  *v6 = 0;
  v6[1] = 0;
  sub_29A40BB1C((v6 + 2), a2, a3);
  v6[1] = bswap64(0x9E3779B97F4A7C55 * (v6[2] & 0xFFFFFFFFFFFFFFF8));
  return sub_29A166EC8(a1, v6);
}

uint64_t sub_29A40BB1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = *a3;
  *a3 = 0;
  v6 = *(a3 + 8);
  *(a1 + 24) = *(a3 + 16);
  *(a1 + 16) = v6;
  v7 = *(a3 + 24);
  *(a1 + 48) = *(a3 + 40);
  *(a1 + 32) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a1 + 56) = *(a3 + 48);
  *(a3 + 48) = 0;
  *(a1 + 64) = *(a3 + 56);
  *(a3 + 56) = 0;
  *(a1 + 72) = *(a3 + 64);
  *(a3 + 64) = 0;
  v8 = *(a3 + 72);
  *(a1 + 96) = *(a3 + 88);
  *(a1 + 80) = v8;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  v9 = *(a3 + 96);
  *(a1 + 120) = *(a3 + 112);
  *(a1 + 104) = v9;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  v10 = *(a3 + 120);
  *(a1 + 144) = *(a3 + 136);
  *(a1 + 128) = v10;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  sub_29A155CF8(a1 + 152, (a3 + 144));
  v11 = *(a3 + 184);
  *(a1 + 208) = *(a3 + 200);
  *(a1 + 192) = v11;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a1 + 216) = *(a3 + 208);
  *(a3 + 208) = 0;
  return a1;
}

void sub_29A40BC40(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A4033A8((a2 + 3));
    v3 = a2[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_29A40BCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A40BD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  v9 = v8;
  a4[1] = a1;
  *a4 = v8;
  a4[2] = 0;
  v10 = (v8 + 16);
  *v8 = 0;
  *(v8 + 1) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v8 + 16, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    *(v8 + 4) = *(a2 + 16);
  }

  *(v9 + 5) = *a3;
  *(a4 + 16) = 1;
  v15 = 0;
  v16 = 0;
  v11 = v9[39];
  if (v11 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 2);
  }

  if (v11 >= 0)
  {
    v13 = v9[39];
  }

  else
  {
    v13 = *(v9 + 3);
  }

  result = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v15, v12, v13);
  *(v9 + 1) = bswap64(0x9E3779B97F4A7C55 * v15);
  return result;
}

void sub_29A40BDFC(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0EC874(v3, v1);
  _Unwind_Resume(a1);
}

void *sub_29A40BE18(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = bswap64(0x9E3779B97F4A7C55 * ((v3 & 0xFFFFFFFFFFFFFFF8) + (((((v3 & 0xFFFFFFFFFFFFFFF8) + (*a2 & 0xFFFFFFFFFFFFFFF8)) | 1) * ((v3 & 0xFFFFFFFFFFFFFFF8) + (*a2 & 0xFFFFFFFFFFFFFFF8))) >> 1)));
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v4 == v9)
      {
        if ((result[2] ^ *a2) <= 7 && (result[3] ^ v3) < 8)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29A40BF08(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = a2[1];
  v9 = bswap64(0x9E3779B97F4A7C55 * ((v8 & 0xFFFFFFFFFFFFFFF8) + (((((v8 & 0xFFFFFFFFFFFFFFF8) + (*a2 & 0xFFFFFFFFFFFFFFF8)) | 1) * ((v8 & 0xFFFFFFFFFFFFFFF8) + (*a2 & 0xFFFFFFFFFFFFFFF8))) >> 1)));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if ((i[2] ^ *a2) <= 7 && (i[3] ^ v8) < 8)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v9;
  *(i + 1) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = *a4;
  *a4 = 0;
  i[4] = v16;
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v10 || (v18 * v10) < v17)
  {
    v19 = 1;
    if (v10 >= 3)
    {
      v19 = (v10 & (v10 - 1)) != 0;
    }

    v20 = v19 | (2 * v10);
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
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    *i = *v24;
LABEL_41:
    *v24 = i;
    goto LABEL_42;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v23 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v25 = *(*i + 8);
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

    v24 = (*a1 + 8 * v25);
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return i;
}

void sub_29A40C17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A40C194(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A40C194(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A40AFB0(v2 + 2);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator *pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v2)
  {
    v2 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  *this = *(v2 + 11);
  *(this + 1) = 0;
  *(this + 16) = 0;
  return this;
}

{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v2)
  {
    v2 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  *this = *(v2 + 11);
  *(this + 1) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::NdrSdfTypeIndicator(uint64_t result, void *a2, uint64_t *a3, char a4)
{
  *result = *a2;
  v4 = *a3;
  *(result + 8) = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 16) = a4;
  return result;
}

{
  *result = *a2;
  v4 = *a3;
  *(result + 8) = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 16) = a4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::GetNdrType@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 8);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::NdrSdfTypeIndicator::operator==(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(a1, a2);
  if (result)
  {
    return (*(a2 + 8) ^ *(a1 + 8)) < 8uLL;
  }

  return result;
}

void sub_29A40C3C8()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E0C8, 0, "SDR_TYPE_CONFORMANCE", 0);
  v0 = sub_29A40C424();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "SDR_TYPE_CONFORMANCE", "Diagnostcs from parsing and conforming default values for Sdr and Sdf type conformance");
}

uint64_t sub_29A40C424()
{
  if ((atomic_load_explicit(&qword_2A14F7DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F7DB8))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F7DB0 = v1;
    __cxa_guard_release(&qword_2A14F7DB8);
  }

  return qword_2A14F7DB0;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48EE9BLL & 0x7FFFFFFFFFFFFFFFLL), &v11);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdrRegistry*> &)::isInitializing, 1u))
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
      v6 = operator new(0x170uLL);
      pxrInternal__aapl__pxrReserved__::NdrRegistry::NdrRegistry(v6);
      v8 = atomic_load(a1);
      if (v8)
      {
        if (v6 != v8)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::SdrRegistry]";
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
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::SdrRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v7, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::SdrRegistry*> &)::isInitializing);
  }

  v9 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v9;
}

void sub_29A40C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::SetInstanceConstructed(unint64_t result)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance, result))
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

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::NdrRegistry::~NdrRegistry(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::SdrRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifier(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifier(v3, a2, a3);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(pxrInternal__aapl__pxrReserved__::SdrRegistry *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByIdentifierAndType(v3, a2, a3);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeFromAsset(uint64_t a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3, uint64_t *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeFromAsset(v5, a2, a3, a4, a5);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeFromSourceCode(uint64_t a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeFromSourceCode(v4, a2, a3, a4);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByName(v4, a2, a3, a4);
  if (result)
  {
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByNameAndType(uint64_t a1, unsigned __int8 *a2, void *a3, int a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodeByNameAndType(v4, a2, a3, a4);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodesByIdentifier(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByIdentifier(v4, a1, __p);
  sub_29A40CD08(__p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29A40CCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A40CD08(uint64_t **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      sub_29A0A71C8(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_29A40CD6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodesByName(unsigned __int8 *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByName(v4, a1, a2, __p);
  sub_29A40CD08(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29A40CE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodesByFamily(void *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdrRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByFamily(v4, a1, a2, __p);
  sub_29A40CD08(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_29A40CEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::ShaderMetadataHelpers::IsTruthy(void *a1, void *a2)
{
  v2 = sub_29A16039C(a2, a1);
  if (!v2)
  {
    return 0;
  }

  if ((*(v2 + 47) & 0x80000000) == 0)
  {
    if (*(v2 + 47))
    {
      v13 = *(v2 + 3);
      v14 = v2[5];
      goto LABEL_7;
    }

    return 1;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 1;
  }

  sub_29A008D14(&v13, v2[3], v3);
LABEL_7:
  v4 = HIBYTE(v14);
  if (v14 >= 0)
  {
    v5 = &v13 + HIBYTE(v14);
  }

  else
  {
    v5 = (v13 + *(&v13 + 1));
  }

  if (v14 >= 0)
  {
    v6 = &v13;
  }

  else
  {
    v6 = v13;
  }

  if (v6 != v5)
  {
    do
    {
      *v6 = __tolower(*v6);
      v6 = (v6 + 1);
    }

    while (v6 != v5);
    v4 = HIBYTE(v14);
  }

  if ((v4 & 0x80) == 0)
  {
    if (v4 == 1)
    {
      if (v13 != 48)
      {
        return v13 != 102;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return 1;
      }

      if (v13 != 1936482662 || BYTE4(v13) != 101)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(&v13 + 1) == 1)
  {
    v10 = *v13;
    v8 = v10 != 48 && v10 != 102;
  }

  else
  {
    v8 = 1;
    if (*(&v13 + 1) == 5 && *v13 == 1936482662 && *(v13 + 4) == 101)
    {
      v8 = 0;
    }
  }

  operator delete(v13);
  return v8;
}