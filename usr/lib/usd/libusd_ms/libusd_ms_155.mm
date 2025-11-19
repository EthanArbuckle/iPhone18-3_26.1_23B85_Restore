BOOL pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(atomic_uint **this)
{
  if (!pxrInternal__aapl__pxrReserved__::HdMeshTopology::IsEnabledAdaptive(this) && *(this + 136) != 1)
  {
    return 0;
  }

  v3 = this[1];
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToBoxSplineTrianglePatches(&v6, v2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdTopologyComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = *(this + 71);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    a3[1] = v7;
    if (v7)
    {
      v8 = *(this + 70);
      *a3 = v8;
      if (v8)
      {
        return;
      }

      sub_29A014BEC(v7);
    }
  }

  if (!*(this + 69) || (sub_29B2C8ED4(v16, a3) & 1) != 0)
  {
    v9 = pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(this) || pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(this);
    v10 = operator new(0xB8uLL);
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::HdSt_Subdivision(v10, v9, *(this + 122));
    sub_29ADDFA38(this + 69, v10);
    if (*(this + 69) || (v14[0] = "hdSt/meshTopology.cpp", v14[1] = "GetOsdTopologyComputation", v14[2] = 300, v14[3] = "HdBufferSourceSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdTopologyComputation(const SdfPath &)", v15 = 0, pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "_subdivision", 0)))
    {
      pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateTopologyComputation(this, a2, a3);
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
      }

      *(this + 70) = v12;
      v13 = *(this + 71);
      *(this + 71) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

uint64_t sub_29ADDD50C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ADE0638(a1, a2);
  }

  else
  {
    sub_29AC53244(a1, a1[1], a2);
    result = v3 + 64;
    a1[1] = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdBaseFaceToRefinedFacesMapComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = *(this + 73);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    a3[1] = v7;
    if (v7)
    {
      v8 = *(this + 72);
      *a3 = v8;
      if (v8)
      {
        return;
      }

      sub_29A014BEC(v7);
    }
  }

  if (*(this + 69) || (sub_29B2C8F40(v15, a3) & 1) != 0)
  {
    v13 = 0;
    v14 = 0;
    v9 = *(this + 71);
    if (v9)
    {
      v14 = std::__shared_weak_count::lock(v9);
      if (v14)
      {
        v13 = *(this + 70);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateBaseFaceToRefinedFacesMapComputation(*(this + 69), &v13, a3);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(a2, a3);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    }

    *(this + 72) = v11;
    v12 = *(this + 73);
    *(this + 73) = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }
}

void sub_29ADDD658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetIndexSubsetComputation@<D0>(void *a1@<X1>, void *a2@<X2>, _OWORD *a3@<X8>)
{
  sub_29ADE074C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetRefinedIndexSubsetComputation(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = 0;
  v11 = 0;
  v8 = *(a1 + 584);
  if (v8)
  {
    v11 = std::__shared_weak_count::lock(v8);
    if (v11)
    {
      v10 = *(a1 + 576);
    }
  }

  sub_29ADE0964(a2, a3, &v10, &v9);
  *a4 = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29ADDD748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetGeomSubsetFaceIndexHelperComputation@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  result = operator new(0x58uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A2093BE8;
  *(result + 8) = 0;
  result[5] = 0;
  result[6] = 0;
  result[3] = &unk_2A20937C0;
  result[7] = this;
  *(result + 64) = a2;
  *(result + 65) = a3;
  result[9] = 0;
  result[10] = 0;
  *a4 = result + 3;
  a4[1] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetGeomSubsetFaceIndexBuilderComputation@<D0>(void *a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  sub_29ADE0BBC(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdIndexBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, _OWORD *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v4 = *(this + 71);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v5 = *(this + 70);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateIndexComputation(this, &v5, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ADDD8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdFvarIndexBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v7 = 0;
  v8 = 0;
  v6 = *(this + 71);
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v7 = *(this + 70);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateFvarIndexComputation(this, &v7, a2, a3);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ADDD934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdRefineComputation(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a1[3])
  {
    if (a1[69] || (sub_29B2C8FAC(v12, a2, a4) & 1) != 0)
    {
      v10 = 0;
      v11 = 0;
      v8 = a1[71];
      if (v8)
      {
        v11 = std::__shared_weak_count::lock(v8);
        if (v11)
        {
          v10 = a1[70];
        }
      }

      pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateRefineComputationCPU(a1, a2, &v10, a3, 0, a4);
      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }
  }

  else
  {
    v9 = a2[1];
    *a4 = *a2;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29ADDDA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetOsdRefineComputationGPU(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t *a6@<X8>)
{
  if (a1[3])
  {
    if (a1[69] || (sub_29B2C9064(v15, a6) & 1) != 0)
    {
      v13 = 0;
      v14 = 0;
      v12 = a1[71];
      if (v12)
      {
        v14 = std::__shared_weak_count::lock(v12);
        if (v14)
        {
          v13 = a1[70];
        }
      }

      pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::CreateRefineComputationGPU(a1[69], a1, &v13, a2, a3, a4, a5, a6);
      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
  }
}

void sub_29ADDDB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::HdSt_IndexSubsetComputation(uint64_t result, void *a2, void *a3, void *a4)
{
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *result = &unk_2A20936C0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v4 = a2[1];
  *(result + 56) = *a2;
  *(result + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  *(result + 72) = *a3;
  *(result + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  *(result + 88) = *a4;
  *(result + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation *this)
{
  v2 = *(this + 7);
  if (!v2 || (v3 = atomic_load((v2 + 8)), v3 >= 2))
  {
    v4 = *(this + 9);
    if (!v4 || (v5 = atomic_load((v4 + 8)), v5 >= 2))
    {
      v6 = *(this + 11);
      if (!v6 || (v7 = atomic_load((v6 + 8)), v7 >= 2))
      {
        v8 = 0;
        atomic_compare_exchange_strong(this + 2, &v8, 1u);
        if (!v8)
        {
          __dst = 0;
          memset(v23, 0, sizeof(v23));
          v9 = *(this + 9);
          if (v9)
          {
            v10 = (*(*v9 + 48))(v9);
            v11 = (*(**(this + 9) + 64))(*(this + 9));
            LODWORD(v25) = 0;
            *&v21[0] = &v25;
            sub_29A19D7EC(v23, v11, v21);
            sub_29A19DBEC(v23);
            memcpy(__dst, v10, 4 * v11);
          }

          v12 = *(this + 11);
          if (v12)
          {
            v13 = (*(*v12 + 48))(v12);
            (*(**(this + 11) + 96))(v21);
            v14 = (*(***&v21[0] + 48))();
            v25 = v21;
            sub_29A0176E4(&v25);
            v22 = 0;
            memset(v21, 0, sizeof(v21));
            if (*&v23[0])
            {
              v15 = 0;
              do
              {
                sub_29A19DBEC(v23);
                if (*(__dst + v15))
                {
                  sub_29A19DBEC(v23);
                  v16 = *(v14 - 4 + 4 * *(__dst + v15));
                }

                else
                {
                  v16 = 0;
                }

                sub_29A19DBEC(v23);
                v17 = *(v14 + 4 * *(__dst + v15));
                v18 = v17 - v16;
                if (v17 > v16)
                {
                  v19 = (v13 + 4 * v16);
                  do
                  {
                    sub_29A7ACEC4(v21, v19++);
                    --v18;
                  }

                  while (v18);
                }

                ++v15;
              }

              while (v15 < *&v23[0]);
            }

            sub_29A27CF04(v23, v21);
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_ResolveIndices(this, v23);
          pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_PopulateChainedBuffers(this, v23);
          sub_29AD1019C(this);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }
      }
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_ResolveIndices(uint64_t a1, unint64_t *a2)
{
  v46[2] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = (*(**(a1 + 56) + 48))(*(a1 + 56));
  v6 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  v43 = v7;
  v46[1] = 0;
  switch(v6)
  {
    case 8:
      sub_29A21DF14(&v40, v4);
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v39 = *(v5 + 16 * *(a2[4] + 4 * i));
          sub_29A21E784(&v40);
          *(v42 + 16 * i) = v39;
        }
      }

      v45 = &off_2A2048280;
      v28 = operator new(0x30uLL);
      v29 = v41;
      *v28 = v40;
      *(v28 + 1) = v29;
      v30 = v42;
      *(v28 + 4) = v42;
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
      v44 = v28;
      atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v46, &v44);
      sub_29A186B14(&v44);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    case 7:
      sub_29A21BE0C(&v40, v4);
      if (v4)
      {
        v17 = 0;
        for (j = 0; j != v4; ++j)
        {
          v19 = v5 + 12 * *(a2[4] + 4 * j);
          v20 = *v19;
          v21 = *(v19 + 8);
          sub_29A21C6E0(&v40);
          v22 = v42 + v17;
          *v22 = v20;
          *(v22 + 8) = v21;
          v17 += 12;
        }
      }

      v45 = &off_2A2048110;
      v23 = operator new(0x30uLL);
      v24 = v41;
      *v23 = v40;
      *(v23 + 1) = v24;
      v25 = v42;
      *(v23 + 4) = v42;
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
      v44 = v23;
      atomic_fetch_add_explicit(v23 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v46, &v44);
      sub_29A186B14(&v44);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    case 5:
      v8 = v7;
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      sub_29A7A8F90(&v40, v7 * v4);
      if (v4)
      {
        v9 = 0;
        v10 = v8;
        do
        {
          if (v10)
          {
            v11 = 0;
            v12 = (v5 + 4 * v8 * *(a2[4] + 4 * v9));
            do
            {
              sub_29A7ACEC4(&v40, v12);
              ++v11;
              ++v12;
            }

            while (v11 < v8);
            v10 = v8;
          }

          ++v9;
        }

        while (v9 != v4);
      }

      v45 = &off_2A2043D18;
      v13 = operator new(0x30uLL);
      v14 = v41;
      *v13 = v40;
      *(v13 + 1) = v14;
      v15 = v42;
      *(v13 + 4) = v42;
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
      v44 = v13;
      atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v46, &v44);
      sub_29A186B14(&v44);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  *&v40 = "hdSt/meshTopology.cpp";
  *(&v40 + 1) = "_ResolveIndices";
  *&v41 = 644;
  *(&v41 + 1) = "void pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_ResolveIndices(const VtIntArray &)";
  LOBYTE(v42) = 0;
  v33 = *(*(**(a1 + 56) + 16))(*(a1 + 56)) & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v40, "%s indices type not supported", v32, v34);
  v35 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  sub_29ADE0E24(v35, v46, &v43, &v40);
  v36 = v40;
  v40 = 0uLL;
  if (*(&v36 + 1))
  {
    atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v37 = *(a1 + 24);
  *(a1 + 16) = v36;
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (*(&v36 + 1))
  {
    sub_29A014BEC(*(&v36 + 1));
  }

  if (*(&v40 + 1))
  {
    sub_29A014BEC(*(&v40 + 1));
  }

  return sub_29A186B14(v46);
}

void sub_29ADDE348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_PopulateChainedBuffers(uint64_t a1, unint64_t *a2)
{
  v51[2] = *MEMORY[0x29EDCA608];
  if ((*(**(a1 + 56) + 88))(*(a1 + 56)))
  {
    v4 = *a2;
    (*(**(a1 + 56) + 96))(&v48);
    v5 = v48;
    for (i = v49; v5 != i; v5 += 2)
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v7 + 48))(v7);
      v9 = (*(*v7 + 56))(v7);
      v51[1] = 0;
      if (v9 > 6)
      {
        if (v9 == 7)
        {
          sub_29A21BE0C(&v45, v4);
          if (v4)
          {
            v32 = 0;
            for (j = 0; j != v4; ++j)
            {
              v34 = v8 + 12 * *(a2[4] + 4 * j);
              v35 = *v34;
              v36 = *(v34 + 8);
              sub_29A21C6E0(&v45);
              v37 = v47 + v32;
              *v37 = v35;
              *(v37 + 8) = v36;
              v32 += 12;
            }
          }

          *(&v50 + 1) = &off_2A2048110;
          v38 = operator new(0x30uLL);
          v39 = v46;
          *v38 = v45;
          *(v38 + 1) = v39;
          v40 = v47;
          *(v38 + 4) = v47;
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
          *&v50 = v38;
          atomic_fetch_add_explicit(v38 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(v51, &v50);
          sub_29A186B14(&v50);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
        }

        if (v9 == 8)
        {
          sub_29A21DF14(&v45, v4);
          if (v4)
          {
            for (k = 0; k != v4; ++k)
            {
              v44 = *(v8 + 16 * *(a2[4] + 4 * k));
              sub_29A21E784(&v45);
              *(v47 + 16 * k) = v44;
            }
          }

          *(&v50 + 1) = &off_2A2048280;
          v19 = operator new(0x30uLL);
          v20 = v46;
          *v19 = v45;
          *(v19 + 1) = v20;
          v21 = v47;
          *(v19 + 4) = v47;
          if (v21)
          {
            v22 = (v21 - 16);
            if (*(v19 + 3))
            {
              v22 = *(v19 + 3);
            }

            atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
          }

          atomic_store(0, v19 + 10);
          *&v50 = v19;
          atomic_fetch_add_explicit(v19 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(v51, &v50);
          sub_29A186B14(&v50);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
        }
      }

      else
      {
        if (v9 == 5)
        {
          sub_29A19D6E4(&v45, v4);
          if (v4)
          {
            for (m = 0; m != v4; ++m)
            {
              v27 = *(v8 + 4 * *(a2[4] + 4 * m));
              sub_29A19DBEC(&v45);
              *(v47 + 4 * m) = v27;
            }
          }

          *(&v50 + 1) = &off_2A2043D18;
          v28 = operator new(0x30uLL);
          v29 = v46;
          *v28 = v45;
          *(v28 + 1) = v29;
          v30 = v47;
          *(v28 + 4) = v47;
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
          *&v50 = v28;
          atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(v51, &v50);
          sub_29A186B14(&v50);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }

        if (v9 == 6)
        {
          sub_29A219F48(&v45, v4);
          if (v4)
          {
            for (n = 0; n != v4; ++n)
            {
              v11 = (v8 + 8 * *(a2[4] + 4 * n));
              v13 = *v11;
              v12 = v11[1];
              sub_29A21A6E8(&v45);
              *(v47 + 8 * n) = v13 | (v12 << 32);
            }
          }

          *(&v50 + 1) = &off_2A2047FA0;
          v14 = operator new(0x30uLL);
          v15 = v46;
          *v14 = v45;
          *(v14 + 1) = v15;
          v16 = v47;
          *(v14 + 4) = v47;
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
          *&v50 = v14;
          atomic_fetch_add_explicit(v14 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(v51, &v50);
          sub_29A186B14(&v50);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
        }
      }

      *&v45 = "hdSt/meshTopology.cpp";
      *(&v45 + 1) = "_PopulateChainedBuffers";
      *&v46 = 721;
      *(&v46 + 1) = "void pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::_PopulateChainedBuffers(const VtIntArray &)";
      LOBYTE(v47) = 0;
      v24 = *(*(*v7 + 16))(v7) & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v45, "Chained buffer %s type not supported", v23, v25);
      v42 = (*(*v7 + 16))(v7);
      sub_29ADE0EFC(v42, v51, &v50);
      v45 = v50;
      sub_29A017F80((a1 + 32), &v45);
      if (*(&v45 + 1))
      {
        sub_29A014BEC(*(&v45 + 1));
      }

      sub_29A186B14(v51);
      if (v6)
      {
        sub_29A014BEC(v6);
      }
    }

    *&v45 = &v48;
    sub_29A0176E4(&v45);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::GetChainedBuffers@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29ADE0D9C(a2, *(this + 4), *(this + 5), (*(this + 5) - *(this + 4)) >> 4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation::HdSt_GeomSubsetFaceIndexBuilderComputation(uint64_t result, void *a2, uint64_t a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2A2093740;
  v3 = a2[1];
  *(result + 32) = *a2;
  *(result + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 16);
  *(result + 48) = *a3;
  *(result + 64) = v4;
  v5 = *(a3 + 32);
  *(result + 80) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(result + 72))
    {
      v6 = *(result + 72);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v3)
  {
    v3 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  LODWORD(v8) = 5;
  *(&v8 + 1) = 1;
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v3 + 17, &v8);
  }

  else
  {
    v5 = v8;
    v6 = *(v3 + 17);
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation *this)
{
  v25[2] = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (!v2 || (v3 = atomic_load((v2 + 8)), v3 >= 2))
  {
    v4 = 0;
    atomic_compare_exchange_strong(this + 2, &v4, 1u);
    if (!v4)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v5 = *(this + 4);
      if (v5)
      {
        v6 = (*(*v5 + 48))(v5);
        (*(**(this + 4) + 96))(&v20);
        v7 = (*(**v20 + 48))();
        v25[0] = &v20;
        sub_29A0176E4(v25);
        if (*(this + 6))
        {
          v8 = 0;
          do
          {
            sub_29A19DBEC(this + 48);
            v9 = *(*(this + 10) + 4 * v8);
            if (*(v6 + 4 * v9) >= 1)
            {
              v10 = 0;
              do
              {
                LODWORD(v20) = v10 + *(v7 + 4 * v9);
                sub_29A7ACA64(&v22, &v20);
                ++v10;
              }

              while (v10 < *(v6 + 4 * v9));
            }

            ++v8;
          }

          while (v8 < *(this + 6));
        }
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      if (!v11)
      {
        v11 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
      }

      v25[1] = &off_2A2043D18;
      v12 = operator new(0x30uLL);
      v13 = v23;
      *v12 = v22;
      *(v12 + 1) = v13;
      v14 = v24;
      *(v12 + 4) = v24;
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
      v25[0] = v12;
      atomic_fetch_add_explicit(v12 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v11 + 136), v25, &v20);
      v16 = v20;
      v17 = v21;
      v20 = 0;
      v21 = 0;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(this + 3);
      *(this + 2) = v16;
      *(this + 3) = v17;
      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if (v17)
      {
        sub_29A014BEC(v17);
      }

      if (v21)
      {
        sub_29A014BEC(v21);
      }

      sub_29A186B14(v25);
      sub_29AD1019C(this);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation::HdSt_GeomSubsetFaceIndexHelperComputation(uint64_t this, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *a2, char a3, char a4)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = &unk_2A20937C0;
  *(this + 32) = a2;
  *(this + 40) = a3;
  *(this + 41) = a4;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = &unk_2A20937C0;
  *(this + 32) = a2;
  *(this + 40) = a3;
  *(this + 41) = a4;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v3)
  {
    v3 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  LODWORD(v13) = 5;
  *(&v13 + 1) = 1;
  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v7 = sub_29AD9CC10(a2, v3 + 18, &v13);
  }

  else
  {
    v5 = v13;
    v6 = *(v3 + 18);
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
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v8)
  {
    v8 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  LODWORD(v13) = 5;
  *(&v13 + 1) = 1;
  v9 = a2[1];
  if (v9 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v8 + 19, &v13);
  }

  else
  {
    v10 = v13;
    v11 = *(v8 + 19);
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation *this)
{
  v1 = 0;
  v37 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  if (!v1)
  {
    v4 = (this + 32);
    v3 = *(this + 4);
    NumFaces = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(v3);
    sub_29A19D6E4(v33, NumFaces);
    v6 = *v4;
    v7 = 0;
    v8 = 0;
    if (*(this + 41))
    {
      for (i = v6; v7 < pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(i); i = *(this + 4))
      {
        if (v8 < *(v6 + 13) && v7 == *(*(v6 + 17) + 4 * v8))
        {
          sub_29A19DBEC(v33);
          *(v34 + 4 * v7) = 0;
          ++v8;
        }

        else
        {
          v10 = *(*(v3 + 7) + 4 * v7);
          sub_29A19DBEC(v33);
          if (v10 == 4)
          {
            *(v34 + 4 * v7) = 1;
          }

          else
          {
            *(v34 + 4 * v7) = v10;
          }
        }

        ++v7;
      }
    }

    else
    {
      for (j = v6; v7 < pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(j); j = *(this + 4))
      {
        if (v8 < *(v6 + 13) && v7 == *(*(v6 + 17) + 4 * v8))
        {
          sub_29A19DBEC(v33);
          *(v34 + 4 * v7) = 0;
          ++v8;
        }

        else
        {
          v12 = *(*(v3 + 7) + 4 * v7);
          sub_29A19DBEC(v33);
          *(v34 + 4 * v7) = v12 - 2;
        }

        ++v7;
      }
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v13)
    {
      v13 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v36 = &off_2A2043D18;
    v14 = operator new(0x30uLL);
    v15 = v33[1];
    *v14 = v33[0];
    *(v14 + 1) = v15;
    v16 = v34;
    *(v14 + 4) = v34;
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
    v35 = v14;
    atomic_fetch_add_explicit(v14 + 10, 1u, memory_order_relaxed);
    sub_29AD9CD3C((v13 + 144), &v35, v31);
    v18 = v31[0];
    v31[0] = 0uLL;
    if (*(&v18 + 1))
    {
      atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(this + 3);
    *(this + 1) = v18;
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (*(&v31[0] + 1))
    {
      sub_29A014BEC(*(&v31[0] + 1));
    }

    sub_29A186B14(&v35);
    v20 = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(*(this + 4));
    sub_29A19D6E4(v31, v20);
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (v21 >= pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(*(this + 4)))
      {
        v24 = operator new(0x40uLL);
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v25)
        {
          v25 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v36 = &off_2A2043D18;
        v26 = operator new(0x30uLL);
        v27 = v31[1];
        *v26 = v31[0];
        *(v26 + 1) = v27;
        v28 = v32;
        *(v26 + 4) = v32;
        if (v28)
        {
          v29 = (v28 - 16);
          if (*(v26 + 3))
          {
            v29 = *(v26 + 3);
          }

          atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v26 + 10);
        v35 = v26;
        atomic_fetch_add_explicit(v26 + 10, 1u, memory_order_relaxed);
        pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v24, (v25 + 152), &v35, 1, 1);
        sub_29AD9C9B0(this + 6, v24);
        sub_29A186B14(&v35);
        sub_29AD1019C(this);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      sub_29A19DBEC(v31);
      *(v32 + 4 * v21) = v22;
      if (*(this + 40) != 1)
      {
        break;
      }

      sub_29A19DBEC(v33);
      if (*(v34 + 4 * v21))
      {
        break;
      }

      v23 = *(*(v3 + 7) + 4 * v21);
      if (*(this + 41) == 1)
      {
        if (v23 != 4)
        {
          goto LABEL_39;
        }

        ++v22;
      }

      else
      {
        v22 = v22 + v23 - 2;
      }

LABEL_40:
      ++v21;
    }

    sub_29A19DBEC(v33);
    v23 = *(v34 + 4 * v21);
LABEL_39:
    v22 += v23;
    goto LABEL_40;
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexHelperComputation *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = *(this + 7);
  v5 = *(this + 6);
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

void sub_29ADDF588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADDF5A8(uint64_t a1)
{
  *a1 = &unk_2A20936C0;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v6 = (a1 + 32);
  sub_29A0176E4(&v6);
  *a1 = &unk_2A2075F38;
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29ADDF650(uint64_t a1)
{
  *a1 = &unk_2A20936C0;
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v7 = (a1 + 32);
  sub_29A0176E4(&v7);
  *a1 = &unk_2A2075F38;
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
  operator delete(v6);
}

void sub_29ADDF818(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A20937C0;
  v2 = *(this + 7);
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

void sub_29ADDF89C(pxrInternal__aapl__pxrReserved__::HdBufferSource *this)
{
  *this = &unk_2A20937C0;
  v2 = *(this + 7);
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

void *sub_29ADDF924(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20938A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ADDF97C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::~HdSt_MeshTopology(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADDF99C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *sub_29ADDF9C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::~HdSt_MeshTopology(result);
  }

  return result;
}

uint64_t sub_29ADDF9F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20938F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ADDFA38(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision **a1, pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::~HdSt_Subdivision(v3);

    operator delete(v4);
  }
}

void sub_29ADDFA74(int a1, void *__p)
{
  if (__p)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      __p[3] = v4;
      operator delete(v4);
    }

    operator delete(__p);
  }
}

void *sub_29ADDFAD0@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x68uLL);
  result = sub_29ADDFB34(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADDFB34(void *a1, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093918;
  pxrInternal__aapl__pxrReserved__::HdSt_TriangleIndexBuilderComputation::HdSt_TriangleIndexBuilderComputation((a1 + 3), *a2, a3);
  return a1;
}

void sub_29ADDFBB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADDFC20@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  result = sub_29ADDFC84(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADDFC84(void *a1, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093968;
  pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation::HdSt_QuadInfoBuilderComputation((a1 + 3), *a2, a3);
  return a1;
}

void sub_29ADDFD04(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADDFD70@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29ADDFDD4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADDFDD4(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20939B8;
  sub_29ADDFED4(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_29ADDFE68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20939B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADDFED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = a4[1];
  v7 = *a4;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::HdSt_QuadrangulateTableComputation(a2, v5, &v7);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ADDFF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ADDFF44@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x78uLL);
  result = sub_29ADDFFB8(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ADDFFB8(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093A08;
  pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation::HdSt_QuadIndexBuilderComputation(a1 + 3, *a2);
  return a1;
}

void sub_29ADE0038(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADE00A4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x68uLL);
  result = sub_29ADE0120(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ADE0120(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093A58;
  pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation::HdSt_QuadrangulateComputation(a1 + 3, *a2);
  return a1;
}

void sub_29ADE01A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADE020C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  result = sub_29ADE0288(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29ADE0288(void *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093AA8;
  pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::HdSt_QuadrangulateComputationGPU(a1 + 3, *a2, a3, *a4);
  return a1;
}

void sub_29ADE030C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADE0378@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x58uLL);
  result = sub_29ADE03EC(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ADE03EC(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093AF8;
  pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateFaceVaryingComputation::HdSt_QuadrangulateFaceVaryingComputation(a1 + 3, *a2);
  return a1;
}

void sub_29ADE046C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADE04D8@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x58uLL);
  result = sub_29ADE054C(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ADE054C(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093B48;
  pxrInternal__aapl__pxrReserved__::HdSt_TriangulateFaceVaryingComputation::HdSt_TriangulateFaceVaryingComputation(a1 + 3, *a2);
  return a1;
}

void sub_29ADE05CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ADE0638(uint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[64 * v2];
  *(&v17 + 1) = &v8[64 * v7];
  sub_29AC53244(a1, v16, a2);
  *&v17 = v16 + 64;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29ACC8AE0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACC8BAC(&v15);
  return v14;
}

void sub_29ADE0738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACC8BAC(va);
  _Unwind_Resume(a1);
}

void *sub_29ADE074C@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x88uLL);
  result = sub_29ADE07B0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADE07B0(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093B98;
  sub_29ADE08B0(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_29ADE0844(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADE08B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = a3[1];
  v9[0] = *a3;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v8[0] = *a4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = 0;
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::HdSt_IndexSubsetComputation(a2, v9, v8, &v6);
    sub_29A014BEC(v5);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::HdSt_IndexSubsetComputation(a2, v9, v8, &v6);
    if (!v4)
    {
      return;
    }
  }

  sub_29A014BEC(v4);
}

void *sub_29ADE0964@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x88uLL);
  result = sub_29ADE09D8(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29ADE09D8(void *a1, void *a2, void *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093B98;
  sub_29ADE0A50(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_29ADE0A50(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a3[1];
  v10[0] = *a3;
  v10[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  v9[0] = *a4;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a5[1];
  v8[0] = *a5;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::HdSt_IndexSubsetComputation(a2, v10, v9, v8);
    sub_29A014BEC(v7);
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::HdSt_IndexSubsetComputation::HdSt_IndexSubsetComputation(a2, v10, v9, v8);
  if (v6)
  {
LABEL_7:
    sub_29A014BEC(v6);
  }

LABEL_8:
  if (v5)
  {

    sub_29A014BEC(v5);
  }
}

void sub_29ADE0B50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29ADE0BBC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  result = sub_29ADE0C20(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADE0C20(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2093C38;
  sub_29ADE0D20(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_29ADE0CB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADE0D20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation::HdSt_GeomSubsetFaceIndexBuilderComputation(a2, v5, a4);

    sub_29A014BEC(v4);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdSt_GeomSubsetFaceIndexBuilderComputation::HdSt_GeomSubsetFaceIndexBuilderComputation(a2, v5, a4);
  }
}

void *sub_29ADE0D9C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AD9D010(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADE0E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ADE0E24@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29ADE0E98(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29ADE0E98(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

void *sub_29ADE0EFC@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29ADE0F60(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADE0F60(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, 1, 1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndex::HdSt_NodeIdentifierResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdMaterialFilteringSceneIndexBase::HdMaterialFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdMaterialFilteringSceneIndexBase::HdMaterialFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndex::~HdSt_NodeIdentifierResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndex *this, const void *a2)
{
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndex::~HdSt_NodeIdentifierResolvingSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndex::_GetFilteringFunction(void *a1@<X8>)
{
  *a1 = &unk_2A2093D08;
  a1[1] = sub_29ADE1164;
  a1[3] = a1;
}

void sub_29ADE1164(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  (*(*a1 + 48))(&v30);
  v2 = v30;
  v3 = v31;
  if (v30 != v31)
  {
    while (1)
    {
      (*(*a1 + 56))(__p, a1, v2);
      v4 = __p[0];
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v4)
      {
        goto LABEL_55;
      }

      if (!atomic_load(&qword_2A174EB20))
      {
        sub_29ADE1AC4();
      }

      sub_29ADE19E0(a1, &v32);
      v6 = atomic_load(&qword_2A174EB20);
      if (!v6)
      {
        v6 = sub_29ADE1AC4();
      }

      if ((*(v6 + 16) ^ v32) <= 7)
      {
        break;
      }

      v9 = atomic_load(&qword_2A174EB20);
      if (!v9)
      {
        v9 = sub_29ADE1AC4();
      }

      if ((*(v9 + 8) ^ v32) <= 7)
      {
        v10 = atomic_load(&qword_2A174EB20);
        if (!v10)
        {
          v9 = sub_29ADE1AC4();
          v10 = v9;
        }

        if ((atomic_load_explicit(&qword_2A174EB90, memory_order_acquire) & 1) == 0)
        {
          v9 = __cxa_guard_acquire(&qword_2A174EB90);
          if (v9)
          {
            sub_29ADE2030();
            if ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
            }

            sub_29A911628(":", EmptyString, &unk_2A174EB78);
            __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A174EB78, &dword_299FE7000);
            __cxa_guard_release(&qword_2A174EB90);
          }
        }

        if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v11 = ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&unk_2A174EB78, v11, __p);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v41);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        (*(*a1 + 72))(v43, a1, v2, &v41);
        __p[0] = 0;
        __p[1] = 0;
        v38 = 0;
        sub_29AB6BC3C(v43, __p, v33);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        sub_29A186B14(v43);
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 = v34;
        v20 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v19 = v33[1];
        }

        if (v19)
        {
          if (!atomic_load(&qword_2A174EB20))
          {
            sub_29ADE1AC4();
          }

          sub_29ADE1F64(a1, v43);
          sub_29ADE1DE4(v43, __p);
          sub_29A184A10(v43, 0);
          Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v22);
          sub_29ADE2030();
          ShaderNodeFromSourceCode = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeFromSourceCode(Instance, v33, &qword_2A174EB68, __p);
          sub_29A40349C(__p);
          v20 = v34;
        }

        else
        {
          ShaderNodeFromSourceCode = 0;
        }

        if ((v20 & 0x80) == 0)
        {
          goto LABEL_51;
        }

LABEL_50:
        operator delete(v33[0]);
        goto LABEL_51;
      }

      ShaderNodeFromSourceCode = 0;
LABEL_51:
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (ShaderNodeFromSourceCode)
      {
        (*(*a1 + 128))(a1, v2, ShaderNodeFromSourceCode + 16);
      }

LABEL_55:
      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_88;
      }
    }

    v7 = atomic_load(&qword_2A174EB20);
    if (!v7)
    {
      v6 = sub_29ADE1AC4();
      v7 = v6;
    }

    if ((atomic_load_explicit(&qword_2A174EB40, memory_order_acquire) & 1) == 0)
    {
      v6 = __cxa_guard_acquire(&qword_2A174EB40);
      if (v6)
      {
        sub_29ADE2030();
        if ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v25 = ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
        }

        sub_29A911628(":", v25, &unk_2A174EB28);
        __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A174EB28, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174EB40);
      }
    }

    if ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((*(v7 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&unk_2A174EB28, v8, __p);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v41);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a1 + 72))(v43, a1, v2, &v41);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
    sub_29ADE20F0(v43, __p, v33);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A186B14(v43);
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!atomic_load(&qword_2A174EB20))
    {
      sub_29ADE1AC4();
    }

    sub_29ADE1F64(a1, v43);
    sub_29ADE1DE4(v43, __p);
    sub_29A184A10(v43, 0);
    v15 = atomic_load(&qword_2A174EB20);
    if (!v15)
    {
      v14 = sub_29ADE1AC4();
      v15 = v14;
    }

    if ((atomic_load_explicit(&qword_2A174EB60, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_2A174EB60);
      if (v14)
      {
        sub_29ADE2030();
        if ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v27 = ((qword_2A174EB68 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
        }

        sub_29A911628(":", v27, &unk_2A174EB48);
        __cxa_atexit(MEMORY[0x29EDC9388], &unk_2A174EB48, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174EB60);
      }
    }

    if ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v16 = ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&unk_2A174EB48, v16, v43);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v41);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v17 = sub_29ADE19E0(a1, &v42);
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v18 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v17);
    sub_29ADE2030();
    ShaderNodeFromSourceCode = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeFromAsset(v18, v33, __p, &v42, &qword_2A174EB68);
    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A40349C(__p);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_88:
  __p[0] = &v30;
  sub_29A124AB0(__p);
}

void sub_29ADE183C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_2A174EB60);
  sub_29A40349C(&a23);
  sub_29A0D2850(&__p);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v32 - 128) = &a10;
  sub_29A124AB0((v32 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_29ADE19E0@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(v5);
  v4 = 0;
  sub_29A4406A4(v5, &v4, a2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A186B14(v5);
}

void sub_29ADE1A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29ADE1AC4()
{
  v25 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "implementationSource", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "sourceCode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "sourceAsset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "sourceAsset:subIdentifier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "sdrMetadata", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "glslfx", 0);
  v1 = v0 + 6;
  v2 = *v0;
  v19 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v3;
    }
  }

  v4 = v0[1];
  v20 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v5;
    }
  }

  v6 = v0[2];
  v21 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v7;
    }
  }

  v8 = v0[3];
  v22 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v9;
    }
  }

  v10 = v0[4];
  v23 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v11;
    }
  }

  v12 = v0[5];
  v24 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v13;
    }
  }

  *v1 = 0;
  v0[7] = 0;
  v0[8] = 0;
  sub_29A12EF7C(v1, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v15 = *(&v19 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = 0;
  atomic_compare_exchange_strong(&qword_2A174EB20, &v16, v0);
  if (v16)
  {
    v17 = sub_29AD9A798(v0);
    operator delete(v17);
    return atomic_load(&qword_2A174EB20);
  }

  return v0;
}

void sub_29ADE1CE8(_Unwind_Exception *a1)
{
  v4 = 40;
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
      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29ADE1DE4@<X0>(pxrInternal__aapl__pxrReserved__::VtDictionary *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a1);
  v16 = v4;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6)
  {
    v7 = v15 == result;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (v16 != v6 || v8 == 0)
  {
    sub_29A1F87E8(v15 + 56);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
    v17 = &v12;
    v10 = sub_29A7D16A0(a2, &v12, &unk_29B4D6118, &v17);
    v11 = v10;
    if (*(v10 + 47) < 0)
    {
      operator delete(v10[3]);
    }

    *(v11 + 3) = *__p;
    v11[5] = v14;
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  return result;
}

uint64_t sub_29ADE1F64@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v5[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(v5);
  v4 = 0;
  sub_29ADE21B8(v5, &v4, a2);
  sub_29A184A10(&v4, 0);
  return sub_29A186B14(v5);
}

void sub_29ADE2008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  sub_29A184A10(&a9, 0);
  sub_29A186B14(&a10);
  _Unwind_Resume(a1);
}

void sub_29ADE2030()
{
  if ((atomic_load_explicit(&qword_2A174EB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EB70))
  {
    v0 = atomic_load(&qword_2A174EB20);
    if (!v0)
    {
      v0 = sub_29ADE1AC4();
    }

    v1 = *(v0 + 40);
    qword_2A174EB68 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A174EB68 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_guard_release(&qword_2A174EB70);
  }
}

char *sub_29ADE20F0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29A1FA780(a1);
  if (result)
  {
    v7 = *(a1 + 1);
    if ((v7 & 4) != 0)
    {
      result = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      a2 = result;
    }

    else
    {
      a2 = *a1;
    }
  }

  if (a2[23] < 0)
  {
    result = sub_29A008D14(a3, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a3 + 16) = *(a2 + 2);
    *a3 = v8;
  }

  if (a2[47] < 0)
  {
    return sub_29A008D14((a3 + 24), *(a2 + 3), *(a2 + 4));
  }

  v9 = *(a2 + 24);
  *(a3 + 40) = *(a2 + 5);
  *(a3 + 24) = v9;
  return result;
}

void sub_29ADE219C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADE21B8@<X0>(const pxrInternal__aapl__pxrReserved__::VtDictionary **a1@<X0>, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X1>, pxrInternal__aapl__pxrReserved__::VtDictionary *a3@<X8>)
{
  if (sub_29A185258(a1))
  {
    v6 = a1[1];
    if ((v6 & 4) != 0)
    {
      a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      a2 = *a1;
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a3, a2);
}

void *sub_29ADE2234(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2093D08;
  result[1] = v3;
  return result;
}

uint64_t sub_29ADE227C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2093D08;
  a2[1] = v2;
  return result;
}

uint64_t sub_29ADE22B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2093D88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29ADE2304(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174EB98);
  if (!v2)
  {
    v2 = sub_29ADE2608();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 0, 0);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ADE2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin::HdSt_NodeIdentifierResolvingSceneIndexPlugin(void *this)
{
  *this = &unk_2A2093DB8;
  return this;
}

{
  *this = &unk_2A2093DB8;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin::~HdSt_NodeIdentifierResolvingSceneIndexPlugin(pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(this);

  operator delete(v1);
}

uint64_t sub_29ADE247C()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1680;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29ADE2558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_NodeIdentifierResolvingSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2093DB8;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29ADE2608()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_NodeIdentifierResolvingSceneIndexPlugin", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A174EB98, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174EB98);
  }

  return v0;
}

void sub_29ADE2728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29ADE27A4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_PIPELINE_DRAW_BATCH_GPU_FRUSTUM_CULLING))
  {
    sub_29B2C90FC();
  }
}

pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::HdSt_PipelineDrawBatch(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2, char a3, char a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::HdSt_DrawBatch(this, a2, 0);
  *v8 = &unk_2A2093E00;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  *(v8 + 241) = 0u;
  *(v8 + 264) = 0u;
  *(v8 + 280) = 0u;
  *(v8 + 296) = 0u;
  *(v8 + 39) = 0;
  sub_29ADCA738(v8 + 320);
  *(this + 40) = &unk_2A2093E58;
  *(this + 220) = 1;
  *(this + 56) = 0;
  *(this + 114) = 0x10000;
  *(this + 230) = 0;
  *(this + 462) = a3;
  *(this + 463) = a4;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 62) = 0;
  (*(*this + 64))(this, a2);
  return this;
}

void sub_29ADE28E4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 62);
  *(v1 + 62) = 0;
  if (v4)
  {
    sub_29B2C9130(v4);
  }

  sub_29ADCE9D0(v2);
  v5 = *(v1 + 36);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(v1 + 29);
  if (v6)
  {
    *(v1 + 30) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 28);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(v1 + 26);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(v1 + 24);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v1 + 22);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::~HdSt_DrawBatch(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::~HdSt_PipelineDrawBatch(__n128 **this)
{
  *this = &unk_2A2093E00;
  if (this[35])
  {
    pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_DestroyBuffer(this, this + 35);
  }

  v2 = this + 27;
  if (this[27])
  {
    pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_DestroyBuffer(this, v2);
  }

  v3 = this[62];
  this[62] = 0;
  if (v3)
  {
    (*(v3->n128_u64[0] + 8))(v3, v2);
  }

  this[40] = &unk_2A2092E00;
  v4 = this[54];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = this[52];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v14 = (this + 48);
  sub_29A0176E4(&v14);
  v6 = this[46];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4((this + 43), this[44]);
  v7 = this[42];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = this[36];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = this[29];
  if (v9)
  {
    this[30] = v9;
    operator delete(v9);
  }

  v10 = this[28];
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = this[26];
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = this[24];
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = this[22];
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::~HdSt_DrawBatch(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::~HdSt_PipelineDrawBatch(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_DestroyBuffer(uint64_t a1, __n128 **a2)
{
  if (*a2 || (sub_29B2C9154(v10) & 1) != 0)
  {
    v4 = *(a1 + 168);
    if (!v4)
    {
      v8[0] = "hdSt/pipelineDrawBatch.cpp";
      v8[1] = "_DestroyBuffer";
      v8[2] = 1941;
      v8[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_DestroyBuffer(const HdStBufferResourceSharedPtr &)";
      v9 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_resourceRegistry", 0))
      {
        return;
      }

      v4 = *(a1 + 168);
    }

    v5 = *a2;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v4);
    (*(*Hgi + 104))(Hgi, v5);
    v7 = *a2;
    v10[0] = 0uLL;
    pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(v7, v10, 0);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_Init(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_Init(this, a2);
  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatchIndex(a2, 0);
  pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetBatch(a2, this);
  v4 = *(a2 + 1);
  *(this + 33) = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(v4);
  *(this + 34) = 0;
  *(this + 458) = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v4 + 24), *(v4 + 8)) != 0;
  v5 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v4 + 24), *(v4 + 15));
  *(this + 459) = *v5 != 0;
  if ((*(this + 462) & 1) == 0)
  {
    *(this + 230) = 0;
    goto LABEL_9;
  }

  IsEnabledGPUFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::IsEnabledGPUFrustumCulling(v5);
  *(this + 460) = IsEnabledGPUFrustumCulling;
  if (*(this + 459) != 1 || !IsEnabledGPUFrustumCulling)
  {
    IsEnabledGPUInstanceFrustumCulling = 0;
    *(this + 461) = 0;
    if (!IsEnabledGPUFrustumCulling)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  IsEnabledGPUInstanceFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUInstanceFrustumCulling(IsEnabledGPUFrustumCulling);
  v8 = *(this + 460);
  *(this + 461) = IsEnabledGPUInstanceFrustumCulling;
  if (v8)
  {
LABEL_8:
    pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CullingProgram::Initialize((this + 320), *(this + 458), IsEnabledGPUInstanceFrustumCulling, *(this + 33));
  }

LABEL_9:
  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("   Resetting dispatch buffer.\n", v9, v10);
  }

  v11 = *(this + 24);
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::IsEnabledGPUFrustumCulling(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this)
{
  if ((atomic_load_explicit(&qword_2A174EBA8, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2A174EBA8);
    if (this)
    {
      v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_PIPELINE_DRAW_BATCH_GPU_FRUSTUM_CULLING);
      if (!v2)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
      }

      byte_2A174EBA0 = *v2;
      __cxa_guard_release(&qword_2A174EBA8);
    }
  }

  if (byte_2A174EBA0 != 1)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUFrustumCulling(this);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CullingProgram::Initialize(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CullingProgram *this, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if (*(this + 120) != a2 || *(this + 121) != a3 || *(this + 16) != a4)
  {
    sub_29ADD29F4(this);
  }

  *(this + 120) = v6;
  *(this + 121) = v5;
  *(this + 16) = a4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::SetEnableTinyPrimCulling(uint64_t this, int a2)
{
  if (*(this + 456) != a2)
  {
    *(this + 456) = a2;
    *(this + 457) = 1;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CompileBatch(uint64_t a1, void ***a2)
{
  result = sub_29A0ECEEC(&v187, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CompileBatch(const HdStResourceRegistrySharedPtr &)");
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
    goto LABEL_226;
  }

  v7 = sub_29ADC9478(*(*v5 + 8));
  v8 = v7;
  v157 = *(*(*(**(a1 + 8) + 8) + 40) + 35);
  v9 = -8;
  if (!*(*(*(**(a1 + 8) + 8) + 40) + 35))
  {
    v9 = 0;
  }

  v10 = 8;
  if (!*(*(*(**(a1 + 8) + 8) + 40) + 35))
  {
    v10 = 0;
  }

  v11 = v10 + v7;
  if (*(a1 + 458))
  {
    v12 = 15;
    if (*(a1 + 461))
    {
      v12 = 19;
    }

    v13 = 14;
    if (*(a1 + 461))
    {
      v13 = 18;
      v14 = 6;
    }

    else
    {
      v14 = 1;
    }

    v15 = 20;
    if (*(a1 + 461))
    {
      v15 = 36;
    }

    v149 = v14;
    v150 = v15;
    if (*(a1 + 461))
    {
      v16 = 52;
    }

    else
    {
      v16 = 36;
    }

    if (*(a1 + 461))
    {
      v17 = 68;
    }

    else
    {
      v17 = 52;
    }

    v146 = v17;
    v147 = v16;
    if (*(a1 + 461))
    {
      v18 = 76;
    }

    else
    {
      v18 = 60;
    }

    v19 = 48;
    v20 = 64;
  }

  else
  {
    v12 = 14;
    if (*(a1 + 461))
    {
      v12 = 18;
    }

    v13 = 13;
    if (*(a1 + 461))
    {
      v13 = 17;
      v21 = 5;
    }

    else
    {
      v21 = 1;
    }

    v22 = 16;
    if (*(a1 + 461))
    {
      v22 = 32;
    }

    v149 = v21;
    v150 = v22;
    if (*(a1 + 461))
    {
      v23 = 48;
    }

    else
    {
      v23 = 32;
    }

    if (*(a1 + 461))
    {
      v24 = 64;
    }

    else
    {
      v24 = 48;
    }

    v146 = v24;
    v147 = v23;
    if (*(a1 + 461))
    {
      v18 = 72;
    }

    else
    {
      v18 = 56;
    }

    v19 = 44;
    v20 = 60;
  }

  if (*(a1 + 461))
  {
    v19 = v20;
  }

  v148 = v19;
  v25 = v12 + v7;
  v26 = (v11 + v13) & v9;
  if (*(*(*(**(a1 + 8) + 8) + 40) + 35))
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (*(*(*(**(a1 + 8) + 8) + 40) + 35))
  {
    v28 = v26 - v25;
  }

  else
  {
    v28 = 0;
  }

  v156 = v28;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("\nCompile Dispatch Buffer\n", v29, v30);
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - numUInt32: %zd\n", v31, v32, v27);
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - useDrawIndexed: %d\n", v33, v34, *(a1 + 458));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - useInstanceCulling: %d\n", v35, v36, *(a1 + 461));
  }

  v144 = v6 - v5;
  v39 = (v6 - v5) >> 3;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - num draw items: %zu\n", v37, v38, v39);
  }

  sub_29A0A171C((a1 + 232), v27 * v39);
  v142 = v18;
  v151 = v8;
  v143 = v8;
  v40 = *(a1 + 232);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  v152 = v27;
  v145 = a2;
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Processing Items:\n", v41, v42);
  }

  v43 = 0;
  *(a1 + 272) = 0;
  v153 = 4 * v156;
  v154 = 4 * v27;
  if (v39 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v39;
  }

  v155 = v44;
  v165 = a1;
  do
  {
    v45 = *(*(a1 + 8) + 8 * v43);
    v46 = *(v45 + 8);
    ElementOffsetsHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetElementOffsetsHash(v46);
    *(a1 + 272) = bswap64(0x9E3779B97F4A7C55 * (ElementOffsetsHash + ((*(a1 + 272) + ElementOffsetsHash + (*(a1 + 272) + ElementOffsetsHash) * (*(a1 + 272) + ElementOffsetsHash)) >> 1)));
    sub_29ADE7370(__p, v46);
    v48 = __p[0];
    v49 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
    }

    if (v48)
    {
      v50 = (*(*v48 + 72))(v48);
      if (!v49)
      {
        goto LABEL_70;
      }

LABEL_69:
      sub_29A014BEC(v49);
      goto LABEL_70;
    }

    v50 = 0;
    if (v49)
    {
      goto LABEL_69;
    }

LABEL_70:
    v51 = v179;
    v52 = v180;
    if (v180)
    {
      atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v51)
    {
      v53 = (*(*v51 + 72))(v51);
      if (!v52)
      {
        goto LABEL_75;
      }

LABEL_74:
      sub_29A014BEC(v52);
      goto LABEL_75;
    }

    v53 = 0;
    if (v52)
    {
      goto LABEL_74;
    }

LABEL_75:
    v54 = v171;
    v55 = v172;
    if (v172)
    {
      atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v54)
    {
      v56 = (*(*v54 + 72))(v54);
      if (!v55)
      {
        goto LABEL_80;
      }

LABEL_79:
      sub_29A014BEC(v55);
      goto LABEL_80;
    }

    v56 = 0;
    if (v55)
    {
      goto LABEL_79;
    }

LABEL_80:
    v57 = v173;
    v58 = v174;
    if (v174)
    {
      atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v57)
    {
      v163 = (*(*v57 + 72))(v57);
      if (!v58)
      {
        goto LABEL_85;
      }

LABEL_84:
      sub_29A014BEC(v58);
      goto LABEL_85;
    }

    v163 = 0;
    if (v58)
    {
      goto LABEL_84;
    }

LABEL_85:
    v59 = v169;
    v60 = v170;
    if (v170)
    {
      atomic_fetch_add_explicit(v170 + 1, 1uLL, memory_order_relaxed);
    }

    v164 = v45;
    if (v59)
    {
      v162 = (*(*v59 + 72))(v59);
      if (!v60)
      {
        goto LABEL_90;
      }

LABEL_89:
      sub_29A014BEC(v60);
      goto LABEL_90;
    }

    v162 = 0;
    if (v60)
    {
      goto LABEL_89;
    }

LABEL_90:
    v61 = v175;
    v62 = v176;
    if (v176)
    {
      atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v61)
    {
      v63 = (*(*v61 + 72))(v61);
    }

    else
    {
      v63 = 0;
    }

    v160 = v56;
    v161 = v53;
    if (v62)
    {
      sub_29A014BEC(v62);
    }

    v64 = v183;
    v65 = v184;
    if (v184)
    {
      atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v64)
    {
      v66 = (*(*v64 + 72))(v64);
      if (!v65)
      {
        goto LABEL_112;
      }

LABEL_111:
      sub_29A014BEC(v65);
      goto LABEL_112;
    }

    v66 = 0;
    if (v65)
    {
      goto LABEL_111;
    }

LABEL_112:
    v67 = v181;
    v68 = v182;
    if (v182)
    {
      atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v67)
    {
      v69 = (*(*v67 + 72))(v67);
      if (!v68)
      {
        goto LABEL_117;
      }

LABEL_116:
      sub_29A014BEC(v68);
      goto LABEL_117;
    }

    v69 = 0;
    if (v68)
    {
      goto LABEL_116;
    }

LABEL_117:
    v70 = v177;
    v71 = v178;
    if (v178)
    {
      atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v159 = v66;
    if (v70)
    {
      v72 = (*(*v70 + 72))(v70);
    }

    else
    {
      v72 = 0;
    }

    v73 = v50;
    if (v71)
    {
      sub_29A014BEC(v71);
    }

    PrimitiveIndexSize = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(v46[5]);
    v75 = v179;
    v76 = v180;
    if (v180)
    {
      atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v75)
    {
      v77 = (*(*v75 + 88))(v75);
      if (!v76)
      {
        goto LABEL_133;
      }

LABEL_132:
      sub_29A014BEC(v76);
      goto LABEL_133;
    }

    v77 = 0;
    if (v76)
    {
      goto LABEL_132;
    }

LABEL_133:
    v158 = v69;
    if (!v77)
    {
      v80 = v63;
      v81 = 0;
      goto LABEL_144;
    }

    v78 = v169;
    v79 = v170;
    if (v170)
    {
      atomic_fetch_add_explicit(v170 + 1, 1uLL, memory_order_relaxed);
    }

    v80 = v63;
    if (!v78)
    {
      v81 = 0;
      if (!v79)
      {
        goto LABEL_144;
      }

LABEL_143:
      sub_29A014BEC(v79);
      goto LABEL_144;
    }

    v81 = (*(*v78 + 88))(v78);
    if (v79)
    {
      goto LABEL_143;
    }

LABEL_144:
    v82 = v183;
    v83 = v184;
    if (v184)
    {
      atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v82)
    {
      v84 = (*(*v82 + 88))(v82);
    }

    else
    {
      v84 = 1;
    }

    v166 = v77;
    if (*(v164 + 24) != 1)
    {
      v85 = 0;
      if (!v83)
      {
        goto LABEL_154;
      }

LABEL_153:
      sub_29A014BEC(v83);
      goto LABEL_154;
    }

    v85 = v84 / (v151 + 1);
    if (v83)
    {
      goto LABEL_153;
    }

LABEL_154:
    if (*(v165 + 458))
    {
      v86 = v161;
      v87 = v162;
      v88 = PrimitiveIndexSize * v162;
      v89 = v81 * PrimitiveIndexSize;
      v90 = v81;
      v91 = v160;
      if (*(v165 + 461))
      {
        v92 = v40 + 9;
        if (v157)
        {
          *v40 = v81;
          v40[1] = v85;
          v40[2] = v162;
          v40[3] = v43;
          v40[4] = v161;
        }

        else
        {
          *v40 = v89;
          v40[1] = v85;
          v40[2] = v88;
          v40[3] = v161;
          v40[4] = v43;
        }

        v40[5] = 1;
        v40[6] = v85;
        v40[7] = 0;
        v40[8] = v43;
      }

      else
      {
        v92 = v40 + 5;
        if (v157)
        {
          *v40 = v81;
          v40[1] = v85;
          v40[2] = v162;
          v40[3] = v43;
          v40[4] = v161;
        }

        else
        {
          *v40 = v89;
          v40[1] = v85;
          v40[2] = v88;
          v40[3] = v161;
          v40[4] = v43;
        }
      }
    }

    else
    {
      v91 = v160;
      v86 = v161;
      v87 = v162;
      if (*(v165 + 461))
      {
        v92 = v40 + 8;
        v90 = v81;
        if (v157)
        {
          *v40 = v81;
          v40[1] = v85;
          v40[2] = v162;
        }

        else
        {
          *v40 = v166;
          v40[1] = v85;
          v40[2] = v161;
        }

        v40[3] = v43;
        v40[4] = 1;
        v40[5] = v85;
        v40[6] = 0;
        v40[7] = v43;
      }

      else
      {
        v92 = v40 + 4;
        v90 = v81;
        if (v157)
        {
          *v40 = v81;
          v40[1] = v85;
          v40[2] = v162;
        }

        else
        {
          *v40 = v166;
          v40[1] = v85;
          v40[2] = v161;
        }

        v40[3] = v43;
      }
    }

    *v92 = 0;
    v92[1] = v73;
    v92[2] = v163;
    v92[3] = v87;
    v92[4] = v80;
    v92[5] = v159;
    v92[6] = v158;
    v92[7] = v86;
    v40 = v92 + 10;
    v92[8] = v91;
    v92[9] = v72;
    v93 = v185;
    if (v186 != v185)
    {
      v94 = 0;
      v95 = 0;
      a1 = v165;
      while (1)
      {
        v96 = (v93 + v94);
        v97 = *v96;
        v98 = v96[1];
        if (v98)
        {
          atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v97)
        {
          break;
        }

        v99 = (*(*v97 + 72))(v97);
        if (v98)
        {
          goto LABEL_178;
        }

LABEL_179:
        *v40++ = v99;
        ++v95;
        v93 = v185;
        v94 += 16;
        if (v95 >= (v186 - v185) >> 4)
        {
          goto LABEL_184;
        }
      }

      v99 = 0;
      if (!v98)
      {
        goto LABEL_179;
      }

LABEL_178:
      sub_29A014BEC(v98);
      goto LABEL_179;
    }

    a1 = v165;
LABEL_184:
    if (v156)
    {
      bzero(v40, v153);
      v40 = (v40 + v153);
    }

    v100 = MEMORY[0x29EDC93C8];
    if (sub_29ADC9798(0))
    {
      sub_29A00911C(v100, "   - ", 5);
      if (v154)
      {
        v101 = &v40[v154 / 0xFFFFFFFFFFFFFFFCLL];
        do
        {
          v102 = MEMORY[0x29C2C1EE0](v100, *v101);
          sub_29A00911C(v102, " ", 1);
          ++v101;
        }

        while (v101 != v40);
      }

      std::ios_base::getloc((v100 + *(*v100 - 24)));
      v103 = std::locale::use_facet(&v189, MEMORY[0x29EDC93D0]);
      (v103->__vftable[2].~facet_0)(v103, 10);
      std::locale::~locale(&v189);
      std::ostream::put();
      std::ostream::flush();
    }

    v104 = *(a1 + 312) + v90;
    v105 = *(a1 + 304) + v166;
    *(a1 + 296) += v85;
    *(a1 + 304) = v105;
    *(a1 + 312) = v104;
    sub_29ADD32C4(__p);
    ++v43;
  }

  while (v43 != v155);
  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Num Visible: %zu\n", v106, v107, *(a1 + 296));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Total Elements: %zu\n", v108, v109, *(a1 + 312));
  }

  if (sub_29ADC9798(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Total Verts: %zu\n", v110, v111, *(a1 + 304));
  }

  if (v40 != *(a1 + 240))
  {
    __p[0] = "hdSt/pipelineDrawBatch.cpp";
    __p[1] = "_CompileBatch";
    v169 = 820;
    v170 = "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CompileBatch(const HdStResourceRegistrySharedPtr &)";
    LOBYTE(v171) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "cmdIt == _drawCommandBuffer.end()", 0);
  }

  *(a1 + 464) = 1;
  *(a1 + 472) = v149;
  *(a1 + 480) = v150 >> 2;
  *(a1 + 488) = v148;
  v112 = *v145;
  v113 = atomic_load(&qword_2A174EBB0);
  if (!v113)
  {
    v113 = sub_29ADE80AC();
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterDispatchBuffer(v112, (v113 + 24), v144 >> 3, v152, __p);
  v114 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v115 = *(a1 + 192);
  *(a1 + 184) = v114;
  if (v115)
  {
    sub_29A014BEC(v115);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  if (v157)
  {
    v116 = *(**(a1 + 8) + 8);
    if (((*(*(v116 + 40) + 24) - 2) & 0xFFFFFFF6) == 0)
    {
      v131 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v116 + 24), *(v116 + 8));
      v132 = *v131;
      v133 = v131[1];
      if (v133)
      {
        atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v132)
      {
        v134 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v134)
        {
          v134 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        (*(*v132 + 168))(&v189, v132, v134 + 312);
        locale = v189.__locale_;
        if (v189.__locale_ && *v189.__locale_)
        {
          v136 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v189.__locale_ + 4), *(v189.__locale_ + 5));
          v137 = (*(**locale + 16))();
          v138 = *v145;
          v139 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v139)
          {
            v139 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          sub_29A008E78(__p, "");
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBufferResource(v138, v139 + 68, 25, 6 * (v137 / v136), 1, __p, &v167);
          a1 = v165;
          if (SHIBYTE(v169) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v167 = 0uLL;
        }

        if (v190)
        {
          sub_29A014BEC(v190);
        }
      }

      else
      {
        v167 = 0uLL;
      }

      if (v133)
      {
        sub_29A014BEC(v133);
      }

      v140 = v167;
      v167 = 0uLL;
      v141 = *(a1 + 224);
      *(a1 + 216) = v140;
      if (v141)
      {
        sub_29A014BEC(v141);
        if (*(&v167 + 1))
        {
          sub_29A014BEC(*(&v167 + 1));
        }
      }
    }
  }

  v117 = *(a1 + 184);
  v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v118)
  {
    v118 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v117, v118 + 22, 5, 1, 0);
  v119 = *(a1 + 184);
  v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v120)
  {
    v120 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v119, v120 + 24, 8, 1, v150);
  v121 = *(a1 + 184);
  v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v122)
  {
    v122 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v121, v122 + 25, 8, 1, v147);
  v123 = *(a1 + 184);
  v124 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v124)
  {
    v124 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v123, v124 + 26, 6, 1, v146);
  if (v151)
  {
    v125 = *(a1 + 184);
    v126 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v126)
    {
      v126 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::AddBufferResourceView(v125, v126 + 27, 5, v143, v142);
  }

  result = pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 184), (a1 + 232));
  if (*(a1 + 460) == 1)
  {
    v127 = *v145;
    v128 = atomic_load(&qword_2A174EBB0);
    if (!v128)
    {
      v128 = sub_29ADE80AC();
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterDispatchBuffer(v127, (v128 + 32), v144 >> 3, v152, __p);
    v129 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v130 = *(a1 + 208);
    *(a1 + 200) = v129;
    if (v130)
    {
      sub_29A014BEC(v130);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    result = pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 200), (a1 + 232));
  }

LABEL_226:
  if (v187)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v188, v187);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::Validate(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this, uint64_t a2)
{
  if (*(this + 1) == *(this + 2) && (sub_29B2C919C(v22) & 1) == 0)
  {
    return 2;
  }

  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Validating pipeline draw batch %p (deep validation = %d)...\n", v4, v5, this, a2);
  }

  v6 = *(**(this + 1) + 8);
  BufferArraysHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(v6);
  if (*(this + 33) == BufferArraysHash)
  {
    if (!a2)
    {
      goto LABEL_20;
    }

    v8 = *(this + 2) - *(this + 1);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 >> 3;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      while (1)
      {
        v13 = *(*(*(this + 1) + 8 * v9) + 8);
        if (!*(v13 + 5))
        {
          v20[0] = "hdSt/pipelineDrawBatch.cpp";
          v20[1] = "Validate";
          v20[2] = 910;
          v20[3] = "virtual HdSt_DrawBatch::ValidationResult pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::Validate(BOOL)";
          v21 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v20, "drawItem->GetGeometricShader()", 0) & 1) == 0)
          {
            return 2;
          }
        }

        if (!pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_IsAggregated(this, v6, v13))
        {
          v15 = 2;
          if (!sub_29ADC9798(1))
          {
            return v15;
          }

          v18 = "   Deep validation: Found draw item that fails aggregation test. Need to rebuild all batches.\n";
          goto LABEL_26;
        }

        ElementOffsetsHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetElementOffsetsHash(v13);
        v10 = bswap64(0x9E3779B97F4A7C55 * (ElementOffsetsHash + ((ElementOffsetsHash + v10 + (ElementOffsetsHash + v10) * (ElementOffsetsHash + v10)) >> 1)));
        if (v12 == ++v9)
        {
          goto LABEL_19;
        }
      }
    }

    v10 = 0;
LABEL_19:
    if (*(this + 34) != v10)
    {
      v15 = 1;
      if (sub_29ADC9798(1))
      {
        v18 = "   Deep validation: Element offsets hash mismatch.   Rebuilding batch (even though only the dispatch buffer   needs to be updated)\n.";
        goto LABEL_26;
      }
    }

    else
    {
LABEL_20:
      v15 = 0;
      if (sub_29ADC9798(1))
      {
        v18 = "   Validation passed. No need to rebuild batch.\n";
        goto LABEL_26;
      }
    }
  }

  else
  {
    *(this + 33) = BufferArraysHash;
    v15 = 1;
    if (sub_29ADC9798(1))
    {
      v18 = "   Buffer arrays hash changed. Need to rebuild batch.\n";
LABEL_26:
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(v18, v16, v17);
    }
  }

  return v15;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_HasNothingToDraw(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this)
{
  v1 = 304;
  if (*(this + 458))
  {
    v1 = 312;
  }

  return *(this + v1) == 0;
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::PrepareDraw(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderPassState **a3, uint64_t a4)
{
  v8 = *a4;
  v7 = *(a4 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 176);
  *(a1 + 168) = v8;
  *(a1 + 176) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (!*(a1 + 184))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CompileBatch(a1, a4);
  }

  v10 = 304;
  if (*(a1 + 458))
  {
    v10 = 312;
  }

  if (*(a1 + v10))
  {
    v11 = *(a1 + 256);
    if (v11 == 1)
    {
      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 184), (a1 + 232));
      *(a1 + 256) = 0;
    }

    if (*(a1 + 460) == 1)
    {

      pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteFrustumCull(a1, v11, a3, a4);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteFrustumCull(uint64_t result, int a2, pxrInternal__aapl__pxrReserved__::HdRenderPassState **a3, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a4)
{
  v7 = result;
  if (*(result + 459) != 1 || *(result + 461) == 1)
  {
    result = sub_29ABCF8C0(16);
    if (!result || a2)
    {
      if (a2)
      {
        pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(v7 + 200), (v7 + 232));
      }

      pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CreateCullingProgram(v7, a4);
      if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid((v7 + 320)) & 1) != 0 || (result = sub_29B2C91E4(v94), (result))
      {
        v8 = *(**(v7 + 8) + 8);
        v9 = *(v7 + 336);
        __p[0] = *(v7 + 328);
        __p[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29ADCA4B8(v7 + 320, &v72);
        sub_29ADE5C14(v87, v8, (v7 + 200), v7 + 344, __p, &v72, (v7 + 408));
        *&v80[0] = &v72;
        sub_29A0176E4(v80);
        if (v9)
        {
          sub_29A014BEC(v9);
        }

        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
        v11 = (v90 + 64);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(*a4, *(v90 + 64), &v72);
        if (v75 == 1)
        {
          v12 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(__p);
          MEMORY[0x29C2C1A60](__p, "FrustumCulling", v12);
          v84 = *v11;
          v85 = 80;
          v13 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
          v14 = (*(*v13 + 176))(v13, __p);
          v16 = v15;
          v17 = operator new(0x28uLL);
          v17[1] = 0;
          v17[2] = 0;
          *v17 = &unk_2A2093EA8;
          v17[3] = v14;
          v17[4] = v16;
          *&v80[0] = v17 + 3;
          *(&v80[0] + 1) = v17;
          sub_29ADE7EC8(&v72, v80);
          if (*(&v80[0] + 1))
          {
            sub_29A014BEC(*(&v80[0] + 1));
          }

          if (v83 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = *(&v72 + 1);
        v18 = v73[0];
        if (v73[0])
        {
          atomic_fetch_add_explicit(v73[0]->__m_.__opaque, 1uLL, memory_order_relaxed);
        }

        v69 = v18;
        if (v74 == 1)
        {
          std::mutex::unlock(v73[1]);
        }

        if (v73[0])
        {
          sub_29A014BEC(v73[0]);
        }

        v20 = *v19;
        v21 = v19[1];
        GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(*a4, 1);
        (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "FrustumCulling Cmds");
        pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(__p);
        sub_29ADE6BF8(v87, __p);
        if (pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v23))
        {
          pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_BeginGPUCountVisibleInstances(v7, a4);
          v24 = v89;
          v25 = atomic_load(&qword_2A174EBB0);
          if (!v25)
          {
            v25 = sub_29ADE80AC();
          }

          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(v24, __p, (v25 + 40), (v7 + 280), *(*(v7 + 280) + 48), -1, 1);
        }

        v26 = v89;
        v27 = atomic_load(&qword_2A174EBB0);
        if (!v27)
        {
          v27 = sub_29ADE80AC();
        }

        v28 = a4;
        v29 = Hgi;
        v30 = a3;
        v31 = v21;
        v32 = v20;
        v33 = *(v7 + 184);
        v34 = *(v33 + 208);
        v35 = *(v33 + 216);
        *&v72 = v34;
        *(&v72 + 1) = v35;
        if (v35)
        {
          v36 = 1;
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
          v37 = *(v7 + 184);
          v34 = *(v37 + 208);
          v38 = *(v37 + 216);
          if (v38)
          {
            v36 = 0;
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v38 = 0;
          v36 = 1;
        }

        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(v26, __p, (v27 + 8), &v72, *(v34 + 48), -1, 1);
        if ((v36 & 1) == 0)
        {
          sub_29A014BEC(v38);
        }

        if (*(&v72 + 1))
        {
          sub_29A014BEC(*(&v72 + 1));
        }

        v39 = v89;
        v40 = atomic_load(&qword_2A174EBB0);
        v41 = v32;
        v42 = v31;
        v43 = v30;
        v44 = v29;
        v45 = v28;
        if (!v40)
        {
          v40 = sub_29ADE80AC();
        }

        v46 = *(v7 + 200);
        v47 = *(v46 + 208);
        v48 = *(v46 + 216);
        *&v72 = v47;
        *(&v72 + 1) = v48;
        if (v48)
        {
          v49 = 1;
          atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
          v50 = *(v7 + 200);
          v47 = *(v50 + 208);
          v51 = *(v50 + 216);
          if (v51)
          {
            v49 = 0;
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v51 = 0;
          v49 = 1;
        }

        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(v39, __p, (v40 + 16), &v72, *(v47 + 48), -1, 1);
        if ((v49 & 1) == 0)
        {
          sub_29A014BEC(v51);
        }

        if (*(&v72 + 1))
        {
          sub_29A014BEC(*(&v72 + 1));
        }

        v53 = *(&v84 + 1);
        for (i = v84; i != v53; i += 88)
        {
          *(i + 80) = 4;
          *(i + 84) = 1;
        }

        v81[0] = (*(*v44 + 144))(v44, __p);
        v81[1] = v54;
        (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v81[0], v54);
        (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v41, v42);
        v55 = (*v43 + 664);
        v56 = *(*v43 + 744);
        v76 = *(*v43 + 728);
        v77 = v56;
        v57 = v55[7];
        v78 = v55[6];
        v79 = v57;
        v58 = v55[1];
        v72 = *v55;
        *v73 = v58;
        v59 = v55[3];
        v74 = v55[2];
        v75 = v59;
        pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v80, &v72);
        v60 = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDrawingRangeNDC(*v43).u32[0];
        v62 = v61;
        v63 = *(v7 + 184);
        v65 = *(v63 + 224);
        v64 = *(v63 + 232);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v66)
        {
          v66 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        (*(*v65 + 168))(&v70, v65, v66 + 176);
        if (v64)
        {
          sub_29A014BEC(v64);
        }

        v67 = *(*(v7 + 200) + 176);
        v72 = v80[0];
        *v73 = v80[1];
        v74 = v80[2];
        v75 = v80[3];
        *&v76 = __PAIR64__(v62, v60);
        DWORD2(v76) = *(*(v7 + 184) + 180);
        HIDWORD(v76) = v67;
        (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v41, v42, 0, 80, &v72);
        (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v67, 1);
        v68 = (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
        if (pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v68))
        {
          pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_EndGPUCountVisibleInstances(v7, v45, (v7 + 296));
        }

        (*(*v44 + 152))(v44, v81);
        if (v71)
        {
          sub_29A014BEC(v71);
        }

        *&v72 = &v86;
        sub_29AB88D58(&v72);
        *&v72 = &v84;
        sub_29AB88B40(&v72);
        if (v83 < 0)
        {
          operator delete(__p[0]);
        }

        if (v69)
        {
          sub_29A014BEC(v69);
        }

        if (v93)
        {
          sub_29A014BEC(v93);
        }

        *&v72 = &v92;
        sub_29A0176E4(&v72);
        if (v91)
        {
          sub_29A014BEC(v91);
        }

        if (v88)
        {
          sub_29A014BEC(v88);
        }

        return sub_29ADD32C4(v87);
      }
    }
  }

  return result;
}

void sub_29ADE4850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_29ADCA62C(&a13);
  sub_29ADD212C(&a52);
  _Unwind_Resume(a1);
}

_BYTE *pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::EncodeDraw(_BYTE *result, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a3, int a4)
{
  v4 = 304;
  if (result[458])
  {
    v4 = 312;
  }

  if (*&result[v4])
  {
    v8 = result;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a3);
    v10 = (*(*Hgi + 200))(Hgi);
    if (*(v8 + 463) == 1 && (*(v10 + 50) & 2) != 0)
    {
      v12 = *(*a2 + 380);
      result = *(v8 + 496);
      *(v8 + 496) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v12)
      {

        return pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_PrepareIndirectCommandBuffer(v8, a2, a3, a4);
      }
    }

    else
    {
      result = *(v8 + 496);
      *(v8 + 496) = 0;
      if (result)
      {
        v11 = *(*result + 8);

        return v11();
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_PrepareIndirectCommandBuffer(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a3, int a4)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a3);
  DrawingProgram = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(DrawingProgram) & 1) != 0 || (result = sub_29B2C922C(v50), (result))
  {
    v10 = *(**(a1 + 8) + 8);
    v11 = *(DrawingProgram + 16);
    __p = *(DrawingProgram + 8);
    v35 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29ADCA4B8(DrawingProgram, v38);
    sub_29ADE5C14(v45, v10, (a1 + 184), DrawingProgram + 24, &__p, v38, (DrawingProgram + 88));
    v43 = v38;
    sub_29A0176E4(&v43);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    sub_29ADE5CF4(a2, a3, v45, a4, &v43);
    v42 = *v43;
    pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v38);
    sub_29ADE5FAC(v45, v38, (a1 + 216), 1);
    v37[0] = (*(*Hgi + 144))(Hgi, v38);
    v37[1] = v12;
    __p = 0;
    v35 = 0;
    v36 = 0;
    sub_29ADE629C(&__p, v45);
    v13 = *(a1 + 184);
    v15 = *(v13 + 224);
    v14 = *(v13 + 232);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*v15 + 168))(&v32, v15, v16 + 176);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v17 = (*(*Hgi + 208))(Hgi);
    GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(*a3, 1);
    if (*(a1 + 458))
    {
      v19 = v45[2];
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v20)
      {
        v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      (*(*v19 + 168))(&v30, v19, v20 + 312);
      HIDWORD(v28) = *(v32 + 52);
      LODWORD(v28) = *(*(a1 + 184) + 176);
      (*(*v17 + 32))(&v29, v17, GlobalComputeCmds, &v42, v37, &__p, v30, v32, *(v32 + 48), v28, *(a1 + 488));
      v21 = v29;
      v29 = 0;
      v22 = *(a1 + 496);
      *(a1 + 496) = v21;
      if (v22)
      {
        (*(*v22 + 8))(v22);
        v23 = v29;
        v29 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      if (v31)
      {
        sub_29A014BEC(v31);
      }
    }

    else
    {
      (*(*v17 + 24))(&v30, v17, GlobalComputeCmds, &v42, v37, &__p, v32, *(v32 + 48), *(*(a1 + 184) + 176), *(v32 + 52));
      v24 = v30;
      v30 = 0;
      v25 = *(a1 + 496);
      *(a1 + 496) = v24;
      if (v25)
      {
        (*(*v25 + 8))(v25);
        v26 = v30;
        v30 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    __p = &v41;
    sub_29AB88D58(&__p);
    __p = &v40;
    sub_29AB88B40(&__p);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v44)
    {
      sub_29A014BEC(v44);
    }

    if (v49)
    {
      sub_29A014BEC(v49);
    }

    v38[0] = &v48;
    sub_29A0176E4(v38);
    if (v47)
    {
      sub_29A014BEC(v47);
    }

    if (v46)
    {
      sub_29A014BEC(v46);
    }

    return sub_29ADD32C4(v45);
  }

  return result;
}

void sub_29ADE4F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_29ADE69D4(&a22);
  if (a34)
  {
    sub_29A014BEC(a34);
  }

  sub_29ADD212C(&a35);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::ExecuteDraw(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a3, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a4, int a5)
{
  if (*(a1 + 8) != *(a1 + 16) || (sub_29B2C9274(v42)) && (*(a1 + 184) || (sub_29B2C92BC(v41)))
  {
    v10 = 304;
    if (*(a1 + 458))
    {
      v10 = 312;
    }

    if (*(a1 + v10))
    {
      Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
      v12 = (*(*Hgi + 200))(Hgi);
      if (*(a1 + 216))
      {
        pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecutePTCS(a1, a2, a3, a4, a5);
        (*(*a2 + 120))(a2, 1);
      }

      if (*(a1 + 496))
      {
        v13 = (*(*Hgi + 208))(Hgi);
        (*(*v13 + 40))(v13, a2, *(a1 + 496));
        (*(*Hgi + 152))(Hgi, *(a1 + 496) + 32);
        v14 = *(a1 + 496);
        *(a1 + 496) = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        DrawingProgram = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(a1, a3, a4);
        v23 = v12;
        if (!pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(DrawingProgram) && (sub_29B2C9304(v40) & 1) == 0)
        {
          return;
        }

        v22 = *(**(a1 + 8) + 8);
        v16 = *(DrawingProgram + 16);
        __p = *(DrawingProgram + 8);
        v25 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29ADCA4B8(DrawingProgram, v28);
        sub_29ADE5C14(v34, v22, (a1 + 184), DrawingProgram + 24, &__p, v28, (DrawingProgram + 88));
        v32 = v28;
        sub_29A0176E4(&v32);
        if (v16)
        {
          sub_29A014BEC(v16);
        }

        sub_29ADE5CF4(a3, a4, v34, a5, &v32);
        (*(*a2 + 56))(a2, *v32, v32[1]);
        pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v28);
        sub_29ADE5FAC(v34, v28, (a1 + 216), 1);
        v27[0] = (*(*Hgi + 144))(Hgi, v28);
        v27[1] = v17;
        (*(*a2 + 64))(a2, v27[0], v17);
        __p = 0;
        v25 = 0;
        v26 = 0;
        sub_29ADE629C(&__p, v34);
        (*(*a2 + 80))(a2, &__p);
        if ((*(v23 + 48) & 0x40) != 0)
        {
          pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawIndirect(a1, a2, v35);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawImmediate(a1, a2, v35);
        }

        (*(*Hgi + 152))(Hgi, v27);
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        __p = &v31;
        sub_29AB88D58(&__p);
        __p = &v30;
        sub_29AB88B40(&__p);
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        if (v33)
        {
          sub_29A014BEC(v33);
        }

        if (v39)
        {
          sub_29A014BEC(v39);
        }

        v28[0] = &v38;
        sub_29A0176E4(v28);
        if (v37)
        {
          sub_29A014BEC(v37);
        }

        if (v36)
        {
          sub_29A014BEC(v36);
        }

        sub_29ADD32C4(v34);
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

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v18, (v19 + 56));
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v20)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v21)
      {
        v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v20, (v21 + 328), *(a1 + 296));
    }
  }
}

void sub_29ADE5538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  sub_29ADE69D4(&a17);
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  sub_29ADD212C(&a28);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecutePTCS(uint64_t result, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a3, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a4, int a5)
{
  v8 = result;
  if (*(result + 8) != *(result + 16) || (result = sub_29B2C934C(v36), (result & 1) != 0))
  {
    if (*(v8 + 184) || (result = sub_29B2C9394(v35), (result & 1) != 0))
    {
      v9 = 304;
      if (*(v8 + 458))
      {
        v9 = 312;
      }

      if (*(v8 + v9))
      {
        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
        v11 = *((*(*Hgi + 200))(Hgi) + 48);
        DrawingProgram = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(v8, a3, a4);
        if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(DrawingProgram) & 1) != 0 || (result = sub_29B2C93DC(v34), (result))
        {
          v13 = *(**(v8 + 8) + 8);
          v14 = *(DrawingProgram + 2);
          v42 = *(DrawingProgram + 1);
          v43 = &v14->__vftable;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29ADCA4B8(DrawingProgram, v38);
          sub_29ADE5C14(v26, v13, (v8 + 184), DrawingProgram + 24, &v42, v38, DrawingProgram + 11);
          v37[0] = v38;
          sub_29A0176E4(v37);
          if (v14)
          {
            sub_29A014BEC(v14);
          }

          v15 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
          v16 = v29;
          if ((atomic_load_explicit(&qword_2A174EBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EBD0))
          {
            qword_2A174EBC8 = pxrInternal__aapl__pxrReserved__::ArchHash64("_GetPTCSPipeline", 0x11);
            __cxa_guard_release(&qword_2A174EBD0);
          }

          v17 = qword_2A174EBC8;
          v18 = *(v16 + 64);
          GraphicsPipelineHash = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetGraphicsPipelineHash(*a3, &v32, a5);
          v20 = bswap64(0x9E3779B97F4A7C55 * (v18 + ((v17 + v18 + (v17 + v18) * (v17 + v18)) >> 1)));
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGraphicsPipeline(*a4, bswap64(0x9E3779B97F4A7C55 * (GraphicsPipelineHash + ((v20 + GraphicsPipelineHash + (v20 + GraphicsPipelineHash) * (v20 + GraphicsPipelineHash)) >> 1))), &v42);
          v21 = v11;
          if (v47 == 1)
          {
            pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v38);
            pxrInternal__aapl__pxrReserved__::HdStRenderPassState::InitGraphicsPipelineDesc(*a3, v38, &v32, a5);
            v41[104] = 0;
            *&v40[8] = *(v29 + 64);
            sub_29ADE76A8(v26);
          }

          v23 = v43;
          v22 = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v46 == 1)
          {
            std::mutex::unlock(v45);
          }

          if (v44)
          {
            sub_29A014BEC(v44);
          }

          (*(*a2 + 56))(a2, *v23, v23[1]);
          pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v38);
          sub_29ADE5FAC(v26, v38, (v8 + 216), 0);
          v37[0] = (*(*v15 + 144))(v15, v38);
          v37[1] = v24;
          (*(*a2 + 64))(a2, v37[0], v24);
          v42 = 0;
          v43 = 0;
          v44 = 0;
          sub_29ADE629C(&v42, v26);
          (*(*a2 + 80))(a2, &v42);
          if ((v21 & 0x40) != 0)
          {
            pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawIndirect(v8, a2, v27);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawImmediate(v8, a2, v27);
          }

          (*(*v15 + 152))(v15, v37);
          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          v42 = v41;
          sub_29AB88D58(&v42);
          v42 = v40;
          sub_29AB88B40(&v42);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }

          if (v22)
          {
            sub_29A014BEC(v22);
          }

          if (v33)
          {
            sub_29A014BEC(v33);
          }

          v38[0] = &v31;
          sub_29A0176E4(v38);
          if (v30)
          {
            sub_29A014BEC(v30);
          }

          if (v28)
          {
            sub_29A014BEC(v28);
          }

          return sub_29ADD32C4(v26);
        }
      }
    }
  }

  return result;
}

void sub_29ADE5B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_2A174EBD0);
  sub_29ADD212C(va);
  _Unwind_Resume(a1);
}

void *sub_29ADE5C14(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void **a6, void *a7)
{
  v13 = sub_29ADE7370(a1, a2);
  v14 = a3[1];
  v13[21] = *a3;
  v13[22] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  a1[23] = a4;
  v15 = a5[1];
  a1[24] = *a5;
  a1[25] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  a1[26] = 0;
  a1[27] = 0;
  a1[28] = 0;
  sub_29ADC3E54(a1 + 26, *a6, a6[1], (a6[1] - *a6) >> 4);
  v16 = a7[1];
  a1[29] = *a7;
  a1[30] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29ADE5CC8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 200);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 176);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29ADD32C4(v1);
  _Unwind_Resume(a1);
}

void sub_29ADE5CF4(pxrInternal__aapl__pxrReserved__::HdRenderPassState **a1@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = *(a3 + 192);
  if ((atomic_load_explicit(&qword_2A174EBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EBC0))
  {
    qword_2A174EBB8 = pxrInternal__aapl__pxrReserved__::ArchHash64("_GetDrawPipeline", 0x11);
    __cxa_guard_release(&qword_2A174EBC0);
  }

  v11 = bswap64(0x9E3779B97F4A7C55 * (*(v10 + 64) + ((qword_2A174EBB8 + *(v10 + 64) + (qword_2A174EBB8 + *(v10 + 64)) * (qword_2A174EBB8 + *(v10 + 64))) >> 1)));
  GraphicsPipelineHash = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetGraphicsPipelineHash(*a1, (a3 + 232), a4);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGraphicsPipeline(*a2, bswap64(0x9E3779B97F4A7C55 * (GraphicsPipelineHash + ((v11 + GraphicsPipelineHash + (v11 + GraphicsPipelineHash) * (v11 + GraphicsPipelineHash)) >> 1))), v16);
  if (v21 == 1)
  {
    pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v14);
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::InitGraphicsPipelineDesc(*a1, v14, (a3 + 232), a4);
    v15 = *(*(a3 + 192) + 64);
    sub_29ADE76A8(a3);
  }

  v13 = v18;
  *a5 = v17;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v20 == 1)
  {
    std::mutex::unlock(v19);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }
}

void sub_29ADE5FAC(void *a1, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2, __int128 **a3, int a4)
{
  sub_29ADE6BF8(a1, a2);
  MEMORY[0x29C2C1A60](a2, "PipelineDrawBatch.Drawing");
  v8 = a1[23];
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v9)
  {
    v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInterleavedBufferArrayBindingDesc(v8, a2, (a1 + 4), v9 + 78);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(a1[23], a2, a1 + 2);
  if (*(a1[29] + 24))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(a1[23], a2, a1 + 6);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(a1[23], a2, a1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(a1[23], a2, a1 + 10);
  if (*a3)
  {
    v10 = a1[23];
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v11)
    {
      v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(v10, a2, v11 + 68, a3, *(*a3 + 12), -1, 1);
    if (a4)
    {
      v12 = a1[23];
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(v12, a2, v13 + 68, a3, *(*a3 + 12), -1, 1);
      *(*(a2 + 4) - 16) = 6;
    }
  }

  v14 = a1[26];
  for (i = a1[27]; v14 != i; v14 += 2)
  {
    v16 = (*(**v14 + 72))();
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a1[23];
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInterleavedBufferArrayBindingDesc(v18, a2, &v27, v19 + 50);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    (*(**v14 + 96))(*v14, &v24);
    v20 = v24;
    v21 = v25;
    while (v20 != v21)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBindingRequestBindingDesc(a1[23], a2, v20);
      v20 = (v20 + 72);
    }

    v22 = a1[23];
    v23 = (*(**v14 + 64))();
    pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::GetBindingDescs(v22, a2, v23);
    v29 = &v24;
    sub_29ADCBE70(&v29);
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }
}

void sub_29ADE6268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADE629C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 168);
  v6 = *(v4 + 208);
  v5 = *(v4 + 216);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v6 + 48);
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v9 >= v8)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = sub_29A012C48(a1, v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[24 * v11];
    v17 = &v15[24 * v14];
    *v16 = *v6;
    *(v16 + 4) = v7;
    *(v16 + 5) = 0;
    v10 = v16 + 24;
    v18 = *(a1 + 8) - *a1;
    v19 = &v16[-v18];
    memcpy(&v16[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v10;
    *(a1 + 16) = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = *v6;
    *(v9 + 16) = v7;
    *(v9 + 20) = 0;
    v10 = (v9 + 24);
  }

  *(a1 + 8) = v10;
  v21 = *a1;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v22 = (*(**(a2 + 96) + 176))(*(a2 + 96));
  v23 = *v22;
  v24 = *(v22 + 8);
  if (*v22 != v24)
  {
    v25 = -1431655765 * ((v10 - v21) >> 3);
    do
    {
      if (sub_29ADD2604(*(a2 + 184), v23, -1) == 5)
      {
        v26 = v23[1];
        v27 = *(v26 + 48);
        v29 = *(a1 + 8);
        v28 = *(a1 + 16);
        if (v29 >= v28)
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a1) >> 3);
          v32 = v31 + 1;
          if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a1) >> 3);
          if (2 * v33 > v32)
          {
            v32 = 2 * v33;
          }

          if (v33 >= 0x555555555555555)
          {
            v34 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            v35 = sub_29A012C48(a1, v34);
          }

          else
          {
            v35 = 0;
          }

          v36 = &v35[24 * v31];
          v37 = &v35[24 * v34];
          *v36 = *v26;
          *(v36 + 4) = v27;
          *(v36 + 5) = v25;
          v30 = v36 + 24;
          v38 = *(a1 + 8) - *a1;
          v39 = &v36[-v38];
          memcpy(&v36[-v38], *a1, v38);
          v40 = *a1;
          *a1 = v39;
          *(a1 + 8) = v30;
          *(a1 + 16) = v37;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = *v26;
          *(v29 + 16) = v27;
          *(v29 + 20) = v25;
          v30 = (v29 + 24);
        }

        *(a1 + 8) = v30;
        ++v25;
      }

      v23 += 3;
    }

    while (v23 != v24);
  }
}

void sub_29ADE6534(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawIndirect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 184);
  v8 = *(v6 + 224);
  v7 = *(v6 + 232);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v9)
  {
    v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*v8 + 168))(&v19, v8, v9 + 176);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v19 || (v14 = "hdSt/pipelineDrawBatch.cpp", v15 = "_ExecuteDrawIndirect", v16 = 1443, v17 = "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawIndirect(HgiGraphicsCmds *, const HdStBufferArrayRangeSharedPtr &)", v18 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v14, "paramBuffer", 0) & 1) != 0))
  {
    if (*(a1 + 458))
    {
      v10 = *a3;
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v11)
      {
        v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      (*(*v10 + 168))(&v12, v10, v11 + 312);
      if (v12 || (v14 = "hdSt/pipelineDrawBatch.cpp", v15 = "_ExecuteDrawIndirect", v16 = 1454, v17 = "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawIndirect(HgiGraphicsCmds *, const HdStBufferArrayRangeSharedPtr &)", v18 = 0, pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v14, "indexBuffer", 0)))
      {
        (*(*a2 + 112))(a2);
      }

      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    else
    {
      (*(*a2 + 96))(a2, v19, *(v19 + 48), *(*(a1 + 184) + 176), *(v19 + 52));
    }
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }
}

void sub_29ADE6784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADE67C0()
{
  if (!v0)
  {
    JUMPOUT(0x29ADE67B8);
  }

  JUMPOUT(0x29ADE67B0);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawImmediate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 184);
  v6 = *(v5 + 176);
  v7 = *(v5 + 180);
  if (*(a1 + 458))
  {
    v8 = *a3;
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v9)
    {
      v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*v8 + 168))(&v16, v8, v9 + 312);
    if (v16 || (v14[0] = "hdSt/pipelineDrawBatch.cpp", v14[1] = "_ExecuteDrawImmediate", v14[2] = 1494, v14[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_ExecuteDrawImmediate(HgiGraphicsCmds *, const HdStBufferArrayRangeSharedPtr &)", v15 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "indexBuffer", 0) & 1) != 0))
    {
      if (v6)
      {
        v10 = 0;
        do
        {
          v11 = (*(a1 + 232) + 4 * v10);
          if (*v11 && v11[1])
          {
            (*(*a2 + 104))(a2, v16);
          }

          v10 += v7;
          --v6;
        }

        while (v6);
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else if (v6)
  {
    v12 = 0;
    do
    {
      v13 = (*(a1 + 232) + 4 * v12);
      if (*v13 && v13[1])
      {
        (*(*a2 + 88))(a2);
      }

      v12 += v7;
      --v6;
    }

    while (v6);
  }
}

void sub_29ADE69B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADE69D4(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_29AB88D58(&v3);
  v3 = (a1 + 24);
  sub_29AB88B40(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CreateCullingProgram(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  v5 = *(a1 + 328);
  v4 = *(a1 + 336);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      v6 = *(a1 + 457);
      sub_29A014BEC(v4);
      if ((v6 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      sub_29A014BEC(v4);
    }
  }

  else if (v5 && (*(a1 + 457) & 1) == 0)
  {
    return;
  }

  v7 = *(a1 + 461);
  v8 = *(a1 + 456);
  IsEnabledGPUCountVisibleInstances = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v4);
  pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::HdSt_CullingComputeShaderKey(v22, v7, v8, IsEnabledGPUCountVisibleInstances);
  v10 = atomic_load(&qword_2A174EBB0);
  if (!v10)
  {
    v10 = sub_29ADE80AC();
  }

  v11 = *(a1 + 480);
  v12 = *(*(a1 + 184) + 180);
  v13 = *(v10 + 16);
  v20 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v14;
    }
  }

  v21 = __PAIR64__(v12, v11);
  pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::Create(v22, a2, &v18);
  sub_29A166F2C((a1 + 368), &v20);
  *(a1 + 376) = v21;
  v15 = v18;
  v16 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 416);
  *(a1 + 408) = v15;
  *(a1 + 416) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(a1 + 320, *(**(a1 + 8) + 8), a2);
  *(a1 + 457) = 0;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::~HdSt_CullingComputeShaderKey(v22);
}

void sub_29ADE6BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::HdSt_CullingComputeShaderKey::~HdSt_CullingComputeShaderKey(va);
  _Unwind_Resume(a1);
}

void sub_29ADE6BF8(void *a1, uint64_t a2)
{
  MEMORY[0x29C2C1A60](a2, "PipelineDrawBatch.ViewTransformation");
  v4 = a1[23];
  v5 = atomic_load(&qword_2A174EBB0);
  if (!v5)
  {
    v5 = sub_29ADE80AC();
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInterleavedBufferArrayBindingDesc(v4, a2, a1, v5);
  if (a1[16])
  {
    v6 = a1[18];
    if (a1[19] != v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInstanceBufferArrayBindingDesc(a1[23], a2, (v6 + v7), v8++);
        v6 = a1[18];
        v7 += 16;
      }

      while (v8 < (a1[19] - v6) >> 4);
    }

    v9 = a1[23];

    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(v9, a2, a1 + 16);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_BeginGPUCountVisibleInstances(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  v3 = (a1 + 280);
  if (!*(a1 + 280))
  {
    v5 = *a2;
    v6 = atomic_load(&qword_2A174EBB0);
    if (!v6)
    {
      v6 = sub_29ADE80AC();
    }

    sub_29A008E78(__p, "PipelineDrawBatch Visible Instances");
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBufferResource(v5, (v6 + 40), 5, 1, 8, __p, v11);
    v7 = v11[0];
    v11[0] = 0uLL;
    v8 = *(a1 + 288);
    *v3 = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (*(&v11[0] + 1))
      {
        sub_29A014BEC(*(&v11[0] + 1));
      }
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*a2);
  *&v11[0] = &unk_29B70BD9C;
  *(&v11[0] + 1) = 0;
  v11[1] = **v3;
  v11[2] = xmmword_29B70AFB0;
  (*(*GlobalBlitCmds + 64))(GlobalBlitCmds, v11);
  return pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*a2, 0);
}

void sub_29ADE6E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_EndGPUCountVisibleInstances(uint64_t a1, uint64_t **a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(*a2, 1);
  v13 = 0;
  v10 = 4;
  v11 = &v13;
  v12 = 0;
  v8 = **(a1 + 280);
  v9 = 0;
  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*a2);
  (*(*GlobalBlitCmds + 72))(GlobalBlitCmds, &v8);
  result = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*a2, 1);
  *a3 = v13;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::DrawItemInstanceChanged(pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch *this, const pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    v5 = *(v2 + 180);
    v6 = *(a2 + 2);
    v7 = sub_29ADC9478(*(a2 + 1));
    v8 = *(this + 29);
    v10 = *(this + 58);
    v9 = *(this + 59);
    v11 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(*(a2 + 1) + 24), *(*(a2 + 1) + 15));
    v12 = *v11;
    v13 = v11[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      v14 = (*(*v12 + 88))(v12);
    }

    else
    {
      v14 = 1;
    }

    if (*(a2 + 24) == 1)
    {
      v15 = v14 / (v7 + 1);
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v18 = v6 * v5;
    v19 = v10 + v18;
    if (sub_29ADC9798(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("\nInstance Count changed: %d -> %d\n", v16, v17, *(v8 + 4 * v19), v15);
    }

    v20 = (v15 - *(v8 + 4 * v19));
    if (v20)
    {
      *(this + 37) += v20;
      *(v8 + 4 * v19) = v15;
      *(v8 + 4 * (v9 + v18)) = v15;
      *(this + 256) = 1;
    }

    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29ADE7050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::_CullingProgram::_GetCustomBindings(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3 || (sub_29B2C9424(v24)) && (a2 || (sub_29B2C946C(v23)))
  {
    v6 = atomic_load(&qword_2A174EBB0);
    if (!v6)
    {
      v6 = sub_29ADE80AC();
    }

    v16 = 0xFFFFFFFF00000007;
    v7 = *(v6 + 40);
    v17 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v21 = 0;
    v22 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    sub_29ADD2EBC(a2, &v16);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v8 = atomic_load(&qword_2A174EBB0);
    if (!v8)
    {
      v8 = sub_29ADE80AC();
    }

    v16 = 0xFFFFFFFF00000007;
    v9 = *(v8 + 8);
    v17 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v21 = 0;
    v22 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    sub_29ADD2EBC(a2, &v16);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v10 = atomic_load(&qword_2A174EBB0);
    if (!v10)
    {
      v10 = sub_29ADE80AC();
    }

    v16 = -4294967287;
    v11 = *(v10 + 48);
    v17 = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 = v12;
      }
    }

    v21 = 0;
    v22 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    sub_29ADD2EBC(a2, &v16);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v13 = atomic_load(&qword_2A174EBB0);
    if (!v13)
    {
      v13 = sub_29ADE80AC();
    }

    v16 = 0xFFFFFFFF00000007;
    v14 = *(v13 + 16);
    v17 = v14;
    if ((v14 & 7) != 0)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 = v15;
      }
    }

    v21 = 0;
    v22 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    sub_29ADD2EBC(a2, &v16);
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a3 = *(a1 + 121);
  }
}

void sub_29ADE7350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADD2F38(va);
  _Unwind_Resume(a1);
}

void *sub_29ADE7370(void *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 12));
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 8));
  v7 = v6[1];
  a1[2] = *v6;
  a1[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 17));
  v9 = v8[1];
  a1[4] = *v8;
  a1[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 14));
  v11 = v10[1];
  a1[6] = *v10;
  a1[7] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 16));
  v13 = v12[1];
  a1[8] = *v12;
  a1[9] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 18));
  v15 = v14[1];
  a1[10] = *v14;
  a1[11] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 13));
  v17 = v16[1];
  a1[12] = *v16;
  a1[13] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a2 + 56);
  if (v18)
  {
    v19 = (*(*v18 + 72))(v18);
    v21 = *v19;
    v20 = v19[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      a1[15] = v20;
      a1[14] = v21;
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
  }

  a1[15] = 0;
  a1[14] = v21;
LABEL_20:
  v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 15));
  v23 = v22[1];
  a1[16] = *v22;
  a1[17] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  v24 = sub_29ADC9478(a2);
  sub_29ABC6184((a1 + 18), v24);
  if (a1[19] != a1[18])
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(a2 + 24);
      v28 = sub_29ADCA7A8(a2 + 8, v26);
      v29 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v27, v28);
      v31 = *v29;
      v30 = v29[1];
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v32 = (a1[18] + v25);
      v33 = v32[1];
      *v32 = v31;
      v32[1] = v30;
      if (v33)
      {
        sub_29A014BEC(v33);
      }

      ++v26;
      v25 += 16;
    }

    while (v26 < (a1[19] - a1[18]) >> 4);
  }

  return a1;
}

void sub_29ADE75E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[13];
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = v10[11];
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = v10[9];
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = v10[7];
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = v10[5];
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = v10[3];
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = v10[1];
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADE76A8(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 168);
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v2 = *(a1 + 168);
  }

  v5 = *(v2 + 180);
  __src = 0;
  v26 = 0;
  v27 = 0;
  v6 = (*(*v3 + 176))(v3);
  v7 = *v6;
  v8 = *(v6 + 8);
  while (v7 != v8)
  {
    v9 = sub_29ADD2604(*(a1 + 184), v7, -1);
    v10 = v9;
    v11 = v7[1];
    v12 = *(v11 + 32);
    if (v9 == 3)
    {
      pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v17);
      v17 = __PAIR64__(*(v7[1] + 48), pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiVertexFormat(v12));
      LODWORD(v18) = (v10 >> 8);
      sub_29A3A429C(&__src, &v17);
    }

    else
    {
      v13 = *(v11 + 40);
      if (v9 == 4 && v13 != 0)
      {
        v15 = 0;
        v16 = (v9 >> 8);
        do
        {
          pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v17);
          v17 = __PAIR64__(v15 + *(v7[1] + 48), pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiVertexFormat(v12));
          LODWORD(v18) = v16;
          sub_29A3A429C(&__src, &v17);
          v15 += 4;
          ++v16;
          --v13;
        }

        while (v13);
      }
    }

    v7 += 3;
  }

  pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(&v17);
  LODWORD(v17) = 0;
  sub_29A4EA498(&v18, __src, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - __src) >> 2));
  v19 = 5;
  v20 = 4 * v5;
  LODWORD(v21) = v17;
  v23 = 0;
  v24 = 0;
  __p = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
}

void sub_29ADE7AC4(void *a1, _DWORD *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29ADE7B8C(a1, a2);
  }

  sub_29ADE7C08(a1, a2);
}

void *sub_29ADE7B04(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10E7C8(result, a4);
    result = sub_29AB90BE8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADE7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AB87628(&a9);
  _Unwind_Resume(a1);
}

void sub_29ADE7B8C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
}

void sub_29ADE7C08(void *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v5 = 0x666666666666666;
    }

    else
    {
      v5 = v3;
    }

    v12 = a1;
    if (v5)
    {
      v6 = sub_29A10E224(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = &v6[40 * v2];
    v8 = v6;
    v9 = v7;
    v10 = v7;
    v11 = &v6[40 * v5];
    *v7 = *a2;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
  }

  sub_29A00C9A4();
}

void sub_29ADE7D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADE7E30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADE7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }
  }

  return sub_29AB875A8(v9);
}

uint64_t sub_29ADE7E30(uint64_t a1)
{
  sub_29ADE7E68(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADE7E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 40;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

void sub_29ADE7EC8(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29ADE8004(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29ADE7F80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADE7FB8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2093EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ADE8004(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29ADE8094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29ADE80AC()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "constantPrimvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "dispatchBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "drawCullInput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "drawIndirect", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "drawIndirectCull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "drawIndirectResult", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "ulocCullParams", 0);
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
  atomic_compare_exchange_strong(&qword_2A174EBB0, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A174EBB0);
  }

  return v0;
}

void sub_29ADE8308(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey *pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey::HdSt_PointsShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey *this)
{
  *this = &unk_2A2093EF8;
  v2 = (this + 8);
  v3 = atomic_load(&qword_2A174EBD8);
  if (!v3)
  {
    v3 = sub_29ADE8758();
  }

  v4 = *v3;
  *v2 = *v3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 1) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v5 = atomic_load(&qword_2A174EBD8);
  if (!v5)
  {
    v5 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 2, (v5 + 80));
  v6 = atomic_load(&qword_2A174EBD8);
  if (!v6)
  {
    v6 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 3, (v6 + 40));
  v7 = atomic_load(&qword_2A174EBD8);
  if (!v7)
  {
    v7 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 4, (v7 + 8));
  v8 = atomic_load(&qword_2A174EBD8);
  if (!v8)
  {
    v8 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 5, (v8 + 16));
  v9 = atomic_load(&qword_2A174EBD8);
  if (!v9)
  {
    v9 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 6, (v9 + 24));
  v10 = *(this + 7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 7) = 0;
  v11 = atomic_load(&qword_2A174EBD8);
  if (!v11)
  {
    v11 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 8, (v11 + 56));
  v12 = atomic_load(&qword_2A174EBD8);
  if (!v12)
  {
    v12 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 9, (v12 + 64));
  v13 = atomic_load(&qword_2A174EBD8);
  if (!v13)
  {
    v13 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 10, (v13 + 72));
  v14 = atomic_load(&qword_2A174EBD8);
  if (!v14)
  {
    v14 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 11, (v14 + 48));
  v15 = atomic_load(&qword_2A174EBD8);
  if (!v15)
  {
    v15 = sub_29ADE8758();
  }

  sub_29A166F2C(this + 12, (v15 + 32));
  v16 = *(this + 13);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(this + 13) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey::~HdSt_PointsShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey *this)
{
  *this = &unk_2A2093EF8;
  for (i = 104; i != 56; i -= 8)
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
  pxrInternal__aapl__pxrReserved__::HdSt_PointsShaderKey::~HdSt_PointsShaderKey(this);

  operator delete(v1);
}

unint64_t sub_29ADE8758()
{
  v29 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "points.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "PointId.Vertex.PointParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Selection.DecodeUtils", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "Selection.Vertex.PointSel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "PointId.Fragment.PointParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "Point.Vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "Point.Fragment", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "Fragment.CommonTerminals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "Fragment.Surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "Fragment.NoScalarOverride", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "Instancing.Transform", 0);
  v1 = v0 + 11;
  v2 = *v0;
  v18 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v19 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v20 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v22 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v23 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v25 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v26 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v27 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v28 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[12] = 0;
  v0[13] = 0;
  sub_29A12EF7C(v1, &v18, &v29, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v14 = *(&v18 + i);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = 0;
  atomic_compare_exchange_strong(&qword_2A174EBD8, &v15, v0);
  if (v15)
  {
    v16 = sub_29A178A80(v0);
    operator delete(v16);
    return atomic_load(&qword_2A174EBD8);
  }

  return v0;
}

void sub_29ADE8AEC(_Unwind_Exception *a1)
{
  v4 = 80;
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
      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation *pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation::HdSt_QuadInfoBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation *this, pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  *(this + 2) = 0;
  *this = &unk_2A2093FD0;
  sub_29A1E21F4(this + 3, a3);
  sub_29A1E2240(this + 4, a3 + 1);
  *(this + 3) = a2;
  return this;
}

{
  *(this + 2) = 0;
  *this = &unk_2A2093FD0;
  sub_29A1E21F4(this + 3, a3);
  sub_29A1E2240(this + 4, a3 + 1);
  *(this + 3) = a2;
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_QuadInfoBuilderComputation *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    v4 = operator new(0x40uLL);
    *v4 = 0;
    v4[2] = 0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 3) = 0u;
    v5 = *(this + 3);
    v7[0] = &unk_2A207C8A8;
    v7[1] = v5;
    sub_29A1E21F4(&v8, this + 3);
    sub_29A1E2240(&v9, this + 4);
    pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadInfo(v7, v4);
    pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SetQuadInfo(*(this + 3), v4);
    sub_29AD1019C(this);
    sub_29AC5D070(v7);
  }

  return v2;
}

void sub_29ADE8E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC5D070(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation::HdSt_QuadIndexBuilderComputation(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2094050;
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

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 496);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (v3)
  {
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    LODWORD(v22) = 5;
    *(&v22 + 1) = 4;
    v5 = a2[1];
    if (v5 < a2[2])
    {
      v6 = v22;
      v7 = *(v4 + 39);
      *v5 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v5 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = 4;
LABEL_16:
      v5[1] = v6;
      v5[2] = v8;
      v10 = (v5 + 3);
      goto LABEL_18;
    }
  }

  else
  {
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    LODWORD(v22) = 5;
    *(&v22 + 1) = 6;
    v5 = a2[1];
    if (v5 < a2[2])
    {
      v6 = v22;
      v9 = *(v4 + 39);
      *v5 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v5 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = 6;
      goto LABEL_16;
    }
  }

  v10 = sub_29AD9CC10(a2, v4 + 39, &v22);
LABEL_18:
  a2[1] = v10;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v12 = (v11 + 536);
  LODWORD(v22) = 5;
  *(&v22 + 1) = 1;
  v13 = a2[1];
  if (v13 >= a2[2])
  {
    v16 = sub_29AD9CC10(a2, v12, &v22);
  }

  else
  {
    v14 = v22;
    v15 = *v12;
    *v13 = *v12;
    if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13[1] = v14;
    v13[2] = 1;
    v16 = (v13 + 3);
  }

  a2[1] = v16;
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  LODWORD(v22) = 6;
  *(&v22 + 1) = 1;
  v18 = a2[1];
  if (v18 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v17 + 29, &v22);
  }

  else
  {
    v19 = v22;
    v20 = *(v17 + 29);
    *v18 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18[1] = v19;
    v18[2] = 1;
    result = (v18 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation *this)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(this + 6);
  if (!v2 || (v3 = atomic_load((v2 + 8)), v3 >= 2))
  {
    v4 = 0;
    atomic_compare_exchange_strong(this + 2, &v4, 1u);
    if (!v4)
    {
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v5 = *(this + 5);
      v33[0] = &unk_2A207C8A8;
      v33[1] = v5;
      sub_29A1E21F4(&v34, this + 8);
      sub_29A1E2240(&v35, this + 9);
      if (*(*(this + 5) + 496))
      {
        pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadIndices(v33, &v42, &v39, &v36);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriQuadIndices(v33, &v42, &v39, &v36);
      }

      if (*(*(this + 5) + 496))
      {
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v7)
        {
          v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v46 = &off_2A2043D18;
        v8 = operator new(0x30uLL);
        v9 = v43;
        *v8 = v42;
        *(v8 + 1) = v9;
        v10 = v44;
        *(v8 + 4) = v44;
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
        v45 = v8;
        atomic_fetch_add_explicit(v8 + 10, 1u, memory_order_relaxed);
        v32 = 4;
        sub_29ADEBCA0((v7 + 312), &v45, &v32, &v47);
      }

      else
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v12)
        {
          v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v46 = &off_2A2043D18;
        v13 = operator new(0x30uLL);
        v14 = v43;
        *v13 = v42;
        *(v13 + 1) = v14;
        v15 = v44;
        *(v13 + 4) = v44;
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
        v45 = v13;
        atomic_fetch_add_explicit(v13 + 10, 1u, memory_order_relaxed);
        v32 = 6;
        sub_29ADEBCA0((v12 + 312), &v45, &v32, &v47);
      }

      v17 = v47;
      v18 = v48;
      v47 = 0;
      v48 = 0;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(this + 3);
      *(this + 2) = v17;
      *(this + 3) = v18;
      if (v19)
      {
        sub_29A014BEC(v19);
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if (v48)
      {
        sub_29A014BEC(v48);
      }

      sub_29A186B14(&v45);
      v20 = operator new(0x40uLL);
      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v21)
      {
        v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v48 = &off_2A2043D18;
      v22 = operator new(0x30uLL);
      v23 = v40;
      *v22 = v39;
      *(v22 + 1) = v23;
      v24 = v41;
      *(v22 + 4) = v41;
      if (v24)
      {
        v25 = (v24 - 16);
        if (*(v22 + 3))
        {
          v25 = *(v22 + 3);
        }

        atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v22 + 10);
      v47 = v22;
      atomic_fetch_add_explicit(v22 + 10, 1u, memory_order_relaxed);
      pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v20, (v21 + 536), &v47, 1, 1);
      sub_29AD9C9B0(this + 8, v20);
      sub_29A186B14(&v47);
      v26 = operator new(0x40uLL);
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v27)
      {
        v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v48 = &off_2A2047FA0;
      v28 = operator new(0x30uLL);
      v29 = v37;
      *v28 = v36;
      *(v28 + 1) = v29;
      v30 = v38;
      *(v28 + 4) = v38;
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
      v47 = v28;
      atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
      pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource(v26, (v27 + 232), &v47, 1, 1);
      sub_29AD9C9B0(this + 10, v26);
      sub_29A186B14(&v47);
      sub_29AD1019C(this);
      sub_29AC5D070(v33);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }
  }

  return 0;
}

void sub_29ADE9554(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29AC5D070(va);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_QuadIndexBuilderComputation *this@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(this + 9);
  v8[0] = *(this + 8);
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 11);
  v8[2] = *(this + 10);
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

void sub_29ADE96DC(_Unwind_Exception *exception_object)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::HdSt_QuadrangulateTableComputation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20940D0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 36));
  v7 = *a3;
  v6 = a3[1];
  *(a1 + 40) = a2;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation *this)
{
  v1 = this;
  v43[2] = *MEMORY[0x29EDCA608];
  v2 = *(this + 6);
  if (!v2)
  {
    *&v40 = "hdSt/quadrangulate.cpp";
    *(&v40 + 1) = "Resolve";
    *&v41 = 232;
    *(&v41 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::Resolve()";
    LOBYTE(v42) = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "_quadInfoBuilder", 0);
    if (!result)
    {
      return result;
    }

    v2 = *(v1 + 6);
  }

  v3 = atomic_load((v2 + 8));
  if (v3 < 2)
  {
    return 0;
  }

  v4 = 0;
  atomic_compare_exchange_strong(v1 + 2, &v4, 1u);
  if (v4)
  {
    return 0;
  }

  v5 = *(v1 + 5);
  v6 = *(v5 + 504);
  if (v6)
  {
    if (v6[1])
    {
      v7 = v6[2];
      v8 = *(v6 + 3) - *(v6 + 2);
      sub_29A19D6E4(&v40, (v7 + 2) * (v8 >> 2));
      v9 = *v6;
      if ((v8 >> 2) < 1)
      {
        v19 = *v6;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v32 = (v8 >> 2) & 0x7FFFFFFF;
        v33 = v7 + 2;
        v30 = v1;
        v31 = 4 * v7 + 8;
        v13 = 8;
        do
        {
          v14 = *(*(v6 + 2) + 4 * v11);
          if (v40 < v10 + v14 + 2 || v14 + v12 > ((*(v6 + 6) - *(v6 + 5)) >> 2))
          {
            v35 = "hdSt/quadrangulate.cpp";
            v36 = "Resolve";
            v37 = 269;
            v38 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::Resolve()";
            v39 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Invalid QuadInfo.", v30);
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          sub_29A19DBEC(&v40);
          *(v42 + 4 * v10) = v14;
          sub_29A19DBEC(&v40);
          v34 = v9;
          *(v42 + 4 * v10 + 4) = v9;
          if (v14 >= 1)
          {
            v15 = 4 * v12;
            v16 = v14;
            v17 = v13;
            do
            {
              v18 = *(*(v6 + 5) + v15);
              sub_29A19DBEC(&v40);
              *(v42 + v17) = v18;
              ++v12;
              v17 += 4;
              v15 += 4;
              --v16;
            }

            while (v16);
          }

          v10 += v33;
          v9 = v34 + v14 + 1;
          ++v11;
          v13 += v31;
        }

        while (v11 != v32);
        v19 = *v6;
        v1 = v30;
      }

      if (v9 != v6[1] + v19)
      {
        v35 = "hdSt/quadrangulate.cpp";
        v36 = "Resolve";
        v37 = 285;
        v38 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::Resolve()";
        v39 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v35, "dstOffset == quadInfo->pointsOffset + quadInfo->numAdditionalPoints", 0);
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v22)
      {
        v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v43[1] = &off_2A2043D18;
      v23 = operator new(0x30uLL);
      v24 = v41;
      *v23 = v40;
      *(v23 + 1) = v24;
      v25 = v42;
      *(v23 + 4) = v42;
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
      v43[0] = v23;
      atomic_fetch_add_explicit(v23 + 10, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v22 + 552), v43, &v35);
      v27 = v35;
      v28 = v36;
      v35 = 0;
      v36 = 0;
      sub_29A186B14(v43);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(v1 + 3);
      *(v1 + 2) = v27;
      *(v1 + 3) = v28;
      if (v29)
      {
        sub_29A014BEC(v29);
      }

      if (v28)
      {
        sub_29A014BEC(v28);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v21 = *(v5 + 520);
    *(v5 + 512) = 0u;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    sub_29AD1019C(v1);
  }

  else
  {
    *&v40 = "hdSt/quadrangulate.cpp";
    *(&v40 + 1) = "Resolve";
    *&v41 = 240;
    *(&v41 + 1) = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::Resolve()";
    LOBYTE(v42) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v40, 1, "QuadInfo is null.");
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateTableComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v4 = (v3 + 552);
  LODWORD(v9) = 5;
  *(&v9 + 1) = 1;
  v5 = a2[1];
  if (v5 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v4, &v9);
  }

  else
  {
    v6 = v9;
    v7 = *v4;
    *v5 = *v4;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v5 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5[1] = v6;
    v5[2] = 1;
    result = (v5 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation::HdSt_QuadrangulateComputation(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, _DWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2094150;
  sub_29A1E21F4((a1 + 32), a5);
  sub_29A1E2240((a1 + 36), a5 + 1);
  v11 = *a3;
  v10 = a3[1];
  *(a1 + 40) = a2;
  *(a1 + 48) = v11;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation *this)
{
  v34[2] = *MEMORY[0x29EDCA608];
  v2 = *(this + 6);
  if (!v2)
  {
    v32[0] = "hdSt/quadrangulate.cpp";
    v32[1] = "Resolve";
    v32[2] = 328;
    v32[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation::Resolve()";
    v33 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v32, "_source", 0);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 6);
  }

  v3 = atomic_load((v2 + 8));
  if (v3 >= 2)
  {
    v4 = *(this + 8);
    if (!v4 || (v5 = atomic_load((v4 + 8)), v5 >= 2))
    {
      v6 = 0;
      atomic_compare_exchange_strong(this + 2, &v6, 1u);
      if (!v6)
      {
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
        if (!v7)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
        }

        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
        if (!v8)
        {
          v8 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v7, (v8 + 200));
        v9 = *(*(this + 5) + 504);
        if (!v9 && (sub_29B2C9524(v32) & 1) == 0)
        {
          return 1;
        }

        if (!v9[1])
        {
          v23 = *(this + 6);
          v22 = *(this + 7);
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v24 = *(this + 3);
          *(this + 2) = v23;
          *(this + 3) = v22;
          if (v24)
          {
            sub_29A014BEC(v24);
          }

          sub_29AD1019C(this);
          return 1;
        }

        v34[1] = 0;
        v10 = *(this + 5);
        v29[0] = &unk_2A207C8A8;
        v29[1] = v10;
        sub_29A1E21F4(&v30, this + 8);
        sub_29A1E2240(&v31, this + 9);
        v11 = (*(**(this + 6) + 48))(*(this + 6));
        v12 = (*(**(this + 6) + 64))(*(this + 6));
        v13 = (*(**(this + 6) + 56))(*(this + 6));
        if (pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedPrimvar(v29, v9, v11, v12, v13, v34))
        {
          v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
          if (!v14)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
          }

          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          if (!v15)
          {
            v15 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v14, (v15 + 224), v9[1]);
          v16 = (*(**(this + 6) + 16))(*(this + 6));
          sub_29ADE0EFC(v16, v34, &v27);
          v17 = v27;
          v18 = v28;
          v27 = 0;
          v28 = 0;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = *(this + 3);
          *(this + 2) = v17;
          *(this + 3) = v18;
          if (v19)
          {
            sub_29A014BEC(v19);
          }

          if (v18)
          {
            sub_29A014BEC(v18);
          }

          v20 = v28;
          if (!v28)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v26 = *(this + 6);
          v25 = *(this + 7);
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = *(this + 3);
          *(this + 2) = v26;
          *(this + 3) = v25;
          if (!v20)
          {
            goto LABEL_36;
          }
        }

        sub_29A014BEC(v20);
LABEL_36:
        sub_29AD1019C(this);
        sub_29AC5D070(v29);
        sub_29A186B14(v34);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29ADEA0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC5D070(va);
  sub_29A186B14(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputation::GetPreChainedBuffer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateFaceVaryingComputation::HdSt_QuadrangulateFaceVaryingComputation(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20941D0;
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateFaceVaryingComputation::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateFaceVaryingComputation *this)
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

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v5, (v6 + 216));
    v25[1] = 0;
    v7 = *(this + 5);
    v21 = &unk_2A207C8A8;
    v22 = v7;
    sub_29A1E21F4(v23, this + 8);
    sub_29A1E2240(v23 + 1, this + 9);
    v8 = (*(**(this + 6) + 48))(*(this + 6));
    v9 = (*(**(this + 6) + 64))(*(this + 6));
    v10 = (*(**(this + 6) + 56))(*(this + 6));
    if (pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedFaceVaryingPrimvar(&v21, v8, v9, v10, v25))
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

  v21 = "hdSt/quadrangulate.cpp";
  v22 = "Resolve";
  v23[0] = 418;
  v23[1] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateFaceVaryingComputation::Resolve()";
  v24 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "_source", 0);
  if (result)
  {
    v2 = *(this + 6);
    goto LABEL_2;
  }

  return result;
}

void sub_29ADEA4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC5D070(va);
  sub_29A186B14(v4 - 56);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::HdSt_QuadrangulateComputationGPU(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5)
{
  *a1 = &unk_2A2094250;
  sub_29A1E21F4((a1 + 8), a5);
  sub_29A1E2240((a1 + 12), a5 + 1);
  *(a1 + 16) = a2;
  v10 = *a3;
  *(a1 + 24) = *a3;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = a4;
  ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(a4);
  if (ComponentType != 13 && ComponentType != 19)
  {
    v19[0] = "hdSt/quadrangulate.cpp";
    v19[1] = "HdSt_QuadrangulateComputationGPU";
    v19[2] = 471;
    v19[3] = "pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::HdSt_QuadrangulateComputationGPU(HdSt_MeshTopology *, const TfToken &, HdType, const SdfPath &)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, a4, __p);
    v12 = v18;
    v13 = __p[0];
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    v15 = __p;
    if (v12 < 0)
    {
      v15 = v13;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, "Unsupported primvar type %s for quadrangulation [%s]", v15, Text);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_29ADEA680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 + 24);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v16 + 8));
  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(v16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::Execute(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  v81[4] = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) || (sub_29B2C9570(v64) & 1) != 0)
  {
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

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v6, (v7 + 208));
    v8 = *(a1 + 16);
    if (*(v8 + 512))
    {
      sub_29A0ECEEC(&v62, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
      v9 = *(*(a1 + 16) + 504);
      if (v9)
      {
        ComponentType = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(a1 + 32));
        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
        if (ComponentType == 13)
        {
          if (!v11)
          {
            v11 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v12 = (v11 + 128);
        }

        else
        {
          if (!v11)
          {
            v11 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
          }

          v12 = (v11 + 136);
        }

        v13 = *v12;
        v60 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v60 &= 0xFFFFFFFFFFFFFFF8;
        }

        v81[0] = &unk_2A2094368;
        v81[1] = &v60;
        v81[3] = v81;
        pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v60, a3, v81, &v58);
        sub_29ADEC314(v81);
        if (v58)
        {
          v14 = *a2;
          v15 = a2[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = v15;
          (*(*v14 + 168))(&v56);
          v16 = *(v8 + 512);
          v17 = *(v8 + 520);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v16 + 160))(&v54);
          v18 = *(v9 + 8);
          v61[0] = (*(**a2 + 72))();
          v61[1] = v18 + 2;
          v61[2] = (*(**(v8 + 512) + 72))(*(v8 + 512));
          v61[3] = *(v9 + 8);
          v19 = pxrInternal__aapl__pxrReserved__::HdGetComponentType(*(v56 + 32));
          v20 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfType(v19);
          v21 = *(v56 + 52) / v20;
          v61[4] = *(v56 + 48) / v20;
          v61[5] = v21;
          v61[6] = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(*(v56 + 32));
          v22 = (*(v9 + 24) - *(v9 + 16)) >> 2;
          v61[7] = v22;
          Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a3);
          v24 = *(v58 + 64);
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterResourceBindings(a3, bswap64(0x9E3779B97F4A7C55 * (*(v54 + 8) + ((*(v54 + 8) + *(v56 + 8) + (*(v54 + 8) + *(v56 + 8)) * (*(v54 + 8) + *(v56 + 8))) >> 1))), &v48);
          if (v53 == 1)
          {
            v25 = v56;
            v26 = v54;
            v27 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v76);
            MEMORY[0x29C2C1A60](v27);
            if (*v25)
            {
              pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v66);
              v73 = 0x100000005;
              v74 = 4;
              v75 = 1;
              v65 = 0;
              sub_29A00D250(&v69, &v65);
              sub_29A03A998(&v66, v25);
              sub_29ADEB7F8(&v78, &v66);
              if (__p)
              {
                v72 = __p;
                operator delete(__p);
              }

              if (v69)
              {
                v70 = v69;
                operator delete(v69);
              }

              if (v66)
              {
                v67 = v66;
                operator delete(v66);
              }
            }

            if (*v26)
            {
              pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v66);
              v73 = 0x200000005;
              v74 = 4;
              v75 = 1;
              v65 = 0;
              sub_29A00D250(&v69, &v65);
              sub_29A03A998(&v66, v26);
              sub_29ADEB7F8(&v78, &v66);
              if (__p)
              {
                v72 = __p;
                operator delete(__p);
              }

              if (v69)
              {
                v70 = v69;
                operator delete(v69);
              }

              if (v66)
              {
                v67 = v66;
                operator delete(v66);
              }
            }

            v28 = (*(*Hgi + 144))(Hgi, v76);
            v30 = v29;
            v31 = operator new(0x28uLL);
            v31->__shared_owners_ = 0;
            v31->__shared_weak_owners_ = 0;
            v31->__vftable = &unk_2A2094318;
            v31[1].__vftable = v28;
            v31[1].__shared_owners_ = v30;
            v46 = v31 + 1;
            v47 = v31;
            v66 = &v80;
            sub_29AB88D58(&v66);
            v66 = &v78;
            sub_29AB88B40(&v66);
            if (v77 < 0)
            {
              operator delete(v76[0]);
            }

            sub_29ADEB100(&v48, &v46);
            if (v47)
            {
              sub_29A014BEC(v47);
            }
          }

          v32 = *v49;
          v33 = v49[1];
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(a3, bswap64(0x9E3779B97F4A7C55 * (((v24 + 33) * (v24 + 32)) >> 1) - 0x3910C8D016B07560), &v66);
          if (__p == 1)
          {
            v34 = v58;
            v35 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(v76);
            MEMORY[0x29C2C1A60](v35);
            v78 = *(v34 + 64);
            v79 = 32;
            v36 = (*(*Hgi + 176))(Hgi, v76);
            v38 = v37;
            v39 = operator new(0x28uLL);
            v39->__shared_owners_ = 0;
            v39->__shared_weak_owners_ = 0;
            v39->__vftable = &unk_2A2093EA8;
            v39[1].__vftable = v36;
            v39[1].__shared_owners_ = v38;
            v46 = v39 + 1;
            v47 = v39;
            if (v77 < 0)
            {
              operator delete(v76[0]);
            }

            sub_29ADE7EC8(&v66, &v46);
            if (v47)
            {
              sub_29A014BEC(v47);
            }
          }

          v40 = *v67;
          v41 = *(v67 + 1);
          GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(a3, 0);
          (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "Quadrangulate Cmds");
          (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v32, v33);
          (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v40, v41);
          (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v40, v41, 0, 32, v61);
          (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v22, 1);
          (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
          v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
          if (!v43)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
          }

          v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          if (!v44)
          {
            v44 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v43, (v44 + 224), *(v9 + 4));
          if (v70 == 1)
          {
            std::mutex::unlock(v69);
          }

          if (v68)
          {
            sub_29A014BEC(v68);
          }

          if (v52 == 1)
          {
            std::mutex::unlock(v51);
          }

          if (v50)
          {
            sub_29A014BEC(v50);
          }

          if (v55)
          {
            sub_29A014BEC(v55);
          }

          if (v17)
          {
            sub_29A014BEC(v17);
          }

          if (v57)
          {
            sub_29A014BEC(v57);
          }

          if (v45)
          {
            sub_29A014BEC(v45);
          }
        }

        if (v59)
        {
          sub_29A014BEC(v59);
        }

        if ((v60 & 7) != 0)
        {
          atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v66 = "hdSt/quadrangulate.cpp";
        v67 = "Execute";
        v68 = 496;
        v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)";
        LOBYTE(v70) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v66, 1, "QuadInfo is null.");
      }

      if (v62)
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v63, v62);
      }
    }
  }
}

void sub_29ADEAF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_29ADEB844(&a39);
  sub_29ADE69D4(v39 - 200);
  sub_29ADCA62C(&a13);
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(&a31);
  _Unwind_Resume(a1);
}

void sub_29ADEB100(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29ADEC394(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29ADEB1B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::GetNumOutputElements(pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU *this)
{
  v3 = *(*(this + 2) + 504);
  if (v3)
  {
    return (v3[1] + *v3);
  }

  v8 = v1;
  v9 = v2;
  v6[0] = "hdSt/quadrangulate.cpp";
  v6[1] = "GetNumOutputElements";
  v6[2] = 668;
  v6[3] = "virtual int pxrInternal__aapl__pxrReserved__::HdSt_QuadrangulateComputationGPU::GetNumOutputElements() const";
  v7 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "QuadInfo is null [%s]", Text);
  return 0;
}

void sub_29ADEB258(pxrInternal__aapl__pxrReserved__::HdBufferSource *a1)
{
  *a1 = &unk_2A2093FD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 4);
  sub_29A1DE3A4(a1 + 3);

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29ADEB2B8(pxrInternal__aapl__pxrReserved__::HdBufferSource *a1)
{
  *a1 = &unk_2A2093FD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 4);
  sub_29A1DE3A4(a1 + 3);
  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v2);
}

void sub_29ADEB320(uint64_t a1)
{
  sub_29ADEBBF0(a1);

  operator delete(v1);
}

void sub_29ADEB348(uint64_t a1)
{
  *a1 = &unk_2A20940D0;
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

void sub_29ADEB3E0(uint64_t a1)
{
  *a1 = &unk_2A20940D0;
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

void sub_29ADEB47C(uint64_t a1)
{
  *a1 = &unk_2A2094150;
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

void sub_29ADEB520(uint64_t a1)
{
  *a1 = &unk_2A2094150;
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

void sub_29ADEB5C8(uint64_t a1)
{
  *a1 = &unk_2A20941D0;
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

void sub_29ADEB660(uint64_t a1)
{
  *a1 = &unk_2A20941D0;
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

void sub_29ADEB6FC(uint64_t a1)
{
  *a1 = &unk_2A2094250;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(a1);
}

void sub_29ADEB778(uint64_t a1)
{
  *a1 = &unk_2A2094250;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(a1);

  operator delete(v3);
}

uint64_t sub_29ADEB7F8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ADEB898(a1, a2);
  }

  else
  {
    sub_29ADEB9E0(a1, a1[1], a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29ADEB844(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_29ADEB898(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1587D0(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[88 * v2];
  *(&v16 + 1) = &v7[88 * v6];
  sub_29ADEB9E0(a1, v15, a2);
  *&v16 = v15 + 88;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ADEBA54(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ADEBB08(&v14);
  return v13;
}

void sub_29ADEB9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADEBB08(va);
  _Unwind_Resume(a1);
}

__n128 sub_29ADEB9E0(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  result = *(a3 + 48);
  *(a2 + 3) = result;
  a2[8] = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v4 = *(a3 + 72);
  *(a2 + 77) = *(a3 + 77);
  a2[9] = v4;
  return result;
}

uint64_t sub_29ADEBA54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      sub_29ADEB9E0(a1, a4, v7);
      v7 += 88;
      a4 = v12 + 11;
      v12 += 11;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AB88AD8(a1, v5);
      v5 += 88;
    }
  }

  return sub_29AB88A4C(v9);
}

void **sub_29ADEBB08(void **a1)
{
  sub_29ADEBB3C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADEBB3C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 88;
    sub_29AB88AD8(v4, i - 88);
  }
}

void sub_29ADEBBA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2094318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ADEBBF0(uint64_t a1)
{
  *a1 = &unk_2A2094050;
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  *a1 = &unk_2A2075F38;
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void *sub_29ADEBCA0@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29ADEBD14(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29ADEBD14(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType *sub_29ADEBD78(atomic_ullong *a1)
{
  result = sub_29ADEBDC0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType::~HdStGLSLProgramTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType *sub_29ADEBDC0()
{
  v0 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType::HdStGLSLProgramTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ADEBE0C(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2094368;
  result[1] = v3;
  return result;
}

uint64_t sub_29ADEBE54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2094368;
  a2[1] = v2;
  return result;
}

void sub_29ADEBE80(pxrInternal__aapl__pxrReserved__::TfToken *a1, std::string *this)
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
  v5 = *(a1 + 1);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
  if (!v6)
  {
    v6 = sub_29ADEBD78(&pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens);
  }

  if ((*(v6 + 16) ^ *v5) > 7)
  {
    sub_29A008E78(&__p, "primvar");
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v7)
    {
      v7 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v7 + 11) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((*(v7 + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      goto LABEL_16;
    }
  }

  else
  {
    sub_29A008E78(&__p, "primvar");
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v7)
    {
      v7 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v7 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((*(v7 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
      goto LABEL_16;
    }
  }

  v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
LABEL_16:
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(this, &__p, v8, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "quadInfo");
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v9)
  {
    v9 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v9 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v10 = ((*(v9 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(this, &__p, v10, 2, 4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((atomic_load_explicit(&qword_2A174ECA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ECA0))
  {
    sub_29A008E78(qword_2A174EBE0, "vertexOffset");
    sub_29A008E78(qword_2A174EBF8, "quadInfoStride");
    sub_29A008E78(qword_2A174EC10, "quadInfoOffset");
    sub_29A008E78(qword_2A174EC28, "maxNumVert");
    sub_29A008E78(qword_2A174EC40, "primvarOffset");
    sub_29A008E78(qword_2A174EC58, "primvarStride");
    sub_29A008E78(qword_2A174EC70, "numComponents");
    sub_29A008E78(qword_2A174EC88, "indexEnd");
    __cxa_atexit(sub_29ADEC43C, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174ECA0);
  }

  v11 = qword_2A174EBE0;
  v12 = 192;
  do
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v13)
    {
      v13 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    if ((*(v13 + 13) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = ((*(v13 + 13) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
    }

    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(this, v11, v14, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v11;
    v12 -= 24;
  }

  while (v12);
  sub_29A008E78(&__p, "hd_GlobalInvocationID");
  sub_29A008E78(&v17, "uvec3");
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v15)
  {
    v15 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  if ((*(v15 + 17) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = ((*(v15 + 17) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(this, &__p, &v17, v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_29ADEC2C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20943D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ADEC314(uint64_t a1)
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

uint64_t sub_29ADEC394(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29ADEC424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADEC43C()
{
  v0 = &byte_2A174EC9F;
  v1 = -192;
  v2 = &byte_2A174EC9F;
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