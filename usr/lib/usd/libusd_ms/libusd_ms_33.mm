uint64_t sub_29A1936C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20421A0);
  }

  else
  {
    return 0;
  }
}

void *sub_29A193700(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20433C0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A193794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1937D0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1937F0(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A193968(result);
}

void *sub_29A193854(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A193B78);
  return a2;
}

void *sub_29A193950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20433C0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A193968(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1939D0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 3;
      sub_29A18D5E8(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A193B10(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A193968(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A193968(&v4);
  }

  return *a1;
}

void *sub_29A193B78(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A193B90(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291C48();
  }

  return sub_29A193B10(a1);
}

void **sub_29A193BCC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1936C8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A193D1C, &stru_2A20421A0);
  }
}

uint64_t sub_29A193C60(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_29A193DB8(a1);
  v7 = &v5;
  sub_29A193E08(a1, a2, &v7);
  return a1;
}

double sub_29A193CD8@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A194110(a2, a1).n128_u64[0];
  return result;
}

double sub_29A193D1C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A193D6C;
  a1[2] = &stru_2A20421A0;
  return result;
}

uint64_t sub_29A193D6C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  return result;
}

void *sub_29A193DB8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A193E08(unint64_t *result, unint64_t a2, int **a3)
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
              result = sub_29A194030(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = result + v10;
                  v12 = *(v9 + v10);
                  *(v11 + 2) = *(v9 + v10 + 4);
                  *v11 = v12;
                  v10 += 6;
                }

                while (6 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 6 * v3;
            do
            {
              v15 = v7 + v14;
              v16 = *v13;
              *(v15 + 2) = *(v13 + 2);
              *v15 = v16;
              v14 += 6;
            }

            while (6 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *result;
      }

      result = sub_29A194030(result, a2);
      v17 = result;
      if (v3)
      {
        v23 = 6 * v22;
        v24 = result;
        do
        {
          v25 = *v7;
          *(v24 + 2) = *(v7 + 2);
          *v24 = v25;
          v24 = (v24 + 6);
          v7 = (v7 + 6);
          v23 -= 6;
        }

        while (v23);
      }

      if (v3 < a2)
      {
        v26 = *a3;
        v27 = 6 * v3;
        do
        {
          v28 = result + v27;
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          v27 += 6;
        }

        while (6 * a2 != v27);
      }

      goto LABEL_31;
    }

    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      result = sub_29A194030(result, a2);
      v17 = result;
      v18 = 0;
      v19 = *a3;
      do
      {
        v20 = result + v18;
        v21 = *v19;
        *(v20 + 2) = *(v19 + 2);
        *v20 = v21;
        v18 += 6;
      }

      while (6 * a2 != v18);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A193DB8(result);
}

void *sub_29A194030(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]");
  if (a2 > 0x1555555555555552)
  {
    v3 = -1;
  }

  else
  {
    v3 = 6 * a2 + 16;
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

uint64_t sub_29A1940CC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291CB4();
    }
  }

  return result;
}

__n128 sub_29A194110(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1931E0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1941C8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  v4 = sub_29A194644(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A1941C8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043478;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19425C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A194298(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1942B8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A194430(result);
}

void *sub_29A19431C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19462C);
  return a2;
}

void *sub_29A194418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043478;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A194430(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A194498(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 3;
      sub_29A18D874(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1945C4(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A194430(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A194430(&v4);
  }

  return *a1;
}

uint64_t sub_29A194644(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291D34();
  }

  return sub_29A1945C4(a1);
}

void sub_29A194680(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A193090(a1);
  sub_29A1948F8(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A194CC8(v10);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v11;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[2]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7[2] = v9;
      v4 += 3;
      v7 += 3;
    }

    while (v4 != v6);
  }

  sub_29A194970(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A194758(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1952C8(a1);
  sub_29A193C60(v14, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1940CC(v14);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v15;
    do
    {
      v8 = *v4;
      if (v8 == 0.0)
      {
        v9 = HIWORD(LODWORD(v8));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
      {
        v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
      }

      v10 = v4[1];
      if (v10 == 0.0)
      {
        v11 = HIWORD(LODWORD(v10));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
      {
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
      }

      v12 = v4[2];
      if (v12 == 0.0)
      {
        v13 = HIWORD(LODWORD(v12));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23])
      {
        v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23] + (((LODWORD(v12) & 0x7FFFFF) + ((LODWORD(v12) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v13) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v12));
      }

      *v7 = v9 | (v11 << 16);
      *(v7 + 4) = v13;
      v4 += 3;
      v7 += 6;
    }

    while (v4 != v6);
  }

  sub_29A193CD8(v14, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

uint64_t sub_29A1948F8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_29A1949B4(a1);
  v6 = v5;
  sub_29A194A04(a1, a2, &v6);
  return a1;
}

double sub_29A194970@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A194D0C(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A1949B4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A194A04(unint64_t *result, unint64_t a2, __int128 **a3)
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
              result = sub_29A194C30(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8);
                  v11[2] = *(v9 + v10 * 8 + 16);
                  *v11 = v12;
                  v10 += 3;
                }

                while (3 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 3 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = *v13;
              v15[2] = *(v13 + 2);
              *v15 = v16;
              v14 += 3;
            }

            while (3 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *result;
      }

      result = sub_29A194C30(result, a2);
      v17 = result;
      if (v3)
      {
        v23 = 24 * v22;
        v24 = result;
        do
        {
          v25 = *v7;
          v24[2] = v7[2];
          *v24 = v25;
          v24 += 3;
          v7 += 3;
          v23 -= 24;
        }

        while (v23);
      }

      if (v3 < a2)
      {
        v26 = *a3;
        v27 = 3 * v3;
        do
        {
          v28 = &result[v27];
          v29 = *v26;
          v28[2] = *(v26 + 2);
          *v28 = v29;
          v27 += 3;
        }

        while (3 * a2 != v27);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      result = sub_29A194C30(result, a2);
      v17 = result;
      v18 = 0;
      v19 = *a3;
      do
      {
        v20 = &result[v18];
        v21 = *v19;
        v20[2] = *(v19 + 2);
        *v20 = v21;
        v18 += 3;
      }

      while (3 * a2 != v18);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1949B4(result);
}

void *sub_29A194C30(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]");
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
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

uint64_t sub_29A194CC8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291DA0();
    }
  }

  return result;
}

__n128 sub_29A194D0C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A194DC4(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A194DFC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  v4 = sub_29A19528C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A194DC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20421E8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A194DFC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043530;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A194E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A194ECC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A194EEC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A195064(result);
}

void *sub_29A194F50(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A195274);
  return a2;
}

void *sub_29A19504C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043530;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A195064(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1950CC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 3;
      sub_29A18DC38(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A19520C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A195064(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A195064(&v4);
  }

  return *a1;
}

void *sub_29A195274(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 3;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A19528C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291E0C();
  }

  return sub_29A19520C(a1);
}

void **sub_29A1952C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A194DC4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19535C, &stru_2A20421E8);
  }
}

double sub_29A19535C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1953AC;
  a1[2] = &stru_2A20421E8;
  return result;
}

uint64_t sub_29A1953AC(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  return result;
}

void sub_29A1953F8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A193BCC(a1);
  sub_29A1948F8(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A194CC8(v10);
  if (v5)
  {
    v6 = v11;
    v7 = (v4 + 8);
    v8 = 12 * v5;
    do
    {
      v9 = *v7;
      *v6 = vcvtq_f64_f32(*(v7 - 2));
      v6[1].f64[0] = v9;
      v6 = (v6 + 24);
      v7 += 3;
      v8 -= 12;
    }

    while (v8);
  }

  sub_29A194970(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A1954B8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1952C8(a1);
  sub_29A193124(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1935CC(v10);
  if (v5)
  {
    v6 = v11;
    v7 = (v4 + 16);
    v8 = 24 * v5;
    do
    {
      v9 = *v7;
      *v6 = vcvt_f32_f64(*(v7 - 2));
      v6[1].f32[0] = v9;
      v6 = (v6 + 12);
      v7 += 3;
      v8 -= 24;
    }

    while (v8);
  }

  sub_29A19319C(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A195578(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1956FC(a1);
  sub_29A195790(v11, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A195BC4(v11);
  if (v5)
  {
    v6 = &v4[4 * v5];
    v7 = v12;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[2]];
      v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[3]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7[2] = v9;
      v7[3] = v10;
      v4 += 4;
      v7 += 4;
    }

    while (v4 != v6);
  }

  sub_29A195804(v11, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A195648(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A196258(a1);
  sub_29A1962EC(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1966EC(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 16 * v5;
    do
    {
      sub_29A18BEFC(&v10, v4);
      *v6++ = v10;
      v4 += 4;
      v7 -= 16;
    }

    while (v7);
  }

  sub_29A196360(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void **sub_29A1956FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A195848(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A195880, &stru_2A2042140);
  }
}

uint64_t sub_29A195790(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_29A19591C(a1);
  v6 = v5;
  sub_29A19596C(a1, a2, &v6);
  return a1;
}

double sub_29A195804@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A195C08(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A195848(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042140);
  }

  else
  {
    return 0;
  }
}

double sub_29A195880@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1958D0;
  a1[2] = &stru_2A2042140;
  return result;
}

uint64_t sub_29A1958D0(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  return result;
}

void *sub_29A19591C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19596C(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A195B34(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A195B34(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29A195B34(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A19591C(result);
}

void *sub_29A195B34(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

uint64_t sub_29A195BC4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291E78();
    }
  }

  return result;
}

__n128 sub_29A195C08(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A195CC0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A195CF8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  v4 = sub_29A19621C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A195CC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042188);
  }

  else
  {
    return 0;
  }
}

void *sub_29A195CF8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20435E8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A195D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A195DC8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A195DE8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A195F60(result);
}

void *sub_29A195E4C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A196204);
  return a2;
}

void *sub_29A195F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20435E8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A195F60(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A195FC8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A196040(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A196040(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18B6BC(&v5, a2, a2 + 1, a2 + 2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A19619C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A195F60(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A195F60(&v4);
  }

  return *a1;
}

void *sub_29A196204(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A19621C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291EDC();
  }

  return sub_29A19619C(a1);
}

void **sub_29A196258(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A195CC0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1963A4, &stru_2A2042188);
  }
}

uint64_t sub_29A1962EC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A196440(a1);
  v6 = &v5;
  sub_29A196490(a1, a2, &v6);
  return a1;
}

double sub_29A196360@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A196730(a2, a1).n128_u64[0];
  return result;
}

double sub_29A1963A4@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1963F4;
  a1[2] = &stru_2A2042188;
  return result;
}

uint64_t sub_29A1963F4(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  return result;
}

void *sub_29A196440(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A196490(unint64_t *result, unint64_t a2, unint64_t **a3)
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
              result = sub_29A196658(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = *a3;
            v12 = v3;
            do
            {
              v7[v12++] = *v11;
            }

            while (a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A196658(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 8 * v17;
        v19 = result;
        do
        {
          v20 = *v7++;
          *v19++ = v20;
          v18 -= 8;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = v3;
        do
        {
          result[v22++] = *v21;
        }

        while (a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      result = sub_29A196658(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        result[v15 / 8] = *v16;
        v15 += 8;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A196440(result);
}

void *sub_29A196658(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4h]");
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

uint64_t sub_29A1966EC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B291F48();
    }
  }

  return result;
}

__n128 sub_29A196730(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A195848(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1967E8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  v4 = sub_29A196CE8(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A1967E8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20436A0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19687C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1968B8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1968D8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A196A50(result);
}

void *sub_29A19693C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A196CD0);
  return a2;
}

void *sub_29A196A38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20436A0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A196A50(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A196AB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A196B30(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A196B30(uint64_t a1, unsigned __int16 *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18B380(&v5, a2, a2 + 1, a2 + 2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A196C68(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A196A50(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A196A50(&v4);
  }

  return *a1;
}

uint64_t sub_29A196CE8(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B291FAC();
  }

  return sub_29A196C68(a1);
}

void sub_29A196D24(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1956FC(a1);
  sub_29A196EB8(v11, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19722C(v11);
  if (v5)
  {
    v6 = &v4[4 * v5];
    v7 = v12;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[1]];
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[2]];
      v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4[3]];
      *v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v4];
      v7[1] = v8;
      v7[2] = v9;
      v7[3] = v10;
      v4 += 4;
      v7 += 4;
    }

    while (v4 != v6);
  }

  sub_29A196F2C(v11, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A196E04(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1978C0(a1);
  sub_29A1962EC(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1966EC(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 32 * v5;
    do
    {
      sub_29A18BC98(&v10, v4);
      *v6++ = v10;
      v4 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  sub_29A196360(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

uint64_t sub_29A196EB8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_29A196F70(a1);
  v6 = v5;
  sub_29A196FC0(a1, a2, &v6);
  return a1;
}

double sub_29A196F2C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A197270(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A196F70(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A196FC0(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A19719C(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29A19719C(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29A19719C(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A196F70(result);
}

void *sub_29A19719C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
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

uint64_t sub_29A19722C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292018();
    }
  }

  return result;
}

__n128 sub_29A197270(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A197328(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A197360(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  v4 = sub_29A197884(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A197328(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20421D0);
  }

  else
  {
    return 0;
  }
}

void *sub_29A197360(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043758;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1973F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A197430(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A197450(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1975C8(result);
}

void *sub_29A1974B4(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19786C);
  return a2;
}

void *sub_29A1975B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043758;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1975C8(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A197630(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A1976A8(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1976A8(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18BAAC(&v5, a2, a2 + 1, a2 + 2, a2 + 3);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A197804(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1975C8(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1975C8(&v4);
  }

  return *a1;
}

void *sub_29A19786C(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A197884(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292080();
  }

  return sub_29A197804(a1);
}

void **sub_29A1978C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A197328(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A197954, &stru_2A20421D0);
  }
}

double sub_29A197954@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1979A4;
  a1[2] = &stru_2A20421D0;
  return result;
}

uint64_t sub_29A1979A4(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  return result;
}

void sub_29A1979F0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A196258(a1);
  sub_29A196EB8(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19722C(v10);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v11;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 2;
      *v7 = vcvtq_f64_f32(v8);
      v7[1] = vcvtq_f64_f32(v9);
      v7 += 2;
    }

    while (v4 != v6);
  }

  sub_29A196F2C(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A197A98(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1978C0(a1);
  sub_29A195790(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A195BC4(v10);
  if (v5)
  {
    v6 = v11;
    v7 = 32 * v5;
    do
    {
      v9 = *v4;
      v8 = v4[1];
      v4 += 2;
      *v6++ = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v8);
      v7 -= 32;
    }

    while (v7);
  }

  sub_29A195804(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A197B40(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A197CD8(a1);
  sub_29A197D6C(v14, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A198240(v14);
  if (v5)
  {
    v6 = v15;
    v7 = v5 << 6;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(v16, v4);
      v8 = v16[0];
      v9 = v16[1];
      v10 = v16[3];
      v6[2] = v16[2];
      v6[3] = v10;
      *v6 = v8;
      v6[1] = v9;
      v11 = v16[4];
      v12 = v16[5];
      v13 = v16[7];
      v6[6] = v16[6];
      v6[7] = v13;
      v6[4] = v11;
      v6[5] = v12;
      v4 = (v4 + 64);
      v6 += 8;
      v7 -= 64;
    }

    while (v7);
  }

  sub_29A197DEC(v14, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29A197C1C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1988F4(a1);
  sub_29A198988(v11, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A198DC8(v11);
  if (v5)
  {
    v6 = v12;
    v7 = v5 << 7;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v13, v4);
      v8 = v13[0];
      v9 = v13[1];
      v10 = v13[3];
      v6[2] = v13[2];
      v6[3] = v10;
      *v6 = v8;
      v6[1] = v9;
      v6 += 4;
      v4 = (v4 + 128);
      v7 -= 128;
    }

    while (v7);
  }

  sub_29A198A00(v11, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void **sub_29A197CD8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A197E30(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A197E68, &stru_2A2042218);
  }
}

uint64_t sub_29A197D6C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_29A197F04(a1);
  v6 = v5;
  sub_29A197F54(a1, a2, &v6);
  return a1;
}

double sub_29A197DEC@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A198284(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A197E30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 26)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042218);
  }

  else
  {
    return 0;
  }
}

double sub_29A197E68@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A197EB8;
  a1[2] = &stru_2A2042218;
  return result;
}

uint64_t sub_29A197EB8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
  }

  return result;
}

void *sub_29A197F04(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A197F54(unint64_t *result, unint64_t a2, __int128 **a3)
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
              result = sub_29A1981B0(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10 / 8];
                  v12 = *(v9 + v10);
                  v13 = *(v9 + v10 + 16);
                  v14 = *(v9 + v10 + 48);
                  *(v11 + 2) = *(v9 + v10 + 32);
                  *(v11 + 3) = v14;
                  *v11 = v12;
                  *(v11 + 1) = v13;
                  v15 = *(v9 + v10 + 64);
                  v16 = *(v9 + v10 + 80);
                  v17 = *(v9 + v10 + 112);
                  *(v11 + 6) = *(v9 + v10 + 96);
                  *(v11 + 7) = v17;
                  *(v11 + 4) = v15;
                  *(v11 + 5) = v16;
                  v10 += 128;
                }

                while (v3 << 7 != v10);
              }
            }

            v18 = *a3;
            v19 = v3 << 7;
            do
            {
              v20 = (v7 + v19);
              v21 = *v18;
              v22 = v18[1];
              v23 = v18[3];
              v20[2] = v18[2];
              v20[3] = v23;
              *v20 = v21;
              v20[1] = v22;
              v24 = v18[4];
              v25 = v18[5];
              v26 = v18[7];
              v20[6] = v18[6];
              v20[7] = v26;
              v20[4] = v24;
              v20[5] = v25;
              v19 += 128;
            }

            while (a2 << 7 != v19);
          }

          v27 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v38 = a2;
      }

      else
      {
        v38 = *result;
      }

      result = sub_29A1981B0(result, a2);
      v27 = result;
      if (v3)
      {
        v39 = v38 << 7;
        v40 = result;
        do
        {
          v41 = *v7;
          v42 = *(v7 + 1);
          v43 = *(v7 + 3);
          *(v40 + 2) = *(v7 + 2);
          *(v40 + 3) = v43;
          *v40 = v41;
          *(v40 + 1) = v42;
          v44 = *(v7 + 4);
          v45 = *(v7 + 5);
          v46 = *(v7 + 7);
          *(v40 + 6) = *(v7 + 6);
          *(v40 + 7) = v46;
          *(v40 + 4) = v44;
          *(v40 + 5) = v45;
          v7 += 16;
          v40 += 16;
          v39 -= 128;
        }

        while (v39);
      }

      if (v3 < a2)
      {
        v47 = *a3;
        v48 = v3 << 7;
        do
        {
          v49 = (result + v48);
          v50 = *v47;
          v51 = v47[1];
          v52 = v47[3];
          v49[2] = v47[2];
          v49[3] = v52;
          *v49 = v50;
          v49[1] = v51;
          v53 = v47[4];
          v54 = v47[5];
          v55 = v47[7];
          v49[6] = v47[6];
          v49[7] = v55;
          v49[4] = v53;
          v49[5] = v54;
          v48 += 128;
        }

        while (a2 << 7 != v48);
      }

      goto LABEL_31;
    }

    v28 = a2 << 7;
    if ((a2 << 7) / a2 == 128)
    {
      result = sub_29A1981B0(result, a2);
      v27 = result;
      v29 = 0;
      v30 = *a3;
      do
      {
        v31 = &result[v29 / 8];
        v32 = *v30;
        v33 = v30[1];
        v34 = v30[3];
        *(v31 + 2) = v30[2];
        *(v31 + 3) = v34;
        *v31 = v32;
        *(v31 + 1) = v33;
        v35 = v30[4];
        v36 = v30[5];
        v37 = v30[7];
        *(v31 + 6) = v30[6];
        *(v31 + 7) = v37;
        *(v31 + 4) = v35;
        *(v31 + 5) = v36;
        v29 += 128;
      }

      while (v28 != v29);
LABEL_31:
      if (v27 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A197F04(result);
}

void *sub_29A1981B0(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]");
  if (HIBYTE(a2))
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 7) | 0x10;
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

uint64_t sub_29A198240(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2920EC();
    }
  }

  return result;
}

__n128 sub_29A198284(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19833C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A198374(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  v4 = sub_29A1988B8(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19833C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042260);
  }

  else
  {
    return 0;
  }
}

void *sub_29A198374(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043810;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A198408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A198444(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A198464(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1985DC(result);
}

void *sub_29A1984C8(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1988A0);
  return a2;
}

void *sub_29A1985C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043810;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1985DC(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A198644(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 16;
      sub_29A1986BC(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1986BC(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18C46C(&v5, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8, a2 + 9, a2 + 10, a2 + 11, a2 + 12, a2 + 13, a2 + 14, a2 + 15);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

BOOL Overlay::__operatorEqualsEquals(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 7) - 128;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 16;
    v7 += 16;
    v9 = v8;
    v8 -= 128;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 6) - 64;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 16;
    v7 += 16;
    v9 = v8;
    v8 -= 64;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 24 * v5 - 24;
  do
  {
    result = sub_29A0EC4B8(&v10, v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 24;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 32 * v5 - 32;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 4;
    v7 += 4;
    v9 = v8;
    v8 -= 32;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 72 * v5 - 72;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 9;
    v7 += 9;
    v9 = v8;
    v8 -= 72;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 36 * v5 - 36;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 9;
    v7 += 9;
    v9 = v8;
    v8 -= 36;
  }

  while (v9);
  return result;
}

{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 16 * v5 - 16;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 4;
    v7 += 4;
    v9 = v8;
    v8 -= 16;
  }

  while (v9);
  return result;
}

uint64_t sub_29A198838(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1985DC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1985DC(&v4);
  }

  return *a1;
}

void *sub_29A1988A0(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 16;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A1988B8(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292178();
  }

  return sub_29A198838(a1);
}

void **sub_29A1988F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19833C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A198A44, &stru_2A2042260);
  }
}

uint64_t sub_29A198988(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_29A198AE0(a1);
  v6 = v5;
  sub_29A198B30(a1, a2, &v6);
  return a1;
}

double sub_29A198A00@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A198E0C(a2, a1).n128_u64[0];
  return result;
}

double sub_29A198A44@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A198A94;
  a1[2] = &stru_2A2042260;
  return result;
}

uint64_t sub_29A198A94(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
  }

  return result;
}

void *sub_29A198AE0(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A198B30(unint64_t *result, unint64_t a2, __int128 **a3)
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
              result = sub_29A198D38(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10 / 8];
                  v12 = *(v9 + v10);
                  v13 = *(v9 + v10 + 16);
                  v14 = *(v9 + v10 + 48);
                  *(v11 + 2) = *(v9 + v10 + 32);
                  *(v11 + 3) = v14;
                  *v11 = v12;
                  *(v11 + 1) = v13;
                  v10 += 64;
                }

                while (v3 << 6 != v10);
              }
            }

            v15 = *a3;
            v16 = v3 << 6;
            do
            {
              v17 = (v7 + v16);
              v18 = *v15;
              v19 = v15[1];
              v20 = v15[3];
              v17[2] = v15[2];
              v17[3] = v20;
              *v17 = v18;
              v17[1] = v19;
              v16 += 64;
            }

            while (a2 << 6 != v16);
          }

          v21 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *result;
      }

      result = sub_29A198D38(result, a2);
      v21 = result;
      if (v3)
      {
        v30 = v29 << 6;
        v31 = result;
        do
        {
          v32 = *v7;
          v33 = *(v7 + 1);
          v34 = *(v7 + 3);
          *(v31 + 2) = *(v7 + 2);
          *(v31 + 3) = v34;
          *v31 = v32;
          *(v31 + 1) = v33;
          v31 += 8;
          v7 += 8;
          v30 -= 64;
        }

        while (v30);
      }

      if (v3 < a2)
      {
        v35 = *a3;
        v36 = v3 << 6;
        do
        {
          v37 = (result + v36);
          v38 = *v35;
          v39 = v35[1];
          v40 = v35[3];
          v37[2] = v35[2];
          v37[3] = v40;
          *v37 = v38;
          v37[1] = v39;
          v36 += 64;
        }

        while (a2 << 6 != v36);
      }

      goto LABEL_31;
    }

    v22 = a2 << 6;
    if ((a2 << 6) / a2 == 64)
    {
      result = sub_29A198D38(result, a2);
      v21 = result;
      v23 = 0;
      v24 = *a3;
      do
      {
        v25 = &result[v23 / 8];
        v26 = *v24;
        v27 = v24[1];
        v28 = v24[3];
        *(v25 + 2) = v24[2];
        *(v25 + 3) = v28;
        *v25 = v26;
        *(v25 + 1) = v27;
        v23 += 64;
      }

      while (v22 != v23);
LABEL_31:
      if (v21 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A198AE0(result);
}

void *sub_29A198D38(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]");
  if (a2 >> 57)
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 6) | 0x10;
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

uint64_t sub_29A198DC8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2921E4();
    }
  }

  return result;
}

__n128 sub_29A198E0C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A197E30(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A198EC4(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
  }

  v4 = sub_29A199408(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A198EC4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20438C8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A198F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A198F94(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A198FB4(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19912C(result);
}

void *sub_29A199018(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1993F0);
  return a2;
}

void *sub_29A199114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20438C8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19912C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A199194(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 16;
      sub_29A19920C(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A19920C(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18CCEC(&v5, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8, a2 + 9, a2 + 10, a2 + 11, a2 + 12, a2 + 13, a2 + 14, a2 + 15);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A199388(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19912C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19912C(&v4);
  }

  return *a1;
}

void *sub_29A1993F0(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 16;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A199408(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292260();
  }

  return sub_29A199388(a1);
}

void sub_29A199444(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1995AC(a1);
  sub_29A199640(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A199A70(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 8 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(&v10, v4);
      *v6++ = v10;
      v4 += 4;
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A1996B0(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A1994F8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19A110(a1);
  sub_29A19A1A4(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19A5A0(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 16 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(&v10, v4);
      *v6++ = v10;
      v4 = (v4 + 16);
      v7 -= 16;
    }

    while (v7);
  }

  sub_29A19A214(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

void **sub_29A1995AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1996F4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19972C, &stru_2A2042368);
  }
}

uint64_t sub_29A199640(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A1997C8(a1);
  v6 = &v5;
  sub_29A199818(a1, a2, &v6);
  return a1;
}

double sub_29A1996B0@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A199AB4(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A1996F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 40)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042368);
  }

  else
  {
    return 0;
  }
}

double sub_29A19972C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19977C;
  a1[2] = &stru_2A2042368;
  return result;
}

uint64_t sub_29A19977C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  return result;
}

void *sub_29A1997C8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A199818(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A1999E0(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A1999E0(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29A1999E0(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1997C8(result);
}

void *sub_29A1999E0(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuatf]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

uint64_t sub_29A199A70(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2922CC();
    }
  }

  return result;
}

__n128 sub_29A199AB4(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A199B6C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A199BA4(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  v4 = sub_29A19A0D4(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A199B6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 41)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042380);
  }

  else
  {
    return 0;
  }
}

void *sub_29A199BA4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043980;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A199C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A199C74(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A199C94(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A199E0C(result);
}

void *sub_29A199CF8(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19A0BC);
  return a2;
}

void *sub_29A199DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043980;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A199E0C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A199E74(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 16;
      sub_29A199EEC(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A199EEC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 12);
  v6 = 0;
  v7 = 0;
  result = sub_29A18D5A0(&v6, &v5, a2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v6);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A19A054(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A199E0C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A199E0C(&v4);
  }

  return *a1;
}

uint64_t sub_29A19A0D4(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292330();
  }

  return sub_29A19A054(a1);
}

void **sub_29A19A110(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A199B6C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19A258, &stru_2A2042380);
  }
}

uint64_t sub_29A19A1A4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A19A2F4(a1);
  v6 = &v5;
  sub_29A19A344(a1, a2, &v6);
  return a1;
}

double sub_29A19A214@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19A5E4(a2, a1).n128_u64[0];
  return result;
}

double sub_29A19A258@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19A2A8;
  a1[2] = &stru_2A2042380;
  return result;
}

uint64_t sub_29A19A2A8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  return result;
}

void *sub_29A19A2F4(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19A344(unint64_t *result, unint64_t a2, unint64_t **a3)
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
              result = sub_29A19A50C(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = *a3;
            v12 = v3;
            do
            {
              v7[v12++] = *v11;
            }

            while (a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A19A50C(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 8 * v17;
        v19 = result;
        do
        {
          v20 = *v7++;
          *v19++ = v20;
          v18 -= 8;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = v3;
        do
        {
          result[v22++] = *v21;
        }

        while (a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      result = sub_29A19A50C(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        result[v15 / 8] = *v16;
        v15 += 8;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A19A2F4(result);
}

void *sub_29A19A50C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuath]");
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

uint64_t sub_29A19A5A0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B29239C();
    }
  }

  return result;
}

__n128 sub_29A19A5E4(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1996F4(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19A69C(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  v4 = sub_29A19ABB0(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A19A69C(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043A38;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19A730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19A76C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19A78C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19A904(result);
}

void *sub_29A19A7F0(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19AB98);
  return a2;
}

void *sub_29A19A8EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043A38;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19A904(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A19A96C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A19A9E4(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A19A9E4(uint64_t a1, unsigned __int16 *a2)
{
  v3 = a2[3];
  v7 = 1;
  v6 = v3;
  result = sub_29A18D874(&v6, a2);
  v5 = bswap64(0x9E3779B97F4A7C55 * v6);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_29A19AB30(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19A904(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19A904(&v4);
  }

  return *a1;
}

uint64_t sub_29A19ABB0(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292400();
  }

  return sub_29A19AB30(a1);
}

void sub_29A19ABEC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1995AC(a1);
  sub_29A19AD54(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19B0C4(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 8 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v11, v4);
      v8 = v11[1];
      *v6 = v11[0];
      v6[1] = v8;
      v6 += 2;
      v4 += 4;
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A19ADC4(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A19ACA0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19B764(a1);
  sub_29A19A1A4(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19A5A0(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 32 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(&v10, v4);
      *v6++ = v10;
      v4 = (v4 + 32);
      v7 -= 32;
    }

    while (v7);
  }

  sub_29A19A214(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

uint64_t sub_29A19AD54(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A19AE08(a1);
  v6 = &v5;
  sub_29A19AE58(a1, a2, &v6);
  return a1;
}

double sub_29A19ADC4@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19B108(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A19AE08(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19AE58(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A19B034(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29A19B034(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29A19B034(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A19AE08(result);
}

void *sub_29A19B034(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuatd]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
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

uint64_t sub_29A19B0C4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B29246C();
    }
  }

  return result;
}

__n128 sub_29A19B108(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19B1C0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19B1F8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  v4 = sub_29A19B728(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19B1C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 42)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042398);
  }

  else
  {
    return 0;
  }
}

void *sub_29A19B1F8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043AF0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19B28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19B2C8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19B2E8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19B460(result);
}

void *sub_29A19B34C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19B710);
  return a2;
}

void *sub_29A19B448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043AF0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19B460(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A19B4C8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 32;
      sub_29A19B540(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A19B540(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = 0;
  v7 = 0;
  result = sub_29A18DBF4(&v6, &v5, a2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v6);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A19B6A8(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19B460(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19B460(&v4);
  }

  return *a1;
}

void *sub_29A19B710(__int128 **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A19B728(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2924D4();
  }

  return sub_29A19B6A8(a1);
}

void **sub_29A19B764(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19B1C0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19B7F8, &stru_2A2042398);
  }
}

double sub_29A19B7F8@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19B848;
  a1[2] = &stru_2A2042398;
  return result;
}

uint64_t sub_29A19B848(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  return result;
}

void sub_29A19B894(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19A110(a1);
  sub_29A19AD54(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19B0C4(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 16 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v11, v4);
      v8 = v11[1];
      *v6 = v11[0];
      v6[1] = v8;
      v6 += 2;
      v4 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  sub_29A19ADC4(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A19B948(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19B764(a1);
  sub_29A199640(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A199A70(v8);
  if (v5)
  {
    v6 = v9;
    v7 = 32 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(&v10, v4);
      *v6++ = v10;
      v4 += 2;
      v7 -= 32;
    }

    while (v7);
  }

  sub_29A1996B0(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A19B9FC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19BB3C(a1);
  sub_29A19BBD0(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19C344(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 4 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  sub_29A19BC44(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29A19BA9C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19C8C0(a1);
  sub_29A19C954(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19CEF8(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 2 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 2;
    }

    while (v7);
  }

  sub_29A19C9C8(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void **sub_29A19BB3C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19BC88(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19BCC0, &stru_2A20424A0);
  }
}

uint64_t sub_29A19BBD0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A19BD5C(a1);
  v6 = &v5;
  sub_29A19BDAC(a1, a2, &v6);
  return a1;
}

double sub_29A19BC44@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19C388(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A19BC88(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20424A0);
  }

  else
  {
    return 0;
  }
}

double sub_29A19BCC0@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19BD10;
  a1[2] = &stru_2A20424A0;
  return result;
}

uint64_t sub_29A19BD10(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  return result;
}

void *sub_29A19BD5C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29A19BDAC(void *result, unint64_t a2, __int16 **a3)
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
          if (v3 >= a2)
          {
            v12 = result[4];
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A19C2B0(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = 0;
            v12 = v7;
            v13 = **a3;
            v14 = (2 * a2 - 2 * v3 - 2) >> 1;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 & 0x7FFFFFFFFFFFFFF8) + 8;
            v17 = v7 + v3 + 4;
            do
            {
              v18 = vdupq_n_s64(v11);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v19, *v15.i8), *v15.i8).u8[0])
              {
                *(v17 - 4) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(v19, *&v15), *&v15).i8[1])
              {
                *(v17 - 3) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))), *&v15).i8[2])
              {
                *(v17 - 2) = v13;
                *(v17 - 1) = v13;
              }

              v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E00)));
              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i32[1])
              {
                *v17 = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i8[5])
              {
                v17[1] = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433DF0))))).i8[6])
              {
                v17[2] = v13;
                v17[3] = v13;
              }

              v11 += 8;
              v17 += 8;
            }

            while (v16 != v11);
          }

LABEL_69:
          if (v12 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v30 = a2;
      }

      else
      {
        v30 = *result;
      }

      result = sub_29A19C2B0(result, a2);
      v12 = result;
      if (v3)
      {
        v31 = 2 * v30;
        v32 = result;
        do
        {
          v33 = *v7;
          v7 = (v7 + 2);
          *v32++ = v33;
          v31 -= 2;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (2 * a2 - 2 * v3 - 2) >> 1;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 & 0x7FFFFFFFFFFFFFF8) + 8;
        v39 = result + v3 + 4;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B430070)));
          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).u8[0])
          {
            *(v39 - 4) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).i8[1])
          {
            *(v39 - 3) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E10)))), 6).i8[2])
          {
            *(v39 - 2) = v35;
            *(v39 - 1) = v35;
          }

          v42 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E00)));
          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i32[1])
          {
            *v39 = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i8[5])
          {
            v39[1] = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433DF0))))).i8[6])
          {
            v39[2] = v35;
            v39[3] = v35;
          }

          v34 += 8;
          v39 += 8;
        }

        while (v38 != v34);
      }

      goto LABEL_69;
    }

    if (2 * a2 / a2 == 2)
    {
      result = sub_29A19C2B0(result, a2);
      v12 = result;
      v21 = 0;
      v22 = **a3;
      v23 = (2 * a2 - 2) >> 1;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 & 0x7FFFFFFFFFFFFFF8) + 8;
      v26 = result + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
        if (vuzp1_s8(vuzp1_s16(v28, *v24.i8), *v24.i8).u8[0])
        {
          *(v26 - 4) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v24), *&v24).i8[1])
        {
          *(v26 - 3) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))), *&v24).i8[2])
        {
          *(v26 - 2) = v22;
          *(v26 - 1) = v22;
        }

        v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E00)));
        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i32[1])
        {
          *v26 = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i8[5])
        {
          v26[1] = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433DF0))))).i8[6])
        {
          v26[2] = v22;
          v26[3] = v22;
        }

        v21 += 8;
        v26 += 8;
      }

      while (v25 != v21);
      goto LABEL_69;
    }
  }

  return sub_29A19BD5C(result);
}

void *sub_29A19C2B0(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_AllocateNew(size_t) [T = unsigned short]");
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
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

uint64_t sub_29A19C344(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292540();
    }
  }

  return result;
}

__n128 sub_29A19C388(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19C440(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19C478(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
  }

  v4 = sub_29A19C884(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19C440(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 51)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042470);
  }

  else
  {
    return 0;
  }
}

void *sub_29A19C478(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043BA8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19C50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19C548(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19C568(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19C714(result);
}

unint64_t sub_29A19C580(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (2 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A19C600(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19C86C);
  return a2;
}

void *sub_29A19C6FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043BA8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19C714(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
    }
  }

  return result;
}

uint64_t Overlay::__operatorEqualsEquals(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_29A18EAFC(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 2 * *a1) == 0;
  }

  return result;
}

{
  if (*(a1 + 32) == *(a2 + 32) && sub_29A18EAFC(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), *a1) == 0;
  }

  return result;
}

{
  if (*(a1 + 32) == *(a2 + 32) && sub_29A18EAFC(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 8 * *a1) == 0;
  }

  return result;
}

uint64_t sub_29A19C804(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19C714(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19C714(&v4);
  }

  return *a1;
}

uint64_t sub_29A19C884(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2925B0();
  }

  return sub_29A19C804(a1);
}

void **sub_29A19C8C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19C440(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19CA0C, &stru_2A2042470);
  }
}

uint64_t sub_29A19C954(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A19CAA8(a1);
  v6 = &v5;
  sub_29A19CAF8(a1, a2, &v6);
  return a1;
}

double sub_29A19C9C8@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19CF3C(a2, a1).n128_u64[0];
  return result;
}

double sub_29A19CA0C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19CA5C;
  a1[2] = &stru_2A2042470;
  return result;
}

uint64_t sub_29A19CA5C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
  }

  return result;
}

void *sub_29A19CAA8(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29A19CAF8(void *result, unint64_t a2, int **a3)
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
          if (v3 >= a2)
          {
            v12 = result[4];
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A19CE64(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = 0;
            v12 = v7;
            v13 = **a3;
            v14 = (4 * a2 - 4 * v3 - 4) >> 2;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v17 = v7 + v3 + 2;
            do
            {
              v18 = vdupq_n_s64(v11);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s16(v19, *v15.i8).u8[0])
              {
                *(v17 - 2) = v13;
              }

              if (vuzp1_s16(v19, *&v15).i8[2])
              {
                *(v17 - 1) = v13;
              }

              if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))).i32[1])
              {
                *v17 = v13;
                v17[1] = v13;
              }

              v11 += 4;
              v17 += 4;
            }

            while (v16 != v11);
          }

LABEL_51:
          if (v12 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = *result;
      }

      result = sub_29A19CE64(result, a2);
      v12 = result;
      if (v3)
      {
        v29 = 4 * v28;
        v30 = result;
        do
        {
          v31 = *v7;
          v7 = (v7 + 4);
          *v30++ = v31;
          v29 -= 4;
        }

        while (v29);
      }

      if (v3 < a2)
      {
        v32 = 0;
        v33 = **a3;
        v34 = (4 * a2 - 4 * v3 - 4) >> 2;
        v35 = vdupq_n_s64(v34);
        v36 = (v34 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v37 = result + v3 + 2;
        do
        {
          v38 = vdupq_n_s64(v32);
          v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
          if (vuzp1_s16(v39, 2).u8[0])
          {
            *(v37 - 2) = v33;
          }

          if (vuzp1_s16(v39, 2).i8[2])
          {
            *(v37 - 1) = v33;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
          {
            *v37 = v33;
            v37[1] = v33;
          }

          v32 += 4;
          v37 += 4;
        }

        while (v36 != v32);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A19CE64(result, a2);
      v12 = result;
      v20 = 0;
      v21 = **a3;
      v22 = (4 * a2 - 4) >> 2;
      v23 = vdupq_n_s64(v22);
      v24 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v25 = result + 1;
      do
      {
        v26 = vdupq_n_s64(v20);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B430070)));
        if (vuzp1_s16(v27, *v23.i8).u8[0])
        {
          *(v25 - 2) = v21;
        }

        if (vuzp1_s16(v27, *&v23).i8[2])
        {
          *(v25 - 1) = v21;
        }

        if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B433E10)))).i32[1])
        {
          *v25 = v21;
          v25[1] = v21;
        }

        v20 += 4;
        v25 += 4;
      }

      while (v24 != v20);
      goto LABEL_51;
    }
  }

  return sub_29A19CAA8(result);
}

void *sub_29A19CE64(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(size_t) [T = unsigned int]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

uint64_t sub_29A19CEF8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B29261C();
    }
  }

  return result;
}

__n128 sub_29A19CF3C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19BC88(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19CFF4(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  v4 = sub_29A19D400(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A19CFF4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043C60;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19D088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19D0C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19D0E4(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19D290(result);
}

unint64_t sub_29A19D0FC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (4 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A19D17C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19D3E8);
  return a2;
}

void *sub_29A19D278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043C60;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19D290(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_29A18EAFC(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 4 * *a1) == 0;
  }

  return result;
}

uint64_t sub_29A19D380(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19D290(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19D290(&v4);
  }

  return *a1;
}

uint64_t sub_29A19D400(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292680();
  }

  return sub_29A19D380(a1);
}

void sub_29A19D43C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19D57C(a1);
  sub_29A19BBD0(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19C344(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 4 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  sub_29A19BC44(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29A19D4DC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19C8C0(a1);
  sub_29A19D6E4(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19DBEC(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 2 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 2;
    }

    while (v7);
  }

  sub_29A19D758(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void **sub_29A19D57C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19D610(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19D648, &stru_2A2042488);
  }
}

uint64_t sub_29A19D610(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 52)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042488);
  }

  else
  {
    return 0;
  }
}

double sub_29A19D648@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19D698;
  a1[2] = &stru_2A2042488;
  return result;
}

uint64_t sub_29A19D698(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

uint64_t sub_29A19D6E4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A19D79C(a1);
  v6 = &v5;
  sub_29A19D7EC(a1, a2, &v6);
  return a1;
}

double sub_29A19D758@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19DC30(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A19D79C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29A19D7EC(void *result, unint64_t a2, int **a3)
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
          if (v3 >= a2)
          {
            v12 = result[4];
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A19DB58(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v11 = 0;
            v12 = v7;
            v13 = **a3;
            v14 = (4 * a2 - 4 * v3 - 4) >> 2;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v17 = v7 + v3 + 2;
            do
            {
              v18 = vdupq_n_s64(v11);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s16(v19, *v15.i8).u8[0])
              {
                *(v17 - 2) = v13;
              }

              if (vuzp1_s16(v19, *&v15).i8[2])
              {
                *(v17 - 1) = v13;
              }

              if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))).i32[1])
              {
                *v17 = v13;
                v17[1] = v13;
              }

              v11 += 4;
              v17 += 4;
            }

            while (v16 != v11);
          }

LABEL_51:
          if (v12 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v28 = a2;
      }

      else
      {
        v28 = *result;
      }

      result = sub_29A19DB58(result, a2);
      v12 = result;
      if (v3)
      {
        v29 = 4 * v28;
        v30 = result;
        do
        {
          v31 = *v7;
          v7 = (v7 + 4);
          *v30++ = v31;
          v29 -= 4;
        }

        while (v29);
      }

      if (v3 < a2)
      {
        v32 = 0;
        v33 = **a3;
        v34 = (4 * a2 - 4 * v3 - 4) >> 2;
        v35 = vdupq_n_s64(v34);
        v36 = (v34 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v37 = result + v3 + 2;
        do
        {
          v38 = vdupq_n_s64(v32);
          v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
          if (vuzp1_s16(v39, 2).u8[0])
          {
            *(v37 - 2) = v33;
          }

          if (vuzp1_s16(v39, 2).i8[2])
          {
            *(v37 - 1) = v33;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
          {
            *v37 = v33;
            v37[1] = v33;
          }

          v32 += 4;
          v37 += 4;
        }

        while (v36 != v32);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      result = sub_29A19DB58(result, a2);
      v12 = result;
      v20 = 0;
      v21 = **a3;
      v22 = (4 * a2 - 4) >> 2;
      v23 = vdupq_n_s64(v22);
      v24 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v25 = result + 1;
      do
      {
        v26 = vdupq_n_s64(v20);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B430070)));
        if (vuzp1_s16(v27, *v23.i8).u8[0])
        {
          *(v25 - 2) = v21;
        }

        if (vuzp1_s16(v27, *&v23).i8[2])
        {
          *(v25 - 1) = v21;
        }

        if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29B433E10)))).i32[1])
        {
          *v25 = v21;
          v25[1] = v21;
        }

        v20 += 4;
        v25 += 4;
      }

      while (v24 != v20);
      goto LABEL_51;
    }
  }

  return sub_29A19D79C(result);
}

void *sub_29A19DB58(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(size_t) [T = int]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

uint64_t sub_29A19DBEC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2926EC();
    }
  }

  return result;
}

__n128 sub_29A19DC30(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19D610(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19DCE8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v4 = sub_29A19E06C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A19DCE8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043D18;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19DD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19DDB8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19DDD8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19DF84(result);
}

unint64_t sub_29A19DDF0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (4 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A19DE70(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19E054);
  return a2;
}

void *sub_29A19DF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043D18;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19DF84(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A19DFEC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19DF84(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19DF84(&v4);
  }

  return *a1;
}

uint64_t sub_29A19E06C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292750();
  }

  return sub_29A19DFEC(a1);
}

void sub_29A19E0A8(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19D57C(a1);
  sub_29A19E1E4(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19E500(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 4 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  sub_29A19E258(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29A19E148(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19EA70(a1);
  sub_29A19D6E4(v8, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19DBEC(v8);
  if (v5)
  {
    v6 = v9;
    do
    {
      v7 = *v4++;
      *v6++ = v7;
      --v5;
    }

    while (v5);
  }

  sub_29A19D758(v8, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29A19E1E4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A19E29C(a1);
  v6 = &v5;
  sub_29A19E2EC(a1, a2, &v6);
  return a1;
}

double sub_29A19E258@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19E544(a2, a1).n128_u64[0];
  return result;
}

void *sub_29A19E29C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19E2EC(unint64_t *result, unint64_t a2, unsigned __int8 **a3)
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
              v10 = sub_29A19E470(result, a2);
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

      result = sub_29A19E470(result, a2);
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
      v13 = sub_29A19E470(result, a2);
      v12 = v13;
      v14 = **a3;
      v15 = a2;
    }

    result = memset(v13, v14, v15);
LABEL_27:
    if (v12 != v5[4])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    *v5 = a2;
    return result;
  }

  return sub_29A19E29C(result);
}

void *sub_29A19E470(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(size_t) [T = unsigned char]");
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

uint64_t sub_29A19E500(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2927BC();
    }
  }

  return result;
}

__n128 sub_29A19E544(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19E5FC(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19E634(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  v4 = sub_29A19EA34(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19E5FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042440);
  }

  else
  {
    return 0;
  }
}

void *sub_29A19E634(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043DD0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19E6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19E704(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19E724(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19E8CC(result);
}

unint64_t sub_29A19E73C(char ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A19E7B8(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19EA20);
  return a2;
}

void *sub_29A19E8B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043DD0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19E8CC(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A19E9B8(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19E8CC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19E8CC(&v4);
  }

  return *a1;
}

uint64_t sub_29A19EA34(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292834();
  }

  return sub_29A19E9B8(a1);
}

void **sub_29A19EA70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19E5FC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19EB04, &stru_2A2042440);
  }
}

double sub_29A19EB04@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19EB54;
  a1[2] = &stru_2A2042440;
  return result;
}

uint64_t sub_29A19EB54(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  return result;
}

void sub_29A19EBA0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19ECE8(a1);
  sub_29A19ED7C(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19F1B8(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 8 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = vcvtq_f64_f32(v8);
      v7 -= 8;
    }

    while (v7);
  }

  sub_29A19EDF8(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
}

void sub_29A19EC44(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A19F678(a1);
  sub_29A19F70C(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A19FB14(v9);
  if (v5)
  {
    v6 = v10;
    v7 = 16 * v5;
    do
    {
      v8 = *v4++;
      *v6++ = vcvt_f32_f64(v8);
      v7 -= 16;
    }

    while (v7);
  }

  sub_29A19F788(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
}

void **sub_29A19ECE8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19EE3C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19EE74, &stru_2A2042308);
  }
}

uint64_t sub_29A19ED7C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = xmmword_29B43C5A0;
  sub_29A19EF10(a1);
  v6 = &v5;
  sub_29A19EF60(a1, a2, &v6);
  return a1;
}

double sub_29A19EDF8@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19F1FC(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A19EE3C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 36)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042308);
  }

  else
  {
    return 0;
  }
}

double sub_29A19EE74@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19EEC4;
  a1[2] = &stru_2A2042308;
  return result;
}

uint64_t sub_29A19EEC4(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
  }

  return result;
}

void *sub_29A19EF10(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19EF60(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A19F128(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A19F128(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29A19F128(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A19EF10(result);
}

void *sub_29A19F128(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange1d]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

uint64_t sub_29A19F1B8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2928A0();
    }
  }

  return result;
}

__n128 sub_29A19F1FC(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19F2B4(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19F2EC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
  }

  v4 = sub_29A19F63C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A19F2B4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 37)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042320);
  }

  else
  {
    return 0;
  }
}

void *sub_29A19F2EC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043E88;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19F380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19F3BC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19F3DC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19F554(result);
}

void *sub_29A19F440(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19F624);
  return a2;
}

void *sub_29A19F53C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043E88;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19F554(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A19F5BC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19F554(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19F554(&v4);
  }

  return *a1;
}

void *sub_29A19F624(double **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A19F63C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292904();
  }

  return sub_29A19F5BC(a1);
}

void **sub_29A19F678(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A19F2B4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A19F7CC, &stru_2A2042320);
  }
}

uint64_t sub_29A19F70C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0xFF7FFFFF7F7FFFFFLL;
  sub_29A19F868(a1);
  v6 = &v5;
  sub_29A19F8B8(a1, a2, &v6);
  return a1;
}

double sub_29A19F788@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A19FB58(a2, a1).n128_u64[0];
  return result;
}

double sub_29A19F7CC@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A19F81C;
  a1[2] = &stru_2A2042320;
  return result;
}

uint64_t sub_29A19F81C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
  }

  return result;
}

void *sub_29A19F868(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A19F8B8(unint64_t *result, unint64_t a2, unint64_t **a3)
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
              result = sub_29A19FA80(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = *a3;
            v12 = v3;
            do
            {
              v7[v12++] = *v11;
            }

            while (a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A19FA80(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 8 * v17;
        v19 = result;
        do
        {
          v20 = *v7++;
          *v19++ = v20;
          v18 -= 8;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = v3;
        do
        {
          result[v22++] = *v21;
        }

        while (a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      result = sub_29A19FA80(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        result[v15 / 8] = *v16;
        v15 += 8;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A19F868(result);
}

void *sub_29A19FA80(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange1f]");
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

uint64_t sub_29A19FB14(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292970();
    }
  }

  return result;
}

__n128 sub_29A19FB58(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A19EE3C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A19FC10(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
  }

  v4 = sub_29A19FF60(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A19FC10(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043F40;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A19FCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A19FCE0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A19FD00(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A19FE78(result);
}

void *sub_29A19FD64(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A19FF48);
  return a2;
}

void *sub_29A19FE60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043F40;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A19FE78(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A19FEE0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A19FE78(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A19FE78(&v4);
  }

  return *a1;
}

void *sub_29A19FF48(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A19FF60(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2929D4();
  }

  return sub_29A19FEE0(a1);
}

void sub_29A19FF9C(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1A00EC(a1);
  sub_29A1A0180(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1A05E0(v10);
  if (v5)
  {
    v6 = &v4[2 * v5];
    v7 = v11;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 2;
      *v7 = vcvtq_f64_f32(v8);
      v7[1] = vcvtq_f64_f32(v9);
      v7 += 2;
    }

    while (v4 != v6);
  }

  sub_29A1A020C(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
}

void sub_29A1A0044(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1A0C28(a1);
  sub_29A1A0CBC(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1A10C0(v10);
  if (v5)
  {
    v6 = v11;
    v7 = 32 * v5;
    do
    {
      v9 = *v4;
      v8 = v4[1];
      v4 += 2;
      *v6++ = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v8);
      v7 -= 32;
    }

    while (v7);
  }

  sub_29A1A0D38(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
}

void **sub_29A1A00EC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1A0250(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1A0288, &stru_2A20422D8);
  }
}

uint64_t sub_29A1A0180(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v5[1] = vdupq_n_s64(0xC7EFFFFFE0000000);
  sub_29A1A0324(a1);
  v6 = v5;
  sub_29A1A0374(a1, a2, &v6);
  return a1;
}

double sub_29A1A020C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1A0624(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A1A0250(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 34)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20422D8);
  }

  else
  {
    return 0;
  }
}

double sub_29A1A0288@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1A02D8;
  a1[2] = &stru_2A20422D8;
  return result;
}

uint64_t sub_29A1A02D8(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
  }

  return result;
}

void *sub_29A1A0324(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A1A0374(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A1A0550(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29A1A0550(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29A1A0550(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1A0324(result);
}

void *sub_29A1A0550(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange2d]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
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

uint64_t sub_29A1A05E0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292A40();
    }
  }

  return result;
}

__n128 sub_29A1A0624(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1A06DC(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1A0714(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
  }

  v4 = sub_29A1A0BEC(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_29A1A06DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 35)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20422F0);
  }

  else
  {
    return 0;
  }
}

void *sub_29A1A0714(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2043FF8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1A07A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1A07E4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1A0804(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1A097C(result);
}

void *sub_29A1A0868(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1A0BD4);
  return a2;
}

void *sub_29A1A0964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2043FF8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1A097C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1A09E4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A1A0A5C(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1A0A5C(uint64_t a1, double *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A1A0ADC(&v5, a2, a2 + 2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A1A0ADC(uint64_t a1, double *a2, double *a3)
{
  v7 = 0;
  v8 = 0;
  sub_29A189C3C(&v7, a2, a2 + 1);
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
  return sub_29A1929D8(a1, a3);
}

uint64_t sub_29A1A0B6C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1A097C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1A097C(&v4);
  }

  return *a1;
}

void *sub_29A1A0BD4(_OWORD **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A1A0BEC(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292AA8();
  }

  return sub_29A1A0B6C(a1);
}

void **sub_29A1A0C28(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1A06DC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1A0D7C, &stru_2A20422F0);
  }
}

uint64_t sub_29A1A0CBC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = xmmword_29B480F70;
  sub_29A1A0E18(a1);
  v6 = &v5;
  sub_29A1A0E68(a1, a2, &v6);
  return a1;
}

double sub_29A1A0D38@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1A1104(a2, a1).n128_u64[0];
  return result;
}

double sub_29A1A0D7C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1A0DCC;
  a1[2] = &stru_2A20422F0;
  return result;
}

uint64_t sub_29A1A0DCC(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
  }

  return result;
}

void *sub_29A1A0E18(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A1A0E68(unint64_t *result, unint64_t a2, _OWORD **a3)
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
              result = sub_29A1A1030(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29A1A1030(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29A1A1030(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1A0E18(result);
}

void *sub_29A1A1030(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange2f]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

uint64_t sub_29A1A10C0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292B14();
    }
  }

  return result;
}

__n128 sub_29A1A1104(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1A0250(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A1A11BC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
  }

  v4 = sub_29A1A1694(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void *sub_29A1A11BC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20440B0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A1A1250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1A128C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A1A12AC(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A1A1424(result);
}

void *sub_29A1A1310(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A1A167C);
  return a2;
}

void *sub_29A1A140C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20440B0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A1A1424(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29A1A148C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29A1A1504(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29A1A1504(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A1A1584(&v5, a2, a2 + 2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A1A1584(uint64_t a1, float *a2, float *a3)
{
  v7 = 0;
  v8 = 0;
  sub_29A18994C(&v7, a2, a2 + 1);
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
  return sub_29A1913CC(a1, a3);
}

uint64_t sub_29A1A1614(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A1A1424(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1A1424(&v4);
  }

  return *a1;
}

void *sub_29A1A167C(void **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29A1A1694(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B292B78();
  }

  return sub_29A1A1614(a1);
}

void sub_29A1A16D0(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1A1850(a1);
  sub_29A1A18E4(v10, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1A1DA8(v10);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v11;
    do
    {
      v8 = vcvtq_f64_f32(v4[1]);
      v9 = vcvtq_f64_f32(v4[2]);
      *v7 = vcvtq_f64_f32(*v4);
      v7[1] = v8;
      v7[2] = v9;
      v4 += 3;
      v7 += 3;
    }

    while (v4 != v6);
  }

  sub_29A1A197C(v10, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
}

void sub_29A1A1790(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v3 = sub_29A1A24A8(a1);
  sub_29A1A253C(v9, *v3);
  v4 = v3[4];
  v5 = *v3;
  sub_29A1A29B4(v9);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = v10;
    do
    {
      v8 = vcvt_f32_f64(v4[2]);
      *v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v4[1]);
      *v7[1].f32 = v8;
      v4 += 3;
      v7 = (v7 + 24);
    }

    while (v4 != v6);
  }

  sub_29A1A25C0(v9, a2);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
}

void **sub_29A1A1850(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1A19C0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1A19F8, &stru_2A20422A8);
  }
}

uint64_t sub_29A1A18E4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v5[1] = xmmword_29B43C5A0;
  v5[2] = vdupq_n_s64(0xC7EFFFFFE0000000);
  sub_29A1A1A94(a1);
  v6 = v5;
  sub_29A1A1AE4(a1, a2, &v6);
  return a1;
}

double sub_29A1A197C@<D0>(__n128 *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *(a2 + 1) = 0;
  *&result = sub_29A1A1DEC(a2, a1).n128_u64[0];
  return result;
}

uint64_t sub_29A1A19C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 32)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20422A8);
  }

  else
  {
    return 0;
  }
}

double sub_29A1A19F8@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29A1A1A48;
  a1[2] = &stru_2A20422A8;
  return result;
}

uint64_t sub_29A1A1A48(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
  }

  return result;
}

void *sub_29A1A1A94(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A1A1AE4(unint64_t *result, unint64_t a2, __int128 **a3)
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
              result = sub_29A1A1D10(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8);
                  v13 = *(v9 + v10 * 8 + 32);
                  *(v11 + 1) = *(v9 + v10 * 8 + 16);
                  *(v11 + 2) = v13;
                  *v11 = v12;
                  v10 += 6;
                }

                while (6 * v3 != v10);
              }
            }

            v14 = *a3;
            v15 = 6 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = *v14;
              v18 = v14[2];
              *(v16 + 1) = v14[1];
              *(v16 + 2) = v18;
              *v16 = v17;
              v15 += 6;
            }

            while (6 * a2 != v15);
          }

          v19 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *result;
      }

      result = sub_29A1A1D10(result, a2);
      v19 = result;
      if (v3)
      {
        v26 = 48 * v25;
        v27 = result;
        do
        {
          v28 = *v7;
          v29 = *(v7 + 2);
          *(v27 + 1) = *(v7 + 1);
          *(v27 + 2) = v29;
          *v27 = v28;
          v27 += 6;
          v7 += 6;
          v26 -= 48;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v30 = *a3;
        v31 = 6 * v3;
        do
        {
          v32 = &result[v31];
          v33 = *v30;
          v34 = v30[2];
          *(v32 + 1) = v30[1];
          *(v32 + 2) = v34;
          *v32 = v33;
          v31 += 6;
        }

        while (6 * a2 != v31);
      }

      goto LABEL_31;
    }

    if (a2 < 0x555555555555556)
    {
      result = sub_29A1A1D10(result, a2);
      v19 = result;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = &result[v20];
        v23 = *v21;
        v24 = v21[2];
        *(v22 + 1) = v21[1];
        *(v22 + 2) = v24;
        *v22 = v23;
        v20 += 6;
      }

      while (6 * a2 != v20);
LABEL_31:
      if (v19 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29A1A1A94(result);
}

void *sub_29A1A1D10(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRange3d]");
  if (a2 > 0x2AAAAAAAAAAAAAALL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 48 * a2 + 16;
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

uint64_t sub_29A1A1DA8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B292BE4();
    }
  }

  return result;
}