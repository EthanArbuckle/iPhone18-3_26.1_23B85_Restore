void sub_29AD30CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  sub_29AC263E4(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex::_PrimsRemoved(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndex::_PrimsDirtied(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(a1, a3);
  }

  return result;
}

void sub_29AD30DA0(void *a1, const void *a2)
{
  *a1 = &unk_2A2086CE8;
  v2 = a1[23];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[22];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[21];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[20];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[19];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = a1[18];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD30EB0(void *a1, const void *a2)
{
  *a1 = &unk_2A2086CE8;
  v2 = a1[23];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[22];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[21];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[20];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[19];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = a1[18];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

uint64_t sub_29AD30FC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29AD30FF4(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C570))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::GenerateTopology(&qword_2A174C3F8);
    __cxa_atexit(sub_29AD31450, &qword_2A174C3F8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C570);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_29ABF4FA0(&unk_2A174C408, &v20);
  v21 = v20;
  v20 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v22, &v21);
  sub_29ABF4FA0(&unk_2A174C430, &v18);
  v19 = v18;
  v18 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v2, &v19);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v16);
  v17 = v16;
  v16 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v3, &v17);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v5, &v26);
  v6 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v27, &v26);
  v13 = qword_2A174C3F8;
  if ((qword_2A174C3F8 & 7) != 0)
  {
    v7 = qword_2A174C3F8 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((qword_2A174C3F8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  sub_29ABCCFA4(&v13, &v14);
  v15 = v14;
  v14 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v6, &v15);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v10, &v11);
  v12 = v11;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v12);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, a1);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void *sub_29AD313DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, *a1, a2);

  return sub_29ABDE960(a3, v6);
}

void sub_29AD31454(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086D60;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD314B0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086D60;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD31510(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD3159C(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29AD31778(a1, &v9);
  v7 = v9;
  if (v9)
  {
    LOBYTE(a2) = (*(*v9 + 24))(v9, a2, a3, a4);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return (v7 != 0) & a2;
}

void sub_29AD31638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD31650(pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::ComputeNumPoints(a1);
  sub_29A193124(a2, v6);
  sub_29AD31778(a1, &v7);
  if (v7)
  {
    (*(*v7 + 32))(v7, a3);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29A1935CC(a2);
  v12 = *(a2 + 32);
  v7 = sub_29AD31920;
  v8 = 0;
  v9 = sub_29AD31948;
  v10 = 0;
  v11 = &v12;
  pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD3174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD31778(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174C5E0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v3 = __cxa_guard_acquire(qword_2A174C5E0);
    a1 = v6;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C5A8, v4, (v5 + 1));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174C5A8, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C5E0);
      a1 = v6;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174C5A8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD318A8(uint64_t a1, float *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_29A7925DC(*(a1 + 40), a2).u32[0];
  v4 = *v2;
  *v4 = v3;
  v4[1] = v5;
  v4[2] = v6;
  *v2 += 3;
}

void sub_29AD318E4(uint64_t a1, float *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_29A144F00(*(a1 + 40), a2).u32[0];
  v4 = *v2;
  *v4 = v3;
  v4[1] = v5;
  v4[2] = v6;
  *v2 += 3;
}

uint64_t sub_29AD31920(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  *v2 += 12;
  return result;
}

uint64_t sub_29AD31948(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  v4 = *a2;
  *(v3 + 8) = *(a2 + 2);
  *v3 = v4;
  *v2 += 12;
  return result;
}

void sub_29AD31974(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD3199C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD319CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086E00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29AD31A0C()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "X", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "Y", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Z", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "implicitToMesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "implicitToXform", 0);
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
  atomic_compare_exchange_strong(&qword_2A174C628, &v14, v0);
  if (v14)
  {
    v15 = sub_29AB82814(v0);
    operator delete(v15);
    return atomic_load(&qword_2A174C628);
  }

  return v0;
}

void sub_29AD31BF8(_Unwind_Exception *a1)
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

void sub_29AD31CD4(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174C7E0))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::GenerateTopology(0xA, 1, &qword_2A174C668);
    __cxa_atexit(sub_29AD31450, &qword_2A174C668, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174C7E0);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_29ABF4FA0(&unk_2A174C678, &v20);
  v21 = v20;
  v20 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v22, &v21);
  sub_29ABF4FA0(&unk_2A174C6A0, &v18);
  v19 = v18;
  v18 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v2, &v19);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v16);
  v17 = v16;
  v16 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v3, &v17);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v5, &v26);
  v6 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v27, &v26);
  v13 = qword_2A174C668;
  if ((qword_2A174C668 & 7) != 0)
  {
    v7 = qword_2A174C668 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((qword_2A174C668 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  sub_29ABCCFA4(&v13, &v14);
  v15 = v14;
  v14 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v6, &v15);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v10, &v11);
  v12 = v11;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v12);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, a1);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void sub_29AD320C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086E28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD32120(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086E28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD32180(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD3220C(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29AD32648(a1, &v14);
  v15[0] = v14;
  v14 = 0uLL;
  sub_29AD32750(a1, &v13);
  v15[1] = v13;
  v13 = 0uLL;
  sub_29AD32858(a1, &v12);
  v15[2] = v12;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(3, v15, a2, a3, a4);
  for (i = 40; i != -8; i -= 16)
  {
    v10 = *(v15 + i);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD32320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = 40;
  while (1)
  {
    v18 = *(v15 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD32394(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  memset(v12, 0, sizeof(v12));
  sub_29AD32858(a1, &v13);
  v6 = v13;
  if (v13)
  {
    (*(*v13 + 32))(&v19, v13, a3);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (!v6)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    v11 = *(v10 + 4);
    v19 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  sub_29AD32960(&v19, v12);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::ComputeNumPoints(0xA, 1);
  v8 = sub_29A193124(a2, v7);
  sub_29A1935CC(v8);
  v9 = *(a2 + 32);
  sub_29AD32750(a1, &v13);
  if (v13)
  {
    (*(*v13 + 32))(v13, a3);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  sub_29AD32648(a1, &v13);
  if (v13)
  {
    (*(*v13 + 32))(v13, a3);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v18 = v12;
  v19 = v9;
  v13 = sub_29AD318A8;
  v14 = 0;
  v15 = sub_29AD318E4;
  v16 = 0;
  v17 = &v19;
  pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD325E4()
{
  v1 = *(v0 - 112);
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD32648(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C850, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174C850);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 8), dword_2A174C818);
      __cxa_atexit(sub_29ABC33B4, dword_2A174C818, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C850);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174C818, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD32750(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C890, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174C890);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 16), dword_2A174C858);
      __cxa_atexit(sub_29ABC33B4, dword_2A174C858, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C890);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174C858, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD32858(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174C8D0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(qword_2A174C8D0);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 24), dword_2A174C898);
      __cxa_atexit(sub_29ABC33B4, dword_2A174C898, &dword_299FE7000);
      __cxa_guard_release(qword_2A174C8D0);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174C898, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

double sub_29AD32960@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&qword_2A174C628);
  if (!v4)
  {
    v4 = sub_29AD31A0C();
  }

  if ((*v4 ^ *a1) >= 8)
  {
    v8 = atomic_load(&qword_2A174C628);
    if (!v8)
    {
      v8 = sub_29AD31A0C();
    }

    v9 = *(v8 + 8) ^ *a1;
    v7 = 1.0;
    v6 = 0.0;
    if (v9 >= 8)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (v9 >= 8)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 1.0;
    v7 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  *(a2 + 80) = v5;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

void sub_29AD32A30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD32A58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD32A88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086EC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD32AC8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086EF0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD32B24(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086EF0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29AD32B84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v8);
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v4 = v8[5];
  *(result + 4) = v8[4];
  *(result + 5) = v4;
  v5 = v8[7];
  *(result + 6) = v8[6];
  *(result + 7) = v5;
  v6 = v8[1];
  *result = v8[0];
  *(result + 1) = v6;
  v7 = v8[3];
  *(result + 2) = v8[2];
  *(result + 3) = v7;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AD32C20(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29AD3315C(a1, &v14);
  v15[0] = v14;
  v14 = 0uLL;
  sub_29AD331C0(a1, &v13);
  v15[1] = v13;
  v13 = 0uLL;
  sub_29AD332F0(a1, &v12);
  v15[2] = v12;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(3, v15, a2, a3, a4);
  for (i = 40; i != -8; i -= 16)
  {
    v10 = *(v15 + i);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD32D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = 40;
  while (1)
  {
    v18 = *(v15 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD32DA8(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v47 = *MEMORY[0x29EDCA608];
  sub_29AD332F0(a1, &v29);
  v7 = v29;
  if (v29)
  {
    v3 = (*(*v29 + 32))(v29, a3);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  v8 = -0.5;
  if (v7)
  {
    v8 = v3 * -0.5;
  }

  v28[0] = 0.0;
  v28[1] = 0.0;
  v28[2] = v8;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v29, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v29, v28);
  v10 = v9[5];
  v43 = v9[4];
  v44 = v10;
  v11 = v9[7];
  v45 = v9[6];
  v46 = v11;
  v12 = v9[1];
  v39 = *v9;
  v40 = v12;
  v13 = v9[3];
  v41 = v9[2];
  v42 = v13;
  sub_29AD331C0(a1, &v29);
  v14 = v29;
  if (v29)
  {
    (*(*v29 + 32))(v28, v29, a3);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (!v14)
  {
    v28[0] = 0.0;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v15)
  {
    v15 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  if ((*(v15 + 4) ^ *&v28[0]) > 7)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v18)
    {
      v18 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    if ((*(v18 + 5) ^ *&v28[0]) > 7)
    {
      if ((atomic_load_explicit(&qword_2A174CA18, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A174CA18))
      {
        v17 = &unk_2A174C998;
        goto LABEL_25;
      }

      v27 = &unk_2A174C998;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&unk_2A174C998, 1.0);
      v16 = &qword_2A174CA18;
      goto LABEL_41;
    }

    v16 = &qword_2A174D608;
    if (atomic_load_explicit(&qword_2A174D608, memory_order_acquire))
    {
      v17 = &unk_2A174D6A0;
      goto LABEL_25;
    }

    sub_29B2C80A8();
    v27 = &unk_2A174D6A0;
    if (v26)
    {
      goto LABEL_42;
    }

    v25 = &qword_2A174D718;
  }

  else
  {
    v16 = &qword_2A174D600;
    if (atomic_load_explicit(&qword_2A174D600, memory_order_acquire))
    {
      v17 = &unk_2A174D620;
      goto LABEL_25;
    }

    sub_29B2C80EC();
    v27 = &unk_2A174D620;
    if (v24)
    {
      goto LABEL_42;
    }

    v25 = &qword_2A174D698;
  }

  *v25 = 0x3FF0000000000000;
LABEL_41:
  __cxa_guard_release(v16);
LABEL_42:
  v17 = v27;
LABEL_25:
  if ((LOBYTE(v28[0]) & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v29, v17);
  sub_29AD3315C(a1, &v37);
  v19 = v37;
  if (v37)
  {
    (*(*v37 + 32))(v28, v37, a3);
  }

  if (v38)
  {
    sub_29A014BEC(v38);
  }

  if (!v19)
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v28, 1.0);
  }

  v20 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v20;
  v21 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v21;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  v23 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v23;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v28);
}

void sub_29AD330F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __cxa_guard_abort(&qword_2A174CA18);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AD3315C(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent((a1 + 8), &v3);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AD331A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD331C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C950, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v3 = __cxa_guard_acquire(&qword_2A174C950);
    a1 = v6;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C918, v4, (v5 + 24));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174C918, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C950);
      a1 = v6;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174C918, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD332F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174C990, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v3 = __cxa_guard_acquire(&qword_2A174C990);
    a1 = v6;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174C958, v4, (v5 + 8));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174C958, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174C990);
      a1 = v6;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174C958, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD33424(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD3344C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD3347C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2086F90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD334BC(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CC10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174CC10))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::GenerateTopology(0xA, 1, &qword_2A174CA98);
    __cxa_atexit(sub_29AD31450, &qword_2A174CA98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174CC10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_29ABF4FA0(&unk_2A174CAA8, &v20);
  v21 = v20;
  v20 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v22, &v21);
  sub_29ABF4FA0(&unk_2A174CAD0, &v18);
  v19 = v18;
  v18 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v2, &v19);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v16);
  v17 = v16;
  v16 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v3, &v17);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v5, &v26);
  v6 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v27, &v26);
  v13 = qword_2A174CA98;
  if ((qword_2A174CA98 & 7) != 0)
  {
    v7 = qword_2A174CA98 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((qword_2A174CA98 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  sub_29ABCCFA4(&v13, &v14);
  v15 = v14;
  v14 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v6, &v15);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v10, &v11);
  v12 = v11;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v12);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, a1);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void sub_29AD338AC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD33908(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2086FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD33968(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD339F4(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v18 = *MEMORY[0x29EDCA608];
  sub_29AD33FD4(a1, &v16);
  v17[0] = v16;
  v16 = 0uLL;
  sub_29AD340E0(a1, &v15);
  v17[1] = v15;
  v15 = 0uLL;
  sub_29AD341EC(a1, &v14);
  v17[2] = v14;
  v14 = 0uLL;
  sub_29AD342F8(a1, &v13);
  v17[3] = v13;
  v13 = 0uLL;
  sub_29AD34404(a1, &v12);
  v17[4] = v12;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(5, v17, a2, a3, a4);
  for (i = 72; i != -8; i -= 16)
  {
    v10 = *(v17 + i);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD33B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = 72;
  while (1)
  {
    v22 = *(v19 + v21);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    v21 -= 16;
    if (v21 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD33BF8(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  memset(v14, 0, sizeof(v14));
  sub_29AD34404(a1, &v15);
  v6 = v15;
  if (v15)
  {
    (*(*v15 + 32))(&v21, v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v6)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    v12 = *(v11 + 8);
    v21 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  sub_29AD32960(&v21, v14);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::ComputeNumPoints(0xA, 1);
  v8 = sub_29A193124(a2, v7);
  sub_29A1935CC(v8);
  v9 = *(a2 + 32);
  sub_29AD341EC(a1, &v15);
  v10 = v15;
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v10)
  {
    sub_29AD340E0(a1, &v15);
    if (v15)
    {
      (*(*v15 + 32))(v15, a3);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  sub_29AD342F8(a1, &v15);
  v13 = v15;
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v13)
  {
    sub_29AD340E0(a1, &v15);
    if (v15)
    {
      (*(*v15 + 32))(v15, a3);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  sub_29AD33FD4(a1, &v15);
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v21 = v9;
  v20 = v14;
  v15 = sub_29AD318A8;
  v16 = 0;
  v17 = sub_29AD318E4;
  v18 = 0;
  v19 = &v21;
  pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD33F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD33FD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CC80, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174CC80);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CC48, SchemaToken, (v6 + 8));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CC48, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174CC80);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CC48, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD340E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CCC0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174CCC0);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CC88, SchemaToken, (v6 + 16));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CC88, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174CCC0);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CC88, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD341EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CD00, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174CD00);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CCC8, SchemaToken, (v6 + 32));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CCC8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174CD00);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CCC8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD342F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CD40, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174CD40);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CD08, SchemaToken, (v6 + 24));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CD08, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174CD40);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CD08, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD34404(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174CD80, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(qword_2A174CD80);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CD48, SchemaToken, (v6 + 40));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CD48, &dword_299FE7000);
      __cxa_guard_release(qword_2A174CD80);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CD48, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD34514(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD3453C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD3456C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2087058))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD345AC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087080;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD34608(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087080;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29AD34668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v8);
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v4 = v8[5];
  *(result + 4) = v8[4];
  *(result + 5) = v4;
  v5 = v8[7];
  *(result + 6) = v8[6];
  *(result + 7) = v5;
  v6 = v8[1];
  *result = v8[0];
  *(result + 1) = v6;
  v7 = v8[3];
  *(result + 2) = v8[2];
  *(result + 3) = v7;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AD34704(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v17 = *MEMORY[0x29EDCA608];
  sub_29AD34AE8(a1, &v13);
  v15[0] = v13;
  v15[1] = v14;
  v13 = 0;
  v14 = 0;
  sub_29AD34B4C(a1, &v12);
  v16 = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(2, v15, a2, a3, a4);
  for (i = 3; i != -1; i -= 2)
  {
    v10 = v15[i];
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD347E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = 24;
  while (1)
  {
    v16 = *(v13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD34838(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_29AD34B4C(a1, &v21);
  v6 = v21;
  if (v21)
  {
    (*(*v21 + 32))(&v23, v21, a3);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (!v6)
  {
    v23 = 0;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
  }

  if ((*(v7 + 4) ^ v23) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABDCA4C(&pxrInternal__aapl__pxrReserved__::HdConeSchemaTokens);
    }

    if ((*(v11 + 5) ^ v23) > 7)
    {
      if ((atomic_load_explicit(&qword_2A174CE88, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A174CE88))
      {
        v8 = &xmmword_2A174CE08;
        goto LABEL_22;
      }

      v8 = &xmmword_2A174CE08;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&xmmword_2A174CE08, 1.0);
      v20 = &qword_2A174CE88;
      goto LABEL_33;
    }

    v8 = &xmmword_2A174D7A0;
    if ((atomic_load_explicit(&qword_2A174D618, memory_order_acquire) & 1) == 0)
    {
      v20 = &qword_2A174D618;
      sub_29B2C8138();
      if ((v12 & 1) == 0)
      {
        v10 = &qword_2A174D818;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v8 = &xmmword_2A174D720;
    if ((atomic_load_explicit(&qword_2A174D610, memory_order_acquire) & 1) == 0)
    {
      v20 = &qword_2A174D610;
      sub_29B2C817C();
      if ((v9 & 1) == 0)
      {
        v10 = &qword_2A174D798;
LABEL_19:
        *v10 = 0x3FF0000000000000;
LABEL_33:
        __cxa_guard_release(v20);
      }
    }
  }

LABEL_22:
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AD34AE8(a1, &v23);
  v13 = v23;
  if (v23)
  {
    (*(*v23 + 32))(&v21, v23, a3);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v21, 1.0);
  }

  v14 = *v8;
  v15 = v8[1];
  v16 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v16;
  *a2 = v14;
  *(a2 + 16) = v15;
  v17 = v8[4];
  v18 = v8[5];
  v19 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v19;
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v21);
}

void sub_29AD34A8C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A174CE88);
  v3 = *(v1 - 64);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AD34AE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent((a1 + 8), &v3);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AD34B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD34B4C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174CE00, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174CE00);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174CDC8, SchemaToken, (v6 + 40));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174CDC8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174CE00);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174CDC8, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD34C5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD34C84(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD34CB4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2087120))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD34CF4(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D080))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::GenerateTopology(0xA, 0xAuLL, 1, &qword_2A174CF08);
    __cxa_atexit(sub_29AD31450, &qword_2A174CF08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174D080);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_29ABF4FA0(&unk_2A174CF18, &v20);
  v21 = v20;
  v20 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v22, &v21);
  sub_29ABF4FA0(&unk_2A174CF40, &v18);
  v19 = v18;
  v18 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v2, &v19);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v16);
  v17 = v16;
  v16 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v3, &v17);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v5, &v26);
  v6 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v27, &v26);
  v13 = qword_2A174CF08;
  if ((qword_2A174CF08 & 7) != 0)
  {
    v7 = qword_2A174CF08 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((qword_2A174CF08 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  sub_29ABCCFA4(&v13, &v14);
  v15 = v14;
  v14 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v6, &v15);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v10, &v11);
  v12 = v11;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v12);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, a1);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void sub_29AD350E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087148;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD35144(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087148;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD351A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD35230(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29AD35424(a1, &v9);
  v7 = v9;
  if (v9)
  {
    LOBYTE(a2) = (*(*v9 + 24))(v9, a2, a3, a4);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return (v7 != 0) & a2;
}

void sub_29AD352CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD352E4(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::ComputeNumPoints(0xA, 0xAuLL, 1);
  v7 = sub_29A193124(a2, v6);
  sub_29A1935CC(v7);
  v8 = *(a2 + 32);
  sub_29AD35424(a1, &v9);
  if (v9)
  {
    (*(*v9 + 32))(v9, a3);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v14 = v8;
  v9 = sub_29AD31920;
  v10 = 0;
  v11 = sub_29AD31948;
  v12 = 0;
  v13 = &v14;
  pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD353F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD35424(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174D0F0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v3 = __cxa_guard_acquire(qword_2A174D0F0);
    a1 = v6;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      }

      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D0B8, v4, (v5 + 8));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D0B8, &dword_299FE7000);
      __cxa_guard_release(qword_2A174D0F0);
      a1 = v6;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D0B8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD35558(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD35580(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD355B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20871E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD355F0(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174D2F0))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::GenerateTopology(0xA, 4, 1, &qword_2A174D178);
    __cxa_atexit(sub_29AD31450, &qword_2A174D178, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174D2F0);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  sub_29ABF4FA0(&unk_2A174D188, &v20);
  v21 = v20;
  v20 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(&v22, &v21);
  sub_29ABF4FA0(&unk_2A174D1B0, &v18);
  v19 = v18;
  v18 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(v2, &v19);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v16);
  v17 = v16;
  v16 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(v3, &v17);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::Build(v5, &v26);
  v6 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v27, &v26);
  v13 = qword_2A174D178;
  if ((qword_2A174D178 & 7) != 0)
  {
    v7 = qword_2A174D178 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((qword_2A174D178 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  sub_29ABCCFA4(&v13, &v14);
  v15 = v14;
  v14 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(v6, &v15);
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v10, &v11);
  v12 = v11;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v12);
  pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, a1);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void sub_29AD359E4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087210;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD35A40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087210;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD35AA0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD35B2C(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v18 = *MEMORY[0x29EDCA608];
  sub_29AD36114(a1, &v16);
  v17[0] = v16;
  v16 = 0uLL;
  sub_29AD36220(a1, &v15);
  v17[1] = v15;
  v15 = 0uLL;
  sub_29AD3632C(a1, &v14);
  v17[2] = v14;
  v14 = 0uLL;
  sub_29AD36438(a1, &v13);
  v17[3] = v13;
  v13 = 0uLL;
  sub_29AD36544(a1, &v12);
  v17[4] = v12;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(5, v17, a2, a3, a4);
  for (i = 72; i != -8; i -= 16)
  {
    v10 = *(v17 + i);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD35C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = 72;
  while (1)
  {
    v22 = *(v19 + v21);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    v21 -= 16;
    if (v21 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD35D30(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  memset(v14, 0, sizeof(v14));
  sub_29AD36544(a1, &v15);
  v6 = v15;
  if (v15)
  {
    (*(*v15 + 32))(&v21, v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v6)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
    }

    v12 = *(v11 + 8);
    v21 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  sub_29AD32960(&v21, v14);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::ComputeNumPoints(0xA, 4, 1);
  v8 = sub_29A193124(a2, v7);
  sub_29A1935CC(v8);
  v9 = *(a2 + 32);
  sub_29AD3632C(a1, &v15);
  v10 = v15;
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v10)
  {
    sub_29AD36220(a1, &v15);
    if (v15)
    {
      (*(*v15 + 32))(v15, a3);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  sub_29AD36438(a1, &v15);
  v13 = v15;
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v13)
  {
    sub_29AD36220(a1, &v15);
    if (v15)
    {
      (*(*v15 + 32))(v15, a3);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  sub_29AD36114(a1, &v15);
  if (v15)
  {
    (*(*v15 + 32))(v15, a3);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v21 = v9;
  v20 = v14;
  v15 = sub_29AD318A8;
  v16 = 0;
  v17 = sub_29AD318E4;
  v18 = 0;
  v19 = &v21;
  pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD360A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD36114(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D360, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D360);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D328, SchemaToken, (v6 + 8));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D328, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D360);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D328, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36220(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D3A0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D3A0);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D368, SchemaToken, (v6 + 16));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D368, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D3A0);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D368, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD3632C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D3E0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D3E0);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D3A8, SchemaToken, (v6 + 32));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D3A8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D3E0);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D3A8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36438(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D420, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D420);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D3E8, SchemaToken, (v6 + 24));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D3E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D420);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D3E8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36544(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174D460, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(qword_2A174D460);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCapsuleSchema::GetSchemaToken(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCE7C0(&pxrInternal__aapl__pxrReserved__::HdCapsuleSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174D428, SchemaToken, (v6 + 40));
      __cxa_atexit(sub_29ABC33B4, &unk_2A174D428, &dword_299FE7000);
      __cxa_guard_release(qword_2A174D460);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(&unk_2A174D428, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36654(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD3667C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD366AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20872B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD366EC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20872D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD36748(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20872D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD367A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AD36834(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29AD36C5C(a1, &v14);
  v15[0] = v14;
  v14 = 0uLL;
  sub_29AD36D64(a1, &v13);
  v15[1] = v13;
  v13 = 0uLL;
  sub_29AD36E6C(a1, &v12);
  v15[2] = v12;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(3, v15, a2, a3, a4);
  for (i = 40; i != -8; i -= 16)
  {
    v10 = *(v15 + i);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AD36948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = 40;
  while (1)
  {
    v18 = *(v15 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AD369BC(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  memset(v13, 0, sizeof(v13));
  sub_29AD36E6C(a1, &v14);
  v6 = v14;
  if (v14)
  {
    (*(*v14 + 32))(&v20, v14, a3);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (!v6)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    if (!v11)
    {
      v11 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
    }

    v12 = *(v11 + 5);
    v20 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  sub_29AD32960(&v20, v13);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::ComputeNumPoints(v7);
  v9 = sub_29A193124(a2, v8);
  sub_29A1935CC(v9);
  v10 = *(a2 + 32);
  sub_29AD36C5C(a1, &v14);
  if (v14)
  {
    (*(*v14 + 32))(v14, a3);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29AD36D64(a1, &v14);
  if (v14)
  {
    (*(*v14 + 32))(v14, a3);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v19 = v13;
  v20 = v10;
  v14 = sub_29AD318A8;
  v15 = 0;
  v16 = sub_29AD318E4;
  v17 = 0;
  v18 = &v20;
  pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AD36BF8()
{
  v1 = *(v0 - 112);
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AD36C5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D530, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D530);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      if (!v6)
      {
        v6 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 32), dword_2A174D4F8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174D4F8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D530);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174D4F8, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36D64(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174D570, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A174D570);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      if (!v6)
      {
        v6 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 24), dword_2A174D538);
      __cxa_atexit(sub_29ABC33B4, dword_2A174D538, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174D570);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174D538, (a1 + 8), &v7);
  sub_29ABCD298(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36E6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(qword_2A174D5B0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(qword_2A174D5B0);
    if (v4)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(v4);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      if (!v6)
      {
        v6 = sub_29AC68278(&pxrInternal__aapl__pxrReserved__::HdPlaneSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v6 + 16), dword_2A174D578);
      __cxa_atexit(sub_29ABC33B4, dword_2A174D578, &dword_299FE7000);
      __cxa_guard_release(qword_2A174D5B0);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(dword_2A174D578, (a1 + 8), &v7);
  sub_29ABC562C(&v7, a2);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AD36F78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD36FA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD36FD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2087378))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

atomic_uint **sub_29AD37010(atomic_ullong *a1)
{
  result = sub_29AD37058();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType::~HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AD37058()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType::HdsiImplicitSurfaceSceneIndexTokens_StaticTokenType(v0);
  return v0;
}

double sub_29AD3709C@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 72) = 0x3FF0000000000000;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

void sub_29AD370C8(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a3;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
}

void sub_29AD37248(uint64_t a1, const void *a2)
{
  v3 = v2[19];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29AC113C4(v2, a2);
}

void *sub_29AD37294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A2087468;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AD37F48(a2, v4);
}

void pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (*(a3 + 8))
  {
    sub_29AD373C8(this + 160, a3 + 8, &v9);
    v7 = v9;
    v9 = 0uLL;
    v8 = *(a3 + 16);
    *(a3 + 8) = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }
    }
  }
}

void *sub_29AD373C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, a2);

  return sub_29ABDE960(a3, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex *pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::SetRefineLevel(pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex *this, unsigned __int8 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(this + 18);
  v4 = *a2;
  v5 = *v3;
  if (v4 | v5)
  {
    if (v4 != v5 || *(a2 + 1) != *(v3 + 1))
    {
      v7 = this;
      *v3 = *a2;
      v8 = 0uLL;
      if (*a2 == 1)
      {
        v9 = *(a2 + 1);
        v10 = operator new(0x10uLL);
        *v10 = &unk_2A2077528;
        v10[2] = v9;
        sub_29ABF40E4(v16, v10);
        v8 = v16[0];
      }

      v11 = *(v7 + 18);
      v16[0] = 0uLL;
      v12 = *(v11 + 16);
      *(v11 + 8) = v8;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (*(&v16[0] + 1))
      {
        sub_29A014BEC(*(&v16[0] + 1));
      }

      if ((atomic_load_explicit(&qword_2A174D9E8, memory_order_acquire) & 1) == 0)
      {
        v13 = __cxa_guard_acquire(&qword_2A174D9E8);
        if (v13)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::GetDefaultLocator(v13);
          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
          if (!v15)
          {
            v15 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v15 + 8), v16);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A174D820, v16);
          sub_29ABC3488(v16);
          __cxa_atexit(sub_29ABE62AC, &unk_2A174D820, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174D9E8);
        }
      }

      return pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::_DirtyAllPrims(v7, &unk_2A174D820, a3);
    }
  }

  return this;
}

void sub_29AD3764C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29ABC3488(&a9);
  __cxa_guard_abort(&qword_2A174D9E8);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::_DirtyAllPrims(pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v7 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(v3);
  if (result)
  {
    v6 = 0x1000000000;
    pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v5, v3 + 14);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::_PrimsAdded(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, a3);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::_PrimsRemoved(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdsiLegacyDisplayStyleOverrideSceneIndex::_PrimsDirtied(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t a2, uint64_t a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(a1);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(a1, a3);
  }

  return result;
}

void sub_29AD37AAC(void *a1, const void *a2)
{
  *a1 = &unk_2A20873A0;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD37B44(void *a1, const void *a2)
{
  *a1 = &unk_2A20873A0;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29AD37C00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2087418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AD37C44(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

void sub_29AD37C58(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087468;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AD37CB4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2087468;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AD37D14(void *a1@<X8>)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F9AE8, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A14F9AE8);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
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

      qword_2A14F9AD0 = 0;
      *algn_2A14F9AD8 = 0;
      qword_2A14F9AE0 = 0;
      sub_29A12EF7C(&qword_2A14F9AD0, &v7, &v8, 1uLL);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A14F9AD0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A14F9AE8);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *sub_29AD37EC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!result)
  {
    result = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(result + 1) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    *a3 = v9;
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *sub_29AD37F48(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20874B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AD37FA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD37FBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AD37FE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AD38014(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2087500))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AD38054()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2087590, 0, "HDSI_LIGHT_LINK_COLLECTION_CACHE", 0);
  v0 = sub_29AD3AD88();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HDSI_LIGHT_LINK_COLLECTION_CACHE", "Log cache update operations.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2087590, 1, "HDSI_LIGHT_LINK_INVALIDATION", 0);
  v1 = sub_29AD3AD88();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HDSI_LIGHT_LINK_INVALIDATION", "Log invalidation of prims.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2087590, 2, "HDSI_LIGHT_LINK_VERBOSE", 0);
  v2 = sub_29AD3AD88() + 8;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2, "HDSI_LIGHT_LINK_VERBOSE", "Enable additional logging.");
}

void pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndexTokens_StaticTokenType::~HdsiLightLinkingSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndexTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndexTokens_StaticTokenType::HdsiLightLinkingSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndexTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lightPrimTypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "lightFilterPrimTypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "geometryPrimTypes", 0);
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

void sub_29AD382E8(_Unwind_Exception *a1)
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

void *pxrInternal__aapl__pxrReserved__::GEOMETRY_PRIM_TYPES(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A174DA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174DA18))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens);
    if (!v2)
    {
      v2 = sub_29AD3DB18(&pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens);
    }

    v3 = *(v2 + 17);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens);
    if (!v4)
    {
      v4 = sub_29AD3DB18(&pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens);
    }

    sub_29AD38428(&unk_2A174D9F0, v3, *(v4 + 18));
    __cxa_guard_release(&qword_2A174DA18);
  }

  return &unk_2A174D9F0;
}

uint64_t sub_29AD38428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A8446C0(a1, a2, a3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::LIGHT_PRIM_TYPES(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A174DA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174DA48))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
    if (!v2)
    {
      v2 = sub_29ACF233C(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
    }

    v3 = *(v2 + 10);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
    if (!v4)
    {
      v4 = sub_29ACF233C(&pxrInternal__aapl__pxrReserved__::HdLightTypeTokens);
    }

    sub_29AD38428(&unk_2A174DA20, v3, *(v4 + 11));
    __cxa_guard_release(&qword_2A174DA48);
  }

  return &unk_2A174DA20;
}

void *pxrInternal__aapl__pxrReserved__::LIGHT_FILTER_PRIM_TYPES(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A174DA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174DA78))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens);
    if (!v2)
    {
      v2 = sub_29AD3DBA4(&pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens);
    }

    v3 = *(v2 + 1);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens);
    if (!v4)
    {
      v4 = sub_29AD3DBA4(&pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens);
    }

    sub_29AD38428(&unk_2A174DA50, v3, *(v4 + 2));
    __cxa_guard_release(&qword_2A174DA78);
  }

  return &unk_2A174DA50;
}

void sub_29AD3868C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29ABD4DDC();
}

void sub_29AD38868(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!v5)
  {
    goto LABEL_9;
  }

  (*(*v5 + 24))(&v10);
  sub_29AC3A620(&v10, &v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v6 = v12;
  if (v12)
  {
    (*(*v12 + 32))(v12, 0.0);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (!v6)
  {
LABEL_9:
    v7 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 16) = v7;
    v8 = *(a2 + 32);
    *(a3 + 32) = v8;
    if (v8)
    {
      v9 = (v8 - 16);
      if (*(a3 + 24))
      {
        v9 = *(a3 + 24);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AD38958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (a3[1])
  {
    v7 = *(this + 33);
    if (v7)
    {
      v8 = 8 * v7;
      v9 = *(this + 37);
      while ((*v9 ^ *a3) >= 8)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v9 = *(this + 37);
    }

    if (v9 != (*(this + 37) + 8 * v7))
    {
      pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(a3 + 1, &v39);
      pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPaths(&v39, &v37);
      if (v37)
      {
        (*(*v37 + 32))(v41, 0.0);
        v10 = v41[0];
        sub_29ABED558(v41);
        v11 = v10 != 0;
      }

      else
      {
        v11 = 0;
      }

      if (v38)
      {
        sub_29A014BEC(v38);
      }

      if (v40)
      {
        sub_29A014BEC(v40);
      }

      if (!v11)
      {
        v24 = operator new(0x28uLL);
        v15 = v24;
        v25 = this + 144;
        v27 = a3[1];
        v26 = a3[2];
        *v24 = &unk_2A2087600;
        v24[1] = v27;
        v24[2] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        sub_29A1E21F4(v24 + 6, a2);
        sub_29A1E2240(v15 + 7, a2 + 1);
        v15[4] = v25;
        v19 = operator new(0x20uLL);
        v20 = &unk_2A2087648;
        goto LABEL_31;
      }
    }

LABEL_17:
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v13 = *a3;
    if ((*(v12 + 21) ^ *a3) <= 7)
    {
      v14 = operator new(0x28uLL);
      v15 = v14;
      v16 = this + 144;
      v18 = a3[1];
      v17 = a3[2];
      *v14 = &unk_2A20876C0;
      v14[1] = v18;
      v14[2] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(v14 + 6, a2);
      sub_29A1E2240(v15 + 7, a2 + 1);
      v15[4] = v16;
      v19 = operator new(0x20uLL);
      v20 = &unk_2A2087708;
LABEL_31:
      *v19 = v20;
      v19[1] = 0;
      v19[2] = 0;
      v19[3] = v15;
      v28 = a3[2];
      a3[1] = v15;
LABEL_46:
      a3[2] = v19;
      if (v28)
      {
        sub_29A014BEC(v28);
      }

      return;
    }

    v21 = *(this + 23);
    if (v21)
    {
      v22 = 8 * v21;
      v23 = *(this + 27);
      while ((*v23 ^ v13) >= 8)
      {
        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v23 = *(this + 27);
    }

    if (v23 != (*(this + 27) + 8 * v21))
    {
LABEL_41:
      v32 = operator new(0x28uLL);
      v33 = v32;
      v34 = this + 144;
      v36 = a3[1];
      v35 = a3[2];
      *v32 = &unk_2A2087780;
      v32[1] = v36;
      v32[2] = v35;
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(v32 + 6, a2);
      sub_29A1E2240(v33 + 7, a2 + 1);
      v33[4] = v34;
      if (!a3[1])
      {
        v41[0] = "hdsi/lightLinkingSceneIndex.cpp";
        v41[1] = "_LightPrimDataSource";
        v41[2] = 1059;
        v41[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_LightPrimDataSource::_LightPrimDataSource(const HdContainerDataSourceHandle &, const SdfPath &, const _CacheSharedPtr &)";
        v42 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v41, "primContainer", 0);
      }

      v19 = operator new(0x20uLL);
      *v19 = &unk_2A2087888;
      v19[1] = 0;
      v19[2] = 0;
      v19[3] = v33;
      v28 = a3[2];
      a3[1] = v33;
      goto LABEL_46;
    }

LABEL_34:
    v29 = *(this + 28);
    if (v29)
    {
      v30 = 8 * v29;
      for (i = *(this + 32); (*i ^ v13) >= 8; ++i)
      {
        v30 -= 8;
        if (!v30)
        {
          return;
        }
      }
    }

    else
    {
      i = *(this + 32);
    }

    if (i != (*(this + 32) + 8 * v29))
    {
      goto LABEL_41;
    }
  }
}

void sub_29AD38D80(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v2 + 24));
  v4 = *(v2 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v2);
  operator delete(v5);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::_IsGeometry(uint64_t a1, void *a2)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 264);
  v4 = &v2[v3];
  if (v3)
  {
    v5 = 8 * v3;
    while ((*v2 ^ *a2) >= 8)
    {
      ++v2;
      v5 -= 8;
      if (!v5)
      {
        v2 = v4;
        return v2 != v4;
      }
    }
  }

  return v2 != v4;
}

BOOL pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::_IsLight(uint64_t a1, void *a2)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 184);
  v4 = &v2[v3];
  if (v3)
  {
    v5 = 8 * v3;
    while ((*v2 ^ *a2) >= 8)
    {
      ++v2;
      v5 -= 8;
      if (!v5)
      {
        v2 = v4;
        return v2 != v4;
      }
    }
  }

  return v2 != v4;
}

BOOL pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::_IsLightFilter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 256);
  v3 = *(a1 + 224);
  v4 = &v2[v3];
  if (v3)
  {
    v5 = 8 * v3;
    while ((*v2 ^ *a2) >= 8)
    {
      ++v2;
      v5 -= 8;
      if (!v5)
      {
        v2 = v4;
        return v2 != v4;
      }
    }
  }

  return v2 != v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::_PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v23 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(v3);
  if (result)
  {
    v22 = 0x1000000000;
    if (*(v5 + 260) >= 0x11u)
    {
      v8 = *v5;
    }

    else
    {
      v8 = v5;
    }

    v20 = v5;
    v9 = *(v5 + 256);
    if (v9)
    {
      v10 = v8 + 16 * v9;
      do
      {
        v11 = *(v6 + 23);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *(v6 + 27);
          while ((*v13 ^ *(v8 + 8)) >= 8)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          v13 = *(v6 + 27);
        }

        if (v13 != (*(v6 + 27) + 8 * v11))
        {
          std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
        }

LABEL_15:
        v14 = *(v6 + 28);
        if (v14)
        {
          v15 = 8 * v14;
          v16 = *(v6 + 32);
          while ((*v16 ^ *(v8 + 8)) >= 8)
          {
            ++v16;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v16 = *(v6 + 32);
        }

        if (v16 != (*(v6 + 32) + 8 * v14))
        {
          std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
        }

LABEL_23:
        v17 = sub_29A1EF6EC(v6 + 160);
        if ((v6 + 168) != v17)
        {
          sub_29AD39684();
          v19 = qword_2A174DC50;
          v18 = *algn_2A174DC58;
          while (v19 != v18)
          {
            sub_29AD398C4(*(v6 + 18), v8, v19++);
          }

          sub_29A03AFE8(v6 + 20, v17);
          sub_29A1E26CC((v17 + 28));
          operator delete(v17);
        }

        v8 += 16;
      }

      while (v8 != v10);
    }

    sub_29AD39948(*(v6 + 18), v21);
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v20);
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v21);
    return sub_29ABD3844(v21);
  }

  return result;
}

void sub_29AD39324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29ABD3844(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex::_ProcessAddedLightOrFilter(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, atomic_uint ***a3)
{
  if (sub_29AD39CFC(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Processing added notice for %s.\n", v7, v8, Text);
  }

  v9 = sub_29AC1199C((a1 + 112));
  (*(*v9 + 16))(&v19);
  pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetFromParent(&v20, &v17);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdCollectionsSchema::GetCollection(&v17, v10, &v15);
      pxrInternal__aapl__pxrReserved__::HdCollectionSchema::GetMembershipExpression(&v15, &v13);
      if (v13)
      {
        (*(*v13 + 32))(&v12, 0.0);
        sub_29AD39D60(&v12);
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }

      if (v16)
      {
        sub_29A014BEC(v16);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AD39604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 - 96);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v29 = *(v26 - 112);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AD39684()
{
  v12 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174DC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174DC68))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v0)
    {
      v0 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v1 = *(v0 + 45);
    v9 = v1;
    if ((v1 & 7) != 0)
    {
      v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 = v2;
      }
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v3)
    {
      v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v4 = *(v3 + 73);
    v10 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v6 = *(v5 + 46);
    v11 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174DC50 = 0;
    *algn_2A174DC58 = 0;
    qword_2A174DC60 = 0;
    sub_29A12EF7C(&qword_2A174DC50, &v9, &v12, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v8 = *(&v9 + i);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A174DC50, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174DC68);
  }
}

_DWORD *sub_29AD398C4(void *a1, _DWORD *a2, uint64_t *a3)
{
  sub_29AC3C228(&v5, a2, a3);
  sub_29AD3AE08(a1, &v5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AD39948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 168);
    if (v2 != *(a1 + 176))
    {
      memset(v10, 0, sizeof(v10));
      v11 = 1065353216;
      v7 = 0u;
      v8 = 0u;
      v9 = 1065353216;
      sub_29AD3C680(v10, v2);
    }
  }

  else
  {
    __p[0] = "hdsi/lightLinkingSceneIndex.cpp";
    __p[1] = "InvalidatePrimsAndClearDirtyState";
    v4 = 263;
    v5 = "void pxrInternal__aapl__pxrReserved__::HdsiLightLinkingSceneIndex_Impl::_Cache::InvalidatePrimsAndClearDirtyState(HdSceneIndexObserver::DirtiedPrimEntries *)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Null dirty notice vector provided\n");
  }
}

void sub_29AD39C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29A2174F4(&a30);
  sub_29AD3BA9C(v30 - 176);
  sub_29AD3CBF4(v30 - 128);
  _Unwind_Resume(a1);
}

BOOL sub_29AD39CFC(int a1)
{
  v2 = sub_29AD3AD88();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AD3AD88();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296A98[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void sub_29AD39D60(pxrInternal__aapl__pxrReserved__::SdfPathExpression *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_2A14F9B60, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_2A14F9B60);
    if (a1)
    {
    }

    v124 = sub_29A00911C(this + 359, "hd_instanceIndex GetInstanceIndex() {", 37);
    sub_29A00911C(v124, "  hd_instanceIndex r; r.indices[0] = 0; return r; }\n", 52);
  }

  else
  {
    sub_29ADA7BC4(this + 5072, (*this + 384), (*this + 392), (*this + 400), *(*this + 404), 0);
    sub_29ADA7BC4(this + 5072, (*this + 408), (*this + 416), (*this + 424), *(*this + 428), 0);
    v87 = sub_29A00911C(this + 114, "int GetBaseInstanceIndexCoord() {\n", 34);
    v88 = sub_29A00911C(v87, "  return drawingCoord1.y;\n", 26);
    v89 = sub_29A00911C(v88, "}\n", 2);
    v90 = sub_29A00911C(v89, "int GetCurrentInstance() {\n", 27);
    v91 = sub_29A00911C(v90, "  return int(hd_InstanceID - hd_BaseInstance);\n", 47);
    v92 = sub_29A00911C(v91, "}\n", 2);
    v93 = sub_29A00911C(v92, "int GetInstanceIndexCoord() {\n", 30);
    v94 = sub_29A00911C(v93, "  return GetBaseInstanceIndexCoord() +", 38);
    v95 = sub_29A00911C(v94, " GetCurrentInstance() * HD_INSTANCE_INDEX_WIDTH;\n", 49);
    sub_29A00911C(v95, "}\n", 2);
    v96 = sub_29A00911C(this + 219, "int GetBaseInstanceIndexCoord() {\n", 34);
    v97 = sub_29A00911C(v96, "  return drawingCoord1[0].y;\n", 29);
    v98 = sub_29A00911C(v97, "}\n", 2);
    v99 = sub_29A00911C(v98, "int GetCurrentInstance() {\n", 27);
    v100 = sub_29A00911C(v99, "  return int(hd_InstanceID - hd_BaseInstance);\n", 47);
    v101 = sub_29A00911C(v100, "}\n", 2);
    v102 = sub_29A00911C(v101, "int GetInstanceIndexCoord() {\n", 30);
    v103 = sub_29A00911C(v102, "  return GetBaseInstanceIndexCoord() +", 38);
    v104 = sub_29A00911C(v103, " GetCurrentInstance() * HD_INSTANCE_INDEX_WIDTH;\n", 49);
    sub_29A00911C(v104, "}\n", 2);
    v105 = sub_29A00911C(this + 254, "int GetBaseInstanceIndexCoord() {\n", 34);
    v106 = sub_29A00911C(v105, "  return drawingCoord1[0].y;\n", 29);
    v107 = sub_29A00911C(v106, "}\n", 2);
    v108 = sub_29A00911C(v107, "int GetCurrentInstance() {\n", 27);
    v109 = sub_29A00911C(v108, "  return int(hd_InstanceID - hd_BaseInstance);\n", 47);
    v110 = sub_29A00911C(v109, "}\n", 2);
    v111 = sub_29A00911C(v110, "int GetInstanceIndexCoord() {\n", 30);
    v112 = sub_29A00911C(v111, "  return GetBaseInstanceIndexCoord() +", 38);
    v113 = sub_29A00911C(v112, " GetCurrentInstance() * HD_INSTANCE_INDEX_WIDTH;\n", 49);
    sub_29A00911C(v113, "}\n", 2);
    v114 = sub_29A00911C(this + 359, "int GetBaseInstanceIndexCoord() {\n", 34);
    v115 = sub_29A00911C(v114, "  return GetDrawingCoordField(5);\n", 34);
    v116 = sub_29A00911C(v115, "}\n", 2);
    v117 = sub_29A00911C(v116, "int GetCurrentInstance() {\n", 27);
    v118 = sub_29A00911C(v117, "  return hd_drawIndex.instanceId;\n", 34);
    v119 = sub_29A00911C(v118, "}\n", 2);
    v120 = sub_29A00911C(v119, "int GetInstanceIndexCoord() {\n", 30);
    v121 = sub_29A00911C(v120, "  return GetBaseInstanceIndexCoord() + ", 39);
    v122 = sub_29A00911C(v121, " GetCurrentInstance() * HD_INSTANCE_INDEX_WIDTH;\n", 49);
    sub_29A00911C(v122, "}\n", 2);
    if (*(*(this + 1) + 56) == 1)
    {
      sub_29A00911C(&v289, "hd_instanceIndex GetInstanceIndex() {\n  int offset = GetInstanceIndexCoord();\n  hd_instanceIndex r;\n  for (int i = 0; i < HD_INSTANCE_INDEX_WIDTH; ++i)\n    r.indices[i] = instanceIndices[offset+i + 1];\n  return r;\n}\nvoid SetCulledInstanceIndex(uint instanceID) {\n  for (int i = 0; i < HD_INSTANCE_INDEX_WIDTH; ++i)\n    culledInstanceIndices[GetBaseInstanceIndexCoord() + instanceID*HD_INSTANCE_INDEX_WIDTH + i + 1]        = instanceIndices[GetBaseInstanceIndexCoord() + GetCurrentInstance()*HD_INSTANCE_INDEX_WIDTH + i + 1];\n}\n", 527);
      sub_29A00911C(this + 359, "hd_instanceIndex GetInstanceIndex() {\n  int offset = GetInstanceIndexCoord();\n  hd_instanceIndex r;\n  for (int i = 0; i < HD_INSTANCE_INDEX_WIDTH; ++i)\n    r.indices[i] = instanceIndices[offset+i + 1];\n  return r;\n}\nvoid SetCulledInstanceIndex(uint instanceID) {\n  for (int i = 0; i < HD_INSTANCE_INDEX_WIDTH; ++i)\n    culledInstanceIndices[GetBaseInstanceIndexCoord() + instanceID*HD_INSTANCE_INDEX_WIDTH + i + 1]        = instanceIndices[GetBaseInstanceIndexCoord() + GetCurrentInstance()*HD_INSTANCE_INDEX_WIDTH + i + 1];\n}\n", 527);
    }

    else
    {
      sub_29ADA820C(this + 896, (*this + 408), (*this + 416), (*this + 424), "GetInstanceIndexCoord()+localIndex + 1");
      sub_29ADA820C(this + 1736, (*this + 408), (*this + 416), (*this + 424), "GetInstanceIndexCoord()+localIndex + 1");
      sub_29ADA820C(this + 2016, (*this + 408), (*this + 416), (*this + 424), "GetInstanceIndexCoord()+localIndex + 1");
      v125 = sub_29A00911C(&v289, "hd_instanceIndex GetInstanceIndex() {\n", 38);
      v126 = sub_29A00911C(v125, "  hd_instanceIndex r;\n", 22);
      v127 = sub_29A00911C(v126, "  for (int i = 0; i < HD_INSTANCE_INDEX_WIDTH; ++i)\n", 52);
      v128 = sub_29A00911C(v127, "    r.indices[i] = HdGet_culledInstanceIndices(/*localIndex=*/i);\n", 66);
      v129 = sub_29A00911C(v128, "  return r;\n", 12);
      sub_29A00911C(v129, "}\n", 2);
    }
  }

  std::stringbuf::str();
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = &v294;
  }

  else
  {
    v130 = v294.__r_.__value_.__r.__words[0];
  }

  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v294.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v294.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(this + 114, v130, size);
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = &v294;
  }

  else
  {
    v132 = v294.__r_.__value_.__r.__words[0];
  }

  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v133 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v133 = v294.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(this + 219, v132, v133);
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &v294;
  }

  else
  {
    v134 = v294.__r_.__value_.__r.__words[0];
  }

  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v135 = v294.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(this + 254, v134, v135);
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  v136 = sub_29A00911C(this + 114, "hd_drawingCoord GetDrawingCoord() { hd_drawingCoord dc;\n", 56);
  v137 = sub_29A00911C(v136, "  dc.modelCoord              = drawingCoord0.x;\n", 48);
  v138 = sub_29A00911C(v137, "  dc.constantCoord           = drawingCoord0.y;\n", 48);
  v139 = sub_29A00911C(v138, "  dc.elementCoord            = drawingCoord0.z;\n", 48);
  v140 = sub_29A00911C(v139, "  dc.primitiveCoord          = drawingCoord0.w;\n", 48);
  v141 = sub_29A00911C(v140, "  dc.fvarCoord               = drawingCoord1.x;\n", 48);
  v142 = sub_29A00911C(v141, "  dc.shaderCoord             = drawingCoord1.z;\n", 48);
  v143 = sub_29A00911C(v142, "  dc.vertexCoord             = drawingCoord1.w;\n", 48);
  v144 = sub_29A00911C(v143, "  dc.topologyVisibilityCoord = drawingCoord2.x;\n", 48);
  v145 = sub_29A00911C(v144, "  dc.varyingCoord            = drawingCoord2.y;\n", 48);
  sub_29A00911C(v145, "  hd_instanceIndex r = GetInstanceIndex();\n", 43);
  v146 = sub_29A00911C(this + 219, "hd_drawingCoord GetDrawingCoord() { hd_drawingCoord dc;\n", 56);
  v147 = sub_29A00911C(v146, "  dc.modelCoord              = drawingCoord0[0].x;\n", 51);
  v148 = sub_29A00911C(v147, "  dc.constantCoord           = drawingCoord0[0].y;\n", 51);
  v149 = sub_29A00911C(v148, "  dc.elementCoord            = drawingCoord0[0].z;\n", 51);
  v150 = sub_29A00911C(v149, "  dc.primitiveCoord          = drawingCoord0[0].w;\n", 51);
  v151 = sub_29A00911C(v150, "  dc.fvarCoord               = drawingCoord1[0].x;\n", 51);
  v152 = sub_29A00911C(v151, "  dc.shaderCoord             = drawingCoord1[0].z;\n", 51);
  v153 = sub_29A00911C(v152, "  dc.vertexCoord             = drawingCoord1[0].w;\n", 51);
  v154 = sub_29A00911C(v153, "  dc.topologyVisibilityCoord = drawingCoord2[0].x;\n", 51);
  v155 = sub_29A00911C(v154, "  dc.varyingCoord            = drawingCoord2[0].y;\n", 51);
  sub_29A00911C(v155, "  hd_instanceIndex r = GetInstanceIndex();\n", 43);
  v156 = sub_29A00911C(this + 254, "hd_drawingCoord GetDrawingCoord() { hd_drawingCoord dc;\n", 56);
  v157 = sub_29A00911C(v156, "  dc.modelCoord              = drawingCoord0[0].x;\n", 51);
  v158 = sub_29A00911C(v157, "  dc.constantCoord           = drawingCoord0[0].y;\n", 51);
  v159 = sub_29A00911C(v158, "  dc.elementCoord            = drawingCoord0[0].z;\n", 51);
  v160 = sub_29A00911C(v159, "  dc.primitiveCoord          = drawingCoord0[0].w;\n", 51);
  v161 = sub_29A00911C(v160, "  dc.fvarCoord               = drawingCoord1[0].x;\n", 51);
  v162 = sub_29A00911C(v161, "  dc.shaderCoord             = drawingCoord1[0].z;\n", 51);
  v163 = sub_29A00911C(v162, "  dc.vertexCoord             = drawingCoord1[0].w;\n", 51);
  v164 = sub_29A00911C(v163, "  dc.topologyVisibilityCoord = drawingCoord2[0].x;\n", 51);
  v165 = sub_29A00911C(v164, "  dc.varyingCoord            = drawingCoord2[0].y;\n", 51);
  sub_29A00911C(v165, "  hd_instanceIndex r = GetInstanceIndex();\n", 43);
  v166 = sub_29A00911C(this + 359, "// Compute shaders read the drawCommands buffer directly.\n", 58);
  v167 = sub_29A00911C(v166, "hd_drawingCoord GetDrawingCoord() {\n", 36);
  v168 = sub_29A00911C(v167, "  hd_drawingCoord dc;\n", 22);
  v169 = sub_29A00911C(v168, "  dc.modelCoord              = GetDrawingCoordField(0);\n", 56);
  v170 = sub_29A00911C(v169, "  dc.constantCoord           = GetDrawingCoordField(1);\n", 56);
  v171 = sub_29A00911C(v170, "  dc.elementCoord            = GetDrawingCoordField(2);\n", 56);
  v172 = sub_29A00911C(v171, "  dc.primitiveCoord          = GetDrawingCoordField(3);\n", 56);
  v173 = sub_29A00911C(v172, "  dc.fvarCoord               = GetDrawingCoordField(4);\n", 56);
  v174 = sub_29A00911C(v173, "  dc.shaderCoord             = GetDrawingCoordField(6);\n", 56);
  v175 = sub_29A00911C(v174, "  dc.vertexCoord             = GetDrawingCoordField(7);\n", 56);
  v176 = sub_29A00911C(v175, "  dc.topologyVisibilityCoord = GetDrawingCoordField(8);\n", 56);
  v177 = sub_29A00911C(v176, "  dc.varyingCoord            = GetDrawingCoordField(9);\n", 56);
  sub_29A00911C(v177, "  hd_instanceIndex r = GetInstanceIndex();\n", 43);
  if ((v285 & 0x80000000) == 0)
  {
    v178 = 0;
    do
    {
      std::to_string(&v294, v178);
      v179 = sub_29A00911C(this + 114, "  dc.instanceIndex[", 19);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v180 = &v294;
      }

      else
      {
        v180 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v181 = v294.__r_.__value_.__l.__size_;
      }

      v182 = sub_29A00911C(v179, v180, v181);
      v183 = sub_29A00911C(v182, "]", 1);
      v184 = sub_29A00911C(v183, " = r.indices[", 13);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v185 = &v294;
      }

      else
      {
        v185 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v186 = v294.__r_.__value_.__l.__size_;
      }

      v187 = sub_29A00911C(v184, v185, v186);
      sub_29A00911C(v187, "];\n", 3);
      v188 = sub_29A00911C(this + 219, "  dc.instanceIndex[", 19);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v189 = &v294;
      }

      else
      {
        v189 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v190 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v190 = v294.__r_.__value_.__l.__size_;
      }

      v191 = sub_29A00911C(v188, v189, v190);
      v192 = sub_29A00911C(v191, "]", 1);
      v193 = sub_29A00911C(v192, " = r.indices[", 13);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v194 = &v294;
      }

      else
      {
        v194 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v195 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v195 = v294.__r_.__value_.__l.__size_;
      }

      v196 = sub_29A00911C(v193, v194, v195);
      sub_29A00911C(v196, "];\n", 3);
      v197 = sub_29A00911C(this + 254, "  dc.instanceIndex[", 19);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v198 = &v294;
      }

      else
      {
        v198 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v199 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v199 = v294.__r_.__value_.__l.__size_;
      }

      v200 = sub_29A00911C(v197, v198, v199);
      v201 = sub_29A00911C(v200, "]", 1);
      v202 = sub_29A00911C(v201, " = r.indices[", 13);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v203 = &v294;
      }

      else
      {
        v203 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v204 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v204 = v294.__r_.__value_.__l.__size_;
      }

      v205 = sub_29A00911C(v202, v203, v204);
      sub_29A00911C(v205, "];\n", 3);
      v206 = sub_29A00911C(this + 359, "  dc.instanceIndex[", 19);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v207 = &v294;
      }

      else
      {
        v207 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v208 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v208 = v294.__r_.__value_.__l.__size_;
      }

      v209 = sub_29A00911C(v206, v207, v208);
      v210 = sub_29A00911C(v209, "]", 1);
      v211 = sub_29A00911C(v210, " = r.indices[", 13);
      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v212 = &v294;
      }

      else
      {
        v212 = v294.__r_.__value_.__r.__words[0];
      }

      if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v213 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v213 = v294.__r_.__value_.__l.__size_;
      }

      v214 = sub_29A00911C(v211, v212, v213);
      sub_29A00911C(v214, "];\n", 3);
      if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v294.__r_.__value_.__l.__data_);
      }

      ++v178;
    }

    while (v285 + 1 != v178);
    if (v285)
    {
      v215 = 0;
      do
      {
        std::to_string(&v294, v215);
        v216 = sub_29A00911C(this + 114, "  dc.instanceCoords[", 20);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v217 = &v294;
        }

        else
        {
          v217 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v218 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v218 = v294.__r_.__value_.__l.__size_;
        }

        v219 = sub_29A00911C(v216, v217, v218);
        v220 = sub_29A00911C(v219, "]", 1);
        v221 = sub_29A00911C(v220, " = drawingCoordI", 16);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v222 = &v294;
        }

        else
        {
          v222 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v223 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v223 = v294.__r_.__value_.__l.__size_;
        }

        v224 = sub_29A00911C(v221, v222, v223);
        v225 = sub_29A00911C(v224, "", 0);
        v226 = sub_29A00911C(v225, " + dc.instanceIndex[", 20);
        std::to_string(&v286, ++v215);
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v227 = &v286;
        }

        else
        {
          v227 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v228 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v228 = v286.__r_.__value_.__l.__size_;
        }

        v229 = sub_29A00911C(v226, v227, v228);
        sub_29A00911C(v229, "];\n", 3);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

        v230 = sub_29A00911C(this + 219, "  dc.instanceCoords[", 20);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v231 = &v294;
        }

        else
        {
          v231 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v232 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v232 = v294.__r_.__value_.__l.__size_;
        }

        v233 = sub_29A00911C(v230, v231, v232);
        v234 = sub_29A00911C(v233, "]", 1);
        v235 = sub_29A00911C(v234, " = drawingCoordI", 16);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v236 = &v294;
        }

        else
        {
          v236 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v237 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v237 = v294.__r_.__value_.__l.__size_;
        }

        v238 = sub_29A00911C(v235, v236, v237);
        v239 = sub_29A00911C(v238, "[0]", 3);
        v240 = sub_29A00911C(v239, " + dc.instanceIndex[", 20);
        std::to_string(&v286, v215);
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v241 = &v286;
        }

        else
        {
          v241 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v242 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v242 = v286.__r_.__value_.__l.__size_;
        }

        v243 = sub_29A00911C(v240, v241, v242);
        sub_29A00911C(v243, "];\n", 3);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

        v244 = sub_29A00911C(this + 254, "  dc.instanceCoords[", 20);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v245 = &v294;
        }

        else
        {
          v245 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v246 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v246 = v294.__r_.__value_.__l.__size_;
        }

        v247 = sub_29A00911C(v244, v245, v246);
        v248 = sub_29A00911C(v247, "]", 1);
        v249 = sub_29A00911C(v248, " = drawingCoordI", 16);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v250 = &v294;
        }

        else
        {
          v250 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v251 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v251 = v294.__r_.__value_.__l.__size_;
        }

        v252 = sub_29A00911C(v249, v250, v251);
        v253 = sub_29A00911C(v252, "[0]", 3);
        v254 = sub_29A00911C(v253, " + dc.instanceIndex[", 20);
        std::to_string(&v286, v215);
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v255 = &v286;
        }

        else
        {
          v255 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v256 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v256 = v286.__r_.__value_.__l.__size_;
        }

        v257 = sub_29A00911C(v254, v255, v256);
        sub_29A00911C(v257, "];\n", 3);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

        v258 = sub_29A00911C(this + 359, "  dc.instanceCoords[", 20);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v259 = &v294;
        }

        else
        {
          v259 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v260 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v260 = v294.__r_.__value_.__l.__size_;
        }

        v261 = sub_29A00911C(v258, v259, v260);
        v262 = sub_29A00911C(v261, "]", 1);
        v263 = sub_29A00911C(v262, " = GetDrawingCoordField(10 + ", 29);
        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v264 = &v294;
        }

        else
        {
          v264 = v294.__r_.__value_.__r.__words[0];
        }

        if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v265 = HIBYTE(v294.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v265 = v294.__r_.__value_.__l.__size_;
        }

        v266 = sub_29A00911C(v263, v264, v265);
        v267 = sub_29A00911C(v266, ")", 1);
        v268 = sub_29A00911C(v267, " + dc.instanceIndex[", 20);
        std::to_string(&v286, v215);
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v269 = &v286;
        }

        else
        {
          v269 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v270 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v270 = v286.__r_.__value_.__l.__size_;
        }

        v271 = sub_29A00911C(v268, v269, v270);
        sub_29A00911C(v271, "];\n", 3);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v294.__r_.__value_.__l.__data_);
        }
      }

      while (v285 != v215);
    }
  }

  v272 = sub_29A00911C(this + 114, "  return dc;\n", 13);
  sub_29A00911C(v272, "}\n", 2);
  v273 = sub_29A00911C(this + 219, "  return dc;\n", 13);
  sub_29A00911C(v273, "}\n", 2);
  v274 = sub_29A00911C(this + 254, "  return dc;\n", 13);
  sub_29A00911C(v274, "}\n", 2);
  v275 = sub_29A00911C(this + 359, "  return dc;\n", 13);
  sub_29A00911C(v275, "}\n", 2);
  pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(this, this + 3136, &qword_2A174E9E8, v285 + 1, "vs_", "");
  pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(this, this + 4256, &qword_2A174E9E8, v285 + 1, "vs_", "");
  if (*(this + 5361) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoord(this, this + 1176, &qword_2A174E9E8, v285 + 1, "vs_", "[0]");
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(this, this + 3416, &qword_2A174E9E8, v285 + 1, "tcs_", "[gl_InvocationID]");
  }

  if (*(this + 5362) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoord(this, this + 1456, &qword_2A174E9E8, v285 + 1, "tcs_", "[0]");
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(this, this + 3696, &qword_2A174E9E8, v285 + 1, "tes_", "");
  }

  if (*(this + 5363) == 1)
  {
    if (*(this + 5362))
    {
      v276 = "tes_";
    }

    else
    {
      v276 = "vs_";
    }

    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoord(this, this + 2296, &qword_2A174E9E8, v285 + 1, v276, "[0]");
  }

  pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_ProcessDrawingCoord(this, this + 3976, &qword_2A174E9E8, v285 + 1, "gs_", "");
  if (*(this + 5363))
  {
    v277 = "gs_";
  }

  else if (*(this + 5362))
  {
    v277 = "tes_";
  }

  else
  {
    v277 = "vs_";
  }

  pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetDrawingCoord(this, this + 2576, &qword_2A174E9E8, v285 + 1, v277, "");
  v287 = *MEMORY[0x29EDC9528];
  v278 = v287;
  v279 = *(MEMORY[0x29EDC9528] + 72);
  v280 = *(MEMORY[0x29EDC9528] + 64);
  *(&v287 + *(v287 - 3)) = v280;
  v281 = v279;
  v289 = v279;
  v290 = MEMORY[0x29EDC9570] + 16;
  if (v292 < 0)
  {
    operator delete(v291[7].__locale_);
  }

  v290 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v291);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v293);
  __p[0] = v278;
  *(__p + *(v278 - 3)) = v280;
  v296 = v281;
  v297 = (MEMORY[0x29EDC9570] + 16);
  if (v302 < 0)
  {
    operator delete(v300[2]);
  }

  v297 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v298);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v304);
}

void sub_29ADAB478(_Unwind_Exception *a1)
{
  v2 = &STACK[0x24F];
  v3 = -216;
  v4 = &STACK[0x24F];
  while (1)
  {
    v5 = *v4;
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 24;
    if (!v3)
    {
      __cxa_guard_abort(&qword_2A174EA00);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateConstantPrimvar(void *this)
{
  v1 = *this + 24;
  v36 = *(*this + 16);
  v37 = v1;
  if (v36 != v1)
  {
    v2 = this;
    do
    {
      v35 = *(*sub_29ADA84A4(&v36) + 32);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("ConstantData%d", v3, v4, v35);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v34);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *(*sub_29ADA84A4(&v36) + 40);
      v33 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = sub_29A00911C(v2 + 44, "struct ", 7);
      v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, v34);
      sub_29A00911C(v7, " {\n", 3);
      v8 = sub_29ADA84A4(&v36);
      v9 = *(*v8 + 56);
      v31 = *(*v8 + 48);
      v32 = v9;
      while (v31 != v32)
      {
        if (*(*sub_29ADA84DC(&v31) + 8))
        {
          goto LABEL_11;
        }

        __p[0] = "hdSt/codeGen.cpp";
        __p[1] = "_GenerateConstantPrimvar";
        v28 = 4937;
        v29 = "void pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateConstantPrimvar()";
        v30 = 0;
        v24 = **sub_29ADA84DC(&v31) & 0xFFFFFFFFFFFFFFF8;
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

        v26 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Unknown dataType for %s", v22, v23, v25);
        if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!dbIt->dataType.IsEmpty()", v26))
        {
LABEL_11:
          v10 = sub_29A00911C(v2 + 44, "  ", 2);
          v11 = sub_29ADA84DC(&v31);
          v12 = sub_29ADA8514((*v11 + 8), 0);
          v13 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v12);
          v14 = sub_29A00911C(v13, " ", 1);
          v15 = sub_29ADA84DC(&v31);
          pxrInternal__aapl__pxrReserved__::operator<<(v14, *v15);
          if (*(*sub_29ADA84DC(&v31) + 20) >= 2)
          {
            v16 = sub_29A00911C(v2 + 44, "[", 1);
            v17 = sub_29ADA84DC(&v31);
            v18 = MEMORY[0x29C2C1ED0](v16, *(*v17 + 20));
            sub_29A00911C(v18, "]", 1);
          }

          sub_29A00911C(v2 + 44, ";\n", 2);
          v19 = *sub_29ADA84DC(&v31);
          v20 = *sub_29ADA84DC(&v31);
          v21 = sub_29ADA84DC(&v31);
          sub_29ADA876C((v2 + 77), &v33, v19, (v20 + 8), *(*v21 + 20), "GetDrawingCoord().constantCoord", 0);
        }

        sub_29ADA8D40(&v31);
      }

      sub_29A00911C(v2 + 44, "};\n", 3);
      sub_29ADA7BC4((v2 + 634), &v33, v34, &v35, 0, 1);
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v34[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      this = sub_29ADA8DC0(&v36);
    }

    while (v36 != v37);
  }

  return this;
}

void sub_29ADABA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateInstancePrimvar(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this)
{
  sub_29A008864(v82);
  v81[0] = 0;
  v81[1] = 0;
  v66 = this;
  v2 = *this + 240;
  v78 = *(*this + 232);
  v79 = v2;
  v80 = v81;
  v63 = *(MEMORY[0x29EDC9528] + 64);
  v64 = *MEMORY[0x29EDC9528];
  v65 = *(MEMORY[0x29EDC9528] + 72);
  while (v78 != v79)
  {
    v77 = *(*sub_29ADA8F48(&v78) + 32);
    v3 = *sub_29ADA8F48(&v78);
    v76 = *(*sub_29ADA8F48(&v78) + 56);
    v4 = sub_29ADA8F48(&v78);
    v5 = sub_29ADBE450(&v80, (*v4 + 40));
    sub_29A166F2C(v5, (v3 + 48));
    v6 = sub_29ADA8F48(&v78);
    v7 = sub_29ADBE450(&v80, (*v6 + 40));
    sub_29A00D250(v7 + 1, &v76);
    sub_29A008864(&v69);
    v8 = sub_29ADA8F48(&v78);
    v9 = pxrInternal__aapl__pxrReserved__::operator<<(&v71, (*v8 + 40));
    v10 = sub_29A00911C(v9, "_", 1);
    MEMORY[0x29C2C1ED0](v10, v76);
    std::stringbuf::str();
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v68);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, "");
    std::string::operator=(&v74, &__p);
    sub_29A009014(&v72);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = sub_29A00911C(&v71, "GetDrawingCoord().instanceCoords[", 33);
    v12 = MEMORY[0x29C2C1ED0](v11, v76);
    sub_29A00911C(v12, "]", 1);
    sub_29ADA7BC4(v66 + 5072, &v68, (v3 + 48), &v77, 0, 0);
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_29ADA820C(v82, &v68, (v3 + 48), &v77, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v68 & 7) != 0)
    {
      atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v69 = v64;
    *(&v69 + *(v64 - 3)) = v63;
    v71 = v65;
    v72 = MEMORY[0x29EDC9570] + 16;
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v72 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(&v73);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v75);
    sub_29ADA8F80(&v78);
  }

  v69 = v80;
  v70 = v81;
  while (v69 != v70)
  {
    sub_29ADBE62C(&v69);
    v14 = sub_29ADBE564(v69 + 5);
    v15 = pxrInternal__aapl__pxrReserved__::operator<<(&v83, v14);
    v16 = sub_29A00911C(v15, " HdGetInstance_", 15);
    sub_29ADBE62C(&v69);
    v17 = pxrInternal__aapl__pxrReserved__::operator<<(v16, v69 + 4);
    v18 = sub_29A00911C(v17, "(int level, ", 12);
    sub_29ADBE62C(&v69);
    v19 = sub_29ADBE564(v69 + 5);
    v20 = pxrInternal__aapl__pxrReserved__::operator<<(v18, v19);
    sub_29A00911C(v20, " defaultValue) {\n", 17);
    sub_29ADBE62C(&v69);
    v21 = *(v69 + 7);
    __p.__r_.__value_.__r.__words[0] = *(v69 + 6);
    __p.__r_.__value_.__l.__size_ = v21;
    while (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
    {
      v22 = sub_29A00911C(&v83, "  if (level == ", 15);
      v25 = sub_29A34F514(&__p, v23, v24);
      v26 = MEMORY[0x29C2C1ED0](v22, *v25);
      v27 = sub_29A00911C(v26, ") ", 2);
      v28 = sub_29A00911C(v27, "return HdGet_", 13);
      sub_29ADBE62C(&v69);
      v29 = pxrInternal__aapl__pxrReserved__::operator<<(v28, v69 + 4);
      v30 = sub_29A00911C(v29, "_", 1);
      v33 = sub_29A34F514(&__p, v31, v32);
      v34 = MEMORY[0x29C2C1ED0](v30, *v33);
      sub_29A00911C(v34, "();\n", 4);
      sub_29A34F594(&__p);
    }

    v35 = sub_29A00911C(&v83, "  return defaultValue;\n", 23);
    sub_29A00911C(v35, "}\n", 2);
    sub_29ADBE664(&v69);
  }

  v69 = v80;
  v70 = v81;
  while (v69 != v70)
  {
    v36 = sub_29A00911C(&v83, "#if !defined(HD_HAS_", 20);
    sub_29ADBE62C(&v69);
    v37 = pxrInternal__aapl__pxrReserved__::operator<<(v36, v69 + 4);
    v38 = sub_29A00911C(v37, ")\n", 2);
    v39 = sub_29A00911C(v38, "#define HD_HAS_", 15);
    sub_29ADBE62C(&v69);
    v40 = pxrInternal__aapl__pxrReserved__::operator<<(v39, v69 + 4);
    v41 = sub_29A00911C(v40, " 1\n", 3);
    sub_29ADBE62C(&v69);
    v42 = sub_29ADBE564(v69 + 5);
    v43 = pxrInternal__aapl__pxrReserved__::operator<<(v41, v42);
    v44 = sub_29A00911C(v43, " HdGet_", 7);
    sub_29ADBE62C(&v69);
    v45 = pxrInternal__aapl__pxrReserved__::operator<<(v44, v69 + 4);
    v46 = sub_29A00911C(v45, "(int localIndex) {\n", 19);
    v47 = sub_29A00911C(v46, "  return HdGet_", 15);
    sub_29ADBE62C(&v69);
    v48 = pxrInternal__aapl__pxrReserved__::operator<<(v47, v69 + 4);
    v49 = sub_29A00911C(v48, "_", 1);
    sub_29ADBE62C(&v69);
    v50 = MEMORY[0x29C2C1ED0](v49, **(v69 + 6));
    v51 = sub_29A00911C(v50, "();\n", 4);
    v52 = sub_29A00911C(v51, "}\n", 2);
    sub_29ADBE62C(&v69);
    v53 = sub_29ADBE564(v69 + 5);
    v54 = pxrInternal__aapl__pxrReserved__::operator<<(v52, v53);
    v55 = sub_29A00911C(v54, " HdGet_", 7);
    sub_29ADBE62C(&v69);
    v56 = pxrInternal__aapl__pxrReserved__::operator<<(v55, v69 + 4);
    v57 = sub_29A00911C(v56, "() { return HdGet_", 18);
    sub_29ADBE62C(&v69);
    v58 = pxrInternal__aapl__pxrReserved__::operator<<(v57, v69 + 4);
    v59 = sub_29A00911C(v58, "(0); }\n", 7);
    sub_29A00911C(v59, "#endif\n", 7);
    sub_29ADBE664(&v69);
  }

  std::stringbuf::str();
  if (v71 >= 0)
  {
    v60 = &v69;
  }

  else
  {
    v60 = v69;
  }

  if (v71 >= 0)
  {
    v61 = HIBYTE(v71);
  }

  else
  {
    v61 = v70;
  }

  sub_29A00911C(v66 + 79, v60, v61);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v69);
  }

  sub_29ADC7C90(v81[0]);
  v82[0] = v64;
  *(v82 + *(v64 - 3)) = v63;
  v83 = v65;
  v84 = MEMORY[0x29EDC9570] + 16;
  if (v86 < 0)
  {
    operator delete(v85[7].__locale_);
  }

  v84 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v85);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v87);
}

void sub_29ADAC38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, char a62)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29ADC7C90(a60);
  sub_29A008B0C(&a62);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateElementPrimvar(void *this)
{
  if (*(this[1] + 56))
  {
    return this;
  }

  v1 = this;
  sub_29A008864(v101);
  v2 = *v1;
  if ((*(*v1 + 472) & 0x80000000) != 0)
  {
    if (*(v1[1] + 24))
    {
      v9 = sub_29A00911C(&v102, "int GetElementID() {\n", 21);
      v10 = "  return 0;\n";
      v11 = 12;
    }

    else
    {
      v9 = sub_29A00911C(&v102, "int GetElementID() {\n", 21);
      v10 = "  return -1;\n";
      v11 = 13;
    }

    v17 = sub_29A00911C(v9, v10, v11);
    sub_29A00911C(v17, "}\n", 2);
    v18 = sub_29A00911C(&v102, "int GetAggregatedElementID() {\n", 31);
    v19 = sub_29A00911C(v18, "  return GetElementID();\n", 25);
    sub_29A00911C(v19, "}\n", 2);
    v20 = sub_29A00911C(&v102, "int GetEdgeFlag() {\n", 20);
    v21 = sub_29A00911C(v20, "  return 0;\n", 12);
    sub_29A00911C(v21, "}\n", 2);
    v22 = sub_29A00911C(&v102, "ivec3 GetPatchParam() {\n", 24);
    v23 = sub_29A00911C(v22, "  return ivec3(0, 0, 0);\n", 25);
    sub_29A00911C(v23, "}\n", 2);
    v24 = sub_29A00911C(&v102, "int GetFVarIndex(int localIndex) {\n", 35);
    v25 = sub_29A00911C(v24, "  return 0;\n", 12);
    sub_29A00911C(v25, "}\n", 2);
    goto LABEL_18;
  }

  v100 = *(*v1 + 472);
  sub_29ADA7BC4((v1 + 634), (v2 + 456), (v2 + 464), (v2 + 472), *(v2 + 476), 0);
  sub_29ADA820C(v101, (*v1 + 456), (*v1 + 464), &v100, "GetPrimitiveIndex()");
  v3 = *(v1[1] + 24);
  if ((v3 - 1) >= 3)
  {
    if (v3)
    {
      v12 = v3 == 13;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_18;
    }

    if ((v3 - 4) > 7)
    {
      __p = "hdSt/codeGen.cpp";
      v96 = "_GenerateElementPrimvar";
      v97 = 5343;
      v98 = "void pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateElementPrimvar()";
      v99 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "HdSt_GeometricShader::PrimitiveType %d is unexpected in _GenerateElementPrimvar().", v3);
      goto LABEL_18;
    }

    v13 = 1 << v3;
    if ((v13 & 0x150) != 0)
    {
      v69 = sub_29A00911C(&v102, "#if defined(HD_HAS_coarseFaceIndex)\n", 36);
      v70 = sub_29A00911C(v69, "FORWARD_DECL(int HdGetScalar_coarseFaceIndex());\n", 49);
      v71 = sub_29A00911C(v70, "#endif\n", 7);
      v72 = sub_29A00911C(v71, "ivec3 GetPatchParam() {\n", 24);
      v73 = sub_29A00911C(v72, "#if defined(HD_HAS_coarseFaceIndex)\n ", 37);
      v74 = sub_29A00911C(v73, "  return ivec3(HdGetScalar_coarseFaceIndex(), 0, 0);\n", 53);
      v75 = sub_29A00911C(v74, "#else\n ", 7);
      v76 = sub_29A00911C(v75, "  return ivec3(GetPrimitiveID(), 0, 0);\n", 40);
      v77 = sub_29A00911C(v76, "#endif\n", 7);
      sub_29A00911C(v77, "}\n", 2);
      v78 = sub_29A00911C(&v102, "int GetEdgeFlag() {\n", 20);
      v79 = "  return (HdGet_primitiveParam() & 3);\n";
      v80 = 39;
    }

    else
    {
      if ((v13 & 0x2A0) != 0)
      {
        v14 = sub_29A00911C(&v102, "ivec3 GetPatchParam() {\n", 24);
        v15 = sub_29A00911C(v14, "  return ivec3(HdGet_primitiveParam().y, \n", 42);
        v16 = sub_29A00911C(v15, "               HdGet_primitiveParam().z, 0);\n", 45);
      }

      else
      {
        v81 = sub_29A00911C(&v102, "ivec3 GetPatchParam() {\n", 24);
        v82 = sub_29A00911C(v81, "  return ivec3(HdGet_primitiveParam().y, \n", 42);
        v83 = sub_29A00911C(v82, "               HdGet_primitiveParam().z, \n", 42);
        v16 = sub_29A00911C(v83, "               HdGet_primitiveParam().w);\n", 42);
      }

      sub_29A00911C(v16, "}\n", 2);
      v78 = sub_29A00911C(&v102, "int GetEdgeFlag() {\n", 20);
      v79 = "  return (HdGet_primitiveParam().x & 3);\n";
      v80 = 41;
    }

    v84 = sub_29A00911C(v78, v79, v80);
    sub_29A00911C(v84, "}\n", 2);
    v85 = *(v1[1] + 60);
    if (v85 == 2)
    {
      v90 = sub_29A00911C(&v102, "int GetFVarIndex(int localIndex) {\n", 35);
      v91 = sub_29A00911C(v90, "  int fvarCoord = GetDrawingCoord().fvarCoord;\n", 47);
      v88 = sub_29A00911C(v91, "  int ptexIndex = GetPatchParam().x & 0xfffffff;\n", 49);
      v89 = "  return fvarCoord + ptexIndex * 4 + localIndex;\n";
    }

    else
    {
      if (v85)
      {
LABEL_116:
        v93 = sub_29A00911C(&v102, "int GetElementID() {\n", 21);
        v94 = sub_29A00911C(v93, "  return (hd_int_get(HdGet_primitiveParam()) >> 2);\n", 52);
        sub_29A00911C(v94, "}\n", 2);
        goto LABEL_5;
      }

      v86 = sub_29A00911C(&v102, "int GetFVarIndex(int localIndex) {\n", 35);
      v87 = sub_29A00911C(v86, "  int fvarCoord = GetDrawingCoord().fvarCoord;\n", 47);
      v88 = sub_29A00911C(v87, "  int ptexIndex = GetPatchParam().x & 0xfffffff;\n", 49);
      v89 = "  return fvarCoord + ptexIndex * 3 + localIndex;\n";
    }

    v92 = sub_29A00911C(v88, v89, 49);
    sub_29A00911C(v92, "}\n", 2);
    goto LABEL_116;
  }

  v4 = sub_29A00911C(&v102, "int GetElementID() {\n", 21);
  v5 = sub_29A00911C(v4, "  return (hd_int_get(HdGet_primitiveParam()));\n", 47);
  sub_29A00911C(v5, "}\n", 2);
LABEL_5:
  v6 = sub_29A00911C(&v102, "int GetAggregatedElementID() {\n", 31);
  v7 = sub_29A00911C(v6, "  return GetElementID()\n", 24);
  v8 = sub_29A00911C(v7, "  + GetDrawingCoord().elementCoord;\n", 36);
  sub_29A00911C(v8, "}\n", 2);
LABEL_18:
  v26 = sub_29A00911C(v1 + 44, "FORWARD_DECL(int GetElementID());\n", 34);
  sub_29A00911C(v26, "FORWARD_DECL(int GetAggregatedElementID());\n", 44);
  v27 = *v1;
  if ((*(*v1 + 520) & 0x80000000) == 0)
  {
    LODWORD(__p) = *(*v1 + 520);
    sub_29ADA7BC4((v1 + 634), (v27 + 504), (v27 + 512), (v27 + 520), *(v27 + 524), 0);
    sub_29ADA820C(v101, (*v1 + 504), (*v1 + 512), &__p, "GetPrimitiveIndex()");
    v27 = *v1;
  }

  if ((*(v27 + 544) & 0x80000000) == 0)
  {
    v28 = sub_29A00911C(v1 + 9, "#define HD_HAS_", 15);
    v29 = pxrInternal__aapl__pxrReserved__::operator<<(v28, (*v1 + 528));
    sub_29A00911C(v29, " 1\n", 3);
    v30 = *v1;
    sub_29ADA7BC4((v1 + 634), (*v1 + 528), (*v1 + 536), (*v1 + 544), *(*v1 + 548), 0);
    sub_29ADA820C(v101, (*v1 + 528), (*v1 + 536), (v30 + 544), "GetPrimitiveIndex() + localIndex");
  }

  if ((*(v1[1] + 24) - 4) > 7)
  {
    v34 = sub_29A00911C(&v102, "int GetAuthoredEdgeId(int primitiveEdgeId) {\n", 45);
    v35 = sub_29A00911C(v34, "  return -1;\n", 13);
    sub_29A00911C(v35, "}\n", 2);
    v36 = sub_29A00911C(&v102, "int GetPrimitiveEdgeId() {\n", 27);
    v37 = sub_29A00911C(v36, "  return -1;\n", 13);
    sub_29A00911C(v37, "}\n", 2);
    v38 = sub_29A00911C(&v102, "float GetSelectedEdgeOpacity() {\n", 33);
    v39 = sub_29A00911C(v38, "  return 0.0;\n", 14);
    sub_29A00911C(v39, "}\n", 2);
    v31 = sub_29A00911C(&v102, "BOOL SelectWireframeFaceEdges() {\n", 34);
    v32 = "  return false;\n";
    v33 = 16;
  }

  else
  {
    v31 = sub_29A00911C(&v102, "int GetAuthoredEdgeId(int primitiveEdgeId) {\n", 45);
    v32 = "  return primitiveEdgeId;\n";
    v33 = 26;
  }

  v40 = sub_29A00911C(v31, v32, v33);
  sub_29A00911C(v40, "}\n", 2);
  v41 = sub_29A00911C(v1 + 44, "FORWARD_DECL(int GetPrimitiveEdgeId());\n", 40);
  sub_29A00911C(v41, "FORWARD_DECL(float GetSelectedEdgeOpacity());\n", 46);
  v42 = *v1;
  if (*(v1[1] + 24))
  {
    __p = *(v42 + 88);
    v96 = (v42 + 96);
    while (__p != v96)
    {
      v100 = *(*sub_29ADA9028(&__p) + 32);
      v43 = *sub_29ADA9028(&__p);
      v44 = *sub_29ADA9028(&__p);
      sub_29ADA7BC4((v1 + 634), (v43 + 40), (v44 + 48), &v100, 0, 0);
      sub_29ADA820C(v101, (v43 + 40), (v44 + 48), &v100, "GetAggregatedElementID()");
      sub_29ADA9060(&__p);
    }

    v42 = *v1;
  }

  v45 = *(v42 + 600);
  if (*(v42 + 608) != v45)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = v45 + v46;
      if ((*(v48 + 16) & 0x80000000) == 0)
      {
        v100 = *(v48 + 16);
        v49 = *v48;
        __p = v49;
        if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p = (__p & 0xFFFFFFFFFFFFFFF8);
        }

        sub_29ADA7BC4((v1 + 634), &__p, (*(*v1 + 600) + v46 + 8), (*(*v1 + 600) + v46 + 16), 0, 0);
        if ((*(v1[1] + 60) & 0xFFFFFFFE) == 4)
        {
          v50 = "GetPrimitiveIndex() * HD_NUM_PATCH_VERTS + localIndex";
        }

        else
        {
          v50 = "GetPrimitiveIndex() + localIndex";
        }

        sub_29ADA820C(v101, &__p, (*(*v1 + 600) + v46 + 8), &v100, v50);
        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v42 = *v1;
      }

      ++v47;
      v45 = *(v42 + 600);
      v46 += 24;
    }

    while (v47 < 0xAAAAAAAAAAAAAAABLL * ((*(v42 + 608) - v45) >> 3));
  }

  v51 = *(v42 + 576);
  if (*(v42 + 584) != v51)
  {
    v52 = 0;
    v53 = 0;
    do
    {
      v54 = v51 + v52;
      if ((*(v54 + 16) & 0x80000000) == 0)
      {
        v100 = *(v54 + 16);
        v55 = *v54;
        __p = v55;
        if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p = (__p & 0xFFFFFFFFFFFFFFF8);
        }

        sub_29ADA7BC4((v1 + 634), &__p, (*(*v1 + 576) + v52 + 8), (*(*v1 + 576) + v52 + 16), 0, 0);
        if ((*(v1[1] + 60) & 0xFFFFFFFE) == 4)
        {
          sub_29ADA820C(v101, &__p, (*(*v1 + 576) + v52 + 8), &v100, "GetPrimitiveIndex() + localIndex");
        }

        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v42 = *v1;
      }

      ++v53;
      v51 = *(v42 + 576);
      v52 += 24;
    }

    while (v53 < 0xAAAAAAAAAAAAAAABLL * ((*(v42 + 584) - v51) >> 3));
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v97 >= 0)
  {
    v57 = HIBYTE(v97);
  }

  else
  {
    v57 = v96;
  }

  sub_29A00911C(v1 + 149, p_p, v57);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    v58 = &__p;
  }

  else
  {
    v58 = __p;
  }

  if (v97 >= 0)
  {
    v59 = HIBYTE(v97);
  }

  else
  {
    v59 = v96;
  }

  sub_29A00911C(v1 + 184, v58, v59);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    v60 = &__p;
  }

  else
  {
    v60 = __p;
  }

  if (v97 >= 0)
  {
    v61 = HIBYTE(v97);
  }

  else
  {
    v61 = v96;
  }

  sub_29A00911C(v1 + 289, v60, v61);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p;
  }

  if (v97 >= 0)
  {
    v63 = HIBYTE(v97);
  }

  else
  {
    v63 = v96;
  }

  sub_29A00911C(v1 + 219, v62, v63);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    v64 = &__p;
  }

  else
  {
    v64 = __p;
  }

  if (v97 >= 0)
  {
    v65 = HIBYTE(v97);
  }

  else
  {
    v65 = v96;
  }

  sub_29A00911C(v1 + 254, v64, v65);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v97 >= 0)
  {
    v66 = &__p;
  }

  else
  {
    v66 = __p;
  }

  if (v97 >= 0)
  {
    v67 = HIBYTE(v97);
  }

  else
  {
    v67 = v96;
  }

  sub_29A00911C(v1 + 324, v66, v67);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p);
  }

  v101[0] = *MEMORY[0x29EDC9528];
  v68 = *(MEMORY[0x29EDC9528] + 72);
  *(v101 + *(v101[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v102 = v68;
  v103 = MEMORY[0x29EDC9570] + 16;
  if (v105 < 0)
  {
    operator delete(v104[7].__locale_);
  }

  v103 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v104);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v106);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateVertexAndFaceVaryingPrimvar(void *this)
{
  if ((*(this[1] + 56) & 1) == 0)
  {
    v1 = this;
    sub_29A008864(v221);
    sub_29A008864(v216);
    sub_29A008864(v211);
    sub_29A008864(v206);
    sub_29A008864(v201);
    sub_29A008864(v196);
    sub_29A008864(v191);
    v2 = *v1;
    v3 = *v1 + 120;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v4 = "localIndex";
    v179 = *(v2 + 112);
    v180 = v3;
    while (v179 != v180)
    {
      v187 = *(*sub_29ADA9028(&v179) + 32);
      v5 = *sub_29ADA9028(&v179);
      v6 = *sub_29ADA9028(&v179);
      sub_29ADA7BC4((v1 + 637), (v5 + 40), (v6 + 48), &v187, 0, 0);
      v7 = sub_29ADA8514((v6 + 48), 0);
      v8 = v189;
      if (v189 >= v190)
      {
        v9 = sub_29ADC704C(&v188, v7, (v5 + 40));
      }

      else
      {
        sub_29AB6C230(&v188, v189, v7, (v5 + 40));
        v9 = v8 + 4;
      }

      v189 = v9;
      sub_29ADA820C(v221, (v5 + 40), (v6 + 48), &v187, 0);
      v10 = atomic_load(&qword_2A174E9E0);
      if (!v10)
      {
        v10 = sub_29ADC4754();
      }

      sub_29ADA876C(v216, (v10 + 304), (v5 + 40), (v6 + 48), 1, "gl_InvocationID", 0);
      v11 = atomic_load(&qword_2A174E9E0);
      if (!v11)
      {
        v11 = sub_29ADC4754();
      }

      sub_29ADA876C(v211, (v11 + 304), (v5 + 40), (v6 + 48), 1, v4, 0);
      v12 = atomic_load(&qword_2A174E9E0);
      if (!v12)
      {
        v12 = sub_29ADC4754();
      }

      sub_29ADA876C(v196, (v12 + 304), (v5 + 40), (v6 + 48), 1, v4, 0);
      v13 = atomic_load(&qword_2A174E9E0);
      if (!v13)
      {
        v13 = sub_29ADC4754();
      }

      sub_29ADA876C(v191, (v13 + 304), (v5 + 40), (v6 + 48), 1, 0, 0);
      if ((*(v5 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v5 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      if (*(EmptyString + 23) >= 0)
      {
        v16 = *(EmptyString + 23);
      }

      else
      {
        v16 = EmptyString[1];
      }

      sub_29A022DE0(&__p, v16 + 12);
      v17 = v4;
      if (v186 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v19 = EmptyString;
        }

        else
        {
          v19 = *EmptyString;
        }

        memmove(p_p, v19, v16);
      }

      strcpy(p_p + v16, "[localIndex]");
      sub_29ADBE70C(v206, (v5 + 40), &__p, (v6 + 48));
      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p);
      }

      if ((*(v5 + 40) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v21 = ((*(v5 + 40) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
      }

      if (*(v21 + 23) >= 0)
      {
        v22 = *(v21 + 23);
      }

      else
      {
        v22 = v21[1];
      }

      sub_29A022DE0(&__p, v22 + 12);
      if (v186 >= 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p;
      }

      if (v22)
      {
        if (*(v21 + 23) >= 0)
        {
          v24 = v21;
        }

        else
        {
          v24 = *v21;
        }

        memmove(v23, v24, v22);
      }

      strcpy(v23 + v22, "[localIndex]");
      sub_29ADBE70C(v201, (v5 + 40), &__p, (v6 + 48));
      v4 = v17;
      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p);
      }

      v25 = sub_29A00911C(v1 + 394, "  outPrimvars.", 14);
      v26 = pxrInternal__aapl__pxrReserved__::operator<<(v25, (v5 + 40));
      v27 = sub_29A00911C(v26, " = ", 3);
      v28 = pxrInternal__aapl__pxrReserved__::operator<<(v27, (v5 + 40));
      sub_29A00911C(v28, ";\n", 2);
      v29 = sub_29A00911C(v1 + 429, "  outPrimvars[gl_InvocationID].", 31);
      v30 = pxrInternal__aapl__pxrReserved__::operator<<(v29, (v5 + 40));
      v31 = sub_29A00911C(v30, " = inPrimvars[gl_InvocationID].", 31);
      v32 = pxrInternal__aapl__pxrReserved__::operator<<(v31, (v5 + 40));
      sub_29A00911C(v32, ";\n", 2);
      v33 = sub_29A00911C(v1 + 464, "  outPrimvars.", 14);
      v34 = pxrInternal__aapl__pxrReserved__::operator<<(v33, (v5 + 40));
      v35 = sub_29A00911C(v34, " = basis[0] * inPrimvars[i0].", 29);
      v36 = pxrInternal__aapl__pxrReserved__::operator<<(v35, (v5 + 40));
      v37 = sub_29A00911C(v36, " + basis[1] * inPrimvars[i1].", 29);
      v38 = pxrInternal__aapl__pxrReserved__::operator<<(v37, (v5 + 40));
      v39 = sub_29A00911C(v38, " + basis[2] * inPrimvars[i2].", 29);
      v40 = pxrInternal__aapl__pxrReserved__::operator<<(v39, (v5 + 40));
      v41 = sub_29A00911C(v40, " + basis[3] * inPrimvars[i3].", 29);
      v42 = pxrInternal__aapl__pxrReserved__::operator<<(v41, (v5 + 40));
      sub_29A00911C(v42, ";\n", 2);
      v43 = sub_29A00911C(v1 + 499, "  outPrimvars.", 14);
      v44 = pxrInternal__aapl__pxrReserved__::operator<<(v43, (v5 + 40));
      v45 = sub_29A00911C(v44, " = inPrimvars[index].", 21);
      v46 = pxrInternal__aapl__pxrReserved__::operator<<(v45, (v5 + 40));
      sub_29A00911C(v46, ";\n", 2);
      v47 = sub_29A00911C(v1 + 534, "  outPrimvars.", 14);
      v48 = pxrInternal__aapl__pxrReserved__::operator<<(v47, (v5 + 40));
      v49 = sub_29A00911C(v48, " = InterpolatePrimvar(", 22);
      v50 = sub_29A00911C(v49, "HdGet_", 6);
      v51 = pxrInternal__aapl__pxrReserved__::operator<<(v50, (v5 + 40));
      v52 = sub_29A00911C(v51, "(i0), ", 6);
      v53 = sub_29A00911C(v52, "HdGet_", 6);
      v54 = pxrInternal__aapl__pxrReserved__::operator<<(v53, (v5 + 40));
      v55 = sub_29A00911C(v54, "(i1), ", 6);
      v56 = sub_29A00911C(v55, "HdGet_", 6);
      v57 = pxrInternal__aapl__pxrReserved__::operator<<(v56, (v5 + 40));
      v58 = sub_29A00911C(v57, "(i2), ", 6);
      v59 = sub_29A00911C(v58, "HdGet_", 6);
      v60 = pxrInternal__aapl__pxrReserved__::operator<<(v59, (v5 + 40));
      sub_29A00911C(v60, "(i3), basis, uv);\n", 18);
      sub_29ADA9060(&v179);
    }

    v61 = *v1;
    if (*(*v1 + 552))
    {
      sub_29ADA7BC4((v1 + 617), (v61 + 552), (v61 + 560), (v61 + 568), 0, 0);
      sub_29ADA7BC4((v1 + 620), (v61 + 552), (v61 + 560), (v61 + 568), 0, 0);
      sub_29ADBE858(v206, (v61 + 552), (v61 + 560), "patch_id * VERTEX_CONTROL_POINTS_PER_PATCH + localIndex");
      sub_29ADBE858(v201, (v61 + 552), (v61 + 560), "patch_id * VERTEX_CONTROL_POINTS_PER_PATCH + localIndex");
      v61 = *v1;
    }

    __p = *(v61 + 136);
    v185 = (v61 + 144);
    while (__p != v185)
    {
      LODWORD(v179) = *(*sub_29ADA9028(&__p) + 32);
      v62 = *sub_29ADA9028(&__p);
      v63 = *sub_29ADA9028(&__p);
      sub_29ADA7BC4((v1 + 637), (v62 + 40), (v63 + 48), &v179, 0, 0);
      v64 = sub_29ADA8514((v63 + 48), 0);
      v65 = v189;
      if (v189 >= v190)
      {
        v66 = sub_29ADC704C(&v188, v64, (v62 + 40));
      }

      else
      {
        sub_29AB6C230(&v188, v189, v64, (v62 + 40));
        v66 = v65 + 4;
      }

      v189 = v66;
      sub_29ADBE858(v221, (v62 + 40), (v63 + 48), "GetDrawingCoord().varyingCoord + int(hd_VertexID) - GetBaseVertexOffset()");
      v67 = atomic_load(&qword_2A174E9E0);
      if (!v67)
      {
        v67 = sub_29ADC4754();
      }

      sub_29ADA876C(v216, (v67 + 304), (v62 + 40), (v63 + 48), 1, "gl_InvocationID", 0);
      v68 = atomic_load(&qword_2A174E9E0);
      if (!v68)
      {
        v68 = sub_29ADC4754();
      }

      sub_29ADA876C(v211, (v68 + 304), (v62 + 40), (v63 + 48), 1, "localIndex", 0);
      v69 = atomic_load(&qword_2A174E9E0);
      if (!v69)
      {
        v69 = sub_29ADC4754();
      }

      sub_29ADA876C(v196, (v69 + 304), (v62 + 40), (v63 + 48), 1, "localIndex", 0);
      v70 = atomic_load(&qword_2A174E9E0);
      if (!v70)
      {
        v70 = sub_29ADC4754();
      }

      sub_29ADA876C(v191, (v70 + 304), (v62 + 40), (v63 + 48), 1, 0, 0);
      sub_29ADBE858(v206, (v62 + 40), (v63 + 48), "GetDrawingCoord().varyingCoord + HdGet_indices(localIndex)");
      sub_29ADBE858(v201, (v62 + 40), (v63 + 48), "GetDrawingCoord().varyingCoord + HdGet_indices(localIndex)");
      v71 = sub_29A00911C(v1 + 394, "  outPrimvars.", 14);
      v72 = pxrInternal__aapl__pxrReserved__::operator<<(v71, (v62 + 40));
      v73 = sub_29A00911C(v72, " = ", 3);
      v74 = sub_29A00911C(v73, "HdGet_", 6);
      v75 = pxrInternal__aapl__pxrReserved__::operator<<(v74, (v62 + 40));
      sub_29A00911C(v75, "();\n", 4);
      v76 = sub_29A00911C(v1 + 429, "  outPrimvars[gl_InvocationID].", 31);
      v77 = pxrInternal__aapl__pxrReserved__::operator<<(v76, (v62 + 40));
      v78 = sub_29A00911C(v77, " = inPrimvars[gl_InvocationID].", 31);
      v79 = pxrInternal__aapl__pxrReserved__::operator<<(v78, (v62 + 40));
      sub_29A00911C(v79, ";\n", 2);
      v80 = sub_29A00911C(v1 + 464, "  outPrimvars.", 14);
      v81 = pxrInternal__aapl__pxrReserved__::operator<<(v80, (v62 + 40));
      v82 = sub_29A00911C(v81, " = InterpolatePrimvar(", 22);
      v83 = sub_29A00911C(v82, "inPrimvars[i0].", 15);
      v84 = pxrInternal__aapl__pxrReserved__::operator<<(v83, (v62 + 40));
      v85 = sub_29A00911C(v84, ", inPrimvars[i1].", 17);
      v86 = pxrInternal__aapl__pxrReserved__::operator<<(v85, (v62 + 40));
      v87 = sub_29A00911C(v86, ", inPrimvars[i2].", 17);
      v88 = pxrInternal__aapl__pxrReserved__::operator<<(v87, (v62 + 40));
      v89 = sub_29A00911C(v88, ", inPrimvars[i3].", 17);
      v90 = pxrInternal__aapl__pxrReserved__::operator<<(v89, (v62 + 40));
      sub_29A00911C(v90, ", basis, uv);\n", 14);
      v91 = sub_29A00911C(v1 + 499, "  outPrimvars.", 14);
      v92 = pxrInternal__aapl__pxrReserved__::operator<<(v91, (v62 + 40));
      v93 = sub_29A00911C(v92, " = inPrimvars[index].", 21);
      v94 = pxrInternal__aapl__pxrReserved__::operator<<(v93, (v62 + 40));
      sub_29A00911C(v94, ";\n", 2);
      v95 = sub_29A00911C(v1 + 534, "  outPrimvars.", 14);
      v96 = pxrInternal__aapl__pxrReserved__::operator<<(v95, (v62 + 40));
      v97 = sub_29A00911C(v96, " = InterpolatePrimvar(", 22);
      v98 = sub_29A00911C(v97, "HdGet_", 6);
      v99 = pxrInternal__aapl__pxrReserved__::operator<<(v98, (v62 + 40));
      v100 = sub_29A00911C(v99, "(i0), ", 6);
      v101 = sub_29A00911C(v100, "HdGet_", 6);
      v102 = pxrInternal__aapl__pxrReserved__::operator<<(v101, (v62 + 40));
      v103 = sub_29A00911C(v102, "(i1), ", 6);
      v104 = sub_29A00911C(v103, "HdGet_", 6);
      v105 = pxrInternal__aapl__pxrReserved__::operator<<(v104, (v62 + 40));
      v106 = sub_29A00911C(v105, "(i2), ", 6);
      v107 = sub_29A00911C(v106, "HdGet_", 6);
      v108 = pxrInternal__aapl__pxrReserved__::operator<<(v107, (v62 + 40));
      sub_29A00911C(v108, "(i3), basis, uv);\n", 18);
      sub_29ADA9060(&__p);
    }

    __p = 0;
    v185 = 0;
    v186 = 0;
    v109 = *v1 + 168;
    v179 = *(*v1 + 160);
    v180 = v109;
    while (v179 != v180)
    {
      v187 = *(*sub_29ADA9108(&v179) + 32);
      v110 = *sub_29ADA9108(&v179);
      v111 = *sub_29ADA9108(&v179);
      v112 = *(*sub_29ADA9108(&v179) + 56);
      if (*(v1 + 5363) == 1)
      {
        sub_29ADA7BC4((v1 + 640), (v110 + 40), (v111 + 48), &v187, 0, 0);
        v113 = sub_29ADA8514((v111 + 48), 0);
        v114 = v185;
        if (v185 >= v186)
        {
          v115 = sub_29ADC704C(&__p, v113, (v110 + 40));
        }

        else
        {
          sub_29AB6C230(&__p, v185, v113, (v110 + 40));
          v115 = v114 + 4;
        }

        v123 = *(v1 + 5363);
        v185 = v115;
        v124 = v1[1];
        v125 = *(v124 + 24);
        v182 = *(v124 + 60);
        v183 = v125;
        sub_29ADBE9D4(v123, v196, (v110 + 40), (v111 + 48), &v183, &v182, v112);
        v126 = atomic_load(&qword_2A174E9E0);
        if (!v126)
        {
          v126 = sub_29ADC4754();
        }

        sub_29ADA876C(v191, (v126 + 304), (v110 + 40), (v111 + 48), 1, 0, 0);
        if ((*(v1[1] + 60) & 0xFFFFFFFE) == 4)
        {
          v127 = sub_29A00911C(v1 + 499, "  outPrimvars.", 14);
          v128 = pxrInternal__aapl__pxrReserved__::operator<<(v127, (v110 + 40));
          v129 = sub_29A00911C(v128, " = HdGet_", 9);
          v130 = pxrInternal__aapl__pxrReserved__::operator<<(v129, (v110 + 40));
          v131 = "(index, localST);\n";
          v132 = 18;
        }

        else
        {
          v133 = sub_29A00911C(v1 + 499, "  outPrimvars.", 14);
          v134 = pxrInternal__aapl__pxrReserved__::operator<<(v133, (v110 + 40));
          v135 = sub_29A00911C(v134, " = HdGet_", 9);
          v130 = pxrInternal__aapl__pxrReserved__::operator<<(v135, (v110 + 40));
          v131 = "(index);\n";
          v132 = 9;
        }

        sub_29A00911C(v130, v131, v132);
      }

      else if (*(v1[1] + 24))
      {
        sub_29ADA7BC4((v1 + 640), (v110 + 40), (v111 + 48), &v187, 0, 0);
        v116 = *(v1 + 5363);
        v117 = v1[1];
        v118 = *(v117 + 24);
        v182 = *(v117 + 60);
        v183 = v118;
        sub_29ADBE9D4(v116, v191, (v110 + 40), (v111 + 48), &v183, &v182, v112);
        v119 = v1[1];
        v120 = *(v119 + 24);
        v182 = *(v119 + 60);
        v183 = v120;
        sub_29ADBE9D4(0, v206, (v110 + 40), (v111 + 48), &v183, &v182, v112);
        v121 = v1[1];
        v122 = *(v121 + 24);
        v182 = *(v121 + 60);
        v183 = v122;
        sub_29ADBE9D4(0, v201, (v110 + 40), (v111 + 48), &v183, &v182, v112);
      }

      sub_29ADA9140(&v179);
    }

    v137 = v188;
    v136 = v189;
    if (v188 != v189)
    {
      v138 = atomic_load(&qword_2A174E9E0);
      if (!v138)
      {
        v138 = sub_29ADC4754();
      }

      v139 = atomic_load(&qword_2A174E9E0);
      if (!v139)
      {
        v139 = sub_29ADC4754();
      }

      v179 = 0;
      sub_29ADBF3F8((v1 + 602), 2, (v138 + 296), (v139 + 360), &v188, &v179);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v140 = atomic_load(&qword_2A174E9E0);
      if (!v140)
      {
        v140 = sub_29ADC4754();
      }

      v141 = atomic_load(&qword_2A174E9E0);
      if (!v141)
      {
        v141 = sub_29ADC4754();
      }

      v142 = atomic_load(&qword_2A174E9E0);
      if (!v142)
      {
        v142 = sub_29ADC4754();
      }

      sub_29ADBF3F8((v1 + 605), 1, (v140 + 296), (v141 + 304), &v188, (v142 + 496));
      v143 = atomic_load(&qword_2A174E9E0);
      if (!v143)
      {
        v143 = sub_29ADC4754();
      }

      v144 = atomic_load(&qword_2A174E9E0);
      if (!v144)
      {
        v144 = sub_29ADC4754();
      }

      v145 = atomic_load(&qword_2A174E9E0);
      if (!v145)
      {
        v145 = sub_29ADC4754();
      }

      sub_29ADBF3F8((v1 + 605), 2, (v143 + 296), (v144 + 360), &v188, (v145 + 504));
      v146 = atomic_load(&qword_2A174E9E0);
      if (!v146)
      {
        v146 = sub_29ADC4754();
      }

      v147 = atomic_load(&qword_2A174E9E0);
      if (!v147)
      {
        v147 = sub_29ADC4754();
      }

      v148 = atomic_load(&qword_2A174E9E0);
      if (!v148)
      {
        v148 = sub_29ADC4754();
      }

      sub_29ADBF3F8((v1 + 608), 1, (v146 + 296), (v147 + 304), &v188, (v148 + 496));
      v149 = atomic_load(&qword_2A174E9E0);
      if (!v149)
      {
        v149 = sub_29ADC4754();
      }

      v150 = atomic_load(&qword_2A174E9E0);
      if (!v150)
      {
        v150 = sub_29ADC4754();
      }

      v179 = 0;
      sub_29ADBF3F8((v1 + 608), 2, (v149 + 296), (v150 + 360), &v188, &v179);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v151 = atomic_load(&qword_2A174E9E0);
      if (!v151)
      {
        v151 = sub_29ADC4754();
      }

      v152 = atomic_load(&qword_2A174E9E0);
      if (!v152)
      {
        v152 = sub_29ADC4754();
      }

      v153 = atomic_load(&qword_2A174E9E0);
      if (!v153)
      {
        v153 = sub_29ADC4754();
      }

      sub_29ADBF3F8((v1 + 611), 1, (v151 + 296), (v152 + 304), &v188, (v153 + 512));
      v137 = v188;
      v136 = v189;
    }

    if (v137 != v136 || __p != v185)
    {
      sub_29ADC7D1C(&v188, v136, __p, v185, (v185 - __p) >> 5);
      v155 = atomic_load(&qword_2A174E9E0);
      if (!v155)
      {
        v155 = sub_29ADC4754();
      }

      v156 = atomic_load(&qword_2A174E9E0);
      if (!v156)
      {
        v156 = sub_29ADC4754();
      }

      v179 = 0;
      sub_29ADBF3F8((v1 + 620), 2, (v155 + 296), (v156 + 360), &v188, &v179);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v157 = atomic_load(&qword_2A174E9E0);
      if (!v157)
      {
        v157 = sub_29ADC4754();
      }

      v158 = atomic_load(&qword_2A174E9E0);
      if (!v158)
      {
        v158 = sub_29ADC4754();
      }

      v179 = 0;
      sub_29ADBF3F8((v1 + 611), 2, (v157 + 296), (v158 + 360), &v188, &v179);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v159 = atomic_load(&qword_2A174E9E0);
      if (!v159)
      {
        v159 = sub_29ADC4754();
      }

      v160 = atomic_load(&qword_2A174E9E0);
      if (!v160)
      {
        v160 = sub_29ADC4754();
      }

      v179 = 0;
      sub_29ADBF3F8((v1 + 614), 1, (v159 + 296), (v160 + 304), &v188, &v179);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v161 = &v179;
    }

    else
    {
      v161 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v162 = v181;
    }

    else
    {
      v162 = v180;
    }

    sub_29A00911C(v1 + 114, v161, v162);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v163 = &v179;
    }

    else
    {
      v163 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v164 = v181;
    }

    else
    {
      v164 = v180;
    }

    sub_29A00911C(v1 + 289, v163, v164);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v165 = &v179;
    }

    else
    {
      v165 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v166 = v181;
    }

    else
    {
      v166 = v180;
    }

    sub_29A00911C(v1 + 324, v165, v166);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v167 = &v179;
    }

    else
    {
      v167 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v168 = v181;
    }

    else
    {
      v168 = v180;
    }

    sub_29A00911C(v1 + 149, v167, v168);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v169 = &v179;
    }

    else
    {
      v169 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v170 = v181;
    }

    else
    {
      v170 = v180;
    }

    sub_29A00911C(v1 + 184, v169, v170);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v171 = &v179;
    }

    else
    {
      v171 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v172 = v181;
    }

    else
    {
      v172 = v180;
    }

    sub_29A00911C(v1 + 219, v171, v172);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    std::stringbuf::str();
    if ((v181 & 0x80u) == 0)
    {
      v173 = &v179;
    }

    else
    {
      v173 = v179;
    }

    if ((v181 & 0x80u) == 0)
    {
      v174 = v181;
    }

    else
    {
      v174 = v180;
    }

    sub_29A00911C(v1 + 254, v173, v174);
    if (v181 < 0)
    {
      operator delete(v179);
    }

    sub_29A00911C(v1 + 324, "FORWARD_DECL(vec4 GetPatchCoord(int index));\n", 45);
    sub_29A00911C(v1 + 289, "FORWARD_DECL(vec4 GetPatchCoord(int localIndex));\n", 50);
    v179 = &__p;
    sub_29AB6C500(&v179);
    __p = &v188;
    sub_29AB6C500(&__p);
    v191[0] = *MEMORY[0x29EDC9528];
    v175 = v191[0];
    v176 = *(MEMORY[0x29EDC9528] + 72);
    v177 = *(MEMORY[0x29EDC9528] + 64);
    *(v191 + *(v191[0] - 24)) = v177;
    v178 = v176;
    v191[2] = v176;
    v192 = MEMORY[0x29EDC9570] + 16;
    if (v194 < 0)
    {
      operator delete(v193[7].__locale_);
    }

    v192 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v193);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v195);
    v196[0] = v175;
    *(v196 + *(v175 - 24)) = v177;
    v196[2] = v178;
    v197 = MEMORY[0x29EDC9570] + 16;
    if (v199 < 0)
    {
      operator delete(v198[7].__locale_);
    }

    v197 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v198);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v200);
    v201[0] = v175;
    *(v201 + *(v175 - 24)) = v177;
    v201[2] = v178;
    v202 = MEMORY[0x29EDC9570] + 16;
    if (v204 < 0)
    {
      operator delete(v203[7].__locale_);
    }

    v202 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v203);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v205);
    v206[0] = v175;
    *(v206 + *(v175 - 24)) = v177;
    v206[2] = v178;
    v207 = MEMORY[0x29EDC9570] + 16;
    if (v209 < 0)
    {
      operator delete(v208[7].__locale_);
    }

    v207 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v208);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v210);
    v211[0] = v175;
    *(v211 + *(v175 - 24)) = v177;
    v211[2] = v178;
    v212 = MEMORY[0x29EDC9570] + 16;
    if (v214 < 0)
    {
      operator delete(v213[7].__locale_);
    }

    v212 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v213);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v215);
    v216[0] = v175;
    *(v216 + *(v175 - 24)) = v177;
    v216[2] = v178;
    v217 = MEMORY[0x29EDC9570] + 16;
    if (v219 < 0)
    {
      operator delete(v218[7].__locale_);
    }

    v217 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v218);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v220);
    v221[0] = v175;
    *(v221 + *(v175 - 24)) = v177;
    v221[2] = v178;
    v222 = MEMORY[0x29EDC9570] + 16;
    if (v224 < 0)
    {
      operator delete(v223[7].__locale_);
    }

    v222 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v223);
    std::iostream::~basic_iostream();
    return MEMORY[0x29C2C4390](&v225);
  }

  return this;
}

void sub_29ADAEB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a16;
  sub_29AB6C500(&__p);
  a16 = &a20;
  sub_29AB6C500(&a16);
  sub_29A008B0C(&a23);
  sub_29A008B0C(&a58);
  sub_29A008B0C(&STACK[0x2A0]);
  sub_29A008B0C(&STACK[0x3B8]);
  sub_29A008B0C(&STACK[0x4D0]);
  sub_29A008B0C(&STACK[0x5E8]);
  sub_29A008B0C(&STACK[0x700]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateTopologyVisibilityParameters(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this)
{
  sub_29A008864(v53);
  sub_29A008864(v48);
  v2 = *this + 72;
  v46 = *(*this + 64);
  v47 = v2;
  while (v46 != v47)
  {
    v45 = *(*sub_29ADA84A4(&v46) + 32);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("TopologyVisibilityData%d", v3, v4, v45);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v44);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }

    v5 = *(*sub_29ADA84A4(&v46) + 40);
    v43 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v43 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = sub_29A00911C(&v54, "struct ", 7);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, &v44);
    sub_29A00911C(v7, " {\n", 3);
    v8 = sub_29ADA84A4(&v46);
    v9 = *(*v8 + 56);
    v41 = *(*v8 + 48);
    v42 = v9;
    while (v41 != v42)
    {
      if (*(*sub_29ADA84DC(&v41) + 8))
      {
        goto LABEL_11;
      }

      __p = "hdSt/codeGen.cpp";
      v37 = "_GenerateTopologyVisibilityParameters";
      v38 = 6881;
      v39 = "void pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateTopologyVisibilityParameters()";
      v40 = 0;
      v24 = **sub_29ADA84DC(&v41) & 0xFFFFFFFFFFFFFFF8;
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

      v26 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Unknown dataType for %s", v22, v23, v25);
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!dbIt->dataType.IsEmpty()", v26))
      {
LABEL_11:
        v10 = sub_29A00911C(&v54, "  ", 2);
        v11 = sub_29ADA84DC(&v41);
        v12 = sub_29ADA8514((*v11 + 8), 0);
        v13 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v12);
        v14 = sub_29A00911C(v13, " ", 1);
        v15 = sub_29ADA84DC(&v41);
        pxrInternal__aapl__pxrReserved__::operator<<(v14, *v15);
        if (*(*sub_29ADA84DC(&v41) + 20) >= 2)
        {
          v16 = sub_29A00911C(&v54, "[", 1);
          v17 = sub_29ADA84DC(&v41);
          v18 = MEMORY[0x29C2C1ED0](v16, *(*v17 + 20));
          sub_29A00911C(v18, "]", 1);
        }

        sub_29A00911C(&v54, ";\n", 2);
        v19 = *sub_29ADA84DC(&v41);
        v20 = *sub_29ADA84DC(&v41);
        v21 = sub_29ADA84DC(&v41);
        sub_29ADA876C(v48, &v43, v19, (v20 + 8), *(*v21 + 20), "GetDrawingCoord().topologyVisibilityCoord", 0);
      }

      sub_29ADA8D40(&v41);
    }

    sub_29A00911C(&v54, "};\n", 3);
    sub_29ADA7BC4(this + 5072, &v43, &v44, &v45, 1, 0);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ADA8DC0(&v46);
  }

  std::stringbuf::str();
  if (v38 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v38 >= 0)
  {
    v28 = HIBYTE(v38);
  }

  else
  {
    v28 = v37;
  }

  sub_29A00911C(this + 44, p_p, v28);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v38 >= 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p;
  }

  if (v38 >= 0)
  {
    v30 = HIBYTE(v38);
  }

  else
  {
    v30 = v37;
  }

  sub_29A00911C(this + 79, v29, v30);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  v48[0] = *MEMORY[0x29EDC9528];
  v31 = v48[0];
  v32 = *(MEMORY[0x29EDC9528] + 72);
  v33 = *(MEMORY[0x29EDC9528] + 64);
  *(v48 + *(v48[0] - 24)) = v33;
  v34 = v32;
  v48[2] = v32;
  v49 = MEMORY[0x29EDC9570] + 16;
  if (v51 < 0)
  {
    operator delete(v50[7].__locale_);
  }

  v49 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v50);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v52);
  v53[0] = v31;
  *(v53 + *(v31 - 24)) = v33;
  v54 = v34;
  v55 = MEMORY[0x29EDC9570] + 16;
  if (v57 < 0)
  {
    operator delete(v56[7].__locale_);
  }

  v55 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v56);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v58);
}

void sub_29ADAF304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a25);
  sub_29A008B0C(&a60);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GenerateShaderParameters(pxrInternal__aapl__pxrReserved__::HdSt_CodeGen *this, int a2)
{
  sub_29A008864(v1113);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v1112, "ShaderData");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v1111, "shaderData");
  v3 = *this;
  v4 = (*this + 48);
  v1107[0] = *(*this + 40);
  v1107[1] = v4;
  if (v1107[0] != v4)
  {
    v5 = *(*sub_29ADA84A4(v1107) + 32);
    LODWORD(__p) = v5;
    v6 = sub_29A00911C(this + 44, "struct ", 7);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, &v1112);
    sub_29A00911C(v7, " {\n", 3);
    v8 = sub_29ADA84A4(v1107);
    v9 = *(*v8 + 56);
    v1106.__r_.__value_.__r.__words[0] = *(*v8 + 48);
    v1106.__r_.__value_.__l.__size_ = v9;
    while (v1106.__r_.__value_.__r.__words[0] != v1106.__r_.__value_.__l.__size_)
    {
      v10 = sub_29A00911C(this + 44, "  ", 2);
      v11 = sub_29ADA84DC(&v1106);
      v12 = sub_29ADA8708((*v11 + 8));
      v13 = sub_29ADA8514(v12, 0);
      v14 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v13);
      v15 = sub_29A00911C(v14, " ", 1);
      v16 = sub_29ADA84DC(&v1106);
      v17 = pxrInternal__aapl__pxrReserved__::operator<<(v15, *v16);
      sub_29A00911C(v17, ";\n", 2);
      sub_29ADA8D40(&v1106);
    }

    sub_29A00911C(this + 44, "};\n", 3);
    sub_29ADA7BC4(this + 5072, &v1111, &v1112, &__p, v5 == 9, 0);
    v3 = *this;
  }

  v1109 = *(v3 + 264);
  v1110 = v3 + 272;
  while (v1109 != v1110)
  {
    v18 = *sub_29ADA8E68(&v1109);
    v19 = sub_29ADA8E68(&v1109);
    sub_29ADBF4F4((v18 + 48), *v19 + 56, v1107);
    v20 = *sub_29ADA8E68(&v1109);
    v21 = sub_29ADA8E68(&v1109);
    pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetFallbackScalarSwizzleString(this, (v20 + 48), (*v21 + 40), &v1106);
    v22 = sub_29ADA8E68(&v1109);
    v23 = *v22;
    switch(*(*v22 + 32))
    {
      case 0xD:
        v24 = sub_29ADA8E68(&v1109);
        v25 = sub_29ADBE564((*v24 + 48));
        v26 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v25);
        v27 = sub_29A00911C(v26, " HdGet_", 7);
        v28 = sub_29ADA8E68(&v1109);
        v29 = pxrInternal__aapl__pxrReserved__::operator<<(v27, (*v28 + 40));
        v30 = sub_29A00911C(v29, "(int localIndex) {\n", 19);
        v31 = sub_29A00911C(v30, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
        v32 = sub_29A00911C(v31, "  return ", 9);
        v33 = sub_29ADA8E68(&v1109);
        v34 = sub_29ADBF8C8((*v33 + 48), 0);
        v35 = pxrInternal__aapl__pxrReserved__::operator<<(v32, v34);
        v36 = sub_29A00911C(v35, "(shaderData[shaderCoord].", 25);
        v37 = sub_29ADA8E68(&v1109);
        v38 = pxrInternal__aapl__pxrReserved__::operator<<(v36, (*v37 + 40));
        v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        if (!v39)
        {
          v39 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        }

        v40 = pxrInternal__aapl__pxrReserved__::operator<<(v38, v39);
        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v1106;
        }

        else
        {
          v41 = v1106.__r_.__value_.__r.__words[0];
        }

        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v1106.__r_.__value_.__l.__size_;
        }

        v43 = sub_29A00911C(v40, v41, size);
        v44 = sub_29A00911C(v43, ");\n", 3);
        sub_29A00911C(v44, "}\n", 2);
        v45 = sub_29ADA8E68(&v1109);
        v46 = sub_29ADBE564((*v45 + 48));
        v47 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v46);
        v48 = sub_29A00911C(v47, " HdGet_", 7);
        v49 = sub_29ADA8E68(&v1109);
        v50 = pxrInternal__aapl__pxrReserved__::operator<<(v48, (*v49 + 40));
        v51 = sub_29A00911C(v50, "() { return HdGet_", 18);
        v52 = sub_29ADA8E68(&v1109);
        v53 = pxrInternal__aapl__pxrReserved__::operator<<(v51, (*v52 + 40));
        sub_29A00911C(v53, "(0); }\n", 7);
        v54 = *sub_29ADA8E68(&v1109);
        v55 = sub_29ADA8E68(&v1109);
        sub_29ADBFABC(v1113, (v54 + 40), (*v55 + 48));
        goto LABEL_393;
      case 0xE:
        v445 = *sub_29ADA8E68(&v1109);
        v446 = *(v23 + 35);
        LODWORD(__p) = 2;
        v1121 = 15;
        v1122[0] = v446;
        v1120 = 0;
        sub_29ADC397C(this + 643, (v445 + 40), &__p, v1122, &v1121, &v1120);
        v115 = sub_29ADA8E68(&v1109);
        v117 = 0;
        v447 = 0;
        v116 = 1;
        v118 = 2;
        goto LABEL_347;
      case 0xF:
        v226 = *sub_29ADA8E68(&v1109);
        v227 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v227)
        {
          v227 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v228 = *(v226 + 40);
        v229 = *(v227 + 24);
        v230 = *sub_29ADA8E68(&v1109);
        v231 = *(v23 + 32);
        v232 = v229 ^ v228;
        v233 = *(*sub_29ADA8E68(&v1109) + 112);
        LODWORD(__p) = 2;
        v1121 = 15;
        v1122[0] = HIBYTE(v231);
        v1119 = v233;
        v1120 = v232 < 8;
        sub_29ADC3C68(this + 643, (v230 + 40), &__p, v1122, &v1121, &v1120, &v1119);
        v234 = sub_29ADA8E68(&v1109);
        sub_29ADBFC9C(v1113, *v234 + 40, v1107, &v1106, 2, 0, v232 > 7, 0, a2, 1, v232 < 8);
        goto LABEL_393;
      case 0x10:
        v650 = *sub_29ADA8E68(&v1109);
        v651 = *(v23 + 35);
        LODWORD(__p) = 3;
        v1121 = 15;
        v1122[0] = v651;
        v1120 = 0;
        sub_29ADC397C(this + 643, (v650 + 40), &__p, v1122, &v1121, &v1120);
        v115 = sub_29ADA8E68(&v1109);
        v116 = 0;
        v447 = 0;
        v117 = 1;
        v118 = 3;
        goto LABEL_347;
      case 0x11:
        v652 = sub_29A00911C(&v1114, "#ifdef HD_HAS_", 14);
        v653 = sub_29ADA8E68(&v1109);
        v654 = pxrInternal__aapl__pxrReserved__::operator<<(v652, (*v653 + 40));
        v655 = sub_29A00911C(v654, "_", 1);
        v656 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v656)
        {
          v656 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v657 = pxrInternal__aapl__pxrReserved__::operator<<(v655, v656 + 25);
        v658 = sub_29A00911C(v657, "_", 1);
        v659 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v659)
        {
          v659 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v660 = pxrInternal__aapl__pxrReserved__::operator<<(v658, v659 + 5);
        v661 = sub_29A00911C(v660, "\n", 1);
        v662 = sub_29A00911C(v661, "FORWARD_DECL(vec4 HdGet_", 24);
        v663 = sub_29ADA8E68(&v1109);
        v664 = pxrInternal__aapl__pxrReserved__::operator<<(v662, (*v663 + 40));
        v665 = sub_29A00911C(v664, "_", 1);
        v666 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v666)
        {
          v666 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v667 = pxrInternal__aapl__pxrReserved__::operator<<(v665, v666 + 25);
        v668 = sub_29A00911C(v667, "_", 1);
        v669 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v669)
        {
          v669 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v670 = pxrInternal__aapl__pxrReserved__::operator<<(v668, v669 + 5);
        v671 = sub_29A00911C(v670, "());\n", 5);
        v672 = sub_29A00911C(v671, "#endif\n", 7);
        v673 = sub_29A00911C(v672, "#ifdef HD_HAS_", 14);
        v674 = sub_29ADA8E68(&v1109);
        v675 = pxrInternal__aapl__pxrReserved__::operator<<(v673, (*v674 + 40));
        v676 = sub_29A00911C(v675, "_", 1);
        v677 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v677)
        {
          v677 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v678 = pxrInternal__aapl__pxrReserved__::operator<<(v676, v677 + 25);
        v679 = sub_29A00911C(v678, "_", 1);
        v680 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v680)
        {
          v680 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v681 = pxrInternal__aapl__pxrReserved__::operator<<(v679, v680 + 6);
        v682 = sub_29A00911C(v681, "\n", 1);
        v683 = sub_29A00911C(v682, "FORWARD_DECL(vec4 HdGet_", 24);
        v684 = sub_29ADA8E68(&v1109);
        v685 = pxrInternal__aapl__pxrReserved__::operator<<(v683, (*v684 + 40));
        v686 = sub_29A00911C(v685, "_", 1);
        v687 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v687)
        {
          v687 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v688 = pxrInternal__aapl__pxrReserved__::operator<<(v686, v687 + 25);
        v689 = sub_29A00911C(v688, "_", 1);
        v690 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v690)
        {
          v690 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v691 = pxrInternal__aapl__pxrReserved__::operator<<(v689, v690 + 6);
        v692 = sub_29A00911C(v691, "());\n", 5);
        sub_29A00911C(v692, "#endif\n", 7);
        v693 = *sub_29ADA8E68(&v1109);
        v694 = *(v23 + 35);
        LODWORD(__p) = 2;
        v1121 = 15;
        v1122[0] = v694;
        v1120 = 2;
        sub_29ADC397C(this + 643, (v693 + 40), &__p, v1122, &v1121, &v1120);
        v695 = sub_29ADA8E68(&v1109);
        v696 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v695 + 48));
        v697 = sub_29A00911C(v696, " HdGet_", 7);
        v698 = sub_29ADA8E68(&v1109);
        v699 = pxrInternal__aapl__pxrReserved__::operator<<(v697, (*v698 + 40));
        v700 = sub_29A00911C(v699, "(vec2 coord) {\n vec3 c = hd_sample_udim(coord);\n", 48);
        v701 = sub_29A00911C(v700, "  c.z = HgiTexelFetch_", 22);
        v702 = sub_29ADA8E68(&v1109);
        v703 = pxrInternal__aapl__pxrReserved__::operator<<(v701, (*v702 + 40));
        v704 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        if (!v704)
        {
          v704 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        }

        v705 = pxrInternal__aapl__pxrReserved__::operator<<(v703, v704 + 2);
        v706 = sub_29A00911C(v705, "(int(c.z)).x - 1;\n", 18);
        v707 = sub_29A00911C(v706, "  vec4 ret = vec4(0, 0, 0, 0);\n", 31);
        v708 = sub_29A00911C(v707, "  if (c.z >= -0.5) { ret = HgiGet_", 34);
        v709 = sub_29ADA8E68(&v1109);
        v710 = pxrInternal__aapl__pxrReserved__::operator<<(v708, (*v709 + 40));
        sub_29A00911C(v710, "(c); }\n", 7);
        if (*(*sub_29ADA8E68(&v1109) + 105) == 1)
        {
          v711 = sub_29A00911C(&v1114, "  int shaderCoord = GetDrawingCoord().shaderCoord;\n", 51);
          v712 = sub_29A00911C(v711, "  if (!BOOL(shaderData[shaderCoord].", 36);
          v713 = sub_29ADA8E68(&v1109);
          v714 = pxrInternal__aapl__pxrReserved__::operator<<(v712, (*v713 + 40));
          v715 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v715)
          {
            v715 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v716 = pxrInternal__aapl__pxrReserved__::operator<<(v714, v715 + 4);
          v717 = sub_29A00911C(v716, ")) {\n", 5);
          v718 = sub_29A00911C(v717, "    return (", 12);
          v719 = sub_29ADA8E68(&v1109);
          v720 = sub_29ADBF8C8((*v719 + 48), 0);
          v721 = pxrInternal__aapl__pxrReserved__::operator<<(v718, v720);
          v722 = sub_29A00911C(v721, "(shaderData[shaderCoord].", 25);
          v723 = sub_29ADA8E68(&v1109);
          v724 = pxrInternal__aapl__pxrReserved__::operator<<(v722, (*v723 + 40));
          v725 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v725)
          {
            v725 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v726 = pxrInternal__aapl__pxrReserved__::operator<<(v724, v725);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v727 = &v1106;
          }

          else
          {
            v727 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v728 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v728 = v1106.__r_.__value_.__l.__size_;
          }

          v729 = sub_29A00911C(v726, v727, v728);
          v730 = sub_29A00911C(v729, ")\n", 2);
          v731 = sub_29A00911C(v730, "#ifdef HD_HAS_", 14);
          v732 = sub_29ADA8E68(&v1109);
          v733 = pxrInternal__aapl__pxrReserved__::operator<<(v731, (*v732 + 40));
          v734 = sub_29A00911C(v733, "_", 1);
          v735 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v735)
          {
            v735 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v736 = pxrInternal__aapl__pxrReserved__::operator<<(v734, v735 + 25);
          v737 = sub_29A00911C(v736, "_", 1);
          v738 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v738)
          {
            v738 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v739 = pxrInternal__aapl__pxrReserved__::operator<<(v737, v738 + 5);
          v740 = sub_29A00911C(v739, "\n", 1);
          v741 = sub_29A00911C(v740, "    * HdGet_", 12);
          v742 = sub_29ADA8E68(&v1109);
          v743 = pxrInternal__aapl__pxrReserved__::operator<<(v741, (*v742 + 40));
          v744 = sub_29A00911C(v743, "_", 1);
          v745 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v745)
          {
            v745 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v746 = pxrInternal__aapl__pxrReserved__::operator<<(v744, v745 + 25);
          v747 = sub_29A00911C(v746, "_", 1);
          v748 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v748)
          {
            v748 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v749 = pxrInternal__aapl__pxrReserved__::operator<<(v747, v748 + 5);
          v750 = sub_29A00911C(v749, "()", 2);
          if (v1108 >= 0)
          {
            v751 = v1107;
          }

          else
          {
            v751 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v752 = HIBYTE(v1108);
          }

          else
          {
            v752 = v1107[1];
          }

          v753 = sub_29A00911C(v750, v751, v752);
          v754 = sub_29A00911C(v753, "\n", 1);
          v755 = sub_29A00911C(v754, "#endif\n", 7);
          v756 = sub_29A00911C(v755, "#ifdef HD_HAS_", 14);
          v757 = sub_29ADA8E68(&v1109);
          v758 = pxrInternal__aapl__pxrReserved__::operator<<(v756, (*v757 + 40));
          v759 = sub_29A00911C(v758, "_", 1);
          v760 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v760)
          {
            v760 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v761 = pxrInternal__aapl__pxrReserved__::operator<<(v759, v760 + 25);
          v762 = sub_29A00911C(v761, "_", 1);
          v763 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v763)
          {
            v763 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v764 = pxrInternal__aapl__pxrReserved__::operator<<(v762, v763 + 6);
          v765 = sub_29A00911C(v764, "\n", 1);
          v766 = sub_29A00911C(v765, "    + HdGet_", 12);
          v767 = sub_29ADA8E68(&v1109);
          v768 = pxrInternal__aapl__pxrReserved__::operator<<(v766, (*v767 + 40));
          v769 = sub_29A00911C(v768, "_", 1);
          v770 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v770)
          {
            v770 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v771 = pxrInternal__aapl__pxrReserved__::operator<<(v769, v770 + 25);
          v772 = sub_29A00911C(v771, "_", 1);
          v773 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v773)
          {
            v773 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v774 = pxrInternal__aapl__pxrReserved__::operator<<(v772, v773 + 6);
          v775 = sub_29A00911C(v774, "()", 2);
          if (v1108 >= 0)
          {
            v776 = v1107;
          }

          else
          {
            v776 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v777 = HIBYTE(v1108);
          }

          else
          {
            v777 = v1107[1];
          }

          v778 = sub_29A00911C(v775, v776, v777);
          v779 = sub_29A00911C(v778, "\n", 1);
          v780 = sub_29A00911C(v779, "#endif\n", 7);
          sub_29A00911C(v780, "   );\n  }\n", 11);
        }

        v781 = sub_29A00911C(&v1114, "  return (ret\n", 14);
        v782 = sub_29A00911C(v781, "#ifdef HD_HAS_", 14);
        v783 = sub_29ADA8E68(&v1109);
        v784 = pxrInternal__aapl__pxrReserved__::operator<<(v782, (*v783 + 40));
        v785 = sub_29A00911C(v784, "_", 1);
        v786 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v786)
        {
          v786 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v787 = pxrInternal__aapl__pxrReserved__::operator<<(v785, v786 + 25);
        v788 = sub_29A00911C(v787, "_", 1);
        v789 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v789)
        {
          v789 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v790 = pxrInternal__aapl__pxrReserved__::operator<<(v788, v789 + 5);
        v791 = sub_29A00911C(v790, "\n", 1);
        v792 = sub_29A00911C(v791, "    * HdGet_", 12);
        v793 = sub_29ADA8E68(&v1109);
        v794 = pxrInternal__aapl__pxrReserved__::operator<<(v792, (*v793 + 40));
        v795 = sub_29A00911C(v794, "_", 1);
        v796 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v796)
        {
          v796 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v797 = pxrInternal__aapl__pxrReserved__::operator<<(v795, v796 + 25);
        v798 = sub_29A00911C(v797, "_", 1);
        v799 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v799)
        {
          v799 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v800 = pxrInternal__aapl__pxrReserved__::operator<<(v798, v799 + 5);
        v801 = sub_29A00911C(v800, "()\n", 3);
        v802 = sub_29A00911C(v801, "#endif\n", 7);
        v803 = sub_29A00911C(v802, "#ifdef HD_HAS_", 14);
        v804 = sub_29ADA8E68(&v1109);
        v805 = pxrInternal__aapl__pxrReserved__::operator<<(v803, (*v804 + 40));
        v806 = sub_29A00911C(v805, "_", 1);
        v807 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v807)
        {
          v807 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v808 = pxrInternal__aapl__pxrReserved__::operator<<(v806, v807 + 25);
        v809 = sub_29A00911C(v808, "_", 1);
        v810 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v810)
        {
          v810 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v811 = pxrInternal__aapl__pxrReserved__::operator<<(v809, v810 + 6);
        v812 = sub_29A00911C(v811, "\n", 1);
        v813 = sub_29A00911C(v812, "    + HdGet_", 12);
        v814 = sub_29ADA8E68(&v1109);
        v815 = pxrInternal__aapl__pxrReserved__::operator<<(v813, (*v814 + 40));
        v816 = sub_29A00911C(v815, "_", 1);
        v817 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v817)
        {
          v817 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v818 = pxrInternal__aapl__pxrReserved__::operator<<(v816, v817 + 25);
        v819 = sub_29A00911C(v818, "_", 1);
        v820 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v820)
        {
          v820 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v821 = pxrInternal__aapl__pxrReserved__::operator<<(v819, v820 + 6);
        v822 = sub_29A00911C(v821, "()\n", 3);
        v823 = sub_29A00911C(v822, "#endif\n", 7);
        v824 = sub_29A00911C(v823, " )", 3);
        if (v1108 >= 0)
        {
          v825 = v1107;
        }

        else
        {
          v825 = v1107[0];
        }

        if (v1108 >= 0)
        {
          v826 = HIBYTE(v1108);
        }

        else
        {
          v826 = v1107[1];
        }

        v827 = sub_29A00911C(v824, v825, v826);
        sub_29A00911C(v827, ";\n}\n", 4);
        v828 = sub_29A00911C(&v1114, "vec2 HdGetCoord_", 16);
        v829 = sub_29ADA8E68(&v1109);
        v830 = pxrInternal__aapl__pxrReserved__::operator<<(v828, (*v829 + 40));
        v831 = sub_29A00911C(v830, "() {\n", 5);
        sub_29A00911C(v831, "  return \n", 10);
        v832 = sub_29ADA8E68(&v1109);
        if (*(*v832 + 80) == *(*v832 + 88))
        {
          v842 = &v1114;
          v843 = "  vec2(0.0, 0.0)\n";
          v844 = 17;
        }

        else
        {
          v833 = sub_29A00911C(&v1114, "#if defined(HD_HAS_", 19);
          v834 = sub_29ADA8E68(&v1109);
          v835 = pxrInternal__aapl__pxrReserved__::operator<<(v833, *(*v834 + 80));
          v836 = sub_29A00911C(v835, ")\n", 2);
          v837 = sub_29A00911C(v836, "  HdGet_", 8);
          v838 = sub_29ADA8E68(&v1109);
          v839 = pxrInternal__aapl__pxrReserved__::operator<<(v837, *(*v838 + 80));
          v840 = sub_29A00911C(v839, "().xy\n", 6);
          v841 = sub_29A00911C(v840, "#else\n", 6);
          v842 = sub_29A00911C(v841, "  vec2(0.0, 0.0)\n", 17);
          v843 = "#endif\n";
          v844 = 7;
        }

        sub_29A00911C(v842, v843, v844);
        sub_29A00911C(&v1114, "; }\n", 4);
        v984 = sub_29ADA8E68(&v1109);
        v985 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v984 + 48));
        v986 = sub_29A00911C(v985, " HdGet_", 7);
        v987 = sub_29ADA8E68(&v1109);
        v988 = pxrInternal__aapl__pxrReserved__::operator<<(v986, (*v987 + 40));
        v989 = sub_29A00911C(v988, "() { return HdGet_", 18);
        v990 = sub_29ADA8E68(&v1109);
        v991 = pxrInternal__aapl__pxrReserved__::operator<<(v989, (*v990 + 40));
        v992 = sub_29A00911C(v991, "(", 1);
        v993 = sub_29A00911C(v992, "HdGetCoord_", 11);
        v994 = sub_29ADA8E68(&v1109);
        v995 = pxrInternal__aapl__pxrReserved__::operator<<(v993, (*v994 + 40));
        sub_29A00911C(v995, "()); }\n", 7);
        v996 = sub_29ADA8E68(&v1109);
        v997 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v996 + 48));
        v998 = sub_29A00911C(v997, " HdGet_", 7);
        v999 = sub_29ADA8E68(&v1109);
        v1000 = pxrInternal__aapl__pxrReserved__::operator<<(v998, (*v999 + 40));
        v1001 = sub_29A00911C(v1000, "(int localIndex) { return HdGet_", 32);
        v1002 = sub_29ADA8E68(&v1109);
        v1003 = pxrInternal__aapl__pxrReserved__::operator<<(v1001, (*v1002 + 40));
        v1004 = sub_29A00911C(v1003, "(", 1);
        v1005 = sub_29A00911C(v1004, "HdGetCoord_", 11);
        v1006 = sub_29ADA8E68(&v1109);
        v1007 = pxrInternal__aapl__pxrReserved__::operator<<(v1005, (*v1006 + 40));
        sub_29A00911C(v1007, "());\n}\n", 7);
        v1008 = *sub_29ADA8E68(&v1109);
        v1009 = sub_29ADA8E68(&v1109);
        sub_29ADBFABC(v1113, (v1008 + 40), (*v1009 + 48));
        if (*(*sub_29ADA8E68(&v1109) + 104) == 1)
        {
          goto LABEL_391;
        }

        goto LABEL_393;
      case 0x12:
        v235 = *sub_29ADA8E68(&v1109);
        v236 = *(v23 + 35);
        LODWORD(__p) = 1;
        v1121 = 15;
        v1122[0] = v236;
        v1120 = 0;
        sub_29ADC397C(this + 643, (v235 + 40), &__p, v1122, &v1121, &v1120);
        goto LABEL_393;
      case 0x13:
        v448 = *sub_29ADA8E68(&v1109);
        v449 = *(v23 + 35);
        LODWORD(__p) = 2;
        v1121 = 15;
        v1122[0] = v449;
        v1120 = 2;
        sub_29ADC397C(this + 643, (v448 + 40), &__p, v1122, &v1121, &v1120);
        if (*(*sub_29ADA8E68(&v1109) + 105) == 1)
        {
          v450 = sub_29ADA8E68(&v1109);
          v451 = sub_29ADBE564((*v450 + 48));
          v452 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v451);
          v453 = sub_29A00911C(v452, " HdGet_", 7);
          v454 = sub_29ADA8E68(&v1109);
          v455 = pxrInternal__aapl__pxrReserved__::operator<<(v453, (*v454 + 40));
          v456 = sub_29A00911C(v455, "(int localIndex) {\n", 19);
          v457 = sub_29A00911C(v456, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v458 = sub_29A00911C(v457, "  if (BOOL(shaderData[shaderCoord].", 35);
          v459 = sub_29ADA8E68(&v1109);
          v460 = pxrInternal__aapl__pxrReserved__::operator<<(v458, (*v459 + 40));
          v461 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v461)
          {
            v461 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v462 = pxrInternal__aapl__pxrReserved__::operator<<(v460, v461 + 4);
          v463 = sub_29A00911C(v462, ")) {\n", 5);
          v464 = sub_29A00911C(v463, "    return ", 11);
          v465 = sub_29ADA8E68(&v1109);
          v466 = sub_29ADBF8C8((*v465 + 48), 0);
          v467 = pxrInternal__aapl__pxrReserved__::operator<<(v464, v466);
          v468 = sub_29A00911C(v467, "(PtexTextureLookup(", 19);
          v469 = sub_29A00911C(v468, "HgiGetSampler_", 14);
          v470 = sub_29ADA8E68(&v1109);
          v471 = pxrInternal__aapl__pxrReserved__::operator<<(v469, (*v470 + 40));
          v472 = sub_29A00911C(v471, "(), ", 4);
          v473 = sub_29A00911C(v472, "HgiGetSampler_", 14);
          v474 = sub_29ADA8E68(&v1109);
          v475 = pxrInternal__aapl__pxrReserved__::operator<<(v473, (*v474 + 40));
          v476 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v476)
          {
            v476 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v477 = pxrInternal__aapl__pxrReserved__::operator<<(v475, v476 + 2);
          v478 = sub_29A00911C(v477, "(), ", 4);
          v479 = sub_29A00911C(v478, "GetPatchCoord(localIndex))", 26);
          if (v1108 >= 0)
          {
            v480 = v1107;
          }

          else
          {
            v480 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v481 = HIBYTE(v1108);
          }

          else
          {
            v481 = v1107[1];
          }

          v482 = sub_29A00911C(v479, v480, v481);
          v483 = sub_29A00911C(v482, ");\n", 3);
          v484 = sub_29A00911C(v483, "  } else {\n", 11);
          v485 = sub_29A00911C(v484, "    return (", 12);
          v486 = sub_29ADA8E68(&v1109);
          v487 = sub_29ADBF8C8((*v486 + 48), 0);
          v488 = pxrInternal__aapl__pxrReserved__::operator<<(v485, v487);
          v489 = sub_29A00911C(v488, "(shaderData[shaderCoord].", 25);
          v490 = sub_29ADA8E68(&v1109);
          v491 = pxrInternal__aapl__pxrReserved__::operator<<(v489, (*v490 + 40));
          v492 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v492)
          {
            v492 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v493 = pxrInternal__aapl__pxrReserved__::operator<<(v491, v492);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v494 = &v1106;
          }

          else
          {
            v494 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v495 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v495 = v1106.__r_.__value_.__l.__size_;
          }

          v496 = sub_29A00911C(v493, v494, v495);
          v497 = sub_29A00911C(v496, "))", 2);
          if (v1108 >= 0)
          {
            v498 = v1107;
          }

          else
          {
            v498 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v499 = HIBYTE(v1108);
          }

          else
          {
            v499 = v1107[1];
          }

          v500 = sub_29A00911C(v497, v498, v499);
          v501 = sub_29A00911C(v500, ";\n", 2);
          v502 = sub_29A00911C(v501, "  }\n}\n", 6);
          v503 = sub_29ADA8E68(&v1109);
          v504 = sub_29ADBE564((*v503 + 48));
          v505 = pxrInternal__aapl__pxrReserved__::operator<<(v502, v504);
          v506 = sub_29A00911C(v505, " HdGet_", 7);
          v507 = sub_29ADA8E68(&v1109);
          v508 = pxrInternal__aapl__pxrReserved__::operator<<(v506, (*v507 + 40));
          v509 = sub_29A00911C(v508, "(vec4 patchCoord) {\n", 20);
          v510 = sub_29A00911C(v509, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v511 = sub_29A00911C(v510, "  if (BOOL(shaderData[shaderCoord].", 35);
          v512 = sub_29ADA8E68(&v1109);
          v513 = pxrInternal__aapl__pxrReserved__::operator<<(v511, (*v512 + 40));
          v514 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v514)
          {
            v514 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v515 = pxrInternal__aapl__pxrReserved__::operator<<(v513, v514 + 4);
          v516 = sub_29A00911C(v515, ")) {\n", 5);
          v517 = sub_29A00911C(v516, "    return ", 11);
          v518 = sub_29ADA8E68(&v1109);
          v519 = sub_29ADBF8C8((*v518 + 48), 0);
          v520 = pxrInternal__aapl__pxrReserved__::operator<<(v517, v519);
          v521 = sub_29A00911C(v520, "(PtexTextureLookup(", 19);
          v522 = sub_29A00911C(v521, "HgiGetSampler_", 14);
          v523 = sub_29ADA8E68(&v1109);
          v524 = pxrInternal__aapl__pxrReserved__::operator<<(v522, (*v523 + 40));
          v525 = sub_29A00911C(v524, "(), ", 4);
          v526 = sub_29A00911C(v525, "HgiGetSampler_", 14);
          v527 = sub_29ADA8E68(&v1109);
          v528 = pxrInternal__aapl__pxrReserved__::operator<<(v526, (*v527 + 40));
          v529 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v529)
          {
            v529 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v530 = pxrInternal__aapl__pxrReserved__::operator<<(v528, v529 + 2);
          v531 = sub_29A00911C(v530, "(), ", 4);
          v532 = sub_29A00911C(v531, "patchCoord)", 11);
          if (v1108 >= 0)
          {
            v533 = v1107;
          }

          else
          {
            v533 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v534 = HIBYTE(v1108);
          }

          else
          {
            v534 = v1107[1];
          }

          v535 = sub_29A00911C(v532, v533, v534);
          v536 = sub_29A00911C(v535, ");\n", 3);
          v537 = sub_29A00911C(v536, "  } else {\n", 11);
          v538 = sub_29A00911C(v537, "    return (", 12);
          v539 = sub_29ADA8E68(&v1109);
          v540 = sub_29ADBF8C8((*v539 + 48), 0);
          v541 = pxrInternal__aapl__pxrReserved__::operator<<(v538, v540);
          v542 = sub_29A00911C(v541, "(shaderData[shaderCoord].", 25);
          v543 = sub_29ADA8E68(&v1109);
          v544 = pxrInternal__aapl__pxrReserved__::operator<<(v542, (*v543 + 40));
          v545 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v545)
          {
            v545 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v546 = pxrInternal__aapl__pxrReserved__::operator<<(v544, v545);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v547 = &v1106;
          }

          else
          {
            v547 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v548 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v548 = v1106.__r_.__value_.__l.__size_;
          }

          v549 = sub_29A00911C(v546, v547, v548);
          v550 = sub_29A00911C(v549, "))", 2);
          if (v1108 >= 0)
          {
            v551 = v1107;
          }

          else
          {
            v551 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v552 = HIBYTE(v1108);
          }

          else
          {
            v552 = v1107[1];
          }

          v553 = sub_29A00911C(v550, v551, v552);
          v554 = sub_29A00911C(v553, ";\n", 2);
          v555 = "  }\n}\n";
          v556 = 6;
        }

        else
        {
          v918 = sub_29ADA8E68(&v1109);
          v919 = sub_29ADBE564((*v918 + 48));
          v920 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v919);
          v921 = sub_29A00911C(v920, " HdGet_", 7);
          v922 = sub_29ADA8E68(&v1109);
          v923 = pxrInternal__aapl__pxrReserved__::operator<<(v921, (*v922 + 40));
          v924 = sub_29A00911C(v923, "(int localIndex) {\n", 19);
          v925 = sub_29A00911C(v924, "  return ", 9);
          v926 = sub_29ADA8E68(&v1109);
          v927 = sub_29ADBF8C8((*v926 + 48), 0);
          v928 = pxrInternal__aapl__pxrReserved__::operator<<(v925, v927);
          v929 = sub_29A00911C(v928, "(PtexTextureLookup(", 19);
          v930 = sub_29A00911C(v929, "HgiGetSampler_", 14);
          v931 = sub_29ADA8E68(&v1109);
          v932 = pxrInternal__aapl__pxrReserved__::operator<<(v930, (*v931 + 40));
          v933 = sub_29A00911C(v932, "(), ", 4);
          v934 = sub_29A00911C(v933, "HgiGetSampler_", 14);
          v935 = sub_29ADA8E68(&v1109);
          v936 = pxrInternal__aapl__pxrReserved__::operator<<(v934, (*v935 + 40));
          v937 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v937)
          {
            v937 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v938 = pxrInternal__aapl__pxrReserved__::operator<<(v936, v937 + 2);
          v939 = sub_29A00911C(v938, "(), ", 4);
          v940 = sub_29A00911C(v939, "GetPatchCoord(localIndex))", 26);
          if (v1108 >= 0)
          {
            v941 = v1107;
          }

          else
          {
            v941 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v942 = HIBYTE(v1108);
          }

          else
          {
            v942 = v1107[1];
          }

          v943 = sub_29A00911C(v940, v941, v942);
          v944 = sub_29A00911C(v943, ");\n", 3);
          v945 = sub_29A00911C(v944, "}\n", 2);
          v946 = sub_29ADA8E68(&v1109);
          v947 = sub_29ADBE564((*v946 + 48));
          v948 = pxrInternal__aapl__pxrReserved__::operator<<(v945, v947);
          v949 = sub_29A00911C(v948, " HdGet_", 7);
          v950 = sub_29ADA8E68(&v1109);
          v951 = pxrInternal__aapl__pxrReserved__::operator<<(v949, (*v950 + 40));
          v952 = sub_29A00911C(v951, "(vec4 patchCoord) {\n", 20);
          v953 = sub_29A00911C(v952, "  return ", 9);
          v954 = sub_29ADA8E68(&v1109);
          v955 = sub_29ADBF8C8((*v954 + 48), 0);
          v956 = pxrInternal__aapl__pxrReserved__::operator<<(v953, v955);
          v957 = sub_29A00911C(v956, "(PtexTextureLookup(", 19);
          v958 = sub_29A00911C(v957, "HgiGetSampler_", 14);
          v959 = sub_29ADA8E68(&v1109);
          v960 = pxrInternal__aapl__pxrReserved__::operator<<(v958, (*v959 + 40));
          v961 = sub_29A00911C(v960, "(), ", 4);
          v962 = sub_29A00911C(v961, "HgiGetSampler_", 14);
          v963 = sub_29ADA8E68(&v1109);
          v964 = pxrInternal__aapl__pxrReserved__::operator<<(v962, (*v963 + 40));
          v965 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v965)
          {
            v965 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v966 = pxrInternal__aapl__pxrReserved__::operator<<(v964, v965 + 2);
          v967 = sub_29A00911C(v966, "(), ", 4);
          v968 = sub_29A00911C(v967, "patchCoord)", 11);
          if (v1108 >= 0)
          {
            v969 = v1107;
          }

          else
          {
            v969 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v970 = HIBYTE(v1108);
          }

          else
          {
            v970 = v1107[1];
          }

          v971 = sub_29A00911C(v968, v969, v970);
          v554 = sub_29A00911C(v971, ");\n", 3);
          v555 = "}\n";
          v556 = 2;
        }

        sub_29A00911C(v554, v555, v556);
        v972 = sub_29ADA8E68(&v1109);
        v973 = sub_29ADBE564((*v972 + 48));
        v974 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v973);
        v975 = sub_29A00911C(v974, " HdGet_", 7);
        v976 = sub_29ADA8E68(&v1109);
        v977 = pxrInternal__aapl__pxrReserved__::operator<<(v975, (*v976 + 40));
        v978 = sub_29A00911C(v977, "()", 2);
        v979 = sub_29A00911C(v978, "{ return HdGet_", 15);
        v980 = sub_29ADA8E68(&v1109);
        v981 = pxrInternal__aapl__pxrReserved__::operator<<(v979, (*v980 + 40));
        sub_29A00911C(v981, "(0); }\n", 7);
        v982 = *sub_29ADA8E68(&v1109);
        v983 = sub_29ADA8E68(&v1109);
        sub_29ADBFABC(v1113, (v982 + 40), (*v983 + 48));
        if (*(*sub_29ADA8E68(&v1109) + 104) == 1)
        {
          goto LABEL_391;
        }

        goto LABEL_393;
      case 0x14:
        v557 = *sub_29ADA8E68(&v1109);
        v558 = *(v23 + 35);
        LODWORD(__p) = 1;
        v1121 = 20;
        v1122[0] = v558;
        v1120 = 2;
        sub_29ADC397C(this + 643, (v557 + 40), &__p, v1122, &v1121, &v1120);
        goto LABEL_393;
      case 0x15:
        v115 = sub_29ADA8E68(&v1109);
        v117 = 0;
        v116 = 1;
        v118 = 2;
        goto LABEL_346;
      case 0x16:
        v845 = *sub_29ADA8E68(&v1109);
        v846 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v846)
        {
          v846 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v847 = *(v845 + 40);
        v848 = *(v846 + 24);
        v849 = sub_29ADA8E68(&v1109);
        sub_29ADBFC9C(v1113, *v849 + 40, v1107, &v1106, 2, 0, (v848 ^ v847) > 7, 1, a2, 1, (v848 ^ v847) < 8);
        goto LABEL_393;
      case 0x17:
        v115 = sub_29ADA8E68(&v1109);
        v116 = 0;
        v117 = 1;
        v118 = 3;
LABEL_346:
        v447 = 1;
LABEL_347:
        sub_29ADBFC9C(v1113, *v115 + 40, v1107, &v1106, v118, v117, v116, v447, a2, 0, 0);
        goto LABEL_393;
      case 0x18:
        v237 = sub_29A00911C(&v1114, "#ifdef HD_HAS_", 14);
        v238 = sub_29ADA8E68(&v1109);
        v239 = pxrInternal__aapl__pxrReserved__::operator<<(v237, (*v238 + 40));
        v240 = sub_29A00911C(v239, "_", 1);
        v241 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v241)
        {
          v241 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v242 = pxrInternal__aapl__pxrReserved__::operator<<(v240, v241 + 25);
        v243 = sub_29A00911C(v242, "_", 1);
        v244 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v244)
        {
          v244 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v245 = pxrInternal__aapl__pxrReserved__::operator<<(v243, v244 + 5);
        v246 = sub_29A00911C(v245, "\n", 1);
        v247 = sub_29A00911C(v246, "vec4 HdGet_", 11);
        v248 = sub_29ADA8E68(&v1109);
        v249 = pxrInternal__aapl__pxrReserved__::operator<<(v247, (*v248 + 40));
        v250 = sub_29A00911C(v249, "_", 1);
        v251 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v251)
        {
          v251 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v252 = pxrInternal__aapl__pxrReserved__::operator<<(v250, v251 + 25);
        v253 = sub_29A00911C(v252, "_", 1);
        v254 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v254)
        {
          v254 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v255 = pxrInternal__aapl__pxrReserved__::operator<<(v253, v254 + 5);
        v256 = sub_29A00911C(v255, "();\n", 4);
        v257 = sub_29A00911C(v256, "#endif\n", 7);
        v258 = sub_29A00911C(v257, "#ifdef HD_HAS_", 14);
        v259 = sub_29ADA8E68(&v1109);
        v260 = pxrInternal__aapl__pxrReserved__::operator<<(v258, (*v259 + 40));
        v261 = sub_29A00911C(v260, "_", 1);
        v262 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v262)
        {
          v262 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v263 = pxrInternal__aapl__pxrReserved__::operator<<(v261, v262 + 25);
        v264 = sub_29A00911C(v263, "_", 1);
        v265 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v265)
        {
          v265 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v266 = pxrInternal__aapl__pxrReserved__::operator<<(v264, v265 + 6);
        v267 = sub_29A00911C(v266, "\n", 1);
        v268 = sub_29A00911C(v267, "vec4 HdGet_", 11);
        v269 = sub_29ADA8E68(&v1109);
        v270 = pxrInternal__aapl__pxrReserved__::operator<<(v268, (*v269 + 40));
        v271 = sub_29A00911C(v270, "_", 1);
        v272 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v272)
        {
          v272 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v273 = pxrInternal__aapl__pxrReserved__::operator<<(v271, v272 + 25);
        v274 = sub_29A00911C(v273, "_", 1);
        v275 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v275)
        {
          v275 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v276 = pxrInternal__aapl__pxrReserved__::operator<<(v274, v275 + 6);
        v277 = sub_29A00911C(v276, "();\n", 4);
        sub_29A00911C(v277, "#endif\n", 7);
        if (a2)
        {
          v278 = sub_29A00911C(&v1114, "sampler2DArray\n", 15);
          v279 = sub_29A00911C(v278, "HdGetSampler_", 13);
          v280 = sub_29ADA8E68(&v1109);
          v281 = pxrInternal__aapl__pxrReserved__::operator<<(v279, (*v280 + 40));
          v282 = sub_29A00911C(v281, "() {\n", 5);
          v283 = sub_29A00911C(v282, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v284 = sub_29A00911C(v283, "  return sampler2DArray(shaderData[shaderCoord].", 48);
          v285 = sub_29ADA8E68(&v1109);
          v286 = pxrInternal__aapl__pxrReserved__::operator<<(v284, (*v285 + 40));
          v287 = sub_29A00911C(v286, ");\n", 3);
          sub_29A00911C(v287, "}\n", 2);
        }

        v288 = sub_29ADA8E68(&v1109);
        v289 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v288 + 48));
        v290 = sub_29A00911C(v289, " HdGet_", 7);
        v291 = sub_29ADA8E68(&v1109);
        v292 = pxrInternal__aapl__pxrReserved__::operator<<(v290, (*v291 + 40));
        v293 = sub_29A00911C(v292, "(vec2 coord)", 12);
        v294 = sub_29A00911C(v293, " {\n", 3);
        v295 = sub_29A00911C(v294, "  int shaderCoord = GetDrawingCoord().shaderCoord;\n", 51);
        v296 = sub_29A00911C(v295, "  uvec2 handle = shaderData[shaderCoord].", 41);
        v297 = sub_29ADA8E68(&v1109);
        v298 = pxrInternal__aapl__pxrReserved__::operator<<(v296, (*v297 + 40));
        v299 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        if (!v299)
        {
          v299 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        }

        v300 = pxrInternal__aapl__pxrReserved__::operator<<(v298, v299 + 2);
        v301 = sub_29A00911C(v300, ";\n", 2);
        v302 = sub_29A00911C(v301, "  vec3 c = hd_sample_udim(coord);\n", 34);
        v303 = sub_29A00911C(v302, "  c.z = ", 8);
        v304 = sub_29A00911C(v303, "texelFetch(sampler1D(handle), int(c.z), 0).x - 1;\n", 50);
        v305 = sub_29A00911C(v304, "  vec4 ret = vec4(0, 0, 0, 0);\n", 31);
        v306 = sub_29A00911C(v305, "  if (c.z >= -0.5) {\n", 21);
        v307 = sub_29A00911C(v306, "    uvec2 handleTexels = shaderData[shaderCoord].", 49);
        v308 = sub_29ADA8E68(&v1109);
        v309 = pxrInternal__aapl__pxrReserved__::operator<<(v307, (*v308 + 40));
        v310 = sub_29A00911C(v309, ";\n", 2);
        v311 = sub_29A00911C(v310, "    ret = texture(sampler2DArray(handleTexels), c);\n", 52);
        sub_29A00911C(v311, "  }\n", 4);
        if (*(*sub_29ADA8E68(&v1109) + 105) == 1)
        {
          v312 = sub_29A00911C(&v1114, "  if (!BOOL(shaderData[shaderCoord].", 36);
          v313 = sub_29ADA8E68(&v1109);
          v314 = pxrInternal__aapl__pxrReserved__::operator<<(v312, (*v313 + 40));
          v315 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v315)
          {
            v315 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v316 = pxrInternal__aapl__pxrReserved__::operator<<(v314, v315 + 4);
          v317 = sub_29A00911C(v316, ")) {\n", 5);
          v318 = sub_29A00911C(v317, "    return (", 12);
          v319 = sub_29ADA8E68(&v1109);
          v320 = sub_29ADBF8C8((*v319 + 48), 0);
          v321 = pxrInternal__aapl__pxrReserved__::operator<<(v318, v320);
          v322 = sub_29A00911C(v321, "(shaderData[shaderCoord].", 25);
          v323 = sub_29ADA8E68(&v1109);
          v324 = pxrInternal__aapl__pxrReserved__::operator<<(v322, (*v323 + 40));
          v325 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v325)
          {
            v325 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v326 = pxrInternal__aapl__pxrReserved__::operator<<(v324, v325);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v327 = &v1106;
          }

          else
          {
            v327 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v328 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v328 = v1106.__r_.__value_.__l.__size_;
          }

          v329 = sub_29A00911C(v326, v327, v328);
          v330 = sub_29A00911C(v329, ")\n", 2);
          v331 = sub_29A00911C(v330, "#ifdef HD_HAS_", 14);
          v332 = sub_29ADA8E68(&v1109);
          v333 = pxrInternal__aapl__pxrReserved__::operator<<(v331, (*v332 + 40));
          v334 = sub_29A00911C(v333, "_", 1);
          v335 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v335)
          {
            v335 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v336 = pxrInternal__aapl__pxrReserved__::operator<<(v334, v335 + 25);
          v337 = sub_29A00911C(v336, "_", 1);
          v338 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v338)
          {
            v338 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v339 = pxrInternal__aapl__pxrReserved__::operator<<(v337, v338 + 5);
          v340 = sub_29A00911C(v339, "\n", 1);
          v341 = sub_29A00911C(v340, "    * HdGet_", 12);
          v342 = sub_29ADA8E68(&v1109);
          v343 = pxrInternal__aapl__pxrReserved__::operator<<(v341, (*v342 + 40));
          v344 = sub_29A00911C(v343, "_", 1);
          v345 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v345)
          {
            v345 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v346 = pxrInternal__aapl__pxrReserved__::operator<<(v344, v345 + 25);
          v347 = sub_29A00911C(v346, "_", 1);
          v348 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v348)
          {
            v348 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v349 = pxrInternal__aapl__pxrReserved__::operator<<(v347, v348 + 5);
          v350 = sub_29A00911C(v349, "()", 2);
          if (v1108 >= 0)
          {
            v351 = v1107;
          }

          else
          {
            v351 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v352 = HIBYTE(v1108);
          }

          else
          {
            v352 = v1107[1];
          }

          v353 = sub_29A00911C(v350, v351, v352);
          v354 = sub_29A00911C(v353, "\n", 1);
          v355 = sub_29A00911C(v354, "#endif\n", 7);
          v356 = sub_29A00911C(v355, "#ifdef HD_HAS_", 14);
          v357 = sub_29ADA8E68(&v1109);
          v358 = pxrInternal__aapl__pxrReserved__::operator<<(v356, (*v357 + 40));
          v359 = sub_29A00911C(v358, "_", 1);
          v360 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v360)
          {
            v360 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v361 = pxrInternal__aapl__pxrReserved__::operator<<(v359, v360 + 25);
          v362 = sub_29A00911C(v361, "_", 1);
          v363 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v363)
          {
            v363 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v364 = pxrInternal__aapl__pxrReserved__::operator<<(v362, v363 + 6);
          v365 = sub_29A00911C(v364, "\n", 1);
          v366 = sub_29A00911C(v365, "    + HdGet_", 12);
          v367 = sub_29ADA8E68(&v1109);
          v368 = pxrInternal__aapl__pxrReserved__::operator<<(v366, (*v367 + 40));
          v369 = sub_29A00911C(v368, "_", 1);
          v370 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v370)
          {
            v370 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v371 = pxrInternal__aapl__pxrReserved__::operator<<(v369, v370 + 25);
          v372 = sub_29A00911C(v371, "_", 1);
          v373 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v373)
          {
            v373 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v374 = pxrInternal__aapl__pxrReserved__::operator<<(v372, v373 + 6);
          v375 = sub_29A00911C(v374, "()", 2);
          if (v1108 >= 0)
          {
            v376 = v1107;
          }

          else
          {
            v376 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v377 = HIBYTE(v1108);
          }

          else
          {
            v377 = v1107[1];
          }

          v378 = sub_29A00911C(v375, v376, v377);
          v379 = sub_29A00911C(v378, "\n", 1);
          v380 = sub_29A00911C(v379, "#endif\n", 7);
          sub_29A00911C(v380, "   );\n  }\n", 11);
        }

        v381 = sub_29A00911C(&v1114, "  return (ret\n", 14);
        v382 = sub_29A00911C(v381, "#ifdef HD_HAS_", 14);
        v383 = sub_29ADA8E68(&v1109);
        v384 = pxrInternal__aapl__pxrReserved__::operator<<(v382, (*v383 + 40));
        v385 = sub_29A00911C(v384, "_", 1);
        v386 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v386)
        {
          v386 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v387 = pxrInternal__aapl__pxrReserved__::operator<<(v385, v386 + 25);
        v388 = sub_29A00911C(v387, "_", 1);
        v389 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v389)
        {
          v389 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v390 = pxrInternal__aapl__pxrReserved__::operator<<(v388, v389 + 5);
        v391 = sub_29A00911C(v390, "\n", 1);
        v392 = sub_29A00911C(v391, "    * HdGet_", 12);
        v393 = sub_29ADA8E68(&v1109);
        v394 = pxrInternal__aapl__pxrReserved__::operator<<(v392, (*v393 + 40));
        v395 = sub_29A00911C(v394, "_", 1);
        v396 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v396)
        {
          v396 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v397 = pxrInternal__aapl__pxrReserved__::operator<<(v395, v396 + 25);
        v398 = sub_29A00911C(v397, "_", 1);
        v399 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v399)
        {
          v399 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v400 = pxrInternal__aapl__pxrReserved__::operator<<(v398, v399 + 5);
        v401 = sub_29A00911C(v400, "()\n", 3);
        v402 = sub_29A00911C(v401, "#endif\n", 7);
        v403 = sub_29A00911C(v402, "#ifdef HD_HAS_", 14);
        v404 = sub_29ADA8E68(&v1109);
        v405 = pxrInternal__aapl__pxrReserved__::operator<<(v403, (*v404 + 40));
        v406 = sub_29A00911C(v405, "_", 1);
        v407 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v407)
        {
          v407 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v408 = pxrInternal__aapl__pxrReserved__::operator<<(v406, v407 + 25);
        v409 = sub_29A00911C(v408, "_", 1);
        v410 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v410)
        {
          v410 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v411 = pxrInternal__aapl__pxrReserved__::operator<<(v409, v410 + 6);
        v412 = sub_29A00911C(v411, "\n", 1);
        v413 = sub_29A00911C(v412, "    + HdGet_", 12);
        v414 = sub_29ADA8E68(&v1109);
        v415 = pxrInternal__aapl__pxrReserved__::operator<<(v413, (*v414 + 40));
        v416 = sub_29A00911C(v415, "_", 1);
        v417 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v417)
        {
          v417 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v418 = pxrInternal__aapl__pxrReserved__::operator<<(v416, v417 + 25);
        v419 = sub_29A00911C(v418, "_", 1);
        v420 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v420)
        {
          v420 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v421 = pxrInternal__aapl__pxrReserved__::operator<<(v419, v420 + 6);
        v422 = sub_29A00911C(v421, "()\n", 3);
        v423 = sub_29A00911C(v422, "#endif\n", 7);
        v424 = sub_29A00911C(v423, " )", 3);
        if (v1108 >= 0)
        {
          v425 = v1107;
        }

        else
        {
          v425 = v1107[0];
        }

        if (v1108 >= 0)
        {
          v426 = HIBYTE(v1108);
        }

        else
        {
          v426 = v1107[1];
        }

        v427 = sub_29A00911C(v424, v425, v426);
        sub_29A00911C(v427, ";\n}\n", 4);
        v428 = sub_29A00911C(&v1114, "vec2 HdGetCoord_", 16);
        v429 = sub_29ADA8E68(&v1109);
        v430 = pxrInternal__aapl__pxrReserved__::operator<<(v428, (*v429 + 40));
        v431 = sub_29A00911C(v430, "() {\n", 5);
        sub_29A00911C(v431, "  return \n", 10);
        v432 = sub_29ADA8E68(&v1109);
        if (*(*v432 + 80) == *(*v432 + 88))
        {
          v442 = &v1114;
          v443 = "  vec2(0.0, 0.0)\n";
          v444 = 17;
        }

        else
        {
          v433 = sub_29A00911C(&v1114, "#if defined(HD_HAS_", 19);
          v434 = sub_29ADA8E68(&v1109);
          v435 = pxrInternal__aapl__pxrReserved__::operator<<(v433, *(*v434 + 80));
          v436 = sub_29A00911C(v435, ")\n", 2);
          v437 = sub_29A00911C(v436, "  HdGet_", 8);
          v438 = sub_29ADA8E68(&v1109);
          v439 = pxrInternal__aapl__pxrReserved__::operator<<(v437, *(*v438 + 80));
          v440 = sub_29A00911C(v439, "().xy;\n", 7);
          v441 = sub_29A00911C(v440, "#else\n", 6);
          v442 = sub_29A00911C(v441, "  vec2(0.0, 0.0)\n", 17);
          v443 = "#endif\n";
          v444 = 7;
        }

        sub_29A00911C(v442, v443, v444);
        sub_29A00911C(&v1114, "; }\n", 4);
        v1010 = sub_29ADA8E68(&v1109);
        v1011 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v1010 + 48));
        v1012 = sub_29A00911C(v1011, " HdGet_", 7);
        v1013 = sub_29ADA8E68(&v1109);
        v1014 = pxrInternal__aapl__pxrReserved__::operator<<(v1012, (*v1013 + 40));
        v1015 = sub_29A00911C(v1014, "() { return HdGet_", 18);
        v1016 = sub_29ADA8E68(&v1109);
        v1017 = pxrInternal__aapl__pxrReserved__::operator<<(v1015, (*v1016 + 40));
        v1018 = sub_29A00911C(v1017, "(", 1);
        v1019 = sub_29A00911C(v1018, "HdGetCoord_", 11);
        v1020 = sub_29ADA8E68(&v1109);
        v1021 = pxrInternal__aapl__pxrReserved__::operator<<(v1019, (*v1020 + 40));
        sub_29A00911C(v1021, "()); }\n", 7);
        v1022 = sub_29ADA8E68(&v1109);
        v1023 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, (*v1022 + 48));
        v1024 = sub_29A00911C(v1023, " HdGet_", 7);
        v1025 = sub_29ADA8E68(&v1109);
        v1026 = pxrInternal__aapl__pxrReserved__::operator<<(v1024, (*v1025 + 40));
        v1027 = sub_29A00911C(v1026, "(int localIndex) { return HdGet_", 32);
        v1028 = sub_29ADA8E68(&v1109);
        v1029 = pxrInternal__aapl__pxrReserved__::operator<<(v1027, (*v1028 + 40));
        v1030 = sub_29A00911C(v1029, "(", 1);
        v1031 = sub_29A00911C(v1030, "HdGetCoord_", 11);
        v1032 = sub_29ADA8E68(&v1109);
        v1033 = pxrInternal__aapl__pxrReserved__::operator<<(v1031, (*v1032 + 40));
        sub_29A00911C(v1033, "());\n}\n", 7);
        v1034 = *sub_29ADA8E68(&v1109);
        v1035 = sub_29ADA8E68(&v1109);
        sub_29ADBFABC(v1113, (v1034 + 40), (*v1035 + 48));
        if (*(*sub_29ADA8E68(&v1109) + 104) == 1)
        {
          goto LABEL_391;
        }

        goto LABEL_393;
      case 0x1A:
        if (*(*sub_29ADA8E68(&v1109) + 105) == 1)
        {
          v119 = sub_29ADA8E68(&v1109);
          v120 = sub_29ADBE564((*v119 + 48));
          v121 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v120);
          v122 = sub_29A00911C(v121, " HdGet_", 7);
          v123 = sub_29ADA8E68(&v1109);
          v124 = pxrInternal__aapl__pxrReserved__::operator<<(v122, (*v123 + 40));
          v125 = sub_29A00911C(v124, "(int localIndex) {\n", 19);
          v126 = sub_29A00911C(v125, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v127 = sub_29A00911C(v126, "  if (BOOL(shaderData[shaderCoord].", 35);
          v128 = sub_29ADA8E68(&v1109);
          v129 = pxrInternal__aapl__pxrReserved__::operator<<(v127, (*v128 + 40));
          v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v130)
          {
            v130 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v131 = pxrInternal__aapl__pxrReserved__::operator<<(v129, v130 + 4);
          v132 = sub_29A00911C(v131, ")) {\n", 5);
          v133 = sub_29A00911C(v132, "    return ", 11);
          v134 = sub_29ADA8E68(&v1109);
          v135 = sub_29ADBF8C8((*v134 + 48), 0);
          v136 = pxrInternal__aapl__pxrReserved__::operator<<(v133, v135);
          v137 = sub_29A00911C(v136, "(PtexTextureLookup(", 19);
          v138 = sub_29A00911C(v137, "sampler2DArray(shaderData[shaderCoord].", 39);
          v139 = sub_29ADA8E68(&v1109);
          v140 = pxrInternal__aapl__pxrReserved__::operator<<(v138, (*v139 + 40));
          v141 = sub_29A00911C(v140, "),", 2);
          v142 = sub_29A00911C(v141, "usampler1DArray(shaderData[shaderCoord].", 40);
          v143 = sub_29ADA8E68(&v1109);
          v144 = pxrInternal__aapl__pxrReserved__::operator<<(v142, (*v143 + 40));
          v145 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v145)
          {
            v145 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v146 = pxrInternal__aapl__pxrReserved__::operator<<(v144, v145 + 2);
          v147 = sub_29A00911C(v146, "), ", 3);
          v148 = sub_29A00911C(v147, "GetPatchCoord(localIndex))", 26);
          if (v1108 >= 0)
          {
            v149 = v1107;
          }

          else
          {
            v149 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v150 = HIBYTE(v1108);
          }

          else
          {
            v150 = v1107[1];
          }

          v151 = sub_29A00911C(v148, v149, v150);
          v152 = sub_29A00911C(v151, ");\n", 3);
          v153 = sub_29A00911C(v152, "  } else {\n", 11);
          v154 = sub_29A00911C(v153, "    return (", 12);
          v155 = sub_29ADA8E68(&v1109);
          v156 = sub_29ADBF8C8((*v155 + 48), 0);
          v157 = pxrInternal__aapl__pxrReserved__::operator<<(v154, v156);
          v158 = sub_29A00911C(v157, "(shaderData[shaderCoord].", 25);
          v159 = sub_29ADA8E68(&v1109);
          v160 = pxrInternal__aapl__pxrReserved__::operator<<(v158, (*v159 + 40));
          v161 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v161)
          {
            v161 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v162 = pxrInternal__aapl__pxrReserved__::operator<<(v160, v161);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v163 = &v1106;
          }

          else
          {
            v163 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v164 = v1106.__r_.__value_.__l.__size_;
          }

          v165 = sub_29A00911C(v162, v163, v164);
          v166 = sub_29A00911C(v165, "))", 2);
          if (v1108 >= 0)
          {
            v167 = v1107;
          }

          else
          {
            v167 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v168 = HIBYTE(v1108);
          }

          else
          {
            v168 = v1107[1];
          }

          v169 = sub_29A00911C(v166, v167, v168);
          v170 = sub_29A00911C(v169, ";\n", 2);
          v171 = sub_29A00911C(v170, "  }\n}\n", 6);
          v172 = sub_29ADA8E68(&v1109);
          v173 = sub_29ADBE564((*v172 + 48));
          v174 = pxrInternal__aapl__pxrReserved__::operator<<(v171, v173);
          v175 = sub_29A00911C(v174, " HdGet_", 7);
          v176 = sub_29ADA8E68(&v1109);
          v177 = pxrInternal__aapl__pxrReserved__::operator<<(v175, (*v176 + 40));
          v178 = sub_29A00911C(v177, "(vec4 patchCoord) {\n", 20);
          v179 = sub_29A00911C(v178, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v180 = sub_29A00911C(v179, "  if (BOOL(shaderData[shaderCoord].", 35);
          v181 = sub_29ADA8E68(&v1109);
          v182 = pxrInternal__aapl__pxrReserved__::operator<<(v180, (*v181 + 40));
          v183 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v183)
          {
            v183 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v184 = pxrInternal__aapl__pxrReserved__::operator<<(v182, v183 + 4);
          v185 = sub_29A00911C(v184, ")) {\n", 5);
          v186 = sub_29A00911C(v185, "    return ", 11);
          v187 = sub_29ADA8E68(&v1109);
          v188 = sub_29ADBF8C8((*v187 + 48), 0);
          v189 = pxrInternal__aapl__pxrReserved__::operator<<(v186, v188);
          v190 = sub_29A00911C(v189, "(PtexTextureLookup(", 19);
          v191 = sub_29A00911C(v190, "sampler2DArray(shaderData[shaderCoord].", 39);
          v192 = sub_29ADA8E68(&v1109);
          v193 = pxrInternal__aapl__pxrReserved__::operator<<(v191, (*v192 + 40));
          v194 = sub_29A00911C(v193, "),", 2);
          v195 = sub_29A00911C(v194, "usampler1DArray(shaderData[shaderCoord].", 40);
          v196 = sub_29ADA8E68(&v1109);
          v197 = pxrInternal__aapl__pxrReserved__::operator<<(v195, (*v196 + 40));
          v198 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v198)
          {
            v198 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v199 = pxrInternal__aapl__pxrReserved__::operator<<(v197, v198 + 2);
          v200 = sub_29A00911C(v199, "), ", 3);
          v201 = sub_29A00911C(v200, "patchCoord)", 11);
          if (v1108 >= 0)
          {
            v202 = v1107;
          }

          else
          {
            v202 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v203 = HIBYTE(v1108);
          }

          else
          {
            v203 = v1107[1];
          }

          v204 = sub_29A00911C(v201, v202, v203);
          v205 = sub_29A00911C(v204, ");\n", 3);
          v206 = sub_29A00911C(v205, "  } else {\n", 11);
          v207 = sub_29A00911C(v206, "    return (", 12);
          v208 = sub_29ADA8E68(&v1109);
          v209 = sub_29ADBF8C8((*v208 + 48), 0);
          v210 = pxrInternal__aapl__pxrReserved__::operator<<(v207, v209);
          v211 = sub_29A00911C(v210, "(shaderData[shaderCoord].", 25);
          v212 = sub_29ADA8E68(&v1109);
          v213 = pxrInternal__aapl__pxrReserved__::operator<<(v211, (*v212 + 40));
          v214 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v214)
          {
            v214 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v215 = pxrInternal__aapl__pxrReserved__::operator<<(v213, v214);
          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v216 = &v1106;
          }

          else
          {
            v216 = v1106.__r_.__value_.__r.__words[0];
          }

          if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v217 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v217 = v1106.__r_.__value_.__l.__size_;
          }

          v218 = sub_29A00911C(v215, v216, v217);
          v219 = sub_29A00911C(v218, "))", 2);
          if (v1108 >= 0)
          {
            v220 = v1107;
          }

          else
          {
            v220 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v221 = HIBYTE(v1108);
          }

          else
          {
            v221 = v1107[1];
          }

          v222 = sub_29A00911C(v219, v220, v221);
          v223 = sub_29A00911C(v222, ";\n", 2);
          v224 = "  }\n}\n";
          v225 = 6;
        }

        else
        {
          v850 = sub_29ADA8E68(&v1109);
          v851 = sub_29ADBE564((*v850 + 48));
          v852 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v851);
          v853 = sub_29A00911C(v852, " HdGet_", 7);
          v854 = sub_29ADA8E68(&v1109);
          v855 = pxrInternal__aapl__pxrReserved__::operator<<(v853, (*v854 + 40));
          v856 = sub_29A00911C(v855, "(int localIndex) {\n", 19);
          v857 = sub_29A00911C(v856, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v858 = sub_29A00911C(v857, "  return ", 9);
          v859 = sub_29ADA8E68(&v1109);
          v860 = sub_29ADBF8C8((*v859 + 48), 0);
          v861 = pxrInternal__aapl__pxrReserved__::operator<<(v858, v860);
          v862 = sub_29A00911C(v861, "(PtexTextureLookup(", 19);
          v863 = sub_29A00911C(v862, "sampler2DArray(shaderData[shaderCoord].", 39);
          v864 = sub_29ADA8E68(&v1109);
          v865 = pxrInternal__aapl__pxrReserved__::operator<<(v863, (*v864 + 40));
          v866 = sub_29A00911C(v865, "),", 2);
          v867 = sub_29A00911C(v866, "usampler1DArray(shaderData[shaderCoord].", 40);
          v868 = sub_29ADA8E68(&v1109);
          v869 = pxrInternal__aapl__pxrReserved__::operator<<(v867, (*v868 + 40));
          v870 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v870)
          {
            v870 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v871 = pxrInternal__aapl__pxrReserved__::operator<<(v869, v870 + 2);
          v872 = sub_29A00911C(v871, "), ", 3);
          v873 = sub_29A00911C(v872, "GetPatchCoord(localIndex))", 26);
          if (v1108 >= 0)
          {
            v874 = v1107;
          }

          else
          {
            v874 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v875 = HIBYTE(v1108);
          }

          else
          {
            v875 = v1107[1];
          }

          v876 = sub_29A00911C(v873, v874, v875);
          v877 = sub_29A00911C(v876, ");\n", 3);
          v878 = sub_29A00911C(v877, "}\n", 2);
          v879 = sub_29ADA8E68(&v1109);
          v880 = sub_29ADBE564((*v879 + 48));
          v881 = pxrInternal__aapl__pxrReserved__::operator<<(v878, v880);
          v882 = sub_29A00911C(v881, " HdGet_", 7);
          v883 = sub_29ADA8E68(&v1109);
          v884 = pxrInternal__aapl__pxrReserved__::operator<<(v882, (*v883 + 40));
          v885 = sub_29A00911C(v884, "(vec4 patchCoord) {\n", 20);
          v886 = sub_29A00911C(v885, "  int shaderCoord = GetDrawingCoord().shaderCoord; \n", 52);
          v887 = sub_29A00911C(v886, "  return ", 9);
          v888 = sub_29ADA8E68(&v1109);
          v889 = sub_29ADBF8C8((*v888 + 48), 0);
          v890 = pxrInternal__aapl__pxrReserved__::operator<<(v887, v889);
          v891 = sub_29A00911C(v890, "(PtexTextureLookup(", 19);
          v892 = sub_29A00911C(v891, "sampler2DArray(shaderData[shaderCoord].", 39);
          v893 = sub_29ADA8E68(&v1109);
          v894 = pxrInternal__aapl__pxrReserved__::operator<<(v892, (*v893 + 40));
          v895 = sub_29A00911C(v894, "),", 2);
          v896 = sub_29A00911C(v895, "usampler1DArray(shaderData[shaderCoord].", 40);
          v897 = sub_29ADA8E68(&v1109);
          v898 = pxrInternal__aapl__pxrReserved__::operator<<(v896, (*v897 + 40));
          v899 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          if (!v899)
          {
            v899 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
          }

          v900 = pxrInternal__aapl__pxrReserved__::operator<<(v898, v899 + 2);
          v901 = sub_29A00911C(v900, "), ", 3);
          v902 = sub_29A00911C(v901, "patchCoord)", 11);
          if (v1108 >= 0)
          {
            v903 = v1107;
          }

          else
          {
            v903 = v1107[0];
          }

          if (v1108 >= 0)
          {
            v904 = HIBYTE(v1108);
          }

          else
          {
            v904 = v1107[1];
          }

          v905 = sub_29A00911C(v902, v903, v904);
          v223 = sub_29A00911C(v905, ");\n", 3);
          v224 = "}\n";
          v225 = 2;
        }

        sub_29A00911C(v223, v224, v225);
        v906 = sub_29ADA8E68(&v1109);
        v907 = sub_29ADBE564((*v906 + 48));
        v908 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v907);
        v909 = sub_29A00911C(v908, " HdGet_", 7);
        v910 = sub_29ADA8E68(&v1109);
        v911 = pxrInternal__aapl__pxrReserved__::operator<<(v909, (*v910 + 40));
        v912 = sub_29A00911C(v911, "()", 2);
        v913 = sub_29A00911C(v912, "{ return HdGet_", 15);
        v914 = sub_29ADA8E68(&v1109);
        v915 = pxrInternal__aapl__pxrReserved__::operator<<(v913, (*v914 + 40));
        sub_29A00911C(v915, "(0); }\n", 7);
        v916 = *sub_29ADA8E68(&v1109);
        v917 = sub_29ADA8E68(&v1109);
        sub_29ADBFABC(v1113, (v916 + 40), (*v917 + 48));
        if (*(*sub_29ADA8E68(&v1109) + 104) != 1)
        {
          goto LABEL_393;
        }

LABEL_391:
        v1036 = sub_29A00911C(&v1114, "#define ", 8);
        v1037 = sub_29ADA8E68(&v1109);
        v112 = pxrInternal__aapl__pxrReserved__::operator<<(v1036, (*v1037 + 40));
        v113 = "_IS_PREMULTIPLIED 1\n";
        v114 = 20;
        break;
      case 0x1C:
        v56 = *sub_29ADA8E68(&v1109);
        if ((**(*sub_29ADA8E68(&v1109) + 80) ^ *(v56 + 40)) <= 7)
        {
          v57 = sub_29A00911C(&v1114, "#if !defined(HD_HAS_", 20);
          v58 = sub_29ADA8E68(&v1109);
          v59 = pxrInternal__aapl__pxrReserved__::operator<<(v57, (*v58 + 40));
          sub_29A00911C(v59, ")\n", 2);
        }

        v60 = sub_29ADA8E68(&v1109);
        v61 = sub_29ADBE564((*v60 + 48));
        v62 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v61);
        v63 = sub_29A00911C(v62, " HdGet_", 7);
        v64 = sub_29ADA8E68(&v1109);
        v65 = pxrInternal__aapl__pxrReserved__::operator<<(v63, (*v64 + 40));
        v66 = sub_29A00911C(v65, "() {\n", 5);
        v67 = sub_29A00911C(v66, "#if defined(HD_HAS_", 19);
        v68 = sub_29ADA8E68(&v1109);
        v69 = pxrInternal__aapl__pxrReserved__::operator<<(v67, *(*v68 + 80));
        v70 = sub_29A00911C(v69, ")\n", 2);
        v71 = sub_29A00911C(v70, "  return HdGet_", 15);
        v72 = sub_29ADA8E68(&v1109);
        v73 = pxrInternal__aapl__pxrReserved__::operator<<(v71, *(*v72 + 80));
        v74 = sub_29A00911C(v73, "();\n", 4);
        v75 = sub_29A00911C(v74, "#else\n", 6);
        v76 = sub_29A00911C(v75, "  int shaderCoord = GetDrawingCoord().shaderCoord;\n", 51);
        v77 = sub_29A00911C(v76, "  return ", 9);
        v78 = sub_29ADA8E68(&v1109);
        v79 = sub_29ADBF8C8((*v78 + 48), 0);
        v80 = pxrInternal__aapl__pxrReserved__::operator<<(v77, v79);
        v81 = sub_29A00911C(v80, "(shaderData[shaderCoord].", 25);
        v82 = sub_29ADA8E68(&v1109);
        v83 = pxrInternal__aapl__pxrReserved__::operator<<(v81, (*v82 + 40));
        v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        if (!v84)
        {
          v84 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        }

        v85 = pxrInternal__aapl__pxrReserved__::operator<<(v83, v84);
        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v1106;
        }

        else
        {
          v86 = v1106.__r_.__value_.__r.__words[0];
        }

        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v87 = v1106.__r_.__value_.__l.__size_;
        }

        v88 = sub_29A00911C(v85, v86, v87);
        v89 = sub_29A00911C(v88, ");\n", 3);
        v90 = sub_29A00911C(v89, "#endif\n", 7);
        v91 = sub_29A00911C(v90, "\n}\n", 3);
        v92 = sub_29A00911C(v91, "#define HD_HAS_", 15);
        v93 = sub_29ADA8E68(&v1109);
        v94 = pxrInternal__aapl__pxrReserved__::operator<<(v92, (*v93 + 40));
        sub_29A00911C(v94, " 1\n", 3);
        v95 = sub_29ADA8E68(&v1109);
        if (sub_29ADC1834((*v95 + 48)) <= 4)
        {
          v96 = sub_29ADA8E68(&v1109);
          v97 = sub_29ADBA554((*v96 + 48));
          v98 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v97);
          v99 = sub_29A00911C(v98, " HdGetScalar_", 13);
          v100 = sub_29ADA8E68(&v1109);
          v101 = pxrInternal__aapl__pxrReserved__::operator<<(v99, (*v100 + 40));
          v102 = sub_29A00911C(v101, "()", 2);
          v103 = sub_29A00911C(v102, " { return HdGet_", 16);
          v104 = sub_29ADA8E68(&v1109);
          v105 = pxrInternal__aapl__pxrReserved__::operator<<(v103, (*v104 + 40));
          v106 = sub_29A00911C(v105, "()", 2);
          v107 = sub_29ADA8E68(&v1109);
          sub_29ADC19F0((*v107 + 48), &__p);
          v108 = (v1105 & 0x80u) == 0 ? &__p : __p;
          v109 = (v1105 & 0x80u) == 0 ? v1105 : v1104;
          v110 = sub_29A00911C(v106, v108, v109);
          sub_29A00911C(v110, "; }\n", 4);
          if (v1105 < 0)
          {
            operator delete(__p);
          }
        }

        v111 = *sub_29ADA8E68(&v1109);
        if ((**(*sub_29ADA8E68(&v1109) + 80) ^ *(v111 + 40)) >= 8)
        {
          goto LABEL_393;
        }

        v112 = &v1114;
        v113 = "#endif\n";
        v114 = 7;
        break;
      case 0x1E:
        v559 = sub_29A00911C(&v1114, "FORWARD_DECL(float HdGet_", 25);
        v560 = sub_29ADA8E68(&v1109);
        v561 = pxrInternal__aapl__pxrReserved__::operator<<(v559, (*v560 + 40));
        v562 = sub_29A00911C(v561, "_", 1);
        v563 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v563)
        {
          v563 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v564 = pxrInternal__aapl__pxrReserved__::operator<<(v562, v563 + 7);
        v565 = sub_29A00911C(v564, "());\n", 5);
        v566 = sub_29A00911C(v565, "FORWARD_DECL(vec2 HdGet_", 24);
        v567 = sub_29ADA8E68(&v1109);
        v568 = pxrInternal__aapl__pxrReserved__::operator<<(v566, (*v567 + 40));
        v569 = sub_29A00911C(v568, "_", 1);
        v570 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v570)
        {
          v570 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v571 = pxrInternal__aapl__pxrReserved__::operator<<(v569, v570 + 5);
        v572 = sub_29A00911C(v571, "());\n", 5);
        v573 = sub_29A00911C(v572, "FORWARD_DECL(vec2 HdGet_", 24);
        v574 = sub_29ADA8E68(&v1109);
        v575 = pxrInternal__aapl__pxrReserved__::operator<<(v573, (*v574 + 40));
        v576 = sub_29A00911C(v575, "_", 1);
        v577 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v577)
        {
          v577 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v578 = pxrInternal__aapl__pxrReserved__::operator<<(v576, v577 + 8);
        sub_29A00911C(v578, "());\n", 5);
        v579 = sub_29ADA8E68(&v1109);
        v580 = sub_29ADBE564((*v579 + 48));
        v581 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v580);
        v582 = sub_29A00911C(v581, " HdGet_", 7);
        v583 = sub_29ADA8E68(&v1109);
        v584 = pxrInternal__aapl__pxrReserved__::operator<<(v582, (*v583 + 40));
        v585 = sub_29A00911C(v584, "(int localIndex) {\n", 19);
        v586 = sub_29A00911C(v585, "  float angleRad = HdGet_", 25);
        v587 = sub_29ADA8E68(&v1109);
        v588 = pxrInternal__aapl__pxrReserved__::operator<<(v586, (*v587 + 40));
        v589 = sub_29A00911C(v588, "_", 1);
        v590 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v590)
        {
          v590 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v591 = pxrInternal__aapl__pxrReserved__::operator<<(v589, v590 + 7);
        v592 = sub_29A00911C(v591, "()", 2);
        v593 = sub_29A00911C(v592, " * 3.1415926f / 180.f;\n", 23);
        v594 = sub_29A00911C(v593, "  mat2 rotMat = mat2(cos(angleRad), sin(angleRad), ", 51);
        sub_29A00911C(v594, "-sin(angleRad), cos(angleRad)); \n", 33);
        v595 = sub_29ADA8E68(&v1109);
        if (*(*v595 + 80) != *(*v595 + 88))
        {
          v596 = sub_29A00911C(&v1114, "#if defined(HD_HAS_", 19);
          v597 = sub_29ADA8E68(&v1109);
          v598 = pxrInternal__aapl__pxrReserved__::operator<<(v596, *(*v597 + 80));
          v599 = sub_29A00911C(v598, ")\n", 2);
          v600 = sub_29A00911C(v599, "  return vec2(HdGet_", 20);
          v601 = sub_29ADA8E68(&v1109);
          v602 = pxrInternal__aapl__pxrReserved__::operator<<(v600, (*v601 + 40));
          v603 = sub_29A00911C(v602, "_", 1);
          v604 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v604)
          {
            v604 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v605 = pxrInternal__aapl__pxrReserved__::operator<<(v603, v604 + 8);
          v606 = sub_29A00911C(v605, "() + rotMat * (HdGet_", 21);
          v607 = sub_29ADA8E68(&v1109);
          v608 = pxrInternal__aapl__pxrReserved__::operator<<(v606, (*v607 + 40));
          v609 = sub_29A00911C(v608, "_", 1);
          v610 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          if (!v610)
          {
            v610 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
          }

          v611 = pxrInternal__aapl__pxrReserved__::operator<<(v609, v610 + 5);
          v612 = sub_29A00911C(v611, "() * ", 5);
          v613 = sub_29A00911C(v612, "HdGet_", 6);
          v614 = sub_29ADA8E68(&v1109);
          v615 = pxrInternal__aapl__pxrReserved__::operator<<(v613, *(*v614 + 80));
          v616 = sub_29A00911C(v615, "(localIndex)));\n", 16);
          sub_29A00911C(v616, "#else\n", 6);
        }

        v617 = sub_29A00911C(&v1114, "  int shaderCoord = GetDrawingCoord().shaderCoord;\n", 51);
        v618 = sub_29A00911C(v617, "  return vec2(HdGet_", 20);
        v619 = sub_29ADA8E68(&v1109);
        v620 = pxrInternal__aapl__pxrReserved__::operator<<(v618, (*v619 + 40));
        v621 = sub_29A00911C(v620, "_", 1);
        v622 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v622)
        {
          v622 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v623 = pxrInternal__aapl__pxrReserved__::operator<<(v621, v622 + 8);
        v624 = sub_29A00911C(v623, "() + rotMat * (HdGet_", 21);
        v625 = sub_29ADA8E68(&v1109);
        v626 = pxrInternal__aapl__pxrReserved__::operator<<(v624, (*v625 + 40));
        v627 = sub_29A00911C(v626, "_", 1);
        v628 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        if (!v628)
        {
          v628 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
        }

        v629 = pxrInternal__aapl__pxrReserved__::operator<<(v627, v628 + 5);
        v630 = sub_29A00911C(v629, "() * ", 5);
        v631 = sub_29A00911C(v630, "shaderData[shaderCoord].", 24);
        v632 = sub_29ADA8E68(&v1109);
        v633 = pxrInternal__aapl__pxrReserved__::operator<<(v631, (*v632 + 40));
        v634 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        if (!v634)
        {
          v634 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
        }

        v635 = pxrInternal__aapl__pxrReserved__::operator<<(v633, v634);
        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v636 = &v1106;
        }

        else
        {
          v636 = v1106.__r_.__value_.__r.__words[0];
        }

        if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v637 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v637 = v1106.__r_.__value_.__l.__size_;
        }

        v638 = sub_29A00911C(v635, v636, v637);
        sub_29A00911C(v638, "));\n", 4);
        v639 = sub_29ADA8E68(&v1109);
        if (*(*v639 + 80) != *(*v639 + 88))
        {
          sub_29A00911C(&v1114, "#endif\n", 7);
        }

        sub_29A00911C(&v1114, "}\n", 2);
        v640 = sub_29ADA8E68(&v1109);
        v641 = sub_29ADBE564((*v640 + 48));
        v642 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v641);
        v643 = sub_29A00911C(v642, " HdGet_", 7);
        v644 = sub_29ADA8E68(&v1109);
        v645 = pxrInternal__aapl__pxrReserved__::operator<<(v643, (*v644 + 40));
        v646 = sub_29A00911C(v645, "() {\n", 5);
        v647 = sub_29A00911C(v646, "  return HdGet_", 15);
        v648 = sub_29ADA8E68(&v1109);
        v649 = pxrInternal__aapl__pxrReserved__::operator<<(v647, (*v648 + 40));
        v112 = sub_29A00911C(v649, "(0);\n", 5);
        v113 = "}\n";
        v114 = 2;
        break;
      default:
        goto LABEL_393;
    }

    sub_29A00911C(v112, v113, v114);
LABEL_393:
    if (SHIBYTE(v1106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v1106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v1108) < 0)
    {
      operator delete(v1107[0]);
    }

    sub_29ADA8EA0(&v1109);
  }

  v1038 = sub_29A00911C(&v1114, "void ProcessSamplingTransforms(", 31);
  sub_29A00911C(v1038, "MAT4 instanceModelViewInverse) {\n", 33);
  v1039 = *this + 272;
  __p = *(*this + 264);
  v1104 = v1039;
  while (__p != v1104)
  {
    v1040 = *(*sub_29ADA8E68(&__p) + 32);
    if (v1040 == 23 || v1040 == 16)
    {
      v1042 = sub_29ADA8E68(&__p);
      if ((*(*v1042 + 40) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1042);
      }

      std::operator+<char>();
      v1043 = std::string::append(&v1106, "SamplingTransform");
      v1044 = *&v1043->__r_.__value_.__l.__data_;
      v1108 = v1043->__r_.__value_.__r.__words[2];
      *v1107 = v1044;
      v1043->__r_.__value_.__l.__size_ = 0;
      v1043->__r_.__value_.__r.__words[2] = 0;
      v1043->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v1106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1106.__r_.__value_.__l.__data_);
      }

      v1045 = sub_29A00911C(&v1114, "    Process_", 12);
      if (v1108 >= 0)
      {
        v1046 = v1107;
      }

      else
      {
        v1046 = v1107[0];
      }

      if (v1108 >= 0)
      {
        v1047 = HIBYTE(v1108);
      }

      else
      {
        v1047 = v1107[1];
      }

      v1048 = sub_29A00911C(v1045, v1046, v1047);
      sub_29A00911C(v1048, "(instanceModelViewInverse);\n", 28);
      if (SHIBYTE(v1108) < 0)
      {
        operator delete(v1107[0]);
      }
    }

    sub_29ADA8EA0(&__p);
  }

  sub_29A00911C(&v1114, "}\n", 2);
  v1049 = *this + 272;
  __p = *(*this + 264);
  v1104 = v1049;
  while (__p != v1104)
  {
    if (*(*sub_29ADA8E68(&__p) + 32) == 29)
    {
      v1050 = *sub_29ADA8E68(&__p);
      memset(&v1106, 0, sizeof(v1106));
      sub_29ADBF4F4((v1050 + 48), &v1106, v1107);
      if (SHIBYTE(v1106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1106.__r_.__value_.__l.__data_);
      }

      v1051 = *sub_29ADA8E68(&__p);
      v1052 = sub_29ADA8E68(&__p);
      pxrInternal__aapl__pxrReserved__::HdSt_CodeGen::_GetFallbackScalarSwizzleString(this, (v1051 + 48), (*v1052 + 40), &v1106);
      v1053 = sub_29ADA8E68(&__p);
      if (*(*v1053 + 80) == *(*v1053 + 88))
      {
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v1109, "FIELDNAME_WAS_NOT_SPECIFIED");
      }

      else
      {
        v1054 = **(*sub_29ADA8E68(&__p) + 80);
        v1109 = v1054;
        if ((v1054 & 7) != 0 && (atomic_fetch_add_explicit((v1054 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v1109 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      v1055 = sub_29ADA8E68(&__p);
      v1056 = sub_29ADBE564((*v1055 + 48));
      v1057 = pxrInternal__aapl__pxrReserved__::operator<<(&v1114, v1056);
      v1058 = sub_29A00911C(v1057, " HdGet_", 7);
      v1059 = sub_29ADA8E68(&__p);
      v1060 = pxrInternal__aapl__pxrReserved__::operator<<(v1058, (*v1059 + 40));
      v1061 = sub_29A00911C(v1060, "(vec3 coord) {\n", 15);
      v1062 = sub_29A00911C(v1061, "#if defined(HD_HAS_", 19);
      v1063 = pxrInternal__aapl__pxrReserved__::operator<<(v1062, &v1109);
      v1064 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      if (!v1064)
      {
        v1064 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      }

      v1065 = pxrInternal__aapl__pxrReserved__::operator<<(v1063, v1064 + 3);
      v1066 = sub_29A00911C(v1065, ")\n", 2);
      v1067 = sub_29A00911C(v1066, "  return HdGet_", 15);
      v1068 = pxrInternal__aapl__pxrReserved__::operator<<(v1067, &v1109);
      v1069 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      if (!v1069)
      {
        v1069 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      }

      v1070 = pxrInternal__aapl__pxrReserved__::operator<<(v1068, v1069 + 3);
      v1071 = sub_29A00911C(v1070, "(coord)", 7);
      if (v1108 >= 0)
      {
        v1072 = v1107;
      }

      else
      {
        v1072 = v1107[0];
      }

      if (v1108 >= 0)
      {
        v1073 = HIBYTE(v1108);
      }

      else
      {
        v1073 = v1107[1];
      }

      v1074 = sub_29A00911C(v1071, v1072, v1073);
      v1075 = sub_29A00911C(v1074, ";\n", 2);
      v1076 = sub_29A00911C(v1075, "#else\n", 6);
      v1077 = sub_29A00911C(v1076, "  int shaderCoord = GetDrawingCoord().shaderCoord;\n", 51);
      v1078 = sub_29A00911C(v1077, "  return ", 9);
      v1079 = sub_29ADA8E68(&__p);
      v1080 = sub_29ADBF8C8((*v1079 + 48), 0);
      v1081 = pxrInternal__aapl__pxrReserved__::operator<<(v1078, v1080);
      v1082 = sub_29A00911C(v1081, "(shaderData[shaderCoord].", 25);
      v1083 = sub_29ADA8E68(&__p);
      v1084 = pxrInternal__aapl__pxrReserved__::operator<<(v1082, (*v1083 + 40));
      v1085 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      if (!v1085)
      {
        v1085 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
      }

      v1086 = pxrInternal__aapl__pxrReserved__::operator<<(v1084, v1085);
      if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v1087 = &v1106;
      }

      else
      {
        v1087 = v1106.__r_.__value_.__r.__words[0];
      }

      if ((v1106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v1088 = HIBYTE(v1106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v1088 = v1106.__r_.__value_.__l.__size_;
      }

      v1089 = sub_29A00911C(v1086, v1087, v1088);
      v1090 = sub_29A00911C(v1089, ");\n", 3);
      v1091 = sub_29A00911C(v1090, "#endif\n", 7);
      sub_29A00911C(v1091, "\n}\n", 3);
      if ((v1109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v1109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v1106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1106.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v1108) < 0)
      {
        operator delete(v1107[0]);
      }
    }

    sub_29ADA8EA0(&__p);
  }

  std::stringbuf::str();
  if (v1108 >= 0)
  {
    v1092 = v1107;
  }

  else
  {
    v1092 = v1107[0];
  }

  if (v1108 >= 0)
  {
    v1093 = HIBYTE(v1108);
  }

  else
  {
    v1093 = v1107[1];
  }

  sub_29A00911C(this + 289, v1092, v1093);
  if (SHIBYTE(v1108) < 0)
  {
    operator delete(v1107[0]);
  }

  std::stringbuf::str();
  if (v1108 >= 0)
  {
    v1094 = v1107;
  }

  else
  {
    v1094 = v1107[0];
  }

  if (v1108 >= 0)
  {
    v1095 = HIBYTE(v1108);
  }

  else
  {
    v1095 = v1107[1];
  }

  sub_29A00911C(this + 324, v1094, v1095);
  if (SHIBYTE(v1108) < 0)
  {
    operator delete(v1107[0]);
  }

  std::stringbuf::str();
  if (v1108 >= 0)
  {
    v1096 = v1107;
  }

  else
  {
    v1096 = v1107[0];
  }

  if (v1108 >= 0)
  {
    v1097 = HIBYTE(v1108);
  }

  else
  {
    v1097 = v1107[1];
  }

  sub_29A00911C(this + 219, v1096, v1097);
  if (SHIBYTE(v1108) < 0)
  {
    operator delete(v1107[0]);
  }

  std::stringbuf::str();
  if (v1108 >= 0)
  {
    v1098 = v1107;
  }

  else
  {
    v1098 = v1107[0];
  }

  if (v1108 >= 0)
  {
    v1099 = HIBYTE(v1108);
  }

  else
  {
    v1099 = v1107[1];
  }

  sub_29A00911C(this + 254, v1098, v1099);
  if (SHIBYTE(v1108) < 0)
  {
    operator delete(v1107[0]);
  }

  if ((v1111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v1112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v1113[0] = *MEMORY[0x29EDC9528];
  v1100 = *(MEMORY[0x29EDC9528] + 72);
  *(v1113 + *(v1113[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v1114 = v1100;
  v1115 = MEMORY[0x29EDC9570] + 16;
  if (v1117 < 0)
  {
    operator delete(v1116[7].__locale_);
  }

  v1115 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v1116);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v1118);
}