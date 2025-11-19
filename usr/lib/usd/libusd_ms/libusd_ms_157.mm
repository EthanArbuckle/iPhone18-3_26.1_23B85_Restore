void sub_29ADFED34(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29AE03404(a1, v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumFaceVarying(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this, int a2)
{
  v2 = *(*(this + 2) + 8 * a2);
  if (v2)
  {
    return *(v2 + 8) + ((*(v2 + 24) - *(v2 + 16)) >> 2);
  }

  v7[0] = "hdSt/subdivision.cpp";
  v7[1] = "GetNumFaceVarying";
  v7[2] = 779;
  v7[3] = "int pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumFaceVarying(int) const";
  v8 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "_faceVaryingStencils[channel]", 0);
  result = 0;
  if (v6)
  {
    v2 = *(*(this + 2) + 8 * a2);
    return *(v2 + 8) + ((*(v2 + 24) - *(v2 + 16)) >> 2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetRefinedFvarIndices(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = *(this + 5);
  if (v4)
  {
    if (sub_29A0BDEB0(v4) > a2)
    {
      v7 = sub_29A0BDED8(*(this + 5), a2);
      if (v8 >= 1)
      {
        v9 = v7;
        v10 = v8 & 0x7FFFFFFF;
        do
        {
          sub_29A7ACEC4(a3, v9++);
          --v10;
        }

        while (v10);
      }
    }
  }
}

double pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateTopologyComputation@<D0>(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, _OWORD *a3@<X8>)
{
  v7 = a1;
  sub_29AE035D4(&v7, a2, &v6);
  result = *&v6;
  *a3 = v6;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateIndexComputation@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = a1;
  sub_29AE037D0(&v6, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateFvarIndexComputation@<D0>(uint64_t a1@<X1>, void *a2@<X2>, int a3@<W3>, _OWORD *a4@<X8>)
{
  v8 = a1;
  v7 = a3;
  sub_29AE039BC(&v8, a2, &v7, v6);
  result = v6[0];
  *a4 = *v6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateRefineComputationCPU@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t *a6@<X8>)
{
  v12 = operator new(0x70uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A2094B90;
  result = pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::HdSt_OsdRefineComputationCPU((v12 + 3), a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v12;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateRefineComputationGPU(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X5>, int a6@<W6>, int a7@<W7>, uint64_t *a8@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_GetGpuStencilTable(a1, a2, a3, a5, a6, a7, &v15);
  v12 = operator new(0x48uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A2094BE0;
  *a8 = pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::HdSt_OsdRefineComputationGPU((v12 + 3), a2, a4, v13, &v15, a6);
  a8[1] = v12;
  v14 = v16;
  if (v16)
  {

    sub_29A014BEC(v14);
  }
}

void sub_29ADFF15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateBaseFaceToRefinedFacesMapComputation@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1;
  sub_29AE03CAC(&v5, a2, v6);
  result = v6[0];
  *a3 = *v6;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation *pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation::HdSt_OsdTopologyComputation(pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation *this, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A20946D8;
  *(this + 4) = a2;
  sub_29A1E21F4(this + 10, a3);
  sub_29A1E2240(this + 11, a3 + 1);
  return this;
}

{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A20946D8;
  *(this + 4) = a2;
  sub_29A1E21F4(this + 10, a3);
  sub_29A1E2240(this + 11, a3 + 1);
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation::Resolve(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  v2 = v1 == 0;
  if (v1)
  {
    return v2;
  }

  sub_29A0ECEEC(&v17, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation::Resolve()");
  v4 = *(this + 4);
  if (!v4)
  {
    v12 = "hdSt/subdivision.cpp";
    v13 = "Resolve";
    v14 = 995;
    v15 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation::Resolve()";
    v16 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_topology", 0))
    {
      goto LABEL_19;
    }

    v4 = *(this + 4);
  }

  v5 = v4[69];
  if (v5)
  {
LABEL_4:
    if (v4[3])
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 10));
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, Text);
      pxrInternal__aapl__pxrReserved__::PxOsdRefinerFactory::Create(v4 + 1, (v4 + 74), &v11);
    }

    v9 = 0;
    v10 = 0;
    sub_29AE03E8C(&v12, 0);
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::SetRefinementTables(v5, &v10, &v9, &v12, &v19);
    sub_29AD1019C(this);
    if (v19)
    {
      v7 = sub_29A0BD970(v19);
      operator delete(v7);
    }

    v19 = &v12;
    sub_29AE03344(&v19);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    goto LABEL_12;
  }

  v12 = "hdSt/subdivision.cpp";
  v13 = "Resolve";
  v14 = 1001;
  v15 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdTopologyComputation::Resolve()";
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "subdivision", 0))
  {
    v4 = *(this + 4);
    goto LABEL_4;
  }

LABEL_19:
  sub_29AD1019C(this);
LABEL_12:
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }

  return v2;
}

void sub_29ADFF7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void sub_29ADFF8D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A0BD970(v3);

    operator delete(v4);
  }
}

double pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::HdSt_OsdIndexComputation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2094758;
  v4 = *a3;
  v3 = a3[1];
  *(a1 + 32) = a2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2094758;
  v4 = *a3;
  v3 = a3[1];
  *(a1 + 32) = a2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation *this)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong(this + 2, &v4, 1u);
  if (v4)
  {
    return 0;
  }

  v5 = *(*(this + 4) + 552);
  if (v5 || (sub_29B2C9B78(v51, this) & 1) != 0)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      if (v6[5] == v6[4])
      {
        v7 = 0;
      }

      else
      {
        v7 = v6[4];
      }

      if (v6[5] == v6[4])
      {
        v8 = 0;
      }

      else
      {
        v8 = (v6[5] - v6[4]) >> 2;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v10 = *(this + 4);
    v11 = *(v10 + 8);
    if ((v11 & 7) != 0)
    {
      if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = *(this + 4);
    }

    if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(v10) || pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(this + 4)))
    {
      if (v8)
      {
        sub_29A0BD6A8(v6, 0, &v47);
        v12 = sub_29A0BD67C(&v47);
      }

      else
      {
        v12 = 0;
      }

      v50 = v12;
      sub_29A19D6E4(&v47, v8);
      sub_29A19DBEC(&v47);
      memcpy(__dst, v7, 4 * v8);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v53 = &off_2A2043D18;
      v14 = operator new(0x30uLL);
      v15 = v48;
      *v14 = v47;
      *(v14 + 1) = v15;
      v16 = __dst;
      *(v14 + 4) = __dst;
      if (v16)
      {
        v17 = (v16 - 16);
        if (*(v14 + 3))
        {
          v17 = *(v14 + 3);
        }

        atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v14 + 10);
      v52 = v14;
      atomic_fetch_add_explicit(v14 + 10, 1u, memory_order_relaxed);
      sub_29AE03F0C((v13 + 312), &v52, &v50, &v45);
      v19 = v45;
      v18 = v46;
      v45 = 0;
      v46 = 0;
      sub_29A186B14(&v52);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *(this + 3);
      *(this + 2) = v19;
      *(this + 3) = v18;
      if (v20)
      {
        sub_29A014BEC(v20);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulatePatchPrimitiveBuffer(this, v6);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v21)
    {
      v21 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v11 ^ *(v21 + 8)) <= 7)
    {
      sub_29A21BE0C(&v47, v8 / 3);
      sub_29A21C6E0(&v47);
      memcpy(__dst, v7, 4 * v8);
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v22)
      {
        v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v53 = &off_2A2048110;
      v23 = operator new(0x30uLL);
      v24 = v48;
      *v23 = v47;
      *(v23 + 1) = v24;
      v25 = __dst;
      *(v23 + 4) = __dst;
      if (v25)
      {
        v26 = (v25 - 16);
        if (*(v23 + 3))
        {
          v26 = *(v23 + 3);
        }

        atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v23 + 10);
      v52 = v23;
      atomic_fetch_add_explicit(v23 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v22 + 312), &v52, &v45);
      v28 = v45;
      v27 = v46;
      v45 = 0;
      v46 = 0;
      sub_29A186B14(&v52);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = *(this + 3);
      *(this + 2) = v28;
      *(this + 3) = v27;
      if (v29)
      {
        sub_29A014BEC(v29);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulateUniformPrimitiveBuffer(this, v6);
    }

    v30 = v8 >> 2;
    v31 = *(*(this + 4) + 496);
    if (v31)
    {
      v32 = 4;
    }

    else
    {
      v32 = 6;
    }

    v50 = v32;
    sub_29A19D6E4(&v47, v30 * v32);
    if (v31)
    {
      sub_29A19DBEC(&v47);
      memcpy(__dst, v7, 4 * v8);
    }

    else
    {
      sub_29A19DBEC(&v47);
      if (v8 >= 4)
      {
        v33 = __dst;
        v34 = v7 + 3;
        do
        {
          v35 = *v34;
          *&v36 = *(v34 - 3);
          DWORD2(v36) = *(v34 - 1);
          HIDWORD(v36) = DWORD2(v36);
          v33[5] = v36;
          *v33 = v36;
          v33[4] = v35;
          v34 += 4;
          v33 += 6;
          --v30;
        }

        while (v30);
      }
    }

    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v53 = &off_2A2043D18;
    v38 = operator new(0x30uLL);
    v39 = v48;
    *v38 = v47;
    *(v38 + 1) = v39;
    v40 = __dst;
    *(v38 + 4) = __dst;
    if (v40)
    {
      v41 = (v40 - 16);
      if (*(v38 + 3))
      {
        v41 = *(v38 + 3);
      }

      atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v38 + 10);
    v52 = v38;
    atomic_fetch_add_explicit(v38 + 10, 1u, memory_order_relaxed);
    sub_29AE03F0C((v37 + 312), &v52, &v50, &v45);
    v43 = v45;
    v42 = v46;
    v45 = 0;
    v46 = 0;
    sub_29A186B14(&v52);
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = *(this + 3);
    *(this + 2) = v43;
    *(this + 3) = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulateUniformPrimitiveBuffer(this, v6);
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulatePatchPrimitiveBuffer(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v30, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulatePatchPrimitiveBuffer(const HdSt_Subdivision::PatchTable *)");
  memset(__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_CreateBaseFaceMapping(a1, __p);
  if (a2)
  {
    v4 = (a2[8] - a2[7]) >> 3;
  }

  else
  {
    v4 = 0;
  }

  sub_29A21DF14(v27, v4);
  sub_29A219F48(v25, v4);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = a2[28];
      if (i >= (a2[29] - v7) >> 2 || (v8 = *(v7 + 4 * i), (v8 & 0x80000000) != 0))
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a2[31] + 4 * v8);
      }

      v10 = *(a2[7] + 8 * i);
      v11 = __p[0] + 12 * (v10 & 0xFFFFFFF);
      v12 = *v11;
      sub_29A21E784(v27);
      *(v28 + v5) = v12;
      sub_29A21E784(v27);
      *(v28 + v5 + 4) = v10;
      sub_29A21E784(v27);
      *(v28 + v5 + 8) = HIDWORD(v10);
      sub_29A21E784(v27);
      *(v28 + v5 + 12) = v9;
      sub_29A21A6E8(v25);
      *(v26 + 8 * i) = *(v11 + 4);
      v5 += 16;
    }
  }

  v13 = operator new(0x40uLL);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v32 = &off_2A2048280;
  v15 = operator new(0x30uLL);
  v16 = v27[1];
  *v15 = v27[0];
  *(v15 + 1) = v16;
  v17 = v28;
  *(v15 + 4) = v28;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(v15 + 3))
    {
      v18 = *(v15 + 3);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v15 + 10);
  v31 = v15;
  atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v13, (v14 + 536), &v31, 1, 1);
  sub_29AD9C9B0((a1 + 56), v13);
  sub_29A186B14(&v31);
  v19 = operator new(0x40uLL);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v20)
  {
    v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v32 = &off_2A2047FA0;
  v21 = operator new(0x30uLL);
  v22 = v25[1];
  *v21 = v25[0];
  *(v21 + 1) = v22;
  v23 = v26;
  *(v21 + 4) = v26;
  if (v23)
  {
    v24 = (v23 - 16);
    if (*(v21 + 3))
    {
      v24 = *(v21 + 3);
    }

    atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v21 + 10);
  v31 = v21;
  atomic_fetch_add_explicit(v21 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v19, (v20 + 232), &v31, 1, 1);
  sub_29AD9C9B0((a1 + 72), v19);
  sub_29A186B14(&v31);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulateUniformPrimitiveBuffer(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v27, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_PopulateUniformPrimitiveBuffer(const HdSt_Subdivision::PatchTable *)");
  memset(__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_CreateBaseFaceMapping(a1, __p);
  if (a2)
  {
    v4 = (*(a2 + 64) - *(a2 + 56)) >> 3;
  }

  else
  {
    v4 = 0;
  }

  sub_29A21BE0C(v24, v4);
  sub_29A219F48(v22, v4);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v7 = *(*(a2 + 56) + 8 * i);
      v8 = __p[0] + 12 * (v7 & 0xFFFFFFF);
      v9 = *v8;
      sub_29A21C6E0(v24);
      *(v25 + v5) = v9;
      sub_29A21C6E0(v24);
      *(v25 + v5 + 4) = v7;
      sub_29A21C6E0(v24);
      *(v25 + v5 + 8) = HIDWORD(v7);
      sub_29A21A6E8(v22);
      *(v23 + 8 * i) = *(v8 + 4);
      v5 += 12;
    }
  }

  v10 = operator new(0x40uLL);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v29 = &off_2A2048110;
  v12 = operator new(0x30uLL);
  v13 = v24[1];
  *v12 = v24[0];
  *(v12 + 1) = v13;
  v14 = v25;
  *(v12 + 4) = v25;
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
  v28 = v12;
  atomic_fetch_add_explicit(v12 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v10, (v11 + 536), &v28, 1, 1);
  sub_29AD9C9B0((a1 + 56), v10);
  sub_29A186B14(&v28);
  v16 = operator new(0x40uLL);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v29 = &off_2A2047FA0;
  v18 = operator new(0x30uLL);
  v19 = v22[1];
  *v18 = v22[0];
  *(v18 + 1) = v19;
  v20 = v23;
  *(v18 + 4) = v23;
  if (v20)
  {
    v21 = (v20 - 16);
    if (*(v18 + 3))
    {
      v21 = *(v18 + 3);
    }

    atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v18 + 10);
  v28 = v18;
  atomic_fetch_add_explicit(v18 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v16, (v17 + 232), &v28, 1, 1);
  sub_29AD9C9B0((a1 + 72), v16);
  sub_29A186B14(&v28);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_CreateBaseFaceMapping(uint64_t a1, void *a2)
{
  sub_29A0ECEEC(&v26, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_CreateBaseFaceMapping(std::vector<HdSt_OsdIndexComputation::BaseFaceInfo> *)");
  if (a2 || (*&v22 = "hdSt/subdivision.cpp", *(&v22 + 1) = "_CreateBaseFaceMapping", v23 = 1255, v24 = "void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::_CreateBaseFaceMapping(std::vector<HdSt_OsdIndexComputation::BaseFaceInfo> *)", v25 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "result", 0) & 1) != 0))
  {
    v4 = *(a1 + 32);
    v21 = *(v4 + 56);
    v5 = *(v4 + 24);
    v20 = *(v4 + 64);
    a2[1] = *a2;
    sub_29A3A41DC(a2, v5);
    v6 = *(*(a1 + 32) + 8);
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v7)
    {
      v7 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v17 = v6 ^ *(v7 + 8);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v17 < 8)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v19 = v8;
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v18 = v5 & 0x7FFFFFFF;
      do
      {
        v12 = *(v21 + 4 * v9);
        v11 += v12;
        if (v11 > v20)
        {
          break;
        }

        if (v12 == v19)
        {
          LODWORD(v22) = 4 * v9;
          *(&v22 + 4) = v10;
          sub_29A3A429C(a2, &v22);
        }

        else if (v12 >= 3)
        {
          v14 = 0;
          v15 = (v12 - 1);
          do
          {
            if (v15 == v14)
            {
              v16 = 2;
            }

            else
            {
              v16 = 3;
            }

            if (!v14)
            {
              v16 = 1;
            }

            LODWORD(v22) = v16 | (4 * v9);
            *(&v22 + 4) = (v10 + v14) | (((v15 + v14) % v12 + v10) << 32);
            sub_29A3A429C(a2, &v22);
            ++v14;
          }

          while (v12 != v14);
        }

        else
        {
          if (v17 >= 8)
          {
            v13 = *(v21 + 4 * v9);
          }

          else
          {
            v13 = v12 - 2;
          }

          if (v13 >= 1)
          {
            do
            {
              LODWORD(v22) = 4 * v9;
              *(&v22 + 4) = -1;
              sub_29A3A429C(a2, &v22);
              --v13;
            }

            while (v13);
          }
        }

        v10 += v12;
        ++v9;
      }

      while (v9 != v18);
    }

    sub_29AE00A58(a2);
  }

  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v27, v26);
  }
}

void sub_29AE00A58(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 2);
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A379A50(a1, 0xAAAAAAAAAAAAAAABLL * (v4 >> 2));
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < 0xAAAAAAAAAAAAAAABLL * (v3 >> 2))
    {
      v10 = &v7[12 * v6];
      v11 = &v7[12 * v9];
      v12 = a1[1] - v2;
      v13 = &v10[-v12];
      memcpy(&v10[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v10;
      a1[2] = v11;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::HdSt_OsdFvarIndexComputation(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20947D8;
  *(a1 + 32) = a2;
  *(a1 + 40) = *a3;
  v5 = a3[1];
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  v6 = (a1 + 80);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a4;
  *(a1 + 88) = 0;
  v7 = (a1 + 88);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v8)
  {
    v8 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v8 + 15) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::to_string(&v23, *(a1 + 72));
  v10 = *(EmptyString + 23);
  if (v10 >= 0)
  {
    v11 = EmptyString;
  }

  else
  {
    v11 = *EmptyString;
  }

  if (v10 >= 0)
  {
    v12 = *(EmptyString + 23);
  }

  else
  {
    v12 = EmptyString[1];
  }

  v13 = std::string::insert(&v23, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v26);
  if (&v26 == v6)
  {
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v6 = v26;
    v26 = 0;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v15)
  {
    v15 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v15 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = ((*(v15 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  std::to_string(&v23, *(a1 + 72));
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = v16[1];
  }

  v20 = std::string::insert(&v23, 0, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v25 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v26);
  if (&v26 == v7)
  {
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v7 = v26;
    v26 = 0;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AE00DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(v21 + 8);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v26 = *(v21 + 6);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  sub_29AE00E78(v21);
  _Unwind_Resume(a1);
}

void sub_29AE00E78(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2075F38;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong(this + 2, &v4, 1u);
  if (v4)
  {
    return 0;
  }

  v5 = *(*(this + 4) + 552);
  if (v5 || (sub_29B2C9BE4(v42, this) & 1) != 0)
  {
    v6 = v5[5];
    if (v6)
    {
      v7 = sub_29A0BDD90(v5[5]);
    }

    else
    {
      v7 = 0;
    }

    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetRefinedFvarIndices(v5, *(this + 18), v41);
    if (v41[0])
    {
      v9 = v41[4];
    }

    else
    {
      v9 = 0;
    }

    v10 = *(this + 4);
    v11 = *(v10 + 8);
    if ((v11 & 7) != 0)
    {
      if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = *(this + 4);
    }

    if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(v10) || pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(this + 4)))
    {
      if (v7)
      {
        sub_29A0BDEC0(v6, *(this + 18), &v37);
        v12 = sub_29A0BD67C(&v37);
      }

      else
      {
        v12 = 0;
      }

      v40 = v12;
      sub_29A19D6E4(&v37, v7 * v12);
      sub_29A19DBEC(&v37);
      memcpy(__dst, v9, 4 * v7 * v40);
      v44 = &off_2A2043D18;
      v13 = operator new(0x30uLL);
      v14 = v38;
      *v13 = v37;
      *(v13 + 1) = v14;
      v15 = __dst;
      *(v13 + 4) = __dst;
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
      v43 = v13;
      atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
      sub_29AE03F0C((this + 80), &v43, &v40, &v35);
      v18 = v35;
      v17 = v36;
      v35 = 0;
      v36 = 0;
      sub_29A186B14(&v43);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(this + 3);
      *(this + 2) = v18;
      *(this + 3) = v17;
      if (v19)
      {
        sub_29A014BEC(v19);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::_PopulateFvarPatchParamBuffer(this, v6);
    }

    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v20)
    {
      v20 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v11 ^ *(v20 + 8)) <= 7)
    {
      sub_29A21BE0C(&v37, v7);
      sub_29A21C6E0(&v37);
      memcpy(__dst, v9, 12 * v7);
      v44 = &off_2A2048110;
      v21 = operator new(0x30uLL);
      v22 = v38;
      *v21 = v37;
      *(v21 + 1) = v22;
      v23 = __dst;
      *(v21 + 4) = __dst;
      if (v23)
      {
        v24 = (v23 - 16);
        if (*(v21 + 3))
        {
          v24 = *(v21 + 3);
        }

        atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v21 + 10);
      v43 = v21;
      atomic_fetch_add_explicit(v21 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((this + 80), &v43, &v35);
      v26 = v35;
      v25 = v36;
      v35 = 0;
      v36 = 0;
      sub_29A186B14(&v43);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(this + 3);
      *(this + 2) = v26;
      *(this + 3) = v25;
      if (v27)
      {
        sub_29A014BEC(v27);
      }

      if (v25)
      {
        sub_29A014BEC(v25);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    sub_29A21DF14(&v37, v7);
    sub_29A21E784(&v37);
    memcpy(__dst, v9, 16 * v7);
    v44 = &off_2A2048280;
    v28 = operator new(0x30uLL);
    v29 = v38;
    *v28 = v37;
    *(v28 + 1) = v29;
    v30 = __dst;
    *(v28 + 4) = __dst;
    if (v30)
    {
      v31 = (v30 - 16);
      if (*(v28 + 3))
      {
        v31 = *(v28 + 3);
      }

      atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v28 + 10);
    v43 = v28;
    atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
    sub_29AD9CD3C((this + 80), &v43, &v35);
    v33 = v35;
    v32 = v36;
    v35 = 0;
    v36 = 0;
    sub_29A186B14(&v43);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *(this + 3);
    *(this + 2) = v33;
    *(this + 3) = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  return 1;
}

void sub_29AE01320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::_PopulateFvarPatchParamBuffer(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v19, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::_PopulateFvarPatchParamBuffer(const HdSt_Subdivision::PatchTable *)");
  sub_29A219F48(v17, 0);
  if (a2)
  {
    v4 = sub_29A0BDF08(a2, *(a1 + 72));
    v6 = v5;
    v7 = v5;
    v20 = 0;
    v21[0] = &v20;
    sub_29A21A48C(v17, v5, v21);
    if (v6 << 32)
    {
      v8 = 0;
      v9 = 0;
      if (v7 <= 1)
      {
        v7 = 1;
      }

      do
      {
        v10 = *(v4 + (v8 >> 29));
        sub_29A21A6E8(v17);
        *(v18 + v9) = v10;
        v11 = *(v4 + (v8 >> 29));
        sub_29A21A6E8(v17);
        *(v18 + v9 + 4) = HIDWORD(v11);
        v9 += 8;
        v8 += 0x100000000;
        --v7;
      }

      while (v7);
    }
  }

  v12 = operator new(0x40uLL);
  v21[1] = &off_2A2047FA0;
  v13 = operator new(0x30uLL);
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 1) = v14;
  v15 = v18;
  *(v13 + 4) = v18;
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
  v21[0] = v13;
  atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v12, (a1 + 88), v21, 1, 1);
  sub_29AD9C9B0((a1 + 56), v12);
  sub_29A186B14(v21);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AE015E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(*(a1 + 32)))
  {
    LODWORD(v21) = 5;
    *(&v21 + 1) = 16;
    v4 = a2[1];
    if (v4 < a2[2])
    {
      v5 = v21;
      v6 = *(a1 + 80);
      *v4 = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v4 &= 0xFFFFFFFFFFFFFFF8;
      }

      v7 = 16;
LABEL_13:
      v4[1] = v5;
      v4[2] = v7;
      v9 = v4 + 3;
      a2[1] = v4 + 3;
      goto LABEL_15;
    }
  }

  else
  {
    if (!pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(a1 + 32)))
    {
      v14 = *(*(a1 + 32) + 8);
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v15)
      {
        v15 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v16 = v14 ^ *(v15 + 8);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v16 > 7)
      {
        v17 = 8;
      }

      else
      {
        v17 = 7;
      }

      LODWORD(v21) = v17;
      *(&v21 + 1) = 1;
      v18 = a2[1];
      if (v18 < a2[2])
      {
        v19 = v21;
        v20 = *(a1 + 80);
        *v18 = v20;
        if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v18 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18[1] = v19;
        v18[2] = 1;
        result = (v18 + 3);
        goto LABEL_36;
      }

      v13 = (a1 + 80);
LABEL_38:
      result = sub_29AE03FE4(a2, v13, &v21);
      goto LABEL_39;
    }

    LODWORD(v21) = 5;
    *(&v21 + 1) = 12;
    v4 = a2[1];
    if (v4 < a2[2])
    {
      v5 = v21;
      v8 = *(a1 + 80);
      *v4 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v4 &= 0xFFFFFFFFFFFFFFF8;
      }

      v7 = 12;
      goto LABEL_13;
    }
  }

  v9 = sub_29AE03FE4(a2, (a1 + 80), &v21);
LABEL_15:
  a2[1] = v9;
  LODWORD(v21) = 6;
  *(&v21 + 1) = 1;
  if (v9 >= a2[2])
  {
    v13 = (a1 + 88);
    goto LABEL_38;
  }

  v10 = v21;
  v11 = *(a1 + 88);
  *v9 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9[1] = v10;
  v9[2] = 1;
  result = (v9 + 3);
LABEL_36:
  a2[1] = result;
LABEL_39:
  a2[1] = result;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::HasChainedBuffer(atomic_uint ***this)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(this[4]))
  {
    return 1;
  }

  v3 = this[4];

  return pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(v3);
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(*(this + 4)) || pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(this + 4)))
  {
    v4 = *(this + 8);
    v5 = *(this + 7);
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_29AD9CF88(a2, &v5, &v7, 1uLL);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_29AE019E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation::HdSt_OsdBaseFaceToRefinedFacesMapComputation(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2094858;
  v4 = *a3;
  v3 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2094858;
  v4 = *a3;
  v3 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&qword_2A174ECB8);
  if (!v3)
  {
    v3 = sub_29AE02C24();
  }

  LODWORD(v13) = 5;
  *(&v13 + 1) = 1;
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v7 = sub_29AD9CC10(a2, (v3 + 48), &v13);
  }

  else
  {
    v5 = v13;
    v6 = *(v3 + 48);
    *v4 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v4 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4[1] = v5;
    v4[2] = 1;
    v7 = (v4 + 3);
  }

  a2[1] = v7;
  v8 = atomic_load(&qword_2A174ECB8);
  if (!v8)
  {
    v8 = sub_29AE02C24();
  }

  LODWORD(v13) = 5;
  *(&v13 + 1) = 1;
  v9 = a2[1];
  if (v9 >= a2[2])
  {
    result = sub_29AD9CC10(a2, (v8 + 56), &v13);
  }

  else
  {
    v10 = v13;
    v11 = *(v8 + 56);
    *v9 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9[1] = v10;
    v9[2] = 1;
    result = (v9 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong(this + 2, &v4, 1u);
  if (v4)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    goto LABEL_5;
  }

  *&v40 = "hdSt/subdivision.cpp";
  *(&v40 + 1) = "Resolve";
  *&v41 = 1584;
  *(&v41 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation::Resolve()";
  LOBYTE(v42) = 0;
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "_subdivision", 0))
  {
    v5 = *(this + 4);
LABEL_5:
    v6 = *(v5 + 40);
    if (v6)
    {
      v8 = *(v6 + 56);
      v7 = *(v6 + 64);
      v9 = *(v6 + 4);
      sub_29AE04110(v39, v9);
      if (v7 != v8)
      {
        v10 = 0;
        v11 = (v7 - v8) >> 3;
        do
        {
          v12 = (v39[0] + 24 * (*(*(v6 + 56) + 8 * v10) & 0xFFFFFFF));
          LODWORD(v40) = v10;
          sub_29A00D250(v12, &v40);
          ++v10;
        }

        while (v11 != v10);
      }
    }

    else
    {
      sub_29AE04110(v39, 0);
      v9 = 0;
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_29A19D6E4(v37, v9);
    if (v9)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        __p[1] = 0;
        v36 = 0;
        __p[0] = 0;
        sub_29A0BE2C8(__p, *(v39[0] + 24 * v14), *(v39[0] + 24 * v14 + 8), (*(v39[0] + 24 * v14 + 8) - *(v39[0] + 24 * v14)) >> 2);
        v16 = __p[0];
        v17 = __p[1] - __p[0];
        if (__p[1] != __p[0])
        {
          v18 = 0;
          v19 = 0;
          do
          {
            sub_29A7ACEC4(&v40, &v16[v18]);
            ++v19;
            v16 = __p[0];
            v18 += 4;
          }

          while (v19 < (__p[1] - __p[0]) >> 2);
        }

        sub_29A19DBEC(v37);
        v15 += v17 >> 2;
        *(v38 + 4 * v14) = v15;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        ++v14;
      }

      while (v14 != v9);
    }

    v20 = atomic_load(&qword_2A174ECB8);
    if (!v20)
    {
      v20 = sub_29AE02C24();
    }

    v44 = &off_2A2043D18;
    v21 = operator new(0x30uLL);
    v22 = v41;
    *v21 = v40;
    *(v21 + 1) = v22;
    v23 = v42;
    *(v21 + 4) = v42;
    if (v23)
    {
      v24 = (v23 - 16);
      if (*(v21 + 3))
      {
        v24 = *(v21 + 3);
      }

      atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v21 + 10);
    v43 = v21;
    atomic_fetch_add_explicit(v21 + 10, 1u, memory_order_relaxed);
    sub_29AD9CD3C((v20 + 48), &v43, __p);
    v26 = __p[0];
    v25 = __p[1];
    __p[0] = 0;
    __p[1] = 0;
    sub_29A186B14(&v43);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = *(this + 3);
    *(this + 2) = v26;
    *(this + 3) = v25;
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v28 = atomic_load(&qword_2A174ECB8);
    if (!v28)
    {
      v28 = sub_29AE02C24();
    }

    v44 = &off_2A2043D18;
    v29 = operator new(0x30uLL);
    v30 = v37[1];
    *v29 = v37[0];
    *(v29 + 1) = v30;
    v31 = v38;
    *(v29 + 4) = v38;
    if (v31)
    {
      v32 = (v31 - 16);
      if (*(v29 + 3))
      {
        v32 = *(v29 + 3);
      }

      atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v29 + 10);
    v43 = v29;
    atomic_fetch_add_explicit(v29 + 10, 1u, memory_order_relaxed);
    sub_29AD9CD3C((v28 + 56), &v43, __p);
    v33 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v34 = *(this + 8);
    *(this + 56) = v33;
    if (v34)
    {
      sub_29A014BEC(v34);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    sub_29A186B14(&v43);
    sub_29AD1019C(this);
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  sub_29AD1019C(this);
  return 1;
}

void sub_29AE01F84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_OsdBaseFaceToRefinedFacesMapComputation *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = *(this + 8);
  v5 = *(this + 7);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29AD9CF88(a2, &v5, &v7, 1uLL);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29AE020E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE02108(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE0216C(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v5);
}

void sub_29AE02200(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  *a1 = &unk_2A2075F38;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29AE02270(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  *a1 = &unk_2A2075F38;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v3);
}

void sub_29AE022E4(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *this = &unk_2A2075F38;
  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE02364(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *this = &unk_2A2075F38;
  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v6);
}

void sub_29AE023E8(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *this = &unk_2A2075F38;
  v6 = *(this + 3);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE0248C(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *this = &unk_2A2075F38;
  v6 = *(this + 3);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v7);
}

void sub_29AE02534(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE025A8(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A2075F38;
  v4 = *(this + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v5);
}

void *sub_29AE02628(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2094980;
  result[1] = v3;
  return result;
}

uint64_t sub_29AE02670(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2094980;
  a2[1] = v2;
  return result;
}

void sub_29AE0269C(pxrInternal__aapl__pxrReserved__::TfToken *a1, std::string *this)
{
  if ((**(a1 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((**(a1 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::string::operator=(this, EmptyString);
  LODWORD(this[1].__r_.__value_.__l.__data_) = 4;
  this[10].__r_.__value_.__l.__size_ = 0x100000040;
  LODWORD(this[10].__r_.__value_.__r.__words[2]) = 1;
  sub_29A008E78(&__p, "sizes");
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v4)
  {
    v4 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v4 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((*(v4 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v5, 1, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "offsets");
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v6)
  {
    v6 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v6 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((*(v6 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v7, 2, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "indices");
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v8)
  {
    v8 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v8 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((*(v8 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v9, 3, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "weights");
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v10)
  {
    v10 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v10 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = ((*(v10 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v11, 4, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "primvar");
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v12)
  {
    v12 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v12 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v13 = ((*(v12 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(this, &__p, v13, 5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((atomic_load_explicit(&qword_2A174EDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EDB0))
  {
    sub_29A008E78(qword_2A174ECC0, "pointIndexStart");
    sub_29A008E78(qword_2A174ECD8, "pointIndexEnd");
    sub_29A008E78(qword_2A174ECF0, "srcBase");
    sub_29A008E78(qword_2A174ED08, "srcStride");
    sub_29A008E78(qword_2A174ED20, "dstBase");
    sub_29A008E78(qword_2A174ED38, "dstStride");
    sub_29A008E78(qword_2A174ED50, "sizesBase");
    sub_29A008E78(qword_2A174ED68, "offsetsBase");
    sub_29A008E78(qword_2A174ED80, "indicesBase");
    sub_29A008E78(qword_2A174ED98, "weightsBase");
    __cxa_atexit(sub_29AE041B4, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EDB0);
  }

  v14 = qword_2A174ECC0;
  v15 = 240;
  do
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v16)
    {
      v16 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v16 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = ((*(v16 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
    }

    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, v14, v17, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v14;
    v15 -= 24;
  }

  while (v15);
  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v20, "uvec3");
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v18)
  {
    v18 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v18 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = ((*(v18 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v20, v19);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_29AE02BD8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20949E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AE02C24()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "evalStencils", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "stencilData", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "sizes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "offsets", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "indices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "weights", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "baseFaceToRefinedFacesMap", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "refinedFaceCounts", 0);
  v1 = v0 + 8;
  v2 = *v0;
  v23 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v3;
    }
  }

  v4 = v0[1];
  v24 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v5;
    }
  }

  v6 = v0[2];
  v25 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v7;
    }
  }

  v8 = v0[3];
  v26 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v9;
    }
  }

  v10 = v0[4];
  v27 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v11;
    }
  }

  v12 = v0[5];
  v28 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v13;
    }
  }

  v14 = v0[6];
  v29 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v15;
    }
  }

  v16 = v0[7];
  v30 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v17;
    }
  }

  *v1 = 0;
  v0[9] = 0;
  v0[10] = 0;
  sub_29A12EF7C(v1, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v19 = *(&v23 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20 = 0;
  atomic_compare_exchange_strong(&qword_2A174ECB8, &v20, v0);
  if (v20)
  {
    v21 = sub_29AE02FF4(v0);
    operator delete(v21);
    return atomic_load(&qword_2A174ECB8);
  }

  return v0;
}

void sub_29AE02EB8(_Unwind_Exception *a1)
{
  v4 = 56;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AE02FF4(uint64_t a1)
{
  v10 = (a1 + 64);
  sub_29A124AB0(&v10);
  v2 = *(a1 + 56);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 40);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 32);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 24);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_29AE030F0(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    return sub_29ADD6D14(v6, a2, a3);
  }

  return result;
}

void sub_29AE03188(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE031FC(uint64_t a1, uint64_t a2)
{
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
}

void sub_29AE0326C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE032E0(int a1, pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v3 = *(this + 7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE03344(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AE03398(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29AE03398(void *result)
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

void sub_29AE03404(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17[4] = a1;
    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v9];
    v14 = &v12[8 * v11];
    bzero(v13, 8 * a2);
    memcpy(&v13[-8 * (v7 >> 3)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-8 * (v7 >> 3)];
    *(a1 + 8) = &v13[8 * a2];
    v16 = *(a1 + 16);
    *(a1 + 16) = v14;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    sub_29AE03528(v17);
  }
}

uint64_t sub_29AE03528(uint64_t a1)
{
  sub_29AE03560(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AE03560(void *result, void *a2)
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

uint64_t sub_29AE035D4@<X0>(uint64_t *a1@<X1>, _DWORD *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  result = sub_29AE03638(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t sub_29AE03638(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A2094AA0;
  v5 = *a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = &unk_2A20946D8;
  *(a1 + 56) = v5;
  sub_29A1E21F4((a1 + 64), a3);
  sub_29A1E2240((a1 + 68), a3 + 1);
  return a1;
}

void sub_29AE036EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE03760(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 44));
  sub_29A1DE3A4((a2 + 40));
  *a2 = &unk_2A2075F38;
  v3 = *(a2 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a2);
}

uint64_t sub_29AE037D0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  result = sub_29AE03834(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t sub_29AE03834(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0u;
  *result = &unk_2A2094AF0;
  v3 = *a2;
  *(result + 32) = 0;
  *(result + 40) = 0u;
  *(result + 24) = &unk_2A2094758;
  v5 = *a3;
  v4 = a3[1];
  *(result + 56) = v3;
  *(result + 64) = v5;
  *(result + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = 0uLL;
  *(result + 96) = 0uLL;
  return result;
}

void sub_29AE038C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE0393C(int a1, pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v3 = *(this + 10);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  *this = &unk_2A2075F38;
  v6 = *(this + 3);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void *sub_29AE039BC@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x78uLL);
  result = sub_29AE03A30(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE03A30(void *a1, uint64_t *a2, void *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2094B40;
  pxrInternal__aapl__pxrReserved__::HdSt_OsdFvarIndexComputation::HdSt_OsdFvarIndexComputation((a1 + 3), *a2, a3, *a4);
  return a1;
}

void sub_29AE03AB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE03B28(int a1, pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v3 = *(this + 11);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 10);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  *this = &unk_2A2075F38;
  v7 = *(this + 3);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE03BEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE03C5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094BE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE03CAC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x60uLL);
  result = sub_29AE03D10(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t sub_29AE03D10(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0u;
  *result = &unk_2A2094C30;
  v3 = *a2;
  *(result + 32) = 0;
  *(result + 40) = 0u;
  *(result + 24) = &unk_2A2094858;
  v5 = *a3;
  v4 = a3[1];
  *(result + 56) = v3;
  *(result + 64) = v5;
  *(result + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void sub_29AE03DA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE03E18(int a1, pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  v3 = *(this + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *this = &unk_2A2075F38;
  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void *sub_29AE03E8C(void *a1, unint64_t a2)
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

void *sub_29AE03F0C@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE03F80(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE03F80(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

uint64_t sub_29AE03FE4(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v15[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v15[0] = v9;
  v15[1] = v10;
  v15[3] = &v9[24 * v8];
  v11 = *a3;
  v12 = *a2;
  *v10 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = v11;
  v15[2] = v10 + 24;
  sub_29ABC711C(a1, v15);
  v13 = a1[1];
  sub_29ABC71C0(v15);
  return v13;
}

void sub_29AE040FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AE04110(void *a1, unint64_t a2)
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

void sub_29AE041B4()
{
  v0 = &byte_2A174EDAF;
  v1 = -240;
  v2 = &byte_2A174EDAF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation *pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation::HdSt_TriangleIndexBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation *this, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A2094C80;
  sub_29A1E21F4(this + 8, a3);
  sub_29A1E2240(this + 9, a3 + 1);
  *(this + 5) = a2;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A2094C80;
  sub_29A1E21F4(this + 8, a3);
  sub_29A1E2240(this + 9, a3 + 1);
  *(this + 5) = a2;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v19) = 7;
  *(&v19 + 1) = 1;
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v7 = sub_29AD9CC10(a2, v3 + 39, &v19);
  }

  else
  {
    v5 = v19;
    v6 = *(v3 + 39);
    *v4 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v4 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4[1] = v5;
    v4[2] = 1;
    v7 = (v4 + 3);
  }

  a2[1] = v7;
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v9 = (v8 + 536);
  LODWORD(v19) = 5;
  *(&v19 + 1) = 1;
  v10 = a2[1];
  if (v10 >= a2[2])
  {
    v13 = sub_29AD9CC10(a2, v9, &v19);
  }

  else
  {
    v11 = v19;
    v12 = *v9;
    *v10 = *v9;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10[1] = v11;
    v10[2] = 1;
    v13 = (v10 + 3);
  }

  a2[1] = v13;
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v19) = 5;
  *(&v19 + 1) = 1;
  v15 = a2[1];
  if (v15 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v14 + 29, &v19);
  }

  else
  {
    v16 = v19;
    v17 = *(v14 + 29);
    *v15 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15[1] = v16;
    v15[2] = 1;
    result = (v15 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation::Resolve(atomic_uint *this)
{
  v1 = 0;
  v40 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  if (!v1)
  {
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v3 = *(this + 5);
    v25[0] = &unk_2A207C8A8;
    v25[1] = v3;
    sub_29A1E21F4(&v26, this + 8);
    sub_29A1E2240(&v27, this + 9);
    pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(v25, &v34, &v31, &v28);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v37[1] = &off_2A2048110;
    v5 = operator new(0x30uLL);
    v6 = v35;
    *v5 = v34;
    *(v5 + 1) = v6;
    v7 = v36;
    *(v5 + 4) = v36;
    if (v7)
    {
      v8 = (v7 - 16);
      if (*(v5 + 3))
      {
        v8 = *(v5 + 3);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v5 + 10);
    v37[0] = v5;
    atomic_fetch_add_explicit(v5 + 10, 1u, memory_order_relaxed);
    sub_29AD9CD3C((v4 + 312), v37, &v38);
    v9 = v38;
    v10 = v39;
    v38 = 0;
    v39 = 0;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(this + 3);
    *(this + 2) = v9;
    *(this + 3) = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }

    if (v39)
    {
      sub_29A014BEC(v39);
    }

    sub_29A186B14(v37);
    v12 = operator new(0x40uLL);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v39 = &off_2A2043D18;
    v14 = operator new(0x30uLL);
    v15 = v32;
    *v14 = v31;
    *(v14 + 1) = v15;
    v16 = v33;
    *(v14 + 4) = v33;
    if (v16)
    {
      v17 = (v16 - 16);
      if (*(v14 + 3))
      {
        v17 = *(v14 + 3);
      }

      atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v14 + 10);
    v38 = v14;
    atomic_fetch_add_explicit(v14 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v12, (v13 + 536), &v38, 1, 1);
    sub_29AD9C9B0(this + 6, v12);
    sub_29A186B14(&v38);
    v18 = operator new(0x40uLL);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v39 = &off_2A2043D18;
    v20 = operator new(0x30uLL);
    v21 = v29;
    *v20 = v28;
    *(v20 + 1) = v21;
    v22 = v30;
    *(v20 + 4) = v30;
    if (v22)
    {
      v23 = (v22 - 16);
      if (*(v20 + 3))
      {
        v23 = *(v20 + 3);
      }

      atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v20 + 10);
    v38 = v20;
    atomic_fetch_add_explicit(v20 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v18, (v19 + 232), &v38, 1, 1);
    sub_29AD9C9B0(this + 8, v18);
    sub_29A186B14(&v38);
    sub_29AD1019C(this);
    sub_29AC5D070(v25);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return 0;
}

void sub_29AE047FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v25);
  sub_29AC5D070(&a10);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation *this@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(this + 7);
  v8[0] = *(this + 6);
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 9);
  v8[2] = *(this + 8);
  v8[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29AD9CF88(a2, v8, &v9, 2uLL);
  for (i = 3; i != -1; i -= 2)
  {
    v7 = v8[i];
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AE04978(_Unwind_Exception *exception_object)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v1 + v3);
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v3 -= 16;
    if (v3 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TriangulateFaceVaryingComputation::HdSt_TriangulateFaceVaryingComputation(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2094D00;
  sub_29A1E21F4((a1 + 32), a4);
  sub_29A1E2240((a1 + 36), a4 + 1);
  v9 = *a3;
  v8 = a3[1];
  *(a1 + 40) = a2;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TriangulateFaceVaryingComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_TriangulateFaceVaryingComputation *this)
{
  v25[2] = *MEMORY[0x29EDCA608];
  v2 = *(this + 6);
  if (v2)
  {
LABEL_2:
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }

    v4 = 0;
    atomic_compare_exchange_strong(this + 2, &v4, 1u);
    if (v4)
    {
      return 0;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v6)
    {
      v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v5, (v6 + 288));
    v25[1] = 0;
    v7 = *(this + 5);
    v21 = &unk_2A207C8A8;
    v22 = v7;
    sub_29A1E21F4(v23, this + 8);
    sub_29A1E2240(v23 + 1, this + 9);
    v8 = (*(**(this + 6) + 48))(*(this + 6));
    v9 = (*(**(this + 6) + 64))(*(this + 6));
    v10 = (*(**(this + 6) + 56))(*(this + 6));
    if (pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangulatedFaceVaryingPrimvar(&v21, v8, v9, v10, v25))
    {
      v11 = (*(**(this + 6) + 16))(*(this + 6));
      sub_29ADE0EFC(v11, v25, &v19);
      v12 = v19;
      v13 = v20;
      v19 = 0;
      v20 = 0;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(this + 3);
      *(this + 2) = v12;
      *(this + 3) = v13;
      if (v14)
      {
        sub_29A014BEC(v14);
      }

      if (v13)
      {
        sub_29A014BEC(v13);
      }

      v15 = v20;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *(this + 6);
      v17 = *(this + 7);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(this + 3);
      *(this + 2) = v18;
      *(this + 3) = v17;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    sub_29A014BEC(v15);
LABEL_22:
    sub_29AD1019C(this);
    sub_29AC5D070(&v21);
    sub_29A186B14(v25);
    return 1;
  }

  v21 = "hdSt/triangulate.cpp";
  v22 = "Resolve";
  v23[0] = 105;
  v23[1] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_TriangulateFaceVaryingComputation::Resolve()";
  v24 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "_source", 0);
  if (result)
  {
    v2 = *(this + 6);
    goto LABEL_2;
  }

  return result;
}

void sub_29AE04CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC5D070(va);
  sub_29A186B14(v4 - 56);
  _Unwind_Resume(a1);
}

void sub_29AE04D54(uint64_t a1)
{
  *a1 = &unk_2A2094C80;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  *a1 = &unk_2A2075F38;
  v4 = *(a1 + 24);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29AE04DF8(uint64_t a1)
{
  *a1 = &unk_2A2094C80;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  *a1 = &unk_2A2075F38;
  v4 = *(a1 + 24);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v5);
}

void sub_29AE04EA0(uint64_t a1)
{
  *a1 = &unk_2A2094D00;
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  *a1 = &unk_2A2075F38;
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29AE04F38(uint64_t a1)
{
  *a1 = &unk_2A2094D00;
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  *a1 = &unk_2A2075F38;
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v4);
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawTask::HdSt_DrawTask(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  pxrInternal__aapl__pxrReserved__::HdTask::HdTask(a1, v6);
  *a1 = &unk_2A2094DB0;
  v7 = a2[1];
  *(a1 + 2) = *a2;
  *(a1 + 3) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  *(a1 + 4) = *a3;
  *(a1 + 5) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AE05084(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawTask::Prepare(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v3 = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v4, this);
  (*(*v3 + 16))(v3, &v4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AE05128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_DrawTask::Execute(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(v2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AE0519C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE05220(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A2094F18;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 104));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 108));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v8, "testCollection");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 112), v8, &v5, 0, &v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v8[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v8[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi((a1 + 216));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v2)
  {
    v2 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  v3 = *(v2 + 1);
  *(a1 + 224) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 224) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 232) = *(a1 + 216);
  *(a1 + 240) = &off_2A2094FD8 + 3;
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate((a1 + 248));
}

void sub_29AE053F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  v17 = *(v15 + 216);
  *(v15 + 216) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((v15 + 112));
  sub_29A1DCEA8((v15 + 104));
  a15 = (v15 + 80);
  sub_29A1E234C(&a15);
  a15 = (v15 + 56);
  sub_29AC943DC(&a15);
  a15 = (v15 + 32);
  sub_29A0176E4(&a15);
  sub_29A0176E4(&a15);
  _Unwind_Resume(a1);
}

void sub_29AE054D0(uint64_t a1, int a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C9C94(va, va1, va2, a1, a2, va3);
  JUMPOUT(0x29AE05484);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::_CreateRenderPassState(pxrInternal__aapl__pxrReserved__::HdSt_TestDriver *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::CreateRenderPassState(&lpsrc);
  {
    v5 = v2;
    v6 = *(&lpsrc + 1);
    if (*(&lpsrc + 1))
    {
      atomic_fetch_add_explicit((*(&lpsrc + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_29AE0A024(this + 32, &v5, &v7, 1uLL);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (*(&lpsrc + 1))
  {
    sub_29A014BEC(*(&lpsrc + 1));
  }

  return pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc(**(this + 4), 1);
}

void sub_29AE05620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE0564C(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v2)
  {
    v2 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v3 = *(v2 + 3);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  v7 = 0;
  v8 = 0;
  result = (*(*a1 + 24))(a1, &v6);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AE05734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C22A8((v12 + 8), &a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE05764(uint64_t a1)
{
  *a1 = &unk_2A2094F18;
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(a1 + 40) != v2)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(v2 + v5);
      v7 = (v2 + 16 * v4);
      *v7 = 0;
      v7[1] = 0;
      if (v6)
      {
        sub_29A014BEC(v6);
      }

      ++v4;
      v2 = *(a1 + 32);
      v5 += 16;
    }

    while (v4 < (*(a1 + 40) - v2) >> 4);
  }

  v8 = *(a1 + 8);
  if (*(a1 + 16) != v8)
  {
    v9 = 0;
    v10 = 8;
    do
    {
      v11 = *(v8 + v10);
      v12 = (v8 + 16 * v9);
      *v12 = 0;
      v12[1] = 0;
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      ++v9;
      v8 = *(a1 + 8);
      v10 += 16;
    }

    while (v9 < (*(a1 + 16) - v8) >> 4);
  }

  v13 = *(a1 + 448);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 440);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::~HdRenderIndex(v14);
    operator delete(v15);
  }

  pxrInternal__aapl__pxrReserved__::HgiInterop::~HgiInterop((a1 + 456));
  pxrInternal__aapl__pxrReserved__::HdEngine::~HdEngine((a1 + 392));
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::~HdStRenderDelegate((a1 + 248));
  sub_29A186B14(a1 + 232);
  v16 = *(a1 + 224);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((a1 + 112));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 108));
  sub_29A1DE3A4((a1 + 104));
  v19 = (a1 + 80);
  sub_29A1E234C(&v19);
  v19 = (a1 + 56);
  sub_29AC943DC(&v19);
  v19 = v3;
  sub_29A0176E4(&v19);
  v19 = (a1 + 8);
  sub_29A0176E4(&v19);
  return a1;
}

void sub_29AE05A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C22A8((v13 + 8), &a10);
  sub_29AE05764(v12);
  _Unwind_Resume(a1);
}

void sub_29AE05A60(uint64_t a1)
{
  sub_29AE09890(a1);
  sub_29A008E78(&v2, "/testCam");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v1, &v2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void *pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::GetRenderPass(pxrInternal__aapl__pxrReserved__::HdSt_TestDriver *this)
{
  result = *(this + 1);
  v4 = *(this + 2);
  v5 = (this + 8);
  if (result == v4)
  {
    *&v6 = *(*(this + 56) + 8);
    sub_29AE0A224(&v6, (this + 112), &v7);
    v6 = v7;
    v7 = 0uLL;
    sub_29A01729C(v5, &v6);
    if (*(&v6 + 1))
    {
      sub_29A014BEC(*(&v6 + 1));
    }

    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }

    return *v5;
  }

  return result;
}

void sub_29AE05D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::Draw(pxrInternal__aapl__pxrReserved__::HdSt_TestDriver *this)
{
  RenderPass = pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::GetRenderPass(this);

  pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::Draw(this, RenderPass);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestDriver::Draw(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174EDD0, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v3 = __cxa_guard_acquire(&qword_2A174EDD0);
    a2 = v13;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v4)
      {
        v4 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v16 = *v4;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A174EDB8 = 0;
      unk_2A174EDC0 = 0;
      qword_2A174EDC8 = 0;
      sub_29A12EF7C(&qword_2A174EDB8, &v16, &v17, 1uLL);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174EDB8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174EDD0);
      a2 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_2A174EDF0, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v5 = __cxa_guard_acquire(&qword_2A174EDF0);
    a2 = v14;
    if (v5)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v6)
      {
        v6 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v16 = *v6;
      if ((v16 & 7) != 0)
      {
        v7 = v16 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v16 = v7;
        }
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v8)
      {
        v8 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v9 = *(v8 + 1);
      v17 = v9;
      if ((v9 & 7) != 0)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
        {
          v17 = v10;
        }
      }

      qword_2A174EDD8 = 0;
      unk_2A174EDE0 = 0;
      qword_2A174EDE8 = 0;
      sub_29A12EF7C(&qword_2A174EDD8, &v16, v18, 2uLL);
      for (i = 8; i != -8; i -= 8)
      {
        v12 = *(&v16 + i);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174EDD8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174EDF0);
      a2 = v14;
    }
  }

  sub_29AE0A374(&v15, a2, *(a1 + 32));
}

void sub_29AE0613C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174EDF0);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::HdSt_TestLightingShader(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdStLightingShader::HdStLightingShader(this);
  *v4 = &unk_2A2094E28;
  v4[14] = 0;
  v5 = v4 + 14;
  v4[16] = 0;
  v4[17] = 0;
  v4[15] = a2;
  v4[3] = 0;
  *(v4 + 8) = 1065353216;
  *(v4 + 3) = xmmword_29B70CC60;
  v4[8] = 0x3F80000000000000;
  *(v4 + 84) = xmmword_29B70CC70;
  *(v4 + 100) = vdup_n_s32(0x3D23D70Au);
  sub_29A008E78(&__p, "-- glslfx version 0.1                                              \n-- configuration                                                   \n{techniques: {default: {fragmentShader : {             \n source: [TestLighting.Lighting]                           \n}}}}                                                               \n-- glsl TestLighting.Lighting                                      \nvec3 FallbackLighting(vec3 Peye, vec3 Neye, vec3 color) {          \n    vec3 n = normalize(Neye);                                      \n    return HdGet_lighting_sceneAmbient()                           \n      + color * HdGet_lighting_l0color()                           \n              * max(0.0, dot(n, HdGet_lighting_l0dir()))           \n      + color * HdGet_lighting_l1color()                           \n              * max(0.0, dot(n, HdGet_lighting_l1dir()));          \n}                                                                  \n");
  sub_29A9EE25C(v11, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = operator new(0x138uLL);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v7)
  {
    v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v6, v11, v7 + 112);
  sub_29AE064D0(v5, v6);
  v11[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v11[2] = v8;
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v15);
  return this;
}

void sub_29AE06468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29A008B0C(&a15);
  v18 = *(v15 + 17);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29AE064D0(v16, 0);
  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(v15);
  _Unwind_Resume(a1);
}

void sub_29AE064D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29ADC1D14(v3);

    operator delete(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::~HdSt_TestLightingShader(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this)
{
  *this = &unk_2A2094E28;
  v2 = *(this + 17);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AE064D0(this + 14, 0);

  pxrInternal__aapl__pxrReserved__::HdStLightingShader::~HdStLightingShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::~HdSt_TestLightingShader(this);

  operator delete(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::GetSource@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A0ECEEC(&v7, "hdSt", "virtual std::string pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::GetSource(const TfToken &) const");
  result = pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(a3, this[14], a2);
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::SetCamera(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this, float64x2_t *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = this + 24;
  do
  {
    while (1)
    {
      v8 = v5;
      v9 = &v7[36 * v5];
      v10 = sub_29A144F00(a2, v9).f32[0];
      v13 = 1.0 / fmaxf(sqrtf((v12 * v12) + ((v10 * v10) + (v11 * v11))), 1.0e-10);
      v14 = v13 * v10;
      v15 = v13 * v11;
      v16 = v13 * v12;
      if (v9[3] == v14 && v9[4] == v15 && v9[5] == v16)
      {
        break;
      }

      v9[3] = v14;
      v9[4] = v15;
      v5 = 1;
      v6 = 1;
      v9[5] = v16;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v5 = 1;
  }

  while (!v8);
  if (v6)
  {
LABEL_10:

    pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::Prepare(this);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::Prepare(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this)
{
  v72[0] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(v66, *(this + 15));
  if (*v66)
  {
    if (v2 && *&v66[8])
    {
      atomic_fetch_add_explicit((*&v66[8] + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
  }

  if (*&v66[8])
  {
    sub_29A014BEC(*&v66[8]);
  }

  v3 = atomic_load(&qword_2A174EDF8);
  if (!v3)
  {
    v3 = sub_29AE0A4D8();
  }

  v4 = *(v3 + 8);
  *v66 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v66[8] = xmmword_29B70CC80;
  v5 = atomic_load(&qword_2A174EDF8);
  if (!v5)
  {
    v5 = sub_29AE0A4D8();
  }

  v6 = *(v5 + 16);
  *&v66[24] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *&v66[24] &= 0xFFFFFFFFFFFFFFF8;
  }

  v67 = xmmword_29B70CC80;
  v7 = atomic_load(&qword_2A174EDF8);
  if (!v7)
  {
    v7 = sub_29AE0A4D8();
  }

  v8 = *(v7 + 24);
  *v68 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v68[8] = xmmword_29B70CC80;
  v9 = atomic_load(&qword_2A174EDF8);
  if (!v9)
  {
    v9 = sub_29AE0A4D8();
  }

  v10 = *(v9 + 32);
  *&v68[24] = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *&v68[24] &= 0xFFFFFFFFFFFFFFF8;
  }

  v69 = xmmword_29B70CC80;
  v11 = atomic_load(&qword_2A174EDF8);
  if (!v11)
  {
    v11 = sub_29AE0A4D8();
  }

  v12 = *(v11 + 40);
  v70 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v71 = xmmword_29B70CC80;
  memset(v60, 0, sizeof(v60));
  sub_29AE030F0(v60, v66, v72, 5uLL);
  v13 = 96;
  while (1)
  {
    v14 = *&v66[v13];
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v13 -= 24;
    if (v13 == -24)
    {
      v15 = atomic_load(&qword_2A174EDF8);
      if (!v15)
      {
        v15 = sub_29AE0A4D8();
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v2, v15, v60, 4u, v66);
      v16 = *(this + 17);
      *(this + 8) = *v66;
      *v66 = 0;
      *&v66[8] = 0;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (*&v66[8])
        {
          sub_29A014BEC(*&v66[8]);
        }
      }

      v17 = atomic_load(&qword_2A174EDF8);
      if (!v17)
      {
        v17 = sub_29AE0A4D8();
      }

      sub_29A9F8F9C(v56, 1uLL, (this + 36));
      v65[1] = &off_2A20433C0;
      v18 = operator new(0x30uLL);
      v19 = v56[1];
      *v18 = v56[0];
      *(v18 + 1) = v19;
      v20 = v57;
      *(v18 + 4) = v57;
      if (v20)
      {
        v21 = (v20 - 16);
        if (*(v18 + 3))
        {
          v21 = *(v18 + 3);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v18 + 10);
      v65[0] = v18;
      atomic_fetch_add_explicit(v18 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v17 + 8), v65, &v58);
      *v66 = v58;
      v58 = 0uLL;
      v22 = atomic_load(&qword_2A174EDF8);
      if (!v22)
      {
        v22 = sub_29AE0A4D8();
      }

      sub_29A9F8F9C(v53, 1uLL, this + 6);
      v64[1] = &off_2A20433C0;
      v23 = operator new(0x30uLL);
      v24 = v53[1];
      *v23 = v53[0];
      *(v23 + 1) = v24;
      v25 = v54;
      *(v23 + 4) = v54;
      if (v25)
      {
        v26 = (v25 - 16);
        if (*(v23 + 3))
        {
          v26 = *(v23 + 3);
        }

        atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v23 + 10);
      v64[0] = v23;
      atomic_fetch_add_explicit(v23 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v22 + 16), v64, &v55);
      *&v66[16] = v55;
      v55 = 0uLL;
      v27 = atomic_load(&qword_2A174EDF8);
      if (!v27)
      {
        v27 = sub_29AE0A4D8();
      }

      sub_29A9F8F9C(v50, 1uLL, this + 9);
      v63[1] = &off_2A20433C0;
      v28 = operator new(0x30uLL);
      v29 = v50[1];
      *v28 = v50[0];
      *(v28 + 1) = v29;
      v30 = v51;
      *(v28 + 4) = v51;
      if (v30)
      {
        v31 = (v30 - 16);
        if (*(v28 + 3))
        {
          v31 = *(v28 + 3);
        }

        atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v28 + 10);
      v63[0] = v28;
      atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v27 + 24), v63, &v52);
      v67 = v52;
      v52 = 0uLL;
      v32 = atomic_load(&qword_2A174EDF8);
      if (!v32)
      {
        v32 = sub_29AE0A4D8();
      }

      sub_29A9F8F9C(v47, 1uLL, (this + 84));
      v62[1] = &off_2A20433C0;
      v33 = operator new(0x30uLL);
      v34 = v47[1];
      *v33 = v47[0];
      *(v33 + 1) = v34;
      v35 = v48;
      *(v33 + 4) = v48;
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
      v62[0] = v33;
      atomic_fetch_add_explicit(v33 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v32 + 32), v62, &v49);
      *v68 = v49;
      v49 = 0uLL;
      v37 = atomic_load(&qword_2A174EDF8);
      if (!v37)
      {
        v37 = sub_29AE0A4D8();
      }

      sub_29A9F8F9C(v44, 1uLL, this + 12);
      v61[1] = &off_2A20433C0;
      v38 = operator new(0x30uLL);
      v39 = v44[1];
      *v38 = v44[0];
      *(v38 + 1) = v39;
      v40 = v45;
      *(v38 + 4) = v45;
      if (v40)
      {
        v41 = (v40 - 16);
        if (*(v38 + 3))
        {
          v41 = *(v38 + 3);
        }

        atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v38 + 10);
      v61[0] = v38;
      atomic_fetch_add_explicit(v38 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v37 + 40), v61, &v46);
      *&v68[16] = v46;
      v46 = 0uLL;
      memset(v59, 0, sizeof(v59));
      sub_29AD9CF88(v59, v66, &v69, 5uLL);
      v42 = 72;
      while (1)
      {
        v43 = *&v66[v42];
        if (v43)
        {
          sub_29A014BEC(v43);
        }

        v42 -= 16;
        if (v42 == -8)
        {
          if (*(&v46 + 1))
          {
            sub_29A014BEC(*(&v46 + 1));
          }

          sub_29A186B14(v61);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }
      }
    }
  }
}

void sub_29AE06EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a26)
  {
    sub_29A014BEC(a26);
  }

  sub_29A186B14(&a61);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::BindResources(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v4 = *(this + 17);
  v5 = *(this + 16);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE071EC(&v5, v7);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Bind(a3, v7);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v4 = v6;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AE071C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADD2F38(va);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void sub_29AE071EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&qword_2A174EDF8);
  if (!v4)
  {
    v4 = sub_29AE0A4D8();
  }

  v5 = a1[1];
  v6 = *a1;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE09800(a2, 9, v4, &v6, 1, 0, 1, 1);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::UnbindResources(pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v4 = *(this + 17);
  v5 = *(this + 16);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE071EC(&v5, v7);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Unbind(a3, v7);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v4 = v6;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AE07310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADD2F38(va);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::AddBindings(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 128);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE071EC(&v4, v6);
  sub_29ADD2EBC(a2, v6);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v3 = v5;
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29AE073D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADD2F38(va);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::SetSceneAmbient(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 104) = *(a2 + 2);
  *(result + 96) = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TestLightingShader::SetLight(uint64_t result, int a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= 1)
  {
    v4 = result + 36 * a2;
    v5 = *a3;
    *(v4 + 32) = *(a3 + 2);
    *(v4 + 24) = v5;
    v6 = *a3;
    *(v4 + 44) = *(a3 + 2);
    *(v4 + 36) = v6;
    v7 = *a4;
    *(v4 + 56) = *(a4 + 2);
    *(v4 + 48) = v7;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::HdSt_TextureTestDriver(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  v4 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(this);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v2)
  {
    v2 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  v3 = *(v2 + 1);
  *(this + 1) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 2) = *this;
  *(this + 3) = &off_2A2094FD8 + 3;
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate((this + 32));
}

void sub_29AE07624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  *v23 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateVertexBufferDescriptor(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v5);
  v5 = 12;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v3);
  v3 = 0x100000000BLL;
  v4 = 1;
  *(this + 70) = 0;
  *(this + 79) = 24;
  __src = v5;
  v8 = v6;
  v9 = v3;
  v10 = 1;
  return sub_29AB908B8(this + 36, &__src, &v11, 2uLL);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::~HdSt_TextureTestDriver(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  if (*(this + 27))
  {
    (*(**this + 104))();
  }

  if (*(this + 25))
  {
    (*(**this + 104))(*this, this + 200);
  }

  if (*(this + 29))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_DestroyShaderProgram(this);
  }

  if (*(this + 31))
  {
    (*(**this + 152))(*this, this + 248);
  }

  if (*(this + 33))
  {
    (*(**this + 168))(*this, this + 264);
  }

  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29AE0AA60(this + 22, 0);
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::~HdStRenderDelegate((this + 32));
  sub_29A186B14(this + 16);
  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_DestroyShaderProgram(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  v2 = this + 232;
  v3 = (*(**(this + 29) + 32))(*(this + 29));
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    v8 = v6;
    (*(**this + 120))(*this, &v8);
  }

  return (*(**this + 136))(*this, v2);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::Draw(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2, _OWORD *a3, _OWORD *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 52);
  v12 = 0;
  v13 = v8;
  v9 = vcvt_f32_s32(v8);
  v10 = *(a1 + 50);
  v11 = *(a1 + 51) - v10;
  if (v11 > 7)
  {
    if (v11 != 8)
    {
      *(a1 + 51) = v10 + 1;
    }
  }

  else
  {
    sub_29A1B2C78(a1 + 400, 8 - v11);
    v10 = *(a1 + 50);
  }

  *v10 = v9;
  pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateShaderProgram(a1);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateBufferResources(a1);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateTextureBindings(a1, a3, a4);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreatePipeline(a1, a2);
}

void sub_29AE07E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  sub_29AB905FC(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateShaderProgram(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  if (*(this + 33))
  {
    (*(**this + 168))();
  }

  if (*(this + 29))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_DestroyShaderProgram(this);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v50);
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v47, "Vertex");
  if ((v47.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v47.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  std::string::operator=(&v50, EmptyString);
  if ((v47.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v47.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = 1;
  sub_29A008E78(&v47, "position");
  sub_29A008E78(v38, "vec4");
  sub_29A008E78(__p, "position");
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v50, &v47, v38, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v47, "uvIn");
  sub_29A008E78(v38, "vec2");
  memset(__p, 0, 24);
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v50, &v47, v38, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v47, "gl_Position");
  sub_29A008E78(v38, "vec4");
  sub_29A008E78(__p, "position");
  memset(&v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v50, &v47, v38, __p, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v47, "uvOut");
  sub_29A008E78(v38, "vec2");
  memset(__p, 0, 24);
  memset(&v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v50, &v47, v38, __p, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v47);
  v4 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v38, "Fragment");
  if ((v38[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((v38[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  std::string::operator=(&v47, v5);
  if ((v38[0].__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v38[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = 2;
  sub_29A008E78(v38, "uvOut");
  sub_29A008E78(__p, "vec2");
  memset(&v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v47, v38, __p, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v38, "colorIn");
  LODWORD(__p[0].__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v47, v38, 0, 2u, __p, 0);
  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v38, "hd_FragColor");
  sub_29A008E78(__p, "vec4");
  sub_29A008E78(&v43, "color");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v47, v38, __p, &v43, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v38, "screenSize");
  sub_29A008E78(__p, "vec2");
  memset(&v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v47, v38, __p, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v38, "-- glslfx version 0.1\n-- configuration\n{\n    techniques: {\n        default: {\n            VertexPassthrough: {\n                source: [ Vertex.Main ]\n            }\n        }\n    }\n}\n-- glsl Vertex.Main\nvoid main(void)\n{\n    gl_Position = position;\n    uvOut = uvIn;\n}\n");
  sub_29A5DB8D8(&v43, v38, 8);
  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v38, "-- glslfx version 0.1\n-- configuration\n{\n    techniques: {\n        default: {\n            FullscreenTexture: {\n                source: [ Fragment.Main ]\n            }\n        }\n    }\n}\n-- glsl Fragment.Main\nvoid main(void)\n{\n    vec2 coord = (uvOut * screenSize) / 100.f;\n    vec4 color = vec4(HgiGet_colorIn(coord).xyz, 1.0);\n    hd_FragColor = color;\n}\n");
  sub_29A5DB8D8(&v39, v38, 8);
  if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38[0].__r_.__value_.__l.__data_);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v6)
  {
    v6 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v38, &v43, v6 + 112);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v7)
  {
    v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(__p, &v39, v7 + 112);
  memset(&v36, 0, sizeof(v36));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v28, "VertexPassthrough");
  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&v30, v38, v28);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v30;
  }

  else
  {
    v8 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  std::string::append(&v36, v8, size);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if ((v28[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v36.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    v30.__r_.__value_.__r.__words[0] = "hdSt/unitTestHelper.cpp";
    v30.__r_.__value_.__l.__size_ = "_CreateShaderProgram";
    v30.__r_.__value_.__r.__words[2] = 531;
    v31 = "void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateShaderProgram()";
    LOBYTE(v32) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "!vsCode.empty()", 0);
    v11 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  v12 = v11 < 0;
  v13 = &v36;
  if (v12)
  {
    v13 = v36.__r_.__value_.__r.__words[0];
  }

  v52 = v13;
  *&v35 = (*(**this + 112))(*this, &v50);
  *(&v35 + 1) = v14;
  memset(&v34, 0, sizeof(v34));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v28, "FullscreenTexture");
  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&v30, __p, v28);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v30;
  }

  else
  {
    v15 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v30.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v15, v16);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if ((v28[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  v18 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v34.__r_.__value_.__l.__size_;
  }

  if (!v17)
  {
    v30.__r_.__value_.__r.__words[0] = "hdSt/unitTestHelper.cpp";
    v30.__r_.__value_.__l.__size_ = "_CreateShaderProgram";
    v30.__r_.__value_.__r.__words[2] = 538;
    v31 = "void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateShaderProgram()";
    LOBYTE(v32) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "!fsCode.empty()", 0);
    v18 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  v12 = v18 < 0;
  v19 = &v34;
  if (v12)
  {
    v19 = v34.__r_.__value_.__r.__words[0];
  }

  v49 = v19;
  *&v33 = (*(**this + 112))(*this, &v47);
  *(&v33 + 1) = v20;
  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&v30);
  v21 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v28, "FullscreenTriangle");
  if ((v28[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v22 = ((v28[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
  }

  std::string::operator=(&v30, v22);
  if ((v28[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A03A998(&v31, &v35);
  sub_29A03A998(&v31, &v33);
  v23 = (*(**this + 128))(*this, &v30);
  *(this + 29) = v23;
  *(this + 30) = v24;
  if (!(*(*v23 + 16))(v23) || !(*(*v35 + 16))(v35) || ((*(*v33 + 16))(v33) & 1) == 0)
  {
    v28[0] = "hdSt/unitTestHelper.cpp";
    v28[1] = "_CreateShaderProgram";
    v28[2] = 550;
    v28[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateShaderProgram()";
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v28, 1, "Failed to create shader program");
    pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_PrintCompileErrors(this);
    pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_DestroyShaderProgram(this);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  sub_29ADC1D14(__p);
  sub_29ADC1D14(v38);
  v39.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9530];
  v25 = v39.__r_.__value_.__r.__words[0];
  v26 = *(MEMORY[0x29EDC9530] + 24);
  *(v39.__r_.__value_.__r.__words + *(v39.__r_.__value_.__r.__words[0] - 24)) = v26;
  v39.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  MEMORY[0x29C2C4390](&v42);
  v43.__r_.__value_.__r.__words[0] = v25;
  *(v43.__r_.__value_.__r.__words + *(v25 - 24)) = v26;
  v43.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v44);
  std::istream::~istream();
  MEMORY[0x29C2C4390](&v46);
  sub_29AB89F90(&v47);
  return sub_29AB89F90(&v50);
}

void sub_29AE089E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_29ADC1D14(&a37);
  sub_29ADC1D14(&a72);
  sub_29A5DBA5C(&STACK[0x320]);
  sub_29A5DBA5C(&STACK[0x430]);
  sub_29AB89F90(&STACK[0x540]);
  sub_29AB89F90(&STACK[0x6B0]);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateBufferResources(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!*(this + 27))
  {
    v18[0] = xmmword_29B70CC98;
    v18[1] = unk_29B70CCA8;
    v18[2] = xmmword_29B70CCB8;
    v18[3] = unk_29B70CCC8;
    v19 = 1065353216;
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    MEMORY[0x29C2C1A60](v10, "HdSt_TextureTestDriver VertexBuffer");
    v12 = 4;
    v15 = v18;
    v13 = 72;
    v14 = 24;
    *(this + 27) = (*(**this + 96))(*this, v10);
    *(this + 28) = v2;
    v17 = 2;
    v16 = 0x100000000;
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    v6 = 1;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    MEMORY[0x29C2C1A60](__p, "HdSt_TextureTestDriver IndexBuffer");
    v6 = 2;
    v9 = &v16;
    v7 = 12;
    *(this + 25) = (*(**this + 96))(*this, __p);
    *(this + 26) = v3;
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_29AE08E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreateTextureBindings(void *a1, _OWORD *a2, _OWORD *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v14);
  MEMORY[0x29C2C1A60](v14, "HdSt_TextureTestDriver", v6);
  if (*a2)
  {
    pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v11);
    *&__p[7] = 0x200000000;
    v13 = 0;
    sub_29A03A998(v11, a2);
    if (*a3)
    {
      sub_29A03A998(__p, a3);
    }

    sub_29ADF42D0(v17, v11);
    if (*__p)
    {
      *&__p[2] = *__p;
      operator delete(*__p);
    }

    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }

  v7 = a1[31];
  if (v7)
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiResourceBindings::GetDescriptor(v7);
    if (pxrInternal__aapl__pxrReserved__::operator==(Descriptor, v14))
    {
      goto LABEL_12;
    }

    (*(**a1 + 152))(*a1, a1 + 31);
  }

  a1[31] = (*(**a1 + 144))(*a1, v14);
  a1[32] = v9;
LABEL_12:
  v11[0] = v17;
  sub_29AB88D58(v11);
  v11[0] = &v16;
  sub_29AB88B40(v11);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return 1;
}

void sub_29AE08FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29ADE69D4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_CreatePipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(a1 + 264))
  {
    (*(**a1 + 168))();
  }

  *(a1 + 356) = 0;
  *(a1 + 328) = 0x100000000;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  if (*a2)
  {
    *(a1 + 320) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 28);
    *(a1 + 324) = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 24);
  }

  else
  {
    *(a1 + 320) = -1;
  }

  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v9);
  MEMORY[0x29C2C1A60](v9, "TestPipeline");
  v10 = *(a1 + 232);
  if (*(a1 + 320) != -1)
  {
    sub_29AB8F8F8(&__p, (a1 + 320));
  }

  pxrInternal__aapl__pxrReserved__::HgiDepthStencilState::HgiDepthStencilState(&v4);
  LOBYTE(v4) = 1;
  DWORD1(v4) = 7;
  BYTE4(v5) = 0;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v11 = v4;
  v12 = v5;
  v17 = *(a1 + 280);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
}

void sub_29AE09274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29AB8FA10(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::WriteToFile(uint64_t *a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2, char *a3)
{
  v19[0] = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 52);
  v19[1] = 0xF00000000;
  v20 = 1;
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::HdStTextureUtils::HgiTextureReadback(*a1, a2, &v18, v17);
  v21 = v17[0];
  if (!v17[0])
  {
    v12 = "hdSt/unitTestHelper.cpp";
    v13 = "WriteToFile";
    v14 = 431;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::WriteToFile(const HgiTextureHandle &, std::string) const";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "No data for texture");
    v7 = 0;
    goto LABEL_15;
  }

  pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(a3, &v10);
  if (v10)
  {
    v12 = 0;
    v6 = (*(*v10 + 32))(v10, v19, &v12);
    sub_29A184A10(&v12, 0);
    if (v6)
    {
      v7 = 1;
      goto LABEL_13;
    }

    v12 = "hdSt/unitTestHelper.cpp";
    v13 = "WriteToFile";
    v14 = 443;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::WriteToFile(const HgiTextureHandle &, std::string) const";
    v16 = 0;
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 3, "Failed to write image to %s", a3);
  }

  else
  {
    v12 = "hdSt/unitTestHelper.cpp";
    v13 = "WriteToFile";
    v14 = 438;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::WriteToFile(const HgiTextureHandle &, std::string) const";
    v16 = 0;
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 3, "Failed to open image for writing %s", a3);
  }

  v7 = 0;
LABEL_13:
  if (v11)
  {
    sub_29A014BEC(v11);
  }

LABEL_15:
  v8 = v17[0];
  v17[0] = 0;
  if (v8)
  {
    (v17[1])();
  }

  return v7;
}

void sub_29AE09498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(void))
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a18)
  {
    a19();
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver::_PrintCompileErrors(pxrInternal__aapl__pxrReserved__::HdSt_TextureTestDriver *this)
{
  v2 = (*(**(this + 29) + 32))(*(this + 29));
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = MEMORY[0x29EDC93C8];
    v6 = MEMORY[0x29EDC93D0];
    do
    {
      v7 = (*(**v3 + 24))();
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      v11 = sub_29A00911C(v5, v9, v10);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v20, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v20);
      std::ostream::put();
      std::ostream::flush();
      v3 += 16;
    }

    while (v3 != v4);
  }

  v13 = (*(**(this + 29) + 24))(*(this + 29));
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  v17 = sub_29A00911C(MEMORY[0x29EDC93C8], v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v20);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_29AE09720(uint64_t a1)
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

void sub_29AE09778(uint64_t a1)
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

void sub_29AE097D8(uint64_t a1)
{
  v1 = sub_29AE05764(a1);

  operator delete(v1);
}

uint64_t sub_29AE09800(uint64_t result, int a2, uint64_t *a3, void *a4, char a5, char a6, uint64_t a7, char a8)
{
  *result = a2;
  *(result + 4) = -1;
  v8 = *a3;
  *(result + 8) = *a3;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  v9 = a4[1];
  *(result + 32) = *a4;
  *(result + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = a5;
  *(result + 49) = a6;
  *(result + 56) = a7;
  *(result + 64) = a8;
  return result;
}

void sub_29AE09868(uint64_t a1)
{
  v1 = sub_29AE05764(a1);

  operator delete(v1);
}

uint64_t sub_29AE09890(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = a1 + 224;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_29AE0A9EC(&v6, &v15, &v16, 1uLL);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  *(a1 + 440) = pxrInternal__aapl__pxrReserved__::HdRenderIndex::New(a1 + 248);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (!*(a1 + 440))
  {
    sub_29B2C9D00(&v6);
  }

  v2 = operator new(0x1A0uLL);
  v3 = *(a1 + 440);
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  result = pxrInternal__aapl__pxrReserved__::HdUnitTestDelegate::HdUnitTestDelegate(v2, v3, v4);
  *(a1 + 448) = v2;
  return result;
}

void sub_29AE099A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE099F8()
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v4, 1.0);
  v3 = 0x497424003F800000;
  __p = 0;
  v1 = 0;
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(v5, &v4, 0, &v3, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29AE09F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE0A024(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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
    v12 = sub_29AE0A164(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29A4274B8(&v18, a2, (a2 + v13), v8);
    v12 = sub_29AE0A164(a1, (a2 + v13), a3, *(a1 + 8));
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

void *sub_29AE0A164(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29AE0A1EC(v7);
  return v4;
}

uint64_t sub_29AE0A1EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void *sub_29AE0A224@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex **a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x148uLL);
  result = sub_29AE0A288(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE0A288(void *a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2094F48;
  pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::HdSt_RenderPass((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AE0A308(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE0A3E8(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2094F98;
  pxrInternal__aapl__pxrReserved__::HdSt_DrawTask::HdSt_DrawTask((a1 + 3), a2, a3);
}

void sub_29AE0A464(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

unint64_t sub_29AE0A4D8()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "lighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "l0dir", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "l0color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "l1dir", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "l1color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "sceneAmbient", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "testCollection", 0);
  v1 = v0 + 8;
  v2 = *v0;
  v23 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v3;
    }
  }

  v4 = v0[1];
  v24 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v5;
    }
  }

  v6 = v0[2];
  v25 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v7;
    }
  }

  v8 = v0[3];
  v26 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v9;
    }
  }

  v10 = v0[4];
  v27 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v11;
    }
  }

  v12 = v0[5];
  v28 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v13;
    }
  }

  v14 = v0[6];
  v29 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v15;
    }
  }

  v16 = v0[7];
  v30 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v17;
    }
  }

  *v1 = 0;
  v0[9] = 0;
  v0[10] = 0;
  sub_29A12EF7C(v1, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v19 = *(&v23 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20 = 0;
  atomic_compare_exchange_strong(&qword_2A174EDF8, &v20, v0);
  if (v20)
  {
    v21 = sub_29AE02FF4(v0);
    operator delete(v21);
    return atomic_load(&qword_2A174EDF8);
  }

  return v0;
}

void sub_29AE0A76C(_Unwind_Exception *a1)
{
  v4 = 56;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AE0A9D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2094FD8 + 3;
  return result;
}

char *sub_29AE0A9EC(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AE0AA44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE0AA60(pxrInternal__aapl__pxrReserved__::HdRenderIndex **a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::~HdRenderIndex(v3);

    operator delete(v4);
  }
}

double pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder::HdSt_VertexAdjacencyBuilder(pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder *this)
{
  pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::Hd_VertexAdjacency(this);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

{
  pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::Hd_VertexAdjacency(this);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder::~HdSt_VertexAdjacencyBuilder(pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::~Hd_VertexAdjacency(this);
}

void pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder::GetSharedVertexAdjacencyBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilder *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 9);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 8);
      if (v8)
      {
        *a3 = v8;
        a3[1] = v7;
        return;
      }

      sub_29A014BEC(v7);
    }
  }

  if (*(this + 1))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v9 = operator new(0x38uLL);
    v9[2] = 0;
    *v9 = &unk_2A20951F0;
    v9[1] = 0;
    *(v9 + 8) = 0;
    v9[3] = &unk_2A20950C0;
    v9[5] = this;
    v9[6] = a2;
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    v10 = *(this + 9);
    *(this + 8) = v9 + 3;
    *(this + 9) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    *a3 = v9 + 3;
    a3[1] = v9;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilderComputation::HdSt_VertexAdjacencyBuilderComputation(uint64_t this, pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency *a2, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a3)
{
  *(this + 8) = 0;
  *this = &unk_2A20950C0;
  *(this + 16) = a2;
  *(this + 24) = a3;
  return this;
}

{
  *(this + 8) = 0;
  *this = &unk_2A20950C0;
  *(this + 16) = a2;
  *(this + 24) = a3;
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilderComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilderComputation *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    sub_29A0ECEEC(&v6, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBuilderComputation::Resolve()");
    pxrInternal__aapl__pxrReserved__::Hd_VertexAdjacency::BuildAdjacencyTable(*(this + 2), *(this + 3), v4);
    sub_29AD1019C(this);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
    }
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource::HdSt_VertexAdjacencyBufferSource(uint64_t result, uint64_t a2, uint64_t *a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2095140;
  v4 = *a3;
  v3 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2095140;
  v4 = *a3;
  v3 = a3[1];
  *(result + 32) = a2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource *this)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v1 = atomic_load((*(this + 5) + 8));
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  atomic_compare_exchange_strong(this + 2, &v3, 1u);
  if (v3)
  {
    return 0;
  }

  sub_29A0ECEEC(&v12, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource::Resolve()");
  v4 = *(this + 4);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v14[1] = &off_2A2043D18;
  sub_29A18ECC8(v14, v4 + 8);
  sub_29AD9CD3C((v5 + 8), v14, &v10);
  v6 = v10;
  v7 = v11;
  v10 = 0;
  v11 = 0;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 3);
  *(this + 2) = v6;
  *(this + 3) = v7;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29A186B14(v14);
  sub_29AD1019C(this);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return 1;
}

void sub_29AE0AEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VertexAdjacencyBufferSource::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v8) = 5;
  *(&v8 + 1) = 1;
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v3 + 1, &v8);
  }

  else
  {
    v5 = v8;
    v6 = *(v3 + 1);
    *v4 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v4 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4[1] = v5;
    v4[2] = 1;
    result = (v4 + 3);
  }

  a2[1] = result;
  return result;
}

void sub_29AE0AFEC(pxrInternal__aapl__pxrReserved__::HdBufferSource *a1)
{
  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v1);
}

void sub_29AE0B014(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2095140;
  v2 = *(this + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *this = &unk_2A2075F38;
  v3 = *(this + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

void sub_29AE0B098(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A2095140;
  v2 = *(this + 6);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *this = &unk_2A2075F38;
  v3 = *(this + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);

  operator delete(v4);
}

void sub_29AE0B140(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20951F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::HdSt_VolumeShader(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader *this)
{
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::HdSt_MaterialNetworkShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::HdSt_MaterialNetworkShader(this);
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::~HdSt_VolumeShader(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader *this)
{
  v3 = (this + 256);
  sub_29ABF537C(&v3);
  v2 = *(this + 30);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::~HdSt_MaterialNetworkShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::~HdSt_VolumeShader(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::SetPointsBar(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 240);
  *(a1 + 232) = v3;
  *(a1 + 240) = v2;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetParamsAndBufferSpecsForBBoxAndSampleDistance(void *a1, uint64_t a2, int a3)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v12[1] = 0;
  v11[1] = 0;
  if (a3)
  {
    v10 = &off_2A2042BD8 + 2;
    v4 = operator new(0x88uLL);
    *(v4 + 6) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    atomic_store(0, v4 + 32);
    v9 = v4;
    atomic_fetch_add_explicit(v4 + 32, 1u, memory_order_relaxed);
    sub_29A18606C(v12, &v9);
    sub_29A186B14(&v9);
    v10 = &off_2A20428F8 + 2;
    v5 = operator new(0x20uLL);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    atomic_store(0, v5 + 6);
    v9 = v5;
    atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  }

  else
  {
    v10 = &off_2A2042C90 + 2;
    v6 = operator new(0x44uLL);
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    atomic_store(0, v6 + 16);
    v9 = v6;
    atomic_fetch_add_explicit(v6 + 16, 1u, memory_order_relaxed);
    sub_29A18606C(v12, &v9);
    sub_29A186B14(&v9);
    v10 = &off_2A2042840 + 2;
    v7 = operator new(0x10uLL);
    v7[2] = 0;
    *v7 = 0;
    atomic_store(0, v7 + 3);
    v9 = v7;
    atomic_fetch_add_explicit(v7 + 3, 1u, memory_order_relaxed);
  }

  sub_29A18606C(v11, &v9);
  sub_29A186B14(&v9);
  LODWORD(v9) = 0;
  v8 = atomic_load(&qword_2A174EE00);
  if (!v8)
  {
    v8 = sub_29AE0CB78();
  }

  if (a1[1] < a1[2])
  {
    sub_29AE0CF4C(a1, a1[1], &v9, (v8 + 8), v12);
  }

  sub_29AE0CDE8(a1, &v9, (v8 + 8), v12);
}

void sub_29AE0B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  __cxa_guard_abort(&qword_2A174EE40);
  sub_29A186B14(va);
  sub_29A186B14(va1);
  _Unwind_Resume(a1);
}

void sub_29AE0BAB8(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X8>)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  if (!v4)
  {
    v4 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  }

  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(EmptyString, v5, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AE0BB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetBufferSourcesForBBoxAndSampleDistance(uint64_t a1, void **a2, BOOL a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v29 = a3;
  if ((atomic_load_explicit(&qword_2A174EE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EE50))
  {
    v20 = atomic_load(&qword_2A174EE00);
    if (!v20)
    {
      v20 = sub_29AE0CB78();
    }

    sub_29AE0BAB8((v20 + 8), &unk_2A174EE48);
    __cxa_atexit(sub_29A424A8C, &unk_2A174EE48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EE50);
  }

  v31 = &off_2A2042BD8 + 2;
  v5 = operator new(0x88uLL);
  v6 = *(a1 + 256);
  *(v5 + 4) = *(a1 + 240);
  *(v5 + 5) = v6;
  v7 = *(a1 + 288);
  *(v5 + 6) = *(a1 + 272);
  *(v5 + 7) = v7;
  v8 = *(a1 + 192);
  *v5 = *(a1 + 176);
  *(v5 + 1) = v8;
  v9 = *(a1 + 224);
  *(v5 + 2) = *(a1 + 208);
  *(v5 + 3) = v9;
  atomic_store(0, v5 + 32);
  v30 = v5;
  atomic_fetch_add_explicit(v5 + 32, 1u, memory_order_relaxed);
  v26 = 1;
  sub_29AE0D3C4(&unk_2A174EE48, &v30, &v26, &v29, &v27);
  v28 = v27;
  v27 = 0uLL;
  sub_29A01729C(a2, &v28);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A186B14(&v30);
  if ((atomic_load_explicit(&qword_2A174EE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EE60))
  {
    v21 = atomic_load(&qword_2A174EE00);
    if (!v21)
    {
      v21 = sub_29AE0CB78();
    }

    sub_29AE0BAB8((v21 + 16), &unk_2A174EE58);
    __cxa_atexit(sub_29A424A8C, &unk_2A174EE58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EE60);
  }

  v10 = 0;
  if (*a1 <= *(a1 + 24) && *(a1 + 8) <= *(a1 + 32))
  {
    v11 = 0;
    v12 = 0.0;
    if (*(a1 + 16) <= *(a1 + 40))
    {
      v10 = *(a1 + 16);
      v11 = *(a1 + 8);
      v12 = *a1;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
  }

  v31 = &off_2A20428F8 + 2;
  v13 = operator new(0x20uLL);
  *v13 = v12;
  *(v13 + 1) = v11;
  *(v13 + 2) = v10;
  atomic_store(0, v13 + 6);
  v30 = v13;
  atomic_fetch_add_explicit(v13 + 6, 1u, memory_order_relaxed);
  v26 = 1;
  sub_29AE0D3C4(&unk_2A174EE58, &v30, &v26, &v29, &v27);
  v28 = v27;
  v27 = 0uLL;
  sub_29A01729C(a2, &v28);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A186B14(&v30);
  if ((atomic_load_explicit(&qword_2A174EE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EE70))
  {
    v22 = atomic_load(&qword_2A174EE00);
    if (!v22)
    {
      v22 = sub_29AE0CB78();
    }

    sub_29AE0BAB8((v22 + 24), &unk_2A174EE68);
    __cxa_atexit(sub_29A424A8C, &unk_2A174EE68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EE70);
  }

  v14 = 0;
  if (*a1 <= *(a1 + 24) && *(a1 + 8) <= *(a1 + 32))
  {
    v15 = 0;
    v16 = 0;
    if (*(a1 + 16) <= *(a1 + 40))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 32);
      v16 = *(a1 + 24);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v31 = &off_2A20428F8 + 2;
  v17 = operator new(0x20uLL);
  *v17 = v16;
  *(v17 + 1) = v15;
  *(v17 + 2) = v14;
  atomic_store(0, v17 + 6);
  v30 = v17;
  atomic_fetch_add_explicit(v17 + 6, 1u, memory_order_relaxed);
  v26 = 1;
  sub_29AE0D3C4(&unk_2A174EE68, &v30, &v26, &v29, &v27);
  v28 = v27;
  v27 = 0uLL;
  sub_29A01729C(a2, &v28);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  sub_29A186B14(&v30);
  v18 = *(a1 + 312);
  if ((atomic_load_explicit(&qword_2A174EE80, memory_order_acquire) & 1) == 0)
  {
    v23 = v18;
    v24 = __cxa_guard_acquire(&qword_2A174EE80);
    v18 = v23;
    if (v24)
    {
      v25 = atomic_load(&qword_2A174EE00);
      if (!v25)
      {
        v25 = sub_29AE0CB78();
      }

      sub_29AE0BAB8(v25, &unk_2A174EE78);
      __cxa_atexit(sub_29A424A8C, &unk_2A174EE78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174EE80);
      v18 = v23;
    }
  }

  v31 = &unk_2A2044C63;
  LODWORD(v30) = v18;
  sub_29AE0D4A4(&unk_2A174EE78, &v30, &v27);
  v28 = v27;
  v27 = 0uLL;
  sub_29A01729C(a2, &v28);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  return sub_29A186B14(&v30);
}

double pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetSafeMin(double *a1)
{
  if (*a1 > a1[3] || a1[1] > a1[4])
  {
    return 0.0;
  }

  result = 0.0;
  if (a1[2] <= a1[5])
  {
    return *a1;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetSafeMax(double *a1)
{
  if (*a1 > a1[3] || a1[1] > a1[4])
  {
    return 0.0;
  }

  result = 0.0;
  if (a1[2] <= a1[5])
  {
    return a1[3];
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::AddResourcesFromTextures(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  v61[2] = *MEMORY[0x29EDCA608];
  v52 = 0;
  v53 = 0;
  v54 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a2);
  v5 = *((*(*Hgi + 200))(Hgi) + 48);
  NamedTextureHandles = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetNamedTextureHandles(this);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::ComputeBufferSources(NamedTextureHandles, &v52, v5 & 0x100);
  if (*(this + 248) == 1)
  {
    v7 = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetNamedTextureHandles(this);
    sub_29A12D048(__dst);
    v8 = *v7;
    v9 = v7[1];
    v10 = 1000000.0;
    if (*v7 != v9)
    {
      do
      {
        v11 = **(v8 + 16);
        if (v11)
        {
          if (v12)
          {
            v13 = v12;
            pxrInternal__aapl__pxrReserved__::GfBBox3d::Combine(__dst, (v12 + 64), __src);
            memcpy(__dst, __src, 0x132uLL);
            v14 = vmulq_f64(*(v13 + 120), *(v13 + 120));
            v15.f64[0] = *(v13 + 18);
            v16 = vmulq_f64(*(v13 + 152), *(v13 + 152));
            v15.f64[1] = *(v13 + 14);
            v17 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_f64(v15, v15), vzip1q_s64(v16, v14)), vzip2q_s64(v16, v14)));
            v18 = vmulq_f64(*(v13 + 184), *(v13 + 184));
            if (v17.f32[0] >= v17.f32[1])
            {
              v17.f32[0] = v17.f32[1];
            }

            v19 = *(v13 + 22) * *(v13 + 22) + v18.f64[0] + v18.f64[1];
            if (v17.f32[0] > v19)
            {
              v17.f32[0] = *(v13 + 22) * *(v13 + 22) + v18.f64[0] + v18.f64[1];
            }

            v20 = sqrtf(v17.f32[0]);
            if (v20 < v10)
            {
              v10 = v20;
            }
          }
        }

        v8 += 40;
      }

      while (v8 != v9);
    }

    memcpy(v50, __dst, sizeof(v50));
    v51 = v10;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29A193124(__dst, 8uLL);
    v22 = 0;
    if (*v50 <= *&v50[3] && *&v50[1] <= *&v50[4])
    {
      v23 = 0;
      v49 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      if (*&v50[2] <= *&v50[5])
      {
        v22 = v50[2];
        v49 = v50[1];
        v23 = v50[0];
        v24 = v50[5];
        v25 = v50[4];
        v26 = v50[3];
      }
    }

    else
    {
      v23 = 0;
      v49 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    v27 = 0;
    v28 = 0;
    v61[0] = v23;
    v61[1] = v26;
    do
    {
      v29 = 0;
      v30 = *&v61[v28];
      v60[0] = v49;
      v60[1] = v25;
      do
      {
        v31 = 0;
        v32 = *&v60[v29];
        v59[0] = v22;
        v59[1] = v24;
        v33 = 12 * v27;
        do
        {
          v34 = *&v59[v31];
          __src[0] = v30;
          __src[1] = v32;
          __src[2] = v34;
          v35 = sub_29A12CECC(&v50[6], __src);
          v37 = v36;
          v39 = v38;
          sub_29A1935CC(__dst);
          v40 = v39;
          v41 = v37;
          v42 = v35;
          v43 = (*&__dst[32] + v33);
          *v43 = v42;
          v43[1] = v41;
          v43[2] = v40;
          ++v27;
          ++v31;
          v33 += 12;
        }

        while (v31 != 2);
        ++v29;
      }

      while (v29 != 2);
      ++v28;
    }

    while (v28 != 2);
    v58 = &off_2A20433C0;
    v44 = operator new(0x30uLL);
    v45 = *&__dst[16];
    *v44 = *__dst;
    *(v44 + 1) = v45;
    v46 = *&__dst[32];
    *(v44 + 4) = *&__dst[32];
    if (v46)
    {
      v47 = (v46 - 16);
      if (*(v44 + 3))
      {
        v47 = *(v44 + 3);
      }

      atomic_fetch_add_explicit(v47, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v44 + 10);
    v57 = v44;
    atomic_fetch_add_explicit(v44 + 10, 1u, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (v52 != v53)
  {
    ShaderData = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetShaderData(this);
    pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::AddSources(a2, ShaderData, &v52);
  }

  v50[0] = &v52;
  sub_29A0176E4(v50);
}

void sub_29AE0C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  a18 = &a58;
  sub_29A0176E4(&a18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::SetFieldDescriptors(uint64_t a1, uint64_t **a2)
{
  result = a1 + 256;
  if (result != a2)
  {
    return sub_29AE0D56C(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::UpdateTextureHandles(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v8, a2[1]);
  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  NamedTextureHandles = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetNamedTextureHandles(this);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_29AE0D864(&v13, *NamedTextureHandles, NamedTextureHandles[1], 0xCCCCCCCCCCCCCCCDLL * (NamedTextureHandles[1] - *NamedTextureHandles));
  v7 = v13;
  v6 = v14;
  if (0xCCCCCCCCCCCCCCCDLL * (v14 - v13) != 0xAAAAAAAAAAAAAAABLL * ((*(this + 33) - *(this + 32)) >> 3))
  {
    v8 = "hdSt/volumeShader.cpp";
    v9 = "UpdateTextureHandles";
    v10 = 378;
    v11 = "void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::UpdateTextureHandles(HdSceneDelegate *const)";
    v12 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v8, "textureHandles.size() == _fieldDescriptors.size()", 0))
    {
      goto LABEL_8;
    }

    v7 = v13;
    v6 = v14;
  }

  if (v6 != v7)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a2[1], (*(this + 32) + 8), (*(this + 32) + 16));
  }

  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetNamedTextureHandles(this, &v13);
LABEL_8:
  v8 = &v13;
  sub_29ADD61E4(&v8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AE0CAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a17 = &a22;
  sub_29ADD61E4(&a17);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_29AE0CB78()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "sampleDistance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "volumeBBoxInverseTransform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "volumeBBoxLocalMin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "volumeBBoxLocalMax", 0);
  v1 = v0 + 4;
  v2 = *v0;
  v15 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v3;
    }
  }

  v4 = v0[1];
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = v0[2];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = v0[3];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  *v1 = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_29A12EF7C(v1, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v11 = *(&v15 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 0;
  atomic_compare_exchange_strong(&qword_2A174EE00, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A174EE00);
  }

  return v0;
}

void sub_29AE0CD2C(_Unwind_Exception *a1)
{
  v4 = 24;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AE0CDE8(void *a1, int *a2, uint64_t *a3, void *a4)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v5)
    {
      v5 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v5;
    }

    v15 = a1;
    if (v10)
    {
      v11 = sub_29A09B7D4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = &v11[104 * v4];
    v14 = &v11[104 * v10];
    sub_29AE0CF4C(a1, v13, a2, a3, a4);
  }

  sub_29A00C9A4();
}

void sub_29AE0CF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AE0CFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE0CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AE0D0AC(a1, a4, v7);
      v7 += 104;
      a4 = v12 + 104;
      v12 += 104;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29ADD617C(a1, v5);
      v5 += 104;
    }
  }

  return sub_29ADD6648(v9);
}

__n128 sub_29AE0D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  sub_29A186A3C((a2 + 16), (a3 + 16));
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a2 + 56) = *(a3 + 56);
  v5 = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 64) = v5;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  result = *(a3 + 88);
  *(a2 + 88) = result;
  return result;
}

void **sub_29AE0D138(void **a1)
{
  sub_29AE0D16C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AE0D16C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 104;
      result = sub_29ADD617C(v4, v1 - 104);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AE0D1B4(void *a1, int *a2, uint64_t *a3, void *a4)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v5)
    {
      v5 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v5;
    }

    v15 = a1;
    if (v10)
    {
      v11 = sub_29A09B7D4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = &v11[104 * v4];
    v14 = &v11[104 * v10];
    sub_29AE0D318(a1, v13, a2, a3, a4);
  }

  sub_29A00C9A4();
}

void sub_29AE0D304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AE0D398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

void *sub_29AE0D3C4@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, BOOL *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AE0D440(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AE0D440(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4, BOOL *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

void *sub_29AE0D4A4@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29AE0D508(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AE0D508(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, 1, 1);
  return a1;
}

uint64_t sub_29AE0D56C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AE0D6DC(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    result = sub_29AE0D748(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) < a4)
  {
    sub_29AE0D7DC(&v16, a2, a2 + v12, v8);
    result = sub_29AE0D748(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AE0D7DC(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 24;
      result = sub_29ABF5404(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29AE0D6DC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 24;
        sub_29ABF5404(a1, v3);
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

uint64_t sub_29AE0D748(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ACCC4B8(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 24;
      v12 += 24;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ACCC640(v9);
  return v4;
}

uint64_t sub_29AE0D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_29A166F2C((a4 + 8), (v5 + 8));
    sub_29A2258F0((a4 + 16), (v5 + 16));
    sub_29A225948((a4 + 20), (v5 + 20));
    a4 += 24;
    v5 += 24;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29AE0D864(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10E7C8(result, a4);
    result = sub_29ADD6924(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE0D8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ADD61E4(&a9);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey *pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey::HdSt_VolumeShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey *this)
{
  *this = &unk_2A20952F0;
  v2 = atomic_load(&qword_2A174EEB8);
  if (!v2)
  {
    v2 = sub_29AE0DC20();
  }

  v3 = *v2;
  *(this + 1) = *v2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&qword_2A174EEB8);
  if (!v4)
  {
    v4 = sub_29AE0DC20();
  }

  v5 = *(v4 + 32);
  *(this + 2) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&qword_2A174EEB8);
  if (!v6)
  {
    v6 = sub_29AE0DC20();
  }

  v7 = *(v6 + 16);
  *(this + 3) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 4) = 0;
  v8 = atomic_load(&qword_2A174EEB8);
  if (!v8)
  {
    v8 = sub_29AE0DC20();
  }

  v9 = *(v8 + 8);
  *(this + 5) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 5) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&qword_2A174EEB8);
  if (!v10)
  {
    v10 = sub_29AE0DC20();
  }

  v11 = *(v10 + 32);
  *(this + 6) = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&qword_2A174EEB8);
  if (!v12)
  {
    v12 = sub_29AE0DC20();
  }

  v13 = *(v12 + 24);
  *(this + 7) = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 7) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 8) = 0;
  return this;
}

void sub_29AE0DAB4(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v1 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == 8)
    {
      v5 = *(v1 + 1);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(v1);
      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey::~HdSt_VolumeShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey *this)
{
  *this = &unk_2A20952F0;
  for (i = 64; i != 32; i -= 8)
  {
    v2 = *(this + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  do
  {
    v3 = *(this + i);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 8);
  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey::~HdSt_VolumeShaderKey(this);

  operator delete(v1);
}

unint64_t sub_29AE0DC20()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "volume.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "PointId.Fragment.Fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Volume.Vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "Volume.Fragment", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "Instancing.Transform", 0);
  v1 = v0 + 5;
  v2 = *v0;
  v17 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v3;
    }
  }

  v4 = v0[1];
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = v0[2];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = v0[3];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = v0[4];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  *v1 = 0;
  v0[6] = 0;
  v0[7] = 0;
  sub_29A12EF7C(v1, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v13 = *(&v17 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v14 = 0;
  atomic_compare_exchange_strong(&qword_2A174EEB8, &v14, v0);
  if (v14)
  {
    v15 = sub_29AB82814(v0);
    operator delete(v15);
    return atomic_load(&qword_2A174EEB8);
  }

  return v0;
}

void sub_29AE0DE0C(_Unwind_Exception *a1)
{
  v4 = 32;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GenMaterialXShader@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v94 = *MEMORY[0x29EDCA608];
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v12)
  {
    v12 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  v13 = *a5;
  if ((*(v12 + 3) ^ *a5) <= 7)
  {
    sub_29AE137D4(&__p);
    *v65 = *&__p.__r_.__value_.__l.__data_;
    sub_29B20D020(v89, v65);
    size = v65[1];
    if (!v65[1])
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_29A014BEC(size);
    goto LABEL_12;
  }

  __p.__r_.__value_.__r.__words[0] = "hdSt/materialXFilter.cpp";
  __p.__r_.__value_.__l.__size_ = "_CreateHdStMaterialXContext";
  __p.__r_.__value_.__r.__words[2] = 189;
  v92 = "mx::GenContext pxrInternal__aapl__pxrReserved__::_CreateHdStMaterialXContext(const HdSt_MxShaderGenInfo &, const TfToken &)";
  v93 = 0;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "MaterialX Shader Generator doesn't support %s API.", v16);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  sub_29B20D020(v89, &__p);
  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_11;
  }

LABEL_12:
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v17)
  {
    v17 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  v90 = !pxrInternal__aapl__pxrReserved__::TfToken::operator==(v17, (a4 + 144));
  memset(v86, 0, sizeof(v86));
  v18 = *a3;
  if (*a3 != *(a3 + 8))
  {
    v19 = v18[1];
    if (*v18 == v19)
    {
      v20 = sub_29B1F31FC();
    }

    else
    {
      v20 = (v19 - 24);
    }

    v21 = *(v20 + 23);
    if (v21 < 0)
    {
      if (*(v20 + 1) != 9)
      {
        goto LABEL_27;
      }

      v20 = *v20;
    }

    else if (v21 != 9)
    {
      goto LABEL_27;
    }

    if (*v20 == 0x656972617262696CLL && *(v20 + 8) == 115)
    {
      sub_29AE0EA4C(&__p);
    }

LABEL_27:
    sub_29AD9633C(v86);
  }

  v23 = (*(*v89[0] + 16))(v89[0]);
  sub_29B20C2B4(v23, &v84);
  v24 = v84;
  v25 = a2[1];
  v82 = *a2;
  v83 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 24))(v24, &v82);
  if (v83)
  {
    sub_29A014BEC(v83);
  }

  v26 = v89[0];
  v27 = v84;
  v28 = v85;
  if (v85)
  {
    atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(v26 + 72);
  *(v26 + 64) = v27;
  *(v26 + 72) = v28;
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v30 = *a1;
  sub_29A008E78(&__p, "lin_rec709");
  sub_29AD98C08(v30, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B1C6D8C(&v81, v31);
  v80 = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "\n<?xml version=1.0?>\n<materialx version=1.38>\n  <point_light name=pt_light type=lightshader>\n  </point_light>\n  <directional_light name=dir_light type=lightshader>\n  </directional_light>\n</materialx>\n");
  memset(v65, 0, 24);
  sub_29B20A284(&v80, &__p, v65, 0);
  v87[0] = v65;
  sub_29AAC9380(v87);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v80 + 1))
  {
    sub_29A014BEC(*(&v80 + 1));
  }

  v32 = *a1;
  *&__p.__r_.__value_.__l.__data_ = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1C7188(v32, &__p);
  if (__p.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(__p.__r_.__value_.__l.__size_);
  }

  *&v65[1] = xmmword_29B767048;
  *&v65[3] = unk_29B767058;
  *&v65[5] = xmmword_29B767068;
  v65[0] = &unk_2A2095418;
  *&v65[7] = unk_29B767078;
  v66 = 257;
  v67 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 1065353216;
  v72 = 16;
  v73 = 0;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  v79 = 1065353216;
  memset(v64, 0, sizeof(v64));
  v33 = a1[1];
  v62 = *a1;
  v63 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24C104(v65, &v62, v64);
  if (v63)
  {
    sub_29A014BEC(v63);
  }

  v34 = a1[1];
  v60 = *a1;
  v61 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24C220(v65, &v60, v64, v89);
  if (v61)
  {
    sub_29A014BEC(v61);
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v35 = a1[1];
  v55 = *a1;
  v56 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24BA50(&v55, &v57);
  if (v56)
  {
    sub_29A014BEC(v56);
  }

  if (v58 - v57 != 16)
  {
    __p.__r_.__value_.__r.__words[0] = "hdSt/materialXFilter.cpp";
    __p.__r_.__value_.__l.__size_ = "HdSt_GenMaterialXShader";
    __p.__r_.__value_.__r.__words[2] = 253;
    v92 = "mx::ShaderPtr pxrInternal__aapl__pxrReserved__::HdSt_GenMaterialXShader(const mx::DocumentPtr &, const mx::DocumentPtr &, const mx::FileSearchPath &, const HdSt_MxShaderGenInfo &, const TfToken &)";
    v93 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Generated MaterialX Document does not have 1 material");
    *a6 = 0;
    a6[1] = 0;
    goto LABEL_106;
  }

  v37 = *v57;
  v36 = v57[1];
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D7E50(v37, &v53);
  if (v53)
  {
    v38 = (*(*v53 + 64))(v53);
    v39 = strlen(off_2A14FDF10[0]);
    v40 = *(v38 + 23);
    if ((v40 & 0x8000000000000000) == 0)
    {
      if (v39 != v40)
      {
        goto LABEL_88;
      }

LABEL_74:
      if (!memcmp(v38, off_2A14FDF10[0], v39))
      {
        v51 = v53;
        v52 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29A008E78(v87, off_2A14FDEF0[0]);
        v41 = sub_29B1F31FC();
        sub_29B1ECB8C(&v51, v87, v41, &__p);
        if (v88 < 0)
        {
          operator delete(v87[0]);
        }

        if (v52)
        {
          sub_29A014BEC(v52);
        }

        if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
        {
          v42 = v36;
        }

        else
        {
          v37 = *__p.__r_.__value_.__l.__data_;
          v42 = *(__p.__r_.__value_.__r.__words[0] + 8);
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v36)
          {
            sub_29A014BEC(v36);
          }
        }

        v87[0] = &__p;
        sub_29A0176E4(v87);
        v36 = v42;
      }

      goto LABEL_88;
    }

    if (v39 == v38[1])
    {
      if (v39 == -1)
      {
        sub_29A0F26CC();
      }

      v38 = *v38;
      goto LABEL_74;
    }
  }

LABEL_88:
  v43 = *a1;
  v47 = 0;
  v48 = 0;
  sub_29B1D8824(v37, &v47, &__p);
  sub_29B1D8B48(v43, &__p, &v49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v48)
  {
    sub_29A014BEC(v48);
  }

  if (v49)
  {
    sub_29B1D7610(v49, &v45);
    if (v45)
    {
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29AE13940(&__p, v89);
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  __p.__r_.__value_.__r.__words[0] = "hdSt/materialXFilter.cpp";
  __p.__r_.__value_.__l.__size_ = "HdSt_GenMaterialXShader";
  __p.__r_.__value_.__r.__words[2] = 276;
  v92 = "mx::ShaderPtr pxrInternal__aapl__pxrReserved__::HdSt_GenMaterialXShader(const mx::DocumentPtr &, const mx::DocumentPtr &, const mx::FileSearchPath &, const HdSt_MxShaderGenInfo &, const TfToken &)";
  v93 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unable to generate a shader from the MaterialX Document");
  *a6 = 0;
  a6[1] = 0;
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  if (v50)
  {
    sub_29A014BEC(v50);
  }

  if (v54)
  {
    sub_29A014BEC(v54);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

LABEL_106:
  __p.__r_.__value_.__r.__words[0] = &v57;
  sub_29A0176E4(&__p);
  __p.__r_.__value_.__r.__words[0] = v64;
  sub_29A0176E4(&__p);
  sub_29AE1454C(v65);
  if (*(&v81 + 1))
  {
    sub_29A014BEC(*(&v81 + 1));
  }

  if (v85)
  {
    sub_29A014BEC(v85);
  }

  __p.__r_.__value_.__r.__words[0] = v86;
  sub_29AAC9380(&__p);
  return sub_29AE145D8(v89);
}

void sub_29AE0E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (v70)
  {
    sub_29A014BEC(v70);
  }

  STACK[0x210] = &a23;
  sub_29A0176E4(&STACK[0x210]);
  STACK[0x210] = &a30;
  sub_29A0176E4(&STACK[0x210]);
  sub_29AE1454C(&a33);
  if (a65)
  {
    sub_29A014BEC(a65);
  }

  if (a69)
  {
    sub_29A014BEC(a69);
  }

  a33 = &a70;
  sub_29AAC9380(&a33);
  sub_29AE145D8(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void sub_29AE0EA4C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void pxrInternal__aapl__pxrReserved__::_AddMaterialXParams(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v125 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
    v8 = a2 + 1;
    v9 = *a2;
    v94 = a3;
    if (*a2 != a2 + 1)
    {
      v10 = Instance;
      v11 = atomic_load(&qword_2A174EEC0);
      if (!v11)
      {
        v11 = sub_29AE175EC();
      }

      ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v10, (v9 + 5), v11);
      v13 = atomic_load(&qword_2A174EEC0);
      if (!v13)
      {
        v13 = sub_29AE175EC();
      }

      if ((*(v13 + 216) ^ ShaderNodeByIdentifierAndType[8]) <= 7)
      {
        v14 = atomic_load(&qword_2A174EEC0);
        if (!v14)
        {
          v14 = sub_29AE175EC();
        }

        if ((*(v14 + 2) ^ ShaderNodeByIdentifierAndType[8]) < 8)
        {
          goto LABEL_31;
        }

        v15 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v14);
        v16 = *v15;
        v17 = (ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
        sub_29AAC0094(v16, v17, &v110);
        v18 = v110;
        v19 = sub_29B1F31FC();
        sub_29B1C5CA8(v18, v19, &v115);
        v20 = v115;
        if (!v115)
        {
          goto LABEL_25;
        }

        v21 = sub_29B1F31FC();
        if (!sub_29AAC05D4(v20, v21))
        {
          goto LABEL_25;
        }

        sub_29B1D7FB0(v115, &v107);
        v22 = v107;
        v23 = atomic_load(&qword_2A174EEC0);
        if (!v23)
        {
          v23 = sub_29AE175EC();
        }

        if ((*(v23 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(v23 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
        }

        sub_29AAC1CE8(v22, EmptyString, &__p);
        v25 = *&__p.__r_.__value_.__l.__data_;
        v124.__r_.__value_.__r.__words[0] = &__p;
        sub_29A0176E4(&v124);
        if (v108)
        {
          sub_29A014BEC(v108);
        }

        if (v25 != *(&v25 + 1))
        {
          v26 = 1;
        }

        else
        {
LABEL_25:
          v26 = 0;
        }

        if (v116)
        {
          sub_29A014BEC(v116);
        }

        if (*(&v110 + 1))
        {
          sub_29A014BEC(*(&v110 + 1));
        }

        if (v26)
        {
LABEL_31:
          Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v9 + 4));
          v28 = Name;
          if (*(Name + 23) >= 0)
          {
            v29 = *(Name + 23);
          }

          else
          {
            v29 = Name[1];
          }

          sub_29A022DE0(&__p, v29 + 12);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (v29)
          {
            if (v28[23] >= 0)
            {
              v31 = v28;
            }

            else
            {
              v31 = *v28;
            }

            memmove(p_p, v31, v29);
          }

          strcpy(p_p + v29, "_primvarconn");
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v110);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v110 + 1);
          *(&v110 + 1) = 0;
          sub_29A2258F0(&v110, v9 + 8);
          sub_29A225948(&v110 + 1, v9 + 9);
          v32 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v115);
          if ((BYTE8(v110) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v110 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(&v110 + 1) = v115;
          sub_29A1E21F4(v32, &v110);
          sub_29A1E2240(&v115 + 1, &v110 + 1);
          v116 = *(&v110 + 1);
          if ((BYTE8(v110) & 7) != 0 && (atomic_fetch_add_explicit((*(&v110 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v116 &= 0xFFFFFFFFFFFFFFF8;
          }

          v107 = v94;
          sub_29AC44A08();
        }
      }

      v9 = *a2;
    }

    v106[1] = 0;
    v106[0] = 0;
    v105 = v106;
    if (v9 != v8)
    {
      do
      {
        v33 = v9[4];
        memset(&__p, 0, sizeof(__p));
        if (v33 != *a3)
        {
          v34 = sub_29A328A44(a4, v9 + 8);
          if (v34)
          {
            v35 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v34 + 3));
            v36 = v35;
            if (*(v35 + 23) >= 0)
            {
              v37 = *(v35 + 23);
            }

            else
            {
              v37 = v35[1];
            }

            sub_29A022DE0(&v110, v37 + 1);
            if (v111[0] >= 0)
            {
              v38 = &v110;
            }

            else
            {
              v38 = v110;
            }

            if (v37)
            {
              if (v36[23] >= 0)
              {
                v39 = v36;
              }

              else
              {
                v39 = *v36;
              }

              memmove(v38, v39, v37);
            }

            *(v38 + v37) = 95;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            *&__p.__r_.__value_.__l.__data_ = v110;
            __p.__r_.__value_.__r.__words[2] = v111[0];
          }
        }

        v40 = v9[6];
        if (v40 != v9 + 7)
        {
          do
          {
            if ((sub_29A1EFC10((v40 + 5)) & 1) == 0)
            {
              v41 = sub_29A1FA710((v40 + 5));
              if ((v41 & 1) == 0)
              {
                v42 = (v40[4] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v40[4] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
                pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__p.__r_.__value_.__l.__data_, v42, &v110);
                sub_29AE1817C(&v105, &v110, &v110, v40 + 5);
                if (SHIBYTE(v111[0]) < 0)
                {
                  operator delete(v110);
                }
              }
            }

            v43 = v40[1];
            if (v43)
            {
              do
              {
                v44 = v43;
                v43 = *v43;
              }

              while (v43);
            }

            else
            {
              do
              {
                v44 = v40[2];
                v45 = *v44 == v40;
                v40 = v44;
              }

              while (!v45);
            }

            v40 = v44;
          }

          while (v44 != v9 + 7);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v46 = v9[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v9[2];
            v45 = *v47 == v9;
            v9 = v47;
          }

          while (!v45);
        }

        v9 = v47;
      }

      while (v47 != v8);
    }

    v104[1] = 0;
    v104[0] = 0;
    v103 = v104;
    for (i = a4[2]; i; i = *i)
    {
      if (i[2] != *a3)
      {
        v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((i + 3));
        sub_29AE18334(&v103, v49, v49, i + 4);
      }
    }

    v50 = *a1;
    sub_29A008E78(&__p, off_2A14FE6F8);
    v51 = sub_29B22FF64(v50, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, off_2A14FE4F8[0]);
    v95 = sub_29B240AA0(v51, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v52 = v95[11];
    if (v95[12] != v52)
    {
      v53 = 0;
      v91 = *(MEMORY[0x29EDC9530] + 24);
      v92 = *MEMORY[0x29EDC9530];
      while (1)
      {
        v54 = *(v52 + 8 * v53);
        pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v54, &v115);
        pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(&v110);
        LODWORD(v110) = 0;
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p);
        if ((BYTE8(v110) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v110 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(&v110 + 1) = __p.__r_.__value_.__r.__words[0];
        v55 = sub_29A01BCCC(&v105, (v54 + 104));
        if (v106 == v55)
        {
          break;
        }

        if (v118 <= 4u && ((1 << v118) & 0x16) != 0)
        {
          sub_29A1854E8(v111, (v55 + 56));
        }

LABEL_153:
        if (v111[1])
        {
          sub_29AE10C54(a5, &v110);
        }

        if (v119 == 4)
        {
          if (*(v54 + 127) < 0)
          {
            sub_29A008D14(&__str, *(v54 + 104), *(v54 + 112));
          }

          else
          {
            __str = *(v54 + 104);
          }

          v89 = std::string::find(&__str, 95, 0);
          if (v89 != -1)
          {
            std::string::basic_string(&__p, &__str, 0, v89, &v107);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = __p;
          }

          v90 = sub_29A01BCCC(&v103, &__str.__r_.__value_.__l.__data_);
          if (v104 != v90)
          {
            if ((BYTE8(v110) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v110 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
            }

            __p.__r_.__value_.__r.__words[0] = (v90 + 7);
            sub_29AC44A08();
          }

          sub_29AE15704();
        }

        if (v114 < 0)
        {
          operator delete(v113);
        }

        __p.__r_.__value_.__r.__words[0] = &v112;
        sub_29A124AB0(&__p);
        sub_29A186B14(v111);
        if ((BYTE8(v110) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v110 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_29A0EB570(&v121);
        if (v117 < 0)
        {
          operator delete(v115);
        }

        ++v53;
        v52 = v95[11];
        if (v53 >= (v95[12] - v52) >> 3)
        {
          goto LABEL_175;
        }
      }

      v56 = v53;
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v57 = *(v54 + 128);
      v58 = *(v54 + 136);
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v57)
      {
        (*(*v57 + 32))(&v124);
      }

      else
      {
        memset(&v124, 0, sizeof(v124));
      }

      sub_29A5DB8D8(&__p, &v124, 8);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      if (v118 == 4)
      {
        if (v120 <= 2)
        {
          if (v120 == 1)
          {
            LODWORD(v122) = 0;
            MEMORY[0x29C2C1DB0](&__p, &v122);
            v124.__r_.__value_.__l.__size_ = &unk_2A2044C63;
            LODWORD(v124.__r_.__value_.__l.__data_) = v122;
            goto LABEL_141;
          }

          if (v120 == 2)
          {
            v64 = MEMORY[0x29C2C1DB0](&__p, &v122);
            v65 = sub_29A728B94(v64, &v107);
            MEMORY[0x29C2C1DB0](v65, &v122 + 4);
            v62 = v122;
            v63 = &off_2A2042618 + 3;
            goto LABEL_125;
          }

LABEL_146:
          __p.__r_.__value_.__r.__words[0] = v92;
          *(__p.__r_.__value_.__r.__words + *(v92 - 24)) = v91;
          __p.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9570] + 16;
          if (v101 < 0)
          {
            operator delete(v100[7].__locale_);
          }

          __p.__r_.__value_.__r.__words[2] = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v100);
          std::istream::~istream();
          MEMORY[0x29C2C4390](&v102);
          if (v58)
          {
            sub_29A014BEC(v58);
          }

          if (SHIBYTE(v109) < 0)
          {
            operator delete(v107);
          }

          v53 = v56;
          goto LABEL_153;
        }

        if (v120 != 3)
        {
          if (v120 != 4)
          {
            goto LABEL_146;
          }

          v73 = MEMORY[0x29C2C1DB0](&__p, &v124);
          v74 = sub_29A728B94(v73, &v107);
          v75 = MEMORY[0x29C2C1DB0](v74, v124.__r_.__value_.__r.__words + 4);
          v76 = sub_29A728B94(v75, &v107);
          v77 = MEMORY[0x29C2C1DB0](v76, &v124.__r_.__value_.__r.__words[1]);
          v78 = sub_29A728B94(v77, &v107);
          MEMORY[0x29C2C1DB0](v78, &v124.__r_.__value_.__r.__words[1] + 4);
          v123 = &off_2A2042A68 + 2;
          v72 = operator new(0x14uLL);
          goto LABEL_132;
        }

        v85 = MEMORY[0x29C2C1DB0](&__p, &v122);
        v86 = sub_29A728B94(v85, &v107);
        v87 = MEMORY[0x29C2C1DB0](v86, &v122 + 4);
        v88 = sub_29A728B94(v87, &v107);
        MEMORY[0x29C2C1DB0](v88, &v123);
        v124.__r_.__value_.__l.__size_ = &off_2A2042840 + 2;
        v84 = operator new(0x10uLL);
      }

      else
      {
        if (v118 != 2)
        {
          if (v118 == 1)
          {
            std::stringbuf::str();
            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              v59 = v124.__r_.__value_.__l.__size_ == 4 && *v124.__r_.__value_.__l.__data_ == 1702195828;
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            else
            {
              v59 = SHIBYTE(v124.__r_.__value_.__r.__words[2]) == 4 && LODWORD(v124.__r_.__value_.__l.__data_) == 1702195828;
            }

            v124.__r_.__value_.__l.__size_ = &unk_2A20443C3;
            v124.__r_.__value_.__s.__data_[0] = v59;
            sub_29A18606C(v111, &v124);
            sub_29A186B14(&v124);
          }

          goto LABEL_146;
        }

        if (v120 <= 2)
        {
          if (v120 == 1)
          {
            LODWORD(v122) = 0;
            MEMORY[0x29C2C1DC0](&__p, &v122);
            v124.__r_.__value_.__l.__size_ = &unk_2A204475B;
            LODWORD(v124.__r_.__value_.__l.__data_) = v122;
            goto LABEL_141;
          }

          if (v120 == 2)
          {
            v60 = MEMORY[0x29C2C1DC0](&__p, &v122);
            v61 = sub_29A728B94(v60, &v107);
            MEMORY[0x29C2C1DC0](v61, &v122 + 4);
            v62 = v122;
            v63 = &off_2A2047EE8 + 3;
LABEL_125:
            v124.__r_.__value_.__r.__words[0] = v62;
            v124.__r_.__value_.__l.__size_ = v63;
LABEL_141:
            sub_29A18606C(v111, &v124);
            v79 = &v124;
            goto LABEL_142;
          }

          goto LABEL_146;
        }

        if (v120 != 3)
        {
          if (v120 != 4)
          {
            goto LABEL_146;
          }

          v66 = MEMORY[0x29C2C1DC0](&__p, &v124);
          v67 = sub_29A728B94(v66, &v107);
          v68 = MEMORY[0x29C2C1DC0](v67, v124.__r_.__value_.__r.__words + 4);
          v69 = sub_29A728B94(v68, &v107);
          v70 = MEMORY[0x29C2C1DC0](v69, &v124.__r_.__value_.__r.__words[1]);
          v71 = sub_29A728B94(v70, &v107);
          MEMORY[0x29C2C1DC0](v71, &v124.__r_.__value_.__r.__words[1] + 4);
          v123 = &off_2A20481C8 + 2;
          v72 = operator new(0x14uLL);
LABEL_132:
          *v72 = *&v124.__r_.__value_.__l.__data_;
          atomic_store(0, v72 + 4);
          v122 = v72;
          atomic_fetch_add_explicit(v72 + 4, 1u, memory_order_relaxed);
          sub_29A18606C(v111, &v122);
          v79 = &v122;
LABEL_142:
          sub_29A186B14(v79);
          goto LABEL_146;
        }

        v80 = MEMORY[0x29C2C1DC0](&__p, &v122);
        v81 = sub_29A728B94(v80, &v107);
        v82 = MEMORY[0x29C2C1DC0](v81, &v122 + 4);
        v83 = sub_29A728B94(v82, &v107);
        MEMORY[0x29C2C1DC0](v83, &v123);
        v124.__r_.__value_.__l.__size_ = &off_2A2048058 + 2;
        v84 = operator new(0x10uLL);
      }

      *v84 = v122;
      v84[2] = v123;
      atomic_store(0, v84 + 3);
      v124.__r_.__value_.__r.__words[0] = v84;
      atomic_fetch_add_explicit(v84 + 3, 1u, memory_order_relaxed);
      goto LABEL_141;
    }

LABEL_175:
    sub_29AE182D8(&v103, v104[0]);
    sub_29A186C00(&v105, v106[0]);
  }
}

void sub_29AE107B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_29A5B0668(v42 - 168, *(v42 - 160));
  if (STACK[0x2A8])
  {
    sub_29A014BEC(STACK[0x2A8]);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a34)
  {
    sub_29A014BEC(a34);
  }

  if (STACK[0x2B8])
  {
    sub_29A014BEC(STACK[0x2B8]);
  }

  if (STACK[0x2C8])
  {
    sub_29A014BEC(STACK[0x2C8]);
  }

  if (STACK[0x2D8])
  {
    sub_29A014BEC(STACK[0x2D8]);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_29AE10CA0(&STACK[0x2E8]);
  sub_29AE10D0C(v42 - 256);
  sub_29AE182D8(&STACK[0x218], STACK[0x220]);
  sub_29A186C00(&STACK[0x230], STACK[0x238]);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE10C54(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AE1848C(a1, a2);
  }

  else
  {
    sub_29AE0D0AC(a1, a1[1], a2);
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AE10CA0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_29A124AB0(&v4);
  sub_29A186B14(a1 + 16);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AE10D0C(uint64_t a1)
{
  sub_29A0EB570(a1 + 48);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::_BuildEquivalentMaterialNetwork(uint64_t a1, uint64_t a2, void *a3)
{
  v84[2] = *MEMORY[0x29EDCA608];
  sub_29AE185D4(a3);
  v6 = atomic_load(&qword_2A174EEC0);
  if (!v6)
  {
    v6 = sub_29AE175EC();
  }

  if ((*(v6 + 26) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v6 + 26) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v81, EmptyString);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v8 = *(a1 + 24);
  v9 = (a1 + 32);
  if (v8 != (a1 + 32))
  {
    do
    {
      __p[0] = v8 + 5;
      sub_29A0A71C8(&v78, __p);
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
    for (i = v79; v78 != v79; i = v79)
    {
      v14 = *(i - 1);
      v79 = (i - 1);
      if (!sub_29A328A44(a3, v14))
      {
        sub_29A55CDFC(a1);
        std::to_string(&v72, 0);
        v15 = std::string::insert(&v72, 0, "N");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v76[0] = *(&v15->__r_.__value_.__l + 2);
        *__p = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v83);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v81, &v83, v84);
        v73.__r_.__value_.__r.__words[0] = v14;
        sub_29A55CB38(a3, v14, &unk_29B4D6118, &v73);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  if (a2 != a1)
  {
    sub_29A34AC54((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a2 + 72), (a1 + 72));
  v17 = *(a1 + 24);
  if (v17 != v9)
  {
    v72.__r_.__value_.__r.__words[0] = v17 + 40;
    v18 = sub_29A55CB38(a3, (v17 + 40), &unk_29B4D6118, &v72);
    sub_29A1E21F4(__p, v18 + 6);
    sub_29A1E2240(__p + 1, v18 + 7);
    v19 = *(v17 + 48);
    __p[1] = v19;
    if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __p[1] = (__p[1] & 0xFFFFFFFFFFFFFFF8);
    }

    sub_29AE18630();
  }

  v20 = *a1;
  if (*a1 != a1 + 8)
  {
    v76[0] = 0;
    v76[1] = 0;
    __p[0] = 0;
    __p[1] = v76;
    v77[0] = 0;
    v77[1] = 0;
    v76[2] = v77;
    sub_29A166F2C(__p, (v20 + 40));
    if ((atomic_load_explicit(&qword_2A174EEF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EEF8))
    {
      v37 = atomic_load(&qword_2A174EF00);
      if (!v37)
      {
        v37 = sub_29AE15A48();
      }

      v38 = *(v37 + 96);
      v39 = atomic_load(&qword_2A174EF00);
      if (!v39)
      {
        v39 = sub_29AE15A48();
      }

      sub_29AE15FD8(qword_2A174EED0, v38, *(v39 + 104), 0);
      __cxa_atexit(sub_29A657A90, qword_2A174EED0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174EEF8);
    }

    v21 = atomic_load(&qword_2A174EF00);
    if (!v21)
    {
      v21 = sub_29AE15A48();
    }

    if ((*v21 ^ *(v20 + 40)) < 8)
    {
      goto LABEL_33;
    }

    Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v21);
    v23 = atomic_load(&qword_2A174EEC0);
    if (!v23)
    {
      v23 = sub_29AE175EC();
    }

    ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(Instance, (v20 + 40), v23);
    if (ShaderNodeByIdentifierAndType && (ShaderNodeByIdentifierAndType = sub_29A16039C(qword_2A174EED0, ShaderNodeByIdentifierAndType + 8)) != 0)
    {
LABEL_33:
      if (&__p[1] != (v20 + 48))
      {
        sub_29AC44B28(&__p[1], *(v20 + 48), (v20 + 56));
      }
    }

    else
    {
      v25 = *(v20 + 48);
      if (v25 != (v20 + 56))
      {
        do
        {
          if ((v25[4] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v26 = ((v25[4] & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ShaderNodeByIdentifierAndType);
          }

          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v27)
          {
            v27 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v27 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v28 = ((*(v27 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
          }

          pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(v26, v28, &v73);
          if (v74 == 1)
          {
            sub_29AE18740();
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          v29 = v25[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v25[2];
              v12 = *v30 == v25;
              v25 = v30;
            }

            while (!v12);
          }

          v25 = v30;
        }

        while (v30 != (v20 + 56));
      }
    }

    v31 = *(v20 + 72);
    if (v31 != v20 + 80)
    {
      memset(&v72, 0, sizeof(v72));
      v33 = *(v31 + 40);
      v32 = *(v31 + 48);
      while (v33 != v32)
      {
        v84[0] = v33;
        v34 = sub_29A55CB38(a3, v33, &unk_29B4D6118, v84);
        sub_29A1E21F4(&v73, v34 + 6);
        sub_29A1E2240(v73.__r_.__value_.__r.__words + 1, v34 + 7);
        v35 = *(v33 + 8);
        v73.__r_.__value_.__l.__size_ = v35;
        if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v73.__r_.__value_.__l.__size_ &= 0xFFFFFFFFFFFFFFF8;
        }

        size = v72.__r_.__value_.__l.__size_;
        if (v72.__r_.__value_.__l.__size_ >= v72.__r_.__value_.__r.__words[2])
        {
          v72.__r_.__value_.__l.__size_ = sub_29AC44FB0(&v72, &v73);
          if ((v73.__r_.__value_.__s.__data_[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((v73.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          sub_29A1DDD84(v72.__r_.__value_.__l.__size_, &v73);
          sub_29A1DDDC0((size + 4), v73.__r_.__value_.__r.__words + 1);
          *(size + 8) = v73.__r_.__value_.__l.__size_;
          v73.__r_.__value_.__l.__size_ = 0;
          v72.__r_.__value_.__l.__size_ = size + 16;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v73.__r_.__value_.__r.__words + 1);
        sub_29A1DE3A4(&v73);
        v33 += 16;
      }

      sub_29AE1894C();
    }

    v72.__r_.__value_.__r.__words[0] = v20 + 32;
    sub_29A55CB38(a3, (v20 + 32), &unk_29B4D6118, &v72);
    sub_29AE189E4();
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  v40 = *(a2 + 24);
  if (v40 != (a2 + 32))
  {
    do
    {
      v41 = (v40[4] & 0xFFFFFFFFFFFFFFF8);
      if (__p[1])
      {
        v41 += (__p[0] + v41 + (__p[0] + v41) * (__p[0] + v41)) >> 1;
      }

      else
      {
        LOBYTE(__p[1]) = 1;
      }

      __p[0] = v41;
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v40 + 5));
      v43 = *(Name + 23);
      if (v43 >= 0)
      {
        v44 = Name;
      }

      else
      {
        v44 = *Name;
      }

      if (v43 >= 0)
      {
        v45 = *(Name + 23);
      }

      else
      {
        v45 = Name[1];
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v44, v45);
      v46 = v40[1];
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = v40[2];
          v12 = *v47 == v40;
          v40 = v47;
        }

        while (!v12);
      }

      v40 = v47;
    }

    while (v47 != (a2 + 32));
  }

  v50 = *a2;
  v49 = (a2 + 8);
  v48 = v50;
  if (v50 == v49)
  {
    v55 = __p[0];
  }

  else
  {
    do
    {
      v51 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v48 + 4));
      v52 = *(v51 + 23);
      if (v52 >= 0)
      {
        v53 = v51;
      }

      else
      {
        v53 = *v51;
      }

      if (v52 >= 0)
      {
        v54 = *(v51 + 23);
      }

      else
      {
        v54 = v51[1];
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v53, v54);
      v55 = v48[5] & 0xFFFFFFFFFFFFFFF8;
      if (__p[1])
      {
        v55 += (__p[0] + v55 + (__p[0] + v55) * (__p[0] + v55)) >> 1;
      }

      else
      {
        LOBYTE(__p[1]) = 1;
      }

      __p[0] = v55;
      v56 = v48[6];
      if (v56 != v48 + 7)
      {
        do
        {
          __p[0] = ((v56[4] & 0xFFFFFFFFFFFFFFF8) + ((v55 + (v56[4] & 0xFFFFFFFFFFFFFFF8) + (v55 + (v56[4] & 0xFFFFFFFFFFFFFFF8)) * (v55 + (v56[4] & 0xFFFFFFFFFFFFFFF8))) >> 1));
          Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v56 + 5));
          v55 = Hash;
          if (__p[1])
          {
            v55 = Hash + ((__p[0] + Hash + (__p[0] + Hash) * (__p[0] + Hash)) >> 1);
          }

          else
          {
            LOBYTE(__p[1]) = 1;
          }

          __p[0] = v55;
          v58 = v56[1];
          if (v58)
          {
            do
            {
              v59 = v58;
              v58 = *v58;
            }

            while (v58);
          }

          else
          {
            do
            {
              v59 = v56[2];
              v12 = *v59 == v56;
              v56 = v59;
            }

            while (!v12);
          }

          v56 = v59;
        }

        while (v59 != v48 + 7);
      }

      v60 = v48[9];
      if (v60 != v48 + 10)
      {
        do
        {
          v61 = v60[5];
          v55 = (v60[4] & 0xFFFFFFFFFFFFFFF8) + ((v55 + (v60[4] & 0xFFFFFFFFFFFFFFF8) + (v55 + (v60[4] & 0xFFFFFFFFFFFFFFF8)) * (v55 + (v60[4] & 0xFFFFFFFFFFFFFFF8))) >> 1);
          __p[0] = v55;
          v62 = v60[6];
          while (v61 != v62)
          {
            v63 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v61);
            v64 = *(v63 + 23);
            if (v64 >= 0)
            {
              v65 = v63;
            }

            else
            {
              v65 = *v63;
            }

            if (v64 >= 0)
            {
              v66 = *(v63 + 23);
            }

            else
            {
              v66 = v63[1];
            }

            pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(__p, v65, v66);
            v55 = *(v61 + 1) & 0xFFFFFFFFFFFFFFF8;
            if (__p[1])
            {
              v55 += (__p[0] + v55 + (__p[0] + v55) * (__p[0] + v55)) >> 1;
            }

            else
            {
              LOBYTE(__p[1]) = 1;
            }

            __p[0] = v55;
            v61 = (v61 + 16);
          }

          v67 = v60[1];
          if (v67)
          {
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67);
          }

          else
          {
            do
            {
              v68 = v60[2];
              v12 = *v68 == v60;
              v60 = v68;
            }

            while (!v12);
          }

          v60 = v68;
        }

        while (v68 != v48 + 10);
      }

      v69 = v48[1];
      if (v69)
      {
        do
        {
          v70 = v69;
          v69 = *v69;
        }

        while (v69);
      }

      else
      {
        do
        {
          v70 = v48[2];
          v12 = *v70 == v48;
          v48 = v70;
        }

        while (!v12);
      }

      v48 = v70;
    }

    while (v70 != v49);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v82);
  sub_29A1DE3A4(&v81);
  return bswap64(0x9E3779B97F4A7C55 * v55);
}