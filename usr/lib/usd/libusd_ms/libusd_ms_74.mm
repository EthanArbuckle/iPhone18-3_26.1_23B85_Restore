void **sub_29A437DF8(void **a1)
{
  sub_29A437E2C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A437E2C(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29A4377A8(v4, v1 - 16);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29A437E74(uint64_t a1, pxrInternal__aapl__pxrReserved__ *a2, int a3)
{
  if (a3)
  {

    sub_29A439E88(a2);
  }

  else
  {
    v5 = *a2;
    for (i = *(a2 + 1); i != v5; sub_29A4377A8(a2, i))
    {
      i -= 16;
    }

    *(a2 + 1) = v5;
  }
}

void sub_29A437EF8(atomic_ullong **a1)
{
  v1 = *a1;
  pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext::ConcurrentPopulationContext(v10, *(**a1 + 288));
  v2 = v1[70];
  v8 = v1[69];
  v9 = v2;
  while (v8 != v9)
  {
    *&v7 = sub_29A4380E8;
    *(&v7 + 1) = 0;
    v6 = v1;
    v3 = *sub_29A438874(&v8);
    v4 = *sub_29A438874(&v8);
    v5 = 1;
    sub_29A437FE8((v1 + 6), &v7, &v6, v3, (v4 + 8), &v5);
    sub_29A4388AC(&v8);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait((v1 + 6));
  sub_29A43892C(v1);
  pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext::~ConcurrentPopulationContext(v10);
}

void sub_29A437FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::ConcurrentPopulationContext::~ConcurrentPopulationContext(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A437FE8(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, _DWORD *a5, char *a6)
{
  v15 = *a2;
  v9 = *a4;
  v16 = *a3;
  v17 = v9;
  sub_29A1E21F4(&v18, a5);
  sub_29A1E2240(&v19, a5 + 1);
  v20 = *a6;
  v10 = *(a1 + 256);
  v21[0] = 0;
  v21[1] = v10;
  v11 = tbb::internal::allocate_additional_child_of_proxy::allocate(v21, 0x40uLL);
  v12 = *(sub_29A4389D4(v11, &v15, a1 + 272) - 40);
  (**v12)(v12, v11, v11 - 8, v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  return sub_29A1DE3A4(&v18);
}

void sub_29A4380E8(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4)
{
  v62 = *MEMORY[0x29EDCA608];
  sub_29A43C834(&v51, (a1 + 536), (a1 + 544));
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::ArResolverScopedCache(v61, *(a1 + 528));
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3))
  {
    goto LABEL_55;
  }

  if (!a4)
  {
    v32 = 0;
LABEL_8:
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(&v39);
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v47 = 0;
    pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::PcpExpressionVariablesDependencyData(&v49);
    memset(v50, 0, sizeof(v50));
    v33 = 0;
    v10 = *(a1 + 424);
    v54 = *(a1 + 408);
    v55 = v10;
    v11 = sub_29A436CA0(v56, a1 + 440);
    v57 = *(a1 + 472);
    if (*(a1 + 503) < 0)
    {
      v11 = sub_29A008D14(&v58, *(a1 + 480), *(a1 + 488));
    }

    else
    {
      v58 = *(a1 + 480);
      v59 = *(a1 + 496);
    }

    v60 = *(a1 + 504);
    v57 = a2;
    if (!a2 && *a3 != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v11))
    {
      v36 = "pcp/cache.cpp";
      v37[0] = "_ComputeIndex";
      v37[1] = 1488;
      v37[2] = "void pxrInternal__aapl__pxrReserved__::PcpCache::_ParallelIndexer::_ComputeIndex(const PcpPrimIndex *, SdfPath, BOOL)";
      v38 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v36, "parentIndex || path == SdfPath::AbsoluteRootPath()", 0);
    }

    pxrInternal__aapl__pxrReserved__::PcpComputePrimIndex(a3, a1 + 8, &v54, &v39, *(a1 + 24));
    if (v44 != v45)
    {
      sub_29A0EB5BC(&v36, a1 + 520);
      sub_29A4272D4(*(a1 + 512), *(*(a1 + 512) + 8), v44, v45, (v45 - v44) >> 4);
      v12 = v36;
      if (v36)
      {
        __dmb(0xBu);
        *v12 = 0;
      }
    }

    v13 = v47;
    if ((v47 - 3) <= 1)
    {
      LOBYTE(v37[0]) = 1;
      v36 = (a1 + 40);
      tbb::spin_rw_mutex_v3::internal_acquire_writer((a1 + 40));
      v14 = *a1;
      if (v13 == 3)
      {
        sub_29A43A86C(v14 + 136, a3, a3);
      }

      else
      {
        sub_29A43AB80((v14 + 136), a3);
      }

      sub_29A0F845C(&v36);
    }

    sub_29A438C74(a3, &v39, &v36);
    v15 = v36;
    v36 = 0;
    v16 = v33;
    v33 = v15;
    if (v16)
    {
      sub_29A4372CC(&v33, v16);
      v17 = v36;
      v36 = 0;
      if (v17)
      {
        sub_29A4372CC(&v36, v17);
      }
    }

    if (v32)
    {
      sub_29A439700(&v36, &v33, &v39);
      v9 = sub_29A438D0C(a1, &v36, 1);
      sub_29A43767C(&v36);
    }

    else
    {
      v18 = v33;
      sub_29A439700(&v36, &v33, &v39);
      v19 = *(a1 + 584);
      add = atomic_fetch_add((v19 + 128), 1uLL);
      sub_29A439860((v19 + 40 * ((3 * add) & 7) + 384), &v36, add, (a1 + 576), sub_29A43985C);
      v9 = (v18 + 1);
      sub_29A43767C(&v36);
      if ((*(a1 + 600) & 1) == 0)
      {
        v21 = *(a1 + 600) & 1;
        v22 = v21;
        atomic_compare_exchange_strong((a1 + 600), &v22, 1u);
        if (v22 == v21)
        {
          sub_29A43892C(a1);
          atomic_store(0, (a1 + 600));
        }
      }
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    sub_29A346EB0(v56);
    v23 = v33;
    v33 = 0;
    if (v23)
    {
      sub_29A4372CC(&v33, v23);
    }

    v36 = v50;
    sub_29A41CF9C(&v36);
    pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::~PcpExpressionVariablesDependencyData(&v49);
    v24 = v48;
    v48 = 0;
    if (v24)
    {
      sub_29A41AE40(&v48, v24);
    }

    v36 = &v44;
    sub_29A0176E4(&v36);
    sub_29A151CB4(&v43, 0);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    sub_29A436E3C(&v39);
    goto LABEL_39;
  }

  LOBYTE(v37[0]) = 0;
  v36 = (a1 + 32);
  tbb::spin_rw_mutex_v3::internal_acquire_reader((a1 + 32));
  v8 = sub_29A42F6CC((*a1 + 208), a3);
  v32 = v8 != 0;
  if (!v8 || (v9 = (v8 + 1), !v8[1]))
  {
    sub_29A0F845C(&v36);
    goto LABEL_8;
  }

  sub_29A0F845C(&v36);
  LOBYTE(v32) = 1;
LABEL_39:
  v54 = 0uLL;
  *&v55 = 0;
  if ((*(a1 + 400))(*(a1 + 392), v9, &v54))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_29A439A68(&v36, 0, 0.0, 0.5);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComputePrimChildNames(v9, &v33, &v36);
    v25 = v33;
    for (i = v34; v25 != i; ++v25)
    {
      v27 = v54;
      if (v54 == *(&v54 + 1))
      {
        goto LABEL_46;
      }

      while ((*v27 ^ *v25) >= 8)
      {
        if (++v27 == *(&v54 + 1))
        {
          goto LABEL_52;
        }
      }

      if (v27 != *(&v54 + 1))
      {
LABEL_46:
        v39 = a1;
        __p = v9;
        sub_29A1E21F4(&v41, a3);
        sub_29A1E2240(&v41 + 1, a3 + 1);
        v28 = *v25;
        v42 = v28;
        if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v42 &= 0xFFFFFFFFFFFFFFF8;
        }

        LOBYTE(v43) = v32;
        v29 = *(a1 + 304);
        v53[0] = 0;
        v53[1] = v29;
        v30 = tbb::internal::allocate_additional_child_of_proxy::allocate(v53, 0x38uLL);
        v31 = sub_29A439C00(v30, &v39, a1 + 320);
        (***(v31 - 40))(*(v31 - 40), v30, v30 - 8);
        if ((v42 & 7) != 0)
        {
          atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v41 + 1);
        sub_29A1DE3A4(&v41);
      }

LABEL_52:
      ;
    }

    v39 = v37;
    sub_29A36B0E8(&v39);
    v36 = &v33;
    sub_29A124AB0(&v36);
  }

  v36 = &v54;
  sub_29A124AB0(&v36);
LABEL_55:
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(v61);
  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v52, v51);
  }
}

void sub_29A4386F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_29A431E94(v42 - 224);
  v44 = a10;
  a10 = 0;
  if (v44)
  {
    sub_29A4372CC(&a10, v44);
  }

  sub_29A436128(&a28);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache((v42 - 120));
  sub_29A0E9CEC(&a42);
  _Unwind_Resume(a1);
}

void *sub_29A438874(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A2628();
  }

  return result;
}

void *sub_29A4388AC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *, pxrInternal__aapl__pxrReserved__::SdfPath>>>::operator++() [T = std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *, pxrInternal__aapl__pxrReserved__::SdfPath>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29A43892C(atomic_ullong *a1)
{
  sub_29A437200(v3);
  while (sub_29A437344((a1 + 72), v3))
  {
    sub_29A438D0C(a1, v3, 0);
  }

  return sub_29A43767C(v3);
}

void sub_29A438988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43767C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A43899C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  return a1;
}

uint64_t sub_29A4389D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A204E5B0;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 24);
  sub_29A1DDD84((a1 + 40), (a2 + 32));
  sub_29A1DDDC0((a1 + 44), (a2 + 36));
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 56) = a3;
  return a1;
}

uint64_t sub_29A438A68(uint64_t a1)
{
  *a1 = &unk_2A204E5B0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  return a1;
}

void sub_29A438AB8(_DWORD *a1)
{
  *a1 = &unk_2A204E5B0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);

  operator delete(a1);
}

uint64_t sub_29A438B18(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A438BBC(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 56));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A438BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A438BBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = (*(a1 + 16) + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  v5 = *(a1 + 24);
  sub_29A1E21F4(&v7, (a1 + 32));
  sub_29A1E2240(&v8, (a1 + 36));
  v3(v4, v5, &v7, *(a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29A438C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A438C74@<X0>(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2@<X1>, void *a3@<X8>)
{
  sub_29A438FCC(&v5, a1, a2);
  sub_29A438F1C(&v5, a3);
  sub_29A151CB4(&v10, 0);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_29A436E3C(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29A438D0C(atomic_ullong *a1, uint64_t a2, int a3)
{
  v6 = a1 + 4;
  v24 = 1;
  v23 = a1 + 4;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(a1 + 4);
  v7 = sub_29A439030((*a1 + 208), a2);
  v8 = v7;
  if (v9)
  {
    v10 = (v7 + 8);
    v23 = 0;
  }

  else
  {
    if (!a3 || *(v7 + 1))
    {
      v21[0] = "pcp/cache.cpp";
      v21[1] = "_PublishOneOutput";
      v21[2] = 1590;
      v21[3] = "const PcpPrimIndex *pxrInternal__aapl__pxrReserved__::PcpCache::_ParallelIndexer::_PublishOneOutput(std::pair<_PrimIndexCache::NodeHandle, PcpPrimIndexOutputs> &&, BOOL)";
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(v7, __p);
      if (v20 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("PrimIndex <%s> already exists in cache", v15, v16, v17);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v21, "allowInvalid && !iresult.first->second.IsValid()", v18);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = (v8 + 8);
    sub_29A437630(v10, (*a2 + 8));
    v6 = v23;
    v23 = 0;
    if ((v24 & 1) == 0)
    {
      atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
      goto LABEL_11;
    }
  }

LABEL_6:
  v11 = *v6;
  v12 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v13 = v11;
    atomic_compare_exchange_strong(v6, &v13, v12);
    if (v13 == v11)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v11)
    {
      sched_yield();
      goto LABEL_6;
    }
  }

LABEL_11:
  pxrInternal__aapl__pxrReserved__::Pcp_Dependencies::Add(*(*a1 + 288), v10, (a2 + 96), (a2 + 80), (a2 + 88));
  sub_29A0F845C(&v23);
  return v10;
}

uint64_t sub_29A438ECC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

void *sub_29A438F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  result = sub_29A438F64(v4, a1);
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  *a2 = result;
  return result;
}

uint64_t sub_29A438F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 40) = v5;
  return a1;
}

_DWORD *sub_29A438FCC(_DWORD *a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex((a1 + 2), a3);
  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A439030(void *a1, unsigned int **a2)
{
  v3 = *a2;
  v8 = a2;
  result = sub_29A4391F4(a1, v3, &v8);
  v6 = result;
  LOBYTE(v7) = v5;
  if (v5)
  {
    sub_29A43908C(a1, &v6);
    return v6;
  }

  return result;
}

_DWORD *sub_29A43908C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v18);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18))
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex(v10);
    sub_29A1E21F4(&v13, &v18);
    sub_29A1E2240(&v14, &v19);
    v4 = *v10;
    v10[0] = 0;
    v10[1] = 0;
    *__p = v4;
    v16 = v11;
    v11 = 0uLL;
    v5 = v12;
    v12 = 0;
    v17 = v5;
    v6 = sub_29A439510(a1, &v13);
    sub_29A151CB4(&v17, 0);
    if (__p[1])
    {
      *&v16 = __p[1];
      operator delete(__p[1]);
    }

    sub_29A436E3C(__p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    sub_29A151CB4(&v12, 0);
    if (v10[1])
    {
      *&v11 = v10[1];
      operator delete(v10[1]);
    }

    sub_29A436E3C(v10);
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = v7 | 1;
    }

    else
    {
      v8 = v6;
    }

    *(v3 + 8) = v8;
    *(v6 + 56) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  return sub_29A1DE3A4(&v18);
}

void sub_29A4391C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A436B24(&a14);
  sub_29A435494(&a9);
  sub_29A1DCEA8((v14 - 56));
  _Unwind_Resume(a1);
}

void *sub_29A4391F4(void *a1, unsigned int *a2, void **a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A439300(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    result = *v7;
    while (*result != *a2)
    {
      result = result[6];
      if (!result)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = a1[3];
    if (v10 > (a1[1] - *a1) >> 3)
    {
      sub_29A439300(a1);
      v10 = a1[3];
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v11 = *a3;
    result = **a3;
    result[6] = v8;
    *v11 = 0;
    *v7 = result;
    a1[3] = v10 + 1;
  }

  return result;
}

void sub_29A439300(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPrimIndex>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::PcpPrimIndex]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29A439498(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 6);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 6) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29A43946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29A439498(void *a1, unint64_t a2)
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

void sub_29A4394F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A439510(void *a1, _DWORD *a2)
{
  v7 = a2;
  result = sub_29A439564(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29A43908C(a1, &v5);
    return v5;
  }

  return result;
}

void *sub_29A439564(void *a1, unsigned int *a2, _DWORD **a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A439300(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    v9 = *v7;
    while (*v9 != *a2)
    {
      v9 = v9[6];
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29A439300(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v9 = operator new(0x48uLL);
    sub_29A4396A8(v9, *a3);
    v9[7] = 0;
    v9[8] = 0;
    v9[6] = v8;
    *v7 = v9;
    ++a1[3];
  }

  return v9;
}

_DWORD *sub_29A4396A8(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::PcpPrimIndex((a1 + 2), (a2 + 2));
  return a1;
}

void *sub_29A439700(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  sub_29A439758((a1 + 1), a3);
  return a1;
}

void sub_29A439738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_29A4372CC(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A439758(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 72) = v6;
  *(a1 + 64) = v5;
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::PcpExpressionVariablesDependencyData((a1 + 80), (a2 + 80));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return a1;
}

void sub_29A439828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    sub_29A41AE40(v3, v5);
  }

  sub_29A0176E4(va);
  sub_29A435494(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A439860(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t))
{
  v9 = a3 & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(a4[1] + 256) - 1) & (a3 >> 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*a4 + 16))(a4);
    *v11 = 0;
    v11[1] = 0;
  }

  v12 = a1[3];
  __dmb(0xBu);
  if (v12 != v9)
  {
    sub_29A172A58(a1, a1 + 3, v9, a4[1]);
  }

  if (v11)
  {
    sub_29A0EB5BC(&v16, (a1 + 4));
    v13 = a1[2];
    __dmb(0xBu);
    if (v13 < 2)
    {
      __dmb(0xBu);
      *a1 = v11;
    }

    else
    {
      *v13 = v11;
    }

    __dmb(0xBu);
    a1[2] = v11;
    v14 = v16;
    if (v16)
    {
      __dmb(0xBu);
      *v14 = 0;
    }
  }

  else
  {
    v11 = a1[2];
    __dmb(0xBu);
  }

  result = a5(&v11[15 * v10 + 2], a2);
  v11[1] |= 1 << v10;
  atomic_fetch_add(a1 + 3, 8uLL);
  return result;
}

void sub_29A4399A8(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_fetch_add((*(v1 + 8) + 272), 1uLL);
  sub_29A1729DC(v2, v3);
}

void *sub_29A439A14(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  sub_29A439758((a1 + 1), (a2 + 1));
  return a1;
}

void sub_29A439A48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_29A4372CC(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A439A68(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A37314C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A439BC8();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A439BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B0E8(va);
  _Unwind_Resume(a1);
}

int *sub_29A439BC8()
{
  if ((atomic_load_explicit(&qword_2A14F7E78, memory_order_acquire) & 1) == 0)
  {
    sub_29B2A2674();
  }

  return &dword_2A14F7E68;
}

uint64_t sub_29A439C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 - 11) = 1;
  *a1 = &unk_2A204E5F8;
  *(a1 + 8) = *a2;
  sub_29A1DDD84((a1 + 24), (a2 + 16));
  sub_29A1DDDC0((a1 + 28), (a2 + 20));
  v6 = *(a2 + 24);
  *(a1 + 32) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = a3;
  return a1;
}

uint64_t sub_29A439CAC(uint64_t a1)
{
  *a1 = &unk_2A204E5F8;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  return a1;
}

void sub_29A439D18(void *a1)
{
  *a1 = &unk_2A204E5F8;
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);

  operator delete(a1);
}

uint64_t sub_29A439D94(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v8);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild((a1 + 24), (a1 + 32), &v9);
  sub_29A4380E8(v2, v3, &v9, *(a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = v8;
  v6 = atomic_load((v4 + 144));
  if (v5 < v6 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v8, v4))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v8, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v8);
  return 0;
}

void sub_29A439E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_29A1DCEA8(&a10);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a9);
  _Unwind_Resume(a1);
}

void sub_29A439E88(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1) & 1) == 0)
  {
    sub_29A439F00(&v1);
  }

  v3 = &v1;
  sub_29A437720(&v3);
}

void sub_29A439EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A437720(&a12);
  _Unwind_Resume(a1);
}

void sub_29A439F00(pxrInternal__aapl__pxrReserved__ *a1)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v3 = *(DetachedDispatcher + 256);
    v9[0] = 0;
    v9[1] = v3;
    v4 = tbb::internal::allocate_additional_child_of_proxy::allocate(v9, 0x28uLL);
    *(v4 - 11) = 1;
    *v4 = &unk_2A204E640;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = v7;
    v5 = v8;
    v7 = 0uLL;
    v8 = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = DetachedDispatcher + 272;
    v6 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v6);
  }

  else
  {
    sub_29A43A024();
  }

  v9[0] = &v7;
  sub_29A437720(v9);
}

void sub_29A43A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A437720(&a12);
  _Unwind_Resume(a1);
}

void sub_29A43A024()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

uint64_t sub_29A43A0C4(uint64_t a1)
{
  *a1 = &unk_2A204E640;
  v3 = (a1 + 8);
  sub_29A437720(&v3);
  return a1;
}

void sub_29A43A11C(char *a1)
{
  *a1 = &unk_2A204E640;
  v2 = (a1 + 8);
  sub_29A437720(&v2);
  operator delete(a1);
}

uint64_t sub_29A43A178(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A43A024();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 32));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A43A208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A43A24C(uint64_t a1)
{
  sub_29A43A288(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A43A288(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A1E26CC(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A43A2CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A43A2CC(a1, *a2);
    sub_29A43A2CC(a1, a2[1]);
    sub_29A0FB178((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29A43A328(uint64_t *a1)
{
  sub_29A4345E4(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_29A43A360(uint64_t *a1)
{
  sub_29A434694(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29A43A398(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::string>>,std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *> *,long>>>();
}

void sub_29A43A3F0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A43A468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A43A484(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0FB178(v2 + 32);
    }

    operator delete(v2);
  }
}

BOOL sub_29A43A4E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  v13 = a2 + 24;
  v11 = *(a2 + 24);
  v12 = *(v13 + 8);
  v15 = a3 + 24;
  v14 = *(a3 + 24);
  if (v12 - v11 != *(v15 + 8) - v14)
  {
    return 0;
  }

  if (v11 == v12)
  {
    return 1;
  }

  do
  {
    result = sub_29A0EC4B8(&v17, v11, v14);
    if (!result)
    {
      break;
    }

    v11 += 3;
    v14 += 3;
  }

  while (v11 != v12);
  return result;
}

uint64_t **sub_29A43A5B8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          sub_29A43A748(v16, (v9 + 4));
          v10 = sub_29A0286E4(v5, v16, v15 + 4);
          sub_29A00B204(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_29A028760(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29A43A7A4(&v13);
  }

  if (a2 != a3)
  {
    sub_29A43A7FC();
  }

  return result;
}

void sub_29A43A734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43A7A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A43A748(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    sub_29A095E3C(v4, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

uint64_t sub_29A43A7A4(uint64_t a1)
{
  sub_29A43A2CC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A43A2CC(*a1, v2);
  }

  return a1;
}

void sub_29A43A854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43A484(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A43A86C(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29A43AAB4(a1, v5, a3, &v21);
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

void sub_29A43AA9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A43AB24(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A43AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x18uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29A1E21F4(v8 + 4, a3);
  result = sub_29A1E2240(v8 + 5, a3 + 1);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A43AB24(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1E26CC(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A43AB80(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29A43ABB8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A43ABB8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A1E26CC(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29A43AC9C(void ***a1)
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
        v4 -= 18;
        sub_29A43AD24(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A43AD24(uint64_t a1, _DWORD *a2)
{
  sub_29A41AF74((a2 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29A43AD80(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[72 * v2];
  *(&v16 + 1) = &v7[72 * v6];
  sub_29A43AECC(a1, v15, a2);
  *&v16 = v15 + 72;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A43AF34(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A43B110(&v14);
  return v13;
}

void sub_29A43AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A43B110(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A43AECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  sub_29A1DDD84((a2 + 8), (a3 + 8));
  sub_29A1DDDC0((a2 + 12), (a3 + 12));
  sub_29A41BCAC((a2 + 16), a3 + 16);
  result = *(a3 + 56);
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_29A43AF34(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A43B000(a1, a4, v7);
      v7 += 72;
      a4 = v12 + 72;
      v12 += 72;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A43AD24(a1, v5);
      v5 += 18;
    }
  }

  return sub_29A43B084(v9);
}

__n128 sub_29A43B000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), (a3 + 4));
  sub_29A1E21F4((a2 + 8), (a3 + 8));
  sub_29A1E2240((a2 + 12), (a3 + 12));
  sub_29A41B000((a2 + 16), a3 + 16);
  result = *(a3 + 56);
  *(a2 + 56) = result;
  return result;
}

void sub_29A43B068(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A43B084(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A43B0BC(a1);
  }

  return a1;
}

uint64_t *sub_29A43B0BC(uint64_t *result)
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
      v3 -= 18;
      result = sub_29A43AD24(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A43B110(void **a1)
{
  sub_29A43B144(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A43B144(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 72;
      result = sub_29A43AD24(v4, (v1 - 72));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

BOOL sub_29A43B18C(pxrInternal__aapl__pxrReserved__::SdfPath ***a1, int a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = **a1;
  if (*a3 == *v5 || !pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a3, v5) || (result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a3, a1[1])))
  {
    v7 = **a1;
    if (*a3 != *v7)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v7, a3);
    }

    v8 = **a1;
    if (*a3 == *v8 || (v9 = a3, !pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a3, v8)))
    {
      v9 = a1[1];
    }

    sub_29A1E21F4(&v10, v9);
    sub_29A1E2240(&v11, v9 + 1);
    if (a1[5][1])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
  }

  return result;
}

void sub_29A43BAE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, int a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_29A41B088();
}

uint64_t sub_29A43BCB0(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[72 * v2];
  *(&v16 + 1) = &v7[72 * v6];
  sub_29A43B000(a1, v15, a2);
  *&v16 = v15 + 72;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A43AF34(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A43B110(&v14);
  return v13;
}

void sub_29A43BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A43B110(va);
  _Unwind_Resume(a1);
}

void sub_29A43BDFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A26F0(a2, a1);
  }
}

uint64_t *sub_29A43BE2C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A43BEB4(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    *(v6 + 2) = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_29A43BEB4(uint64_t a1, void *a2, uint64_t a3)
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
        v8 = sub_29A0ECB5C(a3);
        if (v8 >= sub_29A0ECB5C((v7 + 4)))
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

      v9 = sub_29A0ECB5C((v7 + 4));
      if (v9 >= sub_29A0ECB5C(a3))
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

void *sub_29A43BF5C(void *a1, void *a2, void *a3)
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

  sub_29A43BFE0(a1, a2, a3, v4);
  return a1;
}

void *sub_29A43BFE0(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A095BC4(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A43C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

void sub_29A43C068(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A43C068(a1, *a2);
    sub_29A43C068(a1, a2[1]);
    sub_29A43C0C4((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29A43C0C4(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A012C90(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t **sub_29A43C110(uint64_t **a1, unint64_t *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v12 = *a4;
    sub_29A1E21F4(v11 + 8, v12);
    sub_29A1E2240(v11 + 9, v12 + 1);
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

_DWORD *sub_29A43C1E8(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_29A151CB4((a1 + 32), 0);
  v4 = v2;
  sub_29A436DB8(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A43C240(uint64_t **a1, uint64_t a2)
{
  v3 = sub_29A43C288(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_29B2A226C(a1, v3);
  return 1;
}

uint64_t sub_29A43C288(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (a1 + 8 != sub_29A43C2F0(a1, a2, *(a1 + 8), a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return v2;
}

uint64_t sub_29A43C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
  }

  return a4;
}

void sub_29A43C350(void *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    sub_29A43C504(a1, *(a2 + 56));

    sub_29A43C440(a1, v2);
  }
}

void *sub_29A43C3A4(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    v5 = sub_29A42F6CC(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    return sub_29A43C57C(v5, a2);
  }

  return result;
}

void sub_29A43C42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A43C440(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 48);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 48);
  sub_29A151CB4((v4 + 40), 0);
  v5 = *(v4 + 16);
  if (v5)
  {
    *(v4 + 24) = v5;
    operator delete(v5);
  }

  sub_29A436E3C((v4 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v6 = sub_29A1DE3A4(v4);

  operator delete(v6);
}

void sub_29A43C504(void *a1, uint64_t a2)
{
  (sub_29A43C350)();
  v4 = *(a2 + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 64);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29A43C350(a1, v5);
      sub_29A43C440(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

uint64_t sub_29A43C57C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2 == a2)
  {
    v5 = *(a2 + 64);
    if ((v5 & 7) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v6 = 0;
    }

    *(result + 56) = v6;
  }

  else
  {
    do
    {
      v3 = v2;
      v4 = *(v2 + 64);
      if ((v4 & 7) != 0)
      {
        v2 = v4 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2 != a2);
    *(v3 + 64) = *(v2 + 64);
  }

  return result;
}

void sub_29A43C5C8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    sub_29A43C770(a1, *(a2 + 48));

    sub_29A43C6B8(a1, v2);
  }
}

void *sub_29A43C61C(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    v5 = sub_29A42FBBC(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    return sub_29A43C7E8(v5, a2);
  }

  return result;
}

void sub_29A43C6A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A43C6B8(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 40);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 40);
  sub_29A151CB4((v4 + 32), 0);
  v6 = (v4 + 8);
  sub_29A436DB8(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v5 = sub_29A1DE3A4(v4);
  operator delete(v5);
}

void sub_29A43C770(void *a1, uint64_t a2)
{
  (sub_29A43C5C8)();
  v4 = *(a2 + 56);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 56);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29A43C5C8(a1, v5);
      sub_29A43C6B8(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

uint64_t sub_29A43C7E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2 == a2)
  {
    v5 = *(a2 + 56);
    if ((v5 & 7) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v6 = 0;
    }

    *(result + 48) = v6;
  }

  else
  {
    do
    {
      v3 = v2;
      v4 = *(v2 + 56);
      if ((v4 & 7) != 0)
      {
        v2 = v4 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2 != a2);
    *(v3 + 56) = *(v2 + 56);
  }

  return result;
}

uint64_t sub_29A43C834(uint64_t a1, char **a2, char **a3)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(*a2, 0);
    *a1 = v6;
    *(a1 + 8) = 2 * (v6 != 0);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(*a3, v6);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_29A43C8A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A2768(a2);
  }
}

__n128 sub_29A43C8D8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204E688;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A43C924(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204E688;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A43C95C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204E6E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29A43C9A8(void *a1, _DWORD *a2)
{
  v7 = a2;
  result = sub_29A43CB28(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29A43C9FC(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29A43C9FC(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v14);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v14))
  {
    pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(v8);
    sub_29A43CED4(&v10, &v14, v8);
    v4 = sub_29A43C9A8(a1, &v10);
    sub_29A151CB4(&v13, 0);
    v16 = &v12;
    sub_29A436DB8(&v16);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    sub_29A151CB4(&v9, 0);
    v16 = v8;
    sub_29A436DB8(&v16);
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 7) = v6;
    *(v4 + 48) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  return sub_29A1DE3A4(&v14);
}

void sub_29A43CAEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A43C1E8(va1);
  sub_29A4322C4(va);
  sub_29A1DCEA8((v2 - 48));
  _Unwind_Resume(a1);
}

void *sub_29A43CB28(void *a1, unsigned int *a2, _DWORD **a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29A43CC6C(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    v9 = *v7;
    while (*v9 != *a2)
    {
      v9 = v9[5];
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29A43CC6C(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v9 = operator new(0x40uLL);
    sub_29A43CE7C(v9, *a3);
    v9[6] = 0;
    v9[7] = 0;
    v9[5] = v8;
    *v7 = v9;
    ++a1[3];
  }

  return v9;
}

void sub_29A43CC6C(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::PcpPropertyIndex>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::PcpPropertyIndex]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29A43CE04(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 5);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 5) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29A43CDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29A43CE04(void *a1, unint64_t a2)
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

void sub_29A43CE60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A43CE7C(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex((a1 + 2), (a2 + 2));
  return a1;
}

_DWORD *sub_29A43CED4(_DWORD *a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex((a1 + 2), a3);
  return a1;
}

void sub_29A43CF4C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PCP_ENABLE_MINIMAL_CHANGES_FOR_LAYER_OPERATIONS))
  {
    sub_29B2A3278();
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::Pcp_SubsumeDescendants(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return sub_29A389698(a1, (a1 + 8), (a1 + 8));
}

void *pxrInternal__aapl__pxrReserved__::PcpLifeboat::PcpLifeboat(void *this)
{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

{
  this[1] = 0;
  *this = this + 1;
  this[5] = 0;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpLifeboat::~PcpLifeboat(pxrInternal__aapl__pxrReserved__::PcpLifeboat *this)
{
  sub_29A446D98(this + 24, *(this + 4));
  sub_29A446D3C(this, *(this + 1));
}

{
  sub_29A446D98(this + 24, *(this + 4));
  sub_29A446D3C(this, *(this + 1));
}

void *pxrInternal__aapl__pxrReserved__::PcpLifeboat::Retain(uint64_t a1, unint64_t *a2)
{
  return sub_29A446DF4(a1, a2, a2);
}

{
  return sub_29A446F70(a1 + 24, a2, a2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpLifeboat::Swap(pxrInternal__aapl__pxrReserved__::PcpLifeboat *this, pxrInternal__aapl__pxrReserved__::PcpLifeboat *a2)
{
  sub_29A13F534(this, a2);

  return sub_29A13F534(this + 3, a2 + 24);
}

void *pxrInternal__aapl__pxrReserved__::PcpChanges::PcpChanges(void *this)
{
  this[1] = 0;
  *this = this + 1;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  this[7] = 0;
  this[5] = 0;
  this[6] = this + 7;
  this[10] = 0;
  this[8] = 0;
  this[9] = this + 10;
  this[14] = 0;
  this[13] = 0;
  this[11] = 0;
  this[12] = this + 13;
  return this;
}

{
  this[1] = 0;
  *this = this + 1;
  this[4] = 0;
  this[2] = 0;
  this[3] = this + 4;
  this[7] = 0;
  this[5] = 0;
  this[6] = this + 7;
  this[10] = 0;
  this[8] = 0;
  this[9] = this + 10;
  this[14] = 0;
  this[13] = 0;
  this[11] = 0;
  this[12] = this + 13;
  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::~PcpChanges(pxrInternal__aapl__pxrReserved__::PcpChanges *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      v5 = sub_29A42F600((*(v3 + 4) + 200));
      pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::ClearLayerStackVectorOverrides(v5);
      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  sub_29A446D98(this + 96, *(this + 13));
  sub_29A446D3C(this + 72, *(this + 10));
  sub_29A4472C4(this + 48, *(this + 7));
  sub_29A447148(v2, *(this + 4));
  sub_29A4470EC(this, *(this + 1));
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidChange(uint64_t **a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t *a3)
{
  v62[0] = 0;
  v62[1] = 0;
  v60[1] = 0;
  v61 = v62;
  v59 = v60;
  v60[0] = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57 = v58;
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  memset(v54, 0, sizeof(v54));
  v53[0] = 0;
  v53[1] = 0;
  v51 = 0;
  v52 = v53;
  v49 = 0;
  v50 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  memset(&v46, 0, sizeof(v46));
  v5 = sub_29A418240(0);
  v6 = &v46;
  if (!v5)
  {
    v6 = 0;
  }

  v40 = v6;
  v44 = v5;
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStack(a2, &v64);
    sub_29A419260(&v64);
  }

  IsUsd = pxrInternal__aapl__pxrReserved__::PcpCache::IsUsd(a2);
  HasAnyDynamicFileFormatArgumentAttributeDependencies = pxrInternal__aapl__pxrReserved__::PcpCache::HasAnyDynamicFileFormatArgumentAttributeDependencies(a2);
  v9 = *a3;
  v37 = a3[1];
  if (*a3 != v37)
  {
    do
    {
      v42 = v9;
      v41 = (v9 + 16);
      if (HasAnyDynamicFileFormatArgumentAttributeDependencies)
      {
        v10 = v49;
        for (i = v50; i != v10; sub_29A44692C(i))
        {
          i -= 4;
        }

        v50 = v10;
        v12 = v41;
        if (*(v42 + 220) >= 2u)
        {
          v12 = *v41;
        }

        v13 = *(v42 + 216);
        if (v13)
        {
          v14 = (v12 + 200 * v13);
          do
          {
            v63 = a2;
            v45 = &v49;
            if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v12))
            {
              v65[0] = &v63;
              v65[1] = v42;
              v65[2] = &v45;
              v15 = *(v12 + 96);
              NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v12);
              IsPossibleDynamicFileFormatArgumentAttribute = pxrInternal__aapl__pxrReserved__::PcpCache::IsPossibleDynamicFileFormatArgumentAttribute(a2, NameToken);
              if ((v15 & 0x40) != 0)
              {
                if (IsPossibleDynamicFileFormatArgumentAttribute)
                {
                  sub_29A1DA6E4(v42);
                }

                v23 = v63;
                v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v12 + 160));
                if (pxrInternal__aapl__pxrReserved__::PcpCache::IsPossibleDynamicFileFormatArgumentAttribute(v23, v24))
                {
                  sub_29A4466F4(v65);
                }
              }

              else if (IsPossibleDynamicFileFormatArgumentAttribute)
              {
                if ((*(v12 + 194) & 0x20) != 0)
                {
                  sub_29A1DA6E4(v42);
                }

                if ((*(v12 + 194) & 0x80) != 0)
                {
                  if (v44)
                  {
                    sub_29A1DA6E4(v42);
                  }

                  sub_29A4466F4(v65);
                }

                v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
                if (!v18)
                {
                  v18 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
                }

                v19 = (v12 + 8);
                v20 = *(v12 + 32);
                if (*(v12 + 33) >= 4u)
                {
                  v19 = *(v12 + 1);
                }

                if (v20)
                {
                  v21 = 40 * v20;
                  v22 = v19;
                  do
                  {
                    if ((*v22 ^ *(v18 + 11)) < 8)
                    {
                      break;
                    }

                    v22 += 5;
                    v21 -= 40;
                  }

                  while (v21);
                }

                else
                {
                  v22 = v19;
                }

                if (v22 != &v19[5 * v20])
                {
                  if (v44)
                  {
                    sub_29A1DA6E4(v42);
                  }

                  sub_29A4466F4(v65);
                }
              }
            }

            v12 = (v12 + 200);
          }

          while (v12 != v14);
        }
      }

      if (!IsUsd || v49 != v50)
      {
        goto LABEL_55;
      }

      v25 = *(v42 + 220);
      v26 = v41;
      if (v25 >= 2)
      {
        v26 = *v41;
      }

      v27 = *(v42 + 216);
      if (v27)
      {
        v28 = (v26 + 200 * v27);
        v29 = 200 * v27;
        while (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v26 + 1))
        {
          v26 = (v26 + 200);
          v29 -= 200;
          if (!v29)
          {
            v26 = v28;
            break;
          }
        }

        v25 = *(v42 + 220);
      }

      v30 = v41;
      if (v25 >= 2)
      {
        v30 = *v41;
      }

      if (v26 != (v30 + 200 * *(v42 + 216)))
      {
LABEL_55:
        pxrInternal__aapl__pxrReserved__::PcpCache::FindAllLayerStacksUsingLayer(a2);
      }

      if (v44)
      {
        sub_29A1DA6E4(v42);
      }

      v9 = v42 + 232;
    }

    while (v42 + 232 != v37);
  }

  v31 = v47;
  if (v47 != v48)
  {
    do
    {
      v32 = *(v31 + 12);
      if ((v32 & 0x10) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Pcp_NeedToRecomputeDueToAssetPathChange((v31 + 4));
      }

      if ((v32 & 4) != 0)
      {
        pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStackRelocations(a1, a2, v31 + 4);
      }

      if ((v32 & 0x20) != 0)
      {
        pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStackExpressionVariables(a1, a2, v31 + 2, v40);
      }

      pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStack(a1, a2, v31 + 4, v32 & 1, (v32 & 2) != 0, (v32 >> 3) & 1);
      v33 = v31[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v31[2];
          v35 = *v34 == v31;
          v31 = v34;
        }

        while (!v35);
      }

      v31 = v34;
    }

    while (v34 != v48);
  }

  if (v44)
  {
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v46.__r_.__value_.__l.__size_)
      {
        goto LABEL_79;
      }

      v36 = v46.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v46.__r_.__value_.__s + 23))
      {
        goto LABEL_79;
      }

      v36 = &v46;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PcpChanges::DidChange\n%s\n", v7, v8, v36);
  }

LABEL_79:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  sub_29A4473C0(&v47, v48[0]);
  sub_29A4425C8(&v49);
  sub_29A1E2AEC(&v52, v53[0]);
  v65[0] = v54;
  sub_29A1E234C(v65);
  v65[0] = v55;
  sub_29A1E234C(v65);
  v65[0] = v56;
  sub_29A1E234C(v65);
  sub_29A447324(&v57, v58[0]);
  sub_29A447324(&v59, v60[0]);
  sub_29A1E2AEC(&v61, v62[0]);
}

void sub_29A44011C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, void *a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60, void *a61)
{
  *(v61 - 176) = &a33;
  sub_29A0EBD50((v61 - 176));
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_29A4473C0(&a42, a43);
  sub_29A4425C8(&a45);
  sub_29A1E2AEC(&a48, a49);
  *(v61 - 176) = &a51;
  sub_29A1E234C((v61 - 176));
  *(v61 - 176) = &a54;
  sub_29A1E234C((v61 - 176));
  *(v61 - 176) = &a57;
  sub_29A1E234C((v61 - 176));
  sub_29A447324(&a60, a61);
  sub_29A447324(v61 - 248, *(v61 - 240));
  sub_29A1E2AEC(v61 - 224, *(v61 - 216));
  _Unwind_Resume(a1);
}

uint64_t sub_29A4406A4@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, atomic_uint **a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A1FA710(a1);
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
      a2 = a1;
    }
  }

  v8 = *a2;
  *a3 = *a2;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v9;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_DidAddOrRemoveSublayer(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v12 = a7;
  v13 = a2;
  v10 = a2;
  __p = &v10;
  sub_29A448198(a1 + 24, &v10, &unk_29B4D6118, &__p);
  sub_29B2A2EDC(v11, a4, a5);
  std::__hash_table<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>>>::__emplace_unique_key_args<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,std::string> const&>();
}

void sub_29A440F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_29B2A2C58(&__p);
  sub_29A445F34(&a41);
  sub_29B2A2D24(v41 - 168);
  _Unwind_Resume(a1);
}

BOOL sub_29A441060(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 31);
  v3 = a1;
  if (v2 >= 4)
  {
    v3 = *a1;
  }

  v4 = *(a1 + 30);
  if (v4)
  {
    v5 = &v3[5 * v4];
    v6 = 40 * v4;
    while ((*v3 ^ *a2) >= 8)
    {
      v3 += 5;
      v6 -= 40;
      if (!v6)
      {
        v3 = v5;
        break;
      }
    }
  }

  if (v2 >= 4)
  {
    a1 = *a1;
  }

  return v3 != &a1[5 * v4];
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a2;
  v4 = &v3;
  sub_29A448198(this + 24, &v3, &unk_29B4D6118, &v4);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void sub_29A4412AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a9;
  sub_29A124AB0(&a16);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpChanges::_GetRenameChanges(uint64_t **this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_29A448340(this + 6, &v3, &unk_29B4D6118, &v4) + 5;
}

void sub_29A44172C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char *a23, char a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  a23 = &a11;
  sub_29A43AC9C(&a23);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(&a24);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStackRelocations(uint64_t **a1, uint64_t a2, void *a3)
{
  __p[3] = *MEMORY[0x29EDCA608];
  __p[0] = a3;
  result = sub_29A447E6C(a1, a3, &unk_29B4D6118, __p);
  if ((*(result + 50) & 1) == 0)
  {
    *(result + 50) = 1;
    sub_29A419260(a3);
  }

  return result;
}

void sub_29A441CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStackExpressionVariables(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a2;
  v10 = a1;
  v11 = a2;
  v12 = a4;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_29B2A2D98(v8, a3);
  LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(a2);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariableCachingComposer::PcpExpressionVariableCachingComposer(v7, LayerStackIdentifier);
  if (*(&v9 + 1))
  {
    sub_29A419260(*(v8[1] + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
  }

  return sub_29B2A33CC(v7, v8);
}

_BYTE *pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStack(uint64_t **a1, uint64_t a2, unint64_t *a3, char a4, char a5, int a6)
{
  v15 = a3;
  result = sub_29A447E6C(a1, a3, &unk_29B4D6118, &v15);
  v13 = result[48] | a4;
  result[48] = v13;
  result[49] |= a5;
  result[52] |= a6;
  if (v13)
  {
    result[49] = 0;
  }

  if ((a4 & 1) != 0 || a6)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpCache::UsesLayerStack(a2, a3);
    if (result)
    {
      v14 = a2;
      v15 = &v14;
      result = sub_29A448198((a1 + 3), &v14, &unk_29B4D6118, &v15);
      result[160] = 1;
    }
  }

  return result;
}

void *sub_29A4425C8(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 4;
        sub_29A44692C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::DidMuteAndUnmuteLayers(uint64_t result, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t *a3, uint64_t *a4)
{
  if (*a3 != a3[1])
  {
    pxrInternal__aapl__pxrReserved__::PcpChanges::_DidMuteLayer(result, a2, *a3);
  }

  if (*a4 != a4[1])
  {
    pxrInternal__aapl__pxrReserved__::PcpChanges::_DidUnmuteLayer(result, a2, *a4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_DidMuteLayer(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  memset(&v6, 0, sizeof(v6));
  sub_29A418240(0);
  pxrInternal__aapl__pxrReserved__::PcpChanges::_LoadSublayerForChange(a2, a3, 1, &v5);
}

void sub_29A442AE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  *(v59 + 216) = v60;
  a54 = &a12;
  sub_29A1DEB80(&a54);
  sub_29A321930();
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_DidUnmuteLayer(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  memset(&v6, 0, sizeof(v6));
  sub_29A418240(0);
  pxrInternal__aapl__pxrReserved__::PcpChanges::_LoadSublayerForChange(a2, a3, 0, &v5);
}

void sub_29A443098(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  *(v57 + 216) = v58;
  a52 = &a12;
  sub_29A1DEB80(&a52);
  sub_29A321930();
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_MarkReferencingSitesAsSignificantlyChanged(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = a2;
  v9 = &v8;
  v4 = sub_29A448198(a1 + 24, &v8, &unk_29B4D6118, &v9);
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
      pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(v5, 63, v7);
      if (v7[0] != v7[1])
      {
        if (*(v5 + 8))
        {
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
        }

        v9 = 0;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
      }

      v9 = v7;
      sub_29A43AC9C(&v9);
      v5 += 16;
    }

    while (v5 != v6);
  }
}

void sub_29A4436C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_29A41B088();
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpChanges::_GetCacheChanges(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_29A448198(this + 24, &v3, &unk_29B4D6118, &v4) + 5;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_ProcessLayerStackAndDependencyChanges(uint64_t **a1, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, unint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStack(a1, a2, v3, 1, 0, 1);
      pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7);
      pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(v3, 63, v10);
      v8 = v10[0];
      v9 = v10[1];
      while (v8 != v9)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(v8))
        {
          pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSpecStackAndChildrenInternal(a1, a2, v8);
        }

        v8 = (v8 + 72);
      }

      v11 = v10;
      sub_29A43AC9C(&v11);
      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_29A4438E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A43AC9C(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSpecStackAndChildrenInternal(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a2;
  v4 = &v3;
  sub_29A448198(this + 24, &v3, &unk_29B4D6118, &v4);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_LoadSublayerForChange(pxrInternal__aapl__pxrReserved__::PcpCache *this@<X1>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(this);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v12, (LayerStackIdentifier + 32));
  *a4 = 0;
  FileFormatTarget = pxrInternal__aapl__pxrReserved__::PcpCache::GetFileFormatTarget(this);
  pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(a2, FileFormatTarget, &v11);
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::Find(a2, &v11, &v10);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(a2, &v11, &v10);
  *a4 = v10;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
}

uint64_t sub_29A443B50(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B293A0C(a2);
  if (v4 & 1 | v3)
  {
    sub_29A1DA6E4(a2);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSublayerAndLayerStacks(uint64_t **a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, unint64_t **a3, uint64_t *a4, uint64_t a5, int a6, std::string *a7)
{
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSublayer(a1, a2, a3, a4, a5, a6, a7, &v16);
  result = sub_29B293A0C(a5);
  if (v12 & 1 | result)
  {
    v13 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
      v15 = v16;
      do
      {
        result = pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeLayerStack(a1, a2, v13, 1, 0, v15);
        v13 += 2;
      }

      while (v13 != v14);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidMaybeFixSublayer(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t a3, uint64_t a4)
{
  memset(&v8, 0, sizeof(v8));
  sub_29A418240(0);
  pxrInternal__aapl__pxrReserved__::PcpChanges::_LoadSublayerForChange(a2, a3, a4, 0, &v7);
  pxrInternal__aapl__pxrReserved__::PcpCache::FindAllLayerStacksUsingLayer(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::_LoadSublayerForChange@<X0>(pxrInternal__aapl__pxrReserved__::PcpCache *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  result = sub_29B293A0C(a2);
  if (v11 & 1 | result)
  {
    LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(a1);
    pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v17, (LayerStackIdentifier + 32));
    *a5 = 0;
    FileFormatTarget = pxrInternal__aapl__pxrReserved__::PcpCache::GetFileFormatTarget(a1);
    pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(a3, FileFormatTarget, v16);
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsAnonymousLayerIdentifier(a3))
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::Find(a3, v16, v14);
    }

    if (a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::FindRelativeToLayer(a2);
      if (v14[1])
      {
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
      }

      v15 = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
    }

    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(v14);
    pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpenRelativeToLayer(a2);
    *a5 = v15;
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
  }

  *a5 = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::DidMaybeFixAsset(pxrInternal__aapl__pxrReserved__::PcpChanges *a1, pxrInternal__aapl__pxrReserved__::PcpCache *this, pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a3, uint64_t a4, uint64_t *a5)
{
  pxrInternal__aapl__pxrReserved__::PcpCache::FindLayerStack(this, a3, v34);
  v10 = sub_29B2A0EDC(v34);
  if (v11 & 1 | v10)
  {
    memset(&v33, 0, sizeof(v33));
    v12 = sub_29A418240(0);
    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v32);
    v29 = 0;
    v30 = 0;
    __p = &v29;
    pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpenRelativeToLayer(a4);
    sub_29A01752C(&__p, v29);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v14 = sub_29A0FE7E0(&v32, 0);
    LOBYTE(__p) = 0;
    v16 = sub_29A0ED084(v13 + 19, &__p);
    if (v16 != v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v13, v14, v16);
    }

    if (v12)
    {
      if (*(a5 + 23) < 0)
      {
        a5 = *a5;
      }

      if (v31)
      {
        v17 = sub_29A3302A8(&v31);
        pxrInternal__aapl__pxrReserved__::SdfLayer::IsEmpty(v17);
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("  Asset @%s@ %s\n", v15, v16, a5, "invalid");
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        v19 = HIBYTE(v30);
      }

      else
      {
        v19 = v29;
      }

      std::string::append(&v33, p_p, v19);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }
    }

    if (v31)
    {
      sub_29A446DF4(a1 + 72, &v31, &v31);
      if (v12)
      {
        LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(this);
        sub_29A1DA6E4(LayerStackIdentifier);
      }

      pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStack(this, &__p);
      v21 = sub_29A0ECB5C(v34);
      v22 = sub_29A0ECB5C(&__p);
      v23 = v29;
      if (v29 && atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v23 + 8))(v23);
      }

      if (v21 == v22)
      {
        pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(a1, this, (a3 + 80));
      }

      pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(v34, 63, &__p);
      if (__p != v29)
      {
        pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(a1, this, __p);
      }

      v27 = &__p;
      sub_29A43AC9C(&v27);
    }

    if (v12)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v25 = v33.__r_.__value_.__r.__words[0];
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v33;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PcpChanges::DidMaybeFixAsset\n%s", v15, v16, v25);
      }
    }

    sub_29B2A35A4();
  }

  return sub_29B28F9E0(v34);
}

void sub_29A444690(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A321930();
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSpecs(pxrInternal__aapl__pxrReserved__::PcpChanges *a1, void *a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a4, pxrInternal__aapl__pxrReserved__::SdfPath *a5, int a6)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
  {
    if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimOrPrimVariantSelectionPath(a5) & 1) == 0)
    {
      sub_29B2A35E0(&NodeProvidingSpec);
    }

    PrimIndex = pxrInternal__aapl__pxrReserved__::PcpCache::FindPrimIndex(a2, this);
    if (!PrimIndex || (v13 = PrimIndex, !pxrInternal__aapl__pxrReserved__::PcpPrimIndex::HasSpecs(PrimIndex)))
    {
      if (a6 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    if (a6 != 1)
    {
      v27[0] = a2;
      NodeProvidingSpec = v27;
      sub_29A448198(a1 + 24, v27, &unk_29B4D6118, &NodeProvidingSpec);
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v13, 6u, &NodeProvidingSpec);
      v15 = NodeProvidingSpec;
      v14 = v24;
      v16 = v25;
      if (NodeProvidingSpec == v25 && v24 == v26)
      {
        goto LABEL_15;
      }

      v21 = a4;
      v22 = (v26 - 1);
      while (1)
      {
        v17 = v14;
        v27[0] = v15;
        v27[1] = v14;
        LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v27);
        Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v27);
        if (pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path))
        {
          break;
        }

        v14 = (v17 + 1);
        if (v15 == v16 && v22 == v17)
        {
          goto LABEL_15;
        }
      }

      a4 = v21;
    }

    NodeProvidingSpec = pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeProvidingSpec(v13, a4, a5);
    v24 = v20;
    if (NodeProvidingSpec && v20 != -1)
    {
      if (!pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsInstanceable(v13) || !sub_29A4449D8(&NodeProvidingSpec))
      {
        goto LABEL_24;
      }

LABEL_15:
      pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(a1, a2, this);
    }

    if (a6 == 1)
    {
      v28 = a2;
      v27[0] = &v28;
      sub_29A448198(a1 + 24, &v28, &unk_29B4D6118, v27);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }
  }

LABEL_24:
  pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSpecStack(a1, a2, this);
}

uint64_t sub_29A4449D8(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(a1) && pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a1))
  {
    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
    v8 = v2;
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode))
    {
      return 0;
    }

    while ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(&ParentNode) & 1) != 0)
    {
      ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&ParentNode);
      v8 = v3;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode))
      {
        return 0;
      }
    }
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
  LODWORD(LayerStack) = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path);
  return LayerStack ^ pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSpecStack(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a2;
  v4 = &v3;
  sub_29A448198(this + 24, &v3, &unk_29B4D6118, &v4);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeTargets(uint64_t a1, unint64_t a2, unint64_t *a3, int a4)
{
  v8 = a2;
  v9 = &v8;
  v6 = sub_29A448198(a1 + 24, &v8, &unk_29B4D6118, &v9);
  v9 = a3;
  result = sub_29A447514(v6 + 14, a3, &unk_29B4D6118, &v9);
  *(result + 9) |= a4;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangePaths(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  if (sub_29A418240(0))
  {
    LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(a2);
    sub_29A1DA6E4(LayerStackIdentifier);
  }

  v12 = a2;
  v13 = &v12;
  v9 = sub_29A448198(this + 24, &v12, &unk_29B4D6118, &v13);
  v10 = v9[18];
  if (v10 >= v9[19])
  {
    result = sub_29A447B84((v9 + 17), a3, a4);
  }

  else
  {
    result = sub_29A23E7D8(v10, a3, a4) + 4;
  }

  v9[18] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpChanges::DidDestroyCache(uint64_t **this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2)
{
  v5 = a2;
  sub_29A447C98(this + 3, &v5);
  v5 = a2;
  return sub_29A447D28((this + 6), &v5);
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeAssetResolver(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2)
{
  v14 = a2;
  if (sub_29A418240(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PcpChanges::DidChangeAssetResolver\n", v4, v5);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  v6 = sub_29A418240(0);
  p_p = &__p;
  if (!v6)
  {
    p_p = 0;
  }

  v10[0] = this;
  v10[1] = &v14;
  v10[2] = p_p;
  v15[0] = v10;
  v15[1] = sub_29A447DD8;
  pxrInternal__aapl__pxrReserved__::PcpCache::_ForEachLayerStack(a2, v15);
  if (v6)
  {
    v8 = HIBYTE(v13);
    if (v13 < 0)
    {
      v8 = v12;
    }

    if (v8)
    {
      LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(v14);
      sub_29A1DA6E4(LayerStackIdentifier);
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_29A444DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpChanges::Swap(pxrInternal__aapl__pxrReserved__::PcpChanges *this, pxrInternal__aapl__pxrReserved__::PcpChanges *a2)
{
  sub_29A13F534(this, a2);
  sub_29A13F534(this + 3, a2 + 24);
  sub_29A13F534(this + 6, a2 + 48);
  sub_29A13F534(this + 9, a2 + 72);

  return sub_29A13F534(this + 12, a2 + 96);
}

void *pxrInternal__aapl__pxrReserved__::PcpChanges::Apply(pxrInternal__aapl__pxrReserved__::PcpChanges *this)
{
  result = pxrInternal__aapl__pxrReserved__::PcpChanges::_Optimize(this);
  v5 = *this;
  v6 = this + 8;
  if (v5 != (this + 8))
  {
    result = sub_29B2A362C();
  }

  v5 = *(this + 3);
  v6 = this + 32;
  if (v5 != (this + 32))
  {
    v3 = *(*sub_29A445034(&v5) + 32);
    v4 = sub_29A445034(&v5);
    pxrInternal__aapl__pxrReserved__::PcpCache::Apply(v3, *v4 + 40, (this + 72));
  }

  return result;
}

void *sub_29A444F54(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A36C0();
  }

  return result;
}

void *sub_29A444F8C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::PcpLayerStackChanges>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::PcpLayerStackChanges>, Reverse = false]";
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

void *sub_29A445034(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A370C();
  }

  return result;
}

void *sub_29A44506C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, pxrInternal__aapl__pxrReserved__::PcpCacheChanges>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, pxrInternal__aapl__pxrReserved__::PcpCacheChanges>, Reverse = false]";
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

void *pxrInternal__aapl__pxrReserved__::PcpChanges::_Optimize(void *this)
{
  v1 = this;
  v9 = this[6];
  for (i = this + 7; v9 != i; this = sub_29A4454F0(&v9))
  {
    v2 = *(*sub_29A4454B8(&v9) + 32);
    v11 = (*sub_29A4454B8(&v9) + 32);
    v3 = sub_29A448198(v1 + 24, v11, &unk_29B4D6118, &v11);
    v4 = sub_29A4454B8(&v9);
    pxrInternal__aapl__pxrReserved__::PcpChanges::_OptimizePathChanges(v4, v2, (v3 + 5), *v4 + 40);
  }

  v5 = *(v1 + 24);
  v6 = v1 + 32;
  v9 = v5;
  i = (v1 + 32);
  while (v5 != v6)
  {
    v7 = sub_29A445788(&v9);
    pxrInternal__aapl__pxrReserved__::PcpChanges::_Optimize(v7, *v7 + 40, v8);
    this = sub_29A4457C0(&v9);
    v5 = v9;
    v6 = i;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_OptimizePathChanges(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, uint64_t a3, uint64_t a4)
{
  sub_29A23F5D8(&v17, a4);
  v6 = *(a3 + 96);
  for (i = *(a3 + 104); v6 != i; v6 += 16)
  {
    v8 = sub_29A1EF6EC(&v17);
    v9 = v8;
    if (v18 != v8 && *(v8 + 36) == *(v6 + 8))
    {
      sub_29A03AFE8(&v17, v8);
      sub_29A1EF8E4(v9 + 7);
      operator delete(v9);
    }
  }

  memset(&v16, 0, sizeof(v16));
  v12 = sub_29A418240(0);
  if (v17 != v18)
  {
    if (v12)
    {
      LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(a2);
      sub_29A1DA6E4(LayerStackIdentifier);
    }

    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  if (v12)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v15 = v16.__r_.__value_.__r.__words[0];
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v16;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PcpChanges::_Optimize:\n%s", v10, v11, v15);
    }
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  sub_29A1EF938(&v17, v18[0]);
}

void sub_29A445460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_29A1EF938(&a24, a25);
  _Unwind_Resume(a1);
}

void *sub_29A4454B8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A3758();
  }

  return result;
}

void *sub_29A4454F0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>, Reverse = false]";
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

void pxrInternal__aapl__pxrReserved__::PcpChanges::_Optimize(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = (a2 + 8);
  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      v6 = v5[1];
      v7 = v5;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      if (v8 == v4)
      {
        v12 = v8;
        v5 = v8;
      }

      else
      {
        v10 = v8;
        while (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v10 + 28), (v5 + 28)))
        {
          v11 = v10[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v10[2];
              v9 = *v12 == v10;
              v10 = v12;
            }

            while (!v9);
          }

          v10 = v12;
          if (v12 == v4)
          {
            goto LABEL_19;
          }
        }

        v12 = v10;
LABEL_19:
        v5 = v12;
      }

      sub_29A389698(a2, v8, v12);
    }

    while (v5 != v4);
    v5 = *a2;
  }

  v25 = v5;
  v26 = v4;
  while (v25 != v26)
  {
    sub_29A349024(&v25, a2, a3);
    pxrInternal__aapl__pxrReserved__::Pcp_SubsumeDescendants(a2 + 48);
    sub_29A349024(&v25, v13, v14);
    pxrInternal__aapl__pxrReserved__::Pcp_SubsumeDescendants(a2 + 24);
    sub_29A349024(&v25, v15, v16);
    pxrInternal__aapl__pxrReserved__::Pcp_SubsumeDescendants(a2 + 232);
    sub_29A349024(&v25, v17, v18);
    pxrInternal__aapl__pxrReserved__::Pcp_SubsumeDescendants(a2 + 256);
    sub_29A3490A8(&v25);
  }

  v19 = *(a2 + 48);
  v20 = a2 + 56;
  v25 = v19;
  v26 = a2 + 56;
  while (v19 != v20)
  {
    sub_29A349024(&v25, a2, a3);
    sub_29A389594((a2 + 24));
    sub_29A349024(&v25, v21, v22);
    sub_29A389594((a2 + 232));
    sub_29A3490A8(&v25);
    v19 = v25;
    v20 = v26;
  }

  v23 = *(a2 + 24);
  v24 = a2 + 32;
  v25 = v23;
  v26 = a2 + 32;
  while (v23 != v24)
  {
    sub_29A349024(&v25, a2, a3);
    sub_29A389594((a2 + 232));
    sub_29A3490A8(&v25);
    v23 = v25;
    v24 = v26;
  }
}

void *sub_29A445788(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A37A4();
  }

  return result;
}

void *sub_29A4457C0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, pxrInternal__aapl__pxrReserved__::PcpCacheChanges>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::PcpCache *, pxrInternal__aapl__pxrReserved__::PcpCacheChanges>, Reverse = false]";
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

uint64_t sub_29A445868(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  __p[28] = *MEMORY[0x29EDCA608];
  v8 = *a1;
  if (*a2)
  {
    sub_29A446DF4(v8 + 72, a2, a2);
    v9 = sub_29A3302A8(a2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::IsEmpty(v9);
  }

  v10 = atomic_load(pxrInternal__aapl__pxrReserved__::PCP_ENABLE_MINIMAL_CHANGES_FOR_LAYER_OPERATIONS);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v10 == 1 && *a2)
  {
    v11 = sub_29A3302A8(a2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::IsEmpty(v11);
  }

  LOBYTE(v15) = 0;
  v12 = *(a1 + 16);
  v13 = **(a1 + 8);
  sub_29A321960(__p, a2);
  pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSublayer(v8, v13, a3, v12, __p, a4, **(a1 + 24), &v15);
  sub_29B2A37F0();
  return v16;
}

void sub_29A445E20(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  if (a2)
  {
    v6 = *(a1 + 16);
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      *(a1 + 8) = a2;
    }

    else
    {
      v14 = 0;
      v15 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        sub_29A00C9A4();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_29A08C784(&v14, v9);
      v11 = v14;
      v12 = *(&v15 + 1);
      v14 = *a1;
      v10 = v14;
      v13 = *(a1 + 8);
      *a1 = v11;
      *(a1 + 8) = a2;
      *(a1 + 16) = v12;
      v15 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    if (*a3 == 1)
    {
      v14 = *a1;
      LODWORD(v15) = 0;
      sub_29A08CBBC(&v14, a2);
    }

    else
    {
      v14 = *a1;
      LODWORD(v15) = 0;
      sub_29A08CC70(&v14, a2);
    }
  }
}

void sub_29A445F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A445F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A448510(v2 + 16);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_29A445F94(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpChanges::_DidChangeSpecStackInternal(pxrInternal__aapl__pxrReserved__::PcpChanges *this, const pxrInternal__aapl__pxrReserved__::PcpCache *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a2;
  v4 = &v3;
  sub_29A448198(this + 24, &v3, &unk_29B4D6118, &v4);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void *sub_29A446074(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29A4460F4(uint64_t a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A4462F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A446314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_29A448828(&v9, a3, *(a1 + 8));
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 18;
        sub_29A43AD24(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_29A446398(void **a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A446594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void sub_29A4465B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(a2, 39, v13);
  v5 = v13[0];
  if (v13[0] != v13[1])
  {
    if (*(a1 + 16))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v13[0]);
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("    <%s>\n", v7, v8, Text);
      if ((v12 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v10 = v12;
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(*(a1 + 16), v9, v10);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::PcpChanges::DidChangeSignificantly(v4, *(a1 + 8), v5);
  }

  __p[0] = v13;
  sub_29A43AC9C(__p);
}

void sub_29A4466BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_29A43AC9C(&__p);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A4468EC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29A44692C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t *sub_29A44696C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_29A321960(a1, a2);
  sub_29A4469CC((v5 + 2), a3);
  v6 = *(a3 + 208);
  *(a3 + 208) = 0;
  a1[28] = v6;
  return a1;
}

void sub_29A4469B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4469CC(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 200) = 0x100000000;
  v3 = *(a2 + 200);
  if (v3 < 2)
  {
    if (*(a2 + 204) >= 2u)
    {
      v4 = *a2;
    }

    else
    {
      v4 = a2;
    }

    sub_29A2F4DF4(v4, v4 + 200 * v3, v2);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfChangeList::Entry>,1u>::_Destruct();
  }

  *result = *a2;
  *(result + 204) = *(a2 + 204);
  *(a2 + 204) = 1;
  v5 = *(result + 200);
  *(result + 200) = *(a2 + 200);
  *(a2 + 200) = v5;
  return result;
}

uint64_t sub_29A446AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_29A00C9A4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1DFB94(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[232 * v2];
  *(&v16 + 1) = &v7[232 * v6];
  sub_29A446BF0(v15, a2);
  *&v16 = v15 + 29;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  sub_29A1DFBE0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A1DFD94(&v14);
  return v13;
}

void sub_29A446BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DFD94(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A446BF0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_29A321960(a1, a2);
  sub_29A4469CC((v4 + 2), (a2 + 1));
  v5 = a2[27];
  a2[27] = 0;
  a1[28] = v5;
  return a1;
}

void sub_29A446C38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A446CBC(uint64_t a1)
{
  sub_29A446CF8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A446CF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A2F8C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A446D3C(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29A446D3C(result, *a2);
    sub_29A446D3C(v3, a2[1]);
    sub_29A321930();
  }

  return result;
}

uint64_t sub_29A446D98(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29A446D98(result, *a2);
    sub_29A446D98(v3, a2[1]);
    sub_29A41B088();
  }

  return result;
}

void *sub_29A446DF4(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_29A446EA8(a1, a3, v8);
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_29A446EA8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

void sub_29A446F14(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A321930();
    }

    operator delete(v2);
  }
}

void *sub_29A446F70(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_29A447024(a1, a3, v8);
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_29A447024(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

void sub_29A447090(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A41B088();
    }

    operator delete(v2);
  }
}

void sub_29A4470EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A4470EC(a1, *a2);
    sub_29A4470EC(a1, a2[1]);
    sub_29B2A3060((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A447148(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A447148(a1, *a2);
    sub_29A447148(a1, a2[1]);
    sub_29A4471A4((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A4471A4(uint64_t a1)
{
  sub_29A1E2AEC(a1 + 264, *(a1 + 272));
  sub_29A1E2AEC(a1 + 240, *(a1 + 248));
  sub_29A447244(a1 + 200);
  v2 = (a1 + 176);
  sub_29A1DEB80(&v2);
  sub_29A0EB484(a1 + 136);
  v2 = (a1 + 104);
  sub_29A23F9D4(&v2);
  sub_29A447324(a1 + 80, *(a1 + 88));
  sub_29A1E2AEC(a1 + 56, *(a1 + 64));
  sub_29A1E2AEC(a1 + 32, *(a1 + 40));
  sub_29A1E2AEC(a1 + 8, *(a1 + 16));
}

uint64_t sub_29A447244(uint64_t a1)
{
  sub_29A447280(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A447280(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A313C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A4472C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A4472C4(a1, *a2);
    sub_29A4472C4(a1, a2[1]);
    sub_29A1EF938((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_29A447324(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A447324(a1, *a2);
    sub_29A447324(a1, a2[1]);
    sub_29A447380(a2 + 7);

    operator delete(a2);
  }
}

_DWORD *sub_29A447380(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29A4473C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B2A384C(a2, a1);
  }
}

void *sub_29A4473F0(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A427C04(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A447458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0EBD50(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A447478(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A43BEB4(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v9 = operator new(0x38uLL);
    v7 = v9;
    v10 = (*a4)[1];
    v9[4] = **a4;
    v9[5] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }

    *(v9 + 12) = 0;
    sub_29A00B204(a1, v12, v8, v9);
  }

  return v7;
}

uint64_t **sub_29A447514(uint64_t **a1, unint64_t *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 28);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x28uLL);
    v12 = *a4;
    sub_29A1E21F4(v11 + 7, v12);
    sub_29A1E2240(v11 + 8, v12 + 1);
    *(v11 + 9) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void *sub_29A447864(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A4478EC(result, a4);
    result = sub_29A44793C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A4478CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1DEB80(&a9);
  _Unwind_Resume(a1);
}

char *sub_29A4478EC(void *a1, unint64_t a2)
{
  if (a2 >= 0x11A7B9611A7B962)
  {
    sub_29A00C9A4();
  }

  result = sub_29A1DFB94(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[232 * v4];
  return result;
}

void *sub_29A44793C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A1DFCA8(v4, v6);
      v6 += 29;
      v4 = v11 + 29;
      v11 += 29;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A1DFD08(v8);
  return v4;
}

uint64_t sub_29A4479E0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_29A00C9A4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1DFB94(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[232 * v2];
  *(&v16 + 1) = &v7[232 * v6];
  sub_29A447B28(v15, a2);
  *&v16 = v15 + 232;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A1DFBE0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A1DFD94(&v14);
  return v13;
}

void sub_29A447B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DFD94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A447B28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_29A4469CC(a1 + 16, a2 + 16);
  v4 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v4;
  return a1;
}

void sub_29A447B6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A447B84(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A017BD4(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[16 * v3];
  *(&v19 + 1) = &v10[16 * v9];
  sub_29A23E7D8(v18, a2, a3);
  *&v19 = v18 + 16;
  v11 = *(a1 + 8);
  v12 = &v18[*a1 - v11];
  sub_29A23E834(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A23EA14(&v17);
  return v16;
}

void sub_29A447C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A23EA14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A447C98(uint64_t **a1, unint64_t *a2)
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
  sub_29A4471A4((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_29A447D28(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_29A447D98(a1, v4);
  return 1;
}

uint64_t *sub_29A447D98(uint64_t **a1, uint64_t a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  sub_29A1EF938(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t *sub_29A447E6C(uint64_t **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = sub_29A43BEB4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A447F04(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A447F04@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x100uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A447F84(v6 + 4, &v8);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A447F84(void *a1, void **a2)
{
  v3 = (*a2)[1];
  *a1 = **a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  sub_29A447FE4((a1 + 2));
  return a1;
}

void sub_29A447FCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A447FE4(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::PcpExpressionVariablesSource((a1 + 192));
  return a1;
}

void sub_29A4480C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v18 = v17;
  sub_29A184A10(v16, 0);
  sub_29A1E2AEC(v15, *(v10 + 160));
  a10 = (v10 + 128);
  sub_29A0176E4(&a10);
  a10 = v18;
  sub_29A1E234C(&a10);
  sub_29A1EF938(v14, *(v10 + 88));
  sub_29A1EF938(v13, *(v10 + 64));
  sub_29A1EF938(v12, *(v10 + 40));
  sub_29A1EF938(v11, *(v10 + 16));
  _Unwind_Resume(a1);
}

void sub_29A448138(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3060(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A448198(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
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
    v8 = (a1 + 8);
LABEL_10:
    sub_29A448254(a1, a4, &v11);
    sub_29A00B204(a1, v8, v6, v11);
    return v11;
  }

  return v8;
}

char *sub_29A448254@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x140uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = **a2;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  v7 = v6 + 12;
  v6[9] = 0;
  v8 = (v6 + 9);
  v6[10] = 0;
  v6[8] = v6 + 9;
  v6[16] = 0;
  v6[15] = 0;
  v6[14] = v6 + 15;
  v6[18] = 0;
  v6[32] = 0;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 3) = 0u;
  result = (v6 + 6);
  *(v8 - 4) = result;
  *v7 = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = v7;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 10) = 0;
  *(v8 + 87) = 0;
  *(v8 + 8) = 0;
  *(v8 + 32) = 1065353216;
  *(v8 + 48) = 1065353216;
  *(v8 + 25) = v8 + 208;
  *(v8 + 26) = 0;
  *(v8 + 29) = 0;
  *(v8 + 30) = 0;
  *(v8 + 27) = 0;
  *(v8 + 28) = v8 + 232;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29A448340(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v12 = **a4;
    v11[7] = 0;
    v11[6] = 0;
    v11[4] = v12;
    v11[5] = (v11 + 6);
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void sub_29A4484B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A313C(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A448510(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 56);
  sub_29A0EBD50(&v3);
  sub_29A321930();
}

uint64_t sub_29A448580(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A448510(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_29A4485CC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (result[2])
  {
    v5 = *result;
    v6 = result[1];
    *result = (result + 1);
    *(v6 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v5 + 8))
    {
      v7 = *(v5 + 8);
    }

    else
    {
      v7 = v5;
    }

    v8 = result;
    v9 = v7;
    v10 = v7;
    if (v7)
    {
      v9 = sub_29A028760(v7);
      if (a2 != a3)
      {
        sub_29A4486D4();
      }
    }

    result = sub_29A448764(&v8);
  }

  if (a2 != a3)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return result;
}

void sub_29A4486C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A448764(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A448764(uint64_t a1)
{
  sub_29A1E2AEC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A1E2AEC(*a1, v2);
  }

  return a1;
}

void sub_29A4487BC(void *a1)
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
        v3 -= 18;
        sub_29A43AD24(a1, v3);
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

uint64_t sub_29A448828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

void sub_29A4488D4(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x100;
  v4 = v2 - 256;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29A448A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A448A88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29A0ECB5C(a2);
  result = sub_29A0ECB5C(v3);
  if (v4 != result)
  {
    sub_29A419260(a2);
  }

  return result;
}

void sub_29A448BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteReferences(uint64_t *a1)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v3 = sub_29A4184C4(a1);
  pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::SdfListOp();
}

void sub_29A448F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A246038(va);
  sub_29A44CAA8(v5 - 168, *(v5 - 160));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSitePayloads(uint64_t *a1)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v3 = sub_29A4184C4(a1);
  pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::SdfListOp();
}

void sub_29A4492EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A24A2DC(va);
  sub_29A44D21C(v5 - 168, *(v5 - 160));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpComposeSitePermission(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v11 = 0;
  v3 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  v5 = *Layers;
  v6 = *(Layers + 8);
  if (*Layers == v6)
  {
    return 0;
  }

  do
  {
    v7 = sub_29A3302A8(v5);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v8)
    {
      v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v12[1] = &v11;
    v12[2] = &stru_2A2048D60;
    v13 = 0;
    v12[0] = &unk_2A204E828;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v7, a2, v8 + 32, v12);
    if (HasField & (v13 ^ 1))
    {
      break;
    }

    ++v5;
  }

  while (v5 != v6);
  return v11;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  v5 = *Layers;
  v6 = *(Layers + 8);
  if (*Layers != v6)
  {
    do
    {
      v7 = sub_29A3302A8(v5);
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v7, a2))
      {
        sub_29A321960(&v9, v5);
        sub_29A44D2DC();
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 0;
}

{
  v3 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  v5 = *Layers;
  v6 = *(Layers + 8);
  if (*Layers == v6)
  {
    return 0;
  }

  do
  {
    v7 = sub_29A3302A8(v5);
    result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v7, a2);
    if (result)
    {
      break;
    }

    ++v5;
  }

  while (v5 != v6);
  return result;
}

void sub_29A44952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasSymmetry(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  v5 = *Layers;
  v6 = *(Layers + 8);
  if (*Layers == v6)
  {
    return 0;
  }

  while (1)
  {
    v7 = sub_29A3302A8(v5);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v8)
    {
      v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v7, a2, (v8 + 432), 0))
    {
      break;
    }

    v9 = sub_29A3302A8(v5);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v10)
    {
      v10 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v9, a2, (v10 + 424), 0))
    {
      break;
    }

    if (++v5 == v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t **pxrInternal__aapl__pxrReserved__::PcpComposeSitePrimSites(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3)
{
  v5 = sub_29A4184C4(a1);
  result = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v5);
  v7 = *result;
  v8 = result[1];
  if (*result != v8)
  {
    do
    {
      v9 = sub_29A3302A8(v7);
      result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v9, a2);
      if (result)
      {
        sub_29A321960(&v11, v7);
        sub_29B2A09DC(v13, &v11, a2);
        sub_29A44980C(a3, v13);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
        sub_29A1DE3A4(&v15);
        v10 = v14;
        if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v10 + 8))(v10);
        }

        result = v12;
        if (v12)
        {
          if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            result = ((*result)[1])(result);
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_29A4497AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, atomic_uint *a4, ...)
{
  va_start(va, a4);
  sub_29A41EAB0(va);
  if (a4)
  {
    if (atomic_fetch_add_explicit(a4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a4 + 8))(a4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A44980C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A44D450(a1, a2);
  }

  else
  {
    sub_29A44D3F8(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteRelocates(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t **a3)
{
  if ((atomic_load_explicit(&qword_2A1741E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E78))
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v15)
    {
      v15 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v16 = *(v15 + 37);
    qword_2A1741E70 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741E70 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741E70, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741E78);
  }

  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v6 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v6);
  v21 = Layers[1];
  v22 = v21;
  v23 = *Layers;
  v24 = v23;
  while (v22 != v24)
  {
    v10 = sub_29A449B20(&v21, v8, v9);
    v11 = sub_29A3302A8(v10);
    v28 = &v25;
    v29 = &stru_2A2049070;
    v30 = 0;
    v27 = &unk_2A204AD10;
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v11, a2, &qword_2A1741E70, &v27) && (v30 & 1) == 0)
    {
      v27 = v25;
      v28 = v26;
      while (v27 != v28)
      {
        v12 = sub_29A449BA8(&v27);
        pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((*v12 + 28), a2, &v19);
        v13 = sub_29A449BA8(&v27);
        pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath((*v13 + 36), a2, &v17);
        v31 = &v19;
        v14 = sub_29A326108(a3, &v19, &unk_29B4D6118, &v31);
        sub_29A2258F0(v14 + 9, &v17);
        sub_29A225948(v14 + 10, &v18);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
        sub_29A1DE3A4(&v17);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
        sub_29A1DE3A4(&v19);
        sub_29A449BE0(&v27);
      }
    }

    sub_29A449C88(&v21);
  }

  sub_29A1EF938(&v25, v26[0]);
}

uint64_t sub_29A449B20(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *(a1 + 8);
  if (v7 == *(a1 + 24))
  {
    v12 = v4;
    v13 = v3;
    v14 = v5;
    v15 = v6;
    v9[0] = "tf/iterator.h";
    v9[1] = "operator*";
    v9[2] = 254;
    v9[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, true>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = true]";
    v10 = 0;
    v11 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v9, "iterator exhausted", a3);
  }

  return v7 - 8;
}

void *sub_29A449BA8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A3D10();
  }

  return result;
}

void *sub_29A449BE0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
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

uint64_t sub_29A449C88(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, true>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 - 8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteInherits()
{
  if ((atomic_load_explicit(&qword_2A1741E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E88))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 24);
    qword_2A1741E80 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741E80 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741E80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741E88);
  }

  sub_29A449E38();
}

{
  v2 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E98))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 24);
    qword_2A1741E90 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741E90 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741E90, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741E98);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
}

void sub_29A449E38()
{
  v1[6] = *MEMORY[0x29EDCA608];
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
}

void sub_29A44A08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1E1E38(va);
  sub_29A44D948(v6 - 144, *(v6 - 136));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteSpecializes()
{
  if ((atomic_load_explicit(&qword_2A1741EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741EA8))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 39);
    qword_2A1741EA0 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741EA0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741EA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741EA8);
  }

  sub_29A449E38();
}

{
  v2 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741EB8))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 39);
    qword_2A1741EB0 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741EB0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741EB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741EB8);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp();
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteVariantSets()
{
  v3[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741EC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741EC8))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 61);
    qword_2A1741EC0 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741EC0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741EC0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741EC8);
  }

  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
}

{
  v2 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741ED8))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v0)
    {
      v0 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v1 = *(v0 + 61);
    qword_2A1741ED0 = v1;
    if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741ED0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741ED0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741ED8);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::SdfListOp();
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpComposeSiteVariantSetOptions(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t **a4)
{
  if ((atomic_load_explicit(&qword_2A1741EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741EE8))
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v16)
    {
      v16 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v17 = *(v16 + 7);
    qword_2A1741EE0 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741EE0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741EE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741EE8);
  }

  sub_29A008E78(&__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a2, a3, &__p, &v21);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v8 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v8);
  v10 = *Layers;
  v11 = *(Layers + 8);
  if (*Layers != v11)
  {
    do
    {
      v12 = sub_29A3302A8(v10);
      v24 = &v18;
      v25 = &stru_2A2040490;
      v26 = 0;
      __p = &unk_2A204BA68;
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v12, &v21, &qword_2A1741EE0, &__p) && (v26 & 1) == 0)
      {
        __p = v18;
        v24 = v19;
        while (__p != v24)
        {
          v13 = sub_29A3B95D0(&__p);
          if ((**v13 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = ((**v13 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
          }

          sub_29A095658(a4, EmptyString, EmptyString);
          sub_29A2F8D14(&__p);
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  __p = &v18;
  sub_29A124AB0(&__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  return sub_29A1DE3A4(&v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpComposeSiteVariantSelection(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((atomic_load_explicit(&qword_2A1741EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741EF8))
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v21)
    {
      v21 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v22 = *(v21 + 59);
    qword_2A1741EF0 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741EF0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741EF0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741EF8);
  }

  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v9 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v9);
  v12 = *Layers;
  v11 = *(Layers + 8);
  if (*Layers == v11)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_25;
  }

  v23 = a4;
  while (1)
  {
    v13 = sub_29A3302A8(v12);
    *(&v34 + 1) = &v32;
    v35 = &stru_2A2049428;
    v36 = 0;
    *&v34 = &unk_2A204E9B8;
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v13, a2, &qword_2A1741EF0, &v34))
    {
      if ((v36 & 1) == 0)
      {
        v14 = sub_29A01BCCC(&v32, a3);
        v15 = v14;
        if (v33 != v14)
        {
          break;
        }
      }
    }

LABEL_19:
    if (++v12 == v11)
    {
      goto LABEL_20;
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::Pcp_IsVariableExpression(v14 + 7))
  {
    goto LABEL_22;
  }

  v34 = 0uLL;
  v35 = 0;
  v16 = *(sub_29A4184C4(a1) + 400);
  sub_29A008E78(&__p, "variant");
  sub_29A321960(&v27, v12);
  pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression((v15 + 7), v16, &__p, &v27, a2, a5, &v34, &v30);
  if (*(v15 + 79) < 0)
  {
    operator delete(v15[7]);
  }

  *(v15 + 7) = v30;
  v15[9] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30) = 0;
  v17 = v28;
  if (v28 && atomic_fetch_add_explicit((v28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v17 + 8))(v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v34 != *(&v34 + 1))
  {
    if (a6)
    {
      sub_29A44DFEC(a6, *(a6 + 8), v34, *(&v34 + 1), (*(&v34 + 1) - v34) >> 4);
    }

    *&v30 = &v34;
    sub_29A0176E4(&v30);
    goto LABEL_19;
  }

  *&v30 = &v34;
  sub_29A0176E4(&v30);
LABEL_22:
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  v19 = *(v15 + 7);
  *(v23 + 16) = v15[9];
  *v23 = v19;
  *(v15 + 79) = 0;
  *(v15 + 56) = 0;
  v18 = 1;
LABEL_25:
  sub_29A01752C(&v32, v33[0]);
  return v18;
}

void pxrInternal__aapl__pxrReserved__::PcpComposeSiteVariantSelections(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_2A1741F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741F08))
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v21)
    {
      v21 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v22 = *(v21 + 59);
    qword_2A1741F00 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741F00 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741F00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741F08);
  }

  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v9 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v9);
  v12 = *Layers;
  v11 = *(Layers + 8);
  if (*Layers != v11)
  {
    v23 = *(Layers + 8);
    do
    {
      v13 = sub_29A3302A8(v12);
      *(&v32 + 1) = &v30;
      v33 = &stru_2A2049428;
      v34 = 0;
      *&v32 = &unk_2A204E9B8;
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v13, a2, &qword_2A1741F00, &v32) && (v34 & 1) == 0)
      {
        v14 = v30;
        if (v30 != v31)
        {
          while (1)
          {
            if (pxrInternal__aapl__pxrReserved__::Pcp_IsVariableExpression(v14 + 7))
            {
              v32 = 0uLL;
              v33 = 0;
              v15 = *(sub_29A4184C4(a1) + 400);
              sub_29A008E78(&__p, "variant");
              sub_29A321960(&v25, v12);
              pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression((v14 + 7), v15, &__p, &v25, a2, a4, &v32, &v28);
              if (*(v14 + 79) < 0)
              {
                operator delete(v14[7]);
              }

              *(v14 + 7) = v28;
              v14[9] = v29;
              HIBYTE(v29) = 0;
              LOBYTE(v28) = 0;
              v16 = v26;
              if (v26 && atomic_fetch_add_explicit((v26 + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                (*(*v16 + 8))(v16);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v32 != *(&v32 + 1))
              {
                if (a5)
                {
                  sub_29A44DFEC(a5, *(a5 + 8), v32, *(&v32 + 1), (*(&v32 + 1) - v32) >> 4);
                }

                v17 = sub_29A03AFE8(&v30, v14);
                sub_29A00B454((v14 + 4));
                operator delete(v14);
                *&v28 = &v32;
                sub_29A0176E4(&v28);
                goto LABEL_25;
              }

              *&v28 = &v32;
              sub_29A0176E4(&v28);
            }

            v18 = v14[1];
            if (v18)
            {
              do
              {
                v17 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v17 = v14[2];
                v19 = *v17 == v14;
                v14 = v17;
              }

              while (!v19);
            }

LABEL_25:
            v14 = v17;
            if (v17 == v31)
            {
              v20 = v30;
              goto LABEL_28;
            }
          }
        }

        v20 = v31;
LABEL_28:
        sub_29A0193A8(a3, v20, v31);
        v11 = v23;
      }

      ++v12;
    }

    while (v12 != v11);
  }

  sub_29A01752C(&v30, v31[0]);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasVariantSelections(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A4184C4(a1);
  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v3);
  v5 = *Layers;
  v6 = *(Layers + 8);
  if (*Layers == v6)
  {
    return 0;
  }

  do
  {
    v7 = sub_29A3302A8(v5);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v8)
    {
      v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v7, a2, (v8 + 472), 0);
    if (result)
    {
      break;
    }

    ++v5;
  }

  while (v5 != v6);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpComposeSiteChildNames(uint64_t *result, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, char *a3, void **a4, uint64_t *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v31[2] = *MEMORY[0x29EDCA608];
  v6 = *result;
  v24 = result[1];
  v25 = v24;
  v26 = v6;
  for (i = v6; v25 != i; result = sub_29A449C88(&v24))
  {
    v12 = sub_29A449B20(&v24, a2, a3);
    v13 = sub_29A3302A8(v12);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(v13, a2, a3, v31);
    if (sub_29A1DE724(v31))
    {
      sub_29A44BA3C(v31, &v29);
      v16 = v29;
      if (a5[6])
      {
        v17 = *(&v29 + 1);
        while (v16 != v17)
        {
          sub_29A44BAD8(a5, v16, v16);
          if (v18)
          {
            sub_29A153214(a4, v16);
          }

          ++v16;
        }
      }

      else
      {
        sub_29A44E22C(a5, v29, *(&v29 + 1));
        if (a5[6] == (*(&v29 + 1) - v29) >> 3)
        {
          sub_29A2F7B20(a4);
          *a4 = v29;
          a4[2] = v30;
          v30 = 0;
          v29 = 0uLL;
        }

        else
        {
          sub_29A44E4C4(a5);
          v22 = *(&v29 + 1);
          for (j = v29; j != v22; ++j)
          {
            sub_29A44BAD8(a5, j, j);
            if (v23)
            {
              sub_29A153214(a4, j);
            }
          }
        }
      }

      v28 = &v29;
      sub_29A124AB0(&v28);
    }

    if (a6)
    {
      v19 = sub_29A449B20(&v24, v14, v15);
      v20 = sub_29A3302A8(v19);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(v20, a2, a6, &v29);
      if (sub_29A1DE724(&v29))
      {
        if ((BYTE8(v29) & 4) != 0)
        {
          (*((*(&v29 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v29);
        }

        pxrInternal__aapl__pxrReserved__::SdfApplyListOrdering<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      sub_29A186B14(&v29);
    }

    sub_29A186B14(v31);
  }

  return result;
}

void sub_29A44B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(v7, va1);
  sub_29A124AB0(va);
  sub_29A186B14(va2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A44BA3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A34A4B4(a1);
  v5 = *result;
  *result = 0;
  *a2 = v5;
  v6 = result[1];
  result[1] = 0;
  a2[1] = v6;
  v7 = result[2];
  result[2] = 0;
  a2[2] = v7;
  v8 = a1[1];
  if (v8 && (a1[1] & 3) != 3)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

void sub_29A44BAC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A44BAD8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while ((*(result + 8) ^ *a2) >= 8)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A44BC54(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4] + 16 * v8;
      if (*(v12 + 4) == -1)
      {
        v13 = *a3;
        *(v12 + 8) = *a3;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v12 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        *v12 = v5;
        *(v12 + 4) = v10;
      }

      else
      {
        sub_29A44BD28(a1, v8, v10, v5, a3);
      }

      ++a1[6];
      return a1[4] + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A44BC54(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A44BDA4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A44BDA4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *sub_29A44BD28(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = *a5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  result = sub_29A3735D4(a1, a2, a3, a4, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A44BDA4(uint64_t a1, unint64_t a2)
{
  sub_29A439A68(&v14, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v5 = v15[4];
  v6 = v14;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v7 = bswap64(0x9E3779B97F4A7C55 * (*(v3 + 1) & 0xFFFFFFFFFFFFFFF8));
    }

    else
    {
      v7 = *v3;
    }

    v8 = 0;
    for (i = v7; ; i = v10 + 1)
    {
      v10 = i & v6;
      v11 = v15[3] + 16 * v10;
      v12 = *(v11 + 4);
      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      if (v12 == -1)
      {
        break;
      }

      v13 = *(v3 + 1);
      *(v3 + 1) = *(v11 + 8);
      *(v11 + 8) = v13;
      *(v11 + 4) = v8;
      LODWORD(v13) = *v11;
      *v11 = v7;
      v8 = v12;
      LODWORD(v7) = v13;
LABEL_11:
      ++v8;
    }

    *(v11 + 8) = *(v3 + 1);
    *(v3 + 1) = 0;
    *v11 = v7;
    *(v11 + 4) = v8;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v15[5] = *(a1 + 48);
  sub_29A10A4B4(&v14, a1);
  v16 = v15;
  sub_29A36B0E8(&v16);
}

atomic_uint *sub_29A44BED8(atomic_uint *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 6)
  {
    if (a2 >> 58)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = *(result + 1) - *result;
    v16 = result;
    v4 = sub_29A0BE3C0(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[64 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A44C53C(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A44C69C(&v12);
  }

  return result;
}

void sub_29A44BF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A44C69C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A44BF94(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A44C974(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    v4 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(v3 + 56) = *(a2 + 56);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

__n128 sub_29A44C010(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A204E708;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  *(v2 + 7) = *(a1 + 56);
  return result;
}

__n128 sub_29A44C074(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204E708;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29A44C0BC(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  if (pxrInternal__aapl__pxrReserved__::Pcp_IsVariableExpression(&__dst))
  {
    v6 = *(sub_29A4184C4(*(a1 + 8)) + 400);
    sub_29A008E78(&__p, "reference");
    pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression(&__dst, v6, &__p, *(a1 + 16), *(a1 + 24), **(a1 + 32), **(a1 + 40), &v17);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    *&__dst.__r_.__value_.__l.__data_ = v17;
    __dst.__r_.__value_.__r.__words[2] = v18;
    BYTE7(v18) = 0;
    LOBYTE(v17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      *a3 = 0;
      a3[56] = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v8 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = __dst.__r_.__value_.__l.__size_;
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(*(a1 + 16), &__dst, &v17);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  *v25 = v17;
  v26 = v18;
LABEL_19:
  *&v17 = 0;
  pxrInternal__aapl__pxrReserved__::SdfReference::SdfReference(&__p, v25, a2 + 24, a2 + 32, &v17);
  sub_29A184A10(&v17, 0);
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v24, (a2 + 48));
  v9 = *(a1 + 16);
  v11 = *v9;
  v10 = v9[1];
  *&v17 = v11;
  *(&v17 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v12 = **(a1 + 56);
  if (v12)
  {
    v18 = *v12;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v18, 0.0, 1.0);
  }

  v19 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v20 = 0;
  v13 = *(a1 + 48);
  p_p = &__p;
  v14 = sub_29A44C718(v13, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &p_p);
  v15 = v14[12];
  *(v14 + 11) = v17;
  *(&v17 + 1) = 0;
  if (v15 && atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  *&v17 = 0;
  *(v14 + 13) = v18;
  if (*(v14 + 143) < 0)
  {
    operator delete(v14[15]);
  }

  *(v14 + 5) = v19;
  *(&v19.__r_.__value_.__s + 23) = 0;
  v19.__r_.__value_.__s.__data_[0] = 0;
  *(v14 + 36) = v20;
  v16 = *(&v17 + 1);
  if (*(&v17 + 1) && atomic_fetch_add_explicit((*(&v17 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  sub_29A32553C(a3, &__p);
  sub_29A184A10(&v24, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v23);
  sub_29A1DE3A4(&v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A44C41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  sub_29A244AAC(&a18);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A44C4F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204E778))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A44C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
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
      *(a4 + 16) = *(v7 + 16);
      v8 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v8;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(a4 + 56) = *(v7 + 56);
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29B2A3944(a1, v5);
      v5 += 64;
    }
  }

  return sub_29A44C610(v10);
}

uint64_t sub_29A44C610(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A44C648(a1);
  }

  return a1;
}

uint64_t *sub_29A44C648(uint64_t *result)
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
      result = sub_29B2A3944(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

atomic_uint *sub_29A44C69C(atomic_uint *a1)
{
  sub_29A44C6D0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint *sub_29A44C6D0(atomic_uint *result)
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
      result = sub_29B2A3944(v4, v1 - 64);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *sub_29A44C718(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A37A54C(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A44C7B0(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29A44C7B0@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0x98uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A44C830(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A44C830(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, v3 + 6);
  sub_29A1E2240(__dst + 7, v3 + 7);
  *(__dst + 2) = v3[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (v3 + 3));
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 56) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__dst + 9, 0.0, 1.0);
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  return __dst;
}

void sub_29A44C8D4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29A244AAC(v1);
  _Unwind_Resume(a1);
}

void sub_29A44C914(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A39CC(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A44C974(uint64_t *a1, uint64_t a2)
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[64 * v7];
  *v9 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v9 + 1) = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v9 + 6) = *(a2 + 48);
  *(v9 + 2) = v10;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(v9 + 14) = *(a2 + 56);
  *&v19 = v9 + 64;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A44C53C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A44C69C(&v17);
  return v16;
}

void sub_29A44CA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A44C69C(va);
  _Unwind_Resume(a1);
}

void sub_29A44CAA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A3D5C(a2, a1);
  }
}

__n128 sub_29A44CAE0(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A204E798;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  *(v2 + 7) = *(a1 + 56);
  return result;
}

__n128 sub_29A44CB44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204E798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29A44CB8C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  if (pxrInternal__aapl__pxrReserved__::Pcp_IsVariableExpression(&__dst))
  {
    v6 = *(sub_29A4184C4(*(a1 + 8)) + 400);
    sub_29A008E78(&__p, "payload");
    pxrInternal__aapl__pxrReserved__::Pcp_EvaluateVariableExpression(&__dst, v6, &__p, *(a1 + 16), *(a1 + 24), **(a1 + 32), **(a1 + 40), &v17);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    *&__dst.__r_.__value_.__l.__data_ = v17;
    __dst.__r_.__value_.__r.__words[2] = v18;
    BYTE7(v18) = 0;
    LOBYTE(v17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      *a3 = 0;
      *(a3 + 48) = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v8 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = __dst.__r_.__value_.__l.__size_;
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(*(a1 + 16), &__dst, &v17);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  *v25 = v17;
  v26 = v18;
LABEL_19:
  pxrInternal__aapl__pxrReserved__::SdfPayload::SdfPayload(&__p, v25, a2 + 24, a2 + 32);
  v9 = *(a1 + 16);
  v11 = *v9;
  v10 = v9[1];
  *&v17 = v11;
  *(&v17 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v12 = **(a1 + 56);
  if (v12)
  {
    v18 = *v12;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v18, 0.0, 1.0);
  }

  v19 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v20 = 0;
  v13 = *(a1 + 48);
  p_p = &__p;
  v14 = sub_29A44CFF0(v13, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &p_p);
  v15 = v14[11];
  *(v14 + 5) = v17;
  *(&v17 + 1) = 0;
  if (v15 && atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  *&v17 = 0;
  *(v14 + 6) = v18;
  if (*(v14 + 135) < 0)
  {
    operator delete(v14[14]);
  }

  *(v14 + 14) = v19;
  *(&v19.__r_.__value_.__s + 23) = 0;
  v19.__r_.__value_.__s.__data_[0] = 0;
  *(v14 + 34) = v20;
  v16 = *(&v17 + 1);
  if (*(&v17 + 1) && atomic_fetch_add_explicit((*(&v17 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  *a3 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_29A1DDD84((a3 + 24), &v22);
  sub_29A1DDDC0((a3 + 28), &v23);
  *(a3 + 32) = v24;
  *(a3 + 48) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
  sub_29A1DE3A4(&v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A44CEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  sub_29A249058(&a17);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A44CFA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204E808))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A44CFF0(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A37EF30(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A44D088(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A44D088@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A44D108(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

_BYTE *sub_29A44D108(_BYTE *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, v3 + 6);
  sub_29A1E2240(__dst + 7, v3 + 7);
  v5 = v3[2];
  *(__dst + 4) = 0u;
  *(__dst + 2) = v5;
  *(__dst + 3) = 0u;
  *(__dst + 5) = 0u;
  *(__dst + 6) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__dst + 8, 0.0, 1.0);
  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  return __dst;
}

void sub_29A44D19C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29A249058(v1);
  _Unwind_Resume(a1);
}

void sub_29A44D1BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3A84(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A44D21C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A3DA4(a2, a1);
  }
}

uint64_t sub_29A44D254(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A3B7E90(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

_DWORD *sub_29A44D3F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_29A1DDD84((v4 + 16), (a2 + 16));
  result = sub_29A1DDDC0((v4 + 20), (a2 + 20));
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_29A44D450(uint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_29A1DDD84(v8 + 4, (a2 + 16));
  sub_29A1DDDC0(v8 + 5, (a2 + 20));
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29A423A50(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A423BB4(&v15);
  return v14;
}

void sub_29A44D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A423BB4(va);
  _Unwind_Resume(a1);
}

__n128 sub_29A44D59C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204E860;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A44D5E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204E860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_DWORD *sub_29A44D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_29A449B20(*(a1 + 8), a2, a3);
  sub_29A321960(v12, v7);
  v8 = *(a1 + 16);
  v14 = a3;
  v9 = sub_29A44D74C(v8, a3, &unk_29B4D6118, &v14);
  sub_29B2A3DEC(v9, v10, &v13, &v14, v12);
  sub_29A1E21F4(v12, a3);
  sub_29A1E2240(v12 + 1, (a3 + 4));
  sub_29A1DDD84(a4, v12);
  sub_29A1DDDC0((a4 + 4), v12 + 1);
  *(a4 + 8) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12 + 1);
  return sub_29A1DE3A4(v12);
}

void sub_29A44D6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A44D700(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204E8D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A44D74C(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A38932C(a1, &v9);
  result = *v6;
  if (!*v6)
  {
    sub_29A44D7E4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_29A44D7E4@<X0>(uint64_t a1@<X0>, _DWORD **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x68uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A44D864(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A44D864(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset((a1 + 24), 0.0, 1.0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_29A44D8C8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

void sub_29A44D8E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3B30(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A44D948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A3E88(a2, a1);
  }
}

__n128 sub_29A44D980(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204E8F0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A44D9CC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204E8F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_29A44D9FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_29A449B20(*(a1 + 8), a2, a3);
  sub_29A321960(&v13, v7);
  v8 = *(a1 + 16);
  v15 = a3;
  v9 = sub_29A44DBA4(v8, a3, &unk_29B4D6118, &v15);
  v10 = v9[8];
  *(v9 + 7) = v13;
  *(&v13 + 1) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(&v13 + 1);
    *&v13 = 0;
    if (*(&v13 + 1) && atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(&v13, *a3, *(a3 + 1));
  }

  else
  {
    v13 = *a3;
    v14 = *(a3 + 2);
  }

  result = *&v13;
  *a4 = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = 1;
  return result;
}

void sub_29A44DB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A44DB58(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204E960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A44DBA4(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A44DC3C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29A44DC3C@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0x78uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A44DCBC(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A44DCBC(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 24) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__dst + 5, 0.0, 1.0);
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  return __dst;
}

void sub_29A44DD34(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29B2948E4(v1);
  _Unwind_Resume(a1);
}

void sub_29A44DD54(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A3BC0(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A44DDB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29B2A3ED0(a2, a1);
  }
}

uint64_t sub_29A44DDEC(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1EFFD4(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A44DE74(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

_BYTE *sub_29A44DE74(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A095E3C((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_29A095E3C((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_29A095E3C((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    sub_29A095E3C((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
    sub_29A095E3C((a1 + 104), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
    sub_29A095E3C((a1 + 128), *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  }

  return a1;
}

uint64_t sub_29A44DF58(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A24D414(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      sub_29A028554(v6, *v5, (v5 + 8));
    }

    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

char *sub_29A44DFEC(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= &v9[-v10] >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = sub_29A44E1B8(a1, v18 + a3, a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v18 + v7);
      }

      sub_29A03D458(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = 16 * a5;
    v23 = v21;
    v24 = &v21[16 * a5];
    do
    {
      *v23 = *v7;
      v23 += 16;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
      v22 -= 16;
    }

    while (v22);
    memcpy(v24, v5, a1[1] - v5);
    v25 = *a1;
    v26 = &v24[a1[1] - v5];
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = &v21[-(v5 - v25)];
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

_OWORD *sub_29A44E1B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4;
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      *v4++ = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      a2 += 16;
    }

    while (a2 != a3);
    v9 = v4;
  }

  v7 = 1;
  sub_29A426E94(v6);
  return v4;
}

void sub_29A44E22C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 48);
  if (v6 >= 1 && *(a1 + 56) - v7 < v6)
  {
    v9 = *(a1 + 68);
    v10 = vcvtps_u32_f32((v7 + v6) / v9);
    v11 = vcvtps_u32_f32(v7 / v9);
    if (v11 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    sub_29A44BDA4(a1, v12);
  }

  for (; v4 != a3; ++v4)
  {
    sub_29A44E2CC(a1, v4, v4);
  }
}

uint64_t sub_29A44E2CC(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while ((*(result + 8) ^ *a2) >= 8)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A44BC54(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4] + 16 * v8;
      if (*(v12 + 4) == -1)
      {
        v13 = *a3;
        *(v12 + 8) = *a3;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v12 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        *v12 = v5;
        *(v12 + 4) = v10;
      }

      else
      {
        sub_29A44E448(a1, v8, v10, v5, a3);
      }

      ++a1[6];
      return a1[4] + 16 * v8;
    }
  }

  return result;
}

uint64_t *sub_29A44E448(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = *a5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  result = sub_29A3735D4(a1, a2, a3, a4, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

int *sub_29A44E4C4(int *result)
{
  v1 = result;
  if (*(result + 16) <= 0.0)
  {
    v2 = *(result + 1);
    for (i = *(result + 2); v2 != i; v2 += 16)
    {
      if (*(v2 + 4) != -1)
      {
        v4 = *(v2 + 8);
        if ((v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v2 + 4) = -1;
      }
    }

    *(result + 6) = 0;
    *(result + 72) = 0;
  }

  else
  {
    *result = 0;
    sub_29A36B13C(result + 1);
    result = sub_29A439BC8();
    *(v1 + 36) = 0;
    *(v1 + 4) = result;
    *(v1 + 5) = 0;
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
  }

  return result;
}

void sub_29A44E580()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 0, "PcpDependencyTypeNone", "non-dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 1, "PcpDependencyTypeRoot", "root dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 2, "PcpDependencyTypePurelyDirect", "purely-direct dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 4, "PcpDependencyTypePartlyDirect", "partly-direct dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 6, "PcpDependencyTypeDirect", "direct dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 8, "PcpDependencyTypeAncestral", "ancestral dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 16, "PcpDependencyTypeVirtual", "virtual dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 32, "PcpDependencyTypeNonVirtual", "non-virtual dependency");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 47, "PcpDependencyTypeAnyNonVirtual", "any non-virtual dependency");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204E9E0, 63, "PcpDependencyTypeAnyIncludingVirtual", "any dependency");
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpNodeIntroducesDependency(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(this))
  {
    return 1;
  }

  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (ArcType == 1)
  {
    goto LABEL_6;
  }

  if (ArcType != 6)
  {
    return 1;
  }

  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
  v6 = v5;
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
  v8 = v7;
  result = 0;
  if (v6 == v10 && ParentNode == v8)
  {
LABEL_6:
    OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(this);
    v13 = v12;
    v14 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
    result = 0;
    if (v13 == v15 && OriginNode == v14)
    {
      return 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpClassifyNodeDependency(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this))
  {
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(this))
  {
    result = pxrInternal__aapl__pxrReserved__::PcpNodeIntroducesDependency(this, v3);
    if (!result)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  v12 = *this;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v12) && v6 != -1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      IsDueToAncestor = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(&v12);
      v8 |= IsDueToAncestor ^ 1;
      v7 |= IsDueToAncestor;
      if (v7 & 1) != 0 && (v8)
      {
        goto LABEL_16;
      }

      *&v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v12);
      *(&v12 + 1) = v10;
    }

    while (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v12) && v11 != -1);
    if (v8)
    {
      if (v7)
      {
LABEL_16:
        v5 |= 4u;
        return ~(2 * v5) & 0x20 | v5;
      }

      v5 |= 2u;
    }

    else if (v7)
    {
      v5 |= 8u;
    }
  }

  return ~(2 * v5) & 0x20 | v5;
}

void pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(pxrInternal__aapl__pxrReserved__ *this@<X0>, std::string *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  if (this == 1)
  {
    sub_29A008E78(__p, "root");
    sub_29AA9E938(&v6, __p, __p);
    goto LABEL_19;
  }

  v3 = this;
  if (!this)
  {
    sub_29A008E78(__p, "none");
    sub_29AA9E938(&v6, __p, __p);
    goto LABEL_19;
  }

  if ((this & 2) != 0 && (sub_29A008E78(__p, "purely-direct"), sub_29AA9E938(&v6, __p, __p), v5 < 0))
  {
    operator delete(__p[0]);
    if ((v3 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_11;
  }

  sub_29A008E78(__p, "partly-direct");
  sub_29AA9E938(&v6, __p, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_11:
  if ((v3 & 8) != 0 && (sub_29A008E78(__p, "ancestral"), sub_29AA9E938(&v6, __p, __p), v5 < 0))
  {
    operator delete(__p[0]);
    if ((v3 & 0x10) != 0)
    {
LABEL_14:
      sub_29A008E78(__p, "virtual");
      sub_29AA9E938(&v6, __p, __p);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    goto LABEL_14;
  }

  if ((v3 & 0x20) == 0)
  {
    goto LABEL_21;
  }

  sub_29A008E78(__p, "non-virtual");
  sub_29AA9E938(&v6, __p, __p);
LABEL_19:
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v6, a2);
  sub_29A019EE8(&v6, v7[0]);
}

void sub_29A44EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A019EE8(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpGatherDependentNamespaceEdits@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, pxrInternal__aapl__pxrReserved__::PcpCache ***a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 56) = 1065353216;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 1065353216;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 1065353216;
  v73 = 0;
  v74 = 0;
  v11 = (a3[1] - *a3) >> 4;
  v75 = 0;
  sub_29A44FA30(&v73, v11);
  v12 = *a3;
  for (i = a3[1]; v12 != i; v12 += 16)
  {
    v14 = *(v12 + 8);
    v66 = *v12;
    v67 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
    }

    v68 = 0;
    sub_29A44FB0C(&v73, &v66);
    v15 = v67;
    if (v67 && atomic_fetch_add_explicit(v67 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (*a4)
  {
    sub_29A41CF24(&v80, a4);
    pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::PcpLayerRelocatesEditBuilder(&v66, &v80, a5);
    sub_29B28F9E0(&v80);
    v60[0] = 0;
    v60[1] = 0;
    *&v61 = 0;
    if ((pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::Relocate(&v66, a1, a2, v60) & 1) == 0)
    {
      v80 = "pcp/dependentNamespaceEditUtils.cpp";
      v81 = "PcpGatherDependentNamespaceEdits";
      v82 = 1651;
      v83 = "PcpDependentNamespaceEdits pxrInternal__aapl__pxrReserved__::PcpGatherDependentNamespaceEdits(const SdfPath &, const SdfPath &, const SdfLayerHandleVector &, const PcpLayerStackRefPtr &, const SdfLayerHandle &, const std::vector<const PcpCache *> &)";
      v84 = 0;
      v52 = v60;
      if (SBYTE7(v61) < 0)
      {
        v52 = v60[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v80, 1, "Cannot get relocates edits because: %s", v52);
    }

    pxrInternal__aapl__pxrReserved__::PcpLayerRelocatesEditBuilder::GetEdits(&v66, &v80);
    if (v80 != v81)
    {
      if (v73 != v74)
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier();
      }

      v53 = v80[1];
      v63 = *v80;
      v64 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53 + 2, 1u, memory_order_relaxed);
      }

      v65 = 1;
      sub_29A44FB0C(&v73, &v63);
      sub_29B28CF5C(&v64);
      sub_29A4596AC();
    }

    v79 = &v80;
    sub_29A459624(&v79);
    if (SBYTE7(v61) < 0)
    {
      operator delete(v60[0]);
    }

    sub_29A1FFFD0(v72, v72[1]);
    v80 = &v71;
    sub_29A459624(&v80);
    if (__p == 1)
    {
      sub_29A1EF938(&v66, v67);
    }
  }

  v16 = *a6;
  v54 = a6[1];
  if (*a6 != v54)
  {
    do
    {
      v55 = v16;
      v17 = *v16;
      if (sub_29A418240(5))
      {
        LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(v17);
        sub_29A4182A4(LayerStackIdentifier);
        v26 = &v66;
        if (v69 < 0)
        {
          LOBYTE(v26) = v66;
        }

        sub_29A44FBC0("Computing dependent namespace edits for PcpCache %s", v19, v20, v21, v22, v23, v24, v25, v26);
        if (v69 < 0)
        {
          operator delete(v66);
        }
      }

      v56 = sub_29A418240(5);
      if (v56)
      {
        sub_29B2A4188();
      }

      if (v73 != v74)
      {
        pxrInternal__aapl__pxrReserved__::PcpCache::FindSiteDependencies(v17, &v62);
      }

      if (v56)
      {
        sub_29B2A418C();
      }

      v16 = v55 + 1;
    }

    while (v55 + 1 != v54);
  }

  v27 = v77;
  if (v77)
  {
    v29 = (v77 + 32);
    v28 = *(v77 + 32);
    v59 = v77 + 16;
    v30 = *(v77 + 40);
    v31 = (v30 - v28) >> 4;
    if (v31 >= 2)
    {
      v32 = 126 - 2 * __clz(v31);
      v33 = v30 == v28 ? 0 : v32;
      sub_29A4574BC(v28, *(v77 + 40), v33, 1);
      v34 = v27[4];
      v30 = v27[5];
      v35 = v34 + 2;
      if (v30 != v34 + 2)
      {
        do
        {
          if (*v35 == *v34)
          {
            if (v35[1] != v34[1])
            {
              sub_29A1DA6E4(v59);
            }

            sub_29A458C20(&v66, (v35 + 2), v30);
            v30 = v36;
            for (j = v27[5]; j != v30; sub_29A4542B0((v27 + 4), j))
            {
              j -= 4;
            }

            v27[5] = v30;
          }

          else
          {
            v34 += 2;
            v35 += 2;
          }
        }

        while (v35 != v30);
      }
    }

    v39 = v27[7];
    v38 = v27[8];
    if (v39 != v38)
    {
      do
      {
        sub_29A1E21F4(v60, v39);
        sub_29A1E2240(v60 + 1, v39 + 1);
        v60[1] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v60[1]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v60[1] + 1);
        v41 = v27[4];
        v40 = v27[5];
        if (v40 != v41)
        {
          v66 = &v41[16 * (((v40 - v41) >> 4) >> 1)];
          v67 = (v66 + 8);
          v80 = v60;
          v81 = &v60[1];
          sub_29A458A28();
        }

        v42 = v27[5];
        if (v40 == v42 || *v42 != *v39)
        {
          sub_29A457360(v27 + 4, v42, v60);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60[1] + 1);
        sub_29A1DE3A4(&v60[1]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
        sub_29A1DE3A4(v60);
        v39 += 2;
      }

      while (v39 != v38);
      v30 = v27[5];
    }

    v43 = *v29;
    if (*v29 != v30)
    {
      do
      {
        v44 = *v29;
        v45 = v43;
        do
        {
          if (v45 == v44)
          {
            goto LABEL_52;
          }

          v45 = (v45 - 16);
        }

        while (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v43, v45));
        v44 = (v45 + 16);
LABEL_52:
        if (v44 == *v29 || (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v44 - 2) || pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v43 + 2)) && (pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v66, v43, (v44 - 16), (v44 - 8), 1), v46 = v66, v47 = *(v43 + 1), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v66 + 1), sub_29A1DE3A4(&v66), v46 != v47))
        {
          v43 = (v43 + 16);
          v49 = v27[5];
        }

        else
        {
          sub_29A458C20(&v66, v43 + 16, v27[5]);
          v49 = v48;
          for (k = v27[5]; k != v49; sub_29A4542B0((v27 + 4), k))
          {
            k = (k - 16);
          }

          v27[5] = v49;
        }
      }

      while (v43 != v49);
    }

    sub_29A458FE8();
  }

  v66 = &v73;
  sub_29A163228(&v66);
  return sub_29A44FC2C(&v76);
}