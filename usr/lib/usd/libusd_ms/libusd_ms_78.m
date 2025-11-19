void pxrInternal__aapl__pxrReserved__::_GetSourceArcs<(pxrInternal__aapl__pxrReserved__::PcpArcType)4>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
  pxrInternal__aapl__pxrReserved__::PcpComposeSiteReferences(LayerStack);
}

void sub_29A486164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_GetSourceArcs<(pxrInternal__aapl__pxrReserved__::PcpArcType)5>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
  pxrInternal__aapl__pxrReserved__::PcpComposeSitePayloads(LayerStack);
}

void sub_29A4861E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_NeedToRecomputeDueToAssetPathChange(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(this, 6u, &v9);
  v2 = v9;
  v3 = v10;
  v4 = v11;
  v5 = v12;
  if (v9 != v11 || v10 != v12)
  {
    do
    {
      v8[0] = v2;
      v8[1] = v3;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(v8))
      {
        sub_29A49A2E8(v8, 4, &v17);
        if (v18 != v20 || v17 != v19)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          pxrInternal__aapl__pxrReserved__::_GetSourceArcs<(pxrInternal__aapl__pxrReserved__::PcpArcType)4>(v8, &v13);
        }

        sub_29A49A2E8(v8, 5, &v17);
        if (v18 != v20 || v17 != v19)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          pxrInternal__aapl__pxrReserved__::_GetSourceArcs<(pxrInternal__aapl__pxrReserved__::PcpArcType)5>(v8, &v13);
        }
      }

      ++v3;
    }

    while (v2 != v4 || v3 != v5);
  }

  return 0;
}

void sub_29A486604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  a15 = &a20;
  sub_29A24A5D0(&a15);
  a15 = &a23;
  sub_29A492688(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpComputePrimIndex(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v10, "Pcp", "PcpComputePrimIndex");
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a1))
  {
    IsAbsoluteRootOrPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a1);
    if (IsAbsoluteRootOrPrimPath & 1) != 0 || (IsAbsoluteRootOrPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a1), (IsAbsoluteRootOrPrimPath))
    {
      if (!a5)
      {
        pxrInternal__aapl__pxrReserved__::ArGetResolver(IsAbsoluteRootOrPrimPath);
      }

      sub_29A419260(a2);
    }
  }

  v12[0] = "pcp/primIndex.cpp";
  v12[1] = "PcpComputePrimIndex";
  v12[2] = 5542;
  v12[3] = "void pxrInternal__aapl__pxrReserved__::PcpComputePrimIndex(const SdfPath &, const PcpLayerStackPtr &, const PcpPrimIndexInputs &, PcpPrimIndexOutputs *, ArResolver *)";
  LOBYTE(v13) = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Path <%s> must be an absolute path to a prim, a prim variant-selection, or the pseudo-root.", Text);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }
}

void sub_29A486E84(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v3 = *(v2 - 184);
  if (v3)
  {
    *(v2 - 176) = v3;
    operator delete(v3);
  }

  sub_29A424AA8(va);
}

uint64_t sub_29A486FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a9)
{
  v21 = *MEMORY[0x29EDCA608];
  v11 = a9;
  if (a7)
  {
    v11 = *(a7 + 48);
  }

  v19 = 0;
  v20 = 0;
  if (sub_29A418240(2))
  {
    v19 = a9;
    v20 = v11;
    pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug::_PushIndex(&v19, a1);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((a1 + 8)) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((a1 + 8)) || (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath((a1 + 8)) & 1) != 0) || (v17[0] = "pcp/primIndex.cpp", v17[1] = "Pcp_BuildPrimIndex", v17[2] = 5377, v17[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_BuildPrimIndex(const PcpLayerStackSite &, const PcpLayerStackSite &, int, BOOL, BOOL, BOOL, PcpPrimIndex_StackFrame *, const PcpPrimIndexInputs &, PcpPrimIndexOutputs *)", LOBYTE(v18) = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8)), v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, Text), result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "site.path.IsAbsolutePath() && (site.path.IsAbsoluteRootOrPrimPath() || site.path.IsPrimVariantSelectionPath())", v15), (result & 1) != 0))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((a1 + 8)))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph::New(a1, *(a8 + 97));
  }

  if (v19)
  {
    return pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug::_PopIndex(&v19);
  }

  return result;
}

void sub_29A48AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8((v64 - 160));
  sub_29A48C5C8(&a29);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComputePrimChildNames(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a1, uint64_t **a2, uint64_t a3)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a1);
    v8[0] = v6;
    v8[1] = v7;
    sub_29A48B9A8(a1, v8, a2, a3);
  }
}

void sub_29A48B9A8(void **a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t **a3, uint64_t a4)
{
  sub_29A49909C(&v11, *a3, a3[1], 0);
  if (pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsInstanceable(a1))
  {
    v13[0] = a1;
    v13[1] = a3;
    v13[2] = &v11;
    v13[3] = a4;
    sub_29A4991E4(a2, v13);
  }

  else
  {
    sub_29A49911C(a2, a3, &v11, a4);
  }

  if (*(a4 + 48))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      while (*(a4 + 32) + 16 * *(a4 + 40) == sub_29A499B8C(a4, v8))
      {
        if (++v8 == v9)
        {
          v8 = v9;
          goto LABEL_18;
        }
      }

      if (v8 != v9)
      {
        for (i = v8 + 1; i != v9; ++i)
        {
          if (*(a4 + 32) + 16 * *(a4 + 40) == sub_29A499B8C(a4, i))
          {
            if (i != v8)
            {
              if ((*v8 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v8 = *i;
              *i = 0;
            }

            ++v8;
          }
        }
      }
    }

LABEL_18:
    sub_29A3203E8(a3, v8, a3[1]);
  }

  v13[0] = &v12;
  sub_29A36B0E8(v13);
}

void sub_29A48BB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 56) = &a11;
  sub_29A36B0E8((v11 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComputePrimChildNamesInSubtree(void **a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t **a3, uint64_t a4)
{
  if (*a1)
  {
    if (*a2 == *a1)
    {

      sub_29A48B9A8(a1, a2, a3, a4);
    }

    else
    {
      v8 = v4;
      v9 = v5;
      v6[0] = "pcp/primIndex.cpp";
      v6[1] = "ComputePrimChildNamesInSubtree";
      v6[2] = 5893;
      v6[3] = "void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComputePrimChildNamesInSubtree(const PcpNodeRef &, TfTokenVector *, PcpTokenSet *) const";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Subtree root node is not a node in this prim index");
    }
  }
}

void pxrInternal__aapl__pxrReserved__::PcpPrimIndex::ComputePrimPropertyNames(pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a1, uint64_t **a2)
{
  if (*a1)
  {
    sub_29A439A68(&v8, 0, 0.0, 0.5);
    sub_29A44E22C(&v8, *a2, a2[1]);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(a1);
    v7[0] = v4;
    v7[1] = v5;
    if (*a1)
    {
      v6 = (*(sub_29A42AF94(a1) + 56) >> 3) & 1;
    }

    else
    {
      v6 = 0;
    }

    sub_29A48BC98(v7, v6, a2, &v8);
    v7[0] = &v9;
    sub_29A36B0E8(v7);
  }
}

void sub_29A48BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a10 = &a13;
  sub_29A36B0E8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A48BC98(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a1);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + 1);
    v28 = *a1;
    v29 = v9;
    v10 = **(v28 + 16);
    v11 = *(v10 + 48 * v9 + 30);
    v22 = v28;
    v23 = v11;
    v24 = v10;
    v25 = v28;
    v12 = 0xFFFFLL;
    v26 = 0xFFFFLL;
    v27 = v10;
    while (v11 != v12 || v22 != v25)
    {
      v13 = sub_29A424AF0(&v22);
      sub_29A48BC98(v13, a2, a3, a4);
      sub_29A424B3C(&v22);
      v11 = v23;
      v12 = v26;
    }

    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a1);
    if (result)
    {
      LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
      v15 = sub_29A4184C4(LayerStack);
      Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v15);
      Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      if (v18)
      {
        if (a2)
        {
LABEL_9:
          v19 = 0;
          return pxrInternal__aapl__pxrReserved__::PcpComposeSiteChildNames(Layers, Path, v18 + 40, a3, a4, v19);
        }
      }

      else
      {
        v18 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        if (a2)
        {
          goto LABEL_9;
        }
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v20)
      {
        v21 = v18;
        v20 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        v18 = v21;
      }

      v19 = (v20 + 280);
      return pxrInternal__aapl__pxrReserved__::PcpComposeSiteChildNames(Layers, Path, v18 + 40, a3, a4, v19);
    }
  }

  return result;
}

_WORD *sub_29A48BDF8(_WORD *a1, unint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a2 >= 0x10000)
  {
    sub_29B2A858C(v6);
  }

  if (a3 >= 0x10000)
  {
    sub_29B2A85D8(v6);
  }

  return a1;
}

void sub_29A48BE58(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, uint64_t a2)
{
  if (sub_29A418240(2))
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      v6 = (v5 + 48);
    }

    else
    {
      v6 = (a2 + 32);
    }

    v7 = *v6;
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(a1, &v23);
    pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v17, &v23, v8);
    if ((SBYTE7(v18) & 0x80u) == 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = v17[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Evaluating payload for %s", v9, v10, v11);
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::Pcp_IndexingPhaseScope(&v25, v7, a1, &v12);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v24 + 1);
    sub_29A1DE3A4(v24);
    sub_29A41B088();
  }

  v25 = 0;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a1))
  {
    v23 = 0;
    v24[0] = 0;
    v24[1] = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    *v17 = 0u;
    v18 = 0u;
    v19 = 1065353216;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
    pxrInternal__aapl__pxrReserved__::PcpComposeSitePayloads(LayerStack);
  }
}

void sub_29A48C420(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_29A424AA8(v36 - 120);
}

uint64_t sub_29A48C580(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_29A48C5C8(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    sub_29A4973FC(a1 + 152);
  }

  v2 = (a1 + 80);
  sub_29A48C99C(&v2);
  sub_29A48C764((a1 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  sub_29A41B088();
}

pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug *sub_29A48C644(pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug *this)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug::_PopIndex(this);
  }

  return this;
}

void **sub_29A48C764(void **a1)
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
        v3 -= 56;
        sub_29A48CAA0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_29A48C7C8(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16 = a2;
  v7 = sub_29A10A6B8(a1, &v16);
  v7[1] = 0;
  v8 = v16;
  v7[2] = 0;
  v7[3] = 0;
  v17 = (v7 + 1);
  v18 = 0;
  if (v8)
  {
    if (v8 >> 58)
    {
      sub_29A00C9A4();
    }

    v9 = operator new(v8 << 6);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    v10 = &v9[16 * v8];
    *(a1 + 24) = v10;
    v11 = v9;
    do
    {
      *v11 = 0;
      *(v11 + 2) = -1;
      *(v11 + 6) = 0;
      v11 += 16;
    }

    while (v11 != v10);
    *(a1 + 16) = v10;
  }

  else if (atomic_load_explicit(&qword_2A1742020, memory_order_acquire))
  {
    v9 = &dword_2A1742078;
  }

  else
  {
    sub_29B2A8624(&v17);
    v9 = v17;
  }

  v12 = v16;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v12 >> 58)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v12)
  {
    *(*(a1 + 16) - 58) = 1;
  }

  v13 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v13;
  *(a1 + 56) = (v13 * v12);
  return a1;
}

void sub_29A48C968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, void **a11)
{
  a11 = a9;
  sub_29A48C99C(&a11);
  _Unwind_Resume(a1);
}

void sub_29A48C99C(void ***a1)
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
        v4 -= 64;
        sub_29A48CA48(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A48CA48(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 60));
    sub_29A1DE3A4((a1 + 56));
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 4) = -1;
  }
}

void sub_29A48CAA0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t sub_29A48CAFC(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v28 = a1;
  v29 = a2;
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v28);
  if (result)
  {
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v28);
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v28);
    HasPrimSpecs = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path);
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSpecs(&v28, HasPrimSpecs);
  }

  if ((*(a3 + 97) & 1) == 0)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(&v28);
    if ((result & 1) == 0)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v28);
      if (result)
      {
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPermission(&v28))
        {
          v10 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v28);
          v11 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v28);
          v12 = pxrInternal__aapl__pxrReserved__::PcpComposeSitePermission(v10, v11);
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetPermission(&v28, v12);
        }

        result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSymmetry(&v28);
        if ((result & 1) == 0)
        {
          v13 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v28);
          v14 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v28);
          HasSymmetry = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasSymmetry(v13, v14);
          result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSymmetry(&v28, HasSymmetry);
        }
      }
    }
  }

  v26 = v28;
  v27 = v29;
  v16 = **(v28 + 16);
  v17 = *(v16 + 48 * v29 + 28);
  v20 = v28;
  v21 = v17;
  v22 = v16;
  v23 = v28;
  v18 = 0xFFFFLL;
  v24 = 0xFFFFLL;
  v25 = v16;
  while (v17 != v18 || v20 != v23)
  {
    v19 = sub_29A41E444(&v20);
    sub_29A48CAFC(*v19, v19[1], a3, 0);
    result = sub_29A41E490(&v20);
    v17 = v21;
    v18 = v24;
  }

  if ((a4 & 1) == 0)
  {
    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetIsDueToAncestor(&v28, 1);
  }

  return result;
}

uint64_t sub_29A48CC80(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, uint64_t a2, char a3)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a1);
  if ((result & 1) == 0)
  {
    if ((a3 & 1) != 0 || !pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a1))
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1);
      v13 = *a1;
      if (result)
      {
        return result;
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
      v13 = *a1;
    }

    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(&v13, 1);
    v8 = *(a1 + 1);
    v18 = *a1;
    v19 = v8;
    v9 = **(v18 + 16);
    v10 = *(v9 + 48 * v8 + 28);
    *&v13 = v18;
    *(&v13 + 1) = v10;
    v14 = v9;
    v15 = v18;
    v11 = 0xFFFFLL;
    v16 = 0xFFFFLL;
    v17 = v9;
    while (v10 != v11 || v13 != v15)
    {
      v12 = sub_29A41E444(&v13);
      sub_29A48CC80(v12, a2, v7);
      result = sub_29A41E490(&v13);
      v10 = *(&v13 + 1);
      v11 = v16;
    }
  }

  return result;
}

void *sub_29A48CD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetCulled(&v17, 1);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(&v17, 1);
  }

  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetSpecContributionRestrictedDepth(&v17, 1);
  v15 = v17;
  v16 = v18;
  v5 = **(v17 + 16);
  v6 = *(v5 + 48 * v18 + 28);
  v9 = v17;
  v10 = v6;
  v11 = v5;
  v12 = v17;
  v7 = 0xFFFFLL;
  v13 = 0xFFFFLL;
  v14 = v5;
  while (v6 != v7 || v9 != v12)
  {
    v8 = sub_29A41E444(&v9);
    sub_29A48CD70(*v8, v8[1], a3);
    result = sub_29A41E490(&v9);
    v6 = v10;
    v7 = v13;
  }

  return result;
}

__int128 *sub_29A48CE30(__int128 *result, uint64_t a2, void **a3)
{
  v4 = result;
  v5 = *(*result + 8);
  if ((v5 - 3) <= 2)
  {
    for (i = *a3; i != a3[1]; i += 16)
    {
      if (*(*i + 8) == v5)
      {
        return result;
      }
    }
  }

  sub_29A017F80(a3, result);
  v9 = *(a2 + 32);
  v8 = (a2 + 32);
  v7 = v9;
  if (!v9)
  {
    v10 = operator new(0x18uLL);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
    sub_29A151CB4(v8, v10);
    v7 = *v8;
  }

  return sub_29A017F80(v7, v4);
}

void sub_29A48CEE0(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a2 + 1);
  v60[0] = *a2;
  v60[1] = v14;
  v15 = **(v60[0] + 16);
  v16 = *(v15 + 48 * v14 + 28);
  v55 = v60[0];
  *&v56 = v16;
  *(&v56 + 1) = v15;
  __p = v60[0];
  v17 = 0xFFFFLL;
  v58 = 0xFFFFLL;
  v59 = v15;
  while (v16 != v17 || v55 != __p)
  {
    v18 = sub_29A41E444(&v55);
    sub_29A48CEE0(a1, v18, a3, a4, a5, a6, a7);
    sub_29A41E490(&v55);
    v16 = v56;
    v17 = v58;
  }

  v53 = a2;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a2))
  {
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
    v20 = sub_29A4184C4(LayerStack);
    HasRelocates = pxrInternal__aapl__pxrReserved__::PcpLayerStack::HasRelocates(v20);
    v22 = 32;
    if (!HasRelocates)
    {
      v22 = 0;
    }

    v54 = v22;
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a2))
    {
      Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a2);
      v24 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
      v25 = sub_29A4184C4(v24);
      Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v25);
      v27 = *Layers;
      v28 = *(Layers + 8);
      if (*Layers != v28)
      {
        v52 = *(Layers + 8);
        do
        {
          v29 = *v27;
          if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(*v27, Path))
          {
            v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v30)
            {
              v30 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v29, Path, (v30 + 192), 0);
            v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v32)
            {
              v32 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            v33 = v54 | HasField;
            if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v29, Path, (v32 + 488), 0))
            {
              v33 |= 2uLL;
            }

            v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v34)
            {
              v34 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v29, Path, (v34 + 288), 0))
            {
              v33 |= 4uLL;
            }

            v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v35)
            {
              v35 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v29, Path, (v35 + 248), 0))
            {
              v33 |= 8uLL;
            }

            v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v36)
            {
              v36 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            v37 = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v29, Path, (v36 + 312), 0);
            v38 = v33 | 0x10;
            if (!v37)
            {
              v38 = v33;
            }

            v54 = v38;
            v28 = v52;
          }

          ++v27;
        }

        while (v27 != v28);
      }
    }
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  if ((a5 & 1) != 0 && (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v53) == 4 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v53) == 5))
  {
    v55 = 18;
    v56 = *v53;
    v58 = 0;
    v59 = 0;
    __p = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
    sub_29A48D97C(a1, &v55);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
    sub_29A1DE3A4(v60);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p);
    }
  }

  if (!a4)
  {
    if (!*(a1 + 201))
    {
      goto LABEL_51;
    }

    if ((v54 & 2) != 0)
    {
      v55 = 13;
      v56 = *v53;
      v58 = 0;
      v59 = 0;
      __p = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
      sub_29A48D97C(a1, &v55);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
      sub_29A1DE3A4(v60);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p);
      }
    }

    if ((v54 & 8) != 0 && (v55 = 17, v56 = *v53, v58 = 0, v59 = 0, __p = 0, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1), sub_29A48D97C(a1, &v55), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1), sub_29A1DE3A4(v60), SHIBYTE(v59) < 0))
    {
      operator delete(__p);
      if (!a6)
      {
        goto LABEL_74;
      }
    }

    else
    {
LABEL_51:
      if (!a6)
      {
        goto LABEL_74;
      }
    }

    v39 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v53);
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(v39))
    {
      v40 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v53);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v40, &v55);
      SpecContributionRestrictedDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSpecContributionRestrictedDepth(v53);
      if (SpecContributionRestrictedDepth && pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(&v55) >= SpecContributionRestrictedDepth && !pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v55))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v55, &v61);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v42 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v53);
      v43 = 0;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v55))
      {
        v44 = sub_29A4184C4(v42);
        v45 = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v44);
        v46 = *v45;
        v47 = *(v45 + 8);
        while (v46 != v47)
        {
          v48 = sub_29A3302A8(v46);
          v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v49)
          {
            v49 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v48, &v55, (v49 + 248), 0))
          {
            v43 |= 8uLL;
          }

          v50 = sub_29A3302A8(v46);
          v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v51)
          {
            v51 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v50, &v55, (v51 + 488), 0))
          {
            v43 |= 2uLL;
          }

          ++v46;
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v55, &v61);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v55 + 1);
      sub_29A1DE3A4(&v55);
    }

LABEL_74:
    if (a3)
    {
LABEL_90:
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v53) != 3)
      {
        return;
      }

      v55 = 1;
      v56 = *v53;
      v58 = 0;
      v59 = 0;
      __p = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
      sub_29A48D97C(a1, &v55);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
      goto LABEL_92;
    }

    if ((v54 & 0x10) != 0 && (v55 = 6, v56 = *v53, v58 = 0, v59 = 0, __p = 0, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1), sub_29A48D97C(a1, &v55), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1), sub_29A1DE3A4(v60), SHIBYTE(v59) < 0))
    {
      operator delete(__p);
      if ((v54 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if ((v54 & 1) == 0)
    {
      goto LABEL_81;
    }

    v55 = 4;
    v56 = *v53;
    v58 = 0;
    v59 = 0;
    __p = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
    sub_29A48D97C(a1, &v55);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
    sub_29A1DE3A4(v60);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p);
    }

LABEL_81:
    if ((v54 & 8) != 0 && (v55 = 3, v56 = *v53, v58 = 0, v59 = 0, __p = 0, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1), sub_29A48D97C(a1, &v55), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1), sub_29A1DE3A4(v60), SHIBYTE(v59) < 0))
    {
      operator delete(__p);
      if ((v54 & 4) != 0)
      {
LABEL_84:
        v55 = 2;
        v56 = *v53;
        v58 = 0;
        v59 = 0;
        __p = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
        sub_29A48D97C(a1, &v55);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
        sub_29A1DE3A4(v60);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(__p);
        }
      }
    }

    else if ((v54 & 4) != 0)
    {
      goto LABEL_84;
    }

    if ((v54 & 0x20) != 0)
    {
      v55 = 0;
      v56 = *v53;
      v58 = 0;
      v59 = 0;
      __p = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
      sub_29A48D97C(a1, &v55);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
      sub_29A1DE3A4(v60);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_90;
  }

  if (!*(a1 + 201))
  {
    return;
  }

  if ((v54 & 2) != 0 && (v55 = 13, v56 = *v53, v58 = 0, v59 = 0, __p = 0, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1), sub_29A48D97C(a1, &v55), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1), sub_29A1DE3A4(v60), SHIBYTE(v59) < 0))
  {
    operator delete(__p);
    if ((v54 & 8) == 0)
    {
      return;
    }
  }

  else if ((v54 & 8) == 0)
  {
    return;
  }

  v55 = 17;
  v56 = *v53;
  v58 = 0;
  v59 = 0;
  __p = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v60);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v60 + 1);
  sub_29A48D97C(a1, &v55);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v60 + 1);
LABEL_92:
  sub_29A1DE3A4(v60);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }
}

void sub_29A48D8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A48C580(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A48D97C(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 48);
  v5 = (a1 + 48);
  if (v4 == *(a1 + 56) && (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - v4) >> 3)) <= 7)
  {
    __p[1] = (a1 + 48);
    *&v38 = operator new(0x1C0uLL);
    *(&v38 + 1) = v38;
    v39 = v38;
    __p[0] = (v38 + 448);
    sub_29A48DF30(v5, &v38);
    sub_29A48E050(&v38);
  }

  v6 = *a2;
  if (v6 == 12 || v6 == 5)
  {
    BYTE8(v38) = 1;
    *&v38 = v6;
    sub_29A48E180(&v38, (a2 + 2), a2 + 1, (a2 + 6), a2 + 12);
    v8 = *(a1 + 72);
    v9 = bswap64(0x9E3779B97F4A7C55 * v38);
    v10 = *(a1 + 104);
    v11 = v9 & v8;
    if (*(v10 + ((v9 & v8) << 6) + 4) < 0)
    {
      LOWORD(v12) = 0;
      while (1)
      {
LABEL_15:
        if (v12 > 0x2000 || (*(a1 + 144) & 1) != 0 || (v14 = *(a1 + 120), v14 >= *(a1 + 128)))
        {
          v18 = sub_29A10A428((a1 + 72));
          sub_29A48E28C((a1 + 72), v18);
          *(a1 + 144) = 0;
        }

        else
        {
          if (*(a1 + 145) != 1 || (*(a1 + 145) = 0, v15 = *(a1 + 136), v15 == 0.0) || ((v16 = *(a1 + 112)) == 0 ? (v17 = 0.0) : (v17 = v14 / v16), v17 >= v15))
          {
            v24 = v10 + (v11 << 6);
            if (*(v24 + 4) != -1)
            {
              v38 = *a2;
              v39 = *(a2 + 2);
              if (*(a2 + 47) < 0)
              {
                sub_29A008D14(__p, *(a2 + 3), *(a2 + 4));
              }

              else
              {
                *__p = *(a2 + 6);
                v41 = *(a2 + 5);
              }

              sub_29A1E21F4(&v42, a2 + 12);
              sub_29A1E2240(&v43, a2 + 13);
              v45 = v12;
              v44 = v9;
              sub_29A48E4BC(*(a1 + 104) + (v11 << 6), &v45, &v44, &v38);
            }

            v25 = *a2;
            *(v24 + 24) = *(a2 + 2);
            *(v24 + 8) = v25;
            if (*(a2 + 47) < 0)
            {
              sub_29A008D14((v24 + 32), *(a2 + 3), *(a2 + 4));
            }

            else
            {
              v26 = *(a2 + 6);
              *(v24 + 48) = *(a2 + 5);
              *(v24 + 32) = v26;
            }

            sub_29A1E21F4((v24 + 56), a2 + 12);
            sub_29A1E2240((v24 + 60), a2 + 13);
            *v24 = v9;
            *(v24 + 4) = v12;
            ++*(a1 + 120);
            goto LABEL_42;
          }

          v19 = *(a1 + 140);
          v20 = vcvtps_u32_f32((v14 + 1) / v19);
          v21 = vcvtps_u32_f32(v14 / v19);
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          sub_29A48E28C((a1 + 72), v22);
        }

        LOWORD(v12) = 0;
        v23 = *(a1 + 72);
        v10 = *(a1 + 104);
        v11 = v23 & v9;
        if ((*(v10 + ((v23 & v9) << 6) + 4) & 0x80000000) == 0)
        {
          LOWORD(v12) = 0;
          do
          {
            v12 = (v12 + 1);
            v11 = (v11 + 1) & v23;
          }

          while (v12 <= *(v10 + (v11 << 6) + 4));
        }
      }
    }

    LOWORD(v12) = 0;
    while (1)
    {
      result = sub_29A48E0A0(v10 + (v11 << 6) + 8, a2);
      if (result)
      {
        break;
      }

      v12 = (v12 + 1);
      v11 = (v11 + 1) & v8;
      if (v12 > *(v10 + (v11 << 6) + 4))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_42:
    v28 = *(a1 + 56);
    v27 = *(a1 + 64);
    if (v28 >= v27)
    {
      v32 = 0x6DB6DB6DB6DB6DB7 * ((v28 - *v5) >> 3);
      v33 = v32 + 1;
      if ((v32 + 1) > 0x492492492492492)
      {
        sub_29A00C9A4();
      }

      v34 = 0x6DB6DB6DB6DB6DB7 * ((v27 - *v5) >> 3);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x249249249249249)
      {
        v35 = 0x492492492492492;
      }

      else
      {
        v35 = v33;
      }

      __p[1] = v5;
      if (v35)
      {
        if (v35 > 0x492492492492492)
        {
          sub_29A00C8B8();
        }

        v36 = operator new(56 * v35);
      }

      else
      {
        v36 = 0;
      }

      v37 = &v36[56 * v32];
      *&v38 = v36;
      *(&v38 + 1) = v37;
      __p[0] = &v36[56 * v35];
      *v37 = *a2;
      *(v37 + 2) = *(a2 + 2);
      *(v37 + 24) = *(a2 + 6);
      *(v37 + 5) = *(a2 + 5);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      sub_29A1DDD84(v37 + 12, a2 + 12);
      sub_29A1DDDC0(v37 + 13, a2 + 13);
      v39 = v37 + 56;
      sub_29A48DF30(v5, &v38);
      v31 = *(a1 + 56);
      sub_29A48E050(&v38);
    }

    else
    {
      v29 = *a2;
      *(v28 + 16) = *(a2 + 2);
      *v28 = v29;
      v30 = *(a2 + 6);
      *(v28 + 40) = *(a2 + 5);
      *(v28 + 24) = v30;
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 3) = 0;
      sub_29A1DDD84((v28 + 48), a2 + 12);
      sub_29A1DDDC0((v28 + 52), a2 + 13);
      v31 = v28 + 56;
    }

    *(a1 + 56) = v31;
    return sub_29A48E570(*(a1 + 48), v31, (0x6DB6DB6DB6DB6DB7 * ((v31 - *(a1 + 48)) >> 3)));
  }

  return result;
}

void sub_29A48DF30(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 - (v6 - *a1);
  if (v6 != *a1)
  {
    v8 = (v5 + 52);
    v9 = (v4 - 8 * ((v6 - *a1) >> 3) + 52);
    do
    {
      v10 = *(v8 - 13);
      *(v9 - 9) = *(v8 - 9);
      *(v9 - 13) = v10;
      v11 = *(v8 - 7);
      *(v9 - 3) = *(v8 - 3);
      *(v9 - 7) = v11;
      *(v8 - 3) = 0;
      *(v8 - 5) = 0;
      *(v8 - 7) = 0;
      sub_29A1DDD84(v9 - 1, v8 - 1);
      sub_29A1DDDC0(v9, v8);
      v12 = v8 + 1;
      v8 += 14;
      v9 += 14;
    }

    while (v12 != v6);
    do
    {
      sub_29A48CAA0(v5);
      v5 += 56;
    }

    while (v5 != v6);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_29A48E050(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_29A48CAA0(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_29A48E0A0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 8) == *(a2 + 8) && *(a1 + 48) == *(a2 + 48))
  {
    v4 = *(a1 + 47);
    if (v4 >= 0)
    {
      v5 = *(a1 + 47);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = *(a2 + 47);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 32);
    }

    if (v5 == v6)
    {
      v8 = v4 >= 0 ? (a1 + 24) : *(a1 + 24);
      v9 = v7 >= 0 ? (a2 + 24) : *(a2 + 24);
      if (!memcmp(v8, v9, v5))
      {
        return *(a1 + 4) == *(a2 + 4);
      }
    }
  }

  return 0;
}

uint64_t sub_29A48E180(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, int *a3, uint64_t a4, unsigned int *a5)
{
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(this);
  if (*(a1 + 8))
  {
    UniqueIdentifier += (*a1 + UniqueIdentifier + (*a1 + UniqueIdentifier) * (*a1 + UniqueIdentifier)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = UniqueIdentifier;

  return sub_29A48E204(a1, a3, a4, a5);
}

uint64_t sub_29A48E204(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, int *a2, uint64_t a3, unsigned int *a4)
{
  v6 = *a2;
  if (*(this + 8))
  {
    v6 += (*this + v6 + (*this + v6) * (*this + v6)) >> 1;
  }

  else
  {
    *(this + 8) = 1;
  }

  *this = v6;
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(this, v8, v9);

  return sub_29A1E33B4(this, a4);
}

__n128 sub_29A48E28C(uint64_t *a1, uint64_t a2)
{
  sub_29A48C7C8(&v22, a2, *(a1 + 16), *(a1 + 17));
  v3 = v25;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 2) != -1)
      {
        if (v3 > 0x100000000)
        {
          v7 = v4[2];
          v31 = 1;
          v30 = v7;
          sub_29A48E180(&v30, (v4 + 4), v4 + 3, (v4 + 8), v4 + 14);
          v6 = bswap64(0x9E3779B97F4A7C55 * v30);
        }

        else
        {
          v6 = *v4;
        }

        v8 = 0;
        v9 = v22 & v6;
        v32 = 0;
        LODWORD(v30) = v6;
        while (1)
        {
          v10 = *(&v24 + 1) + (v9 << 6);
          v11 = *(v10 + 4);
          if (v11 < v8)
          {
            break;
          }

          v32 = ++v8;
          v9 = v22 & (v9 + 1);
        }

        if (v11 != -1)
        {
          sub_29A48E4BC(*(&v24 + 1) + (v9 << 6), &v32, &v30, v4 + 2);
        }

        v12 = v30;
        v13 = *(v4 + 3);
        *(v10 + 8) = *(v4 + 2);
        *(v10 + 24) = v13;
        v14 = *(v4 + 6);
        *(v10 + 32) = *(v4 + 2);
        *(v10 + 48) = v14;
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
        *(v4 + 4) = 0;
        sub_29A1DDD84((v10 + 56), v4 + 14);
        sub_29A1DDDC0((v10 + 60), v4 + 15);
        *v10 = v12;
        *(v10 + 4) = v8;
      }

      v4 += 16;
    }

    while (v4 != v5);
    v4 = a1[1];
    v5 = a1[2];
    v3 = v25;
  }

  v15 = *a1;
  *a1 = v22;
  v16 = v23;
  v17 = v24;
  v22 = v15;
  *&v23 = v4;
  *(&v23 + 1) = v5;
  *(a1 + 1) = v16;
  v18 = *(a1 + 3);
  *(a1 + 3) = v17;
  v19 = *(a1 + 5);
  a1[5] = v3;
  v24 = v18;
  v25 = v19;
  v20 = v26;
  v26 = a1[7];
  a1[7] = v20;
  *&v17 = v27;
  v27 = a1[8];
  a1[8] = v17;
  LOBYTE(v20) = v28;
  v28 = *(a1 + 72);
  *(a1 + 72) = v20;
  LOBYTE(v20) = v29;
  v29 = *(a1 + 73);
  *(a1 + 73) = v20;
  v30 = &v23;
  sub_29A48C99C(&v30);
  return result;
}

void sub_29A48E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 88) = &a11;
  sub_29A48C99C((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_29A48E4BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *a4 = *(a1 + 8);
  *(a1 + 8) = v4;
  v5 = *(a4 + 2);
  *(a4 + 2) = *(a1 + 16);
  *(a1 + 16) = v5;
  v6 = *(a4 + 5);
  v7 = *(a4 + 6);
  v8 = *(a1 + 48);
  *(a4 + 6) = *(a1 + 32);
  *(a4 + 5) = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  LODWORD(v6) = a4[1];
  a4[1] = *(a1 + 12);
  *(a1 + 12) = v6;
  sub_29A41A670(a4 + 12);
}

uint64_t sub_29A48E570(uint64_t result, uint64_t a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  if (a3 >= 2)
  {
    v4 = result + 56 * ((a3 - 2) >> 1);
    v5 = (a2 - 56);
    result = sub_29A48E740(v4, a2 - 56, a3);
    if (result)
    {
      v6 = *v5;
      v12 = *(v5 + 2);
      v11 = v6;
      v7 = *(a2 - 32);
      v14 = *(a2 - 16);
      *__p = v7;
      *(a2 - 32) = 0;
      *(a2 - 16) = 0;
      v8 = *(a2 - 8);
      *(a2 - 24) = 0;
      v15 = v8;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=((a2 - 8));
      v16 = *(a2 - 4);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((a2 - 4));
      v9 = *v4;
      *(v5 + 2) = *(v4 + 16);
      *v5 = v9;
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v10 = *(v4 + 24);
      *(v5 + 5) = *(v4 + 40);
      *(v5 + 24) = v10;
      *(v4 + 47) = 0;
      *(v4 + 24) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t sub_29A48E740(uint64_t a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    return v3 > *a2;
  }

  if (v3 > 0x11)
  {
    goto LABEL_6;
  }

  if (((1 << v3) & 0xC300) != 0)
  {
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 8) == *(a2 + 8))
    {
      v11 = (a1 + 48);
      v12 = a1 + 4;
      v8 = (a2 + 48);
      v9 = a2 + 4;
      sub_29A48E890();
    }

    return pxrInternal__aapl__pxrReserved__::PcpCompareNodeStrength((a1 + 8), (a2 + 8), a3) == 1;
  }

  if (((1 << v3) & 0x10400) != 0)
  {
    v11 = (a1 + 8);
    v12 = a1 + 48;
    v13 = a1 + 4;
    v8 = (a2 + 8);
    v9 = a2 + 48;
    v10 = a2 + 4;
    return sub_29A48E8FC(&v14, &v8, &v11);
  }

  if (((1 << v3) & 0x20800) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::PcpCompareNodeStrength((a1 + 8), (a2 + 8), a3) == 1;
  }

LABEL_6:
  if (v3 == 5)
  {
    v5 = (a1 + 8);
    v6 = (a2 + 8);
  }

  else
  {
    v5 = (a2 + 8);
    v6 = (a1 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v5, v6);
}

uint64_t sub_29A48E8FC(uint64_t a1, void **a2, void **a3)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(*a2, *a3))
  {
    return 1;
  }

  if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(*a3, *a2))
  {
    sub_29A48E968();
  }

  return 0;
}

uint64_t sub_29A48E9D4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v19 = a3;
  v20 = a4;
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v19);
  NonVariantPathElementCount = pxrInternal__aapl__pxrReserved__::PcpNode_GetNonVariantPathElementCount(Path, v16);
  return sub_29A48EC58(a1, a2, v19, v20, a5, a6, a7, a8, NonVariantPathElementCount, a9 & 0xFFFFFFFFFFLL);
}

void *sub_29A48EA68(void *result)
{
  if (*result == result[1])
  {
    sub_29B2A86A0();
  }

  return result;
}

void *sub_29A48EAA0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfSite>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfSite>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

void *sub_29A48EB20(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v17 = a2;
  v18 = a3;
  v4 = **(a2 + 16);
  v5 = *(v4 + 48 * a3 + 28);
  v11 = a2;
  v12 = v5;
  v13 = v4;
  v14 = a2;
  v6 = 0xFFFFLL;
  v15 = 0xFFFFLL;
  v16 = v4;
  while (v5 != v6 || v11 != v14)
  {
    v7 = sub_29A41E444(&v11);
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v7) != 3)
    {
      if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(v7) || (LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v7), v9 = sub_29A4184C4(LayerStack), IncrementalRelocatesSourceToTarget = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIncrementalRelocatesSourceToTarget(v9), pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v7), IncrementalRelocatesSourceToTarget + 8 == sub_29A1EF6EC(IncrementalRelocatesSourceToTarget)))
      {
        sub_29A48EB20(v3, *v7, v7[1]);
      }

      else
      {
        sub_29A48CD70(*v7, v7[1], *(v3[3] + 96));
      }
    }

    result = sub_29A41E490(&v11);
    v5 = v12;
    v6 = v15;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope *sub_29A48EC1C(pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope *this)
{
  if (*this)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::_EndScope(this);
  }

  return this;
}

uint64_t sub_29A48EC58(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  *&v105 = a3;
  *(&v105 + 1) = a4;
  if (sub_29A418240(2))
  {
    v36 = *(a1 + 40);
    if (v36)
    {
      v37 = (v36 + 48);
    }

    else
    {
      v37 = (a1 + 32);
    }

    v38 = *v37;
    v39 = &v106;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, a2, &v106);
    if (v107 < 0)
    {
      v39 = v106;
    }

    v41 = v87;
    pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v87, a6, v40);
    if (v88 < 0)
    {
      v41 = v87[0];
    }

    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v105, &v100);
    pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&v92, &v100, v42);
    if (v93 >= 0)
    {
      v45 = &v92;
    }

    else
    {
      v45 = v92;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Adding new %s arc to %s from %s", v43, v44, v39, v41, v45);
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::Pcp_IndexingPhaseScope(&v104, v38, &v105, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v102);
    sub_29A1DE3A4(&v101);
    sub_29A41B088();
  }

  v104 = 0;
  v77 = a7;
  if (sub_29A418240(2))
  {
    v46 = *(a1 + 40);
    v47 = (a1 + 32);
    if (v46)
    {
      v47 = (v46 + 48);
    }

    if (*a5)
    {
      v48 = *(a5 + 1) == -1;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    v76 = *v47;
    if (v48)
    {
      v51 = "<None>";
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(a5, v99);
      pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&v100, v99, v50);
      if (v103 >= 0)
      {
        v51 = &v100;
      }

      else
      {
        v51 = v100;
      }

      v46 = *(a1 + 40);
    }

    if (a10)
    {
      v53 = "true";
    }

    else
    {
      v53 = "false";
    }

    if ((a10 >> 8))
    {
      v54 = "true";
    }

    else
    {
      v54 = "false";
    }

    if ((a10 & 0x10000) != 0)
    {
      v55 = "true";
    }

    else
    {
      v55 = "false";
    }

    if (v46)
    {
      v75 = v51;
      if (*(v46 + 56))
      {
        v56 = "true";
      }

      else
      {
        v56 = "false";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf(" (prev. frame: %s)", v13, v14, v56);
      v57 = &v97;
      if (v98 < 0)
      {
        v57 = v97;
      }

      v51 = v75;
    }

    else
    {
      v57 = "";
    }

    if ((a10 & 0x1000000) != 0)
    {
      v58 = "true";
    }

    else
    {
      v58 = "false";
    }

    pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v76, &v105, "origin: %s\narcSiblingNum: %d\nnamespaceDepth: %d\ndirectNodeShouldContributeSpecs: %s\nincludeAncestralOpinions: %s\nskipDuplicateNodes: %s%s\nskipImpliedSpecializesCompletedNodes: %s\n\n", v15, v51, a8, a9, v53, v54, v55, v57, v58);
    a7 = v77;
    if (v46 && v98 < 0)
    {
      operator delete(v97);
    }

    if (v49)
    {
      if (v103 < 0)
      {
        operator delete(v100);
      }

      sub_29A424AA8(v99);
    }
  }

  if (*a7)
  {
    v16 = a2;
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = "pcp/primIndex.cpp";
    __p.__r_.__value_.__l.__size_ = "_AddArc";
    __p.__r_.__value_.__r.__words[2] = 1733;
    v85 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::_AddArc(Pcp_PrimIndexer *, const PcpArcType, PcpNodeRef, const PcpNodeRef &, const PcpLayerStackSite &, const PcpMapExpression &, int, int, _ArcOptions)";
    LOBYTE(v86) = 0;
    v52 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!mapExpr.IsNull()", 0);
    v16 = a2;
    if ((v52 & 1) == 0)
    {
      v32 = 0;
      goto LABEL_52;
    }
  }

  v18 = a1 + 40;
  v17 = *(a1 + 40);
  if (v16 != 6)
  {
    if (v16 == 2)
    {
      goto LABEL_22;
    }

    if (v16 != 1)
    {
      goto LABEL_23;
    }
  }

  if (v105 != *a5)
  {
    *&__p.__r_.__value_.__l.__data_ = v105;
    __p.__r_.__value_.__r.__words[2] = v17;
    while (1)
    {
      if (!__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_21;
      }

      if (__p.__r_.__value_.__l.__size_ == -1)
      {
        break;
      }

      v19 = sub_29A490620(&__p);
      if (v19 != 6 && v19 != 1)
      {
        break;
      }

      if (v105 == *a5)
      {
        break;
      }

      sub_29A490680(&__p);
    }

    v20 = !__p.__r_.__value_.__r.__words[0] || __p.__r_.__value_.__l.__size_ == -1;
    if (!v20 && sub_29A490620(&__p) == 3)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  if (a2 != 2)
  {
LABEL_23:
    v92 = *a6;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
  }

LABEL_22:
  v81 = 0;
  v82 = 0;
  if (*v18)
  {
    if ((*(*v18 + 56) | WORD1(a10)))
    {
      goto LABEL_26;
    }
  }

  else if ((a10 & 0x10000) != 0)
  {
LABEL_26:
    __p.__r_.__value_.__r.__words[0] = *a6;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
  }

  *&v93 = 0;
  *(&v93 + 1) = -1;
  *&v94 = 0;
  *(&v94 + 1) = -1;
  v95 = 0;
  v96 = 0;
  LODWORD(v92) = a2;
  sub_29A42B700(&v95, v77);
  v93 = v105;
  v94 = *a5;
  v96 = __PAIR64__(a9, a8);
  *&v91 = 0;
  *(&v91 + 1) = -1;
  v89 = 0;
  v90 = 0;
  if ((a10 & 0x100) != 0)
  {
    v21 = a1;
    if (sub_29A418240(2))
    {
      v59 = *(a1 + 40);
      if (v59)
      {
        v60 = (v59 + 48);
      }

      else
      {
        v60 = (a1 + 32);
      }

      v61 = *v60;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, a2, &__p);
      v62 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v63 = __p.__r_.__value_.__r.__words[0];
      pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v87, a6, v64);
      p_p = &__p;
      if (v62 < 0)
      {
        p_p = v63;
      }

      if (v88 >= 0)
      {
        v67 = v87;
      }

      else
      {
        v67 = v87[0];
      }

      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v61, &v105, "Need to build index for %s source at %s to pick up ancestral opinions", v65, p_p, v67);
      v21 = a1;
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_29B2A8358(v87, a6, &v105, &v92, *(v21 + 40));
  }

  v22 = a1;
  *&v91 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::InsertChild(&v105, a6, &v92, &v89);
  *(&v91 + 1) = v23;
  if (v91 && v23 != -1)
  {
    if ((a10 & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(&v91, 1);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetSpecContributionRestrictedDepth(&v91, 1);
    }

    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v91);
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v91);
    HasPrimSpecs = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSpecs(&v91, HasPrimSpecs);
    if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(&v91) & 1) == 0 && pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v91) && (*(*(a1 + 24) + 97) & 1) == 0)
    {
      v28 = pxrInternal__aapl__pxrReserved__::PcpComposeSitePermission(a6, (a6 + 8));
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetPermission(&v91, v28);
      HasSymmetry = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasSymmetry(a6, (a6 + 8));
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetHasSymmetry(&v91, HasSymmetry);
    }

    if (sub_29A418240(2))
    {
      v69 = *(a1 + 40);
      if (v69)
      {
        v70 = (v69 + 48);
      }

      else
      {
        v70 = (a1 + 32);
      }

      v71 = *v70;
      sub_29A453CD0(a6);
      if (v88 >= 0)
      {
        v74 = v87;
      }

      else
      {
        v74 = v87[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Added new node for site %s to graph", v72, v73, v74);
      pxrInternal__aapl__pxrReserved__::Pcp_IndexingUpdate(v71, &v91, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87[0]);
      }

      v22 = a1;
    }
  }

  if (v89)
  {
    pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&__p, v22);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v89 + 16, &__p);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (!v91 || *(&v91 + 1) == -1)
  {
    __p.__r_.__value_.__r.__words[0] = "pcp/primIndex.cpp";
    __p.__r_.__value_.__l.__size_ = "_AddArc";
    __p.__r_.__value_.__r.__words[2] = 1927;
    v85 = "PcpNodeRef pxrInternal__aapl__pxrReserved__::_AddArc(Pcp_PrimIndexer *, const PcpArcType, PcpNodeRef, const PcpNodeRef &, const PcpLayerStackSite &, const PcpMapExpression &, int, int, _ArcOptions)";
    LOBYTE(v86) = 0;
    v68 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Failed to create a node, but did not specify the error.", v23, v24);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "newNodeError", v68);
    v32 = 0;
  }

  else
  {
    sub_29A490164(v22, &v91, (a10 & 0x100000100) != 0, BYTE3(a10) & 1, v22[201] & (a10 >> 8) & 1);
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPermission(&v91) == 1)
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorArcPermissionDenied::New(v87);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v105);
      v81 = v34;
      v82 = v35;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v81, v83);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&__p, v83);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v87[0] + 16, &__p);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    v30 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v91);
    if (*v30 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v30))
    {
      sub_29A490588(v91, *(&v91 + 1));
    }

    v32 = v91;
  }

  if (v90)
  {
    sub_29A014BEC(v90);
  }

  if (v95)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v95, v31);
  }

LABEL_52:
  if (v104)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::_EndScope(&v104);
  }

  return v32;
}

void sub_29A48FD8C(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a60)
  {
    sub_29A014BEC(a60);
  }

  if (a68)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a68, a2);
  }

  sub_29A48EC1C((v68 - 216));
  _Unwind_Resume(a1);
}

void sub_29A490124(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  sub_29A41B088();
}

void sub_29A490164(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    goto LABEL_49;
  }

  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (ArcType != 6 && ArcType != 1)
  {
    if (!sub_29A490B68(this))
    {
      goto LABEL_25;
    }

    *v37 = 5;
    *&v37[8] = *this;
    v39 = 0;
    v40 = 0;
    __p = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v41);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v41 + 1);
    sub_29A48D97C(a1, v37);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v41 + 1);
    goto LABEL_23;
  }

  v11 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (v11 != 1 && v11 != 6)
  {
    *v37 = "pcp/primIndex.cpp";
    *&v37[8] = "_FindStartingNodeForImpliedClasses";
    *&v37[16] = 607;
    __p = "PcpNodeRef pxrInternal__aapl__pxrReserved__::_FindStartingNodeForImpliedClasses(const PcpNodeRef &)";
    LOBYTE(v39) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v37, "PcpIsClassBasedArc(n.GetArcType())", 0);
  }

  v36 = *this;
  while (1)
  {
    v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v36);
    if (v12 != 6 && v12 != 1)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Pcp_FindStartingNodeOfClassHierarchy(&v36, v37);
    v36 = *v37;
    v14 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v37);
    if (v14 == 6 || v14 == 1)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(v37, v15, &v34);
      Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v37[16]);
      HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(Path, &v34);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v35);
      sub_29A1DE3A4(&v34);
      if (HasPrefix)
      {
        break;
      }
    }
  }

  if (v36)
  {
    v18 = *(&v36 + 1) == -1;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    *v37 = 5;
    *&v37[8] = v36;
    v39 = 0;
    v40 = 0;
    __p = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v41);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v41 + 1);
    sub_29A48D97C(a1, v37);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v41 + 1);
LABEL_23:
    sub_29A1DE3A4(v41);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_25:
  if (*(a1 + 200) == 1)
  {
    *v37 = *this;
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(v37);
    v20 = v19;
    v22 = v21;
    if (*&v37[8] == v21 && *v37 == v19)
    {
      goto LABEL_41;
    }

    v23 = 0;
    v24 = -1;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v37) == 6)
      {
        v23 = *v37;
        v24 = *&v37[8];
      }

      ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(v37);
      *v37 = ParentNode;
      *&v37[8] = v26;
    }

    while (v26 != v22 || ParentNode != v20);
    if (!v23 || v24 == -1)
    {
LABEL_41:
      v29 = *(this + 1);
      v41[0] = *this;
      v41[1] = v29;
      v30 = **(v41[0] + 16);
      v31 = *(v30 + 48 * v29 + 28);
      *v37 = v41[0];
      *&v37[8] = v31;
      *&v37[16] = v30;
      __p = v41[0];
      v32 = 0xFFFFLL;
      v39 = 0xFFFFLL;
      v40 = v30;
      while (v31 != v32 || *v37 != __p)
      {
        v33 = sub_29A41E444(v37);
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v33) == 6)
        {
          *v37 = 12;
          *&v37[8] = *this;
          v39 = 0;
          v40 = 0;
          __p = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v41);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v41 + 1);
          sub_29A48D97C(a1, v37);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v41 + 1);
          goto LABEL_47;
        }

        sub_29A41E490(v37);
        v31 = *&v37[8];
        v32 = v39;
      }
    }

    else
    {
      *v37 = 12;
      *&v37[8] = v23;
      *&v37[16] = v24;
      v39 = 0;
      v40 = 0;
      __p = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v41);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v41 + 1);
      sub_29A48D97C(a1, v37);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v41 + 1);
LABEL_47:
      sub_29A1DE3A4(v41);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_49:
  sub_29A48CEE0(a1, this, a3, a4, *(a1 + 40) == 0, a5, *(*(a1 + 24) + 97));
}

void sub_29A490548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A48C580(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29A490588(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(&v15, 1);
  v13 = v15;
  v14 = v16;
  v3 = **(v15 + 16);
  v4 = *(v3 + 48 * v16 + 28);
  v7 = v15;
  v8 = v4;
  v9 = v3;
  v10 = v15;
  v5 = 0xFFFFLL;
  v11 = 0xFFFFLL;
  v12 = v3;
  while (v4 != v5 || v7 != v10)
  {
    v6 = sub_29A41E444(&v7);
    sub_29A490588(*v6, v6[1]);
    result = sub_29A41E490(&v7);
    v4 = v8;
    v5 = v11;
  }

  return result;
}

uint64_t sub_29A490620(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1))
  {

    return pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1);
  }

  else
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      return **(v3 + 40);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29A490680(uint64_t *a1)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
    *a1 = result;
    a1[1] = v3;
  }

  else
  {
    v4 = a1[2];
    if (v4)
    {
      *a1 = *(v4 + 24);
      a1[2] = *v4;
    }

    else
    {
      *a1 = 0;
      a1[1] = -1;
    }
  }

  return result;
}

void sub_29A4906DC(uint64_t a1, void *a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29B2A5A80(*(a1 + 8), a2);
  }

  sub_29A490784(a1, a2);
}

uint64_t sub_29A49074C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 84));
  sub_29B2A86F0(a1);
  return a1;
}

void sub_29A490784(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x2AAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
    {
      v5 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v3;
    }

    v9 = a1;
    if (v5)
    {
      v6 = sub_29A0CFEE8(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    *(&v8 + 1) = &v6[12 * v5];
    sub_29B2A5A80(&v6[12 * v2], a2);
  }

  sub_29A00C9A4();
}

void sub_29A4908A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A490A24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4908BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29B2A5A80(a4, a2);
  }

  v6 = 1;
  return sub_29A490998(v5);
}

uint64_t sub_29A490998(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4909D0(a1);
  }

  return a1;
}

uint64_t *sub_29A4909D0(uint64_t *result)
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
      v3 -= 96;
      result = sub_29A4627F4(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A490A24(void **a1)
{
  sub_29A490A58(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A490A58(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 96;
      result = sub_29A4627F4(v4, v1 - 96);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A490B68(uint64_t *a1)
{
  v1 = a1[1];
  v15 = *a1;
  v16 = v1;
  v2 = **(v15 + 16);
  v3 = *(v2 + 48 * v1 + 28);
  v9 = v15;
  v10 = v3;
  v11 = v2;
  v12 = v15;
  v4 = 0xFFFFLL;
  v13 = 0xFFFFLL;
  v14 = v2;
  while (v3 != v4 || v9 != v12)
  {
    v5 = sub_29A41E444(&v9);
    ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v5);
    if (ArcType == 1 || ArcType == 6)
    {
      return 1;
    }

    sub_29A41E490(&v9);
    v3 = v10;
    v4 = v13;
  }

  return 0;
}

void sub_29A490C00(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *a1, pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v35[0] = a1;
  v35[1] = a2;
  if (a4[1] != *a4)
  {
    v5 = *a4;
    v6 = *a5;
    v34 = *(*a4 + 32);
    if (sub_29A418240(2))
    {
      v17 = *(a3 + 40);
      v18 = (a3 + 32);
      if (v17)
      {
        v18 = (v17 + 48);
      }

      v19 = (v6 + 32);
      if (*(v6 + 55) < 0)
      {
        v19 = *v19;
      }

      v20 = *v18;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v5 + 24));
      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v20, v35, "Found %s to @%s@<%s>", v22, "reference", v19, Text);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v5 + 24)) && (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((v5 + 24)) || !pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((v5 + 24)) || pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection((v5 + 24))))
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::New(&__str);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(v35);
      v24 = v7;
      v25 = v8;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v24, &v27);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v33, &v27);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(__str.__r_.__value_.__r.__words[0] + 16, v33);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsValid(&v34) || (v33[0] = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetInverse(&v34), v33[1] = v9, !pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsValid(v33)))
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::New(&__str);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(v35);
      v24 = v11;
      v25 = v12;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v24, &v27);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v33, &v27);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(__str.__r_.__value_.__r.__words[0] + 16, v33);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    *&v34 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*((v6 + 16), &v34);
    *(&v34 + 1) = v10;
    v31 = 0;
    v32 = 0;
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 8))
      {
LABEL_14:
        memset(&__str, 0, sizeof(__str));
        if (pxrInternal__aapl__pxrReserved__::PcpCache::IsLayerMuted(**(a3 + 24), v6, v6 + 32, &__str))
        {
          pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath::New(&v27);
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(v35);
          v29[0] = v13;
          v29[1] = v14;
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v29, &v24);
          pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v33, &v24);
          pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=((v27 + 2), v33);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v28[0] = 0;
        v28[1] = 0;
        v27 = v28;
        pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(v5, *(a3 + 24) + 72, &v27);
        pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v26);
        pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(v5, &v27, v33);
        v32 = v33[0];
        v33[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
      }
    }

    else if (*(v5 + 23))
    {
      goto LABEL_14;
    }

    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v35);
    v16 = sub_29A4184C4(LayerStack);
    if (*(pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v16) + 8))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    v33[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }
}

_DWORD *sub_29A49249C@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this@<X1>, pxrInternal__aapl__pxrReserved__ *a2@<X0>, pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a3@<X2>, pxrInternal__aapl__pxrReserved__ **a4@<X8>)
{
  v20[7] = *MEMORY[0x29EDCA608];
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(this);
  pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(Path, &v18);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v20[0] = a2;
  v9 = sub_29A472B80(&v16, a2, &unk_29B4D6118, v20);
  sub_29A2258F0(v9 + 9, &v18);
  sub_29A225948(v9 + 10, &v19);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(&v16, a3, v20);
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::Constant(v20, a4);
  sub_29A41AF74(v20);
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(this);
  v11 = sub_29A4184C4(LayerStack);
  pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetExpressionForRelocatesAtPath(v11, &v18, v20);
  if (v20[0])
  {
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(v20, a4, v12, &v15);
    sub_29A42B700(a4, &v15);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v13);
    }

    if (v20[0])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20[0], v13);
    }
  }

  sub_29A1EF938(&v16, v17[0]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  return sub_29A1DE3A4(&v18);
}

void sub_29A492600(_Unwind_Exception *a1, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, char a11, void *a12, uint64_t a13, int a14, atomic_uint *a15)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10, a2);
  }

  if (a15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a15, a2);
  }

  if (*v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*v15, a2);
  }

  sub_29A1EF938(&a11, a12);
  sub_29A1DCEA8(&a14);
  _Unwind_Resume(a1);
}

void sub_29A492688(void ***a1)
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
        v4 -= 64;
        sub_29B2A3944(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A492710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileExtension(a1, __p);
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(__p, a2, &lpsrc);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = sub_29B299524(&lpsrc);
    if (v5 & 1 | v4 && v11)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    v6 = v11;
    if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return 0;
}

void sub_29A492850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A4928B4@<W0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X2>, uint64_t a2@<X0>, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3@<X1>, char *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(this, &v10);
  sub_29A4944A0(a3, &v10, a4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  v7 = *(a2 + 40);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a4);
  if (v7)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    sub_29A4945B4((*(v7 + 40) + 40), **(v7 + 40), a4, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return result;
}

void sub_29A4929B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A4929E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, _DWORD *a6)
{
  v43[2] = *MEMORY[0x29EDCA608];
  *&v38 = a1;
  *(&v38 + 1) = a2;
  if (a4[1] != *a4)
  {
    v29 = a3 + 32;
    v6 = *a4;
    v7 = *a5;
    v37 = *(*a4 + 32);
    v8 = v7;
    if (sub_29A418240(2))
    {
      v21 = (a3 + 32);
      v22 = *(a3 + 40);
      if (v22)
      {
        v21 = (v22 + 48);
      }

      v23 = (v7 + 32);
      if (*(v7 + 55) < 0)
      {
        v23 = *v23;
      }

      v24 = *v21;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + 24));
      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v24, &v38, "Found %s to @%s@<%s>", v26, "payload", v23, Text);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 24)) && (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((v6 + 24)) || !pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((v6 + 24)) || pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection((v6 + 24))))
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::New(&v41);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v38);
      __str.__r_.__value_.__r.__words[0] = v9;
      __str.__r_.__value_.__l.__size_ = v10;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&__str, &v39);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v36, &v39);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=((v41 + 2), v36);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsValid(&v37) || (v36[0] = COERCE_PXRINTERNAL_AAPL_PXRRESERVED_(pxrInternal__aapl__pxrReserved__::SdfLayerOffset::GetInverse(&v37)), v36[1] = v11, !pxrInternal__aapl__pxrReserved__::SdfLayerOffset::IsValid(v36)))
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidReferenceOffset::New(&v41);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v38);
      __str.__r_.__value_.__r.__words[0] = v13;
      __str.__r_.__value_.__l.__size_ = v14;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&__str, &v39);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v36, &v39);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=((v41 + 2), v36);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    *&v37 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*((v8 + 16), &v37);
    *(&v37 + 1) = v12;
    v34 = 0;
    v35 = 0;
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
LABEL_14:
        memset(&__str, 0, sizeof(__str));
        if (pxrInternal__aapl__pxrReserved__::PcpCache::IsLayerMuted(**(a3 + 24), v8, v8 + 32, &__str))
        {
          pxrInternal__aapl__pxrReserved__::PcpErrorMutedAssetPath::New(&v41);
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v38);
          v31 = v15;
          v32[0] = v16;
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v31, &v39);
          pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v36, &v39);
          pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=((v41 + 2), v36);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v32[0] = 0;
        v32[1] = 0;
        v31 = v32;
        v19 = *(v8 + 56);
        v20 = sub_29A492710(v6, *(a3 + 24) + 72);
        if (v20)
        {
          v42[0] = 0;
          v42[1] = 0;
          v41 = v42;
          v40[0] = 0;
          v40[1] = 0;
          v39 = v40;
          pxrInternal__aapl__pxrReserved__::Pcp_CreateDynamicFileFormatContext(&v38, a6, v19, *(a3 + 40), &v41, &v39, v36);
          v43[1] = 0;
          (*(*v20 + 16))(v20, v6, v36, &v31, v43);
          pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatDependencyData::AddDependencyContext((*v29 + 72), v20, v43, &v41, &v39);
          sub_29A186B14(v43);
          sub_29A494790(v36);
          sub_29A1602D4(&v39, v40[0]);
          sub_29A1602D4(&v41, v42[0]);
        }

        pxrInternal__aapl__pxrReserved__::Pcp_GetArgumentsForFileFormatTarget(v6, *(a3 + 24) + 72, &v31);
        pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v30);
        pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(v6, &v31, v36);
        v35 = v36[0];
        v36[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
      }
    }

    else if (*(v6 + 23))
    {
      goto LABEL_14;
    }

    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v38);
    v18 = sub_29A4184C4(LayerStack);
    if (*(pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v18) + 8))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    v36[0] = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
  }
}

void sub_29A494024(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, int a38, __int16 a39, char a40, char a41, pxrInternal__aapl__pxrReserved__ *a42, uint64_t a43)
{
  *(v43 - 168) = &a42;
  sub_29A012C90((v43 - 168));
  v44 = *(v43 - 184);
  if (v44)
  {
    sub_29A014BEC(v44);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a24);
  sub_29A01752C(&a26, a29);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_29A41B088();
}

uint64_t sub_29A49444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  sub_29B2A881C(a4, a2, a3, &v6);
  return v4;
}

_DWORD *sub_29A4944A0@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char *a3@<X8>)
{
  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a1);
  v9 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v7, v8);
  result = pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v9, a2, a3);
  if (*a3 == *a2 && *(v9 + 36) == 1)
  {
    v14 = *a1;
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3);
    if (result)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v14);
      if (!result)
      {
        MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(&v14);
        ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v14);
        sub_29A4945B4(MapToParent, ArcType, a3, &v13);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  return result;
}

void sub_29A4945B4(pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a1@<X0>, const char *a2@<X1>, char *a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = a2;
  v13 = *MEMORY[0x29EDCA608];
  v7 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a1, a2, a3);
  v8 = v7;
  if (v5 & 0xFFFFFFFE) == 4 && (*(v7 + 36))
  {
    SourceToTargetMap = pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetSourceToTargetMap(v7, v11);
    v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(SourceToTargetMap);
    sub_29A494700(v11, v10);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::Create(v11, (v8 + 40), v12);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v12, a3, a4);
    sub_29A41AF74(v12);
    sub_29A1EF938(v11, v11[1]);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapSourceToTarget(v7, a3, a4);
  }
}

void sub_29A4946CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  sub_29A41AF74(va1);
  sub_29A1EF938(va, v5);
  _Unwind_Resume(a1);
}

uint64_t sub_29A494700(uint64_t a1, unint64_t *a2)
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
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_29A03AFE8(a1, v4);
  sub_29A1EF8E4((v4 + 28));
  operator delete(v4);
  return 1;
}

uint64_t sub_29A494790(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *sub_29A4947C8(const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v6 = result;
    v21 = a3;
    if (sub_29A418240(2))
    {
      v12 = (a4 + 32);
      v13 = *(a4 + 40);
      if (v13)
      {
        v12 = (v13 + 48);
      }

      v19 = *v12;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, v20 & 0xFFFFFFFF00000000 | v21, &__p);
      v14 = v27;
      v18 = __p;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v4);
      p_p = v18;
      if (v14 >= 0)
      {
        p_p = &__p;
      }

      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v19, v6, "Found %s to <%s>", v16, p_p, Text);
      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v4) && (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v4) || pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(v4)))
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidPrimPath::New(&v28);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(v6);
      v23[0] = v7;
      v23[1] = v8;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v23, v24);
      pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(&__p, v24);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v28 + 16, &__p);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p, 0.0, 1.0);
    sub_29A49249C(v6, v4, &__p, v24);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::AddRootIdentity(v24, &v28);
    if (v24[0])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24[0], v9);
    }

    v10 = *v6;
    v11 = *(v6 + 1);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&__p);
    sub_29A494CE0(a3, v10, v11, v10, v11, &v28, 0, &__p, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
    sub_29A1DE3A4(&v26);
    sub_29A41B088();
  }

  return result;
}

void sub_29A494C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, pxrInternal__aapl__pxrReserved__ *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A494CE0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a6, uint64_t a7, pxrInternal__aapl__pxrReserved__ *a8, uint64_t a9)
{
  *&v76 = a2;
  *(&v76 + 1) = a3;
  v75[0] = a4;
  v75[1] = a5;
  if (sub_29A418240(2))
  {
    v40 = *(a9 + 40);
    if (v40)
    {
      v41 = (v40 + 48);
    }

    else
    {
      v41 = (a9 + 32);
    }

    v42 = *v41;
    v43 = v72;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, a1, v72);
    if (v73 < 0)
    {
      v43 = v72[0];
    }

    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v76, &v65);
    pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&__p, &v65, v44);
    if (v71 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Preparing to add %s arc to %s", v45, v46, v43, p_p);
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::Pcp_IndexingPhaseScope(&v74, v42, &v76, &v83);
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83);
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v67);
    sub_29A1DE3A4(&v66);
    sub_29A41B088();
  }

  v74 = 0;
  if (sub_29A418240(2))
  {
    v48 = *(a9 + 40);
    if (v48)
    {
      v49 = (v48 + 48);
    }

    else
    {
      v49 = (a9 + 32);
    }

    v50 = *v49;
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v75, &__p);
    pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&v83, &__p, v51);
    if (v84 >= 0)
    {
      v52 = &v83;
    }

    else
    {
      v52 = v83;
    }

    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v65);
    v55 = pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(a8, &v65);
    if (v55)
    {
      v56 = "<none>";
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v72, a8, v53);
      if (v73 >= 0)
      {
        v56 = v72;
      }

      else
      {
        v56 = v72[0];
      }
    }

    pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v50, &v76, "origin: %s\ninheritArcNum: %d\nignoreIfSameAsSite: %s\n", v54, v52, a7, v56);
    if (!v55 && v73 < 0)
    {
      operator delete(v72[0]);
    }

    sub_29A424AA8(&v65);
  }

  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v76);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::ContainsPrimVariantSelection(Path))
  {
    sub_29A1E21F4(&v65, Path);
    sub_29A1E2240(&v65 + 1, Path + 1);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v65) && (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v65) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v65, &v83);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    LODWORD(__p) = v65;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v65);
    HIDWORD(__p) = HIDWORD(v65);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v65 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v65 + 1);
    sub_29A1DE3A4(&v65);
    if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&__p))
    {
      *&v83 = "pcp/primIndex.cpp";
      *(&v83 + 1) = "_DetermineInheritPath";
      v84 = 3094;
      v85 = "SdfPath pxrInternal__aapl__pxrReserved__::_DetermineInheritPath(const SdfPath &, const PcpMapExpression &)";
      v86 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v83, "!varPath.IsEmpty()", 0);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(Path, &v81);
    v19 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a6, v17, v18);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(v19, &v81, &v83);
    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&__p, &v79);
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v64, &v83, &v79, &__p, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v80);
    sub_29A1DE3A4(&v79);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v83 + 1);
    sub_29A1DE3A4(&v83);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v82);
    sub_29A1DE3A4(&v81);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
    sub_29A1DE3A4(&__p);
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a6, v14, v15);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(v16, Path, &v64);
  }

  v20 = *(a9 + 40);
  v83 = v76;
  v84 = v20;
  v21 = sub_29A490620(&v83);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v64))
  {
    if (sub_29A418240(2))
    {
      v57 = *(a9 + 40);
      if (v57)
      {
        v58 = (v57 + 48);
      }

      else
      {
        v58 = (a9 + 32);
      }

      v59 = *v58;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v64);
      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v59, &v76, "Inheriting from path <%s>", v61, Text);
    }

    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v76);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&__p, LayerStack, &v64);
    DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(v75, v23);
    v77 = sub_29A4954B8(&v76, v21, &__p, a1, a6, DepthBelowIntroduction);
    v78 = v25;
    if (!v77 || v25 == -1)
    {
      v35 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v76);
      if (v64 == *v35 || pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&__p, a8))
      {
        v36 = 0;
        v37 = 0;
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(&v64))
        {
          v37 = 0;
        }

        else
        {
          v37 = 256;
        }

        v36 = 1;
      }

      v77 = sub_29A48E9D4(a9, a1, v76, *(&v76 + 1), v75, &__p, a6, a7, v37 | (v36 << 16) | v36);
      v78 = v38;
    }

    else if (sub_29A418240(2))
    {
      v26 = *(a9 + 40);
      if (v26)
      {
        v27 = (v26 + 48);
      }

      else
      {
        v27 = (a9 + 32);
      }

      v28 = *v27;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, a1, &v83);
      v29 = SHIBYTE(v84);
      v30 = v83;
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v64);
      if (v29 >= 0)
      {
        v33 = &v83;
      }

      else
      {
        v33 = v30;
      }

      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v28, &v76, &v77, v33, v32, "A %s arc to <%s> already exists. Skipping.", v31);
      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v70);
    sub_29A1DE3A4(&v69);
    sub_29A41B088();
  }

  if (sub_29A418240(2))
  {
    v62 = *(a9 + 40);
    if (v62)
    {
      v63 = (v62 + 48);
    }

    else
    {
      v63 = (a9 + 32);
    }

    pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(*v63, &v76, "No appropriate site for inheriting opinions", v34);
  }

  v77 = 0;
  v78 = -1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v64 + 1);
  sub_29A1DE3A4(&v64);
  if (v74)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::_EndScope(&v74);
  }

  return v77;
}

uint64_t sub_29A4954B8(uint64_t *a1, int a2, void *a3, int a4, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a5, int a6)
{
  v11 = a1[1];
  v34 = *a1;
  v35 = v11;
  v12 = **(v34 + 16);
  v13 = *(v12 + 48 * v11 + 28);
  v28 = v34;
  v29 = v13;
  v30 = v12;
  v31 = v34;
  v14 = 0xFFFFLL;
  v32 = 0xFFFFLL;
  v33 = v12;
  while (v13 != v14 || v28 != v31)
  {
    v15 = sub_29A41E444(&v28);
    v16 = v15;
    if (a2 != 3)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v15, &OriginNode);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&OriginNode, a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
      sub_29A1DE3A4(&v27);
      sub_29A41B088();
    }

    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v15) == a4)
    {
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v16);
      v20 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v18, v19);
      v23 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a5, v21, v22);
      if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator==(v20, v23))
      {
        OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(v16);
        v27 = v24;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&OriginNode, v24) == a6)
        {
          return *v16;
        }
      }
    }

    sub_29A41E490(&v28);
    v13 = v29;
    v14 = v32;
  }

  return 0;
}

uint64_t sub_29A495630(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1) == 6)
  {
    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
    v4 = v3;
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(a1);
    if (v4 == v6 && ParentNode == v5)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(a1, v13);
      v9[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a1);
      v9[1] = v7;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v9, &v10);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(v13, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
      sub_29A1DE3A4(&v11);
      sub_29A41B088();
    }
  }

  return 0;
}

void sub_29A49573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::PcpMapExpression *a5, uint64_t a6, uint64_t a7)
{
  *&v101 = a1;
  *(&v101 + 1) = a2;
  *&v100 = a3;
  *(&v100 + 1) = a4;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v101) == 3)
  {
    MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(&v101);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::AddRootIdentity(MapToParent, &v90);
    pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(&v90, a5, v11, &v102);
    if (v90.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v90.__r_.__value_.__l.__data_, v12);
    }

    ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v101);
    sub_29A49573C(ParentNode, v14, v100, *(&v100 + 1), &v102, a6, a7);
    v90.__r_.__value_.__r.__words[0] = 5;
    *&v90.__r_.__value_.__r.__words[1] = v101;
    v92 = 0;
    __p = 0uLL;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v93);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v93 + 1);
    sub_29A48D97C(a7, &v90);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v93 + 1);
    sub_29A1DE3A4(&v93);
    if (SHIBYTE(v92) < 0)
    {
      operator delete(__p);
    }

    if (v102)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v102, v15);
    }
  }

  else
  {
    v89 = a7;
    *&v90.__r_.__value_.__l.__data_ = v100;
    v90.__r_.__value_.__r.__words[2] = **(v100 + 16);
    v90.__r_.__value_.__l.__size_ = *(v90.__r_.__value_.__r.__words[2] + 48 * *(&v100 + 1) + 28);
    v102 = v100;
    v16 = **(v100 + 16);
    *(&v102 + 1) = 0xFFFFLL;
    v103 = v16;
    sub_29A495FDC(&v98, &v90, &v102);
    v18 = v98;
    v17 = v99;
    if (v98 != v99)
    {
      do
      {
        ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v18);
        if (ArcType == 1 || ArcType == 6)
        {
          if (sub_29A418240(2))
          {
            v64 = (v89 + 32);
            v65 = *(v89 + 40);
            if (v65)
            {
              v64 = (v65 + 48);
            }

            v66 = *v64;
            v88 = v87 & 0xFFFFFFFF00000000 | pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v18);
            pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, v88, &v90);
            if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v67 = &v90;
            }

            else
            {
              v67 = v90.__r_.__value_.__r.__words[0];
            }

            pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v18, v97);
            pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&v102, v97, v68);
            if (v103 >= 0)
            {
              v69 = &v102;
            }

            else
            {
              v69 = v102;
            }

            pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v101, v94);
            pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v95, v94, v70);
            v72 = v95;
            if (v96 < 0)
            {
              v72 = v95[0];
            }

            pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v66, v18, &v101, "Attempting to propagate %s of %s to %s.", v71, v67, v69, v72);
            if (v96 < 0)
            {
              operator delete(v95[0]);
            }

            sub_29A424AA8(v94);
          }

          if (a6 && ((v20 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v100), v20 == 6) || v20 == 1) && (DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&v100, v21), DepthBelowIntroduction == pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(v18, v23)))
          {
            if (sub_29A418240(2))
            {
              v25 = (v89 + 32);
              v26 = *(v89 + 40);
              if (v26)
              {
                v25 = (v26 + 48);
              }

              pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(*v25, v18, &v101, "Skipping ancestral class", v24);
            }
          }

          else
          {
            v27 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v18);
            v28 = *a5;
            if (*a5 && !*v28 && pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity((v28 + 6)))
            {
              v29 = *v27;
              v97[0] = v29;
              if (v29)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement(v29);
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Inverse(a5, v95);
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(v27, v95, v30, &v102);
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(a5, &v102, v31, &v90);
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::AddRootIdentity(&v90, v97);
              if (v90.__r_.__value_.__r.__words[0])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v90.__r_.__value_.__l.__data_, v32);
              }

              if (v102)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v102, v32);
              }

              if (v95[0])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v95[0], v32);
              }
            }

            if (sub_29A418240(2))
            {
              v73 = (v89 + 32);
              v74 = *(v89 + 40);
              if (v74)
              {
                v73 = (v74 + 48);
              }

              v75 = *v73;
              v76 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(a5, v33, v34);
              pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v76, &v90);
              if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v78 = &v90;
              }

              else
              {
                v78 = v90.__r_.__value_.__r.__words[0];
              }

              pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v75, v18, &v101, "Transfer function:\n%s", v77, v78);
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }
            }

            if (sub_29A418240(2))
            {
              v79 = (v89 + 32);
              v80 = *(v89 + 40);
              if (v80)
              {
                v79 = (v80 + 48);
              }

              v81 = *v79;
              v82 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v97, v35, v36);
              pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v82, &v90);
              if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = &v90;
              }

              else
              {
                v84 = v90.__r_.__value_.__r.__words[0];
              }

              pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v81, v18, &v101, "Implied class:\n%s", v83, v84);
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }
            }

            *&v102 = 0;
            *(&v102 + 1) = -1;
            v93 = v101;
            v37 = **(v101 + 16);
            v38 = *(v37 + 48 * *(&v101 + 1) + 28);
            v90.__r_.__value_.__r.__words[0] = v101;
            v90.__r_.__value_.__l.__size_ = v38;
            v90.__r_.__value_.__r.__words[2] = v37;
            *&__p = v101;
            *(&__p + 1) = 0xFFFFLL;
            v92 = v37;
            while (*&v90.__r_.__value_.__l.__data_ != __p)
            {
              v39 = sub_29A45ABD4(&v90);
              OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(v39);
              if (v41 == *(v18 + 1) && *v18 == OriginNode)
              {
                v42 = sub_29A45ABD4(&v90);
                v43 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v42);
                v46 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v43, v44, v45);
                v49 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v97, v47, v48);
                if (pxrInternal__aapl__pxrReserved__::PcpMapFunction::operator==(v46, v49))
                {
                  v102 = *sub_29A41E444(&v90);
                  if (sub_29A418240(2))
                  {
                    v85 = (v89 + 32);
                    v86 = *(v89 + 40);
                    if (v86)
                    {
                      v85 = (v86 + 48);
                    }

                    pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(*v85, v18, &v102, "Found previously added implied inherit node", v50);
                  }

                  break;
                }
              }

              sub_29A41E490(&v90);
            }

            if (v102)
            {
              v51 = *(&v102 + 1) == -1;
            }

            else
            {
              v51 = 1;
            }

            if (v51)
            {
              v52 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v18);
              v53 = v101;
              v54 = *v18;
              v55 = *(v18 + 1);
              SiblingNumAtOrigin = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(v18);
              pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v18, &v90);
              *&v102 = sub_29A494CE0(v52, v53, *(&v53 + 1), v54, v55, v97, SiblingNumAtOrigin, &v90, v89);
              *(&v102 + 1) = v57;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v90.__r_.__value_.__r.__words[1] + 1);
              sub_29A1DE3A4(&v90.__r_.__value_.__r.__words[1]);
              sub_29A41B088();
            }

            if (sub_29A490B68(v18))
            {
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Inverse(v97, v95);
              v60 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(v18);
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(a5, v60, v61, v94);
              pxrInternal__aapl__pxrReserved__::PcpMapExpression::Compose(v95, v94, v62, &v90);
              if (v94[0])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v94[0], v63);
              }

              if (v95[0])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v95[0], v63);
              }

              sub_29A49573C(v102, *(&v102 + 1), *v18, *(v18 + 1), &v90, 0, v89);
              if (v90.__r_.__value_.__r.__words[0])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v90.__r_.__value_.__l.__data_, v59);
              }
            }

            if (v97[0])
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v97[0], v59);
            }
          }
        }

        v18 = (v18 + 16);
      }

      while (v18 != v17);
      v18 = v98;
    }

    if (v18)
    {
      v99 = v18;
      operator delete(v18);
    }
  }
}

void sub_29A495E40(_Unwind_Exception *exception_object, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, pxrInternal__aapl__pxrReserved__ *a26, uint64_t a27, pxrInternal__aapl__pxrReserved__ *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, atomic_uint *a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a34, a2);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A495FDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = a3[1];
  if (v6 != v8 || v5 != v7)
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 = *(a2[2] + 48 * v6 + 34);
    }

    while (v8 != v6 || v5 != v7);
  }

  v14 = *a2;
  v15 = a2[2];
  v12 = *a3;
  v13 = a3[2];
  sub_29A49607C(a1, &v14, &v12, v4);
  return a1;
}

char *sub_29A49607C(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *a2;
    v8 = a2[1];
    v9 = *a3;
    v10 = a3[1];
    v11 = *(v6 + 1);
    if (v8 != v10 || v7 != v9)
    {
      v13 = a2[2];
      do
      {
        *v11 = v7;
        v11[1] = v8;
        v11 += 2;
        v8 = *(v13 + 48 * v8 + 34);
      }

      while (v10 != v8 || v7 != v9);
    }

    *(v6 + 1) = v11;
  }

  return result;
}

void sub_29A4960F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A496110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v39 = a1;
  *(&v39 + 1) = a2;
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v39);
  v6 = v5;
  v38[0] = ParentNode;
  v38[1] = v5;
  OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(&v39);
  v9 = v6 == v8 && ParentNode == OriginNode;
  if (!v9 && pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v38) == 3)
  {
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v38, &v42);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v39, &v40);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v42, &v40);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 3);
    sub_29A1DE3A4(&v40 + 2);
    sub_29A41B088();
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v39) == 6)
  {
    if (sub_29A418240(2))
    {
      v28 = *(a3 + 40);
      if (v28)
      {
        v29 = (v28 + 48);
      }

      else
      {
        v29 = (a3 + 32);
      }

      v30 = *v29;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v39);
      *&v40 = v31;
      *(&v40 + 1) = v32;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v39, &v36);
      pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(&v42, &v36, v33);
      if (v43 >= 0)
      {
        v35 = &v42;
      }

      else
      {
        v35 = v42;
      }

      pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(v30, &v39, &v40, "Propagating specializes arc %s to root", v34, v35);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      sub_29A424AA8(&v36);
    }

    IsInert = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(&v39);
    SpecContributionRestrictedDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSpecContributionRestrictedDepth(&v39);
    if (IsInert)
    {
      v12 = SpecContributionRestrictedDepth;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetInert(&v39, 0);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v39);
      v14 = v13;
      v16 = v15;
      v17 = v39;
      MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(&v39);
      sub_29A496928(v14, v16, v17, *(&v17 + 1), MapToRoot, &v39, a3);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetSpecContributionRestrictedDepth(&v39, v12);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(&v39);
      v20 = v19;
      v22 = v21;
      v23 = v39;
      v24 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(&v39);
      sub_29A496928(v20, v22, v23, *(&v23 + 1), v24, &v39, a3);
    }
  }

  v42 = v39;
  v43 = **(v39 + 16);
  *(&v42 + 1) = *(v43 + 48 * *(&v39 + 1) + 28);
  v40 = v39;
  v25 = **(v39 + 16);
  *(&v40 + 1) = 0xFFFFLL;
  v41 = v25;
  sub_29A495FDC(&v36, &v42, &v40);
  v26 = v36;
  v27 = v37;
  if (v36 != v37)
  {
    do
    {
      sub_29A496110(*v26, v26[1], a3);
      v26 += 2;
    }

    while (v26 != v27);
    v26 = v36;
  }

  if (v26)
  {
    v37 = v26;
    operator delete(v26);
  }
}

void sub_29A4963C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  sub_29A424AA8(&__p);
}

void sub_29A496430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a5, uint64_t a6, uint64_t a7)
{
  sub_29A496560(a1, a2, a3, a4, a5, &v20);
  v11 = v20;
  v12 = v21;
  if (v20)
  {
    v13 = v21 == -1;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    *&v23 = a3;
    v24 = **(a3 + 16);
    *(&v23 + 1) = *(v24 + 48 * a4 + 28);
    v22[0] = a3;
    v22[1] = 0xFFFFLL;
    v22[2] = v24;
    sub_29A495FDC(&v18, &v23, v22);
    v14 = v18;
    v15 = v19;
    if (v18 != v19)
    {
      do
      {
        v23 = *v14;
        v16 = v23;
        MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(&v23);
        sub_29A496430(v11, v12, v16, *(&v16 + 1), MapToParent, a6, a7);
        ++v14;
      }

      while (v14 != v15);
      v14 = v18;
    }

    if (v14)
    {
      v19 = v14;
      operator delete(v14);
    }
  }
}

void sub_29A496544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A496560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a5@<X6>, uint64_t a6@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v18);
  if (v11 != a2 || a1 != ParentNode)
  {
    ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v19);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v18, &v20);
    v14 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v18);
    DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&v18, v15);
    sub_29A4954B8(v19, ArcType, &v20, v14, a5, DepthBelowIntroduction);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
    sub_29A1DE3A4(&v21);
    sub_29A41B088();
  }

  result = *&v18;
  *a6 = v18;
  *(a6 + 16) = 0;
  return result;
}

BOOL sub_29A4968BC(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1);
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
  v5 = v4;
  OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a1);
  if (ArcType != 6 && ArcType != 1)
  {
    return 0;
  }

  return v5 != v7 || ParentNode != OriginNode;
}

void sub_29A496928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::PcpMapExpression::_Node **a5, uint64_t a6, uint64_t a7)
{
  sub_29A496560(a1, a2, a3, a4, a5, &v20);
  v11 = v20;
  v12 = v21;
  if (v20)
  {
    v13 = v21 == -1;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    *&v23 = a3;
    v24 = **(a3 + 16);
    *(&v23 + 1) = *(v24 + 48 * a4 + 28);
    v22[0] = a3;
    v22[1] = 0xFFFFLL;
    v22[2] = v24;
    sub_29A495FDC(&v18, &v23, v22);
    v14 = v18;
    v15 = v19;
    if (v18 != v19)
    {
      do
      {
        v23 = *v14;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v23) != 6)
        {
          v16 = v23;
          MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(&v23);
          sub_29A496928(v11, v12, v16, *(&v16 + 1), MapToParent, a6, a7);
        }

        ++v14;
      }

      while (v14 != v15);
      v14 = v18;
    }

    if (v14)
    {
      v19 = v14;
      operator delete(v14);
    }
  }
}

void sub_29A496A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A496A68(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  pxrInternal__aapl__pxrReserved__::PcpComposeSiteVariantSets();
}

void sub_29A496C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a12 != a11 && a27 < 0)
  {
    operator delete(__p);
  }

  a15 = v27 - 112;
  sub_29A012C90(&a15);
  _Unwind_Resume(a1);
}

void sub_29A496CDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v5, a1, a2);
  pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(a3, &v5, v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  sub_29A41B088();
}

void *sub_29A496D58@<X0>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_29A01BCCC(a3, a1);
  if ((a3 + 8) == result || (v8 = result[7], v9 = result[8], v8 == v9))
  {
LABEL_5:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    while (1)
    {
      result = sub_29A01BCCC(a2, v8);
      if ((a2 + 8) != result)
      {
        break;
      }

      v8 = (v8 + 24);
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    if (*(v8 + 23) < 0)
    {
      v11 = *v8;
      v12 = *(v8 + 1);

      return sub_29A008D14(a4, v11, v12);
    }

    else
    {
      v10 = *v8;
      *(a4 + 16) = *(v8 + 2);
      *a4 = v10;
    }
  }

  return result;
}

uint64_t sub_29A496E28(uint64_t a1, int a2, _OWORD *a3, _DWORD *a4, uint64_t a5, int a6)
{
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v13 = *(a5 + 16);
  }

  *a1 = a2;
  *(a1 + 4) = a6;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *__p;
  *(a1 + 40) = v13;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  sub_29A1E21F4((a1 + 48), a4);
  sub_29A1E2240((a1 + 52), a4 + 1);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A496EE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(this);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a3, a4, a6, &v26);
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v25, Path, a3, &v26, 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
  sub_29A1DE3A4(&v26);
  NonVariantPathElementCount = pxrInternal__aapl__pxrReserved__::PcpNode_GetNonVariantPathElementCount(a3, v13);
  v26 = *this;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v26))
  {
LABEL_11:
    v15 = 257;
  }

  else
  {
    v15 = 65793;
    while (1)
    {
      ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v26);
      v18 = ArcType == 6 || ArcType == 1;
      if (v18 && !pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&v26, v17) && !pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(&v26))
      {
        break;
      }

      *&v26 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v26);
      *(&v26 + 1) = v19;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v26))
      {
        goto LABEL_11;
      }
    }
  }

  v20 = *this;
  v21 = *(this + 1);
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(this);
  pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v26, LayerStack, &v25);
  pxrInternal__aapl__pxrReserved__::PcpMapExpression::Identity(&v24);
  sub_29A48EC58(a1, 2u, v20, v21, this, &v26, &v24, a5, NonVariantPathElementCount, v15);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24, v23);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 3);
  sub_29A1DE3A4(&v26 + 2);
  sub_29A41B088();
}

void sub_29A4970FC(int a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(this, v7);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v8, a3, a5, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  sub_29A41B088();
}

uint64_t *sub_29A49727C(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  if ((*(a1 + 192) & 1) == 0)
  {
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 184) = 1065353216;
    *(a1 + 192) = 1;
  }

  v8 = *a2;
  sub_29A1E21F4(&v9, a3);
  sub_29A1E2240(&v10, a3 + 1);
  *(&v11 + 1) = a3;
  v12 = &v8;
  *&v11 = a2;
  v6 = sub_29A497598(a1 + 152, &v8, &unk_29B4D6118, &v12, &v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  return v6 + 5;
}

void **sub_29A497350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A4979C0(a1);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = **(*a1 + 16);
  for (i = 0xFFFFLL; v6 != 0xFFFF; i = 0xFFFFLL)
  {
    v9 = v7 + 48 * v6;
    i = *(v9 + 34);
    if (i != 0xFFFF)
    {
      break;
    }

    v6 = *(v9 + 24);
  }

  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = i;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_29A4973C4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

uint64_t sub_29A4973FC(uint64_t a1)
{
  sub_29A497438(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A497438(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A49747C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A49747C(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_29A4974C8(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  return sub_29A1DE3A4((a1 + 16));
}

void sub_29A4974C8(void ***a1)
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
        v4 -= 24;
        sub_29A497550(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A497550(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 16));
  sub_29A1DE3A4((a2 + 12));

  return sub_29A1E3AEC(a2);
}

uint64_t *sub_29A497598(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, uint64_t a3, _OWORD **a4, __int128 *a5)
{
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(this);
  v11 = *(this + 4);
  v12 = v11 + UniqueIdentifier + (v11 + UniqueIdentifier) * (v11 + UniqueIdentifier);
  v13 = bswap64(0x9E3779B97F4A7C55 * (*(this + 5) + ((*(this + 5) + v11 + (v12 >> 1) + (*(this + 5) + v11 + (v12 >> 1)) * (*(this + 5) + v11 + (v12 >> 1))) >> 1)));
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v5 = v13;
      if (v13 >= v14)
      {
        v5 = v13 % v14;
      }
    }

    else
    {
      v5 = v13 & (v14 - 1);
    }

    v16 = *(*a1 + 8 * v5);
    if (v16)
    {
      result = *v16;
      if (*v16)
      {
        do
        {
          v18 = result[1];
          if (v18 == v13)
          {
            if (result[3] == *(this + 1) && result[2] == *this && result[4] == *(this + 2))
            {
              return result;
            }
          }

          else
          {
            if (v15.u32[0] > 1uLL)
            {
              if (v18 >= v14)
              {
                v18 %= v14;
              }
            }

            else
            {
              v18 &= v14 - 1;
            }

            if (v18 != v5)
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

  sub_29A49783C(a1, v13, a4, a5, v29);
  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v14 || (v20 * v14) < v19)
  {
    v21 = 1;
    if (v14 >= 3)
    {
      v21 = (v14 & (v14 - 1)) != 0;
    }

    v22 = v21 | (2 * v14);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_29A019AA0(a1, v24);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v5 = v13 % v14;
      }

      else
      {
        v5 = v13;
      }
    }

    else
    {
      v5 = (v14 - 1) & v13;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v5);
  if (v26)
  {
    result = v29[0];
    *v29[0] = *v26;
    *v26 = result;
  }

  else
  {
    v27 = v29[0];
    *v29[0] = *(a1 + 16);
    *(a1 + 16) = v27;
    *(v25 + 8 * v5) = a1 + 16;
    result = v29[0];
    if (*v29[0])
    {
      v28 = *(*v29[0] + 8);
      if ((v14 & (v14 - 1)) != 0)
      {
        if (v28 >= v14)
        {
          v28 %= v14;
        }
      }

      else
      {
        v28 &= v14 - 1;
      }

      *(*a1 + 8 * v28) = v29[0];
      result = v29[0];
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A497824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A498098(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD **a3@<X3>, __int128 *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  v13 = *a3;
  v12 = *a4;
  result = sub_29A4978D4((v10 + 2), &v13, &v12);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29A4978D4(uint64_t a1, _OWORD **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = **a2;
  sub_29A1DDD84((a1 + 16), v5 + 4);
  sub_29A1DDDC0((a1 + 20), v5 + 5);
  sub_29A497944(a1 + 24, *a3, *(a3 + 8));
  return a1;
}

uint64_t sub_29A497944(uint64_t a1, _OWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A4979C0(a1);
  sub_29A497AA4(*(a1 + 16) + 24 * *(a1 + 8), a3);
  return a1;
}

void sub_29A4979A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A4974C8(va);
  _Unwind_Resume(a1);
}

void **sub_29A4979C0(void **result)
{
  v1 = *result;
  v2 = *(*result + 2);
  v3 = result + 2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((result[3] - result[2]) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 4) < v4)
  {
    v6 = result;
    v7[0] = "pcp/traversalCache.h";
    v7[1] = "_ResizeForGraph";
    v7[2] = 165;
    v7[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_TraversalCache<pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexer::_VariantSelectionInfo>::_ResizeForGraph() [Data = pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexer::_VariantSelectionInfo]";
    v8 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "graph->_GetNumNodes() >= _cache.size()", 0);
    v2 = v1[2];
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 3);
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 4);
  if (v5 > v4)
  {
    return sub_29A497B04(v3, v5);
  }

  return result;
}

uint64_t sub_29A497AA4(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A2258F0(a1, a2);
    sub_29A225948((a1 + 4), a2 + 1);
  }

  else
  {
    sub_29A1E21F4(a1, a2);
    sub_29A1E2240((a1 + 4), a2 + 1);
    *(a1 + 8) = 1;
  }

  return a1;
}

void **sub_29A497B04(void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_29A497BA0(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 24;
      result = sub_29A497550(v2, v3);
    }

    *(v2 + 8) = v7;
  }

  return result;
}

void **sub_29A497BA0(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {

    return sub_29A497CFC(a1, a2);
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v19 = a1;
    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v16 = v10;
    v17 = &v10[24 * v6];
    *&v18 = v17;
    *(&v18 + 1) = &v10[24 * v9];
    sub_29A497D7C(&v16, a2);
    v12 = a1[1];
    v13 = &v17[*a1 - v12];
    sub_29A497E0C(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = a1[2];
    *(a1 + 1) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    return sub_29A49801C(&v16);
  }
}

void sub_29A497CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A49801C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A497CFC(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  if (a2)
  {
    v4 = (v3 + 24 * a2);
    v5 = (v3 + 16);
    do
    {
      *(v5 - 2) = 0;
      *(v5 - 1) = 0;
      *v5 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v5 - 1);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v5);
      v5[1] = 2;
      v6 = v5 + 2;
      v5 += 6;
    }

    while (v6 != v4);
  }

  else
  {
    v4 = *(result + 1);
  }

  *(v2 + 1) = v4;
  return result;
}

_DWORD *sub_29A497D7C(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 2);
  if (a2)
  {
    v4 = (v3 + 24 * a2);
    v5 = (v3 + 12);
    do
    {
      *(v5 - 1) = 0;
      *(v5 - 3) = 0;
      *(v5 + 1) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v5);
      result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v5 + 1);
      v5[2] = 2;
      v6 = v5 + 3;
      v5 += 6;
    }

    while (v6 != v4);
  }

  else
  {
    v4 = *(result + 2);
  }

  *(v2 + 2) = v4;
  return result;
}

uint64_t sub_29A497E0C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_29A497EC0(a1, a4, v7);
      v7 += 6;
      a4 = v12 + 6;
      v12 += 6;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A497550(a1, v5);
      v5 += 24;
    }
  }

  return sub_29A497F90(v9);
}

_DWORD *sub_29A497EC0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A497F10(a2, a3);
  sub_29A1DDD84(a2 + 3, a3 + 3);
  result = sub_29A1DDDC0(a2 + 4, a3 + 4);
  a2[5] = a3[5];
  return result;
}

uint64_t sub_29A497F10(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_29A497F44(a1, a2);
  return a1;
}

_DWORD *sub_29A497F44(_DWORD *result, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = result;
    v4 = sub_29A1DDD84(result, a2);
    result = sub_29A1DDDC0(v4 + 1, (a2 + 4));
    *(v3 + 8) = 1;
  }

  return result;
}

uint64_t sub_29A497F90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A497FC8(a1);
  }

  return a1;
}

uint64_t *sub_29A497FC8(uint64_t *result)
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
      v3 -= 24;
      result = sub_29A497550(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A49801C(void **a1)
{
  sub_29A498050(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A498050(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 24;
      result = sub_29A497550(v4, v1 - 24);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29A498098(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A49747C(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A4980F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, int a3)
{
  if (*(a2 + 1) >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3))
  {
    sub_29B2A88B4(v9);
    if (!a3)
    {
      return *(a1 + 16) + 24 * *(a2 + 1);
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    sub_29A49819C(a1, a2, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    sub_29A1DE3A4(&v7);
  }

  return *(a1 + 16) + 24 * *(a2 + 1);
}

_DWORD *sub_29A49819C@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *(a1 + 16) + 24 * *(a2 + 1);
  if ((*(v4 + 8) & 1) == 0)
  {
    v15[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
    v15[1] = v7;
    v8 = (*(a1 + 16) + 24 * v7);
    if ((*(v8 + 8) & 1) == 0)
    {
      sub_29A49819C(&v14, a1, v15);
      sub_29A4982E8(v8, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
      sub_29A1DE3A4(&v14);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v8))
    {
      MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a2);
      v12 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v10, v11);
      pxrInternal__aapl__pxrReserved__::PcpMapFunction::MapTargetToSource(v12, v8, &v14);
    }

    else
    {
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14 + 1);
    }

    sub_29A4982E8(v4, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
    sub_29A1DE3A4(&v14);
  }

  sub_29A1E21F4(a3, v4);
  return sub_29A1E2240(a3 + 1, (v4 + 4));
}

void sub_29A4982C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4982E8(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0((a1 + 4), a2 + 1);
  *(a1 + 8) = 1;
  return a1;
}

_DWORD *sub_29A498348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A4980F4(*a1, (a1 + 1), 1);
  *a2 = *(a1 + 1);
  sub_29A1E21F4((a2 + 16), v4);
  result = sub_29A1E2240((a2 + 20), v4 + 1);
  *(a2 + 24) = v4 + 3;
  return result;
}

uint64_t sub_29A4983B0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

uint64_t sub_29A4983E8(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 56);
  if (v1 != v2)
  {
    v3 = result;
    v4 = (v1 + 14);
    do
    {
      v5 = *v1 - 9;
      if (v5 <= 7 && ((0xC3u >> v5) & 1) != 0)
      {
        *v1 = *&asc_29B494E18[4 * v5];
        result = sub_29A48E570(*(v3 + 48), v4, (0x6DB6DB6DB6DB6DB7 * ((v4 - *(v3 + 48)) >> 3)));
      }

      v1 += 14;
      v4 += 56;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A498494(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1))
  {
    return 1;
  }

  v3 = *(a1 + 1);
  v14 = *a1;
  v15 = v3;
  v4 = **(v14 + 16);
  v5 = *(v4 + 48 * v3 + 28);
  v8 = v14;
  v9 = v5;
  v10 = v4;
  v11 = v14;
  v6 = 0xFFFFLL;
  v12 = 0xFFFFLL;
  v13 = v4;
  while (v5 != v6 || v8 != v11)
  {
    v7 = sub_29A41E444(&v8);
    if (sub_29A498494(v7))
    {
      return 1;
    }

    sub_29A41E490(&v8);
    v5 = v9;
    v6 = v12;
  }

  return 0;
}

uint64_t sub_29A498538(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(a1, v3, &v10);
  LOBYTE(LayerStack) = pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  if (LayerStack)
  {
    return 1;
  }

  v5 = *(a1 + 1);
  v16 = *a1;
  v17 = v5;
  v6 = **(v16 + 16);
  v7 = *(v6 + 48 * v5 + 28);
  v10 = v16;
  v11 = v7;
  v12 = v6;
  v13 = v16;
  v8 = 0xFFFFLL;
  v14 = 0xFFFFLL;
  v15 = v6;
  while (v7 != v8 || v10 != v13)
  {
    v9 = sub_29A41E444(&v10);
    if (sub_29A498538(v9))
    {
      return 1;
    }

    sub_29A41E490(&v10);
    v7 = v11;
    v8 = v14;
  }

  return 0;
}

uint64_t sub_29A498630(uint64_t a1, uint64_t a2, void *a3, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a4, uint64_t a5)
{
  *&v25 = a1;
  *(&v25 + 1) = a2;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v8 = **(a1 + 16);
  v9 = *(v8 + 48 * a2 + 28);
  *&v26 = a1;
  *(&v26 + 1) = v9;
  v27 = v8;
  v28 = a1;
  v10 = 0xFFFFLL;
  v29 = 0xFFFFLL;
  v30 = v8;
  while (v9 != v10 || v26 != v28)
  {
    v11 = sub_29A45ABD4(&v26);
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v11) != 6)
    {
      v12 = sub_29A41E444(&v26);
      sub_29A498630(*v12, v12[1], a3, a4, a5);
    }

    sub_29A41E490(&v26);
    v9 = *(&v26 + 1);
    v10 = v29;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(&v25))
  {
    goto LABEL_8;
  }

  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&v25);
  if ((result & 1) == 0)
  {
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(&v25, v14);
    if (result)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSymmetry(&v25);
      if ((result & 1) == 0)
      {
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&v25) != 1 || *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v25) != *a3 || ((OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(&v25), v17 = v16, ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v25), v17 != v19) || OriginNode != ParentNode ? (*&v26 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginRootNode(&v25), *(&v26 + 1) = v19) : (v26 = v25), pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(&v26, v19, &v32), IsRootPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath(&v32), result = sub_29A1DCEA8(&v32), (IsRootPrimPath & 1) != 0))
        {
          v31 = v25;
          v21 = **(v25 + 16);
          v22 = *(v21 + 48 * *(&v25 + 1) + 28);
          *&v26 = v25;
          *(&v26 + 1) = v22;
          v27 = v21;
          v28 = v25;
          v23 = 0xFFFFLL;
          v29 = 0xFFFFLL;
          v30 = v21;
          while (v22 != v23 || v26 != v28)
          {
            v24 = sub_29A41E444(&v26);
            result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(v24);
            if (!result)
            {
              return result;
            }

            sub_29A41E490(&v26);
            v22 = *(&v26 + 1);
            v23 = v29;
          }

          if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(&v25) || (result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v25), (result & 1) == 0))
          {
LABEL_8:
            pxrInternal__aapl__pxrReserved__::PcpNodeRef::SetCulled(&v25, 1);
            result = pxrInternal__aapl__pxrReserved__::Pcp_AddCulledDependency(&v25, a4);
            if (a5)
            {
              pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v25, &v26);
              sub_29A498A14(a5, &v26, &v26);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 3);
              sub_29A1DE3A4(&v26 + 2);
              sub_29A41B088();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A4988B8(uint64_t a1, uint64_t a2, void *a3)
{
  v17[0] = a1;
  v17[1] = a2;
  v15 = a1;
  v16 = a2;
  v4 = **(a1 + 16);
  v5 = *(v4 + 48 * a2 + 28);
  v10 = a1;
  v11[0] = v5;
  v11[1] = v4;
  v12 = a1;
  v6 = 0xFFFFLL;
  v13 = 0xFFFFLL;
  v14 = v4;
  v7 = 1;
  while (v5 != v6 || v10 != v12)
  {
    v8 = sub_29A41E444(&v10);
    v7 &= sub_29A4988B8(*v8, v8[1], a3);
    sub_29A41E490(&v10);
    v5 = v11[0];
    v6 = v13;
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(v17, &v10);
    sub_29A498D58(a3, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
    sub_29A1DE3A4(v11);
    sub_29A41B088();
  }

  return pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(v17);
}

void *sub_29A4989C8(void *result)
{
  if (result[1] == result[4] && *result == result[3])
  {
    sub_29B2A8900();
  }

  return result;
}

void *sub_29A498A14(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::Hash::operator()(v25, a2));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v7)
          {
            if (pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(v12 + 2, a2))
            {
              return v12;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v13 >= v8)
              {
                v13 %= v8;
              }
            }

            else
            {
              v13 &= v8 - 1;
            }

            if (v13 != v3)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A498C7C(a1, v7, a3, v25);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    v12 = v25[0];
    *v25[0] = *v21;
    *v21 = v12;
  }

  else
  {
    v22 = v25[0];
    *v25[0] = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v3) = a1 + 16;
    v12 = v25[0];
    if (*v25[0])
    {
      v23 = *(*v25[0] + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25[0];
      v12 = v25[0];
    }
  }

  ++*(a1 + 24);
  return v12;
}

void sub_29A498C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A498CFC(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A498C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = *a3;
  *a3 = 0;
  sub_29A1DDD84(v8 + 6, (a3 + 8));
  result = sub_29A1DDDC0(v8 + 7, (a3 + 12));
  *(a4 + 16) = 1;
  return result;
}

void sub_29A498CFC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A481C38(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A498D58(void *a1, void *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::Hash::operator()(&v14, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * v4);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void **sub_29A498E70(void **a1)
{
  sub_29A498EAC(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A498EAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A481C38(a2 + 16);
  }
}

void sub_29A498EF0(uint64_t *a1, uint64_t a2)
{
  sub_29A03A998(a2, a1);
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v5 = **(v15 + 16);
  v6 = *(v5 + 48 * v4 + 28);
  v9 = v15;
  v10 = v6;
  v11 = v5;
  v12 = v15;
  v7 = 0xFFFFLL;
  v13 = 0xFFFFLL;
  v14 = v5;
  while (v6 != v7 || v9 != v12)
  {
    v8 = sub_29A41E444(&v9);
    sub_29A498EF0(v8, a2);
    sub_29A41E490(&v9);
    v6 = v10;
    v7 = v13;
  }
}

uint64_t sub_29A498F90(uint64_t a1, uint64_t a2, char *a3)
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
    v9[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::PcpNodeRef>, true>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::PcpNodeRef>, Reverse = true]";
    v10 = 0;
    v11 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v9, "iterator exhausted", a3);
  }

  return v7 - 16;
}

uint64_t sub_29A499018(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::PcpNodeRef>, true>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::PcpNodeRef>, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 - 16;
  }

  return a1;
}

uint64_t sub_29A49909C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = sub_29A439A68(a1, a4, 0.0, 0.5);
  sub_29A44E22C(v7, a2, a3);
  return a1;
}

void sub_29A499100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 8);
  sub_29A36B0E8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A49911C(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, void **a2, uint64_t *a3, uint64_t a4)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a1);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + 1);
    v20 = *a1;
    v21 = v9;
    v10 = **(v20 + 16);
    v11 = *(v10 + 48 * v9 + 30);
    v14 = v20;
    v15 = v11;
    v16 = v10;
    v17 = v20;
    v12 = 0xFFFFLL;
    v18 = 0xFFFFLL;
    v19 = v10;
    while (v11 != v12 || v14 != v17)
    {
      v13 = sub_29A424AF0(&v14);
      sub_29A49911C(v13, a2, a3, a4);
      sub_29A424B3C(&v14);
      v11 = v15;
      v12 = v18;
    }

    return sub_29A499420(a1, a2, a3);
  }

  return result;
}

uint64_t *sub_29A4991E4(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, uint64_t *a2)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(a1);
  if (result)
  {
    v5 = *(a1 + 1);
    v20 = *a1;
    v21 = v5;
    v6 = **(v20 + 16);
    v7 = *(v6 + 48 * v5 + 30);
    ParentNode = v20;
    v15 = v7;
    v16 = v6;
    v17 = v20;
    v8 = 0xFFFFLL;
    v18 = 0xFFFFLL;
    v19 = v6;
    while (v7 != v8 || ParentNode != v17)
    {
      v9 = sub_29A424AF0(&ParentNode);
      sub_29A499304(v9, a2, 0);
      result = sub_29A424B3C(&ParentNode);
      v7 = v15;
      v8 = v18;
    }
  }

  else
  {
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(a1) || !pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a1))
    {
      v11 = 1;
    }

    else
    {
      ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
      v15 = v10;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode))
      {
        v11 = 0;
      }

      else
      {
        do
        {
          IsDueToAncestor = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(&ParentNode);
          if (!IsDueToAncestor)
          {
            break;
          }

          ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&ParentNode);
          v15 = v13;
        }

        while (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode(&ParentNode));
        v11 = IsDueToAncestor ^ 1;
      }
    }

    return sub_29A499304(a1, a2, v11);
  }

  return result;
}

uint64_t *sub_29A499304(uint64_t *a1, uint64_t *a2, char a3)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a1);
  if ((result & 1) == 0)
  {
    if ((a3 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a1) & 1) == 0)
    {
      HasSpecs = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      HasSpecs = 0;
    }

    v9 = a1[1];
    v20 = *a1;
    v21 = v9;
    v10 = **(v20 + 16);
    v11 = *(v10 + 48 * v9 + 30);
    v14 = v20;
    v15 = v11;
    v16 = v10;
    v17 = v20;
    v12 = 0xFFFFLL;
    v18 = 0xFFFFLL;
    v19 = v10;
    while (v11 != v12 || v14 != v17)
    {
      v13 = sub_29A424AF0(&v14);
      sub_29A499304(v13, a2, v7);
      sub_29A424B3C(&v14);
      v11 = v15;
      v12 = v18;
    }

    return sub_29A4993EC(a2, *a1, a1[1], HasSpecs);
  }

  return result;
}

uint64_t *sub_29A4993EC(uint64_t *result, uint64_t a2, uint64_t a3, int a4)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a4)
  {
    return sub_29A499420(v4, result[1], result[2]);
  }

  return result;
}

uint64_t *sub_29A499420(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, void **a2, uint64_t *a3)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a1);
  if (result)
  {
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
    v8 = sub_29A4184C4(LayerStack);
    if (pxrInternal__aapl__pxrReserved__::PcpLayerStack::HasRelocates(v8))
    {
      v48[0] = 0;
      v48[1] = 0;
      v46 = 0;
      v47 = v48;
      v44 = &v45;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v41 = &v42;
      v9 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
      v10 = sub_29A4184C4(v9);
      IncrementalRelocatesSourceToTarget = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIncrementalRelocatesSourceToTarget(v10);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
      if (*(IncrementalRelocatesSourceToTarget + 8))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
      v13 = sub_29A4184C4(v12);
      IncrementalRelocatesTargetToSource = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIncrementalRelocatesTargetToSource(v13);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
      if (*(IncrementalRelocatesTargetToSource + 8))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      if (v43 | v46)
      {
        v39 = 0uLL;
        v40 = 0;
        sub_29A1D7F98(&v39, (a2[1] - *a2) >> 3);
        v17 = a2[1];
        v37 = *a2;
        v38 = v17;
        while (v37 != v38)
        {
          v18 = sub_29A2F8C94(&v37, v15, v16);
          v21 = sub_29A31B8F0(&v41, v18);
          if (&v42 == v21)
          {
            v24 = sub_29A2F8C94(&v37, v19, v20);
            if (&v45 == sub_29A31B8F0(&v44, v24))
            {
              v28 = sub_29A2F8C94(&v37, v25, v26);
              sub_29A1D8028(&v39, v28);
            }

            else
            {
              v27 = sub_29A2F8C94(&v37, v25, v26);
              sub_29A499C08(a3, v27, bswap64(0x9E3779B97F4A7C55 * (*v27 & 0xFFFFFFFFFFFFFFF8)));
            }
          }

          else
          {
            v22 = sub_29A2F8C94(&v37, v19, v20);
            sub_29A499C08(a3, v22, bswap64(0x9E3779B97F4A7C55 * (*v22 & 0xFFFFFFFFFFFFFFF8)));
            sub_29A44BAD8(a3, (v21 + 40), (v21 + 40));
            if (v23)
            {
              sub_29A1D8028(&v39, (v21 + 40));
            }
          }

          sub_29A2F8D14(&v37);
        }

        v29 = *a2;
        *a2 = v39;
        v39 = v29;
        v30 = a2[2];
        a2[2] = v40;
        v40 = v30;
        v37 = &v39;
        sub_29A124AB0(&v37);
      }

      sub_29A499A9C(a2, a2[1], v47, v48);
      sub_29A49A0A8(a3, v47, v48);
      sub_29A49A1BC(&v41, v42);
      sub_29A1602D4(&v44, v45);
      sub_29A1602D4(&v47, v48[0]);
    }

    v31 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
    v32 = sub_29A4184C4(v31);
    Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v32);
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v35)
    {
      v35 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v36)
    {
      v36 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::PcpComposeSiteChildNames(Layers, Path, v35 + 32, a2, a3, (v36 + 224));
  }

  return result;
}

void sub_29A4999D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23)
{
  a11 = &a13;
  sub_29A124AB0(&a11);
  sub_29A49A1BC(&a16, a17);
  sub_29A1602D4(&a19, a20);
  sub_29A1602D4(&a22, a23);
  _Unwind_Resume(a1);
}

void *sub_29A499A9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
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

    while (v7 != a4);
  }

  return sub_29A499D80(a1, a2, a3, a4, v4);
}

uint64_t *sub_29A499AF4(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A3724D8(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_29A499B8C(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8)) & *a1;
  v4 = v2 + 16 * v3;
  if (*(v4 + 4) < 0)
  {
    return v2 + 16 * a1[5];
  }

  LOWORD(v5) = 0;
  while ((*(v4 + 8) ^ *a2) >= 8)
  {
    v5 = (v5 + 1);
    v3 = (v3 + 1) & *a1;
    v4 = v2 + 16 * v3;
    if (v5 > *(v4 + 4))
    {
      return v2 + 16 * a1[5];
    }
  }

  return v4;
}

uint64_t sub_29A499C08(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = *a1 & a3;
  v6 = v4 + 16 * v5;
  if (*(v6 + 4) < 0)
  {
LABEL_5:
    v9 = a1[5];
    v6 = v4 + 16 * v9;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = *a2;
    while ((*(v6 + 8) ^ v8) >= 8)
    {
      v7 = (v7 + 1);
      v5 = (v5 + 1) & *a1;
      v6 = v4 + 16 * v5;
      if (v7 > *(v6 + 4))
      {
        goto LABEL_5;
      }
    }

    v9 = a1[5];
  }

  if (v6 == v4 + 16 * v9)
  {
    return 0;
  }

  sub_29A499C9C(a1, v6);
  return 1;
}

uint64_t *sub_29A499C9C(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 4) != -1)
  {
    v2 = *(a2 + 8);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a2 + 4) = -1;
  }

  --result[6];
  v3 = result[4];
  v4 = (a2 - v3) >> 4;
  v5 = *result;
  v6 = (v4 + 1) & *result;
  v7 = (v3 + 16 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v3 + 16 * v4;
      v10 = *v7;
      *(v9 + 8) = *(v7 + 1);
      *(v7 + 1) = 0;
      *v9 = v10;
      *(v9 + 4) = v8 - 1;
      v3 = result[4];
      v11 = v3 + 16 * v6;
      if (*(v11 + 4) != -1)
      {
        v12 = *(v11 + 8);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          v5 = *result;
          v3 = result[4];
        }

        *(v11 + 4) = -1;
      }

      v4 = v6;
      v6 = v5 & (v6 + 1);
      v7 = (v3 + 16 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(result + 73) = 1;
  return result;
}

void *sub_29A499D80(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        sub_29A31BA04(a1, a2, a1[1], (a2 + 8 * a5));
        sub_29A166F2C(v5, v7 + 4);
        if (v6 != 1)
        {
          v21 = v5;
          do
          {
            v22 = v7[1];
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
                v23 = v7[2];
                v24 = *v23 == v7;
                v7 = v23;
              }

              while (!v24);
            }

            sub_29A166F2C(++v21, v23 + 4);
            v7 = v23;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        v27 = a3;
        sub_29A095B38(&v27, (v10 - a2) >> 3);
        v20 = v27;
        a1[1] = sub_29A40B6FC(a1, v27, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A31BA04(a1, v5, v10, &v5[v6]);
          sub_29A49A01C(&v27, v7, v20, v5);
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
      v31 = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v27 = v17;
      v28 = &v17[v16];
      v29 = v28;
      v30 = &v17[v15];
      sub_29A499F9C(&v27, v7, v6);
      v5 = sub_29A31BC0C(a1, &v27, v5);
      sub_29A1541C0(&v27);
    }
  }

  return v5;
}

uint64_t sub_29A499F9C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = &v3[a3];
    do
    {
      v5 = a2[4];
      *v3 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v3 &= 0xFFFFFFFFFFFFFFF8;
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

      ++v3;
      a2 = v7;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_29A49A01C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A166F2C(a4, v5 + 4);
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      ++a4;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_29A49A0A8(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = v6;
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

      v6 = v8 + 1;
      v7 = v10;
    }

    while (v10 != a3);
    v12 = *(a1 + 48);
    if (*(a1 + 56) - v12 <= v8)
    {
      v13 = *(a1 + 68);
      v14 = vcvtps_u32_f32((v12 + v6) / v13);
      v15 = vcvtps_u32_f32(v12 / v13);
      if (v15 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      sub_29A44BDA4(a1, v16);
    }

    if (v4 != a3)
    {
      do
      {
        sub_29A44BAD8(a1, v4 + 4, v4 + 4);
        v17 = v4[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v4[2];
            v11 = *v18 == v4;
            v4 = v18;
          }

          while (!v11);
        }

        v4 = v18;
      }

      while (v18 != a3);
    }
  }
}

void sub_29A49A1BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A49A1BC(a1, *a2);
    sub_29A49A1BC(a1, a2[1]);
    v4 = a2[5];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

BOOL Overlay::__operatorEqualsEquals(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A328A44(a2, v3 + 4);
    if (!v5)
    {
      break;
    }
  }

  while (*(v3 + 2) == v5[2]);
  return v4;
}

{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = v2 == 0;
  if (v2)
  {
    v4 = sub_29A16039C(a2, (v2 + 16));
    if (v4)
    {
      if ((v4[2] ^ *(v2 + 16)) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }
    }
  }

  return v3;
}

{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A16039C(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while ((*(v5 + 2) ^ *(v3 + 2)) <= 7 && v3[3] == v5[3]);
  return v4;
}

{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A16039C(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while ((v5[2] ^ v3[2]) <= 7 && *(v3 + 6) == *(v5 + 6));
  return v4;
}

{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A16039C(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while ((v5[2] ^ v3[2]) < 8);
  return v4;
}

uint64_t sub_29A49A2E8@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *result;
  v6 = **(*result + 16);
  v7 = *(v6 + 48 * *(result + 8) + 28);
  *a3 = *result;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v5;
  v8 = 0xFFFFLL;
  a3[4] = 0xFFFFLL;
  a3[5] = v6;
  while (1)
  {
    if (v7 == v8)
    {
      v9 = *a3;
      if (*a3 == a3[3])
      {
        break;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a3);
    if (result == a2)
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a3);
      if ((result & 1) == 0)
      {
        v9 = a3[3];
        v8 = a3[4];
        break;
      }
    }

    v7 = *(a3[2] + 48 * a3[1] + 34);
    a3[1] = v7;
    v8 = a3[4];
  }

  *(a3 + 3) = *a3;
  a3[5] = a3[2];
  if (a3[4] != v8 || a3[3] != v9)
  {
    do
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType((a3 + 3));
      if (result != a2)
      {
        break;
      }

      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor((a3 + 3));
      if (result)
      {
        break;
      }

      v11 = a3[3];
      v12 = *(a3[5] + 48 * a3[4] + 34);
      a3[4] = v12;
    }

    while (v8 != v12 || v11 != v9);
  }

  return result;
}

void sub_29A49A3FC(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1)
{
  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  v2 = sub_29A4184C4(LayerStack);
  if (*(pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
}

void sub_29A49A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  sub_29A01752C(&a14, a15);
  if (*(v15 - 25) < 0)
  {
    operator delete(*(v15 - 48));
  }

  sub_29A321930();
}

double pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::PcpPropertyIndex(pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *this, const pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (this != a2)
  {
    sub_29A49C3C8(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  }

  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    sub_29A426D84(v5, *v4, v4[1], (v4[1] - *v4) >> 4);
    v6 = (this + 24);
    v7 = v5;
  }

  else
  {
    v6 = (this + 24);
    v7 = 0;
  }

  sub_29A151CB4(v6, v7);
  return this;
}

void sub_29A49A6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  sub_29A151CB4((v10 + 24), 0);
  a10 = v10;
  sub_29A436DB8(&a10);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::Swap(uint64_t *this, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2)
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
  return this;
}

double pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::GetPropertyRange@<D0>(pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *this@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v5 = *this;
    v6 = *(this + 1);
    if (v6 == *this)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 8;
      do
      {
        IsRootNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode((v5 + v8));
        v5 = *this;
        v6 = *(this + 1);
        if (IsRootNode)
        {
          break;
        }

        ++v7;
        v8 += 24;
      }

      while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
    }

    v13 = v7;
    if (v7 < 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3))
    {
      v14 = 24 * v7 + 8;
      v13 = v7;
      do
      {
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode((v5 + v14)))
        {
          break;
        }

        ++v13;
        v5 = *this;
        v14 += 24;
      }

      while (v13 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
    }

    if (v7 == v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v7;
    }

    if (v7 == v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(&v18, this, v15);
    v11 = a3 + 1;
    v12 = this;
    v10 = v16;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(&v18, this, 0);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
    v11 = a3 + 1;
    v12 = this;
  }

  pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::PcpPropertyIterator(v11, v12, v10);
  result = *&v18;
  *a3 = v18;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::GetNumLocalSpecs(pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 8;
  do
  {
    v4 += pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRootNode((v1 + v5));
    ++v3;
    v1 = *this;
    v5 += 24;
  }

  while (v3 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_PropertyIndexer::_AddPropertySpecIfPermitted(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, __int128 *a3, _DWORD *a4, uint64_t a5)
{
  if (*a4)
  {
    pxrInternal__aapl__pxrReserved__::PcpErrorPropertyPermissionDenied::New(&v15);
    v7 = v15;
    pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v15 + 16, a1 + 8);
    sub_29A2258F0(v7 + 24, (a1 + 88));
    sub_29A225948(v7 + 25, (a1 + 92));
    v8 = sub_29A1F190C(a2);
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v8, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  v10 = *a2;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v16 = *a3;
  sub_29A49AB84(a5, &v15);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v15);
  v11 = sub_29A1F190C(a2);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v12)
  {
    v12 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  result = sub_29A49ABE0(v11, v12 + 256, a4 + 1);
  a4[1] = result;
  return result;
}

void sub_29A49AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49AB84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A49C608(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    *(v3 + 8) = *(a2 + 8);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A49ABE0(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2, unsigned int *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, v6);
  if (v7 && (sub_29A3B7E90(v6) & 1) != 0)
  {
    if ((v7 & 4) != 0)
    {
      a3 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v6);
    }

    else
    {
      a3 = v6;
    }
  }

  v4 = *a3;
  sub_29A186B14(v6);
  return v4;
}

void sub_29A49AC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void **sub_29A49ACA0(void ***a1, __int128 *a2)
{
  sub_29A017F80(a1[12], a2);
  v5 = (*a1 + 3);
  v4 = *v5;
  if (!*v5)
  {
    v6 = operator new(0x18uLL);
    v6[1] = 0;
    v6[2] = 0;
    *v6 = 0;
    sub_29A151CB4(v5, v6);
    v4 = (*a1)[3];
  }

  return sub_29A017F80(v4, a2);
}

__n128 pxrInternal__aapl__pxrReserved__::Pcp_PropertyIndexer::GatherPropertySpecs(__int128 **this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, char a3)
{
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((this + 11));
  v38 = 0uLL;
  v39 = 0;
  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(a2, 6u, &v32);
    v8 = *(&v32 + 1);
    v7 = v32;
    v9 = v33;
    if (v32 != v33 || *(&v32 + 1) != *(&v33 + 1))
    {
      do
      {
        *&v30 = v7;
        *(&v30 + 1) = v8;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v30))
        {
          Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&v30);
          LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v30);
          v13 = sub_29A4184C4(LayerStack);
          Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v13);
          v15 = *Layers;
          v16 = *(Layers + 8);
          while (v15 != v16)
          {
            sub_29A49B01C(this, v15, Path, NameToken, 1, &v40);
            if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v40) & 1) == 0)
            {
              v17 = *(&v38 + 1);
              if (*(&v38 + 1) >= v39)
              {
                v19 = sub_29A49C940(&v38, &v40, &v30);
              }

              else
              {
                v18 = v40;
                **(&v38 + 1) = v40;
                if (v18)
                {
                  atomic_fetch_add(v18, 1u);
                }

                *(v17 + 8) = v30;
                v19 = v17 + 24;
              }

              *(&v38 + 1) = v19;
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v40);
            ++v15;
          }
        }

        ++v8;
      }

      while (__PAIR128__(v8, v7) != v9);
    }
  }

  else
  {
    v41 = 0;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPrimRange(a2, 6u, &v30);
    sub_29A49C814(&v32);
    v20 = 0;
    v36 = v30;
    v37 = v31;
    v32 = v31;
    v33 = v31;
    v34 = v30;
    v35 = v30;
    v21 = -1;
    while (1)
    {
      v30 = v33;
      v40 = v35;
      if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v30, &v40))
      {
        break;
      }

      v30 = v33;
      pxrInternal__aapl__pxrReserved__::PcpPrimIterator::decrement(&v30);
      Node = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::GetNode(&v30);
      *&v40 = Node;
      *(&v40 + 1) = v23;
      if (v23 != v21 || v20 != Node)
      {
        LODWORD(v41) = HIDWORD(v41);
        v20 = Node;
        v21 = v23;
      }

      v30 = v33;
      pxrInternal__aapl__pxrReserved__::PcpPrimIterator::decrement(&v30);
      SiteRef = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::_GetSiteRef(&v30);
      sub_29A49B01C(this, SiteRef, v25, NameToken, 0, &v30);
      if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v30) & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::Pcp_PropertyIndexer::_AddPropertySpecIfPermitted(this, &v30, &v40, &v41, &v38);
      }

      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v30);
      sub_29A49B388(&v32);
    }

    sub_29A49C854(v38, *(&v38 + 1));
  }

  v26 = *this;
  v27 = **this;
  *v26 = v38;
  v38 = v27;
  v28 = *(v26 + 2);
  *(v26 + 2) = v39;
  v39 = v28;
  *&v32 = &v38;
  sub_29A436DB8(&v32);
  return result;
}

void sub_29A49AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v25 - 96) = &a25;
  sub_29A436DB8((v25 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_29A49B01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v12 = sub_29A3302A8(a2);
  result = pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v12, a3);
  if ((result & 1) == 0)
  {
    *a6 = 0;
    return result;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a3, a4, &v26);
  v14 = sub_29A3302A8(a2);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v14, &v26))
  {
    v15 = sub_29A3302A8(a2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetPropertyAtPath(&v25, v15, &v26);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v25))
    {
LABEL_4:
      *a6 = 0;
LABEL_16:
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v25);
      goto LABEL_17;
    }

    v16 = sub_29A1F190C(&v25);
    SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v16);
    v18 = SpecType;
    v19 = *(a1 + 124);
    if (v19)
    {
      if (v19 != SpecType)
      {
        pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentPropertyType::New(&v24);
        v21 = v24;
        pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v24 + 16, a1 + 8);
        sub_29A2258F0((v21 + 96), (a1 + 88));
        sub_29A225948((v21 + 100), (a1 + 92));
        v22 = sub_29A1F190C((a1 + 104));
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v22, &v23);
        sub_29A1DA6E4(&v23);
      }

      if (a5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=((a1 + 104), &v25);
      *(a1 + 124) = v18;
      if (a5)
      {
        goto LABEL_14;
      }
    }

    if (v18 == 1 && (sub_29A49BC40(a1, &v25) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = v25;
    *a6 = v25;
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }

    goto LABEL_16;
  }

  *a6 = 0;
LABEL_17:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
  return sub_29A1DE3A4(&v26);
}

void sub_29A49B2C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  if (a5)
  {
    sub_29A014BEC(a5);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49B388(uint64_t a1)
{
  v2 = (a1 + 16);
  v4 = *(a1 + 16);
  v8 = *(a1 + 48);
  if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v4, &v8))
  {
    *&v4 = "tf/iterator.h";
    *(&v4 + 1) = "operator++";
    v5 = 233;
    v6 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::pair<pxrInternal__aapl__pxrReserved__::PcpPrimIterator, pxrInternal__aapl__pxrReserved__::PcpPrimIterator>, true>::operator++() [T = std::pair<pxrInternal__aapl__pxrReserved__::PcpPrimIterator, pxrInternal__aapl__pxrReserved__::PcpPrimIterator>, Reverse = true]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "iterator exhausted");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::decrement(v2);
  }

  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::Pcp_PropertyIndexer::GatherRelationalAttributeSpecs(__int128 **this, const pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2)
{
  if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath((this + 11)) & 1) == 0)
  {
    sub_29B2A8950(&v22);
  }

  v20 = 0uLL;
  v21 = 0;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::GetPropertyRange(a2, 0, &v22);
  v4 = v23;
  v17[1] = v23;
  v18 = v23;
  v5 = v22;
  while (1)
  {
    v14[0] = v4;
    v24 = v5;
    if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(v14, &v24))
    {
      break;
    }

    v14[0] = v18;
    pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(v14);
    *&v17[0] = pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::GetNode(v14);
    *(&v17[0] + 1) = v6;
    pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromRootToNode(v17, (this + 11), 0, &v15);
    while (1)
    {
      v14[0] = v18;
      v24 = v5;
      if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(v14, &v24))
      {
        break;
      }

      v14[0] = v18;
      pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(v14);
      Node = pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::GetNode(v14);
      if (__PAIR128__(v8, Node) != v17[0])
      {
        break;
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
      {
        v14[0] = v18;
        pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(v14);
        *&v24 = *pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::dereference(v14);
        if (v24)
        {
          atomic_fetch_add(v24, 1u);
        }

        v9 = sub_29A1F190C(&v24);
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v9, v14);
        sub_29A49B750(this, v14);
      }

      pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(&v18);
    }

    LODWORD(v19) = HIDWORD(v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    v4 = v18;
  }

  sub_29A49C854(v20, *(&v20 + 1));
  v10 = *this;
  v11 = **this;
  *v10 = v20;
  v20 = v11;
  v12 = *(v10 + 2);
  *(v10 + 2) = v21;
  v21 = v12;
  *&v22 = &v20;
  sub_29A436DB8(&v22);
  return result;
}

void sub_29A49B68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void **a26)
{
  a26 = &a23;
  sub_29A436DB8(&a26);
  _Unwind_Resume(a1);
}

void sub_29A49B810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::PcpCache *a2, void *a3, uint64_t a4)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a1) & 1) != 0 || (sub_29B2A899C(v20))
  {
    if (*a3 == a3[1])
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a1, &v18);
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(&v18))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v18, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v18))
      {
        pxrInternal__aapl__pxrReserved__::PcpCache::ComputePrimIndex(a2, &v18, a4);
        pxrInternal__aapl__pxrReserved__::PcpBuildPrimPropertyIndex(a1, a2);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(&v18))
      {
        LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(a2);
        pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v17, LayerStackIdentifier, a1);
        sub_29B2A5A80(v11, v17);
      }

      v12 = "pcp/propertyIndex.cpp";
      v13 = "PcpBuildPropertyIndex";
      v14 = 490;
      v15 = "void pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(const SdfPath &, PcpCache *, PcpPropertyIndex *, PcpErrorVector *)";
      v16 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "Error, the property <%s> is owned by something that is not a prim or a relationship.", Text);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
    }

    else
    {
      v12 = "pcp/propertyIndex.cpp";
      v13 = "PcpBuildPropertyIndex";
      v14 = 444;
      v15 = "void pxrInternal__aapl__pxrReserved__::PcpBuildPropertyIndex(const SdfPath &, PcpCache *, PcpPropertyIndex *, PcpErrorVector *)";
      v16 = 0;
      v8 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "Cannot build property index for %s with a non-empty property stack.", v8);
    }
  }
}

void sub_29A49BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_29A49C370(&a27);
  sub_29A436D38(v27 - 208);
  sub_29A1DCEA8((v27 - 120));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpBuildPrimPropertyIndex(const pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::PcpCache *this)
{
  LayerStackIdentifier = pxrInternal__aapl__pxrReserved__::PcpCache::GetLayerStackIdentifier(this);
  pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(v5, LayerStackIdentifier, a1);
  sub_29B2A5A80(v4, v5);
}

void sub_29A49BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A436D38(&a9);
  sub_29A436D38(v9 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49BC40(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this))
  {
    v4 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(this, &v21);
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(this, &v18);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v6 = sub_29A2EDBE4(0x70);
    (*(*v6 + 136))(&v21);
    if (sub_29A1FA710(&v21))
    {
      if ((v22 & 4) != 0)
      {
        v7 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
      }

      else
      {
        v7 = &v21;
      }

      v8 = *v7;
      if ((*v7 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_29A186B14(&v21);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v20 = v8;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v19 = 0;
    v10 = sub_29A2EDBE4(0x70);
    (*(*v10 + 136))(&v21);
    if (sub_29A27CE24(&v21))
    {
      if ((v22 & 4) != 0)
      {
        v11 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
      }

      else
      {
        v11 = &v21;
      }
    }

    else
    {
      v11 = &v19;
    }

    v4 = *v11;
    sub_29A186B14(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
  }

  v12 = *(a1 + 112);
  if (v12)
  {
    if ((v20 ^ v12) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeType::New(&v21);
      v13 = v21;
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v21 + 16, a1 + 8);
      sub_29A2258F0((v13 + 96), (a1 + 88));
      sub_29A225948((v13 + 100), (a1 + 92));
      v14 = sub_29A1F190C((a1 + 104));
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v14, &v18);
      sub_29A1DA6E4(&v18);
    }

    if (*(a1 + 120) != v4)
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInconsistentAttributeVariability::New(&v21);
      v15 = v21;
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v21 + 16, a1 + 8);
      sub_29A2258F0((v15 + 96), (a1 + 88));
      sub_29A225948((v15 + 100), (a1 + 92));
      v16 = sub_29A1F190C((a1 + 104));
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v16, &v18);
      sub_29A1DA6E4(&v18);
    }
  }

  else
  {
    sub_29A166F2C((a1 + 112), &v20);
    *(a1 + 120) = v4;
  }

  result = 1;
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A49C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_29A1DCEA8(&a10);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A49C370(uint64_t a1)
{
  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((a1 + 104));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29B2A8A84(a1);
  return a1;
}

void sub_29A49C3C8(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29A49C5A8(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    for (i = a1[1]; v6 != a3; i += 24)
    {
      v12 = *v6;
      *i = *v6;
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
      }

      *(i + 8) = *(v6 + 8);
      v6 += 24;
    }

LABEL_22:
    a1[1] = i;
    return;
  }

  v13 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) < a4)
  {
    v14 = a2 + v13 - v8;
    if (v13 != v8)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v8, v6);
        *(v8 + 8) = *(v6 + 8);
        v6 += 24;
        v8 += 24;
      }

      while (v6 != v14);
      v13 = a1[1];
    }

    i = v13;
    if (v14 != a3)
    {
      i = v13;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v15 = *v14;
        if (v16)
        {
          atomic_fetch_add(v16, 1u);
        }

        *(v15 + 8) = *(v14 + 8);
        v14 += 24;
        v15 += 24;
        i += 24;
      }

      while (v14 != a3);
    }

    goto LABEL_22;
  }

  if (a2 != a3)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v8, v6);
      *(v8 + 8) = *(v6 + 8);
      v6 += 24;
      v8 += 24;
    }

    while (v6 != a3);
    v13 = a1[1];
  }

  while (v13 != v8)
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v13 - 24));
  }

  a1[1] = v8;
}

void sub_29A49C5A8(void **a1)
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
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v3 - 24));
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

uint64_t sub_29A49C608(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + 24 * v2;
  v18 = v7;
  v19 = v8;
  *&v20 = v8;
  *(&v20 + 1) = v7 + 24 * v6;
  v9 = *a2;
  *v8 = *a2;
  v10 = v8;
  v11 = v8;
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
    v10 = v19;
    v11 = v20;
  }

  *(v8 + 8) = *(a2 + 8);
  *&v20 = v11 + 24;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  sub_29A49C750(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A49C7C4(&v18);
  return v17;
}

void sub_29A49C73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A49C7C4(va);
  _Unwind_Resume(a1);
}

void sub_29A49C750(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfSpec *a2, pxrInternal__aapl__pxrReserved__::SdfSpec *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }

      *(a4 + 8) = *(v6 + 8);
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
      v5 = (v8 + 24);
    }
  }
}

uint64_t sub_29A49C7C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A49C814(void *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a1);
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(v2 + 2);
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a1 + 4);
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a1 + 6);
  return a1;
}

void sub_29A49C854(atomic_uint **a1, atomic_uint **a2)
{
  v3 = a1;
  if (a1 != a2)
  {
    v2 = (a2 - 3);
    if (a2 - 3 > a1)
    {
      do
      {
        sub_29A49C8B0(&v3, &v2);
        v2 -= 24;
        v3 += 3;
      }

      while (v3 < v2);
    }
  }
}

void sub_29A49C8B0(atomic_uint ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v6 = *(v2 + 1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v2, v3);
  *(v2 + 1) = *(v3 + 8);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v3, &v5);
  *(v3 + 8) = v6;
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A49C92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49C940(uint64_t a1, atomic_uint **a2, _OWORD *a3)
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

  v23 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 24 * v3;
  v20 = v9;
  v21 = v10;
  *&v22 = v10;
  *(&v22 + 1) = v9 + 24 * v8;
  v11 = *a2;
  *v10 = *a2;
  v12 = v10;
  v13 = v10;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
    v12 = v21;
    v13 = v22;
  }

  *(v10 + 8) = *a3;
  *&v22 = v13 + 24;
  v14 = *(a1 + 8);
  v15 = v12 + *a1 - v14;
  sub_29A49C750(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29A49C7C4(&v20);
  return v19;
}

void sub_29A49CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A49C7C4(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A49CA8C(uint64_t a1)
{
  v2 = (a1 + 80);

  return sub_29A1DE3A4(v2);
}

pxrInternal__aapl__pxrReserved__::PcpSite *pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(pxrInternal__aapl__pxrReserved__::PcpSite *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::PcpLayerStackIdentifier(this);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((v2 + 80));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 21);
  return this;
}

pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a1, uint64_t a2, _DWORD *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::PcpLayerStackIdentifier(a1);
  sub_29A1E21F4((v6 + 80), a3);
  sub_29A1E2240(a1 + 21, a3 + 1);
  v7 = sub_29B2A0EDC(a2);
  if (v8 & 1 | v7)
  {
    sub_29A419260(a2);
  }

  return a1;
}

void sub_29A49CB64(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 80));
  sub_29B2A1248(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  memset(v9, 0, sizeof(v9));
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::PcpExpressionVariablesSource(v8);
  pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::PcpLayerStackIdentifier(a1, a2, &v10, v9, v8);
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(v8);
  v8[0] = v9;
  sub_29A0176E4(v8);
  v6 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  sub_29A1E21F4((a1 + 80), a3);
  sub_29A1E2240((a1 + 84), a3 + 1);
  return a1;
}

void sub_29A49CC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::~PcpExpressionVariablesSource(&a10);
  a10 = &a12;
  sub_29A0176E4(&a10);
  v17 = a16;
  if (a16)
  {
    if (atomic_fetch_add_explicit((a16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v17 + 8))(v17);
    }
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::PcpSite *pxrInternal__aapl__pxrReserved__::PcpSite::PcpSite(pxrInternal__aapl__pxrReserved__::PcpSite *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::PcpLayerStackIdentifier(this);
  sub_29A1E21F4((v4 + 80), a2 + 2);
  sub_29A1E2240(this + 21, a2 + 3);
  if (*a2)
  {
    v5 = sub_29A4184C4(a2);
    Identifier = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetIdentifier(v5);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(this, Identifier);
  }

  return this;
}

void sub_29A49CD30(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 80));
  sub_29B2A1248(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpSite::operator==(void *a1, void *a2)
{
  result = pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator==(a1, a2);
  if (result)
  {
    return a1[10] == a2[10];
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpSite::Hash::operator()(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A49D07C(&v3, a2, (a2 + 80));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *this)
{
  *this = 0;
  v2 = (this + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2);
  return this;
}

{
  *this = 0;
  v2 = (this + 12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator<(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 0;
}

unint64_t pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::Hash::operator()(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A3AD498(&v3, a2, (a2 + 8));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t sub_29A49D07C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 72);
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29A1E33B4(a1, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCompareSiblingNodeStrength(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
  v7 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
  if (v7 != v9 || ParentNode != v8)
  {
    *&v88 = "pcp/strengthOrdering.cpp";
    *(&v88 + 1) = "PcpCompareSiblingNodeStrength";
    v89 = 94;
    v90 = "int pxrInternal__aapl__pxrReserved__::PcpCompareSiblingNodeStrength(const PcpNodeRef &, const PcpNodeRef &)";
    v91 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v88, 1, "Nodes are not siblings");
    return 0;
  }

  if (*(this + 1) == *(a2 + 1) && *this == *a2)
  {
    return 0;
  }

  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (ArcType < pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this);
  if (v13 > pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2))
  {
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this) != 6)
  {
    NamespaceDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
    if (NamespaceDepth > pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a2))
    {
      return 0xFFFFFFFFLL;
    }

    v33 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
    if (v33 < pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a2))
    {
      return 1;
    }

    OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(this);
    v36 = v35;
    *&v86 = OriginNode;
    *(&v86 + 1) = v35;
    v37 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
    *&v84 = v37;
    *(&v84 + 1) = v38;
    if (v36 != v38 || OriginNode != v37)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
      *&v88 = v53;
      *(&v88 + 1) = v54;
      v55 = sub_29A49D82C(&v88, &v86, &v84);
      if (v55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v55)
      {
        return 1;
      }

      *&v88 = "pcp/strengthOrdering.cpp";
      *(&v88 + 1) = "PcpCompareSiblingNodeStrength";
      v89 = 294;
      v90 = "int pxrInternal__aapl__pxrReserved__::PcpCompareSiblingNodeStrength(const PcpNodeRef &, const PcpNodeRef &)";
      v91 = 0;
      v58 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Did not find either origin", v56, v57);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v88, "false", v58);
    }

LABEL_52:
    SiblingNumAtOrigin = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(this);
    if (SiblingNumAtOrigin >= pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(a2))
    {
      v40 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(this);
      return v40 > pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(a2);
    }

    return 0xFFFFFFFFLL;
  }

  sub_29A49D7B0(this, &v86);
  sub_29A49D7B0(a2, &v84);
  v88 = v86;
  v14 = v86;
  if (v86)
  {
    v15 = *(&v88 + 1);
    while (v15 != -1)
    {
      if (v15 == *(&v84 + 1) && v14 == v84)
      {
        goto LABEL_31;
      }

      v14 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v88);
      *&v88 = v14;
      *(&v88 + 1) = v15;
      if (!v14)
      {
        break;
      }
    }
  }

  v88 = v84;
  v17 = v84;
  if (v84)
  {
    v18 = *(&v88 + 1);
    while (v18 != -1)
    {
      if (v18 == *(&v86 + 1) && v17 == v86)
      {
        goto LABEL_31;
      }

      v17 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v88);
      *&v88 = v17;
      *(&v88 + 1) = v18;
      if (!v17)
      {
        break;
      }
    }
  }

  v20 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
  if (v20 > pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
  if (v21 < pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a2))
  {
    return 1;
  }

LABEL_31:
  v82 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(this);
  v83 = v22;
  v80 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
  v81 = v23;
  v24 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
  v27 = v83 == v25 && v82 == v24;
  v28 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
  v31 = v81 == v29 && v80 == v28;
  if (v83 == v81 && v82 == v80)
  {
    if (!v27 && !v31)
    {
      v43 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
      v45 = v44;
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
      if (v45 != v47 || v43 != v46 || (v48 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2), v50 = v49, pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(a2), v50 != v52) || v48 != v51)
      {
        sub_29B2A8D74(&v88);
      }

      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(this, &v88);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v82, v79);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v88, v79);
      sub_29A424AA8(v79);
    }

    if (!v27 || !v31)
    {
      sub_29B2A8DBC(&v88);
    }

    goto LABEL_52;
  }

  if (v86 != v84)
  {
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
    *&v88 = v41;
    *(&v88 + 1) = v42;
    v11 = sub_29A49D82C(&v88, &v86, &v84);
    if (!v11)
    {
      sub_29B2A8C64(&v88);
    }

    return v11;
  }

  v59 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(this);
  v61 = v60;
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
  if (v61 == v63 && v59 == v62 && (v64 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2), v66 = v65, pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(a2), v66 == v68) && v64 == v67)
  {
    if (v27)
    {
LABEL_71:
      v69 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    sub_29B2A8CC8(&v88);
    if (v27)
    {
      goto LABEL_71;
    }
  }

  v69 = sub_29A49D918(&v82);
LABEL_75:
  if (v31)
  {
    v70 = 0;
  }

  else
  {
    v70 = sub_29A49D918(&v80);
  }

  if (v69 < v70)
  {
    return 0xFFFFFFFFLL;
  }

  if (v70 < v69)
  {
    return 1;
  }

  if (v87 > v85)
  {
    return 0xFFFFFFFFLL;
  }

  if (v85 > v87)
  {
    return 1;
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(this);
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
  *&v88 = v72;
  *(&v88 + 1) = v73;
  if (*LayerStack == *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&v88))
  {
    v74 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
    pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(a2);
    v79[0] = v75;
    v79[1] = v76;
    if (*v74 == *pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v79) && !v27 && !v31)
    {
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(this, &v88);
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v82, v79);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v88, v79);
      sub_29A424AA8(v79);
    }
  }

  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
  *&v88 = v77;
  *(&v88 + 1) = v78;
  v11 = sub_29A49D82C(&v88, &v82, &v80);
  if (!v11)
  {
    sub_29B2A8D10(&v88);
  }

  return v11;
}

uint64_t sub_29A49D7B0@<X0>(_OWORD *a1@<X0>, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 2) = 0;
  for (i = a2; ; i = a2)
  {
    OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(i);
    v6 = v5;
    result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
    if (v6 == v8 && OriginNode == result)
    {
      break;
    }

    *a2 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
    *(a2 + 1) = v9;
    ++*(a2 + 2);
  }

  return result;
}

uint64_t sub_29A49D82C(uint64_t *a1, void *a2, void *a3)
{
  v5 = a1[1];
  if (v5 == a2[1] && *a1 == *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 == a3[1])
  {
    v6 = *a1;
    if (*a1 == *a3)
    {
      return 1;
    }
  }

  else
  {
    v6 = *a1;
  }

  v18 = v6;
  v19 = v5;
  v8 = **(v6 + 16);
  v9 = *(v8 + 48 * v5 + 28);
  v12 = v6;
  v13 = v9;
  v14 = v8;
  v15 = v6;
  v10 = 0xFFFFLL;
  v16 = 0xFFFFLL;
  v17 = v8;
  while (v9 != v10 || v12 != v15)
  {
    v11 = sub_29A41E444(&v12);
    result = sub_29A49D82C(v11, a2, a3);
    if (result)
    {
      return result;
    }

    sub_29A41E490(&v12);
    v9 = v13;
    v10 = v16;
  }

  return 0;
}

uint64_t sub_29A49D918(pxrInternal__aapl__pxrReserved__ *a1)
{
  pxrInternal__aapl__pxrReserved__::Pcp_FindStartingNodeOfClassHierarchy(a1, &v3);
  for (i = v3; pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(&i) == 3; *(&i + 1) = v1)
  {
    *&i = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&i);
  }

  return pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(&i);
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCompareNodeStrength(pxrInternal__aapl__pxrReserved__::PcpPrimIndex_Graph **this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(this);
  v6 = v5;
  v8 = v7;
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetRootNode(a2);
  if (v8 != v10 || v6 != v9)
  {
    v17 = "pcp/strengthOrdering.cpp";
    v18 = "PcpCompareNodeStrength";
    v19 = 366;
    v20 = "int pxrInternal__aapl__pxrReserved__::PcpCompareNodeStrength(const PcpNodeRef &, const PcpNodeRef &)";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "Nodes are not part of the same prim index");
    return 0;
  }

  v11 = this[1];
  if (v11 == *(a2 + 1))
  {
    v12 = *this;
    if (*this == *a2)
    {
      return 0;
    }
  }

  else
  {
    v12 = *this;
  }

  sub_29A49DAAC(v12, v11, &v17);
  sub_29A49DAAC(*a2, *(a2 + 1), __p);
  v13 = sub_29A49DB30(&v17, __p, v14);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v13;
}

void sub_29A49DA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A49DAAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v5 = result;
  *(&v5 + 1) = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (result && a2 != -1)
  {
    do
    {
      sub_29A03A998(a3, &v5);
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(&v5);
      *&v5 = result;
      *(&v5 + 1) = v4;
    }

    while (result && v4 != -1);
  }

  return result;
}

void sub_29A49DB10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A49DB30(pxrInternal__aapl__pxrReserved__ **a1, const pxrInternal__aapl__pxrReserved__::PcpNodeRef **a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3)
{
  v5 = a2[1];
  v6 = *a2;
  v7 = a1[1];
  v8 = *a1;
  if (v5 - *a2 < (v7 - *a1))
  {
    return -sub_29A49DB30(a2, a1);
  }

  while (v7 != v8)
  {
    v10 = *(v7 - 2);
    v11 = *(v7 - 1);
    v7 = (v7 - 16);
    v12 = *(v5 - 2);
    v13 = *(v5 - 1);
    v5 = (v5 - 16);
    if (v11 != v13 || v10 != v12)
    {
      if ((v5 + 16) == v6)
      {
        v15 = v5;
        v16 = v7;
        sub_29B2A8E04(v17);
        v5 = v15;
        v7 = v16;
      }

      return pxrInternal__aapl__pxrReserved__::PcpCompareSiblingNodeStrength(v7, v5, a3);
    }
  }

  if (v5 == v6)
  {
    sub_29B2A8E4C(v17);
  }

  return 0xFFFFFFFFLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a4)
{
  v5 = a2;
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a3);
  if (*(this + 1) != v8 || *this != ParentNode)
  {
    v13[0] = "pcp/strengthOrdering.cpp";
    v13[1] = "PcpCompareSiblingPayloadNodeStrength";
    v13[2] = 383;
    v13[3] = "int pxrInternal__aapl__pxrReserved__::PcpCompareSiblingPayloadNodeStrength(const PcpNodeRef &, int, const PcpNodeRef &)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Nodes are not siblings");
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a3) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a3) < 5)
  {
    return 1;
  }

  NamespaceDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
  if (NamespaceDepth > pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a3))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(this);
  if (v12 >= pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a3))
  {
    if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(a3) <= v5)
    {
      return pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(a3) < v5;
    }

    return 0xFFFFFFFFLL;
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *this, int a3, int a4, void *a5, char a6, int a7, __int128 *a8, uint64_t a9, uint64_t a10)
{
  v47 = *MEMORY[0x29EDCA608];
  if (a3 == 1 || a3 == 8)
  {
    if (!pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::IsEmpty(this))
    {
      pxrInternal__aapl__pxrReserved__::PcpPropertyIndex::GetPropertyRange(this, a4, &v38);
      v16 = pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::dereference(&v38);
      v17 = sub_29A1F190C(v16);
      if (pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v17) == a3 || (sub_29B2A8E94(v37, a1, a3) & 1) != 0)
      {
        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (a3 == 1)
        {
          if (!v18)
          {
            sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }
        }

        else if (!v18)
        {
          sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        v35 = 0uLL;
        v36 = 0;
        v33 = 0uLL;
        v34 = 0;
        sub_29A49F3C0(&v27);
        v31 = v38;
        v32 = v39;
        v27 = v39;
        v28 = v39;
        v29 = v38;
        v30 = v38;
        while (1)
        {
          v40 = v30;
          v41 = v28;
          if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(&v41, &v40))
          {
            break;
          }

          v19 = sub_29A49E190(&v27);
          v20 = v19;
          if ((a6 & 1) == 0 && pxrInternal__aapl__pxrReserved__::SdfSpec::operator==(v19, a5))
          {
            break;
          }

          v21 = sub_29A1F190C(v20);
          pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(v21, &v45);
          if (v46)
          {
            if (sub_29A1E1F54(&v45) & 1) != 0 || (*&v41 = "pcp/targetIndex.cpp", *(&v41 + 1) = "PcpBuildFilteredTargetIndex", v42 = 488, v43 = "void pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(const PcpSite &, const PcpPropertyIndex &, const SdfSpecType, const BOOL, const SdfSpecHandle &, const BOOL, PcpCache *, PcpTargetIndex *, SdfPathVector *, PcpErrorVector *)", v44 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v41, "pathValue.IsHolding<SdfPathListOp>()", 0)))
            {
              if ((v46 & 4) != 0)
              {
                (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(&v45);
              }

              pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::HasKeys();
            }
          }

          sub_29A186B14(&v45);
          sub_29A49EBEC(&v27);
        }

        sub_29A4272D4(a10, *(a10 + 8), v33, *(&v33 + 1), (*(&v33 + 1) - v33) >> 4);
        v22 = *a8;
        *a8 = v35;
        v35 = v22;
        v23 = *(a8 + 2);
        *(a8 + 2) = v36;
        v36 = v23;
        v24 = *(a8 + 24);
        *(a8 + 24) = v33;
        v33 = v24;
        v25 = *(a8 + 5);
        *(a8 + 5) = v34;
        v34 = v25;
        *(a8 + 48) = 0;
        *&v27 = &v33;
        sub_29A0176E4(&v27);
        *&v27 = &v35;
        sub_29A1E234C(&v27);
      }
    }
  }

  else
  {
    *&v27 = "pcp/targetIndex.cpp";
    *(&v27 + 1) = "PcpBuildFilteredTargetIndex";
    *&v28 = 447;
    *(&v28 + 1) = "void pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(const PcpSite &, const PcpPropertyIndex &, const SdfSpecType, const BOOL, const SdfSpecHandle &, const BOOL, PcpCache *, PcpTargetIndex *, SdfPathVector *, PcpErrorVector *)";
    LOBYTE(v29) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "relOrAttrType msut be either SdfSpecTypeRelationship or SdfSpecTypeAttribute");
  }
}

void sub_29A49E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A186B14(v29 - 112);
  a13 = &a25;
  sub_29A0176E4(&a13);
  a13 = &a29;
  sub_29A1E234C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49E190(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 16);
  v4 = *(a1 + 48);
  v5 = v2;
  if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(&v5, &v4))
  {
    sub_29B2A8F2C();
  }

  v5 = *v1;
  pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(&v5);
  return pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::dereference(&v5);
}

_DWORD *sub_29A49E1F4@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X2>, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X3>, int a3@<W0>, uint64_t a4@<X1>, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a5@<X4>, pxrInternal__aapl__pxrReserved__::PcpCache *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, pxrInternal__aapl__pxrReserved__::PcpCache *a10)
{
  v55 = 0;
  pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromNodeToRoot(this, a2, &v55, &v54);
  if (a3 == 2)
  {
    if (v55 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v54))
    {
      if (a7)
      {
        sub_29A1E28B4(a7, &v54);
      }

      v19 = *a9;
      v18 = *(a9 + 8);
      if (*a9 != v18)
      {
        do
        {
          v20 = v54;
          v21 = -v19;
          while (1)
          {
            if (*v19)
            {
              if (v22)
              {
                if (v22[18] == v20)
                {
                  break;
                }
              }
            }

            v19 += 2;
            v21 -= 16;
            if (v19 == v18)
            {
              goto LABEL_32;
            }
          }

          sub_29A03D458(&v57, (16 - v21), v18, -v21);
          v18 = v23;
          for (i = *(a9 + 8); i != v18; --i)
          {
            v25 = *(i - 1);
            if (v25)
            {
              sub_29A014BEC(v25);
            }
          }

          *(a9 + 8) = v18;
        }

        while (v19 != v18);
      }

      goto LABEL_32;
    }
  }

  else
  {
    if ((v55 & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidExternalTargetPath::New(&v57);
      v31 = v57;
      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v57 + 16, a4);
      sub_29A2258F0((v31 + 96), (a4 + 80));
      sub_29A225948((v31 + 100), (a4 + 84));
      v32 = v57;
      sub_29A2258F0((v57 + 104), a2);
      sub_29A225948((v32 + 108), a2 + 1);
      v33 = sub_29A1F190C(a5);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v33, v50);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v54))
    {
      if (a6)
      {
        v50[0] = a6;
        v50[1] = a10;
        sub_29A1E21F4(&v51, &v54);
        sub_29A1E2240(&v52, &v54 + 1);
        v53 = 0;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(this) == 1)
        {
          pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(this, v26, &v57);
          HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, &v57);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v57 + 1);
          sub_29A1DE3A4(&v57);
          if (!HasPrefix)
          {
            v37 = sub_29A49F09C(v50);
            LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(this);
            sub_29A41CF24(&v61, LayerStack);
            pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPathAtIntroduction(this, v39, &v59);
            pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v37, 6u, &v57);
            v40 = *(&v57 + 1);
            v41 = v57;
            v42 = v58;
            if (v57 != v58)
            {
              v43 = *(&v58 + 1) - 1;
              do
              {
                v44 = v40;
                v56[0] = v41;
                v56[1] = v40;
                if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(v56) == 1)
                {
                  v45 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v56);
                  if (sub_29B2A21F4(&v61, v45))
                  {
                    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v56);
                    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(Path, &v59))
                    {
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60);
                      sub_29B295ABC(&v59, &v61);
                      pxrInternal__aapl__pxrReserved__::PcpErrorInvalidInstanceTargetPath::New(&v57);
                      v47 = v57;
                      pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(v57 + 16, a4);
                      sub_29A2258F0((v47 + 96), (a4 + 80));
                      sub_29A225948((v47 + 100), (a4 + 84));
                      v48 = v57;
                      sub_29A2258F0((v57 + 104), a2);
                      sub_29A225948((v48 + 108), a2 + 1);
                      v49 = sub_29A1F190C(a5);
                      pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v49, &v61);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
                    }
                  }
                }

                v40 = v44 + 1;
              }

              while (v41 != v42 || v43 != v44);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60);
            sub_29B295ABC(&v59, &v61);
          }
        }

        if ((pxrInternal__aapl__pxrReserved__::PcpCache::IsUsd(a6) & 1) == 0)
        {
          v28 = sub_29A49ED28(&v54, a2, this, v50);
          if (v28 == 2)
          {
            pxrInternal__aapl__pxrReserved__::PcpErrorInvalidTargetPath::New(&v57);
            sub_29A49ECE4(v57 + 16, a4);
            v35 = v57;
            sub_29A2258F0((v57 + 104), a2);
            sub_29A225948((v35 + 108), a2 + 1);
            v36 = sub_29A1F190C(a5);
            pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v36, v56);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          if (v28 == 1)
          {
            pxrInternal__aapl__pxrReserved__::PcpErrorTargetPermissionDenied::New(&v57);
            sub_29A49ECE4(v57 + 16, a4);
            v29 = v57;
            sub_29A2258F0((v57 + 104), a2);
            sub_29A225948((v29 + 108), a2 + 1);
            v30 = sub_29A1F190C(a5);
            pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(v30, v56);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v52);
        sub_29A1DE3A4(&v51);
      }

LABEL_32:
      sub_29A1E21F4(a8, &v54);
      sub_29A1E2240((a8 + 4), &v54 + 1);
      *(a8 + 8) = 1;
      goto LABEL_33;
    }
  }

  *a8 = 0;
  *(a8 + 8) = 0;
LABEL_33:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v54 + 1);
  return sub_29A1DE3A4(&v54);
}

void sub_29A49EA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  sub_29A49F064(&a11);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49EBEC(uint64_t a1)
{
  v2 = (a1 + 16);
  v4 = *(a1 + 16);
  v8 = *(a1 + 48);
  if (pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::equal(&v4, &v8))
  {
    *&v4 = "tf/iterator.h";
    *(&v4 + 1) = "operator++";
    v5 = 233;
    v6 = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::pair<pxrInternal__aapl__pxrReserved__::PcpPropertyIterator, pxrInternal__aapl__pxrReserved__::PcpPropertyIterator>, true>::operator++() [T = const std::pair<pxrInternal__aapl__pxrReserved__::PcpPropertyIterator, pxrInternal__aapl__pxrReserved__::PcpPropertyIterator>, Reverse = true]";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "iterator exhausted");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpPropertyIterator::decrement(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpBuildTargetIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::PcpPropertyIndex *a2, int a3, __int128 *a4, uint64_t a5)
{
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::PcpBuildFilteredTargetIndex(a1, a2, a3, 0, &v5, 0, 0, a4, 0, a5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A49ECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49ECE4(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator=(a1, a2);
  sub_29A2258F0((a1 + 80), (a2 + 80));
  sub_29A225948((a1 + 84), (a2 + 84));
  return a1;
}

uint64_t sub_29A49ED28(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, pxrInternal__aapl__pxrReserved__::PcpCache **a4)
{
  v38 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a1, &v31);
  v7 = sub_29A49F09C(a4);
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(v7);
  *&v33[0] = v8;
  *(&v33[0] + 1) = v9;
  if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(v33) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, &v30);
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a3);
    pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::PcpLayerStackSite(&v27, LayerStack, &v30);
    v25 = 0;
    v26 = -1;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(v7, 6u, v33);
    if (v33[0] != v33[1])
    {
      v21 = v33[0];
      pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v21, &v17);
      pxrInternal__aapl__pxrReserved__::PcpLayerStackSite::operator==(&v17, &v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      sub_29A41B088();
    }

    pxrInternal__aapl__pxrReserved__::PcpCache::GetPrimIndexInputs(*a4, v33);
    if ((v37 & 1) == 0)
    {
      *&v21 = "pcp/targetIndex.cpp";
      *(&v21 + 1) = "_TargetIsPermitted";
      v22 = 276;
      v23 = "Pcp_PathTranslationError pxrInternal__aapl__pxrReserved__::_TargetIsPermitted(const SdfPath &, const SdfPath &, const PcpNodeRef &, Pcp_TargetIndexContext &)";
      v24 = 0;
      sub_29A453CD0(&v27);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v31);
      v15 = &v17;
      if (v20 < 0)
      {
        v15 = v17;
      }

      v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find expected node for site %s in prim index for <%s>", v13, v14, v15, Text);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "context.GetCache()->GetPrimIndexInputs().cull", v16);
      if (v20 < 0)
      {
        operator delete(v17);
      }
    }

    if (v36 < 0)
    {
      operator delete(__p);
    }

    sub_29A346EB0(&v34);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
    sub_29A41B088();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32);
  sub_29A1DE3A4(&v31);
  return 2;
}

uint64_t sub_29A49F064(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  return a1;
}

uint64_t sub_29A49F09C(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = *a1;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((a1 + 16), &v4);
    *(a1 + 24) = pxrInternal__aapl__pxrReserved__::PcpCache::ComputePrimIndex(v3, &v4, *(a1 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
    sub_29A1DE3A4(&v4);
    return *(a1 + 24);
  }

  return result;
}

void sub_29A49F114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A49F128(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  IsPropertyPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a1);
  v5 = *(a2 + 8);
  v36 = *a2;
  v37 = v5;
  v6 = **(v36 + 16);
  v7 = *(v6 + 48 * v5 + 28);
  v30 = v36;
  v31 = v7;
  v32 = v6;
  v33 = v36;
  v8 = 0xFFFFLL;
  v34 = 0xFFFFLL;
  v35 = v6;
  while (v7 != v8 || v30 != v33)
  {
    v9 = sub_29A41E444(&v30);
    if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRestricted(v9) & 1) != 0 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPermission(v9) == 1)
    {
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::PcpTranslatePathFromRootToNode(v9, a1, 0, &v28);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v28))
    {
      if (IsPropertyPath)
      {
        LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v9);
        v11 = sub_29A4184C4(LayerStack);
        Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v11);
        v13 = Layers[1];
        v26 = *Layers;
        v27 = v13;
        while (v26 != v27)
        {
          sub_29A1E21F4(&v24, &v28);
          sub_29A1E2240(&v25, &v29);
          IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v24);
          if (!IsPrimPath)
          {
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(&v24))
            {
              goto LABEL_15;
            }

            v17 = sub_29A433804(&v26, v15, v16);
            v18 = sub_29A3302A8(v17);
            pxrInternal__aapl__pxrReserved__::SdfLayer::GetPropertyAtPath(&v23, v18, &v24);
            if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v23) & 1) != 0 || (v19 = sub_29A1F190C(&v23), pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetPermission(v19) != 1))
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v23);
LABEL_15:
              pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v24, &v23);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v23);
            a2 = 1;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
          sub_29A1DE3A4(&v24);
          if (!IsPrimPath)
          {
            v20 = 0;
            goto LABEL_24;
          }

          sub_29A433884(&v26);
        }
      }

      v21 = sub_29A49F128(a1, v9);
      v20 = v21 == 0;
      if (v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = a2;
      }
    }

    else
    {
      v20 = 0;
      a2 = 2;
    }

LABEL_24:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
    if (!v20)
    {
      return a2;
    }

    sub_29A41E490(&v30);
    v7 = v31;
    v8 = v34;
  }

  return 0;
}

void sub_29A49F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}