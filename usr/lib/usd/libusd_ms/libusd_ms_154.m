uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::Validate(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this, uint64_t a2)
{
  if (*(this + 1) == *(this + 2) && (sub_29B2C8DBC(v22) & 1) == 0)
  {
    return 2;
  }

  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Validating indirect draw batch %p (deep validation = %d)...\n", v4, v5, this, a2);
  }

  v6 = *(**(this + 1) + 8);
  BufferArraysHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(v6);
  if (*(this + 29) == BufferArraysHash)
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
          v20[0] = "hdSt/indirectDrawBatch.cpp";
          v20[1] = "Validate";
          v20[2] = 807;
          v20[3] = "virtual HdSt_DrawBatch::ValidationResult pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::Validate(BOOL)";
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
    if (*(this + 30) != v10)
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
    *(this + 29) = BufferArraysHash;
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

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int a9, uint64_t *a10, void *a11)
{
  v11 = *(a1 + 8);
  v53 = *(a1 + 16);
  if (v11 != v53)
  {
    v15 = a5;
    v16 = a4;
    v17 = a3;
    v49 = 0;
    while (1)
    {
      v18 = *(*v11 + 8);
      v19 = *a2;
      if (*a2)
      {
        v20 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 12));
        if (!sub_29ADC935C(v19, v20))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 856;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "constantBar ->IsAggregatedWith(itm->GetConstantPrimvarRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v21 = *v17;
      if (*v17)
      {
        v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 8));
        if (!sub_29ADC935C(v21, v22))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 859;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "indexBar ->IsAggregatedWith(itm->GetTopologyRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v23 = *v16;
      if (*v16)
      {
        v24 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 17));
        if (!sub_29ADC935C(v23, v24))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 862;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "topologyVisibilityBar ->IsAggregatedWith(itm->GetTopologyVisibilityRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v25 = *v15;
      if (*v15)
      {
        v26 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 14));
        if (!sub_29ADC935C(v25, v26))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 865;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "elementBar ->IsAggregatedWith(itm->GetElementPrimvarRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v27 = *a6;
      if (*a6)
      {
        v28 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 16));
        if (!sub_29ADC935C(v27, v28))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 868;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "fvarBar ->IsAggregatedWith(itm->GetFaceVaryingPrimvarRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v29 = *a7;
      if (*a7)
      {
        v30 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 18));
        if (!sub_29ADC935C(v29, v30))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 871;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "varyingBar ->IsAggregatedWith(itm->GetVaryingPrimvarRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      v31 = *a8;
      if (*a8)
      {
        v32 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 13));
        if (!sub_29ADC935C(v31, v32))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 874;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "vertexBar ->IsAggregatedWith(itm->GetVertexPrimvarRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      if (sub_29ADC9478(v18) != a9)
      {
        v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
        v57 = "_ValidateCompatibility";
        v58 = 877;
        v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
        v60 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "instancerNumLevels == itm->GetInstancePrimvarNumLevels()", 0) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v33 = *a10;
      if (*a10)
      {
        v34 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(v18 + 24), *(v18 + 15));
        if (!sub_29ADC935C(v33, v34))
        {
          v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
          v57 = "_ValidateCompatibility";
          v58 = 880;
          v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
          v60 = 0;
          if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "instanceIndexBar ->IsAggregatedWith(itm->GetInstanceIndexRange())", 0) & 1) == 0)
          {
            break;
          }
        }
      }

      if (((a11[1] - *a11) >> 4) != a9)
      {
        v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
        v57 = "_ValidateCompatibility";
        v58 = 882;
        v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
        v60 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "instancerNumLevels == (int)instanceBars.size()", 0) & 1) == 0)
        {
LABEL_53:
          v49 = v18;
LABEL_54:
          v18 = v49;
          if (!v49)
          {
            return;
          }

          break;
        }
      }

      sub_29ADD3C08(v55, a9);
      if (a9 >= 1 && *a10)
      {
        v35 = a6;
        v36 = a7;
        v37 = a8;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v40 = *(v55[0] + v39);
          if (v40)
          {
            v41 = *(v18 + 24);
            v42 = sub_29ADCA7A8(v18 + 8, v38);
            v43 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v41, v42);
            if (!sub_29ADC935C(v40, v43))
            {
              v56.__locale_ = "hdSt/indirectDrawBatch.cpp";
              v57 = "_ValidateCompatibility";
              v58 = 891;
              v59 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ValidateCompatibility(const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, const HdStBufferArrayRangeSharedPtr &, int, const HdStBufferArrayRangeSharedPtr &, const std::vector<HdStBufferArrayRangeSharedPtr> &) const";
              v60 = 0;
              v46 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%d", v44, v45, v38);
              if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v56, "itmInstanceBars[i] ->IsAggregatedWith(itm->GetInstancePrimvarRange(i))", v46) & 1) == 0)
              {
                break;
              }
            }
          }

          v39 += 16;
          v38 = (v38 + 1);
          if (16 * a9 == v39)
          {
            goto LABEL_30;
          }
        }

        v49 = v18;
LABEL_30:
        a8 = v37;
        a7 = v36;
        a6 = v35;
        v16 = a4;
        v15 = a5;
        v17 = a3;
      }

      v56.__locale_ = v55;
      sub_29A0176E4(&v56);
      v11 += 8;
      if (v11 == v53)
      {
        goto LABEL_54;
      }
    }

    v47 = pxrInternal__aapl__pxrReserved__::operator<<(MEMORY[0x29EDC93C8], (*(v18 + 24) + 344));
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v56, MEMORY[0x29EDC93D0]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
  }
}

void sub_29ADD06C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::locale a24)
{
  *(v24 - 96) = &a21;
  sub_29A0176E4((v24 - 96));
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_HasNothingToDraw(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this)
{
  v1 = 272;
  if (*(this + 426))
  {
    v1 = 280;
  }

  return *(this + v1) == 0;
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::PrepareDraw(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderPassState **a3, void ***a4)
{
  if (!*(a1 + 168))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CompileBatch(a1, a4);
  }

  v7 = 272;
  if (*(a1 + 426))
  {
    v7 = 280;
  }

  if (*(a1 + v7))
  {
    v8 = *(a1 + 224);
    if (v8 == 1)
    {
      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 168), (a1 + 200));
      *(a1 + 224) = 0;
    }

    if (*(a1 + 428) == 1)
    {

      pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteFrustumCull(a1, v8, a3, a4);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteFrustumCull(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__::HdRenderPassState **a3, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a4)
{
  if ((*(a1 + 427) != 1 || *(a1 + 429) == 1) && (!sub_29ABCF8C0(16) || a2))
  {
    if (a2)
    {
      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::CopyData(*(a1 + 184), (a1 + 200));
    }

    CullingProgram = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_GetCullingProgram(a1, a4);
    sub_29ADD336C(&v77, CullingProgram);
    v77 = &unk_2A2093360;
    v85 = *(CullingProgram + 120);
    if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(&v77) & 1) != 0 || (v86 = "hdSt/indirectDrawBatch.cpp", v87 = "_ExecuteFrustumCull", v88 = 1407, *v89 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteFrustumCull(const BOOL, const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)", v89[8] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v86, "cullingProgram.IsValid()", 0)))
    {
      v10 = a1 + 184;
      v9 = *(a1 + 184);
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v11)
      {
        v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStDispatchBuffer::GetResource(v9, v11 + 22, &v75);
      if (v75 || (v86 = "hdSt/indirectDrawBatch.cpp", v87 = "_ExecuteFrustumCull", v88 = 1411, *v89 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteFrustumCull(const BOOL, const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)", v89[8] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v86, "cullCommandBuffer", 0) & 1) != 0))
      {
        v12 = *(**(a1 + 8) + 8);
        v13 = *(&v78 + 1);
        v55 = v78;
        if (*(&v78 + 1))
        {
          atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        sub_29ADCA4B8(&v77, &v86);
        sub_29ADD1CC0(v68, v12, (a1 + 184), v79, &v55, &v86, &v82);
        *&v63 = &v86;
        sub_29A0176E4(&v63);
        if (v13)
        {
          sub_29A014BEC(v13);
        }

        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
        v15 = *(a1 + 429);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterGraphicsPipeline(*a4, *(v71 + 64), &v55);
        if (v58 == 1)
        {
          pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(&v86);
          v104 = 1;
          if (v15)
          {
            v16 = 84;
          }

          else
          {
            v16 = 76;
          }

          v103 = v16;
          LOWORD(v90) = 0;
          *v89 = 0;
          *&v89[8] = *(v71 + 64);
          BYTE8(v98) = 0;
          v17 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a4);
          v18 = (*(*v17 + 160))(v17, &v86);
          v20 = v19;
          v21 = operator new(0x28uLL);
          v21[1] = 0;
          v21[2] = 0;
          *v21 = &unk_2A20933B0;
          v21[3] = v18;
          v21[4] = v20;
          *&v63 = v21 + 3;
          *(&v63 + 1) = v21;
          sub_29ADD39A0(&v55, &v63);
          if (*(&v63 + 1))
          {
            sub_29A014BEC(*(&v63 + 1));
          }

          if (__p)
          {
            v102 = __p;
            operator delete(__p);
          }

          *&v63 = &v100;
          sub_29AB87628(&v63);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(v86);
          }
        }

        v23 = *(&v55 + 1);
        v22 = v56[0];
        if (v56[0])
        {
          atomic_fetch_add_explicit(v56[0]->__m_.__opaque, 1uLL, memory_order_relaxed);
        }

        if (v57 == 1)
        {
          std::mutex::unlock(v56[1]);
        }

        if (v56[0])
        {
          sub_29A014BEC(v56[0]);
        }

        v25 = *v23;
        v24 = v23[1];
        v87 = 0;
        v86 = 0;
        *v89 = xmmword_29B6C6450;
        v90 = 0;
        v88 = 0;
        *&v89[16] = 0;
        v91 = 15;
        v92 = 0;
        v93 = 0u;
        v94 = 0u;
        *v95 = 0u;
        v96 = 0u;
        *v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0;
        (*(*Hgi + 24))(&v67, Hgi, &v86);
        (*(*v67 + 24))(v67);
        (*(*v67 + 56))(v67, v25, v24);
        sub_29ADD23B4(v68);
        if (pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v26))
        {
          pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_BeginGPUCountVisibleInstances(a1, a4);
          v27 = v70;
          v28 = atomic_load(&qword_2A174EAD8);
          if (!v28)
          {
            v28 = sub_29ADD3C88();
          }

          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(v27, (v28 + 32), (a1 + 248));
        }

        v29 = v70;
        v30 = atomic_load(&qword_2A174EAD8);
        if (!v30)
        {
          v30 = sub_29ADD3C88();
        }

        v31 = *(a1 + 168);
        v33 = *(v31 + 208);
        v32 = *(v31 + 216);
        *&v55 = v33;
        *(&v55 + 1) = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(v29, v30, &v55);
        if (*(&v55 + 1))
        {
          sub_29A014BEC(*(&v55 + 1));
        }

        v34 = (*a3 + 664);
        v35 = *(*a3 + 744);
        v59 = *(*a3 + 728);
        v60 = v35;
        v36 = v34[7];
        v61 = v34[6];
        v62 = v36;
        v37 = v34[1];
        v55 = *v34;
        *v56 = v37;
        v38 = v34[3];
        v57 = v34[2];
        v58 = v38;
        pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v63, &v55);
        v39 = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDrawingRangeNDC(*a3).u32[0];
        v41 = v40;
        v42 = v70;
        v43 = atomic_load(&qword_2A174EAD8);
        if (!v43)
        {
          v43 = sub_29ADD3C88();
        }

        v44 = (sub_29ADD2604(v42, (v43 + 48), -1) >> 8);
        if (*(a1 + 429) == 1)
        {
          v45 = *(*(a1 + 168) + 180);
          v55 = v63;
          *v56 = v64;
          v57 = v65;
          v58 = v66;
          *&v59 = __PAIR64__(v41, v39);
          *(&v59 + 1) = __PAIR64__(a1, v45);
          LODWORD(v60) = 1;
          (*(*v67 + 72))(v67, v25, v24, 1, v44, 84, &v55);
          (*(*v67 + 96))(v67, v75, *(v75 + 48), *(*v10 + 176), *(v75 + 52));
          (*(*v67 + 120))(v67, 1);
          LODWORD(v60) = 0;
          (*(*v67 + 72))(v67, v25, v24, 1, v44, 84, &v55);
          (*(*v67 + 96))(v67, v75, *(v75 + 48), *(*v10 + 176), *(v75 + 52));
        }

        else
        {
          DWORD2(v59) = *(*(a1 + 168) + 180);
          v55 = v63;
          *v56 = v64;
          v57 = v65;
          v58 = v66;
          *&v59 = __PAIR64__(v41, v39);
          (*(*v67 + 72))(v67, v25, v24, 1, v44, 76, &v55);
          (*(*v67 + 88))(v67, *(*v10 + 176), 0, 1, 0);
        }

        (*(*v67 + 120))(v67, 1);
        (*(*v67 + 32))(v67);
        pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(Hgi, v67, 0);
        sub_29ADD26AC(v68);
        v46 = v70;
        v47 = atomic_load(&qword_2A174EAD8);
        if (!v47)
        {
          v47 = sub_29ADD3C88();
        }

        v48 = *(a1 + 168);
        v50 = *(v48 + 208);
        v49 = *(v48 + 216);
        *&v55 = v50;
        *(&v55 + 1) = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(v46, v47, &v55, -1);
        v51 = *(&v55 + 1);
        if (*(&v55 + 1))
        {
          sub_29A014BEC(*(&v55 + 1));
        }

        if (pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v51))
        {
          v52 = v70;
          v53 = atomic_load(&qword_2A174EAD8);
          if (!v53)
          {
            v53 = sub_29ADD3C88();
          }

          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(v52, (v53 + 32), (a1 + 248), -1);
          pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_EndGPUCountVisibleInstances(a1, a4, (a1 + 264));
        }

        v54 = v67;
        v67 = 0;
        if (v54)
        {
          (*(*v54 + 8))(v54);
        }

        if (v97[0])
        {
          v97[1] = v97[0];
          operator delete(v97[0]);
        }

        if (v95[1])
        {
          *&v96 = v95[1];
          operator delete(v95[1]);
        }

        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v22)
        {
          sub_29A014BEC(v22);
        }

        if (v74)
        {
          sub_29A014BEC(v74);
        }

        v86 = &v73;
        sub_29A0176E4(&v86);
        if (v72)
        {
          sub_29A014BEC(v72);
        }

        if (v69)
        {
          sub_29A014BEC(v69);
        }

        sub_29ADD32C4(v68);
      }

      if (v76)
      {
        sub_29A014BEC(v76);
      }
    }

    v77 = &unk_2A2092E00;
    if (v84)
    {
      sub_29A014BEC(v84);
    }

    if (v83)
    {
      sub_29A014BEC(v83);
    }

    v86 = &v81;
    sub_29A0176E4(&v86);
    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A1602D4(v79, v79[1]);
    if (*(&v78 + 1))
    {
      sub_29A014BEC(*(&v78 + 1));
    }
  }
}

void sub_29ADD11A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    sub_29A014BEC(a67);
  }

  sub_29ADCE9D0(&a68);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::ExecuteDraw(uint64_t a1, void *lpsrc, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  {
    v8 = v7;
    v10 = *a3;
    v9 = *(a3 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a4;
    v11 = *(a4 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    v13 = operator new(0x30uLL);
    *v13 = &unk_2A2093400;
    v13[1] = a1;
    v13[2] = v10;
    v13[3] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13[4] = v12;
    v13[5] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13;
    pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::InsertFunctionOp(v8, v14);
    sub_29A0FC854(v14);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(a1, a3, a4);
  }
}

void sub_29ADD14D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_29A0FC854(va2);
  sub_29A99E154(va);
  sub_29A99E154(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStRenderPassState **a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a3)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v64, "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)");
  if (*(a1 + 8) != *(a1 + 16) || (v47 = "hdSt/indirectDrawBatch.cpp", v48 = "_ExecuteDraw", v49 = 1145, v50 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)", v51[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v47, "!_drawItemInstances.empty()", 0) & 1) != 0))
  {
    if (*(a1 + 168) || (v47 = "hdSt/indirectDrawBatch.cpp", v48 = "_ExecuteDraw", v49 = 1147, v50 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)", v51[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v47, "_dispatchBuffer", 0) & 1) != 0))
    {
      v6 = 272;
      if (*(a1 + 426))
      {
        v6 = 280;
      }

      if (*(a1 + v6))
      {
        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a3);
        v42 = (*(*Hgi + 200))(Hgi);
        v40 = (*(a1 + 440) & 1) == 0 && (v42[48] >> 6) & 1;
        DrawingProgram = pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_GetDrawingProgram(a1, a2, a3);
        if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::IsValid(DrawingProgram) & 1) != 0 || (v47 = "hdSt/indirectDrawBatch.cpp", v48 = "_ExecuteDraw", v49 = 1162, v50 = "void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDraw(const HdStRenderPassStateSharedPtr &, const HdStResourceRegistrySharedPtr &)", v51[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v47, "program.IsValid()", 0)))
        {
          v9 = *(**(a1 + 8) + 8);
          v10 = *(DrawingProgram + 2);
          v45 = *(DrawingProgram + 1);
          v46 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29ADCA4B8(DrawingProgram, &v43);
          sub_29ADD1CC0(&v47, v9, (a1 + 168), DrawingProgram + 24, &v45, &v43, DrawingProgram + 11);
          v65 = &v43;
          sub_29A0176E4(&v65);
          if (v10)
          {
            sub_29A014BEC(v10);
          }

          sub_29ADD23B4(&v47);
          v11 = v57;
          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v12)
          {
            v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindInterleavedBuffer(v11, v51, v12 + 78);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v57, &v49);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v57, v52);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v57, v53);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v57, v55);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v57, v54);
          v39 = (a1 + 168);
          v41 = a2;
          v14 = v60;
          for (i = v61; v14 != i; v14 += 2)
          {
            v15 = (*(**v14 + 72))();
            v17 = *v15;
            v16 = v15[1];
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v17)
            {
              v18 = v57;
              v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v19)
              {
                v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              (*(*v17 + 160))(&v43, v17);
              pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(v18, v19 + 50, &v43);
              if (v44)
              {
                sub_29A014BEC(v44);
              }
            }

            v20 = *v14;
            v21 = (*(**(v58 + 64) + 48))(*(v58 + 64));
            (*(*v20 + 80))(v20, v21, v57);
            if (v16)
            {
              sub_29A014BEC(v16);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Bind(*v41, v42);
          pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ApplyStateFromGeometricShader(*v41, v57, &v62);
          v23 = v62;
          v45 = v62;
          v46 = v63;
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (((*(v23 + 6) - 2) & 0xFFFFFFF6) == 0)
          {
            v24 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri;
            PrimitiveIndexSize = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(v23);
            v24(36466, PrimitiveIndexSize);
          }

          if (v40)
          {
            pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDrawIndirect(a1, &v45, v39);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDrawImmediate(a1, &v45, v39, v22, DrawingProgram);
          }

          sub_29ADD26AC(&v47);
          v26 = v57;
          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v27)
          {
            v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindInterleavedBuffer(v26, v51, v27 + 78);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v57, &v49);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v57, v52);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v57, v53);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v57, v55);
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v57, v54);
          v28 = v60;
          for (j = v61; v28 != j; v28 += 2)
          {
            v30 = (*(**v28 + 72))();
            v32 = *v30;
            v31 = v30[1];
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v32)
            {
              v33 = v57;
              v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v34)
              {
                v34 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              (*(*v32 + 160))(&v43, v32);
              pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(v33, v34 + 50, &v43, -1);
              if (v44)
              {
                sub_29A014BEC(v44);
              }
            }

            (*(**v28 + 88))(*v28, 0, v57);
            if (v31)
            {
              sub_29A014BEC(v31);
            }
          }

          pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Unbind(*v41, v42);
          v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
          if (!v35)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
          }

          v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          if (!v36)
          {
            v36 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v35, (v36 + 56));
          v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
          if (!v37)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
          }

          v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v38)
          {
            v38 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v37, (v38 + 328), *(a1 + 264));
          if (v46)
          {
            sub_29A014BEC(v46);
          }

          if (v63)
          {
            sub_29A014BEC(v63);
          }

          v43 = &v60;
          sub_29A0176E4(&v43);
          if (v59)
          {
            sub_29A014BEC(v59);
          }

          if (v56)
          {
            sub_29A014BEC(v56);
          }

          sub_29ADD32C4(&v47);
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v64);
}

void *sub_29ADD1CC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void **a6, void *a7)
{
  v13 = sub_29ADD2F8C(a1, a2);
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

void sub_29ADD1D74(_Unwind_Exception *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDrawIndirect(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStGLConversions **a2, uint64_t a3)
{
  PrimitiveMode = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetPrimitiveMode(*a2, a2);
  v6 = *(*a3 + 176);
  v7 = (4 * *(*a3 + 180));
  LOBYTE(a1) = *(a1 + 426);
  v8 = sub_29ADC9798(0);
  if (a1)
  {
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("MDI Drawing Elements:\n - primitive mode: %d\n - buffer type: GL_UNSIGNED_INT\n - drawCount: %d\n - stride: %d\n", v9, v10, PrimitiveMode, v6, v7);
    }

    v11 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirect;

    return v11(PrimitiveMode, 5125, 0, v6, v7);
  }

  else
  {
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("MDI Drawing Arrays:\n - primitive mode: %d\n - drawCount: %d\n - stride: %d\n", v9, v10, PrimitiveMode, v6, v7);
    }

    v13 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirect;

    return v13(PrimitiveMode, 0, v6, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_ExecuteDrawImmediate(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStGLConversions **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  PrimitiveMode = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetPrimitiveMode(*a2, a2);
  v9 = *a3;
  v10 = *(*a3 + 176);
  v11 = *(v9 + 180);
  v36 = a5;
  if ((*(**(a5 + 104) + 24))(*(a5 + 104)))
  {
    v12 = *(a1 + 440);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(**(a1 + 8) + 8) + 56);
  if (v13)
  {
    v13 = (*(*v13 + 24))(v13);
  }

  v39 = v13;
  v14 = *(a1 + 426);
  v15 = sub_29ADC9798(0);
  if (v14)
  {
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Drawing Elements:\n - primitive mode: %d\n - buffer type: GL_UNSIGNED_INT\n - drawCount: %d\n - stride: %d\n", v16, v17, PrimitiveMode, v10, (4 * v11));
    }

    if (v10)
    {
      v18 = 0;
      v19 = 0;
      v20 = 8 * v10;
      v21 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedBaseVertexBaseInstance;
      do
      {
        v22 = *(a1 + 200);
        if (v12)
        {
          v23 = v12;
          v24 = v11;
          v25 = PrimitiveMode;
          v26 = v21;
          v27 = *(*(*(a1 + 8) + v19) + 8);
          v28 = *(v36 + 16);
          v37 = *(v36 + 8);
          v38 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29ADD2190(v27, v36 + 24, &v37, &v39);
          if (v28)
          {
            sub_29A014BEC(v28);
          }

          v21 = v26;
          PrimitiveMode = v25;
          v11 = v24;
          v12 = v23;
        }

        v29 = (v22 + 4 * v18);
        (*v21)(PrimitiveMode, *v29, 5125, 4 * v29[2], v29[1], v29[3], v29[4]);
        v19 += 8;
        v18 += v11;
      }

      while (v20 != v19);
    }
  }

  else
  {
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Drawing Arrays:\n - primitive mode: %d\n - drawCount: %d\n - stride: %d\n", v16, v17, PrimitiveMode, v10, (4 * v11));
    }

    if (v10)
    {
      v30 = 0;
      v31 = 0;
      v32 = 8 * v10;
      do
      {
        v33 = *(a1 + 200);
        if (v12)
        {
          v34 = *(*(*(a1 + 8) + v31) + 8);
          v35 = *(a5 + 16);
          v37 = *(a5 + 8);
          v38 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29ADD2190(v34, a5 + 24, &v37, &v39);
          if (v35)
          {
            sub_29A014BEC(v35);
          }
        }

        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstancedBaseInstance(PrimitiveMode, *(v33 + 4 * v30 + 8), *(v33 + 4 * v30), *(v33 + 4 * v30 + 4), *(v33 + 4 * v30 + 12));
        v31 += 8;
        v30 += v11;
      }

      while (v32 != v31);
    }
  }
}

void sub_29ADD2110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADD212C(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v6 = (a1 + 208);
  sub_29A0176E4(&v6);
  v3 = *(a1 + 200);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return sub_29ADD32C4(a1);
}

uint64_t sub_29ADD2190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *(a1 + 56);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  if (*a4 != result)
  {
    *a4 = result;
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = (*(**(*a3 + 64) + 48))(*(*a3 + 64));
      v11 = *(*v9 + 80);

      return v11(v9, v10, a2);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_GetCullingProgram(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  v5 = *(a1 + 296);
  v4 = *(a1 + 304);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      v6 = *(a1 + 425);
      sub_29A014BEC(v4);
      if ((v6 & 1) == 0)
      {
        return a1 + 288;
      }
    }

    else
    {
      sub_29A014BEC(v4);
    }
  }

  else if (v5 && (*(a1 + 425) & 1) == 0)
  {
    return a1 + 288;
  }

  v7 = *(a1 + 429);
  v8 = *(a1 + 424);
  IsEnabledGPUCountVisibleInstances = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUCountVisibleInstances(v4);
  pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::HdSt_CullingShaderKey(v16, v7, v8, IsEnabledGPUCountVisibleInstances);
  pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::Create(v16, a2, &v14);
  v10 = v14;
  v11 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v10;
  *(a1 + 384) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::_DrawingProgram::CompileShader(a1 + 288, *(**(a1 + 8) + 8), a2);
  *(a1 + 425) = 0;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::~HdSt_CullingShaderKey(v16);
  return a1 + 288;
}

void sub_29ADD238C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_CullingShaderKey::~HdSt_CullingShaderKey(va);
  _Unwind_Resume(a1);
}

void sub_29ADD23B4(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram;
  v3 = (*(**(*(a1 + 192) + 64) + 48))(*(*(a1 + 192) + 64));
  v2(v3);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindConstantBuffer(*(a1 + 184), a1);
  if (*(a1 + 128))
  {
    v4 = *(a1 + 144);
    if (*(a1 + 152) != v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindInstanceBufferArray(*(a1 + 184), (v4 + v5), v6++);
        v4 = *(a1 + 144);
        v5 += 16;
      }

      while (v6 < (*(a1 + 152) - v4) >> 4);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(*(a1 + 184), (a1 + 128));
  }

  v7 = *(a1 + 184);
  v8 = *(a1 + 168);
  v10 = *(v8 + 224);
  v9 = *(v8 + 232);
  v11 = v10;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(v7, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29ADD24B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_BeginGPUCountVisibleInstances(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  if (!*(a1 + 248))
  {
    v4 = *a2;
    v5 = atomic_load(&qword_2A174EAD8);
    if (!v5)
    {
      v5 = sub_29ADD3C88();
    }

    sub_29A008E78(__p, "");
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBufferResource(v4, (v5 + 32), 5, 1, 8, __p, v10);
    v6 = v10[0];
    v10[0] = 0uLL;
    v7 = *(a1 + 256);
    *(a1 + 248) = v6;
    if (v7)
    {
      sub_29A014BEC(v7);
      if (*(&v10[0] + 1))
      {
        sub_29A014BEC(*(&v10[0] + 1));
      }
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*a2);
  *&v10[0] = &unk_29B70AFD8;
  *(&v10[0] + 1) = 0;
  v10[1] = **(a1 + 248);
  v10[2] = xmmword_29B70AFB0;
  (*(*GlobalBlitCmds + 64))(GlobalBlitCmds, v10);
  return pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*a2, 0);
}

void sub_29ADD25E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADD2604(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v8 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v5;
    }
  }

  v9 = a3;
  v6 = sub_29ADD3B84(a1, &v8);
  if (a1 + 8 == v6)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *(v6 + 48);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ADD26AC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(0);
  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindConstantBuffer(*(a1 + 184), a1);
  if (*(a1 + 128))
  {
    v2 = *(a1 + 144);
    if (*(a1 + 152) != v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindInstanceBufferArray(*(a1 + 184), (v2 + v3), v4++);
        v2 = *(a1 + 144);
        v3 += 16;
      }

      while (v4 < (*(a1 + 152) - v2) >> 4);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(*(a1 + 184), (a1 + 128));
  }

  v5 = *(a1 + 184);
  v6 = *(a1 + 168);
  v8 = *(v6 + 224);
  v7 = *(v6 + 232);
  v9 = v8;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(v5, &v9);
  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29ADD2784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_EndGPUCountVisibleInstances(uint64_t a1, uint64_t **a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*a2, 1);
  v13 = 0;
  v10 = 4;
  v11 = &v13;
  v12 = 0;
  v8 = **(a1 + 248);
  v9 = 0;
  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*a2);
  (*(*GlobalBlitCmds + 72))(GlobalBlitCmds, &v8);
  result = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*a2, 1);
  *a3 = v13;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::DrawItemInstanceChanged(pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch *this, const pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance *a2)
{
  v2 = *(this + 21);
  if (v2)
  {
    v5 = *(v2 + 180);
    v6 = *(a2 + 2);
    v7 = sub_29ADC9478(*(a2 + 1));
    v8 = *(this + 25);
    v9 = *(this + 108);
    v10 = *(this + 109);
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
    v19 = v18 + v9;
    if (sub_29ADC9798(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("\nInstance Count changed: %d -> %d\n", v16, v17, *(v8 + 4 * v19), v15);
    }

    v20 = (v15 - *(v8 + 4 * v19));
    if (v20)
    {
      *(this + 33) += v20;
      *(v8 + 4 * v19) = v15;
      *(v8 + 4 * (v18 + v10)) = v15;
      *(this + 224) = 1;
    }

    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void sub_29ADD29C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADD29F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::HdSt_ResourceBinder(&v8);
  v5 = a1 + 32;
  sub_29A1602D4(a1 + 24, *(a1 + 32));
  v6 = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  v7 = v10;
  *(a1 + 40) = v10;
  if (v7)
  {
    v6[2] = v5;
    v8 = &v9;
    v9 = 0;
    v10 = 0;
    v6 = 0;
  }

  else
  {
    *(a1 + 24) = v5;
  }

  sub_29A1602D4(&v8, v6);
  sub_29A017738((a1 + 64));
}

void pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::_CullingProgram::_GetCustomBindings(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3 || (sub_29B2C8E08(v29)) && (a2 || (sub_29B2C8E54(v28)))
  {
    v6 = atomic_load(&qword_2A174EAD8);
    if (!v6)
    {
      v6 = sub_29ADD3C88();
    }

    v21 = 0xFFFFFFFF00000007;
    v7 = *(v6 + 32);
    v22 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v26 = 0;
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    sub_29ADD2EBC(a2, &v21);
    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v8 = atomic_load(&qword_2A174EAD8);
    if (!v8)
    {
      v8 = sub_29ADD3C88();
    }

    v21 = 0xFFFFFFFF00000007;
    v9 = *v8;
    v22 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v26 = 0;
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    sub_29ADD2EBC(a2, &v21);
    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v10 = atomic_load(&qword_2A174EAD8);
    if (!v10)
    {
      v10 = sub_29ADD3C88();
    }

    v21 = -4294967287;
    v11 = *(v10 + 48);
    v22 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v26 = 0;
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    sub_29ADD2EBC(a2, &v21);
    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(a1 + 121) == 1)
    {
      v12 = atomic_load(&qword_2A174EAD8);
      if (!v12)
      {
        v12 = sub_29ADD3C88();
      }

      v21 = 0xFFFFFFFF00000003;
      v13 = *(v12 + 8);
      v22 = v13;
      if ((v13 & 7) != 0)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
        {
          v22 = v14;
        }
      }
    }

    else
    {
      v15 = atomic_load(&qword_2A174EAD8);
      if (!v15)
      {
        v15 = sub_29ADD3C88();
      }

      v21 = 0xFFFFFFFF00000002;
      v16 = *(v15 + 8);
      v22 = v16;
      if ((v16 & 7) != 0)
      {
        v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
        {
          v22 = v17;
        }
      }

      v26 = 0;
      v27 = 0;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      sub_29ADD2EBC(a2, &v21);
      if (*(&v24 + 1))
      {
        sub_29A014BEC(*(&v24 + 1));
      }

      if (*(&v23 + 1))
      {
        sub_29A014BEC(*(&v23 + 1));
      }

      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = atomic_load(&qword_2A174EAD8);
      if (!v18)
      {
        v18 = sub_29ADD3C88();
      }

      v21 = 0xFFFFFFFF00000002;
      v19 = *(v18 + 40);
      v22 = v19;
      if ((v19 & 7) != 0)
      {
        v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed) & 1) == 0)
        {
          v22 = v20;
        }
      }
    }

    v26 = 0;
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    sub_29ADD2EBC(a2, &v21);
    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a3 = *(a1 + 121);
  }
}

void sub_29ADD2E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADD2F38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADD2EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ADD4288(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v4 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v4;
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29ADD2F38(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[1];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_29ADD2F8C(void *a1, uint64_t a2)
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

void sub_29ADD31FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_29ADD32C4(uint64_t a1)
{
  v12 = (a1 + 144);
  sub_29A0176E4(&v12);
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

void *sub_29ADD336C(void *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = &unk_2A2092E00;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29ADD3498(a1 + 3, a2 + 24);
  v6 = *(a2 + 48);
  a1[6] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[6] &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(a2 + 56);
  a1[8] = 0;
  a1[7] = v7;
  a1[9] = 0;
  a1[10] = 0;
  sub_29ADC3E54(a1 + 8, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  v8 = *(a2 + 96);
  a1[11] = *(a2 + 88);
  a1[12] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 112);
  a1[13] = *(a2 + 104);
  a1[14] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29ADD3454(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1602D4(v1 + 24, *(v1 + 32));
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29ADD3498(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29ADD34F0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29ADD34F0(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29ADD3578(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29ADD3578(uint64_t **a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29ADD35FC(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29ADD3790(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *sub_29ADD35FC(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_29ADD389C(a5, a2 + 4))
  {
    if (!sub_29ADD389C(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_29ADD389C(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_29ADD389C(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_29ADD3814(a1, a3, a5);
}

void *sub_29ADD3790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x38uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  result[4] = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 10) = *(a2 + 2);
  *(result + 12) = *(a2 + 4);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29ADD3814(uint64_t a1, void *a2, unint64_t *a3)
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
        if (!sub_29ADD389C(a3, v4 + 4))
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

      if (!sub_29ADD389C(v7 + 4, a3))
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

BOOL sub_29ADD389C(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      return (v5 ^ v4) <= 7 && *(a1 + 2) < *(a2 + 2);
    }

    return 1;
  }

  if (v4 != v5)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 == v11)
    {
      v15 = *(v9 + 16);
      v13 = v9 + 16;
      v14 = v15;
      v16 = *(v13 + 23);
      v19 = *(v8 + 16);
      v17 = v8 + 16;
      v18 = v19;
      v20 = *(v17 + 23);
      v21 = v20 >= 0 ? *(v17 + 23) : *(v17 + 8);
      v22 = (v20 >= 0 ? v17 : v18);
      v23 = v16 >= 0 ? *(v13 + 23) : *(v13 + 8);
      v24 = (v16 >= 0 ? v13 : v14);
      v25 = v23 >= v21 ? v21 : v23;
      v26 = memcmp(v22, v24, v25);
      v27 = v21 < v23;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (v27)
      {
        return 1;
      }
    }
  }

  return (v5 ^ v4) <= 7 && *(a1 + 2) < *(a2 + 2);
}

void sub_29ADD39A0(uint64_t *a1, uint64_t *a2)
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

    v7 = sub_29ADD3A70(v4, a1);
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

void sub_29ADD3A58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADD3A70(uint64_t a1, uint64_t *a2)
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

void sub_29ADD3B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ADD3B38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20933B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ADD3B84(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_29ADD389C((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_29ADD389C(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void *sub_29ADD3C08(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    bzero(v4, 16 * a2);
    a1[1] = &v4[16 * a2];
  }

  return a1;
}

unint64_t sub_29ADD3C88()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "dispatchBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "drawCommandIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "drawIndirect", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "drawIndirectCull", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "drawIndirectResult", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "instanceCountInput", 0);
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
  atomic_compare_exchange_strong(&qword_2A174EAD8, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A174EAD8);
  }

  return v0;
}

void sub_29ADD3EE4(_Unwind_Exception *a1)
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

void *sub_29ADD4000(void *a1)
{
  *a1 = &unk_2A2093400;
  v2 = a1[5];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

void sub_29ADD4058(void *__p)
{
  *__p = &unk_2A2093400;
  v2 = __p[5];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  operator delete(__p);
}

char *sub_29ADD40C0(uint64_t a1)
{
  result = operator new(0x30uLL);
  *result = &unk_2A2093400;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 40);
  *(result + 4) = *(a1 + 32);
  *(result + 5) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29ADD413C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A2093400;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29ADD419C(void *a1)
{
  sub_29ADD4238(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29ADD41EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2093460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29ADD4238(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

uint64_t sub_29ADD4288(uint64_t a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[72 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[72 * v6];
  *v8 = *a2;
  *(v8 + 1) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v8 + 1) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a2 + 48);
  v8[64] = *(a2 + 64);
  *(v8 + 3) = v9;
  *&v18 = v8 + 72;
  v10 = *(a1 + 8);
  v11 = &v8[*a1 - v10];
  sub_29ADD43FC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ADD4564(&v16);
  return v15;
}

void sub_29ADD43E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADD4564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADD43FC(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
      *(a4 + 8) = v7[1];
      v7[1] = 0;
      *(a4 + 16) = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = *(v7 + 2);
      v7[4] = 0;
      v7[5] = 0;
      v8 = *(v7 + 3);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v8;
      v7 += 9;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29ADCBEF8(a1, v5);
      v5 += 9;
    }
  }

  return sub_29ADD44D8(v10);
}

uint64_t sub_29ADD44D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ADD4510(a1);
  }

  return a1;
}

void sub_29ADD4510(uint64_t *a1)
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
      v3 -= 9;
      sub_29ADCBEF8(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29ADD4564(void **a1)
{
  sub_29ADD4598(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADD4598(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29ADCBEF8(v4, (i - 72));
  }
}

void sub_29ADD45E0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_MATERIAL_PRIMVAR_FILTERING))
  {
    sub_29B2C8EA0();
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::HdSt_MaterialNetworkShader(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  v1 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(this);
  *v1 = &unk_2A2093480;
  *(v1 + 3) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  sub_29ADD4764(v1 + 17);
}

void sub_29ADD46F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v11;
  a10 = v13;
  sub_29A124AB0(&a10);
  v15 = *(v10 + 128);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  a10 = (v10 + 96);
  sub_29ABC6FA0(&a10);
  sub_29ADD60F4(&a10);
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*v12);
  }

  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(v10);
  _Unwind_Resume(a1);
}

void sub_29ADD4764(void *a1@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174EAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EAF8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v2)
    {
      v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v3 = *(v2 + 19);
    v38 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v38 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v5 = *(v4 + 20);
    v39 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&qword_2A174EB00);
    if (!v6)
    {
      v6 = sub_29ADD5A44();
    }

    v7 = *v6;
    v40 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v40 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&qword_2A174EB00);
    if (!v8)
    {
      v8 = sub_29ADD5A44();
    }

    v9 = *(v8 + 8);
    v41 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v41 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10 = atomic_load(&qword_2A174EB00);
    if (!v10)
    {
      v10 = sub_29ADD5A44();
    }

    v11 = *(v10 + 16);
    v42 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v42 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = atomic_load(&qword_2A174EB00);
    if (!v12)
    {
      v12 = sub_29ADD5A44();
    }

    v13 = *(v12 + 24);
    v43 = v13;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v43 &= 0xFFFFFFFFFFFFFFF8;
    }

    v14 = atomic_load(&qword_2A174EB00);
    if (!v14)
    {
      v14 = sub_29ADD5A44();
    }

    v15 = *(v14 + 32);
    v44 = v15;
    if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v44 &= 0xFFFFFFFFFFFFFFF8;
    }

    v16 = atomic_load(&qword_2A174EB00);
    if (!v16)
    {
      v16 = sub_29ADD5A44();
    }

    v17 = *(v16 + 40);
    v45 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v45 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = atomic_load(&qword_2A174EB00);
    if (!v18)
    {
      v18 = sub_29ADD5A44();
    }

    v19 = *(v18 + 48);
    v46 = v19;
    if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v46 &= 0xFFFFFFFFFFFFFFF8;
    }

    v20 = atomic_load(&qword_2A174EB00);
    if (!v20)
    {
      v20 = sub_29ADD5A44();
    }

    v21 = *(v20 + 56);
    v47 = v21;
    if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v47 &= 0xFFFFFFFFFFFFFFF8;
    }

    v22 = atomic_load(&qword_2A174EB00);
    if (!v22)
    {
      v22 = sub_29ADD5A44();
    }

    v23 = *(v22 + 64);
    v48 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v48 &= 0xFFFFFFFFFFFFFFF8;
    }

    v24 = atomic_load(&qword_2A174EB00);
    if (!v24)
    {
      v24 = sub_29ADD5A44();
    }

    v25 = *(v24 + 72);
    v49 = v25;
    if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v49 &= 0xFFFFFFFFFFFFFFF8;
    }

    v26 = atomic_load(&qword_2A174EB00);
    if (!v26)
    {
      v26 = sub_29ADD5A44();
    }

    v27 = *(v26 + 80);
    v50 = v27;
    if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v50 &= 0xFFFFFFFFFFFFFFF8;
    }

    v28 = atomic_load(&qword_2A174EB00);
    if (!v28)
    {
      v28 = sub_29ADD5A44();
    }

    v29 = *(v28 + 88);
    v51 = v29;
    if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v51 &= 0xFFFFFFFFFFFFFFF8;
    }

    v30 = atomic_load(&qword_2A174EB00);
    if (!v30)
    {
      v30 = sub_29ADD5A44();
    }

    v31 = *(v30 + 96);
    v52 = v31;
    if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v52 &= 0xFFFFFFFFFFFFFFF8;
    }

    v32 = atomic_load(&qword_2A174EB00);
    if (!v32)
    {
      v32 = sub_29ADD5A44();
    }

    v33 = *(v32 + 104);
    v53 = v33;
    if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v53 &= 0xFFFFFFFFFFFFFFF8;
    }

    v34 = atomic_load(&qword_2A174EB00);
    if (!v34)
    {
      v34 = sub_29ADD5A44();
    }

    v35 = *(v34 + 112);
    v54 = v35;
    if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v54 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A174EAE0 = 0;
    *algn_2A174EAE8 = 0;
    qword_2A174EAF0 = 0;
    sub_29A12EF7C(&qword_2A174EAE0, &v38, &v55, 0x11uLL);
    for (i = 128; i != -8; i -= 8)
    {
      v37 = *(&v38 + i);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A174EAE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EAF8);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::~HdSt_MaterialNetworkShader(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  *this = &unk_2A2093480;
  v2 = *(this + 28);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = (this + 200);
  sub_29ADD61E4(&v4);
  v4 = (this + 136);
  sub_29A124AB0(&v4);
  v3 = *(this + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = (this + 96);
  sub_29ABC6FA0(&v4);
  v4 = (this + 72);
  sub_29ADD60F4(&v4);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::~HdSt_MaterialNetworkShader(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_SetSource(uint64_t a1, void *a2, std::string *__str)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v6)
  {
    v6 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  if ((*(v6 + 8) ^ *a2) < 8)
  {
    v7 = 24;
LABEL_9:
    result = std::string::operator=((a1 + v7), __str);
    *(a1 + 176) = 0;
    return result;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!result)
  {
    result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  if ((result[7] ^ *a2) <= 7)
  {
    v7 = 48;
    goto LABEL_9;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetSource@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!result)
  {
    result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  if ((*(result + 8) ^ *a2) > 7)
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!result)
    {
      result = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    if ((*(result + 7) ^ *a2) > 7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    if ((*(this + 71) & 0x80000000) == 0)
    {
      *a3 = *(this + 3);
      v7 = *(this + 8);
      goto LABEL_11;
    }

    v8 = *(this + 6);
    v9 = *(this + 7);
  }

  else
  {
    if ((*(this + 47) & 0x80000000) == 0)
    {
      *a3 = *(this + 24);
      v7 = *(this + 5);
LABEL_11:
      *(a3 + 16) = v7;
      return result;
    }

    v8 = *(this + 3);
    v9 = *(this + 4);
  }

  return sub_29A008D14(a3, v8, v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetEnabledPrimvarFiltering(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_MATERIAL_PRIMVAR_FILTERING);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  *(this + 160) = v3 & 1;
  return this;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  if (*(this + 176) == 1)
  {
    return *(this + 21);
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_ComputeHash(this);
  *(this + 21) = result;
  *(this + 176) = 1;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::ComputeHash(this + 9);
  v3 = *(this + 47);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 3);
    v3 = *(this + 4);
  }

  else
  {
    v4 = (this + 24);
  }

  v5 = pxrInternal__aapl__pxrReserved__::ArchHash(v4, v3);
  v6 = *(this + 71);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 6);
    v6 = *(this + 7);
  }

  else
  {
    v7 = (this + 48);
  }

  v8 = pxrInternal__aapl__pxrReserved__::ArchHash(v7, v6);
  v9 = ((v2 + v5 + (v2 + v5) * (v2 + v5)) >> 1) + v5 + v8;
  return bswap64(0x9E3779B97F4A7C55 * (((v9 + v9 * v9) >> 1) + v8));
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::ComputeTextureSourceHash(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  if (*(this + 192) == 1)
  {
    return *(this + 23);
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_ComputeTextureSourceHash(this);
  *(this + 23) = result;
  *(this + 192) = 1;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::_ComputeTextureSourceHash(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this)
{
  v1 = *(this + 25);
  v2 = *(this + 26);
  if (v1 != v2)
  {
    if (pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles(*(v1 + 16)))
    {
      return 0;
    }

    v1 = *(this + 25);
    v2 = *(this + 26);
  }

  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *v1 & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + result + (v5 + result) * (v5 + result);
    result = bswap64(0x9E3779B97F4A7C55 * (*(v1 + 32) + ((v5 + *(v1 + 32) + (v6 >> 1) + (v5 + *(v1 + 32) + (v6 >> 1)) * (v5 + *(v1 + 32) + (v6 >> 1))) >> 1)));
    v1 += 40;
  }

  while (v1 != v2);
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetFragmentSource(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 1, a2);
  a1[7].__r_.__value_.__s.__data_[8] = 0;
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetDisplacementSource(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 2, a2);
  a1[7].__r_.__value_.__s.__data_[8] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetParams(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 72) != a2)
  {
    sub_29ADD62A0(a1 + 72, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }

  sub_29ADD4764(&v2);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetNamedTextureHandles(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 200);
  if (v3 != a2)
  {
    sub_29ADD6798(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * (a2[1] - *a2));
  }

  *(a1 + 192) = 0;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetBufferSources(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v7 != v8)
  {
    v11 = (a1 + 120);
    v10 = *(a1 + 120);
    if (v10)
    {
      v13 = *(a1 + 96);
      v12 = *(a1 + 104);
      if (v12 - v13 == v8 - v7)
      {
        if (v13 == v12)
        {
LABEL_23:
          if ((*(*v10 + 16))(v10))
          {
            if (*a3 != a3[1])
            {
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(*a4, (a1 + 120), a3);
            }
          }

          return;
        }

        v14 = v7;
        while ((*v14 ^ *v13) <= 7 && *(v13 + 8) == *(v14 + 2) && *(v13 + 16) == v14[2])
        {
          v13 += 24;
          v14 += 3;
          if (v13 == v12)
          {
            goto LABEL_23;
          }
        }
      }
    }

    if ((a1 + 96) != a2)
    {
      sub_29ADD6B54((a1 + 96), v7, v8, 0xAAAAAAAAAAAAAAABLL * (v8 - v7));
    }

    v15 = *a4;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateShaderStorageBufferArrayRange(v15, v16 + 400, a2, 8u, &v27);
    if ((*(*v27 + 16))(v27) & 1) != 0 || (v25[0] = "hdSt/materialNetworkShader.cpp", v25[1] = "SetBufferSources", v25[2] = 271, v25[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetBufferSources(const HdBufferSpecVector &, HdBufferSourceSharedPtrVector &&, const HdStResourceRegistrySharedPtr &)", v26 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v25, "range->IsValid()", 0)))
    {
      v18 = v27;
      v17 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(a1 + 128);
      *(a1 + 120) = v18;
      *(a1 + 128) = v17;
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = *(a1 + 128);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    sub_29A014BEC(v19);
LABEL_20:
    *(a1 + 176) = 0;
    if (v28)
    {
      sub_29A014BEC(v28);
    }

    v10 = *v11;
    goto LABEL_23;
  }

  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  if (v20 != v21)
  {
    *(a1 + 176) = 0;
    do
    {
      v23 = *(v21 - 24);
      v21 -= 24;
      v22 = v23;
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v21 != v20);
  }

  *(a1 + 104) = v20;
  v24 = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (v24)
  {

    sub_29A014BEC(v24);
  }
}

void sub_29ADD5740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::GetMaterialTag@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 224);
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

void *pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::SetMaterialTag(uint64_t a1, void *a2)
{
  result = sub_29A166F2C((a1 + 224), a2);
  *(a1 + 176) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::AddResourcesFromTextures(pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*a2);
  v5 = *((*(*Hgi + 200))(Hgi) + 48);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = (*(*this + 64))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::ComputeBufferSources(v6, &v8, v5 & 0x100);
  if (v8 != v9)
  {
    v7 = (*(*this + 72))(this);
    pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::AddSources(a2, v7, &v8);
  }

  v11 = &v8;
  sub_29A0176E4(&v11);
}

void sub_29ADD58A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialNetworkShader::AddFallbackValueToSpecsAndSources(void *a1, uint64_t a2, void **a3)
{
  if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  if (!v7)
  {
    v7 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  }

  if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = ((*v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(EmptyString, v8, __p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29ADD6D6C(&v12, (a1 + 2), &v9);
  *__p = v9;
  (*(*v9.n128_u64[0] + 24))(v9.n128_u64[0], a2, v9);
  sub_29A017F80(a3, __p);
  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ADD59F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29ADD5A44()
{
  v37 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "ptexFaceOffset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "displayMetallic", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "displayRoughness", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "hullColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "hullOpacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "scalarOverride", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "scalarOverrideColorRamp", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "selectedWeight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "indicatorColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "indicatorWeight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "overrideColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "overrideWireframeColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "maskColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "maskWeight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "wireframeColor", 0);
  v1 = v0 + 15;
  v2 = *v0;
  v22 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v23 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[16] = 0;
  v0[17] = 0;
  sub_29A12EF7C(v1, &v22, &v37, 0xFuLL);
  for (i = 112; i != -8; i -= 8)
  {
    v18 = *(&v22 + i);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v19 = 0;
  atomic_compare_exchange_strong(&qword_2A174EB00, &v19, v0);
  if (v19)
  {
    v20 = sub_29A76D850(v0);
    operator delete(v20);
    return atomic_load(&qword_2A174EB00);
  }

  return v0;
}

void sub_29ADD5ED8(_Unwind_Exception *a1)
{
  v4 = 112;
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
      v6 = v1[14];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[13];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[12];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[11];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[10];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[9];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[8];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[7];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[6];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[5];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[4];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[3];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29ADD60F4(void ***a1)
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
        v4 -= 104;
        sub_29ADD617C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29ADD617C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  v5 = (a2 + 32);
  sub_29A124AB0(&v5);
  result = sub_29A186B14(a2 + 16);
  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ADD61E4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ADD6238(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29ADD6238(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
    v5 = *(i - 16);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    v7 = *(i - 40);
    v6 = v7;
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29ADD62A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29ADD6420(a1);
    if (a4 > 0x276276276276276)
    {
      sub_29A00C9A4();
    }

    v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v9;
    }

    sub_29AB89A2C(a1, v10);
    result = sub_29ADD648C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v12 >> 3) < a4)
  {
    sub_29ADD66D4(&v16, a2, a2 + v12, v8);
    result = sub_29ADD648C(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29ADD66D4(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 104;
      result = sub_29ADD617C(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29ADD6420(void **a1)
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
        v3 -= 104;
        sub_29ADD617C(a1, v3);
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

uint64_t sub_29ADD648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29ADD6530(a4, a2);
  }

  v7 = 1;
  sub_29ADD6648(v6);
  return a4;
}

void sub_29ADD6530(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 16), (a2 + 16));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29ADD6600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  sub_29A186B14(v2 + 16);
  v4 = *(v2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ADD6648(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ADD6680(a1);
  }

  return a1;
}

uint64_t *sub_29ADD6680(uint64_t *result)
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
      v3 -= 104;
      result = sub_29ADD617C(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29ADD66D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 40;
  do
  {
    v7 = v6 - 40;
    *a4 = *(v6 - 40);
    sub_29A166F2C((a4 + 8), (v6 - 32));
    sub_29A1854E8((a4 + 16), (v6 - 24));
    if (a4 != v6 - 40)
    {
      sub_29A34AC54((a4 + 32), *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 3);
    }

    *(a4 + 56) = *(v6 + 16);
    std::string::operator=((a4 + 64), (v6 + 24));
    *(a4 + 88) = *(v6 + 48);
    a4 += 104;
    v6 += 104;
  }

  while (v7 + 104 != v5);
  return v5;
}

void sub_29ADD6798(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29ADD68E4(a1);
    if (a4 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10E7C8(a1, v10);
    v11 = sub_29ADD6924(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v12 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) < a4)
  {
    sub_29ADD6AC0(&v14, a2, a2 + v12, v8);
    v11 = sub_29ADD6924(a1, (a2 + v12), a3, a1[1]);
LABEL_11:
    a1[1] = v11;
    return;
  }

  sub_29ADD6AC0(&v15, a2, a3, v8);
  sub_29ADD6238(a1, v13);
}

void sub_29ADD68E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_29ADD6238(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29ADD6924(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      sub_29ADD69B8(a1, v4, v6);
      v6 += 5;
      v4 = v12 + 40;
      v12 += 40;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ADD6A10(v9);
  return v4;
}

void sub_29ADD69B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = *(a3 + 2);
  v4 = a3[3];
  *(a2 + 16) = a3[2];
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = a3[4];
}

uint64_t sub_29ADD6A10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ADD6A5C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29ADD6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 16);
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v9 = *(v6 - 40);
      v6 -= 40;
      v8 = v9;
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_29ADD6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_29A166F2C(a4, v5);
      *(a4 + 8) = *(v5 + 8);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(a4 + 24);
      *(a4 + 16) = v8;
      *(a4 + 24) = v7;
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      *(a4 + 32) = *(v5 + 32);
      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_29ADD6B54(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a4)
  {
    sub_29AC1F70C(result);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(v7, v10);
    v11 = v7;
    v12 = v6;
    v13 = a3;
LABEL_22:

    return sub_29ADD6D14(v11, v12, v13);
  }

  v14 = result[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 3) < a4)
  {
    v15 = (a2 + v14 - v8);
    if (v14 != v8)
    {
      do
      {
        sub_29A166F2C(v8, v6);
        *(v8 + 1) = *(v6 + 1);
        v6 += 3;
        v8 += 3;
      }

      while (v6 != v15);
    }

    v11 = v7;
    v12 = v15;
    v13 = a3;
    goto LABEL_22;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A166F2C(v8, v6);
      *(v8 + 1) = *(v6 + 1);
      v6 += 3;
      v8 += 3;
    }

    while (v6 != a3);
    v14 = v7[1];
  }

  while (v14 != v8)
  {
    v17 = *(v14 - 3);
    v14 -= 24;
    v16 = v17;
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7[1] = v8;
  return result;
}

uint64_t sub_29ADD6D14(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  for (i = *(result + 8); a2 != a3; i += 24)
  {
    v4 = *a2;
    *i = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *i &= 0xFFFFFFFFFFFFFFF8;
    }

    *(i + 8) = *(a2 + 1);
    a2 += 3;
  }

  *(result + 8) = i;
  return result;
}

void *sub_29ADD6D6C@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29ADD6DD0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29ADD6DD0(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, 1, 1);
  return a1;
}

void sub_29ADD6E38(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174EB08);
  if (!v2)
  {
    v2 = sub_29ADD72E8();
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

void sub_29ADD6EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin::HdSt_MaterialBindingResolvingSceneIndexPlugin(void *this)
{
  *this = &unk_2A2093530;
  return this;
}

{
  *this = &unk_2A2093530;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin::~HdSt_MaterialBindingResolvingSceneIndexPlugin(pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin::_AppendSceneIndex(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v4 = *(v3 + 63);
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABF207C(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
  }

  v7 = *(v6 + 1);
  v12 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v8;
    }
  }

  memset(v10, 0, sizeof(v10));
  sub_29A12EF7C(v10, &v11, &v13, 2uLL);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens))
  {
    sub_29ABF207C(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdsiMaterialBindingResolvingSceneIndex::New(a2);
}

void sub_29ADD70EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADD715C()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1676;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29ADD7238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_MaterialBindingResolvingSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2093530;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29ADD72E8()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_MaterialBindingResolvingSceneIndexPlugin", 0);
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
  atomic_compare_exchange_strong(&qword_2A174EB08, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174EB08);
  }

  return v0;
}

void sub_29ADD7408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void sub_29ADD7488(pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(a1);
  sub_29A008E78(__p, "GL");
  v2 = atomic_load(&qword_2A174EB10);
  if (!v2)
  {
    v2 = sub_29ADD7788();
  }

  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, v2, &v3, 3, 0);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ADD7518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MaterialPrimvarTransferSceneIndexPlugin::HdSt_MaterialPrimvarTransferSceneIndexPlugin(void *this)
{
  *this = &unk_2A2093578;
  return this;
}

{
  *this = &unk_2A2093578;
  return this;
}

void sub_29ADD75D4(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29ADD75FC()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1677;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_MaterialPrimvarTransferSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29ADD76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_MaterialPrimvarTransferSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_MaterialPrimvarTransferSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A2093578;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29ADD7788()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "HdSt_MaterialPrimvarTransferSceneIndexPlugin", 0);
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
  atomic_compare_exchange_strong(&qword_2A174EB10, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174EB10);
  }

  return v0;
}

void sub_29ADD78A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

double pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 88) = 0;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 88) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  *a1 = a2;
  v5 = *a3;
  *(a1 + 8) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4((a1 + 16), a4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(a1, a2, a3, a4);
}

void sub_29ADD7A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  sub_29A186B14(v2 + 16);
  v4 = *(v2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::ComputeHash(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = 1;
    v4 = result;
    sub_29ADD7B54(&v4, v1, (v1 + 8), v1 + 32, (v1 + 56), v1 + 64, (v1 + 88), (v1 + 96));
    result = bswap64(0x9E3779B97F4A7C55 * v4);
    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_29ADD7B54(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, unsigned int *a2, void *a3, uint64_t a4, int *a5, uint64_t a6, unsigned __int8 *a7, void *a8)
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
  return sub_29ADD7B9C(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29ADD7B9C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, void *a2, uint64_t a3, int *a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29ADD7BE4(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29ADD7BE4(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t a2, int *a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *a1;
    v10 = *(a1 + 8);
    do
    {
      v11 = *v6++;
      v12 = v11 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v9 = v12 + ((v12 + v9 + (v12 + v9) * (v12 + v9)) >> 1);
      }

      else
      {
        *(a1 + 8) = 1;
        v9 = v12;
      }

      v10 = 1;
      --v8;
    }

    while (v8);
    *a1 = v9;
  }

  return sub_29ADD7C48(a1, a3, a4, a5, a6);
}

uint64_t sub_29ADD7C48(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, int *a2, uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v8 = *a2;
  if (*(this + 8))
  {
    v8 += (*this + v8 + (*this + v8) * (*this + v8)) >> 1;
  }

  else
  {
    *(this + 8) = 1;
  }

  *this = v8;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(this, v10, v11);

  return sub_29ADD7CE0(this, a4, a5);
}

uint64_t sub_29ADD7CE0(uint64_t result, unsigned __int8 *a2, void *a3)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_MeshShaderKey::HdSt_MeshShaderKey(uint64_t a1, int a2, void *a3, int a4, int a5, int a6, unsigned int a7, int a8, float a9, unsigned __int8 a10, unsigned __int8 a11, char a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, char a16, char a17, char a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, char a22)
{
  *a1 = &unk_2A20935C0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a6;
  *(a1 + 17) = a17;
  *(a1 + 18) = a10;
  *(a1 + 20) = 0;
  *(a1 + 24) = a9;
  *(a1 + 28) = a8;
  v27 = atomic_load(&qword_2A174EB18);
  if (!v27)
  {
    v27 = sub_29ADD9670();
  }

  v28 = *v27;
  *(a1 + 32) = *v27;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v217 = a3;
  *(a1 + 40) = 0u;
  v29 = a1 + 40;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  if (a7 == 5 || a7 == 2)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = a18 ^ 1;
  v30 = *(a1 + 8);
  v31 = (v30 & 0xFFFFFFFE) != 4 && v30 != 12;
  if (a22)
  {
    v33 = a7 == 1 || a7 == 4;
    v210 = v33;
  }

  else
  {
    v210 = 0;
  }

  v36 = (a5 == 1 || a5 == 4) && a4 == 0;
  v216 = v36;
  v37 = atomic_load(&qword_2A174EB18);
  if (!v37)
  {
    v37 = sub_29ADD9670();
  }

  sub_29A166F2C((a1 + 40), (v37 + 640));
  if (a4 == 1)
  {
    v38 = atomic_load(&qword_2A174EB18);
    if (!v38)
    {
      v38 = sub_29ADD9670();
    }

    v39 = (v38 + 24);
  }

  else if (a4 || a5 == 1 || a5 == 4)
  {
    v40 = atomic_load(&qword_2A174EB18);
    if (!v40)
    {
      v40 = sub_29ADD9670();
    }

    v39 = (v40 + 40);
  }

  else
  {
    v59 = atomic_load(&qword_2A174EB18);
    if (!v59)
    {
      v59 = sub_29ADD9670();
    }

    v39 = (v59 + 8);
  }

  sub_29A166F2C((a1 + 48), v39);
  v41 = atomic_load(&qword_2A174EB18);
  v214 = v30 & 0xFFFFFFFE;
  v215 = v31;
  if (v30)
  {
    if (!v41)
    {
      v41 = sub_29ADD9670();
    }

    v42 = (v41 + 360);
    v43 = 3;
    v44 = 56;
  }

  else
  {
    if (!v41)
    {
      v41 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 56), (v41 + 368));
    v45 = atomic_load(&qword_2A174EB18);
    if (!v45)
    {
      v45 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 64), (v45 + 280));
    v46 = atomic_load(&qword_2A174EB18);
    if (!v46)
    {
      v46 = sub_29ADD9670();
    }

    v42 = (v46 + 288);
    v43 = 5;
    v44 = 72;
  }

  sub_29A166F2C((a1 + v44), v42);
  v47 = atomic_load(&qword_2A174EB18);
  if (!v47)
  {
    v47 = sub_29ADD9670();
  }

  v218 = (v30 - 2) & 0xFFFFFFF6;
  sub_29A166F2C((v29 + 8 * v43), (v47 + 408));
  v48 = *(v29 + 8 * (v43 + 1));
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v29 + 8 * (v43 + 1)) = 0;
  if (v218)
  {
    v49 = a13;
  }

  else
  {
    v49 = 1;
  }

  v212 = a11;
  if ((v216 | v49))
  {
    v50 = 1;
  }

  else
  {
    v50 = a11 ^ 1;
    if (a4 == 4)
    {
      v50 = 1;
    }
  }

  v51 = (a1 + 192);
  if ((a12 & 1) == 0)
  {
    *(a1 + 19) = 0;
    goto LABEL_121;
  }

  if (v30)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 19) = v52;
  v53 = a11;
  if (v30)
  {
    v53 = 1;
  }

  v212 = v53;
  if (v52 == 1)
  {
    v54 = atomic_load(&qword_2A174EB18);
    if (!v54)
    {
      v54 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 192), (v54 + 640));
    v55 = atomic_load(&qword_2A174EB18);
    if (a4 == 4)
    {
      if (!v55)
      {
        v55 = sub_29ADD9670();
      }

      sub_29A166F2C((a1 + 200), (v55 + 56));
      goto LABEL_75;
    }

    if (!v55)
    {
      v55 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 200), (v55 + 64));
    if (a4 == 3)
    {
      v60 = atomic_load(&qword_2A174EB18);
      if (!v60)
      {
        v60 = sub_29ADD9670();
      }

      v58 = (v60 + 32);
    }

    else if (a4 == 1)
    {
      v61 = atomic_load(&qword_2A174EB18);
      if (!v61)
      {
        v61 = sub_29ADD9670();
      }

      v58 = (v61 + 24);
    }

    else
    {
      if (a4)
      {
LABEL_98:
        v62 = atomic_load(&qword_2A174EB18);
        if (!v62)
        {
          v62 = sub_29ADD9670();
        }

        v58 = (v62 + 40);
        goto LABEL_101;
      }

      if (a5 == 1 || a5 == 4)
      {
LABEL_75:
        v56 = !v216;
        if (v218)
        {
          v56 = 1;
        }

        if ((v56 & 1) == 0)
        {
          v57 = atomic_load(&qword_2A174EB18);
          if (!v57)
          {
            v57 = sub_29ADD9670();
          }

          v58 = (v57 + 16);
          goto LABEL_101;
        }

        goto LABEL_98;
      }

      v163 = atomic_load(&qword_2A174EB18);
      if (!v163)
      {
        v163 = sub_29ADD9670();
      }

      v58 = (v163 + 8);
    }

LABEL_101:
    sub_29A166F2C((a1 + 208), v58);
    v63 = atomic_load(&qword_2A174EB18);
    if (!v63)
    {
      v63 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 216), (v63 + 360));
    v64 = atomic_load(&qword_2A174EB18);
    if (a13)
    {
      if (!v64)
      {
        v64 = sub_29ADD9670();
      }

      v65 = (v64 + 648);
    }

    else
    {
      if (!v64)
      {
        v64 = sub_29ADD9670();
      }

      v65 = (v64 + 656);
    }

    v209 = (a1 + 160);
    sub_29A166F2C((a1 + 224), v65);
    if (v30 <= 0xC && ((1 << v30) & 0x1030) != 0)
    {
      v66 = atomic_load(&qword_2A174EB18);
      if (!v66)
      {
        v66 = sub_29ADD9670();
      }

      v67 = 0;
      v68 = (v66 + 464);
    }

    else if (v214 == 6)
    {
      v156 = atomic_load(&qword_2A174EB18);
      if (!v156)
      {
        v156 = sub_29ADD9670();
      }

      v67 = 0;
      v68 = (v156 + 472);
    }

    else if (v214 == 8)
    {
      v159 = atomic_load(&qword_2A174EB18);
      if (!v159)
      {
        v159 = sub_29ADD9670();
      }

      v67 = 0;
      v68 = (v159 + 480);
    }

    else
    {
      if (v30 == 10)
      {
        v149 = atomic_load(&qword_2A174EB18);
        if (!v149)
        {
          v149 = sub_29ADD9670();
        }

        sub_29A166F2C(v209, (v149 + 640));
        v150 = atomic_load(&qword_2A174EB18);
        if (!v150)
        {
          v150 = sub_29ADD9670();
        }

        sub_29A166F2C((a1 + 168), (v150 + 488));
        v151 = atomic_load(&qword_2A174EB18);
        if (!v151)
        {
          v151 = sub_29ADD9670();
        }

        sub_29A166F2C((a1 + 176), (v151 + 496));
        v152 = atomic_load(&qword_2A174EB18);
        if (!v152)
        {
          v152 = sub_29ADD9670();
        }

        v68 = (v152 + 504);
      }

      else
      {
        if (v30 != 11)
        {
          v67 = 0;
          v69 = 5;
          goto LABEL_116;
        }

        v164 = atomic_load(&qword_2A174EB18);
        if (!v164)
        {
          v164 = sub_29ADD9670();
        }

        sub_29A166F2C(v209, (v164 + 640));
        v165 = atomic_load(&qword_2A174EB18);
        if (!v165)
        {
          v165 = sub_29ADD9670();
        }

        sub_29A166F2C((a1 + 168), (v165 + 488));
        v166 = atomic_load(&qword_2A174EB18);
        if (!v166)
        {
          v166 = sub_29ADD9670();
        }

        sub_29A166F2C((a1 + 176), (v166 + 512));
        v167 = atomic_load(&qword_2A174EB18);
        if (!v167)
        {
          v167 = sub_29ADD9670();
        }

        v68 = (v167 + 520);
      }

      v67 = 3;
    }

    sub_29A166F2C((a1 + 232), v68);
    v69 = 6;
LABEL_116:
    v70 = v51[v69];
    if ((v70 & 7) != 0)
    {
      atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v51[v69] = 0;
    v71 = v209[v67];
    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v209[v67] = 0;
  }

LABEL_121:
  v72 = (a1 + 128);
  v73 = *v51;
  if (v218 || v73)
  {
    v78 = *(a1 + 96);
    if ((v78 & 7) != 0)
    {
      atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 96) = 0;
    v79 = *v72;
  }

  else
  {
    v74 = atomic_load(&qword_2A174EB18);
    if (!v74)
    {
      v74 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 96), (v74 + 640));
    v75 = atomic_load(&qword_2A174EB18);
    if (!v75)
    {
      v75 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 104), (v75 + 416));
    v76 = atomic_load(&qword_2A174EB18);
    if (v30 == 10)
    {
      if (!v76)
      {
        v76 = sub_29ADD9670();
      }

      v77 = (v76 + 424);
    }

    else
    {
      if (!v76)
      {
        v76 = sub_29ADD9670();
      }

      v77 = (v76 + 440);
    }

    sub_29A166F2C((a1 + 112), v77);
    v80 = *(a1 + 120);
    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 120) = 0;
    v81 = atomic_load(&qword_2A174EB18);
    if (!v81)
    {
      v81 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 128), (v81 + 640));
    v82 = atomic_load(&qword_2A174EB18);
    if (v30 == 10)
    {
      if (!v82)
      {
        v82 = sub_29ADD9670();
      }

      v83 = (v82 + 432);
    }

    else
    {
      if (!v82)
      {
        v82 = sub_29ADD9670();
      }

      v83 = (v82 + 448);
    }

    sub_29A166F2C((a1 + 136), v83);
    v84 = atomic_load(&qword_2A174EB18);
    if (!v84)
    {
      v84 = sub_29ADD9670();
    }

    sub_29A166F2C((a1 + 144), (v84 + 456));
    v72 = (a1 + 152);
    v79 = *(a1 + 152);
  }

  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v72 = 0;
  v85 = atomic_load(&qword_2A174EB18);
  if (!v85)
  {
    v85 = sub_29ADD9670();
  }

  sub_29A166F2C((a1 + 288), (v85 + 640));
  v86 = atomic_load(&qword_2A174EB18);
  if (a4 == 3)
  {
    if (!v86)
    {
      v86 = sub_29ADD9670();
    }

    v87 = (v86 + 32);
LABEL_173:
    sub_29A166F2C((a1 + 296), v87);
LABEL_174:
    v90 = atomic_load(&qword_2A174EB18);
    if (!v90)
    {
      v90 = sub_29ADD9670();
    }

    v89 = (v90 + 64);
    goto LABEL_177;
  }

  if (v216)
  {
    if (v218)
    {
      if (!v86)
      {
        v86 = sub_29ADD9670();
      }

      v87 = (v86 + 8);
    }

    else
    {
      if (!v86)
      {
        v86 = sub_29ADD9670();
      }

      v87 = (v86 + 16);
    }

    goto LABEL_173;
  }

  if (!v86)
  {
    v86 = sub_29ADD9670();
  }

  sub_29A166F2C((a1 + 296), (v86 + 40));
  if (a4 != 4)
  {
    goto LABEL_174;
  }

  v88 = atomic_load(&qword_2A174EB18);
  if (!v88)
  {
    v88 = sub_29ADD9670();
  }

  v89 = (v88 + 56);
LABEL_177:
  sub_29A166F2C((a1 + 304), v89);
  v91 = atomic_load(&qword_2A174EB18);
  if (a13)
  {
    if (!v91)
    {
      v91 = sub_29ADD9670();
    }

    v92 = (v91 + 648);
  }

  else
  {
    if (!v91)
    {
      v91 = sub_29ADD9670();
    }

    v92 = (v91 + 656);
  }

  sub_29A166F2C((a1 + 312), v92);
  v93 = atomic_load(&qword_2A174EB18);
  if (v214 == 6)
  {
    if (!v93)
    {
      v93 = sub_29ADD9670();
    }

    v94 = (v93 + 552);
  }

  else if (v214 == 8)
  {
    if (!v93)
    {
      v93 = sub_29ADD9670();
    }

    v94 = (v93 + 544);
  }

  else if (v218)
  {
    if (!v93)
    {
      v93 = sub_29ADD9670();
    }

    v94 = (v93 + 536);
  }

  else
  {
    if (!v93)
    {
      v93 = sub_29ADD9670();
    }

    v94 = (v93 + 528);
  }

  sub_29A166F2C((a1 + 320), v94);
  v95 = *(a1 + 328);
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a1 + 328) = 0;
  if (v73)
  {
    goto LABEL_202;
  }

  v97 = 0;
  if ((a13 & 1) != 0 || a4 == 2)
  {
LABEL_214:
    v98 = a10;
    goto LABEL_215;
  }

  v98 = a10;
  if (a4 != 4)
  {
    v97 = 0;
    if (v30 <= 0xC && ((1 << v30) & 0x1330) != 0)
    {
      if (a7 <= 6 && ((1 << a7) & 0x6C) != 0)
      {
        if (!v212)
        {
LABEL_213:
          v213 = 0;
          v98 = a10;
          goto LABEL_219;
        }
      }

      else if (((v212 | (v210 | a14) ^ 1) & 1) == 0)
      {
        goto LABEL_213;
      }

LABEL_202:
      v96 = *(a1 + 288);
      if ((v96 & 7) != 0)
      {
        atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a1 + 288) = 0;
      v97 = 1;
      goto LABEL_214;
    }
  }

LABEL_215:
  v213 = v97;
  if (!v30)
  {
    v99 = *(a1 + 288);
    if ((v99 & 7) != 0)
    {
      atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 288) = 0;
  }

LABEL_219:
  v100 = *(a1 + 288);
  v101 = atomic_load(&qword_2A174EB18);
  if (!v101)
  {
    v101 = sub_29ADD9670();
  }

  v102 = a1 + 368;
  sub_29A166F2C((a1 + 368), (v101 + 640));
  if (a4 == 5)
  {
    v103 = atomic_load(&qword_2A174EB18);
    if (!v103)
    {
      v103 = sub_29ADD9670();
    }

    v104 = (v103 + 48);
  }

  else if (a4 != 3 || v100)
  {
    v106 = !v216;
    v107 = atomic_load(&qword_2A174EB18);
    if (v100)
    {
      v106 = 1;
    }

    if (v106)
    {
      if (!v107)
      {
        v107 = sub_29ADD9670();
      }

      v104 = (v107 + 40);
    }

    else
    {
      if (!v107)
      {
        v107 = sub_29ADD9670();
      }

      v104 = (v107 + 8);
    }
  }

  else
  {
    v105 = atomic_load(&qword_2A174EB18);
    if (!v105)
    {
      v105 = sub_29ADD9670();
    }

    v104 = (v105 + 32);
  }

  sub_29A166F2C((a1 + 376), v104);
  v108 = atomic_load(&qword_2A174EB18);
  if (v98)
  {
    if (!v108)
    {
      v108 = sub_29ADD9670();
    }

    v109 = (v108 + 72);
  }

  else
  {
    if (!v108)
    {
      v108 = sub_29ADD9670();
    }

    v109 = (v108 + 80);
  }

  sub_29A166F2C((a1 + 384), v109);
  if (*(a1 + 16))
  {
    goto LABEL_247;
  }

  if (a6 != 2)
  {
    if (a6 == 3 || a6 == 5 && (v98 & 1) == 0)
    {
      v112 = atomic_load(&qword_2A174EB18);
      if (!v112)
      {
        v112 = sub_29ADD9670();
      }

      v111 = (v112 + 96);
      goto LABEL_262;
    }

    if (a6 != 4 || (v98 & 1) != 0)
    {
LABEL_247:
      v110 = atomic_load(&qword_2A174EB18);
      if (!v110)
      {
        v110 = sub_29ADD9670();
      }

      v111 = (v110 + 88);
      goto LABEL_262;
    }
  }

  v113 = atomic_load(&qword_2A174EB18);
  if (!v113)
  {
    v113 = sub_29ADD9670();
  }

  v111 = (v113 + 104);
LABEL_262:
  sub_29A166F2C((a1 + 392), v111);
  if (a7 <= 6 && ((1 << a7) & 0x6C) != 0)
  {
    v114 = v31;
    if (!v73)
    {
      v114 = 1;
    }

    if (v114)
    {
      v115 = v214 == 8 || v214 == 6;
      v116 = atomic_load(&qword_2A174EB18);
      if (v115 && v73)
      {
        if (!v116)
        {
          v116 = sub_29ADD9670();
        }

        v117 = (v116 + 224);
      }

      else
      {
        if (!v116)
        {
          v116 = sub_29ADD9670();
        }

        v117 = (v116 + 216);
      }
    }

    else
    {
      v118 = atomic_load(&qword_2A174EB18);
      if (!v118)
      {
        v118 = sub_29ADD9670();
      }

      v117 = (v118 + 232);
    }

    v119 = (v30 < 0xC) & (0xEA0u >> v30);
    sub_29A166F2C((a1 + 400), v117);
    if (v119)
    {
      v120 = atomic_load(&qword_2A174EB18);
      if (v30 - 6 > 3)
      {
        if (!v120)
        {
          v120 = sub_29ADD9670();
        }

        v121 = (v120 + 168);
      }

      else
      {
        if (!v120)
        {
          v120 = sub_29ADD9670();
        }

        v121 = (v120 + 152);
      }
    }

    else if (v30 <= 0xC && ((1 << v30) & 0x1030) != 0)
    {
      v122 = atomic_load(&qword_2A174EB18);
      if (!v122)
      {
        v122 = sub_29ADD9670();
      }

      v121 = (v122 + 136);
    }

    else
    {
      v130 = atomic_load(&qword_2A174EB18);
      if (v214 != 8)
      {
        if (!v130)
        {
          v130 = sub_29ADD9670();
        }

        sub_29A166F2C((a1 + 408), (v130 + 144));
        goto LABEL_309;
      }

      if (!v130)
      {
        v130 = sub_29ADD9670();
      }

      v121 = (v130 + 160);
    }

    sub_29A166F2C((a1 + 408), v121);
    if (v214 == 8 && v73)
    {
      v123 = atomic_load(&qword_2A174EB18);
      if (!v123)
      {
        v123 = sub_29ADD9670();
      }

      v124 = (v123 + 184);
LABEL_312:
      sub_29A166F2C((a1 + 416), v124);
      v132 = atomic_load(&qword_2A174EB18);
      if (!v132)
      {
        v132 = sub_29ADD9670();
      }

      v133 = a21;
      sub_29A166F2C((a1 + 424), (v132 + 192));
      v134 = atomic_load(&qword_2A174EB18);
      if (v133)
      {
        if (!v134)
        {
          v134 = sub_29ADD9670();
        }

        v135 = (v134 + 128);
      }

      else
      {
        if (!v134)
        {
          v134 = sub_29ADD9670();
        }

        v135 = (v134 + 120);
      }

      sub_29A166F2C((a1 + 432), v135);
      if (a7 == 5 || a7 == 2)
      {
        v136 = atomic_load(&qword_2A174EB18);
        if (v218)
        {
          if (a16)
          {
            if (!v136)
            {
              v136 = sub_29ADD9670();
            }

            v127 = (v136 + 200);
          }

          else
          {
            if (!v136)
            {
              v136 = sub_29ADD9670();
            }

            v127 = (v136 + 208);
          }
        }

        else
        {
          if (!v136)
          {
            v136 = sub_29ADD9670();
          }

          v127 = (v136 + 264);
        }

        v128 = 10;
        v129 = 440;
      }

      else
      {
        if (v30 <= 0xC && ((1 << v30) & 0x1830) != 0)
        {
          v137 = atomic_load(&qword_2A174EB18);
          if (!v137)
          {
            v137 = sub_29ADD9670();
          }

          v138 = (v137 + 248);
        }

        else
        {
          v155 = atomic_load(&qword_2A174EB18);
          if (!v155)
          {
            v155 = sub_29ADD9670();
          }

          v138 = (v155 + 256);
        }

        sub_29A166F2C((a1 + 440), v138);
        v139 = atomic_load(&qword_2A174EB18);
        if (v119)
        {
          if (!v139)
          {
            v139 = sub_29ADD9670();
          }

          v127 = (v139 + 272);
        }

        else
        {
          if (!v139)
          {
            v139 = sub_29ADD9670();
          }

          v127 = (v139 + 240);
        }

        v128 = 11;
        v129 = 448;
      }

      goto LABEL_348;
    }

LABEL_309:
    v131 = atomic_load(&qword_2A174EB18);
    if (!v131)
    {
      v131 = sub_29ADD9670();
    }

    v124 = (v131 + 176);
    goto LABEL_312;
  }

  v125 = atomic_load(&qword_2A174EB18);
  if (!v125)
  {
    v125 = sub_29ADD9670();
  }

  sub_29A166F2C((a1 + 400), (v125 + 112));
  v126 = atomic_load(&qword_2A174EB18);
  if (!v126)
  {
    v126 = sub_29ADD9670();
  }

  v127 = (v126 + 192);
  v128 = 6;
  v129 = 408;
LABEL_348:
  sub_29A166F2C((a1 + v129), v127);
  v219 = 0;
  v140 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v140)
  {
    v140 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  if ((*v140 ^ *v217) <= 7)
  {
    v141 = atomic_load(&qword_2A174EB18);
    if (v141)
    {
LABEL_353:
      v142 = (v141 + 672);
      goto LABEL_440;
    }

LABEL_352:
    v141 = sub_29ADD9670();
    goto LABEL_353;
  }

  v143 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v143)
  {
    v143 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  if ((*(v143 + 1) ^ *v217) > 7)
  {
    v145 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
    if (!v145)
    {
      v145 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
    }

    if ((*(v145 + 2) ^ *v217) > 7)
    {
      v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
      if (!v147)
      {
        v147 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
      }

      if ((*(v147 + 3) ^ *v217) > 7)
      {
        v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
        if (!v153)
        {
          v153 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
        }

        if ((*(v153 + 4) ^ *v217) > 7)
        {
          v157 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
          if (!v157)
          {
            v157 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
          }

          if ((*(v157 + 5) ^ *v217) > 7)
          {
            v160 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
            if (!v160)
            {
              v160 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
            }

            v142 = v217;
            if ((*(v160 + 6) ^ *v217) > 7)
            {
              if (!*v217)
              {
                v141 = atomic_load(&qword_2A174EB18);
                if (v141)
                {
                  goto LABEL_353;
                }

                goto LABEL_352;
              }
            }

            else
            {
              v161 = a20;
              v162 = atomic_load(&qword_2A174EB18);
              if (v161)
              {
                if (!v162)
                {
                  v162 = sub_29ADD9670();
                }

                v142 = (v162 + 728);
              }

              else
              {
                if (!v162)
                {
                  v162 = sub_29ADD9670();
                }

                v142 = (v162 + 720);
              }
            }
          }

          else
          {
            v158 = atomic_load(&qword_2A174EB18);
            if (!v158)
            {
              v158 = sub_29ADD9670();
            }

            v142 = (v158 + 712);
          }
        }

        else
        {
          v154 = atomic_load(&qword_2A174EB18);
          if (!v154)
          {
            v154 = sub_29ADD9670();
          }

          v142 = (v154 + 704);
        }
      }

      else
      {
        v148 = atomic_load(&qword_2A174EB18);
        if (!v148)
        {
          v148 = sub_29ADD9670();
        }

        v142 = (v148 + 696);
      }
    }

    else
    {
      v146 = atomic_load(&qword_2A174EB18);
      if (!v146)
      {
        v146 = sub_29ADD9670();
      }

      v142 = (v146 + 688);
    }
  }

  else
  {
    v144 = atomic_load(&qword_2A174EB18);
    if (!v144)
    {
      v144 = sub_29ADD9670();
    }

    v142 = (v144 + 680);
  }

LABEL_440:
  sub_29A166F2C(&v219, v142);
  v168 = atomic_load(&qword_2A174EB18);
  if (!v168)
  {
    v168 = sub_29ADD9670();
  }

  v169 = a19;
  sub_29A166F2C((v102 + 8 * v128), (v168 + 664));
  sub_29A166F2C((v102 + 8 * (v128 + 1)), &v219);
  v170 = atomic_load(&qword_2A174EB18);
  if (v169)
  {
    if (!v170)
    {
      v170 = sub_29ADD9670();
    }

    v171 = (v170 + 736);
  }

  else
  {
    if (!v170)
    {
      v170 = sub_29ADD9670();
    }

    v171 = (v170 + 744);
  }

  v172 = v128 + 3;
  sub_29A166F2C((v102 + 8 * (v128 + 2)), v171);
  if (a7 <= 6 && ((1 << a7) & 0x6C) != 0 || v210)
  {
    v173 = atomic_load(&qword_2A174EB18);
    if (!v173)
    {
      v173 = sub_29ADD9670();
    }

    v174 = v128 + 4;
    sub_29A166F2C((v102 + 8 * v172), (v173 + 304));
    if (v30 <= 0xC && ((1 << v30) & 0x1830) != 0)
    {
      v175 = *(a1 + 20);
      v176 = atomic_load(&qword_2A174EB18);
      if (v175 == 1)
      {
        if (!v176)
        {
          v176 = sub_29ADD9670();
        }

        v177 = (v176 + 320);
      }

      else
      {
        if (!v176)
        {
          v176 = sub_29ADD9670();
        }

        v177 = (v176 + 312);
      }

      sub_29A166F2C((v102 + 8 * v174), v177);
      v178 = atomic_load(&qword_2A174EB18);
      if (!v178)
      {
        v178 = sub_29ADD9670();
      }

      v172 = v128 + 5;
      v179 = (v178 + 328);
      v180 = 6;
      goto LABEL_465;
    }

    v197 = *(a1 + 20);
    v198 = atomic_load(&qword_2A174EB18);
    if (v197 == 1)
    {
      if (!v198)
      {
        v198 = sub_29ADD9670();
      }

      v199 = (v198 + 344);
    }

    else
    {
      if (!v198)
      {
        v198 = sub_29ADD9670();
      }

      v199 = (v198 + 336);
    }

    sub_29A166F2C((v102 + 8 * v174), v199);
    v201 = atomic_load(&qword_2A174EB18);
    if (!v201)
    {
      v201 = sub_29ADD9670();
    }

    v172 = v128 + 6;
    sub_29A166F2C((v102 + 8 * (v128 + 5)), (v201 + 352));
    if (v30)
    {
      goto LABEL_466;
    }
  }

  else if (v30)
  {
    v196 = atomic_load(&qword_2A174EB18);
    if (!v196)
    {
      v196 = sub_29ADD9670();
    }

    v179 = (v196 + 296);
    v180 = 4;
LABEL_465:
    v181 = v128 + v180;
    sub_29A166F2C((v102 + 8 * v172), v179);
    v172 = v181;
LABEL_466:
    v182 = atomic_load(&qword_2A174EB18);
    if (!v182)
    {
      v182 = sub_29ADD9670();
    }

    v183 = (v182 + 376);
    goto LABEL_469;
  }

  v202 = atomic_load(&qword_2A174EB18);
  if (!v202)
  {
    v202 = sub_29ADD9670();
  }

  v183 = (v202 + 384);
LABEL_469:
  v184 = a15;
  sub_29A166F2C((v102 + 8 * v172), v183);
  v185 = atomic_load(&qword_2A174EB18);
  if (v184)
  {
    if (!v185)
    {
      v185 = sub_29ADD9670();
    }

    v186 = (v185 + 400);
  }

  else
  {
    if (!v185)
    {
      v185 = sub_29ADD9670();
    }

    v186 = (v185 + 392);
  }

  sub_29A166F2C((v102 + 8 * (v172 + 1)), v186);
  v187 = v215;
  if (v73)
  {
    v188 = v215;
  }

  else
  {
    v188 = 1;
  }

  if (v188)
  {
    if (v100)
    {
      v187 = 1;
    }

    if (v187)
    {
      if (v214 == 6 && v73)
      {
        v189 = atomic_load(&qword_2A174EB18);
        if (!v189)
        {
          v189 = sub_29ADD9670();
        }

        v190 = (v189 + 616);
      }

      else if (v214 != 6 || v100 != 0)
      {
        if (v214 == 8 && v73)
        {
          v200 = atomic_load(&qword_2A174EB18);
          if (!v200)
          {
            v200 = sub_29ADD9670();
          }

          v190 = (v200 + 624);
        }

        else if (v214 == 8)
        {
          v207 = atomic_load(&qword_2A174EB18);
          if (!v207)
          {
            v207 = sub_29ADD9670();
          }

          v190 = (v207 + 600);
        }

        else
        {
          v204 = v218 != 0;
          if (!v73)
          {
            v204 = 1;
          }

          if (v204)
          {
            v205 = v213 ^ 1;
            v206 = atomic_load(&qword_2A174EB18);
            if (!v30)
            {
              v205 = 0;
            }

            if (v205)
            {
              if (!v206)
              {
                v206 = sub_29ADD9670();
              }

              v190 = (v206 + 560);
            }

            else
            {
              if (!v206)
              {
                v206 = sub_29ADD9670();
              }

              v190 = (v206 + 568);
            }
          }

          else
          {
            v208 = atomic_load(&qword_2A174EB18);
            if (!v208)
            {
              v208 = sub_29ADD9670();
            }

            v190 = (v208 + 576);
          }
        }
      }

      else
      {
        v203 = atomic_load(&qword_2A174EB18);
        if (!v203)
        {
          v203 = sub_29ADD9670();
        }

        v190 = (v203 + 592);
      }
    }

    else
    {
      v192 = atomic_load(&qword_2A174EB18);
      if (!v192)
      {
        v192 = sub_29ADD9670();
      }

      v190 = (v192 + 584);
    }
  }

  else
  {
    v191 = atomic_load(&qword_2A174EB18);
    if (!v191)
    {
      v191 = sub_29ADD9670();
    }

    v190 = (v191 + 608);
  }

  sub_29A166F2C((v102 + 8 * (v172 + 2)), v190);
  v193 = atomic_load(&qword_2A174EB18);
  if (!v193)
  {
    v193 = sub_29ADD9670();
  }

  sub_29A166F2C((v102 + 8 * (v172 + 3)), (v193 + 632));
  v194 = *(v102 + 8 * (v172 + 4));
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v102 + 8 * (v172 + 4)) = 0;
  if ((v219 & 7) != 0)
  {
    atomic_fetch_add_explicit((v219 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{

  return pxrInternal__aapl__pxrReserved__::HdSt_MeshShaderKey::HdSt_MeshShaderKey(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_29ADD93DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x29ADD9284);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshShaderKey::~HdSt_MeshShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_MeshShaderKey *this)
{
  *this = &unk_2A20935C0;
  for (i = 536; i != 360; i -= 8)
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

  while (i != 280);
  do
  {
    v4 = *(this + i);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 184);
  do
  {
    v5 = *(this + i);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 152);
  do
  {
    v6 = *(this + i);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 120);
  do
  {
    v7 = *(this + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 88);
  do
  {
    v8 = *(this + i);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 32);
  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_MeshShaderKey::~HdSt_MeshShaderKey(this);

  operator delete(v1);
}

unint64_t sub_29ADD9670()
{
  v195 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x308uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "mesh.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "MeshNormal.Scene", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "MeshNormal.Scene.Patches", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "MeshNormal.Smooth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "MeshNormal.Flat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "MeshNormal.Pass", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "MeshNormal.Fragment.ScreenSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "MeshNormal.Geometry.Flat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "MeshNormal.Geometry.NoFlat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "MeshNormal.Fragment.DoubleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "MeshNormal.Fragment.SingleSided", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "MeshFaceCull.Fragment.None", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "MeshFaceCull.Fragment.FrontFacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "MeshFaceCull.Fragment.BackFacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "MeshWire.Fragment.NoEdge", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "MeshWire.Fragment.FinalEdgeOpacityNoForce", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "MeshWire.Fragment.FinalEdgeOpacityForce", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "MeshWire.Fragment.EdgeMaskTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "MeshWire.Fragment.EdgeMaskQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "MeshWire.Fragment.EdgeMaskRefinedQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "MeshWire.Fragment.EdgeMaskTriQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "MeshWire.Fragment.EdgeMaskNone", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "MeshWire.Fragment.EdgeCommon", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "MeshWire.Fragment.EdgeTriQuadPTVS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "MeshWire.Fragment.EdgeParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 25, "MeshWire.Fragment.EdgeOnlyBlendColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 26, "MeshWire.Fragment.EdgeOnlyNoBlend", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 27, "MeshWire.Fragment.EdgeCoord.Barycentric", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 28, "MeshWire.Fragment.EdgeCoord.Tess", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 29, "MeshWire.Fragment.EdgeCoord.TessTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 30, "MeshWire.Fragment.EdgeOnSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 31, "MeshPatchWire.Fragment.PatchEdgeTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 32, "MeshPatchWire.Fragment.PatchEdgeQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 33, "MeshPatchWire.Fragment.EdgeOnly", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 34, "MeshPatchWire.Fragment.EdgeOnSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 35, "Selection.DecodeUtils", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 36, "Selection.Vertex.PointSel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 37, "EdgeId.Fragment.None", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 38, "EdgeId.Fragment.Common", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 39, "EdgeId.Fragment.TriangleSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 40, "EdgeId.Fragment.TriangleLines", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 41, "EdgeId.Fragment.TriangleParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 42, "EdgeId.Fragment.QuadSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 43, "EdgeId.Fragment.QuadLines", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 44, "EdgeId.Fragment.QuadParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 45, "PointId.Vertex.None", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 46, "PointId.Vertex.PointParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 47, "PointId.Fragment.Fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 48, "PointId.Fragment.PointParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 49, "Visibility.Fragment.Fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 50, "Visibility.Fragment.Topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 51, "Mesh.Vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 52, "Mesh.TessControl.PatchCommon", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 53, "Mesh.TessControl.BSplineQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 54, "Mesh.TessEval.BezierQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 55, "Mesh.TessControl.BoxSplineTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 56, "Mesh.TessEval.BezierTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 57, "Mesh.TessEval.VaryingInterpolation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 58, "Mesh.PostTessVertex.Triangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 59, "Mesh.PostTessVertex.Quad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 60, "Mesh.PostTessVertex.TriQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 61, "Mesh.PostTessControl.PatchCommon", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 62, "Mesh.PostTessControl.BSplineQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 63, "Mesh.PostTessVertex.BSplineQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 64, "Mesh.PostTessControl.BoxSplineTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 65, "Mesh.PostTessVertex.BoxSplineTriangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 66, "Mesh.Geometry.TriangleTess", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 67, "Mesh.Geometry.Triangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 68, "Mesh.Geometry.TriQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 69, "Mesh.Geometry.Quad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 70, "Mesh.Fragment.PatchCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 71, "Mesh.Fragment.PatchCoord.NoGS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 72, "Mesh.Fragment.PatchCoord.Tess", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 73, "Mesh.Fragment.PatchCoord.Triangle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 74, "Mesh.Fragment.PatchCoord.Quad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 75, "Mesh.Fragment.PatchCoord.TriQuad", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 76, "Mesh.Fragment.PatchCoord.TrianglePTVS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 77, "Mesh.Fragment.PatchCoord.QuadPTVS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 78, "Mesh.Fragment.PatchCoord.TriQuadPTVS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 79, "Mesh.Fragment", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 80, "Instancing.Transform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 81, "Geometry.CustomDisplacement", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 82, "Geometry.NoCustomDisplacement", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 83, "Fragment.CommonTerminals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 84, "Fragment.Surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 85, "Fragment.SurfaceUnlit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 86, "Fragment.SurfaceSheer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 87, "Fragment.SurfaceOutline", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 88, "Fragment.ConstantColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 89, "Fragment.HullColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 90, "Fragment.PointColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 91, "Fragment.PointShaded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 92, "Fragment.ScalarOverride", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 93, "Fragment.NoScalarOverride", 0);
  v1 = *v0;
  v101 = v1;
  if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v2 = v0[1];
  v102 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[2];
  v103 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[3];
  v104 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[4];
  v105 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[5];
  v106 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[6];
  v107 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[7];
  v108 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[8];
  v109 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[9];
  v110 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[10];
  v111 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[11];
  v112 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[12];
  v113 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[13];
  v114 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[14];
  v115 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[15];
  v116 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[16];
  v117 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[17];
  v118 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v118 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[18];
  v119 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v119 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[19];
  v120 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v120 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[20];
  v121 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v121 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[21];
  v122 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[22];
  v123 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v123 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[23];
  v124 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v124 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[24];
  v125 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v125 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[25];
  v126 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v126 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = v0[26];
  v127 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v127 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v0[27];
  v128 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v128 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = v0[28];
  v129 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v129 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = v0[29];
  v130 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v130 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = v0[30];
  v131 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v131 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = v0[31];
  v132 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v132 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = v0[32];
  v133 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v133 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = v0[33];
  v134 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = v0[34];
  v135 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v135 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = v0[35];
  v136 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v136 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = v0[36];
  v137 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v137 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = v0[37];
  v138 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v138 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = v0[38];
  v139 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v139 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = v0[39];
  v140 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v140 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = v0[40];
  v141 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v141 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = v0[41];
  v142 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v142 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = v0[42];
  v143 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v143 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = v0[43];
  v144 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v144 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = v0[44];
  v145 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v145 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = v0[45];
  v146 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v146 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = v0[46];
  v147 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v147 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = v0[47];
  v148 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v148 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = v0[48];
  v149 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v149 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = v0[49];
  v150 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v150 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = v0[50];
  v151 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v151 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = v0[51];
  v152 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v152 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = v0[52];
  v153 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v153 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = v0[53];
  v154 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v154 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = v0[54];
  v155 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v155 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = v0[55];
  v156 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v156 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = v0[56];
  v157 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v157 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = v0[57];
  v158 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v158 &= 0xFFFFFFFFFFFFFFF8;
  }

  v59 = v0[58];
  v159 = v59;
  if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v159 &= 0xFFFFFFFFFFFFFFF8;
  }

  v60 = v0[59];
  v160 = v60;
  if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v160 &= 0xFFFFFFFFFFFFFFF8;
  }

  v61 = v0[60];
  v161 = v61;
  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v161 &= 0xFFFFFFFFFFFFFFF8;
  }

  v62 = v0[61];
  v162 = v62;
  if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v162 &= 0xFFFFFFFFFFFFFFF8;
  }

  v63 = v0[62];
  v163 = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v163 &= 0xFFFFFFFFFFFFFFF8;
  }

  v64 = v0[63];
  v164 = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v164 &= 0xFFFFFFFFFFFFFFF8;
  }

  v65 = v0[64];
  v165 = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v165 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = v0[65];
  v166 = v66;
  if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v166 &= 0xFFFFFFFFFFFFFFF8;
  }

  v67 = v0[66];
  v167 = v67;
  if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v167 &= 0xFFFFFFFFFFFFFFF8;
  }

  v68 = v0[67];
  v168 = v68;
  if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v168 &= 0xFFFFFFFFFFFFFFF8;
  }

  v69 = v0[68];
  v169 = v69;
  if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v169 &= 0xFFFFFFFFFFFFFFF8;
  }

  v70 = v0[69];
  v170 = v70;
  if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v170 &= 0xFFFFFFFFFFFFFFF8;
  }

  v71 = v0[70];
  v171 = v71;
  if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v171 &= 0xFFFFFFFFFFFFFFF8;
  }

  v72 = v0[71];
  v172 = v72;
  if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v172 &= 0xFFFFFFFFFFFFFFF8;
  }

  v73 = v0[72];
  v173 = v73;
  if ((v73 & 7) != 0 && (atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v173 &= 0xFFFFFFFFFFFFFFF8;
  }

  v74 = v0[73];
  v174 = v74;
  if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v174 &= 0xFFFFFFFFFFFFFFF8;
  }

  v75 = v0[74];
  v175 = v75;
  if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v175 &= 0xFFFFFFFFFFFFFFF8;
  }

  v76 = v0[75];
  v176 = v76;
  if ((v76 & 7) != 0 && (atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v176 &= 0xFFFFFFFFFFFFFFF8;
  }

  v77 = v0[76];
  v177 = v77;
  if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v177 &= 0xFFFFFFFFFFFFFFF8;
  }

  v78 = v0[77];
  v178 = v78;
  if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v178 &= 0xFFFFFFFFFFFFFFF8;
  }

  v79 = v0[78];
  v179 = v79;
  if ((v79 & 7) != 0 && (atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v179 &= 0xFFFFFFFFFFFFFFF8;
  }

  v80 = v0[79];
  v180 = v80;
  if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v180 &= 0xFFFFFFFFFFFFFFF8;
  }

  v81 = v0[80];
  v181 = v81;
  if ((v81 & 7) != 0 && (atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v181 &= 0xFFFFFFFFFFFFFFF8;
  }

  v82 = v0[81];
  v182 = v82;
  if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v182 &= 0xFFFFFFFFFFFFFFF8;
  }

  v83 = v0[82];
  v183 = v83;
  if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v183 &= 0xFFFFFFFFFFFFFFF8;
  }

  v84 = v0[83];
  v184 = v84;
  if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v184 &= 0xFFFFFFFFFFFFFFF8;
  }

  v85 = v0[84];
  v185 = v85;
  if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v185 &= 0xFFFFFFFFFFFFFFF8;
  }

  v86 = v0[85];
  v186 = v86;
  if ((v86 & 7) != 0 && (atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v186 &= 0xFFFFFFFFFFFFFFF8;
  }

  v87 = v0[86];
  v187 = v87;
  if ((v87 & 7) != 0 && (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v187 &= 0xFFFFFFFFFFFFFFF8;
  }

  v88 = v0[87];
  v188 = v88;
  if ((v88 & 7) != 0 && (atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v188 &= 0xFFFFFFFFFFFFFFF8;
  }

  v89 = v0[88];
  v189 = v89;
  if ((v89 & 7) != 0 && (atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v189 &= 0xFFFFFFFFFFFFFFF8;
  }

  v90 = v0[89];
  v190 = v90;
  if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v190 &= 0xFFFFFFFFFFFFFFF8;
  }

  v91 = v0[90];
  v191 = v91;
  if ((v91 & 7) != 0 && (atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v191 &= 0xFFFFFFFFFFFFFFF8;
  }

  v92 = v0[91];
  v192 = v92;
  if ((v92 & 7) != 0 && (atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v192 &= 0xFFFFFFFFFFFFFFF8;
  }

  v93 = v0[92];
  v193 = v93;
  if ((v93 & 7) != 0 && (atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v193 &= 0xFFFFFFFFFFFFFFF8;
  }

  v94 = v0 + 94;
  v95 = v0[93];
  v194 = v95;
  if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v194 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v94 = 0;
  v0[95] = 0;
  v0[96] = 0;
  sub_29A12EF7C(v94, &v101, &v195, 0x5EuLL);
  for (i = 744; i != -8; i -= 8)
  {
    v97 = *(&v101 + i);
    if ((v97 & 7) != 0)
    {
      atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v98 = 0;
  atomic_compare_exchange_strong(&qword_2A174EB18, &v98, v0);
  if (v98)
  {
    v99 = sub_29ADDBC00(v0);
    operator delete(v99);
    return atomic_load(&qword_2A174EB18);
  }

  return v0;
}

void sub_29ADDAFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32)
{
  v42 = 744;
  while (1)
  {
    v43 = *(v36 + v42);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v42 -= 8;
    if (v42 == -8)
    {
      if ((*v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a24 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a25 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a26 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a28 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a29 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a30 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a31 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a32 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v32[63];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v32[62];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v32[61];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v32[60];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v32[59];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v32[58];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v32[57];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v32[56];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v32[55];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v32[54];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v32[53];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v32[52];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v32[51];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v32[50];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v32[49];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v32[48];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 = v32[47];
      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v61 = v32[46];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v32[45];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v63 = v32[44];
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v64 = v32[43];
      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v65 = v32[42];
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v66 = v32[41];
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v67 = v32[40];
      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v68 = v32[39];
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v69 = v32[38];
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v70 = v32[37];
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v71 = v32[36];
      if ((v71 & 7) != 0)
      {
        atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v72 = v32[35];
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v73 = v32[34];
      if ((v73 & 7) != 0)
      {
        atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v74 = v32[33];
      if ((v74 & 7) != 0)
      {
        atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v75 = v32[32];
      if ((v75 & 7) != 0)
      {
        atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v76 = v32[31];
      if ((v76 & 7) != 0)
      {
        atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v77 = v32[30];
      if ((v77 & 7) != 0)
      {
        atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v78 = v32[29];
      if ((v78 & 7) != 0)
      {
        atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v79 = v32[28];
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v80 = v32[27];
      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v81 = v32[26];
      if ((v81 & 7) != 0)
      {
        atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v82 = v32[25];
      if ((v82 & 7) != 0)
      {
        atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v83 = v32[24];
      if ((v83 & 7) != 0)
      {
        atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v32[23];
      if ((v84 & 7) != 0)
      {
        atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v85 = v32[22];
      if ((v85 & 7) != 0)
      {
        atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v86 = v32[21];
      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v87 = v32[20];
      if ((v87 & 7) != 0)
      {
        atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v88 = v32[19];
      if ((v88 & 7) != 0)
      {
        atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v89 = v32[18];
      if ((v89 & 7) != 0)
      {
        atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v90 = v32[17];
      if ((v90 & 7) != 0)
      {
        atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v91 = v32[16];
      if ((v91 & 7) != 0)
      {
        atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v92 = v32[15];
      if ((v92 & 7) != 0)
      {
        atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v93 = v32[14];
      if ((v93 & 7) != 0)
      {
        atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v94 = v32[13];
      if ((v94 & 7) != 0)
      {
        atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v95 = v32[12];
      if ((v95 & 7) != 0)
      {
        atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v96 = v32[11];
      if ((v96 & 7) != 0)
      {
        atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v97 = v32[10];
      if ((v97 & 7) != 0)
      {
        atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v98 = v32[9];
      if ((v98 & 7) != 0)
      {
        atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v99 = v32[8];
      if ((v99 & 7) != 0)
      {
        atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v100 = v32[7];
      if ((v100 & 7) != 0)
      {
        atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v101 = v32[6];
      if ((v101 & 7) != 0)
      {
        atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v102 = v32[5];
      if ((v102 & 7) != 0)
      {
        atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v103 = v32[4];
      if ((v103 & 7) != 0)
      {
        atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v104 = v32[3];
      if ((v104 & 7) != 0)
      {
        atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v105 = v32[2];
      if ((v105 & 7) != 0)
      {
        atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v106 = v32[1];
      if ((v106 & 7) != 0)
      {
        atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v32);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29ADDBC00(uint64_t a1)
{
  v96 = (a1 + 752);
  sub_29A124AB0(&v96);
  v2 = *(a1 + 744);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 736);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 728);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 720);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 712);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 704);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 696);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 688);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 680);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 672);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 664);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 656);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 648);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 640);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 632);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 624);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 616);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 608);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 600);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 592);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 584);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 576);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 568);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 560);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 552);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 544);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 536);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 528);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 520);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 512);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 504);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 496);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 488);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 480);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 472);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 464);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 456);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 448);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 440);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 432);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 424);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 416);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 408);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 400);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 392);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 384);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 376);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 368);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 360);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 352);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 344);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 336);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 328);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 320);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 312);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(a1 + 304);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(a1 + 296);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(a1 + 288);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(a1 + 280);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(a1 + 272);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(a1 + 264);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(a1 + 256);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(a1 + 248);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(a1 + 240);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(a1 + 232);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(a1 + 224);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(a1 + 216);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(a1 + 208);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(a1 + 200);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(a1 + 192);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(a1 + 184);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(a1 + 176);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(a1 + 168);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(a1 + 160);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(a1 + 152);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(a1 + 144);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(a1 + 136);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(a1 + 128);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(a1 + 120);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(a1 + 112);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(a1 + 104);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(a1 + 96);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(a1 + 88);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(a1 + 80);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(a1 + 72);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(a1 + 64);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = *(a1 + 56);
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = *(a1 + 48);
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = *(a1 + 40);
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = *(a1 + 32);
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = *(a1 + 24);
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = *(a1 + 16);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = *(a1 + 8);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::New@<X0>(const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = operator new(0x270uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::HdSt_MeshTopology(v10, a1, a2, a3, a4);

  return sub_29ADDF924(a5, v10);
}

pxrInternal__aapl__pxrReserved__::HdMeshTopology *pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::HdSt_MeshTopology(pxrInternal__aapl__pxrReserved__::HdMeshTopology *a1, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2, int a3, int a4, int a5)
{
  v8 = pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a1, a2, a3);
  *v8 = &unk_2A2093698;
  *(v8 + 124) = a5;
  *(v8 + 504) = 0u;
  *(v8 + 520) = 0u;
  *(v8 + 67) = 0;
  *(v8 + 136) = a4;
  *(v8 + 552) = 0u;
  *(v8 + 568) = 0u;
  *(v8 + 584) = 0u;
  *(v8 + 600) = 0u;
  *(v8 + 77) = 0;
  pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SanitizeGeomSubsets(v8);
  return a1;
}

void sub_29ADDC634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v14 = *v12;
  *v12 = 0;
  if (v14)
  {
    sub_29A4B4A7C(v12, v14);
  }

  sub_29A8440C8(&a10);
  v15 = *(v10 + 73);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(v10 + 71);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_29ADDFA38(v13, 0);
  v17 = *(v10 + 67);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(v10 + 65);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = *v11;
  *v11 = 0;
  if (v19)
  {
    sub_29ADDFA74(v11, v19);
  }

  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v10);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SanitizeGeomSubsets(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this)
{
  if (*(this + 48) != *(this + 49))
  {
    NumFaces = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumFaces(this);
    LOBYTE(v37) = 1;
    sub_29A84679C(&v47, NumFaces, &v37);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v3 = *(this + 48);
    if (v3 != *(this + 49))
    {
      v4 = NumFaces;
      LODWORD(v37) = *v3;
      sub_29A1E21F4(&v37 + 1, (v3 + 4));
      sub_29A1E2240(&v38, (v3 + 8));
      sub_29A1E21F4(&v39, (v3 + 12));
      sub_29A1E2240(&v40, (v3 + 16));
      v5 = *(v3 + 24);
      v42 = *(v3 + 40);
      v41 = v5;
      v6 = *(v3 + 56);
      v43 = v6;
      if (v6)
      {
        v7 = (v6 - 16);
        if (*(&v42 + 1))
        {
          v7 = *(&v42 + 1);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
        v8 = *(v3 + 56);
        v9 = *(v3 + 40);
        v34 = *(v3 + 24);
        v35 = v9;
        v36 = v8;
        if (v8)
        {
          v10 = (v8 - 16);
          if (*(&v35 + 1))
          {
            v10 = *(&v35 + 1);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v11 = *(v3 + 40);
        v34 = *(v3 + 24);
        v35 = v11;
        v36 = 0;
      }

      if (v34 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v3 + 12)))
      {
        v33 = 0;
        memset(v32, 0, sizeof(v32));
        v13 = 0;
        while (1)
        {
          v14 = *(v36 + 4 * v13);
          v31 = v14;
          if (v14 >= NumFaces)
          {
            v26 = "hdSt/meshTopology.cpp";
            v27 = "SanitizeGeomSubsets";
            v28 = 336;
            v29 = "void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SanitizeGeomSubsets()";
            v30 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "Geom subset index %d is larger than number of faces (%d), removing.", v12, v14, NumFaces);
          }

          else
          {
            sub_29A7ACEC4(v32, &v31);
            v15 = v31 >> 6;
            v16 = v47[v15];
            if (((1 << v31) & v16) != 0)
            {
              v47[v15] = v16 & ~(1 << v31);
              --v4;
            }

            else
            {
              v26 = "hdSt/meshTopology.cpp";
              v27 = "SanitizeGeomSubsets";
              v28 = 346;
              v29 = "void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SanitizeGeomSubsets()";
              v30 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "Face index %d is repeated between geom subsets", v12, v31);
            }
          }

          if (++v13 >= v34)
          {
            sub_29A27CF04(&v41, v32);
            sub_29ADDD50C(&v44, &v37);
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v17 = NumFaces;
    v18 = operator new(0x18uLL);
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v19 = (this + 616);
    v20 = *(this + 77);
    *(this + 77) = v18;
    if (v20)
    {
      sub_29A4B4A7C(v19, v20);
      v18 = *v19;
    }

    sub_29A0A171C(v18, v17);
    v21 = (this + 384);
    if (v17)
    {
      v22 = v48;
      if (v48)
      {
        v23 = 0;
        v24 = 0;
        v25 = v47;
        do
        {
          if ((*(v25 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23))
          {
            *(**v19 + 4 * v24++) = v23;
          }

          ++v23;
        }

        while (v23 < v22 && v24 < v17);
      }
    }

    if (v21 != &v44)
    {
      sub_29AC52FEC(v21, v44, v45, (v45 - v44) >> 6);
    }

    v37 = &v44;
    sub_29AC5346C(&v37);
    if (v47)
    {
      operator delete(v47);
    }
  }
}

void sub_29ADDCA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  a30 = (v30 - 136);
  sub_29AC5346C(&a30);
  v32 = *(v30 - 112);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::~HdSt_MeshTopology(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this)
{
  v2 = *(this + 77);
  *(this + 77) = 0;
  if (v2)
  {
    sub_29A4B4A7C(this + 616, v2);
  }

  v8 = (this + 592);
  sub_29A8440C8(&v8);
  v3 = *(this + 73);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 71);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_29ADDFA38(this + 69, 0);
  v5 = *(this + 67);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 65);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(this + 63);
  *(this + 63) = 0;
  if (v7)
  {
    sub_29ADDFA74(this + 504, v7);
  }

  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::~HdSt_MeshTopology(this);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::SetQuadInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 504);
  *(a1 + 504) = a2;
  if (v3)
  {
    sub_29ADDFA74(a1 + 504, v3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetPointsIndexBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, _OWORD *a2@<X8>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(this);
  sub_29A19D6E4(v11, NumPoints);
  if (NumPoints >= 1)
  {
    for (i = 0; i != NumPoints; ++i)
    {
      sub_29A19DBEC(v11);
      *(v12 + 4 * i) = i;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13[1] = &off_2A2043D18;
  v6 = operator new(0x30uLL);
  v7 = v11[1];
  *v6 = v11[0];
  *(v6 + 1) = v7;
  v8 = v12;
  *(v6 + 4) = v12;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(v6 + 3))
    {
      v9 = *(v6 + 3);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v6 + 10);
  v13[0] = v6;
  atomic_fetch_add_explicit(v6 + 10, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v5 + 312), v13, &v10);
  *a2 = v10;
  v10 = 0uLL;
  sub_29A186B14(v13);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

double pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangleIndexBuilderComputation@<D0>(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = this;
  sub_29ADDFAD0(&v5, a2, v6);
  result = v6[0];
  *a3 = *v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadInfoBuilderComputation(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3@<X3>, int a4@<W1>, uint64_t *a5@<X8>)
{
  v18.n128_u64[0] = this;
  sub_29ADDFC20(&v18, a2, a5);
  v10 = *a5;
  v9 = a5[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(this + 66) = v10;
  v11 = *(this + 67);
  *(this + 67) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a4)
  {
    if (a3 || (v18.n128_u64[0] = "hdSt/meshTopology.cpp", v18.n128_u64[1] = "GetQuadInfoBuilderComputation", v19 = 182, v20 = "HdSt_QuadInfoBuilderComputationSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadInfoBuilderComputation(BOOL, const SdfPath &, HdStResourceRegistry *)", v21 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v18, "resourceRegistry", 0) & 1) != 0))
    {
      *&v16 = this;
      sub_29ADDFD70(&v16, a5, &v18);
      v12 = v18;
      v17 = v18;
      v18 = 0uLL;
      v19 = 0;
      (*(*v17.n128_u64[0] + 24))(v17.n128_u64[0], &v18, v12);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v13)
      {
        v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(a3, v13 + 616, &v18, 8u, &v16);
      v14 = v16;
      v16 = 0uLL;
      v15 = *(this + 65);
      *(this + 32) = v14;
      if (v15)
      {
        sub_29A014BEC(v15);
        if (*(&v16 + 1))
        {
          sub_29A014BEC(*(&v16 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(a3, this + 64, &v17);
      *&v16 = &v18;
      sub_29ABC6FA0(&v16);
      if (v17.n128_u64[1])
      {
        sub_29A014BEC(v17.n128_u64[1]);
      }
    }

    else
    {
      v18.n128_u64[0] = "hdSt/meshTopology.cpp";
      v18.n128_u64[1] = "GetQuadInfoBuilderComputation";
      v19 = 184;
      v20 = "HdSt_QuadInfoBuilderComputationSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadInfoBuilderComputation(BOOL, const SdfPath &, HdStResourceRegistry *)";
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "resource registry must be non-null if gpu quadinfo is requested.");
    }
  }
}

void sub_29ADDCF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 + 8);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadIndexBuilderComputation(std::__shared_weak_count **this@<X0>, _OWORD *a2@<X8>)
{
  v5 = 0;
  v6 = this;
  v4 = this[67];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
  }

  sub_29ADDFF44(&v6, &v7);
  *a2 = v7;
  v7 = 0uLL;
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29ADDCFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateComputation(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[63];
  if (v4 && !*(v4 + 4))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = a1[67];
    if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v6 = a1[66];
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v10 = v5;
    v7 = a1;
    sub_29ADE00A4(&v7, &v8);
    *a2 = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }
}

void sub_29ADDD0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateComputationGPU@<X0>(void *result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v8 = a3;
  v5 = result[63];
  if (v5 && !*(v5 + 4))
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v6 = result;
    result = sub_29ADE020C(&v6, a2, &v8, &v7);
    *a4 = v7;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetQuadrangulateFaceVaryingComputation@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  sub_29ADE0378(&v4, v5);
  result = v5[0];
  *a2 = *v5;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::GetTriangulateFaceVaryingComputation@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  sub_29ADE04D8(&v4, v5);
  result = v5[0];
  *a2 = *v5;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToTriangles(pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = *(this + 1);
  v5 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v3;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToTriangles(&v5, a2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(atomic_uint **this)
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

  result = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToBSplinePatches(&v6, v2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}