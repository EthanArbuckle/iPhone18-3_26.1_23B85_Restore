uint64_t sub_29ABC3488(uint64_t a1)
{
  v2 = *(a1 + 52);
  v3 = a1;
  if (v2 >= 7)
  {
    v3 = *a1;
  }

  v4 = *(a1 + 48);
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
    v2 = *(a1 + 52);
  }

  if (v2 >= 7)
  {
    free(*a1);
  }

  return a1;
}

atomic_uint **sub_29ABC3504(atomic_ullong *a1)
{
  result = sub_29ABC354C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType::~HdBasisCurvesSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ABC354C()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType::HdBasisCurvesSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *this)
{
  *this = &unk_2A2075C90;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v2)
  {
    v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v3 = *(v2 + 44);
  *(this + 1) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 2) = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v5 = *(v4 + 53);
  *(this + 3) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 2) = 0u;
  *(this + 7) = 0u;
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v7)
  {
    v7 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v6, (v7 + 8));
  return this;
}

void sub_29ABC36E0(_Unwind_Exception *exception_object)
{
  v2 = *(v1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *this, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  *this = &unk_2A2075C90;
  v3 = *(a2 + 1);
  *(this + 1) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(a2 + 2);
  *(this + 2) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(a2 + 3);
  *(this + 3) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v6;
  v7 = *(a2 + 8);
  *(this + 8) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(this + 7))
    {
      v8 = *(this + 7);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 72);
  *(this + 88) = *(a2 + 88);
  *(this + 72) = v9;
  v10 = *(a2 + 13);
  *(this + 13) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(this + 12))
    {
      v11 = *(this + 12);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v12;
  v13 = *(a2 + 18);
  *(this + 18) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(this + 17))
    {
      v14 = *(this + 17);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 152);
  *(this + 168) = *(a2 + 168);
  *(this + 152) = v15;
  v16 = *(a2 + 23);
  *(this + 23) = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(this + 22))
    {
      v17 = *(this + 22);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v18)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v19)
  {
    v19 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v18, (v19 + 8));
  *(this + 24) = sub_29ABC39B8(this + 4, this + 9);
  return this;
}

uint64_t sub_29ABC39B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[4];
    if (v2 != 1)
    {
      v4 = 4 * v2;
      v6 = v3 + 1;
      v5 = *v3;
      v7 = v4 - 4;
      v8 = v3 + 1;
      do
      {
        v10 = *v8++;
        v9 = v10;
        v12 = __OFSUB__(v5, v10);
        v11 = v5 - v10 < 0;
        if (v5 <= v10)
        {
          v5 = v9;
        }

        if (v11 != v12)
        {
          v3 = v6;
        }

        v6 = v8;
        v7 -= 4;
      }

      while (v7);
    }

    return *v3 + 1;
  }

  else
  {
    v15 = *a1;
    if (*a1)
    {
      result = 0;
      v16 = a1[4];
      v17 = 4 * v15;
      do
      {
        v18 = *v16++;
        result += v18;
        v17 -= 4;
      }

      while (v17);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5, __int128 *a6)
{
  *a1 = &unk_2A2075C90;
  v9 = *a2;
  *(a1 + 8) = *a2;
  v10 = (a1 + 8);
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *a3;
  *(a1 + 16) = *a3;
  v12 = (a1 + 16);
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *a4;
  *(a1 + 24) = *a4;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(a5 + 16);
  *(a1 + 32) = *a5;
  *(a1 + 48) = v14;
  v15 = *(a5 + 32);
  *(a1 + 64) = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(a1 + 56))
    {
      v16 = *(a1 + 56);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  v17 = *a6;
  *(a1 + 88) = a6[1];
  *(a1 + 72) = v17;
  v18 = *(a6 + 4);
  *(a1 + 104) = v18;
  if (v18)
  {
    v19 = (v18 - 16);
    if (*(a1 + 96))
    {
      v19 = *(a1 + 96);
    }

    atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v20)
  {
    v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v20 + 44) ^ *v10) >= 8)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v21)
    {
      v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v22 = *v10;
    if ((*(v21 + 15) ^ *v10) >= 8)
    {
      v32 = "hd/basisCurvesTopology.cpp";
      v33 = "HdBasisCurvesTopology";
      v34 = 79;
      v35 = "pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(const TfToken &, const TfToken &, const TfToken &, const VtIntArray &, const VtIntArray &)";
      v36 = 0;
      v23 = v22 & 0xFFFFFFFFFFFFFFF8;
      if ((v22 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v24 = (v23 + 16);
        if (*(v23 + 39) < 0)
        {
          v24 = *v24;
        }
      }

      else
      {
        v24 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "Curve type must be 'linear' or 'cubic'.  Got: '%s'", a3, v24);
      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v25)
      {
        v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29A166F2C(v10, v25 + 44);
      if ((*v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v12 = 0;
    }
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v26)
  {
    v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v26 + 44) ^ *a3) <= 7)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v27 + 15) ^ *a2) <= 7)
    {
      v32 = "hd/basisCurvesTopology.cpp";
      v33 = "HdBasisCurvesTopology";
      v34 = 84;
      v35 = "pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(const TfToken &, const TfToken &, const TfToken &, const VtIntArray &, const VtIntArray &)";
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "Basis 'linear' passed in to 'cubic' curveType.  Converting 'curveType' to 'linear'.", a3);
      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v28)
      {
        v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29A166F2C(v10, v28 + 44);
      if ((*v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v12 = 0;
    }
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v29)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v30)
  {
    v30 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v29, (v30 + 8));
  *(a1 + 192) = sub_29ABC39B8((a1 + 32), (a1 + 72));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *this)
{
  *this = &unk_2A2075C90;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v2)
  {
    v2 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::DecrementCounter(v1, (v2 + 8));
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

{
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::operator==(void *a1, void *a2)
{
  if ((a2[1] ^ a1[1]) > 7 || (a2[2] ^ a1[2]) > 7 || (a2[3] ^ a1[3]) > 7 || !pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 4), (a2 + 4)) || !pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 9), (a2 + 9)) || !pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 14), (a2 + 14)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 19), (a2 + 19));
}

unint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::ComputeHash(pxrInternal__aapl__pxrReserved__ **this)
{
  v2 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 2), 8, 0);
  v3 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 1), 8, v2);
  v4 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 3), 8, v3);
  v5 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[8], (4 * this[4]), v4);
  v6 = this[13];
  v7 = (4 * this[9]);

  return pxrInternal__aapl__pxrReserved__::ArchHash64(v6, v7, v5);
}

void sub_29ABC4370(_Unwind_Exception *a1)
{
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_release);
  }

  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *this)
{
  v2 = *(this + 1);
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v4 = v2 ^ *(v3 + 44);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v4 <= 7)
  {
    return *(this + 24);
  }

  v6 = *(this + 3);
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v8 = *(v7 + 57);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 2);
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v11 = v9 ^ *(v10 + 6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v11 >= 8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  v13 = *(this + 4);
  if (!v13)
  {
    return 0;
  }

  result = 0;
  v14 = *(this + 8);
  v15 = 4 * v13;
  do
  {
    v16 = *v14;
    if (*v14 >= 1)
    {
      if ((v6 ^ v8) > 7)
      {
        if (v16 <= 4)
        {
          v16 = 4;
        }

        v17 = (v16 - 4) / v12 + 2;
      }

      else
      {
        LODWORD(v17) = v16 / v12;
        if (v17 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v17;
        }
      }

      result += v17;
    }

    ++v14;
    v15 -= 4;
  }

  while (v15);
  return result;
}

pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *sub_29ABC4598(atomic_ullong *a1)
{
  result = sub_29ABC45E0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::~HdPerfTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *sub_29ABC45E0()
{
  v0 = operator new(0x150uLL);
  pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::HdPerfTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType::~HdBasisCurvesTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType::HdBasisCurvesTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "curveVertexCounts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "curveIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "basis", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "wrap", 0);
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

void sub_29ABC48E0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetCurveVertexCounts(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABC4A68(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC559C(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetCurveIndices(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetBasis(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABC4C48(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC562C(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetWrap(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
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
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

void sub_29ABC5140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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

void *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveVertexCounts(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveIndices(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetBasis(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetWrap(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens))
    {
      sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!result)
  {
    return sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748B38, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1748B38);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A1748B00);
      __cxa_atexit(sub_29ABC33B4, dword_2A1748B00, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748B38);
    }
  }

  return dword_2A1748B00;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *sub_29ABC5510(atomic_ullong *a1)
{
  result = sub_29ABC5558();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType::~HdBasisCurvesTopologySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *sub_29ABC5558()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType::HdBasisCurvesTopologySchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ABC559C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2075CE8, 0)) != 0)
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

void *sub_29ABC562C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2075D00, 0)) != 0)
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

pxrInternal__aapl__pxrReserved__::HdBprim *pxrInternal__aapl__pxrReserved__::HdBprim::HdBprim(pxrInternal__aapl__pxrReserved__::HdBprim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2075D28;
  v4 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v4, a2 + 1);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdBprim::~HdBprim(pxrInternal__aapl__pxrReserved__::HdBprim *this)
{
  *this = &unk_2A2075D28;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdBufferArray::HdBufferArray(uint64_t result, uint64_t *a2, uint64_t *a3, int a4)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A2075D70;
  *(result + 24) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 850045863;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0;
  v4 = *a2;
  *(result + 128) = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 128) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *a3;
  *(result + 136) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 136) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 144) = atomic_fetch_add(&qword_2A1748B40, 1uLL);
  *(result + 152) = 1;
  *(result + 160) = a4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(std::mutex *this)
{
  this->__m_.__sig = &unk_2A2075D70;
  v2 = *this[2].__m_.__opaque;
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sig = this[2].__m_.__sig;
  if ((sig & 7) != 0)
  {
    atomic_fetch_add_explicit((sig & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::mutex::~mutex(this + 1);
  v5 = &this->__m_.__opaque[24];
  sub_29A03CE88(&v5);
  v4 = *&this->__m_.__opaque[8];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdBufferArray::TryAssignRange(uint64_t a1, void *a2)
{
  add = atomic_fetch_add((a1 + 56), 1uLL);
  v3 = *(a1 + 152);
  if (add >= v3)
  {
    atomic_store(v3, (a1 + 56));
  }

  else
  {
    std::mutex::lock((a1 + 64));
    v6 = *(a1 + 32);
    if (add >= (*(a1 + 40) - v6) >> 4)
    {
      sub_29A03CC20(a1 + 32, add + 1);
      v6 = *(a1 + 32);
    }

    v7 = (v6 + 16 * add);
    v9 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    v10 = v7[1];
    *v7 = v9;
    v7[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    std::mutex::unlock((a1 + 64));
    (*(**a2 + 128))(*a2, a1);
    *(a1 + 24) = 1;
  }

  return add < v3;
}

void pxrInternal__aapl__pxrReserved__::HdBufferArray::RemoveUnusedRanges(pxrInternal__aapl__pxrReserved__::HdBufferArray *this)
{
  v1 = (this + 56);
  v2 = atomic_load(this + 7);
  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = *(this + 4);
      v6 = v5 + 16 * v4;
      v7 = *(v6 + 8);
      if (!v7 || v7->__shared_owners_ == -1)
      {
        --v2;
        v8 = *(v5 + 16 * v2);
        v9 = *(v5 + 16 * v2 + 8);
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
          v7 = *(v6 + 8);
        }

        *v6 = v8;
        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        v10 = (*(this + 4) + 16 * v2);
        v11 = v10[1];
        *v10 = 0;
        v10[1] = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
        if (!v12)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
        }

        pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v12, (this + 136));
      }

      else
      {
        ++v4;
      }
    }

    while (v4 < v2);
  }

  atomic_store(v2, v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = this;
  v6 = atomic_load((this + 56));
  if (v6 <= a2)
  {
    this = sub_29B2C4490(v8);
  }

  v7 = *(*(v4 + 32) + 16 * a2);
  *a3 = v7;
  if (*(&v7 + 1))
  {
    atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdBufferArray::_SetRangeList(uint64_t a1, uint64_t **a2)
{
  std::mutex::lock((a1 + 64));
  sub_29A03CEDC((a1 + 32));
  sub_29ABC5CD0(a1 + 32, *a2, a2[1], (a2[1] - *a2) >> 4);
  atomic_store((*(a1 + 40) - *(a1 + 32)) >> 4, (a1 + 56));
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  while (v6 != v7)
  {
    v5 = sub_29ABC5C14(&v6);
    (*(**v5 + 128))(*v5, a1);
    sub_29ABC5C44(&v6);
  }

  std::mutex::unlock((a1 + 64));
}

uint64_t sub_29ABC5C14(uint64_t *a1)
{
  result = *a1;
  if (result == a1[1])
  {
    sub_29B2C44DC();
  }

  return result;
}

void *sub_29ABC5C44(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>>>::operator++() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArrayRange>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void sub_29ABC5CD0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29ABC5E10(a1);
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
    v12 = sub_29ABC5E50(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29ABC5F54(&v18, a2, (a2 + v13), v8);
    v12 = sub_29ABC5E50(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29ABC5F54(&v19, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v17 = *(v16 - 8);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      v16 -= 16;
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

void sub_29ABC5E10(uint64_t *a1)
{
  if (*a1)
  {
    sub_29A03CEDC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_29ABC5E50(uint64_t a1, void *a2, void *a3, void *a4)
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
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29ABC5ED8(v7);
  return v4;
}

uint64_t sub_29ABC5ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABC5F10(a1);
  }

  return a1;
}

void sub_29ABC5F10(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v1 -= 16;
  }
}

uint64_t *sub_29ABC5F54(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator<<(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 136))(a2, a1);
  return a1;
}

{
  (*(*a2 + 136))(a2, a1);
  return a1;
}

{
  v4 = MEMORY[0x29C2C1E80](a1, *a2);
  v5 = sub_29A00911C(v4, " ", 1);
  v6 = MEMORY[0x29C2C1ED0](v5, *(a2 + 32));
  v7 = sub_29A00911C(v6, " ", 1);
  v8 = MEMORY[0x29C2C1EB0](v7, *(a2 + 16));
  v9 = sub_29A00911C(v8, " ", 1);
  v10 = MEMORY[0x29C2C1EB0](v9, *(a2 + 24));
  v11 = sub_29A00911C(v10, " ", 1);
  MEMORY[0x29C2C1EA0](v11, *(a2 + 36));
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    v14[0] = "hd/bufferArrayRange.cpp";
    v14[1] = "Set";
    v14[2] = 32;
    v14[3] = "void pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set(int, const HdBufferArrayRangeSharedPtr &)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Index negative in HdBufferArrayRangeContainer::Set()");
  }

  else
  {
    v6 = a2;
    v7 = *a1;
    if (a2 >= ((a1[1] - *a1) >> 4))
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      if (!v9)
      {
        v9 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, (v9 + 32));
      sub_29ABC6184(a1, a2 + 1);
      v7 = *a1;
    }

    v10 = (v7 + 16 * v6);
    v12 = *a3;
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[1];
    *v10 = v12;
    v10[1] = v11;
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29ABC6184(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29ABC6394(a1, v5);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0 && a2 < ((*(this + 1) - *this) >> 4))
  {
    return (*this + 16 * a2);
  }

  if (atomic_load_explicit(&qword_2A1748B48, memory_order_acquire))
  {
    return &unk_2A1748B50;
  }

  v5[1] = v2;
  v5[2] = v3;
  sub_29B2C454C(v5);
  return v5[0];
}

uint64_t sub_29ABC6278(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Resize(pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v6[0] = "hd/bufferArrayRange.cpp";
    v6[1] = "Resize";
    v6[2] = 62;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Resize(int)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Size negative in HdBufferArrayRangeContainer::Resize()");
  }

  else
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v5)
    {
      v5 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v4, (v5 + 32));

    sub_29ABC6184(this, a2);
  }
}

void sub_29ABC6394(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19[4] = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * a2);
    v14 = &v12[16 * a2];
    v15 = a1[1] - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v14;
    v18 = a1[2];
    a1[2] = v13;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    sub_29A017C0C(v19);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdBufferSource::ComputeHash(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = 0;
  v3 = 0;
  sub_29ABC6860(&v2, this);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

void pxrInternal__aapl__pxrReserved__::HdBufferSource::GetChainedBuffers(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetName(pxrInternal__aapl__pxrReserved__::HdComputedBufferSource *this)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(*v3 + 16);

    return v4();
  }

  else
  {
    result = &unk_2A1748B60;
    if ((atomic_load_explicit(&qword_2A1748B68, memory_order_acquire) & 1) == 0)
    {
      v6[1] = v1;
      v6[2] = v2;
      sub_29B2C45C4(v6);
      return v6[0];
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetData(pxrInternal__aapl__pxrReserved__::HdComputedBufferSource *this)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(*v3 + 48);

    return v4();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6[0] = "hd/bufferSource.cpp";
    v6[1] = "GetData";
    v6[2] = 87;
    v6[3] = "virtual const void *pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetData() const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "HdComputedBufferSource::GetData() called without setting the result.");
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetTupleType(pxrInternal__aapl__pxrReserved__::HdComputedBufferSource *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return (*(*v1 + 56))(v1);
  }

  v3[0] = "hd/bufferSource.cpp";
  v3[1] = "GetTupleType";
  v3[2] = 98;
  v3[3] = "virtual HdTupleType pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetTupleType() const";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "HdComputedBufferSource::GetTupleType() called without setting the result.");
  return 0xFFFFFFFFLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdComputedBufferSource::GetNumElements(pxrInternal__aapl__pxrReserved__::HdComputedBufferSource *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetName(pxrInternal__aapl__pxrReserved__::HdNullBufferSource *this)
{
  v2[0] = "hd/bufferSource.cpp";
  v2[1] = "GetName";
  v2[2] = 122;
  v2[3] = "virtual const TfToken &pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetName() const";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "HdNullBufferSource can't be scheduled with a buffer range");
  if ((atomic_load_explicit(&qword_2A1748B78, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C461C();
  }

  return &unk_2A1748B70;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetData(pxrInternal__aapl__pxrReserved__::HdNullBufferSource *this)
{
  v2[0] = "hd/bufferSource.cpp";
  v2[1] = "GetData";
  v2[2] = 130;
  v2[3] = "virtual const void *pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetData() const";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "HdNullBufferSource can't be scheduled with a buffer range");
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetTupleType(pxrInternal__aapl__pxrReserved__::HdNullBufferSource *this)
{
  v2[0] = "hd/bufferSource.cpp";
  v2[1] = "GetTupleType";
  v2[2] = 138;
  v2[3] = "virtual HdTupleType pxrInternal__aapl__pxrReserved__::HdNullBufferSource::GetTupleType() const";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "HdNullBufferSource can't be scheduled with a buffer range");
  return 0xFFFFFFFFLL;
}

uint64_t sub_29ABC6860(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t a2)
{
  v4 = (*(*a2 + 56))(a2);
  v5 = v4;
  v7 = v6;
  v13[0] = v4;
  v13[1] = v6;
  v8 = (*(*a2 + 48))(a2);
  v9 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v5, v7);
  v10 = (*(*a2 + 64))(a2);
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v8, (v10 * v9));
  v11 = (*(*a2 + 16))(a2);
  return sub_29ABC697C(a1, v11, v13);
}

uint64_t sub_29ABC697C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29ABC69BC(a1, a3, (a3 + 8));
}

uint64_t sub_29ABC69BC(uint64_t result, int *a2, void *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = v3;
  *result = *a3 + ((*a3 + v3 + (*a3 + v3) * (*a3 + v3)) >> 1);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdBufferSpec::IsSubset(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 1;
  }

  v4 = a2[1];
  do
  {
    v5 = *a2;
    if (*a2 != v4)
    {
      v5 = *a2;
      while ((*v5 ^ *v2) > 7 || *(v5 + 8) != *(v2 + 8) || *(v5 + 16) != *(v2 + 16))
      {
        v5 += 24;
        if (v5 == v4)
        {
          return 0;
        }
      }
    }

    result = v5 != v4;
    if (v5 == v4)
    {
      break;
    }

    v2 += 24;
  }

  while (v2 != v3);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeUnion@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *result;
  v6 = result[1];
  while (v5 != v6)
  {
    v7 = *a3;
    v8 = a3[1];
    if (*a3 != v8)
    {
      while ((*v7 ^ *v5) > 7 || *(v7 + 8) != *(v5 + 8) || *(v7 + 16) != *(v5 + 16))
      {
        v7 += 24;
        if (v7 == v8)
        {
          goto LABEL_10;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_10:
      result = sub_29ABC6BEC(a3, v5);
    }

    v5 += 24;
  }

  v10 = *a2;
  v9 = a2[1];
  while (v10 != v9)
  {
    v11 = *a3;
    v12 = a3[1];
    if (*a3 != v12)
    {
      while ((*v11 ^ *v10) > 7 || *(v11 + 8) != *(v10 + 8) || *(v11 + 16) != *(v10 + 16))
      {
        v11 += 24;
        if (v11 == v12)
        {
          goto LABEL_21;
        }
      }
    }

    if (v11 == v12)
    {
LABEL_21:
      result = sub_29ABC6BEC(a3, v10);
    }

    v10 += 24;
  }

  return result;
}

void sub_29ABC6BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABC6BEC(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ABC6FF4(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 8) = *(a2 + 8);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeDifference@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    do
    {
      v7 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        while ((*v7 ^ *v3) > 7 || *(v7 + 8) != *(v3 + 8) || *(v7 + 16) != *(v3 + 16))
        {
          v7 += 24;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }
      }

      if (v7 == v8)
      {
LABEL_9:
        v9 = *a3;
        v10 = a3[1];
        if (*a3 != v10)
        {
          while ((*v9 ^ *v3) > 7 || *(v9 + 8) != *(v3 + 8) || *(v9 + 16) != *(v3 + 16))
          {
            v9 += 24;
            if (v9 == v10)
            {
              goto LABEL_16;
            }
          }
        }

        if (v9 == v10)
        {
LABEL_16:
          result = sub_29ABC6BEC(a3, v3);
        }
      }

      v3 += 24;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29ABC6D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdBufferSpec::Hash(pxrInternal__aapl__pxrReserved__::HdBufferSpec *this)
{
  v2 = 0;
  v3 = 0;
  sub_29ABC697C(&v2, this, this + 8);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

void pxrInternal__aapl__pxrReserved__::HdBufferSpec::Dump(void *a1)
{
  sub_29A00911C(MEMORY[0x29EDC93C8], "BufferSpecVector\n", 17);
  if ((-1431655765 * ((a1[1] - *a1) >> 3)) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = MEMORY[0x29C2C1ED0](MEMORY[0x29EDC93C8], v4);
      v6 = sub_29A00911C(v5, " : ", 3);
      v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (*a1 + v3));
      v8 = sub_29A00911C(v7, ", ", 2);
      v1 = v1 & 0xFFFFFFFF00000000 | *(*a1 + v3 + 8);
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, v1, __p);
      if ((v17 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v10 = v17;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = sub_29A00911C(v8, v9, v10);
      v12 = sub_29A00911C(v11, " (", 2);
      v13 = MEMORY[0x29C2C1ED0](v12, *(*a1 + v3 + 8));
      v14 = sub_29A00911C(v13, "), ", 3);
      v15 = MEMORY[0x29C2C1F00](v14, *(*a1 + v3 + 16));
      sub_29A00911C(v15, "\n", 1);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
      v3 += 24;
    }

    while (v4 < (-1431655765 * ((a1[1] - *a1) >> 3)));
  }
}

void sub_29ABC6F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABC6FA0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29ABC6FF4(void *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v12[4] = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v12[0] = v7;
  v12[1] = v8;
  v12[3] = &v7[24 * v6];
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v8 + 8) = *(a2 + 1);
  v12[2] = v8 + 24;
  sub_29ABC711C(a1, v12);
  v10 = a1[1];
  sub_29ABC71C0(v12);
  return v10;
}

void sub_29ABC7108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABC711C(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v2;
    do
    {
      *v6 = *v5;
      *v5 = 0;
      *(v6 + 8) = *(v5 + 1);
      v5 += 3;
      v6 += 24;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 3;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29ABC71C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 24);
    v3 -= 24;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType::~HdCameraTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *this)
{
  v35 = (this + 272);
  sub_29A124AB0(&v35);
  v2 = *(this + 33);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 31);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 30);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 29);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 28);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 27);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 26);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 25);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 24);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 23);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 22);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 21);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 20);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 19);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 18);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 17);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 16);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 15);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 14);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 13);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 12);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 11);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 10);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 9);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 8);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 7);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 6);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 5);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 4);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 3);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 2);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 1);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType::HdCameraTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *this)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "projection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "horizontalAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "verticalAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "horizontalApertureOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "verticalApertureOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "focalLength", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "clippingRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "clipPlanes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "fStop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "focusDistance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "focusOn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "dofAspect", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "splitDiopter:count", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "splitDiopter:angle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "splitDiopter:offset1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "splitDiopter:width1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "splitDiopter:focusDistance1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "splitDiopter:offset2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "splitDiopter:width2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "splitDiopter:focusDistance2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "shutterOpen", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "shutterClose", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "exposure", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "windowPolicy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "standard", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "fisheye", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "lensDistortion:type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 216, "lensDistortion:k1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 224, "lensDistortion:k2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 232, "lensDistortion:center", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 240, "lensDistortion:anaSq", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 248, "lensDistortion:asym", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 256, "lensDistortion:scale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 264, "lensDistortion:ior", 0);
  v3 = *this;
  v40 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v41 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v42 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v43 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v44 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v45 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v46 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v47 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v48 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v49 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v50 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v51 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v52 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v53 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v54 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v55 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v56 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v57 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v58 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v59 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v60 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v61 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v62 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v63 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v64 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v65 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v66 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v67 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v68 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v69 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v70 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v71 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v72 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v73 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  sub_29A12EF7C(this + 34, &v40, &v74, 0x22uLL);
  for (i = 264; i != -8; i -= 8)
  {
    v38 = *(&v40 + i);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABC7EB8(_Unwind_Exception *a1)
{
  v3 = 264;
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
      v5 = v1[33];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[32];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[31];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[30];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[29];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[28];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[27];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[26];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[25];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[24];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[23];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[22];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[21];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[20];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[19];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[18];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[17];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[16];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[15];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[14];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[13];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[12];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[11];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[10];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[9];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[8];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[7];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[6];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[5];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[4];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[3];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[2];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[1];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdCamera *pxrInternal__aapl__pxrReserved__::HdCamera::HdCamera(pxrInternal__aapl__pxrReserved__::HdCamera *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v3 = &unk_2A2076078;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v3 + 16, 1.0);
  *(this + 11) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0xFF7FFFFF7F7FFFFFLL;
  *(this + 12) = 0u;
  *(this + 208) = 0;
  *(this + 53) = 1065353216;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v4)
  {
    v4 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  v5 = *(v4 + 24);
  *(this + 34) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 34) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 296) = xmmword_29B47CF20;
  *(this + 39) = 0x200000000;
  return this;
}

void sub_29ABC8390(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 23) = v5;
    operator delete(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdCamera::~HdCamera(pxrInternal__aapl__pxrReserved__::HdCamera *this)
{
  *this = &unk_2A2076078;
  v2 = *(this + 34);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdCamera::~HdCamera(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCamera::Sync(pxrInternal__aapl__pxrReserved__::HdCamera *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v86 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v47, "hd", "virtual void pxrInternal__aapl__pxrReserved__::HdCamera::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  if (a2 || (*&v78 = "hd/camera.cpp", *(&v78 + 1) = "Sync", *&v79 = 69, *(&v79 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdCamera::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)", LOBYTE(v80) = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v78, "sceneDelegate != nullptr", 0), (result & 1) != 0))
  {
    v8 = *a4;
    if (*a4)
    {
      result = (*(*a2 + 72))(&v78, a2, this + 8);
      v9 = v83;
      *(this + 5) = v82;
      *(this + 6) = v9;
      v10 = v85;
      *(this + 7) = v84;
      *(this + 8) = v10;
      v11 = v79;
      *(this + 1) = v78;
      *(this + 2) = v11;
      v12 = v81;
      *(this + 3) = v80;
      *(this + 4) = v12;
    }

    if ((v8 & 2) != 0)
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens))
      {
        sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(&v78, a2, this + 8);
      if (*(&v78 + 1))
      {
        *(this + 36) = *sub_29ABC9708(&v78);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v14)
      {
        v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v77, a2, this + 8, v14 + 8);
      if (v77[1])
      {
        *(this + 37) = *sub_29A8D5794(v77);
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v15)
      {
        v15 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v76, a2, this + 8, v15 + 16);
      if (v76[1])
      {
        *(this + 38) = *sub_29A8D5794(v76);
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v16)
      {
        v16 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v75, a2, this + 8, v16 + 24);
      if (v75[1])
      {
        *(this + 39) = *sub_29A8D5794(v75);
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v17)
      {
        v17 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v74, a2, this + 8, v17 + 32);
      if (v74[1])
      {
        *(this + 40) = *sub_29A8D5794(v74);
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v18)
      {
        v18 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v73, a2, this + 8, v18 + 40);
      if (v73[1])
      {
        *(this + 41) = *sub_29A8D5794(v73);
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v19)
      {
        v19 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v72, a2, this + 8, v19 + 48);
      if (v72[1])
      {
        *(this + 21) = *sub_29ABC979C(v72);
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v20)
      {
        v20 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v71, a2, this + 8, v20 + 64);
      if (v71[1])
      {
        *(this + 50) = *sub_29A8D5794(v71);
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v21)
      {
        v21 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v70, a2, this + 8, v21 + 72);
      if (v70[1])
      {
        *(this + 51) = *sub_29A8D5794(v70);
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v22)
      {
        v22 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v69, a2, this + 8, v22 + 80);
      if (v69[1])
      {
        *(this + 208) = *sub_29A1EFD10(v69);
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v23)
      {
        v23 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v68, a2, this + 8, v23 + 88);
      if (v68[1])
      {
        *(this + 53) = *sub_29A8D5794(v68);
      }

      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v24)
      {
        v24 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v67, a2, this + 8, v24 + 96);
      if (v67[1])
      {
        *(this + 54) = *sub_29A346A20(v67);
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v25)
      {
        v25 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v66, a2, this + 8, v25 + 104);
      if (v66[1])
      {
        *(this + 55) = *sub_29A8D5794(v66);
      }

      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v26)
      {
        v26 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v65, a2, this + 8, v26 + 112);
      if (v65[1])
      {
        *(this + 56) = *sub_29A8D5794(v65);
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v27)
      {
        v27 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v64, a2, this + 8, v27 + 120);
      if (v64[1])
      {
        *(this + 57) = *sub_29A8D5794(v64);
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v28)
      {
        v28 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v63, a2, this + 8, v28 + 128);
      if (v63[1])
      {
        *(this + 58) = *sub_29A8D5794(v63);
      }

      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v29)
      {
        v29 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v62, a2, this + 8, v29 + 136);
      if (v62[1])
      {
        *(this + 59) = *sub_29A8D5794(v62);
      }

      v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v30)
      {
        v30 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v61, a2, this + 8, v30 + 144);
      if (v61[1])
      {
        *(this + 60) = *sub_29A8D5794(v61);
      }

      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v31)
      {
        v31 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v60, a2, this + 8, v31 + 152);
      if (v60[1])
      {
        *(this + 61) = *sub_29A8D5794(v60);
      }

      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v32)
      {
        v32 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v59, a2, this + 8, v32 + 160);
      if (v59[1])
      {
        *(this + 31) = *sub_29A337248(v59);
      }

      v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v33)
      {
        v33 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v58, a2, this + 8, v33 + 168);
      if (v58[1])
      {
        *(this + 32) = *sub_29A337248(v58);
      }

      v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v34)
      {
        v34 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v57, a2, this + 8, v34 + 176);
      if (v57[1])
      {
        *(this + 66) = *sub_29A8D5794(v57);
      }

      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v35)
      {
        v35 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v56, a2, this + 8, v35 + 208);
      if (v56[1])
      {
        v36 = sub_29A27A0F8(v56);
        sub_29A166F2C(this + 34, v36);
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v37)
      {
        v37 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v55, a2, this + 8, v37 + 216);
      if (v55[1])
      {
        *(this + 70) = *sub_29A8D5794(v55);
      }

      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v38)
      {
        v38 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v54, a2, this + 8, v38 + 224);
      if (v54[1])
      {
        *(this + 71) = *sub_29A8D5794(v54);
      }

      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v39)
      {
        v39 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v53, a2, this + 8, v39 + 232);
      if (v53[1])
      {
        *(this + 36) = *sub_29ABC9830(v53);
      }

      v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v40)
      {
        v40 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v52, a2, this + 8, v40 + 240);
      if (v52[1])
      {
        *(this + 74) = *sub_29A8D5794(v52);
      }

      v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v41)
      {
        v41 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v51, a2, this + 8, v41 + 248);
      if (v51[1])
      {
        *(this + 300) = *sub_29ABC9830(v51);
      }

      v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v42)
      {
        v42 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v50, a2, this + 8, v42 + 256);
      if (v50[1])
      {
        *(this + 77) = *sub_29A8D5794(v50);
      }

      v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v43)
      {
        v43 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(v49, a2, this + 8, v43 + 264);
      if (v49[1])
      {
        *(this + 78) = *sub_29A8D5794(v49);
      }

      sub_29A186B14(v49);
      sub_29A186B14(v50);
      sub_29A186B14(v51);
      sub_29A186B14(v52);
      sub_29A186B14(v53);
      sub_29A186B14(v54);
      sub_29A186B14(v55);
      sub_29A186B14(v56);
      sub_29A186B14(v57);
      sub_29A186B14(v58);
      sub_29A186B14(v59);
      sub_29A186B14(v60);
      sub_29A186B14(v61);
      sub_29A186B14(v62);
      sub_29A186B14(v63);
      sub_29A186B14(v64);
      sub_29A186B14(v65);
      sub_29A186B14(v66);
      sub_29A186B14(v67);
      sub_29A186B14(v68);
      sub_29A186B14(v69);
      sub_29A186B14(v70);
      sub_29A186B14(v71);
      sub_29A186B14(v72);
      sub_29A186B14(v73);
      sub_29A186B14(v74);
      sub_29A186B14(v75);
      sub_29A186B14(v76);
      sub_29A186B14(v77);
      result = sub_29A186B14(&v78);
    }

    if ((v8 & 8) != 0)
    {
      v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v44)
      {
        v44 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(&v78, a2, this + 8, v44 + 184);
      if (*(&v78 + 1))
      {
        *(this + 79) = *sub_29ABC98C4(&v78);
      }

      result = sub_29A186B14(&v78);
    }

    if ((v8 & 4) != 0)
    {
      v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      if (!v45)
      {
        v45 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
      }

      (*(*a2 + 328))(&v78, a2, this + 8, v45 + 56);
      if (*(&v78 + 1))
      {
        v46 = sub_29ABC9958(&v78);
        if ((this + 176) != v46)
        {
          sub_29A4DFDC4(this + 22, *v46, v46[1], (v46[1] - *v46) >> 5);
        }
      }

      result = sub_29A186B14(&v78);
    }

    *a4 = 0;
  }

  if (v47)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v48, v47);
  }

  return result;
}

void sub_29ABC9470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void sub_29ABC96F0(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29ABC960CLL);
}

void **sub_29ABC9708(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29ABC9C6C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ABC9CF8, &stru_2A20760B8);
  }
}

void **sub_29ABC979C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29ABC9D4C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ABC9D84, &stru_2A2040898);
  }
}

void **sub_29ABC9830(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD314(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2f>::Invoke, &stru_2A2040958);
  }
}

void **sub_29ABC98C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29ABC9DE0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ABC9E6C, qword_2A2072508);
  }
}

void **sub_29ABC9958(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29ABC9EC0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ABC9F4C, &stru_2A20760C8);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCamera::ComputeProjectionMatrix(pxrInternal__aapl__pxrReserved__::HdCamera *this)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v2, 1.0);
  v1 = 0x497424003F800000;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(v3, v2, 0, &v1, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29ABC9B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(&a13);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *sub_29ABC9BE0(atomic_ullong *a1)
{
  result = sub_29ABC9C28();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType::~HdCameraTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *sub_29ABC9C28()
{
  v0 = operator new(0x128uLL);
  pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType::HdCameraTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ABC9C6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B70CDDCLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20760B8);
}

_DWORD *sub_29ABC9CF8@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29ABC9D40;
  a1[2] = &stru_2A20760B8;
  return result;
}

void sub_29ABC9D40(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29ABC9D4C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 83)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040898);
  }

  else
  {
    return 0;
  }
}

double sub_29ABC9D84@<D0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  result = -1.40444743e306;
  *v2 = 0xFF7FFFFF7F7FFFFFLL;
  *a1 = v2;
  a1[1] = sub_29ABC9DD4;
  a1[2] = &stru_2A2040898;
  return result;
}

void sub_29ABC9DD4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29ABC9DE0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B734CECLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, qword_2A2072508);
}

_DWORD *sub_29ABC9E6C@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29ABC9EB4;
  a1[2] = qword_2A2072508;
  return result;
}

void sub_29ABC9EB4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29ABC9EC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B6CA4CALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20760C8);
}

void *sub_29ABC9F4C@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29ABC9F98;
  a1[2] = &stru_2A20760C8;
  return result;
}

void sub_29ABC9F98(void **__p)
{
  if (__p)
  {
    v2 = *__p;
    if (v2)
    {
      __p[1] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType::~HdCameraSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *this)
{
  v22 = (this + 168);
  sub_29A124AB0(&v22);
  v2 = *(this + 20);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 19);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 18);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 17);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 15);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 14);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 13);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 12);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 10);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 9);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 8);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 7);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 6);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 4);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 2);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 1);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType::HdCameraSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *this)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "projection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "horizontalAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "verticalAperture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "horizontalApertureOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "verticalApertureOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "focalLength", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "clippingRange", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "clippingPlanes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "fStop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "focusDistance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "shutterOpen", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "shutterClose", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "exposure", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "focusOn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "dofAspect", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "splitDiopter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "lensDistortion", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "namespacedProperties", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "perspective", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "orthographic", 0);
  v3 = (this + 168);
  v4 = *this;
  v28 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v29 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v30 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v31 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v32 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v33 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v34 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v35 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v36 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v37 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v38 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v39 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v40 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v41 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v42 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v43 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v44 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v45 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v46 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v47 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v48 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  sub_29A12EF7C(v3, &v28, &v49, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
    v26 = *(&v28 + i);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABCA7F8(_Unwind_Exception *a1)
{
  v3 = 160;
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
      v5 = v1[20];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetProjection(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetHorizontalAperture(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCABD8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABCD0E8(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetVerticalAperture(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetHorizontalApertureOffset(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetVerticalApertureOffset(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFocalLength(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetClippingRange(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCAFD4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCAFD4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABCD178(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetClippingPlanes(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB100(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCB100(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABCD208(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFStop(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 9);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFocusDistance(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 10);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterOpen(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 11);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCB394(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABCD298(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterClose(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 12);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetExposure(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 13);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFocusOn(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 14);
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

void sub_29ABCB628(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABCD328(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDofAspect(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 15);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSplitDiopter(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 16);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetLensDistortion(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 17);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetNamespacedProperties(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 18);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, &v8);
  sub_29ABCD3B8(a2, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCB9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19)
{
  v143 = *MEMORY[0x29EDCA608];
  v26 = &v140;
  memset(v142, 0, sizeof(v142));
  v140 = 0u;
  memset(v141, 0, sizeof(v141));
  v27 = v142;
  if (*a1)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    v26 = v141;
    v27 = v142 + 1;
    sub_29A166F2C(v142, v29 + 1);
    v31 = *a1;
    v30 = a1[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = *(&v140 + 1);
    *&v140 = v31;
    *(&v140 + 1) = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  if (*a2)
  {
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v34)
    {
      v34 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v27, v34 + 2);
    ++v33;
    v36 = *a2;
    v35 = a2[1];
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(v26 + 1);
    *v26 = v36;
    *(v26 + 1) = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }
  }

  if (*a3)
  {
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v38)
    {
      v38 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v33, v38 + 3);
    v39 = v33 + 1;
    v40 = &v141[v33 - 1];
    v42 = *a3;
    v41 = a3[1];
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = v40[1];
    *v40 = v42;
    v40[1] = v41;
    if (v43)
    {
      sub_29A014BEC(v43);
    }
  }

  else
  {
    v39 = v33;
  }

  if (*a4)
  {
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v44)
    {
      v44 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v39, v44 + 4);
    v45 = v39 + 1;
    v46 = &v141[v39 - 1];
    v48 = *a4;
    v47 = a4[1];
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v46[1];
    *v46 = v48;
    v46[1] = v47;
    if (v49)
    {
      sub_29A014BEC(v49);
    }
  }

  else
  {
    v45 = v39;
  }

  if (*a5)
  {
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v50)
    {
      v50 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v45, v50 + 5);
    v51 = v45 + 1;
    v52 = &v141[v45 - 1];
    v54 = *a5;
    v53 = a5[1];
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = v52[1];
    *v52 = v54;
    v52[1] = v53;
    if (v55)
    {
      sub_29A014BEC(v55);
    }
  }

  else
  {
    v51 = v45;
  }

  if (*a6)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v56)
    {
      v56 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v51, v56 + 6);
    v57 = v51 + 1;
    v58 = &v141[v51 - 1];
    v60 = *a6;
    v59 = a6[1];
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = v58[1];
    *v58 = v60;
    v58[1] = v59;
    if (v61)
    {
      sub_29A014BEC(v61);
    }
  }

  else
  {
    v57 = v51;
  }

  if (*a7)
  {
    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v62)
    {
      v62 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v57, v62 + 7);
    v63 = v57 + 1;
    v64 = &v141[v57 - 1];
    v66 = *a7;
    v65 = a7[1];
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = v64[1];
    *v64 = v66;
    v64[1] = v65;
    if (v67)
    {
      sub_29A014BEC(v67);
    }
  }

  else
  {
    v63 = v57;
  }

  if (*a8)
  {
    v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v68)
    {
      v68 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v63, v68 + 8);
    v69 = v63 + 1;
    v70 = &v141[v63 - 1];
    v72 = *a8;
    v71 = a8[1];
    if (v71)
    {
      atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
    }

    v73 = v70[1];
    *v70 = v72;
    v70[1] = v71;
    if (v73)
    {
      sub_29A014BEC(v73);
    }
  }

  else
  {
    v69 = v63;
  }

  if (*a10)
  {
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v74)
    {
      v74 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v69, v74 + 9);
    v75 = v69 + 1;
    v76 = &v141[v69 - 1];
    v78 = *a10;
    v77 = a10[1];
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = v76[1];
    *v76 = v78;
    v76[1] = v77;
    if (v79)
    {
      sub_29A014BEC(v79);
    }
  }

  else
  {
    v75 = v69;
  }

  if (*a11)
  {
    v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v80)
    {
      v80 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v75, v80 + 10);
    v81 = v75 + 1;
    v82 = &v141[v75 - 1];
    v84 = *a11;
    v83 = a11[1];
    if (v83)
    {
      atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
    }

    v85 = v82[1];
    *v82 = v84;
    v82[1] = v83;
    if (v85)
    {
      sub_29A014BEC(v85);
    }
  }

  else
  {
    v81 = v75;
  }

  if (*a12)
  {
    v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v86)
    {
      v86 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v81, v86 + 11);
    v87 = v81 + 1;
    v88 = &v141[v81 - 1];
    v90 = *a12;
    v89 = a12[1];
    if (v89)
    {
      atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
    }

    v91 = v88[1];
    *v88 = v90;
    v88[1] = v89;
    if (v91)
    {
      sub_29A014BEC(v91);
    }
  }

  else
  {
    v87 = v81;
  }

  if (*a13)
  {
    v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v92)
    {
      v92 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v87, v92 + 12);
    v93 = v87 + 1;
    v94 = &v141[v87 - 1];
    v96 = *a13;
    v95 = a13[1];
    if (v95)
    {
      atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
    }

    v97 = v94[1];
    *v94 = v96;
    v94[1] = v95;
    if (v97)
    {
      sub_29A014BEC(v97);
    }
  }

  else
  {
    v93 = v87;
  }

  if (*a14)
  {
    v98 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v98)
    {
      v98 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v93, v98 + 13);
    v99 = v93 + 1;
    v100 = &v141[v93 - 1];
    v102 = *a14;
    v101 = a14[1];
    if (v101)
    {
      atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
    }

    v103 = v100[1];
    *v100 = v102;
    v100[1] = v101;
    if (v103)
    {
      sub_29A014BEC(v103);
    }
  }

  else
  {
    v99 = v93;
  }

  if (*a15)
  {
    v104 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v104)
    {
      v104 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v99, v104 + 14);
    v105 = v99 + 1;
    v106 = &v141[v99 - 1];
    v108 = *a15;
    v107 = a15[1];
    if (v107)
    {
      atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
    }

    v109 = v106[1];
    *v106 = v108;
    v106[1] = v107;
    if (v109)
    {
      sub_29A014BEC(v109);
    }
  }

  else
  {
    v105 = v99;
  }

  if (*a16)
  {
    v110 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v110)
    {
      v110 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v105, v110 + 15);
    v111 = v105 + 1;
    v112 = &v141[v105 - 1];
    v114 = *a16;
    v113 = a16[1];
    if (v113)
    {
      atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
    }

    v115 = v112[1];
    *v112 = v114;
    v112[1] = v113;
    if (v115)
    {
      sub_29A014BEC(v115);
    }
  }

  else
  {
    v111 = v105;
  }

  if (*a17)
  {
    v116 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v116)
    {
      v116 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v111, v116 + 16);
    v117 = v111 + 1;
    v118 = &v141[v111 - 1];
    v120 = *a17;
    v119 = a17[1];
    if (v119)
    {
      atomic_fetch_add_explicit((v119 + 8), 1uLL, memory_order_relaxed);
    }

    v121 = v118[1];
    *v118 = v120;
    v118[1] = v119;
    if (v121)
    {
      sub_29A014BEC(v121);
    }
  }

  else
  {
    v117 = v111;
  }

  if (*a18)
  {
    v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v122)
    {
      v122 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v117, v122 + 17);
    v123 = v117 + 1;
    v124 = &v141[v117 - 1];
    v126 = *a18;
    v125 = a18[1];
    if (v125)
    {
      atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
    }

    v127 = v124[1];
    *v124 = v126;
    v124[1] = v125;
    if (v127)
    {
      sub_29A014BEC(v127);
    }
  }

  else
  {
    v123 = v117;
  }

  if (*a19)
  {
    v128 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v128)
    {
      v128 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A166F2C(v142 + v123, v128 + 18);
    v129 = v123 + 1;
    v130 = &v141[v123 - 1];
    v132 = *a19;
    v131 = a19[1];
    if (v131)
    {
      atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
    }

    v133 = v130[1];
    *v130 = v132;
    v130[1] = v131;
    if (v133)
    {
      sub_29A014BEC(v133);
    }
  }

  else
  {
    v129 = v123;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v129, v142, &v140, &v139);
  *a9 = v139;
  for (i = 280; i != -8; i -= 16)
  {
    v135 = *(&v141[-1] + i);
    if (v135)
    {
      sub_29A014BEC(v135);
    }
  }

  for (j = 136; j != -8; j -= 8)
  {
    v137 = *(v142 + j);
    if ((v137 & 7) != 0)
    {
      atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ABCC39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 280;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 136;
      while (1)
      {
        v18 = *(v13 - 240 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetProjection(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetHorizontalAperture(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetVerticalAperture(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetHorizontalApertureOffset(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetVerticalApertureOffset(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetFocalLength(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetClippingRange(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetClippingPlanes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetFStop(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetFocusDistance(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetShutterOpen(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetShutterClose(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetExposure(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 200);
  *(a1 + 192) = v4;
  *(a1 + 200) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetFocusOn(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 216);
  *(a1 + 208) = v4;
  *(a1 + 216) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetDofAspect(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 232);
  *(a1 + 224) = v4;
  *(a1 + 232) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetSplitDiopter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 248);
  *(a1 + 240) = v4;
  *(a1 + 248) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetLensDistortion(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 264);
  *(a1 + 256) = v4;
  *(a1 + 264) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCameraSchema::Builder::SetNamespacedProperties(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 280);
  *(a1 + 272) = v4;
  *(a1 + 280) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens))
    {
      sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!result)
  {
    return sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748BB8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748B80, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748B80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748BB8);
  }

  return &unk_2A1748B80;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterOpenLocator(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748BF8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1748BF8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1748B80, (v3 + 88), dword_2A1748BC0);
      __cxa_atexit(sub_29ABC33B4, dword_2A1748BC0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748BF8);
    }
  }

  return dword_2A1748BC0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterCloseLocator(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748C38, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1748C38);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1748B80, (v3 + 96), dword_2A1748C00);
      __cxa_atexit(sub_29ABC33B4, dword_2A1748C00, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748C38);
    }
  }

  return dword_2A1748C00;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetNamespacedPropertiesLocator(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748C78, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1748C78);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1748B80, (v3 + 144), dword_2A1748C40);
      __cxa_atexit(sub_29ABC33B4, dword_2A1748C40, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748C78);
    }
  }

  return dword_2A1748C40;
}

double pxrInternal__aapl__pxrReserved__::HdCameraSchema::BuildProjectionDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdCameraSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v5 + 19) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v7 + 20) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v11);
      result = *&v11;
      *a2 = v11;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A1748CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748CA8))
    {
      sub_29ABCCFA4(this, &qword_2A1748C98);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1748C98, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748CA8);
    }

    v6 = &qword_2A1748C98;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1748C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748C90))
    {
      sub_29ABCCFA4(this, &qword_2A1748C80);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1748C80, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748C90);
    }

    v6 = &qword_2A1748C80;
  }

  v9 = *v6;
  v8 = v6[1];
  *a2 = v9;
  *(a2 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ABCCFA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2076160;
  v4[1] = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  return sub_29ABCD50C(a2, v4);
}

uint64_t sub_29ABCD02C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *sub_29ABCD05C(atomic_ullong *a1)
{
  result = sub_29ABCD0A4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType::~HdCameraSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType *sub_29ABCD0A4()
{
  v0 = operator new(0xC0uLL);
  pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens_StaticTokenType::HdCameraSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ABCD0E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20760D8, 0)) != 0)
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

void *sub_29ABCD178@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20760F0, 0)) != 0)
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

void *sub_29ABCD208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076108, 0)) != 0)
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

void *sub_29ABCD298@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076120, 0)) != 0)
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

void *sub_29ABCD328@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076138, 0)) != 0)
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

void *sub_29ABCD3B8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    a1[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
    sub_29A014BEC(v4);
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  return a1;
}

void sub_29ABCD414(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076160;
  v1 = *(a1 + 1);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABCD44C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076160;
  v2 = *(a1 + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

uint64_t sub_29ABCD4A8@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

uint64_t sub_29ABCD4E4@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

void *sub_29ABCD50C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20761B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABCD564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABCD580(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABCD5A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABCD5D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076200))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType::~HdCapsuleSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType::HdCapsuleSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "capsule", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "height", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "radius", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "radiusTop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "radiusBottom", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "axis", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "X", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "Y", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "Z", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABCD9C4(_Unwind_Exception *a1)
{
  v3 = 64;
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
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetHeight(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetRadius(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetRadiusTop(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetRadiusBottom(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetAxis(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
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
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

void sub_29ABCE188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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

void *pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::Builder::SetHeight(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::Builder::SetRadius(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::Builder::SetRadiusTop(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::Builder::SetRadiusBottom(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::Builder::SetAxis(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens))
    {
      sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!result)
  {
    return sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748CE8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748CB0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748CB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748CE8);
  }

  return &unk_2A1748CB0;
}

double pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::BuildAxisDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdCapsuleSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
  }

  if ((*(v5 + 6) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    }

    if ((*(v7 + 7) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      if ((*(v8 + 8) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1748D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748D30))
      {
        sub_29ABCCFA4(this, &qword_2A1748D20);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1748D20, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1748D30);
      }

      v6 = &qword_2A1748D20;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1748D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748D18))
      {
        sub_29ABCCFA4(this, &qword_2A1748D08);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1748D08, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1748D18);
      }

      v6 = &qword_2A1748D08;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1748D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748D00))
    {
      sub_29ABCCFA4(this, &qword_2A1748CF0);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1748CF0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748D00);
    }

    v6 = &qword_2A1748CF0;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *sub_29ABCE7C0(atomic_ullong *a1)
{
  result = sub_29ABCE808();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType::~HdCapsuleSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType *sub_29ABCE808()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens_StaticTokenType::HdCapsuleSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType::~HdCategoriesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType::HdCategoriesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "categories", 0);
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

void pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetIncludedCategoryNames(pxrInternal__aapl__pxrReserved__::HdCategoriesSchema *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *this;
  if (v3)
  {
    (*(*v3 + 16))(&v11);
    sub_29A7BBF68(a2, v12 - v11);
    v5 = v11;
    v6 = v12;
    while (v5 != v6)
    {
      (*(**this + 24))(&v7);
      sub_29ABCD328(&v7, &v9);
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      if (v9 && (*v9)[4](v9, 0.0))
      {
        sub_29A7BDD40(a2, v5);
      }

      if (v10)
      {
        sub_29A014BEC(v10);
      }

      ++v5;
    }

    v9 = &v11;
    sub_29A124AB0(&v9);
  }
}

void sub_29ABCEB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  a12 = &a14;
  sub_29A124AB0(&a12);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

BOOL pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::IsIncludedInCategory(pxrInternal__aapl__pxrReserved__::HdCategoriesSchema *this, atomic_uint **a2)
{
  v5 = *a2;
  if ((*a2 & 7) != 0)
  {
    v2 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  sub_29ABCB628(this, &v6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = v6 && ((*(*v6 + 32))(v6, 0.0) & 1) != 0;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v3;
}

void sub_29ABCEC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::BuildRetained(pxrInternal__aapl__pxrReserved__::HdCategoriesSchema *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t *a3@<X1>, uint64_t *a4@<X3>, __int128 *a5@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1748D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748D48))
  {
    LOBYTE(v16[0]) = 1;
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v16, &xmmword_2A1748D38);
    __cxa_atexit(sub_29ABCF02C, &xmmword_2A1748D38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748D48);
  }

  if ((atomic_load_explicit(&qword_2A1748D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748D60))
  {
    LOBYTE(v16[0]) = 0;
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v16, &xmmword_2A1748D50);
    __cxa_atexit(sub_29ABCF02C, &xmmword_2A1748D50, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748D60);
  }

  memset(v16, 0, sizeof(v16));
  if (a3 && this && !a2)
  {
    sub_29A039314(v16, this);
    v11 = this;
    do
    {
      v14 = xmmword_2A1748D38;
      if (*(&xmmword_2A1748D38 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A1748D38 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(v16, &v14);
      if (*(&v14 + 1))
      {
        sub_29A014BEC(*(&v14 + 1));
      }

      v11 = (v11 - 1);
    }

    while (v11);
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(this, a3, v16[0], &v14);
LABEL_23:
    *a5 = v14;
    goto LABEL_39;
  }

  if (!this && a2 && a4)
  {
    sub_29A039314(v16, a2);
    v12 = a2;
    do
    {
      v14 = xmmword_2A1748D50;
      if (*(&xmmword_2A1748D50 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A1748D50 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(v16, &v14);
      if (*(&v14 + 1))
      {
        sub_29A014BEC(*(&v14 + 1));
      }

      v12 = (v12 - 1);
    }

    while (v12);
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a2, a4, v16[0], &v14);
    goto LABEL_23;
  }

  v14 = 0uLL;
  v15 = 0;
  sub_29A1D7F98(&v14, this + a2);
  sub_29A039314(v16, this + a2);
  if (a3 && this)
  {
    do
    {
      sub_29A1D8028(&v14, a3);
      v13 = xmmword_2A1748D38;
      if (*(&xmmword_2A1748D38 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A1748D38 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(v16, &v13);
      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }

      ++a3;
      this = (this - 1);
    }

    while (this);
  }

  if (a4 && a2)
  {
    do
    {
      sub_29A1D8028(&v14, a4);
      v13 = xmmword_2A1748D50;
      if (*(&xmmword_2A1748D50 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A1748D50 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A01729C(v16, &v13);
      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }

      ++a4;
      a2 = (a2 - 1);
    }

    while (a2);
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((*(&v14 + 1) - v14) >> 3, v14, v16[0], &v13);
  *a5 = v13;
  *&v13 = &v14;
  sub_29A124AB0(&v13);
LABEL_39:
  *&v14 = v16;
  sub_29A0176E4(&v14);
}

uint64_t sub_29ABCF02C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens))
    {
      sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
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

unint64_t pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCategoriesSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
  if (!result)
  {
    return sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCategoriesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748DA0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748D68, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748D68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748DA0);
  }

  return &unk_2A1748D68;
}

unint64_t sub_29ABCF248(atomic_ullong *a1)
{
  v2 = sub_29ABCF2C8();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType *sub_29ABCF2C8()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens_StaticTokenType::HdCategoriesSchemaTokens_StaticTokenType(v0);
  return v0;
}

__n128 pxrInternal__aapl__pxrReserved__::HdChangeTracker::HdChangeTracker(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this)
{
  *this = &unk_2A2076228;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 103) = 0;
  *(this + 106) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  __dmb(0xBu);
  *(this + 36) = 0;
  __dmb(0xBu);
  *(this + 101) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 37) = this + 816;
  __dmb(0xBu);
  *(this + 36) = 1;
  *(this + 176) = 0;
  *(this + 179) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 76) = 0u;
  *(this + 77) = 0u;
  *(this + 78) = 0u;
  *(this + 79) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
  __dmb(0xBu);
  *(this + 109) = 0;
  __dmb(0xBu);
  *(this + 174) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1432) = 0u;
  *(this + 110) = this + 1400;
  __dmb(0xBu);
  *(this + 109) = 1;
  *(this + 249) = 0;
  *(this + 252) = 0;
  *(this + 1464) = 0u;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 1624) = 0u;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 1672) = 0u;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 1800) = 0u;
  *(this + 1816) = 0u;
  *(this + 1832) = 0u;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1960) = 0u;
  __dmb(0xBu);
  *(this + 182) = 0;
  __dmb(0xBu);
  *(this + 247) = 0;
  *(this + 124) = 0u;
  *(this + 125) = 0u;
  *(this + 126) = 0u;
  *(this + 183) = this + 1984;
  __dmb(0xBu);
  *(this + 182) = 1;
  *(this + 322) = 0;
  *(this + 325) = 0;
  *(this + 128) = 0u;
  *(this + 129) = 0u;
  *(this + 130) = 0u;
  *(this + 131) = 0u;
  *(this + 132) = 0u;
  *(this + 133) = 0u;
  *(this + 134) = 0u;
  *(this + 135) = 0u;
  *(this + 136) = 0u;
  *(this + 137) = 0u;
  *(this + 138) = 0u;
  *(this + 139) = 0u;
  *(this + 140) = 0u;
  *(this + 141) = 0u;
  *(this + 142) = 0u;
  *(this + 143) = 0u;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 148) = 0u;
  *(this + 149) = 0u;
  *(this + 150) = 0u;
  *(this + 151) = 0u;
  *(this + 152) = 0u;
  *(this + 153) = 0u;
  *(this + 154) = 0u;
  *(this + 155) = 0u;
  *(this + 156) = 0u;
  *(this + 157) = 0u;
  *(this + 158) = 0u;
  *(this + 159) = 0u;
  __dmb(0xBu);
  *(this + 255) = 0;
  __dmb(0xBu);
  *(this + 320) = 0;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 2600) = 0u;
  *(this + 256) = this + 2568;
  __dmb(0xBu);
  *(this + 255) = 1;
  *(this + 395) = 0;
  *(this + 398) = 0;
  *(this + 2632) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 2680) = 0u;
  *(this + 2696) = 0u;
  *(this + 2712) = 0u;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 2792) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 2840) = 0u;
  *(this + 2856) = 0u;
  *(this + 2872) = 0u;
  *(this + 2888) = 0u;
  *(this + 2904) = 0u;
  *(this + 2920) = 0u;
  *(this + 2936) = 0u;
  *(this + 2952) = 0u;
  *(this + 2968) = 0u;
  *(this + 2984) = 0u;
  *(this + 3000) = 0u;
  *(this + 3016) = 0u;
  *(this + 3032) = 0u;
  *(this + 3048) = 0u;
  *(this + 3064) = 0u;
  *(this + 3080) = 0u;
  *(this + 3096) = 0u;
  *(this + 3112) = 0u;
  *(this + 3128) = 0u;
  __dmb(0xBu);
  *(this + 328) = 0;
  __dmb(0xBu);
  *(this + 393) = 0;
  *(this + 197) = 0u;
  *(this + 198) = 0u;
  *(this + 199) = 0u;
  *(this + 329) = this + 3152;
  __dmb(0xBu);
  *(this + 328) = 1;
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  *(this + 3208) = result;
  *(this + 3224) = result;
  *(this + 405) = 0x100000001;
  *(this + 406) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::~HdChangeTracker(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this)
{
  *this = &unk_2A2076228;
  sub_29A0ECEEC(&v2, "hd", "virtual pxrInternal__aapl__pxrReserved__::HdChangeTracker::~HdChangeTracker()");
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  sub_29ABD31B8(this + 328);
  sub_29ABD31B8(this + 255);
  sub_29ABD31B8(this + 182);
  sub_29ABD31B8(this + 109);
  sub_29ABD31B8(this + 36);
  sub_29A155EF4(this + 248);
  sub_29A155EF4(this + 208);
  sub_29ABD2E64(this + 168);
  sub_29ABD2E64(this + 128);
  sub_29ABD2E64(this + 88);
  sub_29ABD2E64(this + 48);
  sub_29ABD2E64(this + 8);
}

{
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::~HdChangeTracker(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::_LogCacheAccess(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (a3)
  {
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v5 = 0;
    pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCacheHit(v4, this, a2, &v5);
  }

  else
  {
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v5 = 0;
    pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCacheMiss(v4, this, a2, &v5);
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABCF808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimInserted(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(23))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Rprim Added: %s\n", v7, v8, Text);
  }

  v10 = a2;
  result = sub_29ABD33E8(this + 8, a2, &unk_29B4D6118, &v10);
  *(result + 6) = a3;
  ++*(this + 807);
  ++*(this + 803);
  return result;
}

BOOL sub_29ABCF8C0(int a1)
{
  v2 = sub_29ABD3358();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29ABD3358();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296978[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimRemoved(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(25))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Rprim Removed: %s\n", v5, v6, Text);
  }

  result = sub_29ABD368C(this + 1, a2);
  ++*(this + 807);
  ++*(this + 803);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v16[57] = *MEMORY[0x29EDCA608];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    if (*(v3 + 406))
    {
      v9 = (v5 & 0x7F800003);
      if ((v6 & 0x7F800003) != 0)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty(v3, v4, v9);
      }

      if ((v6 & 0x807FFFFC) != 0)
      {
        (*(**(v8 + 406) + 16))(v12);
        v16[56] = 0x800000000;
        pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::RprimDirtyBitsToLocatorSet(v12, v6, v16, v10);
        if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v16))
        {
          v11 = *(v8 + 406);
          sub_29ABD2F24(v13, v7, v16);
          v15 = 0x1000000001;
          sub_29ABD3720(v13, v14, v14);
          (*(*v11 + 56))(v11, v14);
          sub_29ABD3844(v14);
          sub_29ABD3178();
        }

        sub_29ABD3178();
      }
    }

    else
    {
      if ((v5 & 0x40) != 0)
      {
        v5 = v5 | 0x8820;
      }

      else
      {
        v5 = v5;
      }

      pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty(v3, v4, v5);
    }
  }

  else
  {
    sub_29B2C4690();
  }
}

void sub_29ABCFBC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a3)
{
  v6 = sub_29A2F4F50(this + 1, a2);
  if (v6 || (sub_29B2C46DC(v14) & 1) != 0)
  {
    v7 = *(v6 + 6);
    if (((~v7 | 0xC0000) & a3) != 0)
    {
      if (a3 == 1)
      {
        *(v6 + 6) = v7 | 1;
        return;
      }

      if ((v7 & 2) == 0)
      {
        if (sub_29ABCF8C0(35))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(a3, __p);
          if (v13 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("New Varying State %s: %s\n", v9, v10, Text, v11);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        LODWORD(a3) = a3 | 2;
        ++*(this + 802);
      }

      *(v6 + 6) = a3 | v7;
      ++*(this + 807);
      if ((a3 & 0x400) != 0)
      {
        ++*(this + 808);
        if ((a3 & 0x20000) == 0)
        {
LABEL_15:
          if ((a3 & 0x80000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else if ((a3 & 0x20000) == 0)
      {
        goto LABEL_15;
      }

      ++*(this + 809);
      if ((a3 & 0x80000) == 0)
      {
LABEL_17:
        if ((a3 & 0xC0000) != 0)
        {
          ++*(this + 803);
        }

        return;
      }

LABEL_16:
      ++*(this + 810);
      goto LABEL_17;
    }
  }
}

void sub_29ABCFD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits@<X0>(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v2 = this;
    sub_29A008864(v8);
    if ((v2 & 2) != 0)
    {
      sub_29A00911C(&v9, "<Varying> ", 10);
    }

    if (v2)
    {
      sub_29A00911C(&v9, "<InitRepr> ", 11);
    }

    if ((v2 & 4) != 0)
    {
      sub_29A00911C(&v9, " PrimID ", 8);
    }

    if ((v2 & 8) != 0)
    {
      sub_29A00911C(&v9, "Extent ", 7);
    }

    if ((v2 & 0x10) != 0)
    {
      sub_29A00911C(&v9, "DisplayStyle ", 13);
    }

    if ((v2 & 0x20) != 0)
    {
      sub_29A00911C(&v9, "Points ", 7);
    }

    if ((v2 & 0x40) != 0)
    {
      sub_29A00911C(&v9, "Primvar ", 8);
    }

    if ((v2 & 0x80) != 0)
    {
      sub_29A00911C(&v9, "MaterialId ", 11);
    }

    if ((v2 & 0x100) != 0)
    {
      sub_29A00911C(&v9, "Topology ", 9);
    }

    if ((v2 & 0x200) != 0)
    {
      sub_29A00911C(&v9, "Transform ", 10);
    }

    if ((v2 & 0x400) != 0)
    {
      sub_29A00911C(&v9, "Visibility ", 11);
    }

    if ((v2 & 0x800) != 0)
    {
      sub_29A00911C(&v9, "Normals ", 8);
    }

    if ((v2 & 0x1000) != 0)
    {
      sub_29A00911C(&v9, "DoubleSided ", 12);
    }

    if ((v2 & 0x2000) != 0)
    {
      sub_29A00911C(&v9, "CullStyle ", 10);
    }

    if ((v2 & 0x4000) != 0)
    {
      sub_29A00911C(&v9, "SubdivTags ", 11);
    }

    if ((v2 & 0x8000) != 0)
    {
      sub_29A00911C(&v9, "Widths ", 7);
    }

    if ((v2 & 0x10000) != 0)
    {
      sub_29A00911C(&v9, "Instancer ", 10);
    }

    if ((v2 & 0x20000) != 0)
    {
      sub_29A00911C(&v9, "InstanceIndex ", 14);
    }

    if ((v2 & 0x40000) != 0)
    {
      sub_29A00911C(&v9, "Repr ", 5);
    }

    if ((v2 & 0x80000) != 0)
    {
      sub_29A00911C(&v9, "RenderTag ", 10);
    }

    if ((v2 & 0x100000) != 0)
    {
      sub_29A00911C(&v9, "ComputationPrimvarDesc ", 23);
    }

    if ((v2 & 0x200000) != 0)
    {
      sub_29A00911C(&v9, "Categories ", 11);
    }

    if ((v2 & 0x400000) != 0)
    {
      sub_29A00911C(&v9, "VolumeField ", 12);
    }

    if ((v2 & 0x800000) != 0)
    {
      sub_29A00911C(&v9, "NewRepr ", 8);
    }

    else if (v2 < 0x800000)
    {
LABEL_61:
      std::stringbuf::str();
      v8[0] = *MEMORY[0x29EDC9528];
      v7 = *(MEMORY[0x29EDC9528] + 72);
      *(v8 + *(v8[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      v9 = v7;
      v10 = MEMORY[0x29EDC9570] + 16;
      if (v12 < 0)
      {
        operator delete(v11[7].__locale_);
      }

      v10 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v11);
      std::iostream::~basic_iostream();
      return MEMORY[0x29C2C4390](&v13);
    }

    sub_29A00911C(&v9, "CustomBits:", 11);
    v4 = 0x1000000;
    do
    {
      if ((v4 & v2) != 0)
      {
        v5 = "1";
      }

      else
      {
        v5 = "0";
      }

      sub_29A00911C(&v9, v5, 1);
      v6 = v4 >= 0x20000001;
      v4 *= 2;
    }

    while (!v6);
    goto LABEL_61;
  }

  return sub_29A008E78(a2, "Clean");
}

void sub_29ABD02CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::ResetVaryingState(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this)
{
  if (sub_29ABCF8C0(35))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Resetting Rprim Varying State: varyingStateVersion (%d -> %d)\n", v2, v3, *(this + 802), (*(this + 802) + 1));
  }

  ++*(this + 802);
  v7 = *(this + 3);
  v8 = 0;
  if (v7)
  {
    do
    {
      if ((*(*sub_29ABD038C(&v7, v2, v3) + 24) & 0xFFFFFFFD) == 0)
      {
        v6 = sub_29ABD038C(&v7, v4, v5);
        *(*v6 + 24) &= ~2u;
      }

      sub_29ABD03C4(&v7);
    }

    while (v7 != v8);
  }
}

void *sub_29ABD038C(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B2C4754(result, a2, a3);
  }

  return result;
}

uint64_t sub_29ABD03C4(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, unsigned int, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, unsigned int, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::ResetRprimVaryingState(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(35))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Resetting Rprim Varying State: %s\n", v5, v6, Text);
  }

  result = sub_29A2F4F50(this + 1, a2);
  v8 = result;
  if (result || (result = sub_29B2C47B0(v9), (result & 1) != 0))
  {
    *(v8 + 24) &= ~2u;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimClean(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(24))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Rprim Cleaned: %s\n", v7, v8, Text);
  }

  result = sub_29A2F4F50(this + 1, a2);
  v10 = result;
  if (result || (result = sub_29B2C4828(v11), (result & 1) != 0))
  {
    *(v10 + 24) = *(v10 + 24) & 2 | a3;
  }

  return result;
}

int32x2_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::InstancerInserted(int32x2_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(17))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancer Added: %s\n", v7, v8, Text);
  }

  v10 = a2;
  *(sub_29ABD33E8(&this[6], a2, &unk_29B4D6118, &v10) + 6) = a3;
  result = vadd_s32(this[403], 0x100000001);
  this[403] = result;
  return result;
}

int32x2_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::InstancerRemoved(int32x2_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(19))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Instancer Removed: %s\n", v5, v6, Text);
  }

  sub_29ABD368C(&this[6], a2);
  result = vadd_s32(this[403], 0x100000001);
  this[403] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::_AddDependency(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  sub_29ABD0CE0(a2, &v3, a3);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void sub_29ABD06C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::_RemoveDependency(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (sub_29ABD09F4(a2, &v5, a3))
  {
    sub_29A389594((v7 + 24));
    if (!*(v7 + 40))
    {
      sub_29ABD401C(a2, &v5);
    }
  }

  v7 = 0;
  return sub_29A0F845C(&v5);
}

void sub_29ABD0768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimSprimDependency(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::_RemoveDependency(this, this + 255, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::_RemoveDependency(v5, this + 328, a3);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimFromSprimSprimDependencies(uint64_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = this[320];
  __dmb(0xBu);
  if (v2)
  {
    v4 = this;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (sub_29ABD09F4(this + 255, &v16, a2))
    {
      v5 = *(v18 + 24);
      v6 = (v18 + 32);
      if (v5 != (v18 + 32))
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty(v4, (v5 + 7), 0xFFFFFFFFLL);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::_RemoveDependency(v7, v4 + 328, v5 + 7);
          v8 = *(v5 + 1);
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
              v9 = *(v5 + 2);
              v10 = *v9 == v5;
              v5 = v9;
            }

            while (!v10);
          }

          v5 = v9;
        }

        while (v9 != v6);
      }

      sub_29ABD401C(v4 + 255, &v16);
    }

    v18 = 0;
    sub_29A0F845C(&v16);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v11 = sub_29ABD09F4(v4 + 328, &v16, a2);
    if (v11)
    {
      v12 = *(v18 + 24);
      v13 = (v18 + 32);
      if (v12 != (v18 + 32))
      {
        do
        {
          v11 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::_RemoveDependency(v11, v4 + 255, v12 + 7);
          v14 = *(v12 + 1);
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
              v15 = *(v12 + 2);
              v10 = *v15 == v12;
              v12 = v15;
            }

            while (!v10);
          }

          v12 = v15;
        }

        while (v15 != v13);
      }

      sub_29ABD401C(v4 + 328, &v16);
    }

    v18 = 0;
    return sub_29A0F845C(&v16);
  }

  return this;
}

void sub_29ABD09D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD09F4(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29ABD38EC(a1, 0, a3, 0, a2, 1, sub_29ABD3C04, 0);
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v16[57] = *MEMORY[0x29EDCA608];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = *(v3 + 3248);
    if (v9)
    {
      (*(*v9 + 16))(v12);
      v16[56] = 0x800000000;
      pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::SprimDirtyBitsToLocatorSet(v12, v6, v16, v10);
      if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v16))
      {
        v11 = *(v8 + 406);
        sub_29ABD2F24(v13, v7, v16);
        v15 = 0x1000000001;
        sub_29ABD3720(v13, v14, v14);
        (*(*v11 + 56))(v11, v14);
        sub_29ABD3844(v14);
        sub_29ABD3178();
      }

      sub_29ABD3178();
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkSprimDirty(v8, v4, v5);
  }

  else
  {
    sub_29B2C4870();
  }
}

void sub_29ABD0C68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABD0CE0(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29ABD38EC(a1, 1, a3, 0, a2, 1, sub_29ABD416C, 0);
}

void *pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskInserted(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (sub_29ABCF8C0(33))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Task Added: %s\n", v7, v8, Text);
  }

  v10 = a2;
  result = sub_29ABD33E8(this + 88, a2, &unk_29B4D6118, &v10);
  *(result + 6) = a3;
  ++*(this + 807);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskRemoved(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29ABCF8C0(34))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Task Removed: %s\n", v5, v6, Text);
  }

  result = sub_29ABD368C(this + 11, a2);
  ++*(this + 807);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v12[57] = *MEMORY[0x29EDCA608];
  if (v5)
  {
    v6 = v4;
    v7 = v3;
    if (*(v3 + 406))
    {
      v12[56] = 0x800000000;
      pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::TaskDirtyBitsToLocatorSet(v5, v12, v5);
      if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v12))
      {
        v8 = *(v7 + 406);
        sub_29ABD2F24(v9, v6, v12);
        v11 = 0x1000000001;
        sub_29ABD3720(v9, v10, v10);
        (*(*v8 + 56))(v8, v10);
        sub_29ABD3844(v10);
        sub_29ABD3178();
      }

      sub_29ABD3178();
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkTaskDirty(v3, v4, v5);
  }

  else
  {
    sub_29B2C48BC();
  }
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkTaskDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  if (a3)
  {
    v5 = sub_29A2F4F50(this + 11, a2);
    if (v5 || (sub_29B2C4908(v7) & 1) != 0)
    {
      v6 = *(v5 + 6);
      if ((a3 & 0x10) != 0 && (v6 & 0x10) == 0)
      {
        ++*(this + 811);
      }

      *(v5 + 6) = v6 | a3;
      ++*(this + 807);
    }
  }

  else
  {
    sub_29B2C4980();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetTaskDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A2F4F50(this + 11, a2);
  if (v2 || (sub_29B2C49CC(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskClean(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = sub_29A2F4F50(this + 11, a2);
  v5 = result;
  if (result || (result = sub_29B2C4A14(v6), (result & 1) != 0))
  {
    *(v5 + 24) = *(v5 + 24) & 2 | a3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetInstancerDirtyBits(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A2F4F50(this + 6, a2);
  if (v2 || (sub_29B2C4A5C(v4) & 1) != 0)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v16[57] = *MEMORY[0x29EDCA608];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = *(v3 + 3248);
    if (v9)
    {
      (*(*v9 + 16))(v12);
      v16[56] = 0x800000000;
      pxrInternal__aapl__pxrReserved__::HdDirtyBitsTranslator::InstancerDirtyBitsToLocatorSet(v12, v6, v16, v10);
      if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v16))
      {
        v11 = *(v8 + 406);
        sub_29ABD2F24(v13, v7, v16);
        v15 = 0x1000000001;
        sub_29ABD3720(v13, v14, v14);
        (*(*v11 + 56))(v11, v14);
        sub_29ABD3844(v14);
        sub_29ABD3178();
      }

      sub_29ABD3178();
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkInstancerDirty(v8, v4, v5);
  }

  else
  {
    sub_29B2C4AA4();
  }
}

void sub_29ABD13C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkInstancerDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  result = sub_29A2F4F50(this + 6, a2);
  v7 = result;
  if (result || (result = sub_29B2C4AF0(v33), (result & 1) != 0))
  {
    v8 = *(v7 + 24);
    if ((a3 & ~v8) != 0)
    {
      *(v7 + 24) = v8 | a3;
      ++*(this + 807);
      v9 = a3 & 0x200;
      if ((a3 & 0x20000) != 0)
      {
        v10 = (v9 | 0x30000u);
        ++*(this + 809);
      }

      else
      {
        v10 = (v9 | 0x10000u);
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      if (sub_29ABD16C4(this + 182, &v30, a2))
      {
        v11 = *(v32 + 24);
        v12 = (v32 + 32);
        if (v11 != (v32 + 32))
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkInstancerDirty(this, (v11 + 28), v10);
            v13 = v11[1];
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
                v14 = v11[2];
                v15 = *v14 == v11;
                v11 = v14;
              }

              while (!v15);
            }

            v11 = v14;
          }

          while (v14 != v12);
        }
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (sub_29ABD16C4(this + 36, &v27, a2))
      {
        v16 = *(v29 + 24);
        v17 = (v29 + 32);
        if (v16 != (v29 + 32))
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkRprimDirty(this, (v16 + 28), v10);
            v18 = v16[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v16[2];
                v15 = *v19 == v16;
                v16 = v19;
              }

              while (!v15);
            }

            v16 = v19;
          }

          while (v19 != v17);
        }
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      if (sub_29ABD16C4(this + 109, &v24, a2))
      {
        v20 = *(v26 + 24);
        v21 = (v26 + 32);
        if (v20 != (v26 + 32))
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkSprimDirty(this, (v20 + 28), v10);
            v22 = v20[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v20[2];
                v15 = *v23 == v20;
                v20 = v23;
              }

              while (!v15);
            }

            v20 = v23;
          }

          while (v23 != v21);
        }
      }

      v26 = 0;
      sub_29A0F845C(&v24);
      v29 = 0;
      sub_29A0F845C(&v27);
      v32 = 0;
      return sub_29A0F845C(&v30);
    }
  }

  return result;
}

void sub_29ABD1678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a12 = 0;
  sub_29A0F845C(&a10);
  a16 = 0;
  sub_29A0F845C(&a14);
  a20 = 0;
  sub_29A0F845C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABD16C4(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29ABD38EC(a1, 0, a3, 0, a2, 0, sub_29ABD3C04, 0);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdChangeTracker::_MarkSprimDirty(pxrInternal__aapl__pxrReserved__::HdChangeTracker *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v6 = sub_29A2F4F50(this + 16, a2);
  if (v6 || (result = sub_29B2C4B38(v16), (result & 1) != 0))
  {
    *(v6 + 6) |= a3;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (sub_29ABD16C4(this + 255, &v13, a2))
    {
      v7 = *(v15 + 24);
      v8 = (v15 + 32);
      if (v7 != (v15 + 32))
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty(this, (v7 + 28), 0xFFFFFFFF);
          v9 = v7[1];
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = v7[2];
              v11 = *v10 == v7;
              v7 = v10;
            }

            while (!v11);
          }

          v7 = v10;
        }

        while (v10 != v8);
      }
    }

    ++*(this + 807);
    v15 = 0;
    return sub_29A0F845C(&v13);
  }

  return result;
}