void sub_29B0B0594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

BOOL sub_29B0B05B0(uint64_t *a1, uint64_t *a2)
{
  sub_29A46D468(a1, &v9);
  sub_29A46D468(a2, v8);
  v3 = v9;
  v4 = v10;
  v5 = v8[0];
  if (v10 - v9 == v8[1] - v8[0])
  {
    if (v9 == v10)
    {
      v6 = 1;
    }

    else
    {
      do
      {
        v6 = sub_29A0EC4B8(&v11, v3, v5);
        if (!v6)
        {
          break;
        }

        v3 += 3;
        v5 += 3;
      }

      while (v3 != v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v8;
  sub_29A012C90(&v11);
  v8[0] = &v9;
  sub_29A012C90(v8);
  return v6;
}

void sub_29B0B0674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B0B0690(pxrInternal__aapl__pxrReserved__::VtDictionary **a1, void *a2)
{
  v4 = sub_29A3E4384(a1);
  v5 = sub_29A3E4384(a2);
  if (!v4 || !v5)
  {
    return v4 ^ v5 ^ 1u;
  }

  v6 = (*(**a2 + 48))();

  return sub_29B0B1220(a1, v6);
}

uint64_t sub_29B0B0730(uint64_t *a1, void *a2)
{
  v4 = sub_29A1EF368(a1);
  v5 = sub_29A1EF368(a2);
  if (!v4 || !v5)
  {
    return v4 ^ v5 ^ 1u;
  }

  v6 = (*(**a2 + 48))();

  return sub_29B0B1568(a1, v6);
}

uint64_t sub_29B0B07D0(uint64_t *a1, void *a2)
{
  v4 = sub_29A1EF994(a1);
  v5 = sub_29A1EF994(a2);
  if (!v4 || !v5)
  {
    return v4 ^ v5 ^ 1u;
  }

  v6 = (*(**a2 + 48))();

  return sub_29B0B174C(a1, v6);
}

uint64_t Overlay::__operatorEqualsEquals(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery *a2, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery *a3)
{
  if (*this == *a2)
  {
    pxrInternal__aapl__pxrReserved__::operator==();
  }

  return 0;
}

uint64_t sub_29B0B1010(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (*a1 != v2)
  {
    pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
  }

  return 1;
}

uint64_t sub_29B0B1220(pxrInternal__aapl__pxrReserved__::VtDictionary **a1, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v4 = *a1;
  if (v4)
  {
    v4 = (*(*v4 + 48))(v4);
  }

  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(v4);
  if (v5 < pxrInternal__aapl__pxrReserved__::VtDictionary::size(a2))
  {
    return 0;
  }

  v6 = *a1;
  if (*a1)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(v6);
  if (v7 > pxrInternal__aapl__pxrReserved__::VtDictionary::size(a2))
  {
    return 0;
  }

  if (*a1)
  {
    (*(**a1 + 24))(v25);
  }

  else
  {
    *&v25[0] = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v25);
  v8 = *a1;
  if (*a1)
  {
    v8 = (*(*v8 + 48))(v8);
  }

  v9 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v8);
  v11 = v10;
  v12 = *a1;
  if (*a1)
  {
    v12 = (*(*v12 + 48))(v12);
  }

  v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v12);
  v15 = v14;
  v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a2);
  v18 = sub_29B0B1420(v9, v11, v13, v15, v16, v17, &v26, v25);
  v19 = v25[0];
  v20 = *a1;
  if (*a1)
  {
    v20 = (*(*v20 + 48))(v20, v18);
  }

  v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v20);
  if (*(&v19 + 1) != v22)
  {
    return 0;
  }

  v23 = v21;
  result = 1;
  if (*(&v19 + 1))
  {
    if (v19 != v23)
    {
      return 0;
    }
  }

  return result;
}

double sub_29B0B1420@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v12 = a5;
  *(&v12 + 1) = a6;
  if (a4)
  {
    v9 = a1 == a3;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a2 != a4 || (v10 & 1) == 0)
  {
    if (sub_29B0B14CC(a7, a1 + 32, a5 + 32))
    {
      pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
    }
  }

  result = *&v13;
  *a8 = v13;
  a8[1] = v12;
  return result;
}

uint64_t sub_29B0B14CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? a3 : *a3;
    if (!memcmp(v8, v9, v5))
    {

      pxrInternal__aapl__pxrReserved__::VtValue::operator==();
    }
  }

  return 0;
}

BOOL sub_29B0B1568(uint64_t *a1, void *a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < a2[2] || *((*(**a1 + 48))() + 16) > a2[2])
  {
    return 0;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v11);
  }

  else
  {
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeType(&v11, a2, v12);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v11);
  v5 = (*(**a1 + 48))();
  v6 = *a1;
  v7 = *v5;
  if (*a1)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  v8 = sub_29B08F48C(v7, v6 + 1, v12[0]);
  v9 = *a1;
  if (*a1)
  {
    v9 = (*(*v9 + 48))(v9);
  }

  v4 = v9 + 8 == v8;
  sub_29A1EF938(v12, v12[1]);
  return v4;
}

BOOL sub_29B0B174C(uint64_t *a1, uint64_t a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < *(a2 + 16) || *((*(**a1 + 48))() + 16) > *(a2 + 16))
  {
    return 0;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v10);
  }

  else
  {
    v10 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v10);
  v5 = (*(**a1 + 48))(*a1);
  v6 = *a1;
  v7 = *v5;
  if (*a1)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  v8 = sub_29B08F844(v7, v6 + 1, *a2, &v11);
  v9 = *a1;
  if (*a1)
  {
    v9 = (*(*v9 + 48))(v9);
  }

  return v9 + 8 == v8;
}

unint64_t Overlay::__hash_value(uint64_t a1)
{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a1));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A13F68C(&v2, a1, a1 + 16);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29B0B4498(&v2, a1, a1 + 24, (a1 + 48), (a1 + 72));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  v5 = 0;
  v6 = 0;
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v5, v2, v3);
  return bswap64(0x9E3779B97F4A7C55 * v5);
}

{
  v2 = 0;
  v3 = 0;
  sub_29A218224(&v2, a1, (a1 + 24));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  v2 = 0;
  v3 = 0;
  sub_29A21813C(&v2, a1, a1 + 8, (a1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  return bswap64(0x9E3779B97F4A7C55 * sub_29A24C888(a1, (a1 + 24), (a1 + 32)));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A5BD47C(&v2, a1, (a1 + 8), (a1 + 16), (a1 + 24));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  v2 = 0;
  v3 = 0;
  sub_29A5BD47C(&v2, a1, (a1 + 8), (a1 + 16), (a1 + 24));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  return bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::hash_value(a1));
}

{
  v2 = 0;
  v3 = 0;
  sub_29AE3CA38(&v2, (a1 + 8), a1, (a1 + 4), (a1 + 48));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, *(a1 + 32), v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, *(a1 + 32), v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, *(a1 + 32), v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  sub_29A1C5CF0(&v3, *(a1 + 32), v1);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A0FB9C4(&v3, this);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(void *a1)
{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  if (*a1)
  {
    v1 = *a1 - 16;
  }

  else
  {
    v1 = 0;
  }

  return bswap64(0x9E3779B97F4A7C55 * v1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * (*a1 & 0xFFFFFFFFFFFFFFF8));
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *a1));
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * *a1);
}

{
  return bswap64(0x9E3779B97F4A7C55 * ~*a1);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29B0B4524(&v3, this, this + 6);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(double *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18BAAC(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A18AAA0(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A1A22A4(&v2, a1, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A1A0ADC(&v2, a1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A189C3C(&v2, a1, a1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * *&v1);
}

{
  v1 = 0x9E3779B97F4A7C55 * *a1;
  if (*a1 == 0.0)
  {
    v1 = 0;
  }

  return bswap64(v1);
}

unint64_t Overlay::__hash_value(float *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18B6BC(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A18A6C4(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A1A2E78(&v2, a1, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A18994C(&v2, a1, a1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A1A1584(&v2, a1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

unint64_t Overlay::__hash_value(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18B380(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A18A3A4(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (a1[1] + ((a1[1] + *a1 + (a1[1] + *a1) * (a1[1] + *a1)) >> 1))));
}

unint64_t Overlay::__hash_value(int *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A21DED8(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  v2 = 0;
  v3 = 0;
  sub_29A21BDD4(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

{
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (a1[1] + ((a1[1] + *a1 + (a1[1] + *a1) * (a1[1] + *a1)) >> 1))));
}

{
  return bswap64(0x9E3779B97F4A7C55 * (*(a1 + 1) + ((*(a1 + 1) + *a1 + (*(a1 + 1) + *a1) * (*(a1 + 1) + *a1)) >> 1)));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange1f *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18994C(&v3, this, this + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRange1d *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A189C3C(&v3, this, this + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatd *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC82674(&v3, this, this + 32);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2)
{
  v3 = *(this + 3);
  v4 = 0;
  v5 = 0;
  sub_29A18DBF4(&v4, &v3, this);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfDualQuatf *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC81E40(&v3, this, this + 16);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuatf *a2)
{
  v3 = *(this + 3);
  v4 = 0;
  v5 = 0;
  sub_29A18D5A0(&v4, &v3, this);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC81624(&v3, this, this + 4);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuath *a2)
{
  v2 = *(this + 3);
  v5 = 1;
  v4 = v2;
  sub_29A18D874(&v4, this);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfFrustum *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29ACAEF38(&v3, this, this + 3, this + 7, this + 11, this + 13, this + 28);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRotation *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29ACAF15C(&v3, this, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a2)
{
  v3 = *this;
  v4 = 0;
  v5 = 0;
  sub_29A18DBF4(&v4, &v3, this + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18BAAC(&v3, this, this + 1, this + 2, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18B6BC(&v3, this, this + 1, this + 2, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::GfRect2i *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC807B0(&v3, this, this + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A2158B8(&v3, this, this + 24);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t sub_29B0B3010(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6 = 1;
  v5 = v3 + ((v3 + v2 + (v3 + v2) * (v3 + v2)) >> 1);
  sub_29A217E84(&v5, (a2 + 2), a2 + 4, a2 + 56);
  return bswap64(0x9E3779B97F4A7C55 * v5);
}

unint64_t Overlay::__hash_value(Overlay *this, const Component *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A217F5C(&v3, this);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A217DC8(&v3, this);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfPredicateExpression *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A218064(&v3, this, this + 3, this + 48);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::SdfReference *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A24896C(&v3, this, this + 6, (this + 32), this + 6);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A5BD47C(&v3, this, this + 1, this + 4, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a2)
{
  v2 = *this;
  if (*this == 0.0)
  {
    v2 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * *&v2));
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A5BD47C(&v3, this, this + 1, this + 4, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdProperty *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A5BD47C(&v3, this, this + 1, this + 4, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A5BD47C(&v3, this, this + 1, this + 4, this + 3);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdBufferSpec *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29ABC697C(&v3, this, this + 8);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC06AEC(&v3, this, this + 1, this + 2);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC06A04(&v3, this + 1, this + 2, this + 40, this + 56, this + 80, this + 6);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(Overlay *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29AC0FB80(&v3, this);
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(uint64_t *a1)
{
  return sub_29A21E288(&v2, a1);
}

{
  return sub_29A21C184(&v2, a1);
}

{
  return sub_29A196AB8(&v2, a1);
}

{
  return sub_29A194498(&v2, a1);
}

{
  return sub_29A195FC8(&v2, a1);
}

{
  return sub_29A1939D0(&v2, a1);
}

{
  return sub_29A191354(&v2, a1);
}

{
  return sub_29A197630(&v2, a1);
}

{
  return sub_29A1950CC(&v2, a1);
}

{
  return sub_29A192960(&v2, a1);
}

{
  return sub_29A199194(&v2, a1);
}

{
  return sub_29AC7F414(&v2, a1);
}

{
  return sub_29A195FC8(&v2, a1);
}

{
  return sub_29A198644(&v2, a1);
}

{
  return sub_29A2222A8(&v2, a1);
}

{
  return sub_29A197630(&v2, a1);
}

{
  return sub_29A1A2D80(&v2, a1);
}

{
  return sub_29A1A21AC(&v2, a1);
}

{
  return sub_29A1A148C(&v2, a1);
}

{
  return sub_29A1A09E4(&v2, a1);
}

{
  return sub_29A191354(&v2, a1);
}

{
  return sub_29A192960(&v2, a1);
}

{
  return sub_29AC7FF70(&v2, a1);
}

{
  return sub_29AC806B8(&v2, a1);
}

{
  return sub_29A19A96C(&v2, a1);
}

{
  return sub_29A199E74(&v2, a1);
}

{
  return sub_29A19B4C8(&v2, a1);
}

{
  return sub_29AC80E38(&v2, a1);
}

{
  return sub_29AC8152C(&v2, a1);
}

{
  return sub_29AC81D48(&v2, a1);
}

{
  return sub_29AC8257C(&v2, a1);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (2 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (2 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (4 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (4 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (8 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

{
  v1 = *a1;
  v4 = 1;
  v3 = v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v3, a1[4], (8 * v1));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

unint64_t Overlay::__hash_value(unint64_t *a1)
{
  return sub_29A21A2BC(&v2, a1);
}

{
  return sub_29A191E0C(&v2, a1);
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5 + ((v1 + *&v5 + (v1 + *&v5) * (v1 + *&v5)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = LODWORD(v5) + ((v1 + LODWORD(v5) + (v1 + LODWORD(v5)) * (v1 + LODWORD(v5))) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v1 + v4 + (v1 + v4) * (v1 + v4)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v1 = (v4 & 0xFFFFFFFFFFFFFFF8) + (((v4 & 0xFFFFFFFFFFFFFFF8) + v1 + ((v4 & 0xFFFFFFFFFFFFFFF8) + v1) * ((v4 & 0xFFFFFFFFFFFFFFF8) + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_29B0B4498(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__ *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__ *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v9 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2, v10);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v12, v13);

  return sub_29A218224(a1, a4, a5);
}

uint64_t sub_29B0B4524(uint64_t a1, double *a2, double *a3)
{
  v7 = 0;
  v8 = 0;
  sub_29A1A22A4(&v7, a2, a2 + 3);
  v5 = bswap64(0x9E3779B97F4A7C55 * v7);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A1986BC(a1, a3);
}

uint64_t Overlay::SdfValueTypeNames::Bool(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *v1;
}

uint64_t Overlay::SdfValueTypeNames::UChar(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 1);
}

uint64_t Overlay::SdfValueTypeNames::Int(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 2);
}

uint64_t Overlay::SdfValueTypeNames::UInt(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 3);
}

uint64_t Overlay::SdfValueTypeNames::Int64(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 4);
}

uint64_t Overlay::SdfValueTypeNames::UInt64(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 5);
}

uint64_t Overlay::SdfValueTypeNames::Half(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 6);
}

uint64_t Overlay::SdfValueTypeNames::Float(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 7);
}

uint64_t Overlay::SdfValueTypeNames::Double(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 8);
}

uint64_t Overlay::SdfValueTypeNames::TimeCode(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 9);
}

uint64_t Overlay::SdfValueTypeNames::String(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 10);
}

uint64_t Overlay::SdfValueTypeNames::Token(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 11);
}

uint64_t Overlay::SdfValueTypeNames::Asset(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 12);
}

uint64_t Overlay::SdfValueTypeNames::Int2(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 13);
}

uint64_t Overlay::SdfValueTypeNames::Int3(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 14);
}

uint64_t Overlay::SdfValueTypeNames::Int4(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 15);
}

uint64_t Overlay::SdfValueTypeNames::Half2(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 16);
}

uint64_t Overlay::SdfValueTypeNames::Half3(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 17);
}

uint64_t Overlay::SdfValueTypeNames::Half4(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 18);
}

uint64_t Overlay::SdfValueTypeNames::Float2(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 19);
}

uint64_t Overlay::SdfValueTypeNames::Float3(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 20);
}

uint64_t Overlay::SdfValueTypeNames::Float4(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 21);
}

uint64_t Overlay::SdfValueTypeNames::Double2(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 22);
}

uint64_t Overlay::SdfValueTypeNames::Double3(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 23);
}

uint64_t Overlay::SdfValueTypeNames::Double4(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 24);
}

uint64_t Overlay::SdfValueTypeNames::Point3h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 25);
}

uint64_t Overlay::SdfValueTypeNames::Point3f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 26);
}

uint64_t Overlay::SdfValueTypeNames::Point3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 27);
}

uint64_t Overlay::SdfValueTypeNames::Vector3h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 28);
}

uint64_t Overlay::SdfValueTypeNames::Vector3f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 29);
}

uint64_t Overlay::SdfValueTypeNames::Vector3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 30);
}

uint64_t Overlay::SdfValueTypeNames::Normal3h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 31);
}

uint64_t Overlay::SdfValueTypeNames::Normal3f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 32);
}

uint64_t Overlay::SdfValueTypeNames::Normal3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 33);
}

uint64_t Overlay::SdfValueTypeNames::Color3h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 34);
}

uint64_t Overlay::SdfValueTypeNames::Color3f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 35);
}

uint64_t Overlay::SdfValueTypeNames::Color3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 36);
}

uint64_t Overlay::SdfValueTypeNames::Color4h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 37);
}

uint64_t Overlay::SdfValueTypeNames::Color4f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 38);
}

uint64_t Overlay::SdfValueTypeNames::Color4d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 39);
}

uint64_t Overlay::SdfValueTypeNames::Quath(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 40);
}

uint64_t Overlay::SdfValueTypeNames::Quatf(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 41);
}

uint64_t Overlay::SdfValueTypeNames::Quatd(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 42);
}

uint64_t Overlay::SdfValueTypeNames::Matrix2d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 43);
}

uint64_t Overlay::SdfValueTypeNames::Matrix3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 44);
}

uint64_t Overlay::SdfValueTypeNames::Matrix4d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 45);
}

uint64_t Overlay::SdfValueTypeNames::Frame4d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 46);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 47);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 48);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 49);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3h(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 50);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3f(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 51);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3d(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 52);
}

uint64_t Overlay::SdfValueTypeNames::Opaque(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 53);
}

uint64_t Overlay::SdfValueTypeNames::Group(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 54);
}

uint64_t Overlay::SdfValueTypeNames::PathExpression(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 55);
}

uint64_t Overlay::SdfValueTypeNames::BoolArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 56);
}

uint64_t Overlay::SdfValueTypeNames::UCharArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 57);
}

uint64_t Overlay::SdfValueTypeNames::IntArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 58);
}

uint64_t Overlay::SdfValueTypeNames::UIntArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 60);
}

uint64_t Overlay::SdfValueTypeNames::Int64Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 61);
}

uint64_t Overlay::SdfValueTypeNames::UInt64Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 62);
}

uint64_t Overlay::SdfValueTypeNames::HalfArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 63);
}

uint64_t Overlay::SdfValueTypeNames::FloatArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 64);
}

uint64_t Overlay::SdfValueTypeNames::DoubleArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 65);
}

uint64_t Overlay::SdfValueTypeNames::TimeCodeArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 66);
}

uint64_t Overlay::SdfValueTypeNames::StringArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 67);
}

uint64_t Overlay::SdfValueTypeNames::TokenArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 68);
}

uint64_t Overlay::SdfValueTypeNames::AssetArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 69);
}

uint64_t Overlay::SdfValueTypeNames::Int2Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 70);
}

uint64_t Overlay::SdfValueTypeNames::Int3Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 71);
}

uint64_t Overlay::SdfValueTypeNames::Int4Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 72);
}

uint64_t Overlay::SdfValueTypeNames::Half2Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 73);
}

uint64_t Overlay::SdfValueTypeNames::Half3Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 74);
}

uint64_t Overlay::SdfValueTypeNames::Half4Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 75);
}

uint64_t Overlay::SdfValueTypeNames::Float2Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 76);
}

uint64_t Overlay::SdfValueTypeNames::Float3Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 77);
}

uint64_t Overlay::SdfValueTypeNames::Float4Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 78);
}

uint64_t Overlay::SdfValueTypeNames::Double2Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 79);
}

uint64_t Overlay::SdfValueTypeNames::Double3Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 80);
}

uint64_t Overlay::SdfValueTypeNames::Double4Array(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 81);
}

uint64_t Overlay::SdfValueTypeNames::Point3hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 82);
}

uint64_t Overlay::SdfValueTypeNames::Point3fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 83);
}

uint64_t Overlay::SdfValueTypeNames::Point3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 84);
}

uint64_t Overlay::SdfValueTypeNames::Vector3hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 85);
}

uint64_t Overlay::SdfValueTypeNames::Vector3fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 86);
}

uint64_t Overlay::SdfValueTypeNames::Vector3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 87);
}

uint64_t Overlay::SdfValueTypeNames::Normal3hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 88);
}

uint64_t Overlay::SdfValueTypeNames::Normal3fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 89);
}

uint64_t Overlay::SdfValueTypeNames::Normal3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 90);
}

uint64_t Overlay::SdfValueTypeNames::Color3hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 91);
}

uint64_t Overlay::SdfValueTypeNames::Color3fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 92);
}

uint64_t Overlay::SdfValueTypeNames::Color3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 93);
}

uint64_t Overlay::SdfValueTypeNames::Color4hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 94);
}

uint64_t Overlay::SdfValueTypeNames::Color4fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 95);
}

uint64_t Overlay::SdfValueTypeNames::Color4dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 96);
}

uint64_t Overlay::SdfValueTypeNames::QuathArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 97);
}

uint64_t Overlay::SdfValueTypeNames::QuatfArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 98);
}

uint64_t Overlay::SdfValueTypeNames::QuatdArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 99);
}

uint64_t Overlay::SdfValueTypeNames::Matrix2dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 100);
}

uint64_t Overlay::SdfValueTypeNames::Matrix3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 101);
}

uint64_t Overlay::SdfValueTypeNames::Matrix4dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 102);
}

uint64_t Overlay::SdfValueTypeNames::Frame4dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 103);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 104);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 105);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord2dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 106);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3hArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 107);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3fArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 108);
}

uint64_t Overlay::SdfValueTypeNames::TexCoord3dArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 109);
}

uint64_t Overlay::SdfValueTypeNames::PathExpressionArray(Overlay::SdfValueTypeNames *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return *(v1 + 110);
}

uint64_t Overlay::GetPrim@<X0>(Overlay *this@<X0>, uint64_t a2@<X8>)
{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

{
  return sub_29A580660(a2, this + 1, this + 4);
}

uint64_t === infix(_:_:)(pxrInternal__aapl__pxrReserved__::UsdStage *a1, pxrInternal__aapl__pxrReserved__::UsdStage *a2)
{
  if (a1)
  {
    retainUsdStage(a1);
  }

  if (a2)
  {
    retainUsdStage(a2);
  }

  return 1;
}

void retainUsdStage(pxrInternal__aapl__pxrReserved__::UsdStage *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::retain<pxrInternal__aapl__pxrReserved__::UsdStage>();
}

{
    ;
  }
}

void releaseUsdStage(pxrInternal__aapl__pxrReserved__::UsdStage *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::release<pxrInternal__aapl__pxrReserved__::UsdStage>();
}

{
    ;
  }
}

uint64_t === infix(_:_:)(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2)
{
  if (a1)
  {
    retainSdfLayer(a1);
  }

  if (a2)
  {
    retainSdfLayer(a2);
  }

  return 1;
}

void retainSdfLayer(pxrInternal__aapl__pxrReserved__::SdfLayer *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::retain<pxrInternal__aapl__pxrReserved__::SdfLayer>();
}

{
    ;
  }
}

void releaseSdfLayer(pxrInternal__aapl__pxrReserved__::SdfLayer *a1)
{
  pxrInternal__aapl__pxrReserved__::TfRetainReleaseHelper::release<pxrInternal__aapl__pxrReserved__::SdfLayer>();
}

{
    ;
  }
}

void sub_29B0B6A44(pxrInternal__aapl__pxrReserved__::SdfLayer **a1, pxrInternal__aapl__pxrReserved__::SdfLayer **a2)
{
  v2 = *a1;
  *a1 = *a2;
  releaseSdfLayer(v2);
}

uint64_t sub_29B0B6A7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0B6BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayer()
{
  v4 = qword_2A14FA428;
  if (!qword_2A14FA428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA428);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__()
{
  v4 = qword_2A14FA430;
  if (!qword_2A14FA430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA430);
      return v1;
    }
  }

  return v4;
}

void sub_29B0B6F44(pxrInternal__aapl__pxrReserved__::UsdStage **a1, pxrInternal__aapl__pxrReserved__::UsdStage **a2)
{
  v2 = *a1;
  *a1 = *a2;
  releaseUsdStage(v2);
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStage()
{
  v4 = qword_2A14FA438;
  if (!qword_2A14FA438)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA438);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::TfRefBase *pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::AddRef(pxrInternal__aapl__pxrReserved__::TfRefBase *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  if (this)
  {
    pxrInternal__aapl__pxrReserved__::TfRefBase::_GetRefCount(this);
  }

  return this;
}

uint64_t sub_29B0B71BC(unsigned int *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    if (a2 == 5)
    {
      return atomic_load(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }
}

BOOL sub_29B0B7234(atomic_uint *a1, int *a2, unsigned int a3, int a4, unsigned int a5)
{
  v39 = sub_29B0B785C(a5);
  if (a4 != 2 && a4 != 1)
  {
    switch(a4)
    {
      case 3:
        if (v39 != 2 && v39 != 1)
        {
          if (v39 == 5)
          {
            v22 = *a2;
            v23 = *a2;
            atomic_compare_exchange_strong(a1, &v23, a3);
            if (v23 != v22)
            {
              *a2 = v23;
            }

            v40 = v23 == v22;
          }

          else
          {
            v18 = *a2;
            v19 = *a2;
            atomic_compare_exchange_strong_explicit(a1, &v19, a3, memory_order_release, memory_order_relaxed);
            if (v19 != v18)
            {
              *a2 = v19;
            }

            v40 = v19 == v18;
          }
        }

        else
        {
          v20 = *a2;
          v21 = *a2;
          atomic_compare_exchange_strong(a1, &v21, a3);
          if (v21 != v20)
          {
            *a2 = v21;
          }

          v40 = v21 == v20;
        }

        break;
      case 4:
        if (v39 != 2 && v39 != 1)
        {
          if (v39 == 5)
          {
            v28 = *a2;
            v29 = *a2;
            atomic_compare_exchange_strong(a1, &v29, a3);
            if (v29 != v28)
            {
              *a2 = v29;
            }

            v40 = v29 == v28;
          }

          else
          {
            v24 = *a2;
            v25 = *a2;
            atomic_compare_exchange_strong(a1, &v25, a3);
            if (v25 != v24)
            {
              *a2 = v25;
            }

            v40 = v25 == v24;
          }
        }

        else
        {
          v26 = *a2;
          v27 = *a2;
          atomic_compare_exchange_strong(a1, &v27, a3);
          if (v27 != v26)
          {
            *a2 = v27;
          }

          v40 = v27 == v26;
        }

        break;
      case 5:
        if (v39 != 2 && v39 != 1)
        {
          if (v39 == 5)
          {
            v34 = *a2;
            v35 = *a2;
            atomic_compare_exchange_strong(a1, &v35, a3);
            if (v35 != v34)
            {
              *a2 = v35;
            }

            v40 = v35 == v34;
          }

          else
          {
            v30 = *a2;
            v31 = *a2;
            atomic_compare_exchange_strong(a1, &v31, a3);
            if (v31 != v30)
            {
              *a2 = v31;
            }

            v40 = v31 == v30;
          }
        }

        else
        {
          v32 = *a2;
          v33 = *a2;
          atomic_compare_exchange_strong(a1, &v33, a3);
          if (v33 != v32)
          {
            *a2 = v33;
          }

          v40 = v33 == v32;
        }

        break;
      default:
        if (v39 != 2 && v39 != 1)
        {
          if (v39 == 5)
          {
            v10 = *a2;
            v11 = *a2;
            atomic_compare_exchange_strong(a1, &v11, a3);
            if (v11 != v10)
            {
              *a2 = v11;
            }

            v40 = v11 == v10;
          }

          else
          {
            v6 = *a2;
            v7 = *a2;
            atomic_compare_exchange_strong_explicit(a1, &v7, a3, memory_order_relaxed, memory_order_relaxed);
            if (v7 != v6)
            {
              *a2 = v7;
            }

            v40 = v7 == v6;
          }
        }

        else
        {
          v8 = *a2;
          v9 = *a2;
          atomic_compare_exchange_strong_explicit(a1, &v9, a3, memory_order_acquire, memory_order_acquire);
          if (v9 != v8)
          {
            *a2 = v9;
          }

          v40 = v9 == v8;
        }

        break;
    }
  }

  else if (v39 != 2 && v39 != 1)
  {
    if (v39 == 5)
    {
      v16 = *a2;
      v17 = *a2;
      atomic_compare_exchange_strong(a1, &v17, a3);
      if (v17 != v16)
      {
        *a2 = v17;
      }

      return v17 == v16;
    }

    else
    {
      v12 = *a2;
      v13 = *a2;
      atomic_compare_exchange_strong_explicit(a1, &v13, a3, memory_order_acquire, memory_order_acquire);
      if (v13 != v12)
      {
        *a2 = v13;
      }

      return v13 == v12;
    }
  }

  else
  {
    v14 = *a2;
    v15 = *a2;
    atomic_compare_exchange_strong_explicit(a1, &v15, a3, memory_order_acquire, memory_order_acquire);
    if (v15 != v14)
    {
      *a2 = v15;
    }

    return v15 == v14;
  }

  return v40;
}

uint64_t sub_29B0B785C(unsigned int a1)
{
  if (a1 == 3)
  {
    return 0;
  }

  else if (a1 == 4)
  {
    return 2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29B0B78C0(atomic_uint *a1, unsigned int a2, int a3)
{
  if (a3 != 2 && a3 != 1)
  {
    if (a3 == 3)
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    }

    else if (a3 == 4 || a3 == 5)
    {
      return atomic_fetch_add(a1, a2);
    }

    else
    {
      return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
    }
  }

  else
  {
    return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::RemoveRef(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  if (this)
  {
    pxrInternal__aapl__pxrReserved__::TfRefBase::_GetRefCount(this);
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__.VtArray<CBool>.init(arrayLiteral:)(uint64_t a1)
{
  memset(__b, 0, sizeof(__b));
  v2[5] = a1;
  memset(v2, 0, 0x28uLL);
  sub_29B0B7D30(v2);
  sub_29B0B7D60(__b, v2);
}

uint64_t sub_29B0B7DC8(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

unint64_t sub_29B0B7E34()
{
  v2 = qword_2A14FA448;
  if (!qword_2A14FA448)
  {
    sub_29B0B7EBC(&qword_2A14FA440);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA448);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0B7EBC(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

void std.__1.set<pxrInternal__aapl__pxrReserved__.SdfPath, std.__1.less<pxrInternal__aapl__pxrReserved__.SdfPath>, std.__1.allocator<pxrInternal__aapl__pxrReserved__.SdfPath>>.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v11 = 0;
  v12 = 0;
  v7 = 0;
  v13[3] = a1;
  memset(v13, 0, 24);
  sub_29B0B812C(v13);
  sub_29B0B8190(v14, v13);
  sub_29B0B81C8(v13);

  v10 = a1;
  sub_29B0B7DC8(&qword_2A14FA458);
  sub_29B0B81F8();
  Collection<>.makeIterator()();
  while (1)
  {
    sub_29B0B7DC8(&qword_2A14FA468);
    IndexingIterator.next()();
    if (v9)
    {
      break;
    }

    sub_29B0B82B8(&v7, &v8);
    sub_29A1DCEA8(&v8);
    v3 = type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    v2 = sub_29B0B8388();
    CxxUniqueSet.insert(_:)(&v6, &v7, v3, v2);
    sub_29A1DCEA8(&v6);
    sub_29A1DCEA8(&v7);
  }

  sub_29B0B7F30();
  sub_29B0B8280(a2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_29B0B815C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B0B812C(a1);
}

unint64_t sub_29B0B81F8()
{
  v2 = qword_2A14FA460;
  if (!qword_2A14FA460)
  {
    sub_29B0B7EBC(&qword_2A14FA458);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA460);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__()
{
  v4 = qword_2A14FA4C0;
  if (!qword_2A14FA4C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4C0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0B8388()
{
  v2 = qword_2A14FA470;
  if (!qword_2A14FA470)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA470);
    return WitnessTable;
  }

  return v2;
}

void std.__1.set<pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>, std.__1.less<pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>>, std.__1.allocator<pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>>>.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v9, 0, sizeof(v9));
  v7[3] = 0;
  v7[4] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v8[3] = a1;
  memset(v8, 0, 24);
  sub_29B0B812C(v8);
  sub_29B0B8190(v9, v8);
  sub_29B0B85A8(v8);

  v7[2] = a1;
  sub_29B0B7DC8(&qword_2A14FA478);
  sub_29B0B85D8();
  Collection<>.makeIterator()();
  sub_29B0B7DC8(&qword_2A14FA488);
  IndexingIterator.next()();
  if (v7[0] == 1)
  {
    sub_29B0B7F30();
    sub_29B0B8660(a2);
  }

  sub_29B0B8698(v6, v7, v2, v3);
}

unint64_t sub_29B0B85D8()
{
  v2 = qword_2A14FA480;
  if (!qword_2A14FA480)
  {
    sub_29B0B7EBC(&qword_2A14FA478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA480);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.less_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___()
{
  v4 = qword_2A14FA4A0;
  if (!qword_2A14FA4A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4A0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0B8768()
{
  v2 = qword_2A14FA490;
  if (!qword_2A14FA490)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.less_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA490);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0B8800(void *a1, uint64_t *a2)
{
  v4 = *a2;

  *a1 = v4;
  return *a1 + 16;
}

uint64_t sub_29B0B894C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0B8A2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_()
{
  v4 = qword_2A14FA498;
  if (!qword_2A14FA498)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA498);
      return v1;
    }
  }

  return v4;
}

void *sub_29B0B8D34(void *a1, void *a2)
{
  sub_29B0B85A8(a1);
  sub_29B0B8190(a1, a2);
  sub_29B0B85A8(a2);
  return a1;
}

uint64_t sub_29B0B8D74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0B8E54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t type metadata accessor for std.__1()
{
  v4 = qword_2A14FA4A8;
  if (!qword_2A14FA4A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4A8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for std()
{
  v4 = qword_2A14FA4B0;
  if (!qword_2A14FA4B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B0B9264(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B0B93B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_()
{
  v4 = qword_2A14FA4B8;
  if (!qword_2A14FA4B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4B8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B0B96DC(void *a1, void *a2)
{
  sub_29B0B81C8(a1);
  sub_29B0B8190(a1, a2);
  sub_29B0B81C8(a2);
  return a1;
}

_DWORD *sub_29B0B9794(_DWORD *a1, _DWORD *a2)
{
  sub_29A1DCEA8(a1);
  sub_29B0B975C(a1, a2);
  return a1;
}

_DWORD *sub_29B0B9800(_DWORD *a1, _DWORD *a2)
{
  sub_29A1DCEA8(a1);
  sub_29B0B82B8(a1, a2);
  sub_29A1DCEA8(a2);
  return a1;
}

uint64_t sub_29B0B9840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0B9948(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath()
{
  v4 = qword_2A14FA4C8;
  if (!qword_2A14FA4C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA4C8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0B9B98()
{
  v2 = qword_2A14FA4D0;
  if (!qword_2A14FA4D0)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0B9C30()
{
  v2 = qword_2A14FA4D8;
  if (!qword_2A14FA4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0B9D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0BB014();
  *a1 = result;
  return result;
}

uint64_t sub_29B0B9DA8@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29B0BB0F4(v2, *a1);
  *a2 = result;
  return result;
}

void *sub_29B0B9DF0@<X0>(void *a1@<X8>)
{
  result = a1;
  sub_29B0B815C(a1);
  return result;
}

unint64_t sub_29B0B9EE0()
{
  v2 = qword_2A14FA4E0;
  if (!qword_2A14FA4E0)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.less_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4E0);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0B9F60(uint64_t a1@<X8>)
{
  sub_29B0B9FB4();
  *a1 = v2;
  *(a1 + 8) = v1 & 1;
}

void (*sub_29B0BA060(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0BA14C();
  return sub_29B0BA0D0;
}

void sub_29B0BA0D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_29B0BA194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29B0BA1EC(*v1, *(v1 + 8) & 1);
  *a1 = result & 1;
  return result;
}

void (*sub_29B0BA238(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0BA2A8();
  return sub_29B0BA0D0;
}

void (*sub_29B0BA2D8(void *a1))(void **a1, char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  v3[4] = sub_29B0BA3C8(v3, *v1);
  return sub_29B0BA34C;
}

void sub_29B0BA34C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

_DWORD *(*sub_29B0BA3C8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  v2 = sub_29B0BAFE8(a1);
  sub_29B0B975C((a1 + 8), v2);
  return sub_29B0BA42C;
}

uint64_t sub_29B0BA474@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0BA4A4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0BA4A4(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0BAFAC(v2);
  return v2[0];
}

unint64_t sub_29B0BA5B8()
{
  v2 = qword_2A14FA4E8;
  if (!qword_2A14FA4E8)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ std.__1.less_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0BA650()
{
  v2 = qword_2A14FA4F0;
  if (!qword_2A14FA4F0)
  {
    type metadata accessor for std.__1.pair_std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_Void____ CLong__ CBool_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.pair_std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_Void____ CLong__ CBool_()
{
  v4 = qword_2A14FA538;
  if (!qword_2A14FA538)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA538);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0BA780()
{
  v2 = qword_2A14FA4F8;
  if (!qword_2A14FA4F8)
  {
    type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_Void____ CLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_Void____ CLong_()
{
  v4 = qword_2A14FA530;
  if (!qword_2A14FA530)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA530);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0BA8B0()
{
  v2 = qword_2A14FA500;
  if (!qword_2A14FA500)
  {
    type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer__ UnsafeMutablePointer_Void____ CLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA500);
    return WitnessTable;
  }

  return v2;
}

void (*sub_29B0BA930(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0BA14C();
  return sub_29B0BA0D0;
}

void (*sub_29B0BA9A0(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0BA2A8();
  return sub_29B0BA0D0;
}

void sub_29B0BAA10(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0BAA84(v2, *v1);
}

void sub_29B0BAA84(void *a1, uint64_t a2)
{
  a1[2] = a2;
  v2 = sub_29B0BB0C8((a1 + 2));
  sub_29B0B9178(a1, v2);
}

BOOL sub_29B0BAB54(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0BAF80(&v4, &v3);
}

unint64_t sub_29B0BABB4()
{
  v2 = qword_2A14FA508;
  if (!qword_2A14FA508)
  {
    type metadata accessor for std.__1.set_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0BAC4C()
{
  v2 = qword_2A14FA510;
  if (!qword_2A14FA510)
  {
    type metadata accessor for std.__1.pair_std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_Void____ CLong__ CBool_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA510);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.pair_std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_Void____ CLong__ CBool_()
{
  v4 = qword_2A14FA540;
  if (!qword_2A14FA540)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA540);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0BAD7C()
{
  v2 = qword_2A14FA518;
  if (!qword_2A14FA518)
  {
    type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_Void____ CLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA518);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_Void____ CLong_()
{
  v4 = qword_2A14FA528;
  if (!qword_2A14FA528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA528);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0BAEAC()
{
  v2 = qword_2A14FA520;
  if (!qword_2A14FA520)
  {
    type metadata accessor for std.__1.__tree_const_iterator_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_std.__1.__tree_node_pxrInternal__aapl__pxrReserved__.SdfPath_ UnsafeMutablePointer_Void____ CLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA520);
    return WitnessTable;
  }

  return v2;
}

void *sub_29B0BAF2C(size_t a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t *sub_29B0BAFAC(uint64_t *a1)
{
  v1 = sub_29B0BF220(*a1);
  result = a1;
  *a1 = v1;
  return result;
}

uint64_t sub_29B0BB0F4(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29B2A226C(a1, a2);
  sub_29B0BCCB0(&v4, v3);
  return v4;
}

void sub_29B0BB1A8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v2 = a2;
  sub_29B0BF76C();
}

void sub_29B0BB274(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v2 = a2;
  sub_29B0BFA4C();
}

__n128 sub_29B0BB314(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29B0BB320(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 16))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B0BB46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

void *sub_29B0BB64C(void *a1)
{
  sub_29B0BB680(a1);
  result = a1;
  a1[4] = 0;
  return result;
}

void *sub_29B0BB680(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_29B0BB6F0(_OWORD *a1, pxrInternal__aapl__pxrReserved__::Vt_ShapeData *a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 1);
  pxrInternal__aapl__pxrReserved__::Vt_ShapeData::clear(a2);
}

void *pxrInternal__aapl__pxrReserved__::Vt_ShapeData::clear(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef(unint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    if (!*(result + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(result, *(result + 32));
    }

    result = sub_29B0BB8EC(*(result + 24), 1, 3);
    if (result == 1)
    {
      sub_29B0BB924(2u);
      pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(*(v1 + 3));
    }

    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetControlBlock(this, a2);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetControlBlock(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this, void *a2)
{
  v4 = this;
  v3 = a2;
  v2 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/array.h", 47);
  FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/array.h", v2, 0x2F);
}

{
  v4 = this;
  v3 = a2;
  v2 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/array.h", 47);
  FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/array.h", v2, 0x2F);
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Vt_ArrayForeignDataSource::_ArraysDetached(uint64_t this)
{
  if (*(this + 8))
  {
    return (*(this + 8))();
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_AxiomHelper(char a1, const void *a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  if ((a1 & 1) == 0)
  {
    sub_29B0BBC04(v5, v7, 4);
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v5, "Failed axiom: ' %s '", v3, v6);
  }

  return 1;
}

FunctionLite *FunctionLite::substringFromPreviousDelim(FunctionLite *this, FunctionLite *a2, const char *a3)
{
  if (!a2)
  {
    return this;
  }

  if (a2 != this)
  {
    FunctionLite::findPreviousDelimiter(this, a2 - 1, a3);
  }

  return (this + 1);
}

_DWORD *sub_29B0BBC44(_DWORD *a1, const void *a2, int a3)
{
  memcpy(a1, a2, 0x28uLL);
  result = a1;
  a1[10] = a3;
  return result;
}

FunctionLite *FunctionLite::findPreviousDelimiter(FunctionLite *this, FunctionLite *a2, const char *a3)
{
  v4 = a2;
  if (this > a2)
  {
    return this;
  }

  while (this != v4)
  {
    if (*v4 == a3)
    {
      return v4;
    }

    v4 = (v4 - 1);
  }

  return this;
}

uint64_t sub_29B0BBD20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = 0;
  return result;
}

unint64_t sub_29B0BBD68(atomic_ullong *a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
    case 1:
      return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
    case 3:
      return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
    case 4:
    case 5:
      return atomic_fetch_add(a1, -a2);
  }

  return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
}

uint64_t sub_29B0BBE54(uint64_t result)
{
  if (result != 2 && result != 1)
  {
    if (result == 3 || result == 4 || result == 5)
    {
      __dmb(0xBu);
    }
  }

  else
  {
    __dmb(9u);
  }

  return result;
}

uint64_t sub_29B0BBECC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a1 + 24))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_GetNativeRefCount(a1, *(a1 + 32));
    }

    sub_29B0BBF78(*(a1 + 24), 1uLL, 0);
  }

  return a1;
}

unint64_t sub_29B0BBFB0(atomic_ullong *a1, unint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
    case 1:
      return atomic_fetch_add_explicit(a1, a2, memory_order_acquire);
    case 3:
      return atomic_fetch_add_explicit(a1, a2, memory_order_release);
    case 4:
    case 5:
      return atomic_fetch_add(a1, a2);
  }

  return atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
}

uint64_t sub_29B0BC0F4(uint64_t a1)
{
  sub_29B0BC15C((a1 + 8));
  sub_29B088328(a1);
  *(a1 + 16) = 0;
  sub_29B0BC18C();
  v5 = v1;
  sub_29B088388();
  v3 = v2;
  result = a1;
  *v3 = v5;
  return result;
}

void *sub_29B0BC240(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  if (*sub_29B0BC338(a1))
  {
    sub_29B0BC18C();
    v10 = v4;
    sub_29B0BC18C();
    *(*v5 + 16) = v10;
    sub_29B0BC18C();
    v11 = v6;
    sub_29B088388();
    *v7 = v11;
    sub_29B0BC18C();
    *v8 = 0;
    *sub_29B0BC338(a2) = 0;
  }

  else
  {
    sub_29B0BC18C();
    v12 = v2;
    sub_29B088388();
    *v3 = v12;
  }

  return a1;
}

uint64_t sub_29B0BC3B0(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A1E2AEC(a1, v1);
  return a1;
}

void sub_29B0BC4B4(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

BOOL std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::SdfPath,std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *> *,long>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  sub_29B0BC5B4();
  result = sub_29B0BC5E4(&v5, &v4);
  if (result)
  {
    sub_29B0BAFE8(&v5);
    sub_29B0BC618();
  }

  return result;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>()
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

{
    ;
  }
}

uint64_t *std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v13 = a1;
  v12 = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = sub_29B0BCC78();
  sub_29B0BCCB0(v11, v10);
  if (!sub_29B0BAF80(&v14, v11))
  {
    sub_29B088388();
    sub_29B0BAFE8(&v14);
    sub_29B0BCCE8();
  }

  v9 = v14;
  v7 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v8, v7);
  if (!sub_29B0BAF80(&v9, &v8))
  {
    sub_29B088388();
    v5 = sub_29B0BCD54(&v9);
    sub_29B0BAFE8(v5);
    sub_29B0BCCE8();
  }

  if (*v14)
  {
    *v12 = v9;
    return v9 + 1;
  }

  else
  {
    *v12 = v14;
    return *v12;
  }
}

void std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_node<pxrInternal__aapl__pxrReserved__::SdfPath const&>()
{
  sub_29B088388();
  sub_29B0BD218();
}

{
    ;
  }
}

uint64_t sub_29B0BCBE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

uint64_t sub_29B0BCC78()
{
  sub_29B0BC18C();
  sub_29B0883E4(&v2, v0);
  return v2;
}

uint64_t sub_29B0BCD1C()
{
  sub_29B088388();
  sub_29B0883E4(&v2, *v0);
  return v2;
}

uint64_t **sub_29B0BCD54(uint64_t **a1)
{
  v1 = sub_29B0BD09C(*a1);
  result = a1;
  *a1 = v1;
  return result;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v4)
  {
    sub_29B088388();
    sub_29B0BCCE8();
  }

  sub_29B0BC18C();
  *a2 = v2;
  return *a2;
}

uint64_t sub_29B0BD09C(uint64_t *a1)
{
  if (*a1)
  {
    return sub_29B0BD13C(*a1);
  }

  v3 = a1;
  for (i = sub_29B0BD174(a1); i; i = sub_29B0BD174(v3))
  {
    v3 = sub_29B0BD19C(v3);
  }

  return sub_29B0BD19C(v3);
}

uint64_t sub_29B0BD13C(uint64_t a1)
{
  while (*(a1 + 8))
  {
    a1 = *(a1 + 8);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&,0>()
{
  std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

{
    ;
  }
}

void *sub_29B0BD398(uint64_t a1, std::align_val_t a2)
{
  v3 = 40 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B0BD454();
  }

  return sub_29B0BD424(v3, a2);
}

uint64_t sub_29B0BD4BC(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3 & 1;
  return result;
}

uint64_t sub_29B0BD4EC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  sub_29B0BD53C((a1 + 17));
  return a1;
}

_BYTE *sub_29B0BD56C(_BYTE *result)
{
  v2 = result;
  do
  {
    *v2 = 0;
  }

  while (++v2 - (result + 7));
  return result;
}

uint64_t sub_29B0BD620(uint64_t result, void *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 8) = *a3 & 1;
  return result;
}

_DWORD *sub_29B0BD658(_DWORD *a1, _DWORD *a2)
{
  sub_29B0BD6A4(a1, a2);
  sub_29B0BD6DC(a1 + 1, a2 + 1);
  return a1;
}

_DWORD *sub_29B0BD774(_DWORD *a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecRef();
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecRef()
{
  ;
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(atomic_uint *this, const pxrInternal__aapl__pxrReserved__::Sdf_PathNode *a2)
{
  result = sub_29B088878(this + 2, 1, 5);
  if ((result & 0x7FFFFFFF) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Destroy(uint64_t this)
{
  v1 = *(this + 14);
  if (!*(this + 14))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_RootPathNode>();
  }

  switch(v1)
  {
    case 1:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode>();
    case 2:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode>();
    case 3:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode>();
    case 4:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode>();
    case 5:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode>();
    case 6:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode>();
    case 7:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode>();
    case 8:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode>();
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_RootPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_Downcast<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode>()
{
  ;
}

{
    ;
  }
}

pxrInternal__aapl__pxrReserved__ **pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_DecrementIfValid(pxrInternal__aapl__pxrReserved__ **result, const pxrInternal__aapl__pxrReserved__::Sdf_PathNode *a2)
{
  if (*result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*result, a2);
  }

  return result;
}

uint64_t sub_29B0BDCBC(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29A1FFFD0(a1, v1);
  return a1;
}

BOOL std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *> *,long>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  sub_29B0BC5B4();
  result = sub_29B0BC5E4(&v5, &v4);
  if (result)
  {
    sub_29B0BB0C8(&v5);
    sub_29B0BDF50();
  }

  return result;
}

void sub_29B0BDEC4(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>();
}

{
    ;
  }
}

uint64_t *std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v13 = a1;
  v12 = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = sub_29B0BCC78();
  sub_29B0BCCB0(v11, v10);
  if (!sub_29B0BAF80(&v14, v11))
  {
    sub_29B088388();
    sub_29B0BB0C8(&v14);
    sub_29B0BE534();
  }

  v9 = v14;
  v7 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v8, v7);
  if (!sub_29B0BAF80(&v9, &v8))
  {
    sub_29B088388();
    v5 = sub_29B0BCD54(&v9);
    sub_29B0BB0C8(v5);
    sub_29B0BE534();
  }

  if (*v14)
  {
    *v12 = v9;
    return v9 + 1;
  }

  else
  {
    *v12 = v14;
    return *v12;
  }
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__construct_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  sub_29B088388();
  sub_29B0BEA04();
}

{
    ;
  }
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v4)
  {
    sub_29B088388();
    sub_29B0BE534();
  }

  sub_29B0BC18C();
  *a2 = v2;
  return *a2;
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator<<pxrInternal__aapl__pxrReserved__::SdfLayer>()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::GetUniqueIdentifier();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::GetUniqueIdentifier()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::_Derived();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtrFacadeAccess::GetUniqueIdentifier<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::_Derived()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier()
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator pxrInternal__aapl__pxrReserved__::TfRefBase const*pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::*();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator pxrInternal__aapl__pxrReserved__::TfRefBase const*pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::*(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(uint64_t a1)
{
  if (!*a1)
  {
    v2 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v2, 0x2F);
  }

  return *a1;
}

uint64_t **sub_29B0BE970(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v2 = a2;
  if (a2 < 0)
  {
    while (v2 < 0)
    {
      result = sub_29B0BCD54(v3);
      ++v2;
    }
  }

  else
  {
    while (v2 > 0)
    {
      result = sub_29B0BAFAC(v3);
      --v2;
    }
  }

  return result;
}

void std::allocator_traits<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,0>()
{
  std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,void *>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>();
}

{
    ;
  }
}

void *sub_29B0BEAE8(uint64_t a1, std::align_val_t a2)
{
  v3 = 48 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B0BEB74();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B0BEC44(void **a1, void *a2)
{
  __p = *a1;
  *a1 = a2;
  if (__p)
  {
    sub_29A41CEC8((a1 + 1), __p);
  }
}

void sub_29B0BED34(pxrInternal__aapl__pxrReserved__ *a1, void *a2, uint64_t a3, const void *a4)
{
  *a1 = *a2;
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_RefPtrTracker_New(a1, *a1, 0, a4);
}

void pxrInternal__aapl__pxrReserved__::Tf_RefPtrTracker_New(pxrInternal__aapl__pxrReserved__ *this, const void *a2, const pxrInternal__aapl__pxrReserved__::TfRefBase *a3, const void *a4)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_RefPtrTracker_Assign(pxrInternal__aapl__pxrReserved__ *this, const void *a2, const pxrInternal__aapl__pxrReserved__::TfRefBase *a3, const pxrInternal__aapl__pxrReserved__::TfRefBase *a4, const void *a5)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_RefPtrTracker_Delete(pxrInternal__aapl__pxrReserved__ *this, const void *a2, const pxrInternal__aapl__pxrReserved__::TfRefBase *a3, const void *a4)
{
  ;
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_RefPtr_Counter::RemoveRef(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_Counter *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  if (this)
  {
    pxrInternal__aapl__pxrReserved__::TfRefBase::_GetRefCount(this);
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::Tf_RefPtrTracker_LastRef(pxrInternal__aapl__pxrReserved__ *this, const void *a2, const pxrInternal__aapl__pxrReserved__::TfRefBase *a3, const void *a4)
{
  ;
}

{
    ;
  }
}

pxrInternal__aapl__pxrReserved__::TfRefBase *pxrInternal__aapl__pxrReserved__::Tf_RefPtr_Counter::AddRef(pxrInternal__aapl__pxrReserved__::TfRefBase *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  if (this)
  {
    pxrInternal__aapl__pxrReserved__::TfRefBase::_GetRefCount(this);
  }

  return this;
}

_DWORD *sub_29B0BF058(_DWORD *a1, _DWORD *a2)
{
  sub_29B0BF0A4(a1, a2);
  sub_29B0BF0DC(a1 + 1, a2 + 1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_AddRef()
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::get();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::_AddRef()
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::get();
}

{
  ;
}

{
    ;
  }
}

void *sub_29B0BF220(uint64_t a1)
{
  v3 = a1;
  if (*(a1 + 8))
  {
    return sub_29B0BF29C(*(a1 + 8));
  }

  for (i = sub_29B0BD174(a1); !i; i = sub_29B0BD174(v3))
  {
    v3 = sub_29B0BD19C(v3);
  }

  return *(v3 + 16);
}

void *sub_29B0BF29C(void *a1)
{
  while (*a1)
  {
    a1 = *a1;
  }

  return a1;
}

void sub_29B0BF2D4(uint64_t **a1, uint64_t a2)
{
  v4[0] = a2;
  v3 = sub_29B0BCBCC(v4);
  v4[1] = sub_29A03AFE8(a1, v3);
  sub_29B088388();
  sub_29B0BAFE8(v4);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,void,0>();
}

void std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::find<pxrInternal__aapl__pxrReserved__::SdfPath>()
{
  sub_29B0BC3EC();
  sub_29B0BC18C();
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__lower_bound<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

{
    ;
  }
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__lower_bound<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_29B088388();
    sub_29B0BCCE8();
  }

  sub_29B0883E4(&v5, a4);
  return v5;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::find<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>()
{
  sub_29B0BC3EC();
  sub_29B0BC18C();
  std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__lower_bound<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>();
}

{
    ;
  }
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__lower_bound<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_29B088388();
    sub_29B0BE534();
  }

  sub_29B0883E4(&v5, a4);
  return v5;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__count_unique<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>()
{
  if (sub_29B0BC3EC())
  {
    sub_29B088388();
    sub_29B0BE534();
  }

  return 0;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>()
{
  std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>();
}

{
    ;
  }
}

uint64_t sub_29B0BF934(uint64_t a1, uint64_t a2)
{
  sub_29B0BCCB0(a1, *a2);
  result = a1;
  *(a1 + 8) = *(a2 + 8) & 1;
  return result;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__count_unique<pxrInternal__aapl__pxrReserved__::SdfPath>()
{
  if (sub_29B0BC3EC())
  {
    sub_29B088388();
    sub_29B0BCCE8();
  }

  return 0;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>()
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

{
    ;
  }
}

void __swiftcall pxrInternal__aapl__pxrReserved__.pxr_half.half.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v3 = 0;
  v2 = integerLiteral;
  sub_29AAC9D3C(&v1, integerLiteral);
}

uint64_t sub_29B0BFC68(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    v6 = ((a2 + 0xFFFF) >> 16) + 1;
    v7 = 1;
    if (v6 >= 0x100)
    {
      if (v6 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v7 = v2;
    }

    if (v7 == 1)
    {
      v5 = *(a1 + 2);
    }

    else if (v7 == 2)
    {
      v5 = a1[1];
    }

    else
    {
      v5 = *(a1 + 1);
    }

    if (v5)
    {
      v4 = *a1 | ((v5 - 1) << 16);
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0BFDC4(uint64_t result, int a2, int a3)
{
  v7 = 0;
  if (a3)
  {
    v5 = ((a3 + 0xFFFF) >> 16) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2)
  {
    v4 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      *(result + 2) = 0;
    }

    else if (v7 == 2)
    {
      *(result + 2) = 0;
    }

    else
    {
      *(result + 2) = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half()
{
  v4 = qword_2A14FA548;
  if (!qword_2A14FA548)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA548);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half()
{
  v4 = qword_2A14FA550;
  if (!qword_2A14FA550)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA550);
      return v1;
    }
  }

  return v4;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.pxr_half.half.init(floatLiteral:)(Swift::Float floatLiteral)
{
  v3 = 0;
  v2 = floatLiteral;
  sub_29AAC9D3C(&v1, floatLiteral);
}

void ***pxrInternal__aapl__pxrReserved__.VtDictionary.init(dictionaryLiteral:)@<X0>(void **a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v18 = 0;
  v15 = 0;
  v16 = 0;
  memset(&v10, 0, sizeof(v10));
  v9[0] = 0;
  v9[1] = 0;
  v17[1] = a1;
  v17[0] = 0;
  sub_29B0C0344(v17);
  sub_29B0C0374(&v18, v17);
  sub_29AE997DC(v17);

  v14 = a1;
  sub_29B0B7DC8(&qword_2A14FA558);
  sub_29B0C03AC();
  Collection<>.makeIterator()();
  while (1)
  {
    sub_29B0B7DC8(&qword_2A14FA568);
    IndexingIterator.next()();
    if (v13)
    {
      break;
    }

    sub_29B0C0434(&v10, &v11);
    std::string::~string(&v11);
    sub_29B0C046C(v9, v12);
    sub_29A3D65BC(v12);
    std::string::basic_string(&v8, &v10);
    sub_29B0C04A4(v7, v9);
    v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](&v18, &v8);
    sub_29B0C04A4(v6, v7);
    sub_29A3D65BC(v3);
    sub_29B0C046C(v3, v6);
    sub_29A3D65BC(v6);
    std::string::~string(&v8);
    sub_29A3D65BC(v7);
    sub_29A3D65BC(v9);
    std::string::~string(&v10);
  }

  sub_29B0B7F30();
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, &v18);

  return sub_29AE997DC(&v18);
}

unint64_t sub_29B0C03AC()
{
  v2 = qword_2A14FA560;
  if (!qword_2A14FA560)
  {
    sub_29B0B7EBC(&qword_2A14FA558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA560);
    return WitnessTable;
  }

  return v2;
}

pxrInternal__aapl__pxrReserved__::VtDictionary *sub_29B0C053C(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  sub_29AE997DC(a1);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a1, a2);
  return a1;
}

uint64_t *sub_29B0C05B0(uint64_t *a1, uint64_t *a2)
{
  sub_29AE997DC(a1);
  sub_29B0C0374(a1, a2);
  sub_29AE997DC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary()
{
  v4 = qword_2A14FA570;
  if (!qword_2A14FA570)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA570);
      return v1;
    }
  }

  return v4;
}

void *sub_29B0C06D0(void *a1, void *a2)
{
  sub_29A3D65BC(a1);
  sub_29B0C04A4(a1, a2);
  return a1;
}

void *sub_29B0C0744(void *a1, void *a2)
{
  sub_29A3D65BC(a1);
  sub_29B0C046C(a1, a2);
  sub_29A3D65BC(a2);
  return a1;
}

uint64_t sub_29B0C0784(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0C0890(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtValue()
{
  v4 = qword_2A14FA578;
  if (!qword_2A14FA578)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA578);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B0C0B20(std::string *a1, const std::string *a2)
{
  std::string::~string(a1);
  std::string::basic_string(a1, a2);
  return a1;
}

std::string *sub_29B0C0B94(std::string *a1, std::string *a2)
{
  std::string::~string(a1);
  sub_29B0C0434(a1, a2);
  std::string::~string(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar__()
{
  v4 = qword_2A14FA580;
  if (!qword_2A14FA580)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA580);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B0C0D0C(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_29B0BCBE4(a2);
  sub_29B088388();
  return a1;
}

uint64_t sub_29B0C0DD0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v9 = a1;
  v5 = sub_29B0C0E88(&v6, a2);
  *a1 = *v5;
  *(a1 + 16) = *(v5 + 16);
  v2 = v7;
  *v7 = 0uLL;
  *(v2 + 2) = 0;
  sub_29B088624();
  if (!sub_29B0C0ECC(a1))
  {
    sub_29B0C0EF0(a1);
    sub_29B088624();
  }

  return v9;
}

uint64_t sub_29B0C0E88(uint64_t a1, uint64_t a2)
{
  if (!sub_29B0C0ECC(a2))
  {
    sub_29B08850C();
  }

  return a2;
}

uint64_t sub_29B0C0EF0(uint64_t a1)
{
  if (sub_29B0C0ECC(a1))
  {
    return sub_29B0C0F48(a1);
  }

  else
  {
    return sub_29B0C0F60(a1);
  }
}

void sub_29B0C1090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::IsEmpty(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::GetLiteral();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtValue::_Clear(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::GetLiteral();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtValue::_IsLocalAndTriviallyCopyable(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::BitsAs<unsigned int>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::operator->()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetPtr();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::Set<int>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_Combine();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::GetLiteral()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::Get()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetPtr();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetPtr()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetBitMask()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::GetMaxValue();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::GetMaxValue()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetAlign();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::BitsAs<unsigned int>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetBits();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_GetBits()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_Combine()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo const>::_AsInt();
}

{
    ;
  }
}

uint64_t sub_29B0C1504(uint64_t result)
{
  if (*(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfo::Destroy();
  }

  return result;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.TfToken.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  v6 = 0;
  v5 = stringLiteral;
  sub_29B0C1740(stringLiteral._countAndFlagsBits, stringLiteral._object, &v3);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4);
  std::string::~string(&v3);
  sub_29B0C1C58(&v6, &v4);
  sub_29A424A8C(&v4);
  sub_29B0C1C90(v2, &v6);
}

void sub_29B0C1740(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v31, 0, sizeof(v31));
  sub_29B0C2B18(&v31);

  v30 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v23 = String.UTF8View._foreignCount()();
    std::string::reserve(&v31, v23);
  }

  else
  {

    if ((a2 & 0x2000000000000000) != 0)
    {
      std::string::reserve(&v31, (a2 & 0xF00000000000000uLL) >> 56);
    }

    else
    {
      std::string::reserve(&v31, a1 & 0xFFFFFFFFFFFFLL);
    }
  }

  v28 = a1;
  v29 = a2;
  for (i = 15; ; i = v3)
  {
    v27[8] = v29;
    if ((v29 & 0x2000000000000000) != 0)
    {
      v21 = (v29 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v21 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v20 = v21 << 16;
    if ((v29 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v19 = v20 | 7;
    }

    else
    {
      v19 = v20 | 0xB;
    }

    if (i >> 14 == v19 >> 14)
    {
      sub_29B0C2DBC();
      sub_29B0C0434(a3, &v31);
      std::string::~string(&v31);
      return;
    }

    v16 = v28;
    v17 = v29;
    v27[7] = v29;
    v18 = v29;
    v15 = (v29 & 0x1000000000000000) == 0 || (v28 & 0x800000000000000) != 0;
    v14 = i & 0xC;
    v13 = v14 == 4 << v15 ? sub_29B0C2B48(i, v28, v29) : i;
    v12 = v13 >> 16;
    v27[6] = v17;
    v11 = (v17 & 0x2000000000000000) != 0 ? (v17 & 0xF00000000000000uLL) >> 56 : v16 & 0xFFFFFFFFFFFFLL;
    if (v12 >= v11)
    {
      break;
    }

    v27[5] = v17;
    if ((v17 & 0x1000000000000000) != 0)
    {
      v10 = String.UTF8View._foreignSubscript(position:)();
      goto LABEL_35;
    }

    if ((v18 & 0x2000000000000000) != 0)
    {
      v27[0] = v16;
      v27[1] = v18 & (-bswap64(0xFFuLL) - 1);
      v10 = *(v27 + v12);
      goto LABEL_35;
    }

    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_33;
    }

    if ((v18 & 0xFFFFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFE0)
    {
      __break(1u);
LABEL_33:
      v9 = _StringObject.sharedUTF8.getter();
      goto LABEL_34;
    }

    v9 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_34:
    v10 = *(v9 + v12);
LABEL_35:
    v7 = v28;
    v8 = v29;
    v27[4] = v29;
    v6 = (v29 & 0x1000000000000000) == 0 || (v28 & 0x800000000000000) != 0;
    if (v14 == 4 << v6)
    {
      v5 = sub_29B0C2B48(i, v28, v29);
    }

    else
    {
      v5 = i;
    }

    v27[3] = v8;
    if ((v8 & 0x1000000000000000) != 0)
    {
      v27[2] = v8;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v4 = (v8 & 0xF00000000000000uLL) >> 56;
      }

      else
      {
        v4 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v4 <= (v5 >> 16))
      {
        goto LABEL_51;
      }

      v3 = String.UTF8View._foreignIndex(after:)();
    }

    else
    {
      v3 = (((v5 >> 16) + 1) << 16) | 4;
    }

    std::string::push_back(&v31, v10);
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.SdfPath.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  v6 = 0;
  v5 = stringLiteral;
  sub_29B0C1740(stringLiteral._countAndFlagsBits, stringLiteral._object, &v3);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v4, &v3);
  std::string::~string(&v3);
  sub_29B0B82B8(&v6, &v4);
  sub_29A1DCEA8(&v4);
  sub_29B0B975C(v2, &v6);
  sub_29A1DCEA8(&v6);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.SdfAssetPath.init(stringLiteral:)(Swift::String stringLiteral)
{
  __dst = v1;
  memset(__b, 0, sizeof(__b));
  v6 = stringLiteral;
  sub_29B0C1740(stringLiteral._countAndFlagsBits, stringLiteral._object, &v4);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v5);
  std::string::~string(&v4);
  sub_29B0C1F58(__b, v5);
  sub_29A0D2850(v5);
  sub_29A4B1484(__dst, __b);
  sub_29A0D2850(__b);
}

unint64_t sub_29B0C1FA8()
{
  v2 = qword_2A14FA588;
  if (!qword_2A14FA588)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA588);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken()
{
  v4 = qword_2A14FA5C0;
  if (!qword_2A14FA5C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA5C0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C20E4()
{
  v2 = qword_2A14FA590;
  if (!qword_2A14FA590)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C2194()
{
  v2 = qword_2A14FA598;
  if (!qword_2A14FA598)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C222C()
{
  v2 = qword_2A14FA5A0;
  if (!qword_2A14FA5A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C22C4()
{
  v2 = qword_2A14FA5A8;
  if (!qword_2A14FA5A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath()
{
  v4 = qword_2A14FA5B8;
  if (!qword_2A14FA5B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA5B8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C2418()
{
  v2 = qword_2A14FA5B0;
  if (!qword_2A14FA5B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_29B0C2560(char *a1, __int128 *a2)
{
  sub_29A0D2850(a1);
  sub_29A4B1484(a1, a2);
  return a1;
}

uint64_t sub_29B0C25D4(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B0C1F58(a1, a2);
  sub_29A0D2850(a2);
  return a1;
}

uint64_t sub_29B0C2614(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0C26F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *(result + 48) = 1;
    }
  }

  else if (a3)
  {
    *(result + 48) = 0;
  }

  return result;
}

void *sub_29B0C2958(void *a1, void *a2)
{
  sub_29A424A8C(a1);
  sub_29B0C1C58(a1, a2);
  sub_29A424A8C(a2);
  return a1;
}

unint64_t sub_29B0C2998()
{
  v2 = qword_2A14FA5C8;
  if (!qword_2A14FA5C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAssetPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C2A18()
{
  v2 = qword_2A14FA5D0;
  if (!qword_2A14FA5D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C2A98()
{
  v2 = qword_2A14FA5D8;
  if (!qword_2A14FA5D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0C2B48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x29C2B9800](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

void *sub_29B0C2DE8(void *a1, void *a2)
{
  v6 = a1;
  v5 = a2;
  *a1 = *a2;
  sub_29B0BC15C(&v4);
  result = a1;
  *v5 = v4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::BitsAs<BOOL>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetBits();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::operator->()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetPtr();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetBits()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetBitMask()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::GetMaxValue();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::GetMaxValue()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetAlign();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetPtr()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfToken::_AddRef(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::BitsAs<BOOL>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::SetBits<BOOL>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_SetBits();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_SetBits()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetPtr();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_Combine()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_AsInt();
}

{
    ;
  }
}

uint64_t sub_29B0C3208(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  return a1;
}

void *sub_29B0C3254(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B088328(a1);
  sub_29B088624();
  return a1;
}

unint64_t sub_29B0C33EC()
{
  v2 = qword_2A14FA5E0;
  if (!qword_2A14FA5E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C3484()
{
  v2 = qword_2A14FA5E8;
  if (!qword_2A14FA5E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C351C()
{
  v2 = qword_2A14FA5F0;
  if (!qword_2A14FA5F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdAttribute();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdAttribute()
{
  v4 = qword_2A14FA608;
  if (!qword_2A14FA608)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA608);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C364C()
{
  v2 = qword_2A14FA5F8;
  if (!qword_2A14FA5F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrim();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrim()
{
  v4 = qword_2A14FA600;
  if (!qword_2A14FA600)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA600);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B0C37BC(uint64_t a1, uint64_t a2)
{
  sub_29A57F434(a1);
  sub_29A58CB08(a1, a2);
  return a1;
}

uint64_t sub_29B0C38A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B0C39A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_29B0C3B70(uint64_t a1, uint64_t a2)
{
  sub_29A5888DC(a1);
  sub_29A58CB08(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__ **pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::_IncrementIfValid(pxrInternal__aapl__pxrReserved__ **result, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  if (*result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement(*result, a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ **pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::_DecrementIfValid(pxrInternal__aapl__pxrReserved__ **result, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  if (*result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*result, a2);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(atomic_ullong *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  result = sub_29B0BB8EC(this + 6, 1, 3);
  if (result == 1)
  {
    if (this)
    {
      pxrInternal__aapl__pxrReserved__::Usd_PrimData::~Usd_PrimData(this);
      return MEMORY[0x29C2C4520](this, 0x1060C4054FBFFF5);
    }
  }

  return result;
}

void *static pxrInternal__aapl__pxrReserved__.GfMatrix4d.MakeTranslate(_:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  memset(__b, 0, sizeof(__b));
  sub_29B088388();
  *v9 = a2;
  *&v9[1] = a3;
  *&v9[2] = a4;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(__b, v9);
  memcpy(__dst, __b, sizeof(__dst));
  return memcpy(a1, __dst, 0x80uLL);
}

void *static pxrInternal__aapl__pxrReserved__.GfMatrix4d.MakeRotate(_:)@<X0>(void *a1@<X8>, float64_t a2@<D0>, float64_t a3@<D1>, float64_t a4@<D2>, float64_t a5@<D3>)
{
  v7.f64[0] = a2;
  v7.f64[1] = a3;
  v8.f64[0] = a4;
  v8.f64[1] = a5;
  v11 = v7;
  v12 = v8;
  memset(__b, 0, sizeof(__b));
  sub_29B088388();
  v9[0] = v7;
  v9[1] = v8;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(__b, v9);
  memcpy(__dst, __b, sizeof(__dst));
  return memcpy(a1, __dst, 0x80uLL);
}

void pxrInternal__aapl__pxrReserved__.GfMatrix4d.subscript.getter(uint64_t a1)
{
  v4 = 0;
  v5 = a1;
  if (a1 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a1 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  memcpy(__dst, __src, sizeof(__dst));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator[]();
}

void pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator[]()
{
  pxrInternal__aapl__pxrReserved__::GfMatrixData<double,4,4>::operator[]();
}

{
    ;
  }
}

uint64_t static pxrInternal__aapl__pxrReserved__.pxr_half.half.+ infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  v6[5] = a1;
  v6[1] = a2;
  v5 = Float.init(_:)(a1);
  v2 = Float.init(_:)(a2);
  sub_29AAC9D3C(v6, v5 + v2);
  return v6[0];
}

void * infix(_:_:)()
{
  pxrInternal__aapl__pxrReserved__::GfVec3f::operator[]();
}

{
  pxrInternal__aapl__pxrReserved__::GfVec3f::operator[]();
}

float sub_29B0C490C(float *a1, float a2, float a3, float a4)
{
  *a1 = a2;
  a1[1] = a3;
  result = a4;
  a1[2] = a4;
  return result;
}

void Bool.init(_:)(void *a1)
{
  v1 = Overlay::_operatorBool(a1);
  Bool.init(_:)(v1);
  sub_29B0C4A14();
}

{
  v1 = Overlay::_operatorBool(a1);
  Bool.init(_:)(v1);
  sub_29B0C4AB0();
}

void Bool.init(_:)(uint64_t a1)
{
  v5 = Overlay::_operatorBool(a1);
  Bool.init(_:)(v5);
  sub_29B088794(a1, v1, v2, v3);
}

BOOL Bool.init(_:)(uint64_t a1)
{
  v3 = Overlay::_operatorBool(a1);
  v4 = Bool.init(_:)(v3);
  sub_29B299684(a1);
  return v4;
}

uint64_t Bool.init(_:)(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  v3 = Overlay::_operatorBool(a1);
  sub_29B0C4C0C(a1);
  return v3;
}

void pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  pxrInternal__aapl__pxrReserved__::UsdIsConcrete();
}

{
    ;
  }
}

void Bool.init(_:)()
{
  sub_29B0C4E0C();
}

{
  sub_29B0C4EB8();
}

BOOL Bool.init(_:)(Overlay *a1, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v4 = Overlay::_operatorBool(a1, a2);
  v5 = Bool.init(_:)(v4);
  sub_29A5888DC(a1);
  return v5;
}

uint64_t Bool.init(_:)(Overlay *a1, const pxrInternal__aapl__pxrReserved__::UsdRelationship *a2)
{
  v4 = Overlay::_operatorBool(a1, a2);
  sub_29A5B6480(a1);
  return v4;
}

BOOL Bool.init(_:)(Overlay *a1, const pxrInternal__aapl__pxrReserved__::UsdShadeOutput *a2)
{
  v4 = Overlay::_operatorBool(a1, a2);
  v5 = Bool.init(_:)(v4);
  sub_29A7D85CC(a1);
  return v5;
}

BOOL Bool.init(_:)(void *a1)
{
  v3 = Overlay::HioImageWrapper::operator BOOL(a1);
  v4 = Bool.init(_:)(v3);
  sub_29B0C51A0(a1);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::UsdProperty::__synthesizedBaseCall_IsValid(pxrInternal__aapl__pxrReserved__::UsdProperty *this)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::__synthesizedBaseCall_IsValid(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdIsConcrete(int a1)
{
  v2 = 1;
  if (a1 != 1)
  {
    v2 = 1;
    if (a1 != 3)
    {
      return a1 == 4;
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimDataHandle::operator BOOL()
{
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::get();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_IsDead(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimData::_IsDead(this);
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimData::_IsDead(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  v3[2] = this;
  v3[0] = sub_29B0C54F4(this + 56, 11);
  v3[1] = v1;
  return sub_29B0C5534(v3);
}

void *sub_29B0C55E0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t sub_29B0C581C(uint64_t a1)
{
  sub_29A754560(a1);
  sub_29B088328(a1);
  return a1;
}

uint64_t sub_29B0C5884(uint64_t a1)
{
  if (*(a1 + 120) == -1)
  {
    return -1;
  }

  else
  {
    return *(a1 + 120);
  }
}

uint64_t static _StdVector_Equatable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v38 = a2;
  v40 = a3;
  v39 = a4;
  v5 = v4;
  v6 = v25;
  v29 = v5;
  v26 = "Fatal error";
  v27 = "Range requires lowerBound <= upperBound";
  v28 = "Swift/Range.swift";
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v42 = 0;
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness - 8;
  v34 = *(v31 + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v40, v39, v7);
  v35 = &v15[-v33];
  v36 = v33;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9, &v15[-v33]);
  v37 = &v15[-v36];
  v52 = v6;
  v51 = v38;
  v50 = v11;
  v41 = (*(v12 + 32))(v10);
  v13 = (*(v39 + 32))(v40);
  if (v41 == v13)
  {
    v24 = (*(v39 + 32))(v40);
    if (v24 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v45 = 0;
    v46 = v24;
    v23 = sub_29B0B7DC8(&qword_2A14FA610);
    sub_29B0C5DA4();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_29B0B7DC8(&qword_2A14FA628);
      IndexingIterator.next()();
      v22 = v43;
      if (v44)
      {
        break;
      }

      v21 = v22;
      v17 = v22;
      v42 = v22;
      (*(v39 + 40))();
      (*(v39 + 40))(v17, v40);
      swift_getAssociatedConformanceWitness();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v31 + 8);
      v18 = v31 + 8;
      v19(v35, AssociatedTypeWitness);
      v19(v37, AssociatedTypeWitness);
      if ((v20 & 1) == 0)
      {
        v16 = 0;
        return v16 & 1;
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_29B0C5DA4()
{
  v2 = qword_2A14FA618;
  if (!qword_2A14FA618)
  {
    sub_29B0B7EBC(&qword_2A14FA610);
    sub_29B0C5E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C5E48()
{
  v2 = qword_2A14FA620;
  if (!qword_2A14FA620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA620);
    return WitnessTable;
  }

  return v2;
}

uint64_t _StdVector_CustomStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = v2;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  v17 = a1;
  v18 = a2;
  v19 = sub_29B0C6190(sub_29B0C6154, v16, a1, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9F80], *(a2 + 16), MEMORY[0x29EDC9F90], v15);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", 2uLL, 1);
  sub_29B0B7DC8(&qword_2A14FA630);
  sub_29B0C6D54();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v9 = v4;

  sub_29B0B7F30();
  v10 = MEMORY[0x29C2B97A0](v3._countAndFlagsBits, v3._object, v8, v9);
  v11 = v5;

  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("]", 1uLL, 1)._countAndFlagsBits;
  v12 = MEMORY[0x29C2B97A0](v10, v11, countAndFlagsBits);

  return v12;
}

uint64_t sub_29B0C60A4@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B0C6190(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a1;
  v47 = a2;
  v92 = a3;
  v83 = a4;
  v56 = a5;
  v91 = a6;
  v49 = a8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "Swift/Sequence.swift";
  v53 = "Range requires lowerBound <= upperBound";
  v54 = "Swift/Range.swift";
  v55 = "Index out of range";
  v97 = a3;
  v96 = a4;
  v95 = a5;
  v84 = 0;
  v68 = MEMORY[0x29EDC9A28];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x2A1C7C4A8](0, AssociatedTypeWitness, v8);
  v61 = &v34 - v60;
  v62 = *(v10 - 8);
  v63 = v10 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11, &v34 - v60);
  v65 = &v34 - v64;
  v66 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v12, v14, &v34 - v64);
  v67 = &v34 - v66;
  v69 = type metadata accessor for Optional();
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x2A1C7C4A8](v84, v91, v92);
  v71 = &v34 - v70;
  v72 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x2A1C7C4A8](v15, v17, v18);
  v73 = &v34 - v72;
  v74 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x2A1C7C4A8](v19, v20, v21);
  v75 = &v34 - v74;
  v76 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x2A1C7C4A8](v22, v24, v25);
  v77 = &v34 - v76;
  v87 = *(v27 - 8);
  v88 = v27 - 8;
  v78 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v26, v28, v27);
  v86 = &v34 - v78;
  v79 = swift_getAssociatedTypeWitness();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v92, v91, v29);
  v90 = &v34 - v82;
  v93 = dispatch thunk of Sequence.underestimatedCount.getter();
  v94 = ContiguousArray.init()();
  v85 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v93);
  (*(v87 + 16))(v86, v89, v92);
  dispatch thunk of Sequence.makeIterator()();
  result = v93;
  if (v93 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v93)
    {
      v44 = 0;
      for (i = v48; ; i = v40)
      {
        v42 = i;
        v43 = v44;
        if (v44 < 0 || v43 >= v93)
        {
          break;
        }

        if (v93 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          break;
        }

        v41 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        if ((*(v58 + 48))(v73, 1, AssociatedTypeWitness) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v32 = v42;
        v46(v73, v67);
        v40 = v32;
        if (v32)
        {
          (*(v80 + 8))(v90, v79);
          sub_29B0DBA8C();
          (*(v62 + 32))(v49, v67, v56);
          (*(v58 + 8))(v73, AssociatedTypeWitness);
          return v34;
        }

        (*(v58 + 8))(v73, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        if (v41 == v93)
        {
          v39 = v40;
          goto LABEL_21;
        }

        result = v40;
        v44 = v41;
      }

      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v39 = v48;
LABEL_21:
    for (j = v39; ; j = v35)
    {
      v37 = j;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(v58 + 48))(v71, 1, AssociatedTypeWitness) == 1)
      {
        (*(v80 + 8))(v90, v79);
        sub_29B0DBAB8(v71, AssociatedTypeWitness);
        v36 = v94;

        return v36;
      }

      (*(v58 + 32))(v61, v71, AssociatedTypeWitness);
      v33 = v37;
      v46(v61, v65);
      v35 = v33;
      if (v33)
      {
        break;
      }

      (*(v58 + 8))(v61, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
    }

    (*(v58 + 8))(v61, AssociatedTypeWitness);
    (*(v80 + 8))(v90, v79);
    sub_29B0DBA8C();
    (*(v62 + 32))(v49, v65, v56);
    return v34;
  }

  return result;
}

unint64_t sub_29B0C6D54()
{
  v2 = qword_2A14FA638;
  if (!qword_2A14FA638)
  {
    sub_29B0B7EBC(&qword_2A14FA630);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C6DDC(void *a1)
{
  a1[1] = sub_29B0C6E20();
  a1[2] = sub_29B0C6F38();
  result = sub_29B0C6FB8();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C6E20()
{
  v2 = qword_2A14FA640;
  if (!qword_2A14FA640)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA640);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____()
{
  v4 = qword_2A14FA988;
  if (!qword_2A14FA988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA988);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C6F38()
{
  v2 = qword_2A14FA648;
  if (!qword_2A14FA648)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C6FB8()
{
  v2 = qword_2A14FA650;
  if (!qword_2A14FA650)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7050()
{
  v2 = qword_2A14FA658;
  if (!qword_2A14FA658)
  {
    type metadata accessor for std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7104(uint64_t a1)
{
  result = sub_29B0C7130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C7130()
{
  v2 = qword_2A14FA660;
  if (!qword_2A14FA660)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA660);
    return WitnessTable;
  }

  return v2;
}

void *sub_29B0C71F0@<X0>(void *a1@<X8>)
{
  result = a1;
  sub_29B0DA674(a1);
  return result;
}

unint64_t sub_29B0C7234(uint64_t a1)
{
  result = sub_29B0C7260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C7260()
{
  v2 = qword_2A14FA668;
  if (!qword_2A14FA668)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C72F8()
{
  v2 = qword_2A14FA670;
  if (!qword_2A14FA670)
  {
    type metadata accessor for std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7378(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C73B0();
  result = sub_29B0C7430();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C73B0()
{
  v2 = qword_2A14FA678;
  if (!qword_2A14FA678)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7430()
{
  v2 = qword_2A14FA680;
  if (!qword_2A14FA680)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7524(void *a1)
{
  a1[1] = sub_29B0C7568();
  a1[2] = sub_29B0C7680();
  result = sub_29B0C7700();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C7568()
{
  v2 = qword_2A14FA688;
  if (!qword_2A14FA688)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA688);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__()
{
  v4 = qword_2A14FA980;
  if (!qword_2A14FA980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA980);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C7680()
{
  v2 = qword_2A14FA690;
  if (!qword_2A14FA690)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7700()
{
  v2 = qword_2A14FA698;
  if (!qword_2A14FA698)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7798()
{
  v2 = qword_2A14FA6A0;
  if (!qword_2A14FA6A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C784C(uint64_t a1)
{
  result = sub_29B0C7878();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C7878()
{
  v2 = qword_2A14FA6A8;
  if (!qword_2A14FA6A8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7958(uint64_t a1)
{
  result = sub_29B0C7984();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C7984()
{
  v2 = qword_2A14FA6B0;
  if (!qword_2A14FA6B0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7A1C()
{
  v2 = qword_2A14FA6B8;
  if (!qword_2A14FA6B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfToken();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7A9C(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C7AD4();
  result = sub_29B0C7B54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C7AD4()
{
  v2 = qword_2A14FA6C0;
  if (!qword_2A14FA6C0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7B54()
{
  v2 = qword_2A14FA6C8;
  if (!qword_2A14FA6C8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7C48(void *a1)
{
  a1[1] = sub_29B0C7C8C();
  a1[2] = sub_29B0C7DA4();
  result = sub_29B0C7E24();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C7C8C()
{
  v2 = qword_2A14FA6D0;
  if (!qword_2A14FA6D0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__()
{
  v4 = qword_2A14FA978;
  if (!qword_2A14FA978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA978);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C7DA4()
{
  v2 = qword_2A14FA6D8;
  if (!qword_2A14FA6D8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7E24()
{
  v2 = qword_2A14FA6E0;
  if (!qword_2A14FA6E0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7EBC()
{
  v2 = qword_2A14FA6E8;
  if (!qword_2A14FA6E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C7F54(uint64_t a1)
{
  result = sub_29B0C7F80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C7F80()
{
  v2 = qword_2A14FA6F0;
  if (!qword_2A14FA6F0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8060(uint64_t a1)
{
  result = sub_29B0C808C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C808C()
{
  v2 = qword_2A14FA6F8;
  if (!qword_2A14FA6F8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8124()
{
  v2 = qword_2A14FA700;
  if (!qword_2A14FA700)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C81A4(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C81DC();
  result = sub_29B0C825C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C81DC()
{
  v2 = qword_2A14FA708;
  if (!qword_2A14FA708)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C825C()
{
  v2 = qword_2A14FA710;
  if (!qword_2A14FA710)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8350(void *a1)
{
  a1[1] = sub_29B0C8394();
  a1[2] = sub_29B0C84AC();
  result = sub_29B0C852C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C8394()
{
  v2 = qword_2A14FA718;
  if (!qword_2A14FA718)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA718);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__()
{
  v4 = qword_2A14FA970;
  if (!qword_2A14FA970)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA970);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C84AC()
{
  v2 = qword_2A14FA720;
  if (!qword_2A14FA720)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C852C()
{
  v2 = qword_2A14FA728;
  if (!qword_2A14FA728)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C85C4()
{
  v2 = qword_2A14FA730;
  if (!qword_2A14FA730)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayerOffset();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA730);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayerOffset()
{
  v4 = qword_2A14FA968;
  if (!qword_2A14FA968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA968);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C8728(uint64_t a1)
{
  result = sub_29B0C8754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C8754()
{
  v2 = qword_2A14FA738;
  if (!qword_2A14FA738)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8824(uint64_t a1)
{
  result = sub_29B0C8850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C8850()
{
  v2 = qword_2A14FA740;
  if (!qword_2A14FA740)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C88E8()
{
  v2 = qword_2A14FA748;
  if (!qword_2A14FA748)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLayerOffset();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8968(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C89A0();
  result = sub_29B0C8A20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C89A0()
{
  v2 = qword_2A14FA750;
  if (!qword_2A14FA750)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8A20()
{
  v2 = qword_2A14FA758;
  if (!qword_2A14FA758)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8B14(void *a1)
{
  a1[1] = sub_29B0C8B58();
  a1[2] = sub_29B0C8C70();
  result = sub_29B0C8CF0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C8B58()
{
  v2 = qword_2A14FA760;
  if (!qword_2A14FA760)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA760);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___()
{
  v4 = qword_2A14FA960;
  if (!qword_2A14FA960)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA960);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C8C70()
{
  v2 = qword_2A14FA768;
  if (!qword_2A14FA768)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8CF0()
{
  v2 = qword_2A14FA770;
  if (!qword_2A14FA770)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8D88()
{
  v2 = qword_2A14FA778;
  if (!qword_2A14FA778)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA778);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec_()
{
  v4 = qword_2A14FA958;
  if (!qword_2A14FA958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA958);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C8EB8(uint64_t a1)
{
  result = sub_29B0C8EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C8EE4()
{
  v2 = qword_2A14FA780;
  if (!qword_2A14FA780)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C8FCC(uint64_t a1)
{
  result = sub_29B0C8FF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C8FF8()
{
  v2 = qword_2A14FA788;
  if (!qword_2A14FA788)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9090()
{
  v2 = qword_2A14FA790;
  if (!qword_2A14FA790)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9110(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C9148();
  result = sub_29B0C91C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C9148()
{
  v2 = qword_2A14FA798;
  if (!qword_2A14FA798)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C91C8()
{
  v2 = qword_2A14FA7A0;
  if (!qword_2A14FA7A0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C92BC(void *a1)
{
  a1[1] = sub_29B0C9300();
  a1[2] = sub_29B0C9418();
  result = sub_29B0C9498();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C9300()
{
  v2 = qword_2A14FA7A8;
  if (!qword_2A14FA7A8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___()
{
  v4 = qword_2A14FA950;
  if (!qword_2A14FA950)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA950);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C9418()
{
  v2 = qword_2A14FA7B0;
  if (!qword_2A14FA7B0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9498()
{
  v2 = qword_2A14FA7B8;
  if (!qword_2A14FA7B8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9530()
{
  v2 = qword_2A14FA7C0;
  if (!qword_2A14FA7C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec_()
{
  v4 = qword_2A14FA948;
  if (!qword_2A14FA948)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA948);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C9648(uint64_t a1)
{
  result = sub_29B0C9674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C9674()
{
  v2 = qword_2A14FA7C8;
  if (!qword_2A14FA7C8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C971C(uint64_t a1)
{
  result = sub_29B0C9748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C9748()
{
  v2 = qword_2A14FA7D0;
  if (!qword_2A14FA7D0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C97E0()
{
  v2 = qword_2A14FA7D8;
  if (!qword_2A14FA7D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9860(uint64_t a1)
{
  *(a1 + 8) = sub_29B0C9898();
  result = sub_29B0C9918();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0C9898()
{
  v2 = qword_2A14FA7E0;
  if (!qword_2A14FA7E0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9918()
{
  v2 = qword_2A14FA7E8;
  if (!qword_2A14FA7E8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9A0C(void *a1)
{
  a1[1] = sub_29B0C9A50();
  a1[2] = sub_29B0C9B68();
  result = sub_29B0C9BE8();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0C9A50()
{
  v2 = qword_2A14FA7F0;
  if (!qword_2A14FA7F0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__()
{
  v4 = qword_2A14FA940;
  if (!qword_2A14FA940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA940);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0C9B68()
{
  v2 = qword_2A14FA7F8;
  if (!qword_2A14FA7F8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9BE8()
{
  v2 = qword_2A14FA800;
  if (!qword_2A14FA800)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9C80()
{
  v2 = qword_2A14FA808;
  if (!qword_2A14FA808)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA808);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4f()
{
  v4 = qword_2A14FA938;
  if (!qword_2A14FA938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA938);
      return v1;
    }
  }

  return v4;
}

void sub_29B0C9D98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_29B0C9E7C(a1);
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
}

unint64_t sub_29B0C9DD0(uint64_t a1)
{
  result = sub_29B0C9DFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C9DFC()
{
  v2 = qword_2A14FA810;
  if (!qword_2A14FA810)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9EAC(uint64_t a1)
{
  result = sub_29B0C9ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0C9ED8()
{
  v2 = qword_2A14FA818;
  if (!qword_2A14FA818)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9F70()
{
  v2 = qword_2A14FA820;
  if (!qword_2A14FA820)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0C9FF0(uint64_t a1)
{
  *(a1 + 8) = sub_29B0CA028();
  result = sub_29B0CA0A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0CA028()
{
  v2 = qword_2A14FA828;
  if (!qword_2A14FA828)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA0A8()
{
  v2 = qword_2A14FA830;
  if (!qword_2A14FA830)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA19C(void *a1)
{
  a1[1] = sub_29B0CA1E0();
  a1[2] = sub_29B0CA2F8();
  result = sub_29B0CA378();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0CA1E0()
{
  v2 = qword_2A14FA838;
  if (!qword_2A14FA838)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA838);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__()
{
  v4 = qword_2A14FA930;
  if (!qword_2A14FA930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA930);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0CA2F8()
{
  v2 = qword_2A14FA840;
  if (!qword_2A14FA840)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA378()
{
  v2 = qword_2A14FA848;
  if (!qword_2A14FA848)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA410()
{
  v2 = qword_2A14FA850;
  if (!qword_2A14FA850)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdAttribute();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA4C4(uint64_t a1)
{
  result = sub_29B0CA4F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CA4F0()
{
  v2 = qword_2A14FA858;
  if (!qword_2A14FA858)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA5D0(uint64_t a1)
{
  result = sub_29B0CA5FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CA5FC()
{
  v2 = qword_2A14FA860;
  if (!qword_2A14FA860)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA694()
{
  v2 = qword_2A14FA868;
  if (!qword_2A14FA868)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdAttribute();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA714(uint64_t a1)
{
  *(a1 + 8) = sub_29B0CA74C();
  result = sub_29B0CA7CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0CA74C()
{
  v2 = qword_2A14FA870;
  if (!qword_2A14FA870)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA7CC()
{
  v2 = qword_2A14FA878;
  if (!qword_2A14FA878)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CA8C0(void *a1)
{
  a1[1] = sub_29B0CA904();
  a1[2] = sub_29B0CAA1C();
  result = sub_29B0CAA9C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0CA904()
{
  v2 = qword_2A14FA880;
  if (!qword_2A14FA880)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA880);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__()
{
  v4 = qword_2A14FA928;
  if (!qword_2A14FA928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA928);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0CAA1C()
{
  v2 = qword_2A14FA888;
  if (!qword_2A14FA888)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAA9C()
{
  v2 = qword_2A14FA890;
  if (!qword_2A14FA890)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAB34()
{
  v2 = qword_2A14FA898;
  if (!qword_2A14FA898)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdRelationship();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA898);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdRelationship()
{
  v4 = qword_2A14FA920;
  if (!qword_2A14FA920)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA920);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0CAC64(uint64_t a1)
{
  result = sub_29B0CAC90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CAC90()
{
  v2 = qword_2A14FA8A0;
  if (!qword_2A14FA8A0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAD70(uint64_t a1)
{
  result = sub_29B0CAD9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CAD9C()
{
  v2 = qword_2A14FA8A8;
  if (!qword_2A14FA8A8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAE34()
{
  v2 = qword_2A14FA8B0;
  if (!qword_2A14FA8B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdRelationship();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAEB4(uint64_t a1)
{
  *(a1 + 8) = sub_29B0CAEEC();
  result = sub_29B0CAF6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0CAEEC()
{
  v2 = qword_2A14FA8B8;
  if (!qword_2A14FA8B8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CAF6C()
{
  v2 = qword_2A14FA8C0;
  if (!qword_2A14FA8C0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB060(void *a1)
{
  a1[1] = sub_29B0CB0A4();
  a1[2] = sub_29B0CB1BC();
  result = sub_29B0CB23C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0CB0A4()
{
  v2 = qword_2A14FA8C8;
  if (!qword_2A14FA8C8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__()
{
  v4 = qword_2A14FA918;
  if (!qword_2A14FA918)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA918);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0CB1BC()
{
  v2 = qword_2A14FA8D0;
  if (!qword_2A14FA8D0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB23C()
{
  v2 = qword_2A14FA8D8;
  if (!qword_2A14FA8D8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB2D4()
{
  v2 = qword_2A14FA8E0;
  if (!qword_2A14FA8E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp()
{
  v4 = qword_2A14FA910;
  if (!qword_2A14FA910)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FA910);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0CB420(uint64_t a1)
{
  result = sub_29B0CB44C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CB44C()
{
  v2 = qword_2A14FA8E8;
  if (!qword_2A14FA8E8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB534(uint64_t a1)
{
  result = sub_29B0CB560();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0CB560()
{
  v2 = qword_2A14FA8F0;
  if (!qword_2A14FA8F0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB5F8()
{
  v2 = qword_2A14FA8F8;
  if (!qword_2A14FA8F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA8F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB678(uint64_t a1)
{
  *(a1 + 8) = sub_29B0CB6B0();
  result = sub_29B0CB730();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0CB6B0()
{
  v2 = qword_2A14FA900;
  if (!qword_2A14FA900)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CB730()
{
  v2 = qword_2A14FA908;
  if (!qword_2A14FA908)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0CB990(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 136))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 132) & 0xFE) != 0)
      {
        v3 = (*(a1 + 132) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0CBAB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 136);
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 128) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 132) = a2 + 1;
    }
  }

  return result;
}

void **sub_29B0CBE00(void **a1, void **a2)
{
  sub_29B0CBCBC(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBCBC(a2);
  return a1;
}

void **sub_29B0CC088(void **a1, void **a2)
{
  sub_29B0CBF7C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBF7C(a2);
  return a1;
}

void **sub_29B0CC1EC(void **a1, void **a2)
{
  sub_29B0CC0E0(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CC0E0(a2);
  return a1;
}

__n128 sub_29B0CC22C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t *sub_29B0CC35C(uint64_t *a1, uint64_t *a2)
{
  sub_29B0CC250(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CC250(a2);
  return a1;
}

void **sub_29B0CC604(void **a1, void **a2)
{
  sub_29B0CC4F8(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CC4F8(a2);
  return a1;
}

void **sub_29B0CC768(void **a1, void **a2)
{
  sub_29B0CC65C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CC65C(a2);
  return a1;
}

uint64_t *sub_29B0CC8CC(uint64_t *a1, uint64_t *a2)
{
  sub_29B0CC7C0(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B0CC7C0(a2);
  return a1;
}

void **sub_29B0CCA00(void **a1, void **a2)
{
  sub_29A419524(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29A419524(a2);
  return a1;
}

void **sub_29B0CCB34(void **a1, void **a2)
{
  sub_29A3C73E0(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29A3C73E0(a2);
  return a1;
}

void **sub_29B0CCC68(void **a1, void **a2)
{
  sub_29A1C9440(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29A1C9440(a2);
  return a1;
}

unint64_t sub_29B0CCCC0()
{
  v2 = qword_2A14FA990;
  if (!qword_2A14FA990)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CCD58()
{
  v2 = qword_2A14FA998;
  if (!qword_2A14FA998)
  {
    sub_29B0B7EBC(&qword_2A14FA610);
    sub_29B0C5E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CCE14()
{
  v2 = qword_2A14FA9A0;
  if (!qword_2A14FA9A0)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8);
    sub_29B0CCEAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0CCEAC()
{
  v2 = qword_2A14FA9B0;
  if (!qword_2A14FA9B0)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9B0);
    return WitnessTable;
  }

  return v2;
}

void **sub_29B0CCF6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D4A7C();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29A1C9440(v6);
}