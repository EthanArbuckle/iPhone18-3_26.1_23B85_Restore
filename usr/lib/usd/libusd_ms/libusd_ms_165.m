void sub_29AE83A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  sub_29AB905FC(&a27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 104);
  *(v27 - 104) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v27 - 88);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v31 = *(v27 - 72);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  sub_29A0E9CEC(v27 - 64);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::_UpdateCommandBuffer(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::_UpdateDrawItems(a1, a2);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
  v4 = (*(*RenderDelegate + 48))(RenderDelegate);
  DrawBatchesVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetDrawBatchesVersion(v4);
  if (*(a1 + 288) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SetDrawItems(a1 + 120, (a1 + 264), DrawBatchesVersion, *(a1 + 296));
    *(a1 + 288) = 0;
    v6 = *(a1 + 120);
    if (v6)
    {
      v7 = ((v6[1] - *v6) >> 3);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v9)
    {
      v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v8, (v9 + 632), v7);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::RebuildDrawBatchesIfNeeded((a1 + 120), DrawBatchesVersion, *(a1 + 296));
  }

  v10 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
  v11 = (*(*v10 + 88))(v10);
  if (*(a1 + 200) == v11)
  {
    v12 = *(a1 + 204);
  }

  else
  {
    *(a1 + 200) = v11;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
    if (!v13)
    {
      v13 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
    }

    LOBYTE(v15.__vftable) = 1;
    v12 = sub_29AE84234(v10, v13, &v15);
    *(a1 + 204) = v12;
  }

  return pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SetEnableTinyPrimCulling(a1 + 120, v12 & 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::_MarkCollectionDirty(uint64_t this)
{
  *(this + 256) = 1;
  *(this + 208) = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::_UpdateDrawItems(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A174F4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F4C8))
  {
    v48 = atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_DRAW_ITEMS_CACHE);
    if (!v48)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174F4C0 = *v48;
    __cxa_guard_release(&qword_2A174F4C8);
  }

  v4 = *(a1 + 8);
  if (byte_2A174F4C0 == 1)
  {
    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
    pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::GetDrawItemsCache(RenderDelegate);
    pxrInternal__aapl__pxrReserved__::HdSt_DrawItemsCache::GetDrawItems((a1 + 16), *(a1 + 8), __p);
    v6 = __p[0];
    if (*(a1 + 264) != __p[0])
    {
      v7 = __p[1];
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      }

      v8 = *(a1 + 272);
      *(a1 + 264) = v6;
      *(a1 + 272) = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        v6 = *(a1 + 264);
      }

      *(a1 + 288) = 1;
      *(a1 + 280) = (v6[1] - *v6) >> 3;
    }

    *(a1 + 256) = 0;
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    return;
  }

  CollectionVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetCollectionVersion((v4 + 440), (a1 + 24));
  RenderTagVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetRenderTagVersion((v4 + 440));
  v11 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
  v12 = (*(*v11 + 48))(v11);
  MaterialTagsVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetMaterialTagsVersion(v12);
  v14 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
  v15 = (*(*v14 + 48))(v14);
  GeomSubsetDrawItemsVersion = pxrInternal__aapl__pxrReserved__::HdStRenderParam::GetGeomSubsetDrawItemsVersion(v15);
  v49 = CollectionVersion;
  v17 = (*(a1 + 256) & 1) != 0 || *(a1 + 208) != CollectionVersion;
  v18 = *(a1 + 212);
  v20 = *(a1 + 248);
  v19 = *(a1 + 252);
  TaskRenderTagsVersion = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetTaskRenderTagsVersion((v4 + 440));
  if (*(a1 + 216) == TaskRenderTagsVersion)
  {
    goto LABEL_15;
  }

  v24 = TaskRenderTagsVersion;
  v25 = (a1 + 224);
  v26 = *(a1 + 224);
  *(a1 + 216) = v24;
  v27 = *(a1 + 232);
  v28 = *(a2 + 8);
  v29 = v28 - *a2;
  if (v27 - v26 == v29)
  {
    if (v26 == v27)
    {
LABEL_15:
      v22 = 0;
      v23 = v18 != RenderTagVersion || v17;
      if ((v23 & 1) == 0 && v20 == MaterialTagsVersion && v19 == GeomSubsetDrawItemsVersion)
      {
        return;
      }

      goto LABEL_31;
    }

    v30 = *a2;
    while ((*v30 ^ *v26) <= 7)
    {
      v26 += 8;
      ++v30;
      if (v26 == v27)
      {
        goto LABEL_15;
      }
    }
  }

  if (v25 != a2)
  {
    sub_29A34AC54(v25, *a2, v28, v29 >> 3);
  }

  v22 = 1;
LABEL_31:
  if (sub_29ADC9798(3))
  {
    if (v17)
    {
      v33 = *(a1 + 24) & 0xFFFFFFFFFFFFFFF8;
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

      Text = pxrInternal__aapl__pxrReserved__::HdReprSelector::GetText((a1 + 32));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("CollectionChanged: %s (repr = %s, version = %d -> %d)\n", v36, v37, v34, Text, *(a1 + 208), v49);
    }

    if (v18 != RenderTagVersion)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("RprimRenderTagChanged (version = %d -> %d)\n", v31, v32, *(a1 + 212), RenderTagVersion);
    }

    if (v20 != MaterialTagsVersion)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("MaterialTagsChanged (version = %d -> %d)\n", v31, v32, *(a1 + 248), MaterialTagsVersion);
    }

    if (v19 != GeomSubsetDrawItemsVersion)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GeomSubsetDrawItemsChanged (version = %d -> %d)\n", v31, v32, *(a1 + 252), GeomSubsetDrawItemsVersion);
    }

    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TaskRenderTagsChanged\n", v31, v32);
    }
  }

  v38 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 8));
  v39 = (*(*v38 + 48))(v38);
  MaterialTag = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetMaterialTag((a1 + 16));
  if (pxrInternal__aapl__pxrReserved__::HdStRenderParam::HasMaterialTag(v39, MaterialTag))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetDrawItems(*(a1 + 8), (a1 + 16), a2, __p);
    v41 = operator new(0x30uLL);
    v42 = v49;
    *(v41 + 1) = 0;
    *(v41 + 2) = 0;
    *v41 = &unk_2A2092F08;
    *(v41 + 24) = *__p;
    *(v41 + 5) = v51;
    __p[0] = 0;
    __p[1] = 0;
    v51 = 0;
    v43 = *(a1 + 272);
    *(a1 + 264) = v41 + 24;
    *(a1 + 272) = v41;
    if (v43)
    {
      sub_29A014BEC(v43);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v44)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
    if (!v45)
    {
      v45 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v44, (v45 + 40));
  }

  else
  {
    v46 = operator new(0x30uLL);
    v46[1] = 0;
    v46[2] = 0;
    *v46 = &unk_2A2092F08;
    v46[4] = 0;
    v46[5] = 0;
    v47 = *(a1 + 272);
    *(a1 + 272) = v46;
    v46[3] = 0;
    *(a1 + 264) = v46 + 3;
    v42 = v49;
    if (v47)
    {
      sub_29A014BEC(v47);
    }
  }

  *(a1 + 280) = (*(*(a1 + 264) + 8) - **(a1 + 264)) >> 3;
  *(a1 + 288) = 1;
  *(a1 + 256) = 0;
  *(a1 + 208) = v42;
  *(a1 + 212) = RenderTagVersion;
  *(a1 + 248) = MaterialTagsVersion;
  *(a1 + 252) = GeomSubsetDrawItemsVersion;
}

uint64_t sub_29AE84234(uint64_t a1, uint64_t a2, std::type_info *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(v8);
  v4 = sub_29A3F8F94(v8);
  if (sub_29A1EFCDC(v4))
  {
    type_name = v4->__type_name;
    if ((type_name & 4) != 0)
    {
      a3 = (*((type_name & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      a3 = v4;
    }
  }

  v6 = LOBYTE(a3->__vftable);
  sub_29A186B14(v8);
  return v6;
}

pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this)
{
  pxrInternal__aapl__pxrReserved__::HdStPackageRenderPassShader(&v3);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(this, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

{
  pxrInternal__aapl__pxrReserved__::HdStPackageRenderPassShader(&v3);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(this, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(this);
  *v4 = &unk_2A2098B40;
  sub_29AE85D64(a2, v4 + 3);
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(void *a1, void *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStShaderCode::HdStShaderCode(a1);
  *v3 = &unk_2A2098B40;
  v4 = a2[1];
  v3[3] = *a2;
  v3[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v3[5] = 0;
  *(v3 + 48) = 0;
  v3[9] = 0;
  v3[8] = 0;
  v3[7] = v3 + 8;
  result = 0.0;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::~HdStRenderPassShader(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this)
{
  *this = &unk_2A2098B40;
  v3 = (this + 104);
  sub_29ADD60F4(&v3);
  v3 = (this + 80);
  sub_29ADD61E4(&v3);
  sub_29AE85E30(this + 56, *(this + 8));
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdStShaderCode::~HdStShaderCode(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::~HdStRenderPassShader(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::ComputeHash(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this)
{
  if (*(this + 48) == 1)
  {
    v2 = this + 40;
  }

  else
  {
    *(this + 5) = *(*(this + 3) + 304);
    v2 = this + 40;
    v3 = *(this + 7);
    v4 = this + 64;
    v10 = v3;
    v11 = this + 64;
    while (v3 != v4)
    {
      v5 = sub_29AE846DC(&v10);
      v6 = pxrInternal__aapl__pxrReserved__::HdStBindingRequest::ComputeHash((*v5 + 40));
      *v2 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((*v2 + v6 + (*v2 + v6) * (*v2 + v6)) >> 1)));
      sub_29AE84714(&v10);
      v3 = v10;
      v4 = v11;
    }

    v7 = *(this + 10);
    v8 = *(this + 11);
    while (v7 != v8)
    {
      v10 = 0;
      LOBYTE(v11) = 0;
      sub_29AE85EF4(&v10, this + 5, v7, v7 + 4);
      *v2 = bswap64(0x9E3779B97F4A7C55 * v10);
      v7 += 5;
    }

    *(this + 48) = 1;
  }

  return *v2;
}

void *sub_29AE846DC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CAA38();
  }

  return result;
}

void *sub_29AE84714(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdStBindingRequest>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdStBindingRequest>, Reverse = false]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::GetSource@<X0>(pxrInternal__aapl__pxrReserved__::HioGlslfx **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A0ECEEC(&v7, "hdSt", "virtual std::string pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::GetSource(const TfToken &) const");
  result = pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(a3, this[3], a2);
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::BindResources(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v5 = *(this + 7);
  v6 = this + 64;
  v8 = v5;
  v9 = this + 64;
  while (v5 != v6)
  {
    v7 = sub_29AE848B8(&v8);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Bind(a3, (*v7 + 40));
    sub_29AE848F0(&v8);
    v5 = v8;
    v6 = v9;
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::BindResources(a3, this + 10);
}

void *sub_29AE848B8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CAA84();
  }

  return result;
}

void *sub_29AE848F0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdStBindingRequest>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::TfToken, pxrInternal__aapl__pxrReserved__::HdStBindingRequest>, Reverse = false]";
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

void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::UnbindResources(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this, int a2, const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *a3)
{
  v5 = *(this + 7);
  v6 = this + 64;
  v8 = v5;
  v9 = this + 64;
  while (v5 != v6)
  {
    v7 = sub_29AE848B8(&v8);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Unbind(a3, (*v7 + 40));
    sub_29AE848F0(&v8);
    v5 = v8;
    v6 = v9;
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::UnbindResources(a3, this + 10);
}

__n128 pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(uint64_t **this, __n128 *a2)
{
  v4 = &a2->n128_u64[1];
  v13 = &a2->n128_i64[1];
  v5 = sub_29AE85F74(this + 7, &a2->n128_i64[1], &unk_29B4D6118, &v13);
  v5[5] = a2->n128_u64[0];
  sub_29A166F2C(v5 + 6, v4);
  v7 = a2[1].n128_i64[0];
  v6 = a2[1].n128_i64[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v5[8];
  v5[7] = v7;
  v5[8] = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v10 = a2[2].n128_i64[0];
  v9 = a2[2].n128_i64[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v5[10];
  v5[9] = v10;
  v5[10] = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  result = a2[3];
  *(v5 + 104) = a2[4].n128_u8[0];
  *(v5 + 11) = result;
  *(this + 48) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  result = sub_29AE8600C(this + 7, a2);
  *(this + 48) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::ClearBufferBindings(pxrInternal__aapl__pxrReserved__::HdStRenderPassShader *this)
{
  v1 = (this + 64);
  sub_29AE85E30(this + 56, *(this + 8));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  *(v1 - 16) = 0;
}

void *pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBindings(uint64_t a1, uint64_t a2)
{
  result = sub_29AE84BD4(a2, *(a1 + 72) - 0x71C71C71C71C71C7 * ((*(a2 + 8) - *a2) >> 3) + 1);
  v5 = *(a1 + 56);
  v6 = a1 + 64;
  v8 = v5;
  v9 = a1 + 64;
  while (v5 != v6)
  {
    v7 = sub_29AE848B8(&v8);
    sub_29AE84CBC(a2, (*v7 + 40));
    result = sub_29AE848F0(&v8);
    v5 = v8;
    v6 = v9;
  }

  return result;
}

void **sub_29AE84BD4(void **result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x38E38E38E38E38FLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A09C03C(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[72 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29ADD43FC(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ADD4564(&v12);
  }

  return result;
}

void sub_29AE84CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADD4564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE84CBC(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AE86068(a1, a2);
  }

  else
  {
    sub_29AE861B0(a1, *(a1 + 8), a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void **pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::UpdateAovInputTextures(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v40 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v7 = v6 - *a2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
    if (v8 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    *(&v38 + 1) = 0;
    v39 = &v32;
    __p = operator new(0x3333333333333338 * (v7 >> 4));
    v37 = __p;
    *&v38 = __p;
    *(&v38 + 1) = __p + 24 * v8;
    sub_29AE85AB4(&v32, &__p);
    sub_29AE85C30(&__p);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v10)
    {
      v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(this, (v10 + 312), (v5 + 16));
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) == 0xAAAAAAAAAAAAAAABLL * (v33 - v32))
  {
    if (v12 == v11)
    {
      return sub_29AE85610(&v32);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v11 + v13);
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v17 = v11 + v13;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v32;
      v21 = v32[v14];
      __p = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        __p = (__p & 0xFFFFFFFFFFFFFFF8);
      }

      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(&v37, &v20[v14 + 1]);
      if ((v16 ^ __p) > 7)
      {
        break;
      }

      v22 = pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator!=((*v19 + 32), &v37);
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v37);
      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v22)
      {
        goto LABEL_35;
      }

      ++v15;
      v11 = *(a1 + 80);
      v14 += 3;
      v13 += 40;
      if (v15 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - v11) >> 3))
      {
        return sub_29AE85610(&v32);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(&v37);
    if ((__p & 7) != 0)
    {
      atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

LABEL_35:
  *(a1 + 48) = 0;
  sub_29ADD6238(a1 + 80, *(a1 + 80));
  v24 = *(a1 + 104);
  for (i = *(a1 + 112); i != v24; sub_29ADD617C(a1 + 104, i))
  {
    i -= 104;
  }

  *(a1 + 112) = v24;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&__p, this);
  if (__p)
  {
  }

  else
  {
    v25 = 0;
  }

  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (v25 || (__p = "hdSt/renderPassShader.cpp", v37 = "UpdateAovInputTextures", *&v38 = 294, *(&v38 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::UpdateAovInputTextures(const HdRenderPassAovBindingVector &, HdRenderIndex *const)", LOBYTE(v39) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "resourceRegistry", 0) & 1) != 0))
  {
    v26 = v32;
    if (v32 != v33)
    {
      if ((atomic_load_explicit(&qword_2A174F4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F4F8))
      {
        pxrInternal__aapl__pxrReserved__::HdSamplerParameters::HdSamplerParameters(&unk_2A174F4D0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
        __cxa_guard_release(&qword_2A174F4F8);
      }

      sub_29A014C58(&v30, (a1 + 8));
      __p = v30;
      v37 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateTextureHandle(v25, (v26 + 1), 0, &unk_2A174F4D0, 0, &__p, &v35);
      if (v37)
      {
        std::__shared_weak_count::__release_weak(v37);
      }

      if (v31)
      {
        sub_29A014BEC(v31);
      }

      v27 = *v26;
      __p = v27;
      if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        __p = (__p & 0xFFFFFFFFFFFFFFF8);
      }

      LODWORD(v37) = 0;
      v38 = v35;
      v35 = 0uLL;
      v39 = 0;
      sub_29AE62F18(a1 + 80, &__p);
      if (*(&v38 + 1))
      {
        sub_29A014BEC(*(&v38 + 1));
      }

      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      LODWORD(v30) = 1;
      v37 = (&off_2A2042A68 + 2);
      v28 = operator new(0x14uLL);
      *v28 = 0;
      *(v28 + 1) = 0;
      atomic_store(0, v28 + 4);
      __p = v28;
      atomic_fetch_add_explicit(v28 + 4, 1u, memory_order_relaxed);
      if (*(a1 + 112) < *(a1 + 120))
      {
        sub_29AE8638C(a1 + 104, *(a1 + 112), &v30, v26, &__p);
      }

      sub_29AE86228((a1 + 104), &v30, v26, &__p);
    }
  }

  return sub_29AE85610(&v32);
}

void **sub_29AE85610(void **a1)
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
        pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((v3 - 16));
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::CreateRenderPassShaderFromAovs(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **a2@<X1>, uint64_t **a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v6 += 10;
      v8 = bswap64(0x9E3779B97F4A7C55 * ((v9 & 0xFFFFFFFFFFFFFFF8) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v8 + ((v9 & 0xFFFFFFFFFFFFFFF8) + v8) * ((v9 & 0xFFFFFFFFFFFFFFF8) + v8)) >> 1)));
    }

    while (v6 != v7);
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterRenderPassShader(*a2, bswap64(0x9E3779B97F4A7C55 * (a1 + ((v8 + a1 + (v8 + a1) * (v8 + a1)) >> 1))), v20);
  if (v24 == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::HdSt_RenderPassShaderKey(v19, a3);
    pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::GetGlslfxString(&__p, v19);
    sub_29A5DB8D8(v14, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29AE65E3C(v14, &__p);
    sub_29AE864E0(&__p, &v11);
    sub_29AE85968(v20, &v11);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

    v14[0] = *MEMORY[0x29EDC9530];
    *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
    v15 = MEMORY[0x29EDC9570] + 16;
    if (v17 < 0)
    {
      operator delete(v16[7].__locale_);
    }

    v15 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v16);
    std::istream::~istream();
    MEMORY[0x29C2C4390](&v18);
    pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::~HdSt_RenderPassShaderKey(v19);
  }

  v10 = v21;
  *a4 = v20[1];
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v23 == 1)
  {
    std::mutex::unlock(v22);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }
}

void sub_29AE858F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29A5DBA5C(&a18);
  pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::~HdSt_RenderPassShaderKey(&a52);
  sub_29ADCA62C(v52 - 112);
  _Unwind_Resume(a1);
}

void sub_29AE85968(uint64_t *a1, uint64_t *a2)
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

    v7 = sub_29AE86438(v4, a1);
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

void sub_29AE85A20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE85A38(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C8B8();
    }

    v7 = operator new(24 * a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[24 * a2];
  return a1;
}

uint64_t sub_29AE85AB4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = *(a1 + 8);
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  v7 = (v4 + v6 - v5);
  v17 = v7;
  v18 = v7;
  if (v6 == v5)
  {
    v16 = 1;
  }

  else
  {
    v8 = (v4 + v6 - v5);
    v9 = v6;
    do
    {
      v10 = *v9;
      *v8 = *v9;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((v8 + 1), (v9 + 8));
      v9 += 24;
      v8 = v18 + 24;
      v18 += 24;
    }

    while (v9 != v5);
    v16 = 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((v6 + 8));
      if ((*v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 += 24;
    }

    while (v6 != v5);
  }

  result = sub_29AE85CA8(v15);
  a2[1] = v7;
  v12 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

void sub_29AE85C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AE85CA8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE85C30(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((i - 16));
    v4 = *(i - 24);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AE85CA8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    while (v4 != v5)
    {
      pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((v4 - 16));
      v7 = *(v4 - 24);
      v4 -= 24;
      v6 = v7;
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return a1;
}

uint64_t sub_29AE85D18(void *a1, void *a2)
{
  *a1 = *a2;
  *a2 = 0;
  return pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((a1 + 1), (a2 + 1));
}

void *sub_29AE85D64@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x150uLL);
  result = sub_29AE85DC0(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AE85DC0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2092E40;
  sub_29ADCAA80(&v4, (a1 + 3), a2);
  return a1;
}

void sub_29AE85E30(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AE85E30(a1, *a2);
    sub_29AE85E30(a1, a2[1]);
    sub_29AE85E8C(a2 + 4);

    operator delete(a2);
  }
}

void sub_29AE85E8C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[2];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AE85EF4(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE85F2C(a1, a3, a4);
}

uint64_t sub_29AE85F2C(uint64_t result, void *a2, void *a3)
{
  v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

uint64_t *sub_29AE85F74(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29ACC9654(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_29AE8600C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A31B8F0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29AE85E8C(v4 + 4);
  operator delete(v4);
  return 1;
}

uint64_t sub_29AE86068(uint64_t a1, __n128 *a2)
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
  v15 = (v7 + 72 * v2);
  *(&v16 + 1) = v7 + 72 * v6;
  sub_29AE861B0(a1, v15, a2);
  *&v16 = v15 + 72;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29ADD43FC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ADD4564(&v14);
  return v13;
}

void sub_29AE8619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADD4564(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AE861B0(uint64_t a1, __n128 *a2, __n128 *a3)
{
  a2->n128_u64[0] = a3->n128_u64[0];
  v3 = a3->n128_u64[1];
  a2->n128_u64[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2->n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1].n128_u64[1];
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  a2[1].n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[2].n128_u64[1];
  a2[2].n128_u64[0] = a3[2].n128_u64[0];
  a2[2].n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = a3[3];
  a2[4].n128_u8[0] = a3[4].n128_u8[0];
  a2[3] = result;
  return result;
}

void sub_29AE86228(void *a1, int *a2, uint64_t *a3, void *a4)
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
    sub_29AE8638C(a1, v13, a2, a3, a4);
  }

  sub_29A00C9A4();
}

void sub_29AE86378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AE8640C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE86438(uint64_t a1, uint64_t *a2)
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

void sub_29AE864C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE864E0(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x98uLL);
  sub_29AE86554(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;

  sub_29A017894(a2, v4 + 4, (v4 + 3));
}

void *sub_29AE86554(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098BE8;
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(a1 + 3, a2);
  return a1;
}

void sub_29AE865D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdStRenderPassState *pxrInternal__aapl__pxrReserved__::HdStRenderPassState::HdStRenderPassState(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  sub_29AE8AD04(&v3);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::HdStRenderPassState(this, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return this;
}

{
  sub_29AE8AD04(&v3);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::HdStRenderPassState(this, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return this;
}

void sub_29AE8668C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::HdStRenderPassState(uint64_t a1, void *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdRenderPassState::HdRenderPassState(a1);
  *v4 = &unk_2A2098C38;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v4 + 384, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 512, 1.0);
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 664, 1.0);
  v5 = a2[1];
  *(a1 + 792) = *a2;
  *(a1 + 800) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AE8ADC4((a1 + 808));
  *(a1 + 852) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 868) = 257;
  v6 = *(a1 + 808);
  v7 = *(a1 + 816);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 832);
    *(a1 + 824) = v6;
    *(a1 + 832) = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    *(a1 + 824) = v6;
    *(a1 + 832) = 0;
  }

  return a1;
}

void sub_29AE8679C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 100);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 81) = v4;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderPassState::~HdRenderPassState(v1);
  _Unwind_Resume(a1);
}

void sub_29AE86830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::~HdStRenderPassState(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  *this = &unk_2A2098C38;
  v2 = *(this + 106);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 104);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 102);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 100);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 80);
  if (v6)
  {
    *(this + 81) = v6;
    operator delete(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderPassState::~HdRenderPassState(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::~HdStRenderPassState(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_GetFramebufferHeight(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(this);
  v2 = *AovBindings;
  v3 = AovBindings[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if ((*(*v4 + 56))(v4))
      {
        break;
      }
    }

    v2 += 80;
  }

  v6 = *(**(v2 + 8) + 56);

  return v6();
}

float pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_ComputeFlippedFilmbackWindow(float32x2_t *this)
{
  if (!pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid(&this[4]))
  {
    return this[2].f32[0];
  }

  v2 = this[1];
  if (v2)
  {
    v3 = *(*&v2 + 152);
    v4 = fabsf(*(*&v2 + 148) / v3);
    if (v3 == 0.0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 1.0;
  }

  WindowPolicy = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetWindowPolicy(this);
  v6 = pxrInternal__aapl__pxrReserved__::CameraUtilFraming::ComputeFilmbackWindow(this + 4, WindowPolicy, v5);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_GetFramebufferHeight(this);
  return v6;
}

float pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeImageToHorizontallyNormalizedFilmback(float32x2_t *this)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_ComputeFlippedFilmbackWindow(this);
  if ((v2 - v3) == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 2.0 / (v2 - v3);
  }

  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid(&this[4]);
  return v4;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeViewport(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 32)))
  {
    FramebufferHeight = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_GetFramebufferHeight(this);
    v3 = *(this + 12);
    LODWORD(v4) = *(this + 13);
    if (FramebufferHeight)
    {
      v4 = (FramebufferHeight - (*(this + 15) + 1));
    }

    else
    {
      v4 = v4;
    }
  }

  else
  {
    v3 = *(this + 4);
    v4 = *(this + 5);
  }

  return v3 | (v4 << 32);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Prepare(uint64_t a1, uint64_t a2)
{
  v256[1] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v222, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Prepare(const HdResourceRegistrySharedPtr &)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v221, "virtual void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Prepare(const HdResourceRegistrySharedPtr &)");
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::Prepare(a1, a2);
  if (!sub_29ABCF8C0(16))
  {
    (*(*a1 + 24))(&v213, a1);
    (*(*a1 + 32))(&v205, a1);
    v245 = v217;
    v246 = v218;
    v247 = v219;
    v248 = v220;
    v241 = v213;
    v242 = v214;
    v243 = v215;
    v244 = v216;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v241.n128_f64, v205.n128_f64);
    v4 = v246;
    *(a1 + 728) = v245;
    *(a1 + 744) = v4;
    v5 = v248;
    *(a1 + 760) = v247;
    *(a1 + 776) = v5;
    v6 = v242;
    *(a1 + 664) = v241;
    *(a1 + 680) = v6;
    v7 = v244;
    *(a1 + 696) = v243;
    *(a1 + 712) = v7;
  }

  v9 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v10 = (*(*a1 + 40))(a1);
  v13 = v10[1];
  v241.n128_u64[0] = *v10;
  v241.n128_u64[1] = v13;
  while (v241.n128_u64[0] != v241.n128_u64[1])
  {
    v14 = sub_29AE88B34(&v241, v11, v12);
    v213 = vcvt_hight_f32_f64(vcvt_f32_f64(*v14), v14[1]);
    sub_29AE8AF10(&v202, &v213);
    sub_29AE88BB4(&v241);
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v9);
  v16 = (*(*Hgi + 200))(Hgi);
  v17 = v16[4];
  if (v202 >= v17)
  {
    v241 = 0uLL;
    v213.i64[0] = &v241;
    v16 = sub_29A19596C(&v202, v17, &v213);
  }

  if (!*(a1 + 840) || *(a1 + 856) < v202 || *(a1 + 864) != *(a1 + 168))
  {
    v213 = 0uLL;
    *&v214 = 0;
    DefaultMatrixType = pxrInternal__aapl__pxrReserved__::HdVtBufferSource::GetDefaultMatrixType(v16);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v19)
    {
      v19 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = DefaultMatrixType;
    v241.n128_u64[1] = 1;
    v20 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v23 = sub_29AD9CC10(&v213, v19 + 30, &v241);
    }

    else
    {
      v21 = v241.n128_u64[0];
      v22 = *(v19 + 30);
      *v213.i64[1] = v22;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20[1] = v21;
      v20[2] = 1;
      v23 = (v20 + 3);
    }

    v213.i64[1] = v23;
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v24)
    {
      v24 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = DefaultMatrixType;
    v241.n128_u64[1] = 1;
    v25 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v28 = sub_29AD9CC10(&v213, v24 + 31, &v241);
    }

    else
    {
      v26 = v241.n128_u64[0];
      v27 = *(v24 + 31);
      *v213.i64[1] = v27;
      if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v25 &= 0xFFFFFFFFFFFFFFF8;
      }

      v25[1] = v26;
      v25[2] = 1;
      v28 = (v25 + 3);
    }

    v213.i64[1] = v28;
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v29)
    {
      v29 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = DefaultMatrixType;
    v241.n128_u64[1] = 1;
    v30 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v33 = sub_29AD9CC10(&v213, v29 + 16, &v241);
    }

    else
    {
      v31 = v241.n128_u64[0];
      v32 = *(v29 + 16);
      *v213.i64[1] = v32;
      if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v30 &= 0xFFFFFFFFFFFFFFF8;
      }

      v30[1] = v31;
      v30[2] = 1;
      v33 = (v30 + 3);
    }

    v213.i64[1] = v33;
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v34)
    {
      v34 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = DefaultMatrixType;
    v241.n128_u64[1] = 1;
    v35 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v38 = sub_29AD9CC10(&v213, v34 + 10, &v241);
    }

    else
    {
      v36 = v241.n128_u64[0];
      v37 = *(v34 + 10);
      *v213.i64[1] = v37;
      if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v35 &= 0xFFFFFFFFFFFFFFF8;
      }

      v35[1] = v36;
      v35[2] = 1;
      v38 = (v35 + 3);
    }

    v213.i64[1] = v38;
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v39)
    {
      v39 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v40 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v43 = sub_29AD9CC10(&v213, v39 + 11, &v241);
    }

    else
    {
      v41 = v241.n128_u64[0];
      v42 = *(v39 + 11);
      *v213.i64[1] = v42;
      if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v40 &= 0xFFFFFFFFFFFFFFF8;
      }

      v40[1] = v41;
      v40[2] = 1;
      v43 = (v40 + 3);
    }

    v213.i64[1] = v43;
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v44)
    {
      v44 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v45 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v48 = sub_29AD9CC10(&v213, v44 + 14, &v241);
    }

    else
    {
      v46 = v241.n128_u64[0];
      v47 = *(v44 + 14);
      *v213.i64[1] = v47;
      if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v45 &= 0xFFFFFFFFFFFFFFF8;
      }

      v45[1] = v46;
      v45[2] = 1;
      v48 = (v45 + 3);
    }

    v213.i64[1] = v48;
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v49)
    {
      v49 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v50 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v53 = sub_29AD9CC10(&v213, v49 + 29, &v241);
    }

    else
    {
      v51 = v241.n128_u64[0];
      v52 = *(v49 + 29);
      *v213.i64[1] = v52;
      if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v50 &= 0xFFFFFFFFFFFFFFF8;
      }

      v50[1] = v51;
      v50[2] = 1;
      v53 = (v50 + 3);
    }

    v213.i64[1] = v53;
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v54)
    {
      v54 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v55 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v58 = sub_29AD9CC10(&v213, v54 + 15, &v241);
    }

    else
    {
      v56 = v241.n128_u64[0];
      v57 = *(v54 + 15);
      *v213.i64[1] = v57;
      if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v55 &= 0xFFFFFFFFFFFFFFF8;
      }

      v55[1] = v56;
      v55[2] = 1;
      v58 = (v55 + 3);
    }

    v213.i64[1] = v58;
    v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v59)
    {
      v59 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v60 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v63 = sub_29AD9CC10(&v213, v59 + 12, &v241);
    }

    else
    {
      v61 = v241.n128_u64[0];
      v62 = *(v59 + 12);
      *v213.i64[1] = v62;
      if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v60 &= 0xFFFFFFFFFFFFFFF8;
      }

      v60[1] = v61;
      v60[2] = 1;
      v63 = (v60 + 3);
    }

    v213.i64[1] = v63;
    v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v64)
    {
      v64 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v65 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v68 = sub_29AD9CC10(&v213, v64 + 17, &v241);
    }

    else
    {
      v66 = v241.n128_u64[0];
      v67 = *(v64 + 17);
      *v213.i64[1] = v67;
      if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v65 &= 0xFFFFFFFFFFFFFFF8;
      }

      v65[1] = v66;
      v65[2] = 1;
      v68 = (v65 + 3);
    }

    v213.i64[1] = v68;
    v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v69)
    {
      v69 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v70 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v73 = sub_29AD9CC10(&v213, v69 + 18, &v241);
    }

    else
    {
      v71 = v241.n128_u64[0];
      v72 = *(v69 + 18);
      *v213.i64[1] = v72;
      if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v70 &= 0xFFFFFFFFFFFFFFF8;
      }

      v70[1] = v71;
      v70[2] = 1;
      v73 = (v70 + 3);
    }

    v213.i64[1] = v73;
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v74)
    {
      v74 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v75 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v78 = sub_29AD9CC10(&v213, v74 + 19, &v241);
    }

    else
    {
      v76 = v241.n128_u64[0];
      v77 = *(v74 + 19);
      *v213.i64[1] = v77;
      if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v75 &= 0xFFFFFFFFFFFFFFF8;
      }

      v75[1] = v76;
      v75[2] = 1;
      v78 = (v75 + 3);
    }

    v213.i64[1] = v78;
    v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v79)
    {
      v79 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v80 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v83 = sub_29AD9CC10(&v213, v79 + 13, &v241);
    }

    else
    {
      v81 = v241.n128_u64[0];
      v82 = *(v79 + 13);
      *v213.i64[1] = v82;
      if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v80 &= 0xFFFFFFFFFFFFFFF8;
      }

      v80[1] = v81;
      v80[2] = 1;
      v83 = (v80 + 3);
    }

    v213.i64[1] = v83;
    v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v84)
    {
      v84 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v85 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v88 = sub_29AD9CC10(&v213, v84 + 32, &v241);
    }

    else
    {
      v86 = v241.n128_u64[0];
      v87 = *(v84 + 32);
      *v213.i64[1] = v87;
      if ((v87 & 7) != 0 && (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v85 &= 0xFFFFFFFFFFFFFFF8;
      }

      v85[1] = v86;
      v85[2] = 1;
      v88 = (v85 + 3);
    }

    v213.i64[1] = v88;
    v89 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v89)
    {
      v89 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v90 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v93 = sub_29AD9CC10(&v213, v89 + 33, &v241);
    }

    else
    {
      v91 = v241.n128_u64[0];
      v92 = *(v89 + 33);
      *v213.i64[1] = v92;
      if ((v92 & 7) != 0 && (atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v90 &= 0xFFFFFFFFFFFFFFF8;
      }

      v90[1] = v91;
      v90[2] = 1;
      v93 = (v90 + 3);
    }

    v213.i64[1] = v93;
    v94 = *(a1 + 168);
    if (v94 > 0.0)
    {
      v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v95)
      {
        v95 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      v241.n128_u32[0] = 13;
      v241.n128_u64[1] = 1;
      v96 = v213.i64[1];
      if (v213.i64[1] >= v214)
      {
        v99 = sub_29AD9CC10(&v213, v95, &v241);
      }

      else
      {
        v97 = v241.n128_u64[0];
        v98 = *v95;
        *v213.i64[1] = *v95;
        if ((v98 & 7) != 0 && (atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v96 &= 0xFFFFFFFFFFFFFFF8;
        }

        v96[1] = v97;
        v96[2] = 1;
        v99 = (v96 + 3);
      }

      v213.i64[1] = v99;
      v94 = *(a1 + 168);
    }

    *(a1 + 864) = v94;
    v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v100)
    {
      v100 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 13;
    v241.n128_u64[1] = 1;
    v101 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v104 = sub_29AD9CC10(&v213, v100 + 26, &v241);
    }

    else
    {
      v102 = v241.n128_u64[0];
      v103 = *(v100 + 26);
      *v213.i64[1] = v103;
      if ((v103 & 7) != 0 && (atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v101 &= 0xFFFFFFFFFFFFFFF8;
      }

      v101[1] = v102;
      v101[2] = 1;
      v104 = (v101 + 3);
    }

    v213.i64[1] = v104;
    v105 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v105)
    {
      v105 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v241.n128_u64[1] = 1;
    v106 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v109 = sub_29AD9CC10(&v213, v105 + 27, &v241);
    }

    else
    {
      v107 = v241.n128_u64[0];
      v108 = *(v105 + 27);
      *v213.i64[1] = v108;
      if ((v108 & 7) != 0 && (atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v106 &= 0xFFFFFFFFFFFFFFF8;
      }

      v106[1] = v107;
      v106[2] = 1;
      v109 = (v106 + 3);
    }

    v213.i64[1] = v109;
    v110 = v202;
    if (v202 <= 4)
    {
      v110 = 4;
    }

    *(a1 + 856) = v110;
    v111 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v111)
    {
      v111 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 16;
    v112 = *(a1 + 856);
    v241.n128_u64[1] = v112;
    v113 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v116 = sub_29AD9CC10(&v213, v111 + 1, &v241);
    }

    else
    {
      v114 = v241.n128_u64[0];
      v115 = *(v111 + 1);
      *v213.i64[1] = v115;
      if ((v115 & 7) != 0 && (atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v113 &= 0xFFFFFFFFFFFFFFF8;
      }

      v113[1] = v114;
      v113[2] = v112;
      v116 = (v113 + 3);
    }

    v213.i64[1] = v116;
    v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    if (!v117)
    {
      v117 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
    }

    v241.n128_u32[0] = 9;
    v241.n128_u64[1] = 1;
    v118 = v213.i64[1];
    if (v213.i64[1] >= v214)
    {
      v121 = sub_29AD9CC10(&v213, v117 + 21, &v241);
    }

    else
    {
      v119 = v241.n128_u64[0];
      v120 = *(v117 + 21);
      *v213.i64[1] = v120;
      if ((v120 & 7) != 0 && (atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v118 &= 0xFFFFFFFFFFFFFFF8;
      }

      v118[1] = v119;
      v118[2] = 1;
      v121 = (v118 + 3);
    }

    v213.i64[1] = v121;
    v122 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v122)
    {
      v122 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v9, v122 + 184, &v213, 4u, &v241);
    v124 = v241.n128_u64[1];
    v123 = v241.n128_u64[0];
    v241 = 0uLL;
    *(a1 + 840) = v123;
    v125 = *(a1 + 848);
    *(a1 + 848) = v124;
    if (v125)
    {
      sub_29A014BEC(v125);
      if (v241.n128_u64[1])
      {
        sub_29A014BEC(v241.n128_u64[1]);
      }

      v124 = *(a1 + 848);
    }

    v126 = *(a1 + 840);
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v127 = *(a1 + 792);
    v128 = atomic_load(&qword_2A174F500);
    if (!v128)
    {
      v128 = sub_29AE8AFB8();
    }

    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v241.n128_u64[0] = -4294967287;
    v129 = *v128;
    v241.n128_u64[1] = v129;
    if ((v129 & 7) != 0 && (atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v241.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v242 = 0uLL;
    *&v243 = v126;
    *(&v243 + 1) = v124;
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOWORD(v244) = 1;
    *(&v244 + 1) = 0;
    LOBYTE(v245) = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v127, &v241);
    if (*(&v243 + 1))
    {
      sub_29A014BEC(*(&v243 + 1));
    }

    if (*(&v242 + 1))
    {
      sub_29A014BEC(*(&v242 + 1));
    }

    if ((v241.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v241.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v124)
    {
      sub_29A014BEC(v124);
      sub_29A014BEC(v124);
    }

    v241.n128_u64[0] = &v213;
    sub_29ABC6FA0(&v241);
  }

  if (*(a1 + 128))
  {
    v130 = 1.0;
  }

  else
  {
    v130 = 0.0;
  }

  (*(*a1 + 24))(&v213, a1);
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  (*(*a1 + 32))(&v205, a1);
  v131 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v9);
  v132 = (*(*v131 + 200))(v131);
  v133 = *(v132 + 48);
  if ((v133 & 0x200) == 0)
  {
    v248 = 0u;
    v247 = 0u;
    v246 = 0u;
    v245 = 0u;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v241, 1.0);
    *&v246 = 0x3FE0000000000000;
    *&v248 = 0x3FE0000000000000;
    v198 = v209;
    v199 = v210;
    v200 = v211;
    v201 = v212;
    v194 = v205;
    v195 = v206;
    v196 = v207;
    v197 = v208;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v194.n128_f64, v241.n128_f64);
    v209 = v198;
    v210 = v199;
    v211 = v200;
    v212 = v201;
    v205 = v194;
    v206 = v195;
    v207 = v196;
    v208 = v197;
    v133 = *(v132 + 48);
  }

  v193 = BYTE1(v133) & 1;
  v134 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v134)
  {
    v134 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29AE7CC74((v134 + 240), &v213, &v193, &v191);
  v241 = v191;
  v191 = 0uLL;
  v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v135)
  {
    v135 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v213.i64, 0, 0.0, &v194);
  sub_29AE7CD48((v135 + 248), &v194, &v193, &v190);
  v242 = v190;
  v190 = 0uLL;
  v136 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v136)
  {
    v136 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  sub_29AE8B124((v136 + 128), &v205, &v193, &v189);
  v243 = v189;
  v189 = 0uLL;
  v137 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v137)
  {
    v137 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetImageToWorldMatrix(a1, &v239);
  sub_29AE7CD48((v137 + 80), &v239, &v193, &v188);
  v244 = v188;
  v188 = 0uLL;
  v138 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v138)
  {
    v138 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v139 = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeImageToHorizontallyNormalizedFilmback(a1);
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v238[1] = &off_2A2042A68 + 2;
  v146 = operator new(0x14uLL);
  *v146 = v139;
  v146[1] = v141;
  v146[2] = v143;
  v146[3] = v145;
  atomic_store(0, v146 + 4);
  v238[0] = v146;
  atomic_fetch_add_explicit(v146 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v138 + 88), v238, &v187);
  v245 = v187;
  v187 = 0uLL;
  v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v147)
  {
    v147 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v237[1] = &off_2A2042A68 + 2;
  v148 = operator new(0x14uLL);
  *v148 = *(a1 + 76);
  atomic_store(0, v148 + 4);
  v237[0] = v148;
  atomic_fetch_add_explicit(v148 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v147 + 112), v237, &v186);
  v246 = v186;
  v186 = 0uLL;
  v149 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v149)
  {
    v149 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v236[1] = &off_2A2042A68 + 2;
  v150 = operator new(0x14uLL);
  *v150 = *(a1 + 92);
  atomic_store(0, v150 + 4);
  v236[0] = v150;
  atomic_fetch_add_explicit(v150 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v149 + 232), v236, &v185);
  v247 = v185;
  v185 = 0uLL;
  v151 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v151)
  {
    v151 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v235[1] = &off_2A2042A68 + 2;
  v152 = operator new(0x14uLL);
  *v152 = *(a1 + 132);
  atomic_store(0, v152 + 4);
  v235[0] = v152;
  atomic_fetch_add_explicit(v152 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v151 + 120), v235, &v184);
  v248 = v184;
  v184 = 0uLL;
  v153 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v153)
  {
    v153 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v234[1] = &off_2A2042A68 + 2;
  v154 = operator new(0x14uLL);
  *v154 = *(a1 + 148);
  atomic_store(0, v154 + 4);
  v234[0] = v154;
  atomic_fetch_add_explicit(v154 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v153 + 96), v234, &v183);
  v249 = v183;
  v183 = 0uLL;
  v155 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v155)
  {
    v155 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v233[1] = &off_2A2042A68 + 2;
  v156 = operator new(0x14uLL);
  *v156 = *(a1 + 108);
  atomic_store(0, v156 + 4);
  v233[0] = v156;
  atomic_fetch_add_explicit(v156 + 4, 1u, memory_order_relaxed);
  sub_29AD9CD3C((v155 + 136), v233, &v182);
  v250 = v182;
  v182 = 0uLL;
  v157 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v157)
  {
    v157 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v232 = &unk_2A2044C63;
  v231 = *(a1 + 124);
  sub_29AD9CD3C((v157 + 144), &v231, &v181);
  v251 = v181;
  v181 = 0uLL;
  v158 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v158)
  {
    v158 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v230 = &unk_2A2044C63;
  v229 = *(a1 + 164);
  sub_29AD9CD3C((v158 + 152), &v229, &v180);
  v252 = v180;
  v180 = 0uLL;
  v159 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v159)
  {
    v159 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v228 = &unk_2A2044C63;
  v227 = v130;
  sub_29AD9CD3C((v159 + 104), &v227, &v179);
  v253 = v179;
  v179 = 0uLL;
  v160 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v160)
  {
    v160 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v226 = &unk_2A2044C63;
  v225 = *(a1 + 372);
  sub_29AD9CD3C((v160 + 256), &v225, &v178);
  v254 = v178;
  v178 = 0uLL;
  v161 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  if (!v161)
  {
    v161 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
  }

  v224 = &unk_2A2044C63;
  v223 = *(a1 + 376);
  sub_29AD9CD3C((v161 + 264), &v223, &v177);
  v255 = v177;
  v177 = 0uLL;
  memset(v192, 0, sizeof(v192));
  sub_29AD9CF88(v192, &v241, v256, 0xFuLL);
  v162 = 29;
  while (1)
  {
    v163 = v241.n128_u64[v162];
    if (v163)
    {
      sub_29A014BEC(v163);
    }

    v162 -= 2;
    if (v162 == -1)
    {
      if (*(&v177 + 1))
      {
        sub_29A014BEC(*(&v177 + 1));
      }

      sub_29A186B14(&v223);
      if (*(&v178 + 1))
      {
        sub_29A014BEC(*(&v178 + 1));
      }

      sub_29A186B14(&v225);
      if (*(&v179 + 1))
      {
        sub_29A014BEC(*(&v179 + 1));
      }

      sub_29A186B14(&v227);
      if (*(&v180 + 1))
      {
        sub_29A014BEC(*(&v180 + 1));
      }

      sub_29A186B14(&v229);
      if (*(&v181 + 1))
      {
        sub_29A014BEC(*(&v181 + 1));
      }

      sub_29A186B14(&v231);
      if (*(&v182 + 1))
      {
        sub_29A014BEC(*(&v182 + 1));
      }

      sub_29A186B14(v233);
      if (*(&v183 + 1))
      {
        sub_29A014BEC(*(&v183 + 1));
      }

      sub_29A186B14(v234);
      if (*(&v184 + 1))
      {
        sub_29A014BEC(*(&v184 + 1));
      }

      sub_29A186B14(v235);
      if (*(&v185 + 1))
      {
        sub_29A014BEC(*(&v185 + 1));
      }

      sub_29A186B14(v236);
      if (*(&v186 + 1))
      {
        sub_29A014BEC(*(&v186 + 1));
      }

      sub_29A186B14(v237);
      if (*(&v187 + 1))
      {
        sub_29A014BEC(*(&v187 + 1));
      }

      sub_29A186B14(v238);
      if (*(&v188 + 1))
      {
        sub_29A014BEC(*(&v188 + 1));
      }

      if (*(&v189 + 1))
      {
        sub_29A014BEC(*(&v189 + 1));
      }

      if (*(&v190 + 1))
      {
        sub_29A014BEC(*(&v190 + 1));
      }

      if (v191.n128_u64[1])
      {
        sub_29A014BEC(v191.n128_u64[1]);
      }

      if (*(a1 + 168) > 0.0)
      {
        v164 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v164)
        {
          v164 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        v240 = &unk_2A2044C63;
        LODWORD(v239) = *(a1 + 168);
        sub_29AD9CD3C(v164, &v239, &v194);
        v241 = v194;
        v194 = 0uLL;
        sub_29A01729C(v192, &v241);
        if (v241.n128_u64[1])
        {
          sub_29A014BEC(v241.n128_u64[1]);
        }

        if (v194.n128_u64[1])
        {
          sub_29A014BEC(v194.n128_u64[1]);
        }

        sub_29A186B14(&v239);
      }

      v165 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v165)
      {
        v165 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      v240 = &unk_2A2044C63;
      LODWORD(v239) = *(a1 + 172);
      sub_29AD9CD3C((v165 + 208), &v239, &v194);
      v241 = v194;
      v194 = 0uLL;
      sub_29A01729C(v192, &v241);
      if (v241.n128_u64[1])
      {
        sub_29A014BEC(v241.n128_u64[1]);
      }

      if (v194.n128_u64[1])
      {
        sub_29A014BEC(v194.n128_u64[1]);
      }

      sub_29A186B14(&v239);
      v166 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v166)
      {
        v166 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((a1 + 32)))
      {
        v167.i64[0] = *(a1 + 48);
        v167.u64[1] = vadd_s32(vsub_s32(*(a1 + 56), *v167.i8), 0x100000001);
        v168 = vcvtq_f32_s32(v167);
      }

      else
      {
        v168 = *(a1 + 16);
      }

      v176 = v168;
      v240 = (&off_2A2042A68 + 2);
      v169 = operator new(0x14uLL);
      *v169 = v176;
      atomic_store(0, v169 + 4);
      v239 = v169;
      atomic_fetch_add_explicit(v169 + 4, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v166 + 216), &v239, &v194);
      v241 = v194;
      v194 = 0uLL;
      sub_29A01729C(v192, &v241);
      if (v241.n128_u64[1])
      {
        sub_29A014BEC(v241.n128_u64[1]);
      }

      if (v194.n128_u64[1])
      {
        sub_29A014BEC(v194.n128_u64[1]);
      }

      sub_29A186B14(&v239);
      if (v202)
      {
        v170 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        if (!v170)
        {
          v170 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
        }

        v240 = &off_2A20435E8;
        v171 = operator new(0x30uLL);
        v172 = v203;
        *v171 = v202;
        *(v171 + 1) = v172;
        v173 = v204;
        *(v171 + 4) = v204;
        if (v173)
        {
          v174 = (v173 - 16);
          if (*(v171 + 3))
          {
            v174 = *(v171 + 3);
          }

          atomic_fetch_add_explicit(v174, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v171 + 10);
        v239 = v171;
        atomic_fetch_add_explicit(v171 + 10, 1u, memory_order_relaxed);
        v191.n128_u64[0] = v202;
        sub_29AE8B1F8((v170 + 8), &v239, &v191, &v194);
        v241 = v194;
        v194 = 0uLL;
        sub_29A01729C(v192, &v241);
        if (v241.n128_u64[1])
        {
          sub_29A014BEC(v241.n128_u64[1]);
        }

        if (v194.n128_u64[1])
        {
          sub_29A014BEC(v194.n128_u64[1]);
        }

        sub_29A186B14(&v239);
      }

      v175 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      if (!v175)
      {
        v175 = sub_29ADC6FC0(&pxrInternal__aapl__pxrReserved__::HdShaderTokens);
      }

      v240 = &unk_2A2044813;
      LODWORD(v239) = v202;
      sub_29AD9CD3C((v175 + 168), &v239, &v194);
      v241 = v194;
      v194 = 0uLL;
      sub_29A01729C(v192, &v241);
      if (v241.n128_u64[1])
      {
        sub_29A014BEC(v241.n128_u64[1]);
      }

      if (v194.n128_u64[1])
      {
        sub_29A014BEC(v194.n128_u64[1]);
      }

      sub_29A186B14(&v239);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v9, (a1 + 840), v192);
      (*(**(a1 + 824) + 128))(*(a1 + 824), &v213, &v205);
      v241.n128_u64[0] = v192;
      sub_29A0176E4(&v241);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }
  }
}

void sub_29AE886D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  STACK[0x420] = &a41;
  sub_29A0176E4(&STACK[0x420]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

uint64_t sub_29AE88B34(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29AE88BB4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::GfVec4d>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetLightingShader(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = a1[101];
  v3 = a1[102];
  if (v3)
  {
LABEL_3:
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_4:
  a1[103] = v2;
  v4 = a1[104];
  a1[104] = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[99] = v4;
  v5 = a1[100];
  a1[100] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[105];
  if (v6)
  {
    v7 = a1[106];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a1[99];
    v9 = atomic_load(&qword_2A174F500);
    if (!v9)
    {
      v9 = sub_29AE8AFB8();
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12.n128_u64[0] = -4294967287;
    v10 = *v9;
    v12.n128_u64[1] = v10;
    if ((v10 & 7) != 0)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12.n128_u64[1] = v11;
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = v6;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = 1;
    v18 = 0;
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v8, &v12);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if ((v12.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v12.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AE88DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetShaders(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A039314(a2, 2uLL);
  v4 = *(this + 104);
  v6 = *(this + 103);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01729C(a2, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v5 = *(this + 100);
  v6 = *(this + 99);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A01729C(a2, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29AE88EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ApplyStateFromGeometricShader(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::ResolveCullMode(*a3, *(a1 + 212)) - 1;
  if (v5 > 2)
  {
    v7 = 2884;
    v8 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  else
  {
    v7 = dword_29B710DB4[v5];
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2884);
    v8 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullFace;
  }

  (*v8)(v7, v6);
  if (*(*a3 + 36) == 1)
  {
    result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, 6913);
    v11 = *(*a3 + 40);
  }

  else
  {
    v11 = *(a1 + 244);
    result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, 6914);
  }

  if (v11 > 0.0)
  {
    v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth;
    v10.n128_f32[0] = v11;

    return v12(v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ApplyStateFromCamera(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  v2 = *(this + 103);
  (*(*this + 24))(v5);
  (*(*this + 32))(v4, this);
  return (*(*v2 + 128))(v2, v5, v4);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Bind(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this, const pxrInternal__aapl__pxrReserved__::HgiCapabilities *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v45, "void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Bind(const HgiCapabilities &)");
  if ((*(this + 184) & 1) == 0)
  {
    if (*(this + 185) == 1)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(32823);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffset(*(this + 48), *(this + 47));
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32823);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthTest(this))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2929);
    v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc;
    GlDepthFunc = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlDepthFunc(*(this + 49));
    v4(GlDepthFunc);
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask;
    EnableDepthMask = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthMask(this);
    v6(EnableDepthMask);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2929);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthClamp(this))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(34383);
  }

  v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange;
  v9 = *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDepthRange(this);
  DepthRange = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDepthRange(this);
  v8(v9, *(DepthRange + 4));
  if (pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetStencilEnabled(this))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2960);
    v11 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFunc;
    GlStencilFunc = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlStencilFunc(*(this + 54));
    (v11)(GlStencilFunc, *(this + 55), *(this + 56));
    v13 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOp;
    GlStencilOp = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlStencilOp(*(this + 57));
    v15 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlStencilOp(*(this + 58));
    v16 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlStencilOp(*(this + 59));
    v17 = v13(GlStencilOp, v15, v16);
  }

  else
  {
    v17 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2960);
  }

  v18 = *(this + 61);
  if (v18 > 0.0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth(v17, v18);
  }

  if (*(this + 288) == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(3042);
    v19 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate;
    GlBlendOp = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendOp(*(this + 62));
    v21 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendOp(*(this + 65));
    v19(GlBlendOp, v21);
    v22 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate;
    GlBlendFactor = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendFactor(*(this + 63));
    v24 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendFactor(*(this + 64));
    v25 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendFactor(*(this + 66));
    v26 = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGlBlendFactor(*(this + 67));
    v22(GlBlendFactor, v24, v25, v26);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendColor(*(this + 68), *(this + 69), *(this + 70), *(this + 71));
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(3042);
  }

  if (*(this + 289) == 1)
  {
    v27 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(32926);
    v28 = 32927;
    v29 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v28 = 32926;
    v29 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v29)(v28, v27);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(34370);
  v44 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3378, &v44);
  for (i = 0; ; ++i)
  {
    v31 = (*(*this + 40))(this);
    if (i >= (v31[1] - *v31) >> 5 || i >= v44)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable((i + 12288));
  }

  if (*(this + 290) == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(1, 1, 1, 1);
  }

  else
  {
    v33 = *(this + 37);
    v34 = *(this + 38);
    if (v34 - v33 == 4)
    {
      v35 = *v33;
      v36 = v35 != 1 && v35 != 0;
      v37 = v35 == 1 || v35 != 0;
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(v37, v37, v37, v36);
    }

    else if (v34 != v33)
    {
      v38 = 0;
      do
      {
        v39 = *&v33[4 * v38];
        v40 = v39 != 1 && v39 != 0;
        v41 = v39 == 1 || v39 != 0;
        if (v38 == -1)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(v41, v41, v41, v40);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMaski(v38, v41, v41, v41, v40);
        }

        ++v38;
        v33 = *(this + 37);
      }

      while (v38 < (*(this + 38) - v33) >> 2);
    }
  }

  if ((*(a2 + 49) & 8) != 0)
  {
    if (*(this + 369))
    {
      v42 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
    }

    else
    {
      v42 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
    }

    (*v42)(37702);
  }

  if (*(this + 380))
  {
    v43 = 32925;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32925);
    v43 = 2832;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(v43);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v45);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Unbind(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this, const pxrInternal__aapl__pxrReserved__::HgiCapabilities *a2)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v7, "void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::Unbind(const HgiCapabilities &)");
  if ((*(this + 184) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32823);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffset(0.0, 0.0);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2884);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32926);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(34370);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2960);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(513);
  v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, 6914);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth(v4, 1.0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(34383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange(0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(3042);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(32774, 32774);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(1, 0, 1, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendColor(0.0, 0.0, 0.0, 0.0);
  for (i = 0; ; ++i)
  {
    v6 = (*(*this + 40))(this);
    if (i >= (v6[1] - *v6) >> 5)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable((i + 12288));
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(1, 1, 1, 1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(1);
  if ((*(a2 + 49) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(37702);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(32925);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2832);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v7);
}

char **pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetCameraFramingState(uint64_t a1, __int128 *a2, __int128 *a3, float64x2_t *a4, char **a5)
{
  if (*(a1 + 8))
  {
    *(a1 + 8) = 0;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(a1 + 416) = a2[2];
  *(a1 + 432) = v7;
  *(a1 + 384) = v5;
  *(a1 + 400) = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[7];
  *(a1 + 480) = a2[6];
  *(a1 + 496) = v10;
  *(a1 + 448) = v8;
  *(a1 + 464) = v9;
  v11 = a3[7];
  v13 = a3[4];
  v12 = a3[5];
  *(a1 + 608) = a3[6];
  *(a1 + 624) = v11;
  *(a1 + 576) = v13;
  *(a1 + 592) = v12;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[3];
  *(a1 + 544) = a3[2];
  *(a1 + 560) = v16;
  *(a1 + 512) = v14;
  *(a1 + 528) = v15;
  *(a1 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(*a4), a4[1]);
  result = (a1 + 640);
  if (result != a5)
  {
    return sub_29A4DFDC4(result, *a5, a5[1], (a5[1] - *a5) >> 5);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetShaderHash(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  v2 = *(this + 103);
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
    v4 = bswap64(0x9E3779B97F4A7C55 * (v3 + ((v3 + v3 * v3) >> 1)));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 99);
  if (v5)
  {
    v6 = (*(*v5 + 16))(v5);
    v4 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v6 + v4 + (v6 + v4) * (v6 + v4)) >> 1)));
  }

  v7 = *(this + 42);
  v8 = *(this + 107);
  v9 = v8 + v4 + (v8 + v4) * (v8 + v4);
  if (v7 > 0.0)
  {
    ++v8;
  }

  v10 = (v8 + (v9 >> 1) + (v8 + (v9 >> 1)) * (v8 + (v9 >> 1))) >> 1;
  if (v7 > 0.0)
  {
    ++v10;
  }

  return bswap64(0x9E3779B97F4A7C55 * v10);
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentDesc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4 || (sub_29B2CAAD0(&v41, a2, a3) & 1) != 0)
  {
    v10 = (*(*a4 + 72))(a4);
    *a2 = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiFormat(v10);
  }

  if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(a3, v11))
  {
    v13 = 2;
LABEL_7:
    *(a2 + 4) = v13;
    goto LABEL_8;
  }

  if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(a3, v12))
  {
    v13 = 6;
    goto LABEL_7;
  }

  *(a2 + 4) = 1;
  *(a2 + 36) = *(a1 + 288);
  *(a2 + 40) = *(a1 + 252);
  *(a2 + 48) = *(a1 + 248);
  *(a2 + 52) = *(a1 + 264);
  *(a2 + 60) = *(a1 + 260);
  *(a2 + 64) = *(a1 + 272);
  if ((*(a1 + 290) & 1) == 0)
  {
    if (a5 <= 0)
    {
      v21 = *(a1 + 296);
      v22 = *(a1 + 304);
    }

    else
    {
      v21 = *(a1 + 296);
      v22 = *(a1 + 304);
      if (((v22 - v21) >> 2) > a5)
      {
        v23 = v21[a5];
LABEL_38:
        if (v23 == 1)
        {
          v26 = 7;
        }

        else
        {
          v26 = 0;
        }

        if (v23 == 2)
        {
          v27 = 15;
        }

        else
        {
          v27 = v26;
        }

        *(a2 + 32) = v27;
        goto LABEL_8;
      }
    }

    if (v22 - v21 != 4)
    {
      goto LABEL_8;
    }

    v23 = *v21;
    goto LABEL_38;
  }

LABEL_8:
  v14 = *(a3 + 32);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *(a2 + 8) = v15;
  *(a2 + 12) = 1;
  if (v14)
  {
    v16 = (a3 + 24);
    if (sub_29A3F9DF4((a3 + 24)))
    {
      v18 = *(a3 + 32);
      if ((v18 & 4) != 0)
      {
        v16 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
      }

      v17.i32[0] = *v16;
      goto LABEL_29;
    }

    if (sub_29A346994((a3 + 24)))
    {
      v19 = *(a3 + 32);
      if ((v19 & 4) != 0)
      {
        v16 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
      }

      v20 = *v16;
      *v20.i32 = *v16;
    }

    else
    {
      if (!sub_29A293A9C((a3 + 24)))
      {
        if (sub_29A3FD314((a3 + 24)))
        {
          v25 = *(a3 + 32);
          if ((v25 & 4) != 0)
          {
            v16 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
          }

          v17.i64[0] = *v16;
        }

        else
        {
          if (!sub_29A3FD4E0((a3 + 24)))
          {
            if (sub_29A3FDE60((a3 + 24)))
            {
              v30 = *(a3 + 32);
              if ((v30 & 4) != 0)
              {
                v31 = (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
              }

              else
              {
                v31 = *v16;
              }

              v17.i64[0] = *v31;
              v17.i32[2] = *(v31 + 8);
              v17.i32[3] = 1.0;
            }

            else if (sub_29A3FE138((a3 + 24)))
            {
              v32 = *(a3 + 32);
              if ((v32 & 4) != 0)
              {
                v33 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
              }

              else
              {
                v33 = *v16;
              }

              *v17.f32 = vcvt_f32_f64(*v33);
              *&v34 = v33[1].f64[0];
              v17.i64[1] = __PAIR64__(1.0, v34);
            }

            else if (sub_29A3FEA70((a3 + 24)))
            {
              v35 = *(a3 + 32);
              if ((v35 & 4) != 0)
              {
                v36 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
              }

              else
              {
                v36 = *v16;
              }

              v17 = *v36;
            }

            else if (sub_29A3FED30((a3 + 24)))
            {
              v37 = *(a3 + 32);
              if ((v37 & 4) != 0)
              {
                v38 = (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
              }

              else
              {
                v38 = *v16;
              }

              v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*v38), v38[1]);
            }

            else if (sub_29AE8AC78((a3 + 24)))
            {
              v39 = *(a3 + 32);
              if ((v39 & 4) != 0)
              {
                v40 = (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
              }

              else
              {
                v40 = *v16;
              }

              v17.i64[1] = 0;
              v17.i32[0] = *v40;
              v17.f32[1] = v40[1];
            }

            else
            {
              v42[0] = "hdSt/renderPassState.cpp";
              v42[1] = "_ToVec4f";
              v42[2] = 890;
              v42[3] = "GfVec4f pxrInternal__aapl__pxrReserved__::_ToVec4f(const VtValue &)";
              v43 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v42, 1, "Unsupported clear value for draw target attachment.");
              v17 = 0uLL;
            }

            goto LABEL_29;
          }

          v28 = *(a3 + 32);
          if ((v28 & 4) != 0)
          {
            v29 = (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
          }

          else
          {
            v29 = *v16;
          }

          *v17.f32 = vcvt_f32_f64(*v29);
        }

        v17.i64[1] = 0x3F80000000000000;
LABEL_29:
        *(a2 + 16) = v17;
        return;
      }

      v24 = *(a3 + 32);
      if ((v24 & 4) != 0)
      {
        v16 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a3 + 24);
      }

      *v20.i32 = *v16;
    }

    v17 = vdupq_lane_s32(v20, 0);
    goto LABEL_29;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc@<X0>(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(this);
  result = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetUseAovMultiSample(this);
  v27 = *(this + 868);
  v28 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_29B6C6450;
  *a3 = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 15;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  v7 = *AovBindings;
  if (AovBindings[1] != *AovBindings)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (v7 + v8);
      v11 = *(v7 + v8 + 8);
      if (!v11)
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v12)
        {
          v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a2, (v12 + 312), (v7 + v8 + 16));
      }

      if (v28)
      {
        v13 = (*(*v11 + 80))(v11);
      }

      else
      {
        v13 = 0;
      }

      (*(*v11 + 128))(&v39, v11, v13);
      if ((sub_29AE8A2C8(&v39) & 1) == 0)
      {
        *&v29 = "hdSt/renderPassState.cpp";
        *(&v29 + 1) = "MakeGraphicsCmdsDesc";
        *&v30 = 991;
        *(&v30 + 1) = "HgiGraphicsCmdsDesc pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc(const HdRenderIndex *const) const";
        v31[0] = 0;
        v24 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Invalid render buffer texture", v14, v15);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "rv.IsHolding<HgiTextureHandle>()", v24) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if ((v40 & 4) != 0)
      {
        v16 = (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(&v39);
      }

      else
      {
        v16 = v39;
      }

      v33 = *v16;
      v32 = 0uLL;
      if ((v13 & v27) != 1)
      {
        goto LABEL_18;
      }

      (*(*v11 + 128))(&v34, v11, 0);
      if (sub_29AE8A2C8(&v34))
      {
        break;
      }

      *&v29 = "hdSt/renderPassState.cpp";
      *(&v29 + 1) = "MakeGraphicsCmdsDesc";
      *&v30 = 1002;
      *(&v30 + 1) = "HgiGraphicsCmdsDesc pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc(const HdRenderIndex *const) const";
      v31[0] = 0;
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "resolveRes.IsHolding<HgiTextureHandle>()", 0))
      {
        break;
      }

      sub_29A186B14(&v34);
LABEL_25:
      result = sub_29A186B14(&v39);
      ++v9;
      v7 = *AovBindings;
      v8 += 80;
      if (v9 >= 0xCCCCCCCCCCCCCCCDLL * ((AovBindings[1] - *AovBindings) >> 4))
      {
        return result;
      }
    }

    if ((v35 & 4) != 0)
    {
      v17 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
    }

    else
    {
      v17 = v34;
    }

    v32 = *v17;
    sub_29A186B14(&v34);
LABEL_18:
    v29 = xmmword_29B6C6450;
    v30 = 0uLL;
    *v31 = 15;
    v31[4] = 0;
    memset(&v31[8], 0, 40);
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentDesc(this, &v29, v10, v11, v9);
    if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(v10, v18) || pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(v10, v19))
    {
      v22 = *&v31[16];
      *(a3 + 56) = *v31;
      *(a3 + 72) = v22;
      *(a3 + 88) = *&v31[32];
      v23 = v30;
      *(a3 + 24) = v29;
      *(a3 + 40) = v23;
      *(a3 + 152) = v33;
      if (v32)
      {
        *(a3 + 168) = v32;
      }
    }

    else if (0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4) < 8 || (v34 = "hdSt/renderPassState.cpp", v35 = "MakeGraphicsCmdsDesc", v36 = 1019, v37 = "HgiGraphicsCmdsDesc pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc(const HdRenderIndex *const) const", v38 = 0, v25 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Too many aov bindings for color attachments", v20, v21), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v34, "desc.colorAttachmentDescs.size() < maxColorTex", v25) & 1) != 0))
    {
      sub_29AB8F8F8(a3, &v29);
      sub_29A03A998(a3 + 104, &v33);
      if (v32)
      {
        sub_29A03A998(a3 + 128, &v32);
      }
    }

    goto LABEL_25;
  }

  return result;
}

void sub_29AE8A270(_Unwind_Exception *a1)
{
  sub_29A186B14(v2 - 112);
  sub_29AB905FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE8A2C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B7141FCLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2098778);
}

__n128 pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetWorldToViewMatrix@<Q0>(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetWorldToViewMatrix(this, a2);
  }

  else
  {
    v3 = *(this + 29);
    *(a2 + 64) = *(this + 28);
    *(a2 + 80) = v3;
    v4 = *(this + 31);
    *(a2 + 96) = *(this + 30);
    *(a2 + 112) = v4;
    v5 = *(this + 25);
    *a2 = *(this + 24);
    *(a2 + 16) = v5;
    result = *(this + 26);
    v6 = *(this + 27);
    *(a2 + 32) = result;
    *(a2 + 48) = v6;
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetProjectionMatrix@<Q0>(pxrInternal__aapl__pxrReserved__::HdCamera **this@<X0>, uint64_t a2@<X8>)
{
  if (this[1])
  {
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetProjectionMatrix(this, a2);
  }

  else
  {
    v3 = *(this + 37);
    *(a2 + 64) = *(this + 36);
    *(a2 + 80) = v3;
    v4 = *(this + 39);
    *(a2 + 96) = *(this + 38);
    *(a2 + 112) = v4;
    v5 = *(this + 33);
    *a2 = *(this + 32);
    *(a2 + 16) = v5;
    result = *(this + 34);
    v6 = *(this + 35);
    *(a2 + 32) = result;
    *(a2 + 48) = v6;
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetClipPlanes(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this)
{
  if (*(this + 1))
  {

    return pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetClipPlanes(this);
  }

  else if (*(this + 129) == 1)
  {
    return (this + 640);
  }

  else if (atomic_load_explicit(&qword_2A174F508, memory_order_acquire))
  {
    return &qword_2A174F510;
  }

  else
  {
    v4[1] = v1;
    v4[2] = v2;
    sub_29B2CAB38(v4);
    return v4[0];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitPrimitiveState(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader **a3)
{
  result = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetHgiPrimitiveType(*a3);
  a2[6] = result;
  if (result == 4)
  {
    result = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(*a3);
    a2[80] = result;
    if (*(*a3 + 35) == 1)
    {
      v6 = *(*a3 + 6);
      v8 = v6 != 12 && (v6 & 0xFFFFFFFE) != 4;
      a2[79] = v8;
      a2[81] = 2 * (((v6 - 2) & 0xFFFFFFF6) == 0);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentState(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this, pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2, char a3)
{
  v22[2] = *MEMORY[0x29EDCA608];
  AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(this);
  v7 = *AovBindings;
  if (AovBindings[1] == *AovBindings)
  {
    goto LABEL_17;
  }

  v8 = AovBindings;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = (v7 + v9);
    v19 = xmmword_29B6C6450;
    v20 = 0uLL;
    LODWORD(v21[0]) = 15;
    BYTE4(v21[0]) = 0;
    memset(v21 + 8, 0, 40);
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentDesc(this, &v19, v7 + v9, *(v7 + v9 + 8), v10);
    if ((a3 & 1) == 0)
    {
      DWORD2(v19) = 2;
      v20 = 0uLL;
    }

    if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(v11, v12) || pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(v11, v13))
    {
      v14 = v21[1];
      *(a2 + 16) = v21[0];
      *(a2 + 17) = v14;
      *(a2 + 18) = v21[2];
      v15 = v20;
      *(a2 + 14) = v19;
      *(a2 + 15) = v15;
    }

    else
    {
      sub_29AB8F8F8(a2 + 200, &v19);
    }

    ++v10;
    v7 = *v8;
    v16 = v8[1];
    v9 += 80;
  }

  while (v10 < 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v8) >> 4));
  if (v7 == v16 || !pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetUseAovMultiSample(this) || (v17 = *(*v8 + 8), !(*(*v17 + 80))(v17)))
  {
LABEL_17:
    MSAASampleCount = 1;
  }

  else
  {
    MSAASampleCount = pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetMSAASampleCount(v17);
    if (*(this + 868) == 1)
    {
      (*(*v17 + 128))(v22, v17, 0);
      if (sub_29AE8A2C8(v22) & 1) != 0 || (*&v19 = "hdSt/renderPassState.cpp", *(&v19 + 1) = "_InitAttachmentState", *&v20 = 1134, *(&v20 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentState(HgiGraphicsPipelineDesc *, BOOL) const", LOBYTE(v21[0]) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v19, "resolveRes.IsHolding<HgiTextureHandle>()", 0)))
      {
        *(a2 + 304) = 1;
      }

      sub_29A186B14(v22);
    }
  }

  *(a2 + 33) = MSAASampleCount;
}

void sub_29AE8A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitDepthStencilState(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *this, pxrInternal__aapl__pxrReserved__::HgiDepthStencilState *a2)
{
  EnableDepthTest = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthTest(this);
  if (EnableDepthTest)
  {
    *a2 = 1;
    *(a2 + 1) = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiCompareFunction(*(this + 49));
    LOBYTE(EnableDepthTest) = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthMask(this);
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 1) = EnableDepthTest;
  if ((*(this + 184) & 1) == 0 && *(this + 185) == 1)
  {
    *(a2 + 8) = 1;
    *(a2 + 12) = *(this + 188);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetStencilEnabled(this))
  {
    *(a2 + 20) = 1;
    HgiCompareFunction = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiCompareFunction(*(this + 54));
    v7 = *(this + 55);
    *(a2 + 6) = HgiCompareFunction;
    *(a2 + 7) = v7;
    *(a2 + 8) = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiStencilOp(*(this + 57));
    *(a2 + 9) = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiStencilOp(*(this + 58));
    HgiStencilOp = pxrInternal__aapl__pxrReserved__::HdStHgiConversions::GetHgiStencilOp(*(this + 59));
    v9 = *(this + 56);
    *(a2 + 10) = HgiStencilOp;
    *(a2 + 11) = v9;
    *(a2 + 52) = *(a2 + 24);
    result = *(a2 + 36);
    *(a2 + 4) = result;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitMultiSampleState(uint64_t this, pxrInternal__aapl__pxrReserved__::HgiMultiSampleState *a2)
{
  *a2 = *(this + 380);
  if (*(this + 289) == 1)
  {
    *(a2 + 1) = 257;
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitRasterizationState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*(*a3 + 36) == 1)
  {
    *a2 = 1;
    v6 = *(v5 + 40);
    if (v6 > 0.0)
    {
      *(a2 + 4) = v6;
    }
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::ResolveCullMode(v5, *(a1 + 212));
  if (pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetEnableDepthClamp(a1))
  {
    *(a2 + 17) = 1;
  }

  *(a2 + 20) = *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDepthRange(a1);
  *(a2 + 28) = *(a1 + 369);
  result = (*(*a1 + 40))(a1);
  *(a2 + 32) = (result[1] - *result) >> 5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderPassState::InitGraphicsPipelineDesc(pxrInternal__aapl__pxrReserved__::HdStRenderPassState *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader **a3, char a4)
{
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitPrimitiveState(a1, a2, a3);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitDepthStencilState(a1, (a2 + 48));
  *(a2 + 128) = *(a1 + 380);
  if (*(a1 + 289) == 1)
  {
    *(a2 + 129) = 257;
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitRasterizationState(a1, a2 + 136, a3);

  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::_InitAttachmentState(a1, a2, a4);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStRenderPassState::GetGraphicsPipelineHash(pxrInternal__aapl__pxrReserved__::HdRenderPassState *a1, pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader **a2, int a3)
{
  v36 = (a1 + 204);
  v37 = a1 + 202;
  v34 = (a1 + 220);
  v35 = (a1 + 216);
  v32 = (a1 + 228);
  v33 = (a1 + 224);
  v30 = (a1 + 236);
  v31 = (a1 + 232);
  v28 = a1 + 244;
  v29 = a1 + 240;
  v26 = (a1 + 252);
  v27 = (a1 + 248);
  v24 = (a1 + 260);
  v25 = (a1 + 256);
  v6 = (a1 + 268);
  v22 = (a1 + 272);
  v23 = (a1 + 264);
  v21 = a1 + 288;
  v7 = a1 + 289;
  v8 = a1 + 290;
  v9 = a1 + 368;
  v10 = a1 + 369;
  v11 = (*(*a1 + 40))(a1);
  v43 = (v11[1] - *v11) >> 5;
  v12 = *a2;
  v42 = *(*a2 + 9);
  v41 = *(v12 + 40);
  v40 = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::ResolveCullMode(v12, *(a1 + 53));
  HgiPrimitiveType = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetHgiPrimitiveType(*a2);
  PrimitiveIndexSize = pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::GetPrimitiveIndexSize(*a2);
  v44 = 0;
  v45 = 0;
  sub_29AE8B2D0(&v44, a1 + 184, a1 + 185, a1 + 47, a1 + 48, a1 + 49, a1 + 200, a1 + 201, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v6, v6, v22, v21, v7, v8, v9, v10, &v43, a1 + 380, &v42, &v41, &v40, &HgiPrimitiveType, &PrimitiveIndexSize);
  v13 = bswap64(0x9E3779B97F4A7C55 * v44);
  AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(a1);
  v15 = *AovBindings;
  v16 = *(AovBindings + 8);
  if (*AovBindings != v16)
  {
    do
    {
      v17 = v15[1];
      if ((*(*v17 + 80))(v17))
      {
        MSAASampleCount = pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::GetMSAASampleCount(v17);
      }

      else
      {
        MSAASampleCount = 1;
      }

      LODWORD(v43) = MSAASampleCount;
      if (a3)
      {
        v19 = v15[4] != 0;
      }

      else
      {
        v19 = 0;
      }

      LOBYTE(v41) = v19;
      v42 = (*(*v17 + 72))(v17);
      v45 = 1;
      v44 = v13;
      sub_29AE8CA6C(&v44, v15, &v42, &v43, &v41);
      v13 = bswap64(0x9E3779B97F4A7C55 * v44);
      v15 += 10;
    }

    while (v15 != v16);
  }

  return v13;
}

uint64_t sub_29AE8AC78(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B710CBCLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2098A40);
}

void sub_29AE8AD04(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  sub_29AE8AD68(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29AE8AD68(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098BE8;
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader((a1 + 3));
  return a1;
}

void sub_29AE8ADC4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  sub_29AE8AE28(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29AE8AE28(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098C90;
  pxrInternal__aapl__pxrReserved__::HdSt_FallbackLightingShader::HdSt_FallbackLightingShader((a1 + 3));
  return a1;
}

void sub_29AE8AEA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2098C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE8AF10(uint64_t a1, _OWORD *a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      if (*(a1 + 24))
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 16 * v3) = *a2;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2CAC24(a1, v3, a2);
  }

  sub_29B2CABA8(a1);
}

unint64_t sub_29AE8AFB8()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "renderPassState", 0);
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
  atomic_compare_exchange_strong(&qword_2A174F500, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F500);
  }

  return v0;
}

void sub_29AE8B0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void *sub_29AE8B124@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X2>, BOOL *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE8B198(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE8B198(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, BOOL *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4);
  return a1;
}

void *sub_29AE8B1F8@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = sub_29AE8B26C(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE8B26C(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, 1);
  return a1;
}

uint64_t sub_29AE8B2D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, float *a4, float *a5, unsigned int *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9, float *a10, unsigned int *a11, int *a12, int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned __int8 *a17, uint64_t a18, float *a19, unsigned int *a20, unsigned int *a21, unsigned int *a22, unsigned int *a23, unsigned int *a24, unsigned int *a25, float *a26, unsigned __int8 *a27, unsigned __int8 *a28, unsigned __int8 *a29, unsigned __int8 *a30, unsigned __int8 *a31, uint64_t *a32, unsigned __int8 *a33, unsigned int *a34, float *a35, unsigned int *a36, unsigned int *a37, int *a38)
{
  v38 = *a2;
  if (*(a1 + 8))
  {
    v38 += (*a1 + v38 + (*a1 + v38) * (*a1 + v38)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v38;

  return sub_29AE8B3EC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a19, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_29AE8B3EC(uint64_t a1, unsigned __int8 *a2, float *a3, float *a4, unsigned int *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, float *a9, unsigned int *a10, int *a11, int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned __int8 *a16, uint64_t a17, float *a18, unsigned int *a19, unsigned int *a20, unsigned int *a21, unsigned int *a22, unsigned int *a23, unsigned int *a24, float *a25, unsigned __int8 *a26, unsigned __int8 *a27, unsigned __int8 *a28, unsigned __int8 *a29, unsigned __int8 *a30, uint64_t *a31, unsigned __int8 *a32, unsigned int *a33, float *a34, unsigned int *a35, unsigned int *a36, int *a37)
{
  v37 = *a2;
  if (*(a1 + 8))
  {
    v37 += (*a1 + v37 + (*a1 + v37) * (*a1 + v37)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v37;

  return sub_29AE8B504(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a18, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_29AE8B504(uint64_t a1, float *a2, float *a3, unsigned int *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, float *a8, unsigned int *a9, int *a10, int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned __int8 *a15, uint64_t a16, float *a17, unsigned int *a18, unsigned int *a19, unsigned int *a20, unsigned int *a21, unsigned int *a22, unsigned int *a23, float *a24, unsigned __int8 *a25, unsigned __int8 *a26, unsigned __int8 *a27, unsigned __int8 *a28, unsigned __int8 *a29, uint64_t *a30, unsigned __int8 *a31, unsigned int *a32, float *a33, unsigned int *a34, unsigned int *a35, int *a36)
{
  v36 = *a2;
  if (*a2 == 0.0)
  {
    v36 = 0.0;
  }

  v37 = LODWORD(v36);
  if (*(a1 + 8))
  {
    v37 = ((*a1 + LODWORD(v36) + (*a1 + LODWORD(v36)) * (*a1 + LODWORD(v36))) >> 1) + LODWORD(v36);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v37;

  return sub_29AE8B628(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a17, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_29AE8B628(uint64_t a1, float *a2, unsigned int *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, float *a7, unsigned int *a8, int *a9, int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned __int8 *a14, uint64_t a15, float *a16, unsigned int *a17, unsigned int *a18, unsigned int *a19, unsigned int *a20, unsigned int *a21, unsigned int *a22, float *a23, unsigned __int8 *a24, unsigned __int8 *a25, unsigned __int8 *a26, unsigned __int8 *a27, unsigned __int8 *a28, uint64_t *a29, unsigned __int8 *a30, unsigned int *a31, float *a32, unsigned int *a33, unsigned int *a34, int *a35)
{
  v35 = *a2;
  if (*a2 == 0.0)
  {
    v35 = 0.0;
  }

  v36 = LODWORD(v35);
  if (*(a1 + 8))
  {
    v36 = ((*a1 + LODWORD(v35) + (*a1 + LODWORD(v35)) * (*a1 + LODWORD(v35))) >> 1) + LODWORD(v35);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v36;

  return sub_29AE8B744(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a16, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_29AE8B744(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, float *a6, unsigned int *a7, int *a8, int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned __int8 *a13, uint64_t a14, float *a15, unsigned int *a16, unsigned int *a17, unsigned int *a18, unsigned int *a19, unsigned int *a20, unsigned int *a21, float *a22, unsigned __int8 *a23, unsigned __int8 *a24, unsigned __int8 *a25, unsigned __int8 *a26, unsigned __int8 *a27, uint64_t *a28, unsigned __int8 *a29, unsigned int *a30, float *a31, unsigned int *a32, unsigned int *a33, int *a34)
{
  v34 = *a2;
  if (*(a1 + 8))
  {
    v34 += (*a1 + v34 + (*a1 + v34) * (*a1 + v34)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v34;

  return sub_29AE8B840(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_29AE8B840(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, float *a5, unsigned int *a6, int *a7, int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned __int8 *a12, uint64_t a13, float *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17, unsigned int *a18, unsigned int *a19, unsigned int *a20, float *a21, unsigned __int8 *a22, unsigned __int8 *a23, unsigned __int8 *a24, unsigned __int8 *a25, unsigned __int8 *a26, uint64_t *a27, unsigned __int8 *a28, unsigned int *a29, float *a30, unsigned int *a31, unsigned int *a32, int *a33)
{
  v33 = *a2;
  if (*(a1 + 8))
  {
    v33 += (*a1 + v33 + (*a1 + v33) * (*a1 + v33)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v33;

  return sub_29AE8B93C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_29AE8B93C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, float *a4, unsigned int *a5, int *a6, int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned __int8 *a11, uint64_t a12, float *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17, unsigned int *a18, unsigned int *a19, float *a20, unsigned __int8 *a21, unsigned __int8 *a22, unsigned __int8 *a23, unsigned __int8 *a24, unsigned __int8 *a25, uint64_t *a26, unsigned __int8 *a27, unsigned int *a28, float *a29, unsigned int *a30, unsigned int *a31, int *a32)
{
  v32 = *a2;
  if (*(a1 + 8))
  {
    v32 += (*a1 + v32 + (*a1 + v32) * (*a1 + v32)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v32;

  return sub_29AE8BA30(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_29AE8BA30(uint64_t a1, unsigned __int8 *a2, float *a3, unsigned int *a4, int *a5, int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned __int8 *a10, uint64_t a11, float *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17, unsigned int *a18, float *a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 *a22, unsigned __int8 *a23, unsigned __int8 *a24, uint64_t *a25, unsigned __int8 *a26, unsigned int *a27, float *a28, unsigned int *a29, unsigned int *a30, int *a31)
{
  v31 = *a2;
  if (*(a1 + 8))
  {
    v31 += (*a1 + v31 + (*a1 + v31) * (*a1 + v31)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v31;

  return sub_29AE8BB24(a1, a3, a4, a5, a6, a7, a8, a9, a10, a12, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_29AE8BB24(uint64_t a1, float *a2, unsigned int *a3, int *a4, int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned __int8 *a9, uint64_t a10, float *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17, float *a18, unsigned __int8 *a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 *a22, unsigned __int8 *a23, uint64_t *a24, unsigned __int8 *a25, unsigned int *a26, float *a27, unsigned int *a28, unsigned int *a29, int *a30)
{
  v39 = 0;
  v40 = 0;
  sub_29A18994C(&v39, a2, a2 + 1);
  v31 = bswap64(0x9E3779B97F4A7C55 * v39);
  if (*(a1 + 8))
  {
    v31 += (*a1 + v31 + (*a1 + v31) * (*a1 + v31)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v31;
  return sub_29AE8BCA4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_29AE8BCA4(uint64_t a1, unsigned int *a2, int *a3, int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned __int8 *a8, uint64_t a9, float *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, float *a17, unsigned __int8 *a18, unsigned __int8 *a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 *a22, uint64_t *a23, unsigned __int8 *a24, unsigned int *a25, float *a26, unsigned int *a27, unsigned int *a28, int *a29)
{
  v29 = *a2;
  if (*(a1 + 8))
  {
    v29 += (*a1 + v29 + (*a1 + v29) * (*a1 + v29)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v29;

  return sub_29AE8BD90(a1, a3, a4, a5, a6, a7, a8, a10, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_29AE8BD90(uint64_t a1, int *a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned __int8 *a7, float *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, float *a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 *a19, unsigned __int8 *a20, unsigned __int8 *a21, uint64_t *a22, unsigned __int8 *a23, unsigned int *a24, float *a25, unsigned int *a26, unsigned int *a27, int *a28)
{
  v28 = *a2;
  if (*(a1 + 8))
  {
    v28 += (*a1 + v28 + (*a1 + v28) * (*a1 + v28)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v28;

  return sub_29AE8BE70(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_29AE8BE70(uint64_t a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned __int8 *a6, float *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, float *a15, unsigned __int8 *a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 *a19, unsigned __int8 *a20, uint64_t *a21, unsigned __int8 *a22, unsigned int *a23, float *a24, unsigned int *a25, unsigned int *a26, int *a27)
{
  v28 = *a2;
  if (*(a1 + 8))
  {
    v28 += (*a1 + v28 + (*a1 + v28) * (*a1 + v28)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v28;

  return sub_29AE8BF3C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_29AE8BF3C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned __int8 *a5, float *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, float *a14, unsigned __int8 *a15, unsigned __int8 *a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 *a19, uint64_t *a20, unsigned __int8 *a21, unsigned int *a22, float *a23, unsigned int *a24, unsigned int *a25, int *a26)
{
  v27 = *a2;
  if (*(a1 + 8))
  {
    v27 += (*a1 + v27 + (*a1 + v27) * (*a1 + v27)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v27;

  return sub_29AE8C004(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_29AE8C004(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, float *a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 *a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t *a19, unsigned __int8 *a20, unsigned int *a21, float *a22, unsigned int *a23, unsigned int *a24, int *a25)
{
  v26 = *a2;
  if (*(a1 + 8))
  {
    v26 += (*a1 + v26 + (*a1 + v26) * (*a1 + v26)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v26;

  return sub_29AE8C0C0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_29AE8C0C0(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, float *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, float *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 *a16, unsigned __int8 *a17, uint64_t *a18, unsigned __int8 *a19, unsigned int *a20, float *a21, unsigned int *a22, unsigned int *a23, int *a24)
{
  v25 = *a2;
  if (*(a1 + 8))
  {
    v25 += (*a1 + v25 + (*a1 + v25) * (*a1 + v25)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v25;

  return sub_29AE8C178(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_29AE8C178(uint64_t a1, unsigned __int8 *a2, float *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, float *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 *a16, uint64_t *a17, unsigned __int8 *a18, unsigned int *a19, float *a20, unsigned int *a21, unsigned int *a22, int *a23)
{
  v24 = *a2;
  if (*(a1 + 8))
  {
    v24 += (*a1 + v24 + (*a1 + v24) * (*a1 + v24)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v24;

  return sub_29AE8C224(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_29AE8C224(uint64_t a1, float *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, float *a10, unsigned __int8 *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 *a15, uint64_t *a16, unsigned __int8 *a17, unsigned int *a18, float *a19, unsigned int *a20, unsigned int *a21, int *a22)
{
  v23 = *a2;
  if (*a2 == 0.0)
  {
    v23 = 0.0;
  }

  v24 = LODWORD(v23);
  if (*(a1 + 8))
  {
    v24 = ((*a1 + LODWORD(v23) + (*a1 + LODWORD(v23)) * (*a1 + LODWORD(v23))) >> 1) + LODWORD(v23);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v24;

  return sub_29AE8C2E0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_29AE8C2E0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, float *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, uint64_t *a15, unsigned __int8 *a16, unsigned int *a17, float *a18, unsigned int *a19, unsigned int *a20, int *a21)
{
  v22 = *a2;
  if (*(a1 + 8))
  {
    v22 += (*a1 + v22 + (*a1 + v22) * (*a1 + v22)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v22;

  return sub_29AE8C37C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_29AE8C37C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, float *a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, unsigned __int8 *a13, uint64_t *a14, unsigned __int8 *a15, unsigned int *a16, float *a17, unsigned int *a18, unsigned int *a19, int *a20)
{
  v21 = *a2;
  if (*(a1 + 8))
  {
    v21 += (*a1 + v21 + (*a1 + v21) * (*a1 + v21)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v21;

  return sub_29AE8C414(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_29AE8C414(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, float *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, uint64_t *a13, unsigned __int8 *a14, unsigned int *a15, float *a16, unsigned int *a17, unsigned int *a18, int *a19)
{
  v20 = *a2;
  if (*(a1 + 8))
  {
    v20 += (*a1 + v20 + (*a1 + v20) * (*a1 + v20)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v20;

  return sub_29AE8C4A0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_29AE8C4A0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, float *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t *a12, unsigned __int8 *a13, unsigned int *a14, float *a15, unsigned int *a16, unsigned int *a17, int *a18)
{
  v19 = *a2;
  if (*(a1 + 8))
  {
    v19 += (*a1 + v19 + (*a1 + v19) * (*a1 + v19)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v19;

  return sub_29AE8C528(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_29AE8C528(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, float *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned __int8 *a10, uint64_t *a11, unsigned __int8 *a12, unsigned int *a13, float *a14, unsigned int *a15, unsigned int *a16, int *a17)
{
  v17 = *a2;
  if (*(a1 + 8))
  {
    v17 += (*a1 + v17 + (*a1 + v17) * (*a1 + v17)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_29AE8C598(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_29AE8C598(uint64_t a1, unsigned int *a2, unsigned int *a3, float *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t *a10, unsigned __int8 *a11, unsigned int *a12, float *a13, unsigned int *a14, unsigned int *a15, int *a16)
{
  v16 = *a2;
  if (*(a1 + 8))
  {
    v16 += (*a1 + v16 + (*a1 + v16) * (*a1 + v16)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_29AE8C604(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_29AE8C604(uint64_t a1, unsigned int *a2, float *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, uint64_t *a9, unsigned __int8 *a10, unsigned int *a11, float *a12, unsigned int *a13, unsigned int *a14, int *a15)
{
  v15 = *a2;
  if (*(a1 + 8))
  {
    v15 += (*a1 + v15 + (*a1 + v15) * (*a1 + v15)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_29AE8C66C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_29AE8C66C(uint64_t a1, float *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t *a8, unsigned __int8 *a9, unsigned int *a10, float *a11, unsigned int *a12, unsigned int *a13, int *a14)
{
  v23 = 0;
  v24 = 0;
  sub_29A18B6BC(&v23, a2, a2 + 1, a2 + 2, a2 + 3);
  v18 = bswap64(0x9E3779B97F4A7C55 * v23);
  if (*(a1 + 8))
  {
    v18 += (*a1 + v18 + (*a1 + v18) * (*a1 + v18)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return sub_29AE8C760(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_29AE8C760(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, uint64_t *a7, unsigned __int8 *a8, unsigned int *a9, float *a10, unsigned int *a11, unsigned int *a12, int *a13)
{
  v13 = *a2;
  if (*(a1 + 8))
  {
    v13 += (*a1 + v13 + (*a1 + v13) * (*a1 + v13)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_29AE8C7C0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_29AE8C7C0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t *a6, unsigned __int8 *a7, unsigned int *a8, float *a9, unsigned int *a10, unsigned int *a11, int *a12)
{
  v12 = *a2;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_29AE8C81C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_29AE8C81C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t *a5, unsigned __int8 *a6, unsigned int *a7, float *a8, unsigned int *a9, unsigned int *a10, int *a11)
{
  v11 = *a2;
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29AE8C874(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29AE8C874(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5, unsigned int *a6, float *a7, unsigned int *a8, unsigned int *a9, int *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29AE8C8C8(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29AE8C8C8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, unsigned __int8 *a4, unsigned int *a5, float *a6, unsigned int *a7, unsigned int *a8, int *a9)
{
  v9 = *a2;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29AE8C918(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29AE8C918(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned int *a4, float *a5, unsigned int *a6, unsigned int *a7, int *a8)
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
  return sub_29AE8C960(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29AE8C960(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, float *a4, unsigned int *a5, unsigned int *a6, int *a7)
{
  v7 = *a2;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29AE8C9A4(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29AE8C9A4(uint64_t a1, unsigned int *a2, float *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29AE8C9E4(a1, a3, a4, a5, a6);
}

uint64_t sub_29AE8C9E4(uint64_t a1, float *a2, unsigned int *a3, unsigned int *a4, int *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = LODWORD(v5);
  if (*(a1 + 8))
  {
    v6 = ((*a1 + LODWORD(v5) + (*a1 + LODWORD(v5)) * (*a1 + LODWORD(v5))) >> 1) + LODWORD(v5);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29AE8CA34(a1, a3, a4, a5);
}

uint64_t sub_29AE8CA34(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29ADFADAC(a1, a3, a4);
}

uint64_t sub_29AE8CA6C(uint64_t a1, void *a2, int *a3, unsigned int *a4, unsigned __int8 *a5)
{
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AE8CAAC(a1, a3, a4, a5);
}

uint64_t sub_29AE8CAAC(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AE8CAE4(a1, a3, a4);
}

uint64_t sub_29AE8CAE4(uint64_t result, unsigned int *a2, unsigned __int8 *a3)
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

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

void sub_29AE8CB24()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDST_ENABLE_RESOURCE_INSTANCING))
  {
    sub_29B2CACB4();
  }
}

pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::HdStResourceRegistry(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this, pxrInternal__aapl__pxrReserved__::Hgi *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdResourceRegistry::HdResourceRegistry(this);
  v5 = 0;
  *v4 = &unk_2A2098CE0;
  v4[1] = a2;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[5] = 0;
  v4[4] = 0;
  v4[6] = v4 + 7;
  v4[3] = sub_29AE944A0;
  v4[10] = 0;
  do
  {
    v6 = (this + v5 * 8);
    v6[16] = 0;
    v6[17] = 0;
    v6[18] = 0;
    v6[14] = 0;
    v6[13] = 0;
    v6[15] = &v4[v5 + 16];
    v6[12] = sub_29AE944B0;
    v5 += 8;
  }

  while (v5 != 32);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry((this + 344));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry((this + 904));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry((this + 1464));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry((this + 2024));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry((this + 2584));
  v7 = operator new(0x10uLL);
  *v7 = &unk_2A2099FD8;
  v7[1] = this;
  *(this + 393) = v7;
  v8 = operator new(0x10uLL);
  *v8 = &unk_2A2099FD8;
  v8[1] = this;
  *(this + 394) = v8;
  v9 = operator new(0x10uLL);
  *v9 = &unk_2A2097F48;
  v9[1] = this;
  *(this + 395) = v9;
  v10 = operator new(0x10uLL);
  *v10 = &unk_2A2097FB0;
  v10[1] = this;
  *(this + 396) = v10;
  v11 = operator new(0x10uLL);
  *v11 = &unk_2A209A150;
  v11[1] = this;
  *(this + 397) = v11;
  *(this + 199) = 0u;
  *(this + 200) = 0u;
  *(this + 201) = 0u;
  sub_29AE92B48(this + 3232, 8uLL, &v15);
  *(this + 474) = 850045863;
  *(this + 3800) = 0u;
  *(this + 3816) = 0u;
  *(this + 3832) = 0u;
  *(this + 481) = 0;
  sub_29AE92D24(this + 3856, 8uLL, &v15);
  *(this + 552) = 850045863;
  *(this + 559) = 0;
  *(this + 4424) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  sub_29AE92EB8(this + 4480, 8uLL, &v15);
  *(this + 630) = 850045863;
  *(this + 637) = 0;
  *(this + 5048) = 0u;
  *(this + 5064) = 0u;
  *(this + 5080) = 0u;
  sub_29AE94574(this + 5104, 8uLL, &v15);
  sub_29AE94574(this + 5664, 8uLL, &v15);
  sub_29AE9304C(this + 6224, 8uLL, &v15);
  *(this + 848) = 850045863;
  *(this + 855) = 0;
  *(this + 6792) = 0u;
  *(this + 6808) = 0u;
  *(this + 6824) = 0u;
  sub_29AE9304C(this + 6848, 8uLL, &v15);
  *(this + 926) = 850045863;
  *(this + 933) = 0;
  *(this + 7416) = 0u;
  *(this + 7432) = 0u;
  *(this + 7448) = 0u;
  sub_29AE931E0(this + 7472, 8uLL, &v15);
  *(this + 1004) = 850045863;
  *(this + 1011) = 0;
  *(this + 8040) = 0u;
  *(this + 8056) = 0u;
  *(this + 8072) = 0u;
  sub_29AE93374(this + 8096, 8uLL, &v15);
  *(this + 1082) = 850045863;
  *(this + 1089) = 0;
  *(this + 8664) = 0u;
  *(this + 8680) = 0u;
  *(this + 8696) = 0u;
  sub_29AE93508(this + 8720, 8uLL, &v15);
  *(this + 1160) = 850045863;
  *(this + 1167) = 0;
  *(this + 9288) = 0u;
  *(this + 9304) = 0u;
  *(this + 9320) = 0u;
  sub_29AE9369C(this + 9344, 8uLL, &v15);
  *(this + 1238) = 850045863;
  *(this + 1245) = 0;
  *(this + 9912) = 0u;
  *(this + 9928) = 0u;
  *(this + 9944) = 0u;
  sub_29AE93830(this + 9968, 8uLL, &v15);
  *(this + 1316) = 850045863;
  *(this + 1323) = 0;
  *(this + 10536) = 0u;
  *(this + 10552) = 0u;
  *(this + 10568) = 0u;
  v12 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::HdSt_TextureHandleRegistry(v12, this);
  *(this + 1324) = v12;
  sub_29AE939C4(this + 10600, 8uLL, &v15);
  *(this + 1395) = 850045863;
  *(this + 698) = 0u;
  *(this + 699) = 0u;
  *(this + 700) = 0u;
  *(this + 1402) = 0;
  sub_29AE93B58(this + 11224, 8uLL, &v15);
  *(this + 1473) = 850045863;
  *(this + 737) = 0u;
  *(this + 738) = 0u;
  *(this + 739) = 0u;
  *(this + 1480) = 0;
  sub_29AE93CEC(this + 11848, 8uLL, &v15);
  *(this + 1551) = 850045863;
  *(this + 776) = 0u;
  *(this + 777) = 0u;
  *(this + 778) = 0u;
  *(this + 1558) = 0;
  sub_29AE946CC(this + 12472, 8uLL, &v15);
  *(this + 13032) = 0u;
  v13 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::HdStStagingBuffer(v13, this);
  *(this + 1631) = v13;
  return this;
}

void sub_29AE8D09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  operator delete(v14);
  v23 = *(v12 + 13040);
  *(v12 + 13040) = 0;
  if (v23)
  {
    sub_29B2CA00C(v23);
  }

  v24 = *(v12 + v21);
  *(v12 + v21) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_29AE93E80(v12 + v15, v22);
  std::mutex::~mutex((v12 + 12408));
  sub_29AE93FF4(v12 + v20, v25);
  std::mutex::~mutex((v12 + 11784));
  sub_29AE94028(v12 + v19, v26);
  std::mutex::~mutex((v12 + 11160));
  sub_29AE9405C(v12 + v18, v27);
  sub_29AE94428((v12 + 10592), 0);
  std::mutex::~mutex((v12 + 10528));
  sub_29AE94090(v12 + v13, v28);
  std::mutex::~mutex((v12 + 9904));
  sub_29AE940C4(v12 + v16, v29);
  std::mutex::~mutex((v12 + 9280));
  sub_29AE940F8(v12 + v17, v30);
  std::mutex::~mutex((v12 + 8656));
  sub_29AE9412C(v12 + 8096, v31);
  std::mutex::~mutex((v12 + 8032));
  sub_29AE94160(v12 + 7472, v32);
  std::mutex::~mutex((v12 + 7408));
  sub_29AE94194(v12 + 6848, v33);
  std::mutex::~mutex((v12 + 6784));
  sub_29AE94194(v12 + 6224, v34);
  sub_29AE941C8(v12 + 5664, v35);
  sub_29AE941C8(v12 + 5104, v36);
  std::mutex::~mutex((v12 + 5040));
  sub_29AE94358(v12 + 4480, v37);
  std::mutex::~mutex((v12 + 4416));
  sub_29AE9438C(v12 + 3856, v38);
  std::mutex::~mutex((v12 + 3792));
  sub_29AE943C0(v12 + 3232, v39);
  a12 = v12 + 3208;
  sub_29A0176E4(&a12);
  a12 = v12 + 3184;
  sub_29A0176E4(&a12);
  v41 = *(v12 + 3176);
  *(v12 + 3176) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v12 + 3168);
  *(v12 + 3168) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(v12 + 3160);
  *(v12 + 3160) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(v12 + 3152);
  *(v12 + 3152) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(v12 + 3144);
  *(v12 + 3144) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  sub_29AE943F4(v12 + 2584, v40);
  sub_29AE943F4(v12 + 2024, v46);
  sub_29AE943F4(v12 + 1464, v47);
  sub_29AE943F4(v12 + 904, v48);
  sub_29AE943F4(v12 + 344, v49);
  v50 = (v12 + 280);
  v51 = -256;
  do
  {
    v50 = sub_29AE944C0(v50) - 8;
    v51 += 64;
  }

  while (v51);
  sub_29AE94824((v12 + 16));
  pxrInternal__aapl__pxrReserved__::HdResourceRegistry::~HdResourceRegistry(v12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::~HdStResourceRegistry(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  pxrInternal__aapl__pxrReserved__::HdResourceRegistry::GarbageCollect(this);
  sub_29AE94464(this + 1631, 0);
  v3 = *(this + 1630);
  *(this + 1630) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1629);
  *(this + 1629) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_29AE93E80(this + 12472, v2);
  std::mutex::~mutex((this + 12408));
  sub_29AE93FF4(this + 11848, v5);
  std::mutex::~mutex((this + 11784));
  sub_29AE94028(this + 11224, v6);
  std::mutex::~mutex((this + 11160));
  sub_29AE9405C(this + 10600, v7);
  sub_29AE94428(this + 1324, 0);
  std::mutex::~mutex((this + 10528));
  sub_29AE94090(this + 9968, v8);
  std::mutex::~mutex((this + 9904));
  sub_29AE940C4(this + 9344, v9);
  std::mutex::~mutex(this + 145);
  sub_29AE940F8(this + 8720, v10);
  std::mutex::~mutex((this + 8656));
  sub_29AE9412C(this + 8096, v11);
  std::mutex::~mutex((this + 8032));
  sub_29AE94160(this + 7472, v12);
  std::mutex::~mutex((this + 7408));
  sub_29AE94194(this + 6848, v13);
  std::mutex::~mutex(this + 106);
  sub_29AE94194(this + 6224, v14);
  sub_29AE941C8(this + 5664, v15);
  sub_29AE941C8(this + 5104, v16);
  std::mutex::~mutex((this + 5040));
  sub_29AE94358(this + 4480, v17);
  std::mutex::~mutex(this + 69);
  sub_29AE9438C(this + 3856, v18);
  std::mutex::~mutex((this + 3792));
  sub_29AE943C0(this + 3232, v19);
  v31 = (this + 3208);
  sub_29A0176E4(&v31);
  v31 = (this + 3184);
  sub_29A0176E4(&v31);
  v21 = *(this + 397);
  *(this + 397) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 396);
  *(this + 396) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 395);
  *(this + 395) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 394);
  *(this + 394) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 393);
  *(this + 393) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  sub_29AE943F4(this + 2584, v20);
  sub_29AE943F4(this + 2024, v26);
  sub_29AE943F4(this + 1464, v27);
  sub_29AE943F4(this + 904, v28);
  sub_29AE943F4(this + 344, v29);
  for (i = 280; i != 24; i -= 64)
  {
    sub_29AE944C0((this + i));
  }

  sub_29AE94824(this + 2);
  pxrInternal__aapl__pxrReserved__::HdResourceRegistry::~HdResourceRegistry(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::~HdStResourceRegistry(this);

  free(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::InvalidateShaderRegistry(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  sub_29AE8D8D4(this + 7472);
  sub_29AE8D944(this + 8096);
  sub_29AE8D9B4(this + 9344);

  sub_29AE8DA24(this + 9968);
}

void sub_29AE8D8D4(uint64_t a1)
{
  sub_29A0ECEEC(&v2, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>>::Invalidate() [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>]");
  sub_29AE948E8(a1);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }
}

void sub_29AE8D944(uint64_t a1)
{
  sub_29A0ECEEC(&v2, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>>::Invalidate() [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>]");
  sub_29AE948E8(a1);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }
}

void sub_29AE8D9B4(uint64_t a1)
{
  sub_29A0ECEEC(&v2, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>>::Invalidate() [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>]");
  sub_29AE948E8(a1);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }
}

void sub_29AE8DA24(uint64_t a1)
{
  sub_29A0ECEEC(&v2, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<MaterialX__aapl::Shader>>::Invalidate() [VALUE = std::shared_ptr<MaterialX__aapl::Shader>]");
  sub_29AE948E8(a1);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::ReloadResource(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens);
  if (!v6)
  {
    v6 = sub_29AE94938(&pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens);
    if (!v12)
    {
      v12 = sub_29AE94938(&pxrInternal__aapl__pxrReserved__::HdResourceTypeTokens);
    }

    if ((*v12 ^ *a2) <= 7)
    {
      v13 = *(*(a1 + 10592) + 232);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v18);
      pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::MarkTextureFilePathDirty(v13, &v18, v14, v15);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  else
  {
    v18 = 0;
    LOBYTE(v19) = 0;
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

    pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v18, v8, v9);
    v16 = bswap64(0x9E3779B97F4A7C55 * v18);
    sub_29AE90770(a1 + 9344, &v16, &v18);
    v16 = v19;
    v17 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = operator new(0x138uLL);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v11)
    {
      v11 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v10, a3, v11 + 112);
    sub_29AE8DCDC(&v16, v10);
    sub_29AE65CC4(&v18, &v16);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v22 == 1)
    {
      std::mutex::unlock(v21);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }
}

void sub_29AE8DC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE8DCDC(void *a1, uint64_t a2)
{
  sub_29AE949C4(&v5, a2);
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

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetResourceAllocation(pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  ResourceAllocation = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation((this + 43), this[393], a2);
  v5 = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation((this + 113), this[394], a2);
  v6 = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation((this + 183), this[395], a2);
  v7 = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation((this + 253), this[396], a2);
  v8 = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation((this + 323), this[397], a2);
  v9 = v5 + ResourceAllocation;
  v33 = (v5 + ResourceAllocation);
  v34 = &unk_2A2044983;
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v10)
  {
    v10 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v10 + 23) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, EmptyString);
  sub_29A18606C(v12, &v33);
  sub_29A186B14(&v33);
  v33 = v6;
  v34 = &unk_2A2044983;
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v13)
  {
    v13 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v13 + 37) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = ((*(v13 + 37) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v14);
  sub_29A18606C(v15, &v33);
  sub_29A186B14(&v33);
  v33 = v7;
  v34 = &unk_2A2044983;
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v16)
  {
    v16 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v16 + 31) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v17 = ((*(v16 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
  }

  v18 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v17);
  sub_29A18606C(v18, &v33);
  sub_29A186B14(&v33);
  v33 = v8;
  v34 = &unk_2A2044983;
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v19)
  {
    v19 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v19 + 30) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v20 = ((*(v19 + 30) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
  }

  v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v20);
  sub_29A18606C(v21, &v33);
  sub_29A186B14(&v33);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v22)
  {
    v22 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v22 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = ((*(v22 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v23 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  v24 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v23);
  v25 = v24;
  v26 = v24[1];
  if (v26 && (v24[1] & 3) != 3)
  {
    (*((v26 & 0xFFFFFFFFFFFFFFF8) + 32))(v24);
  }

  *v25 = v6 + v9 + v8 + v7;
  v25[1] = &unk_2A2044983;
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_TallyResourceAllocation(this, a2);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v27)
  {
    v27 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v27 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v28 = ((*(v27 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
  }

  v32 = 0;
  v33 = &v32;
  v29 = sub_29AE7FA3C(a2, v28, &v33);
  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v30)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v31)
  {
    v31 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v30, (v31 + 112), v29);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_TallyResourceAllocation(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v3)
  {
    v3 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v3 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v3 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v55 = 0;
  NumberOfTextureHandles = &v55;
  v5 = sub_29AE7FA3C(a2, EmptyString, &NumberOfTextureHandles);
  v6 = v5;
  v7 = *(this + 398);
  for (i = *(this + 399); v7 != i; v7 += 2)
  {
    if (!*v7)
    {
      NumberOfTextureHandles = "hdSt/resourceRegistry.cpp";
      v57 = "_TallyResourceAllocation";
      v58 = 1255;
      v59 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_TallyResourceAllocation(VtDictionary *) const";
      v60 = 0;
      v5 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&NumberOfTextureHandles, "buffer", 0);
      if ((v5 & 1) == 0)
      {
        continue;
      }
    }

    v9 = *v7;
    if ((*(*v7 + 128) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = ((*(*v7 + 128) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
      v9 = *v7;
    }

    v12 = *(v9 + 208);
    v11 = *(v9 + 216);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *(v12 + 16);
      sub_29A014BEC(v11);
    }

    else
    {
      v13 = *(v12 + 16);
    }

    v55 = 0;
    NumberOfTextureHandles = &v55;
    v14 = sub_29AE7FA3C(a2, v10, &NumberOfTextureHandles);
    v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v10);
    v15 = v5;
    v16 = *(v5 + 8);
    if (v16)
    {
      v17 = (*(v5 + 8) & 3) == 3;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v5 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 32))(v5);
    }

    *v15 = v14 + v13;
    v15[1] = &unk_2A2044983;
    v6 += v13;
  }

  v18 = *(this + 401);
  for (j = *(this + 402); v18 != j; v18 += 2)
  {
    if (!*v18)
    {
      NumberOfTextureHandles = "hdSt/resourceRegistry.cpp";
      v57 = "_TallyResourceAllocation";
      v58 = 1270;
      v59 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_TallyResourceAllocation(VtDictionary *) const";
      v60 = 0;
      v5 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&NumberOfTextureHandles, "buffer", 0);
      if ((v5 & 1) == 0)
      {
        continue;
      }
    }

    v20 = *v18;
    if ((*(*v18 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v21 = ((*(*v18 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
      v20 = *v18;
    }

    v22 = *(v20 + 16);
    v55 = 0;
    NumberOfTextureHandles = &v55;
    v23 = sub_29AE7FA3C(a2, v21, &NumberOfTextureHandles);
    v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v21);
    v24 = v5;
    v25 = *(v5 + 8);
    if (v25)
    {
      v26 = (*(v5 + 8) & 3) == 3;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v5 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 32))(v5);
    }

    *v24 = v23 + v22;
    v24[1] = &unk_2A2044983;
    v6 += v22;
  }

  v27 = *(this + 1094);
  if (v27)
  {
    while ((v27[5] & 1) == 0)
    {
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

LABEL_66:
    v44 = v27[2];
    if (v44)
    {
      v45 = v44[8];
      if (v45)
      {
        v45 = (*(*v45 + 40))(v45);
        v46 = v45;
        v44 = v27[2];
      }

      else
      {
        v46 = 0;
      }

      v47 = v44[1] & 0xFFFFFFFFFFFFFFF8;
      if (v47)
      {
        v48 = (v47 + 16);
      }

      else
      {
        v48 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
      }

      v55 = 0;
      NumberOfTextureHandles = &v55;
      v49 = sub_29AE7FA3C(a2, v48, &NumberOfTextureHandles);
      v50 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v48);
      v51 = v50;
      v52 = v50[1];
      if (v52)
      {
        v53 = (v50[1] & 3) == 3;
      }

      else
      {
        v53 = 1;
      }

      if (!v53)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 32))(v50);
      }

      *v51 = v46 + v49;
      v51[1] = &unk_2A2044983;
      v6 += v46;
    }

    while (1)
    {
      v27 = *v27;
      if (!v27)
      {
        break;
      }

      if (v27[5])
      {
        goto LABEL_66;
      }
    }
  }

LABEL_42:
  v28 = *(*(this + 1324) + 232);
  v29 = atomic_load(v28);
  NumberOfTextureHandles = v29;
  v57 = &unk_2A2044983;
  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v30)
  {
    v30 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v30 + 35) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = ((*(v30 + 35) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
  }

  v32 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v31);
  sub_29A18606C(v32, &NumberOfTextureHandles);
  sub_29A186B14(&NumberOfTextureHandles);
  NumberOfTextureHandles = v28[4];
  v57 = &unk_2A2044983;
  v33 = atomic_load(&qword_2A174F528);
  if (!v33)
  {
    v33 = sub_29AE97F7C();
  }

  if ((*v33 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v34 = ((*v33 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
  }

  v35 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v34);
  sub_29A18606C(v35, &NumberOfTextureHandles);
  sub_29A186B14(&NumberOfTextureHandles);
  NumberOfTextureHandles = pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::GetNumberOfTextureHandles(*(this + 1324));
  v57 = &unk_2A2044983;
  v36 = atomic_load(&qword_2A174F528);
  if (!v36)
  {
    v36 = sub_29AE97F7C();
  }

  if ((*(v36 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v37 = ((*(v36 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v37 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
  }

  v38 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v37);
  sub_29A18606C(v38, &NumberOfTextureHandles);
  sub_29A186B14(&NumberOfTextureHandles);
  v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v39)
  {
    v39 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  if ((*(v39 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v40 = ((*(v39 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v40 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v39);
  }

  result = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a2, v40);
  v42 = result;
  v43 = result[1];
  if (v43 && (result[1] & 3) != 3)
  {
    result = (*((v43 & 0xFFFFFFFFFFFFFFF8) + 32))(result);
  }

  *v42 = v29 + v6;
  v42[1] = &unk_2A2044983;
  return result;
}

void sub_29AE8E640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_UpdateBufferArrayRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unsigned int a8@<W7>, void *a9@<X8>)
{
  if (*a5 && ((*(**a5 + 16))(*a5) & 1) != 0)
  {
    v29 = a2;
    v30 = a4;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    (*(**a5 + 144))(*a5, &v38);
    v18 = *a6;
    v19 = a6[1];
    v20 = (*(**a5 + 32))();
    v21 = (*(**a5 + 120))();
    v22 = v20 ^ 1;
    if (v18 == v19)
    {
      v22 = 1;
    }

    v23 = v22 == 1 && v21 == a8;
    if (v23 && *a7 == a7[1] && pxrInternal__aapl__pxrReserved__::HdBufferSpec::IsSubset(a6, &v38))
    {
      v24 = a5[1];
      *a9 = *a5;
      a9[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v36 = 0uLL;
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeDifference(a6, a7, v35);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeDifference(a7, a6, &v34);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeDifference(&v38, &v34, v31);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeUnion(v31, v35, &v32);
      sub_29AC1F70C(&v36);
      v36 = v32;
      v37 = v33;
      v33 = 0;
      v32 = 0uLL;
      v43[0] = &v32;
      sub_29ABC6FA0(v43);
      v43[0] = v31;
      sub_29ABC6FA0(v43);
      *&v32 = &v34;
      sub_29ABC6FA0(&v32);
      *&v34 = v35;
      sub_29ABC6FA0(&v34);
      pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(a3, v29, v30, &v36, a8, a9);
      pxrInternal__aapl__pxrReserved__::HdBufferSpec::ComputeDifference(&v36, a6, v35);
      v25 = v35[0];
      v26 = v35[1];
      while (v25 != v26)
      {
        sub_29AE97E30(&v32);
        v34 = v32;
        v32 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(a1, a9, &v34, 0);
        if (*(&v34 + 1))
        {
          sub_29A014BEC(*(&v34 + 1));
        }

        if (*(&v32 + 1))
        {
          sub_29A014BEC(*(&v32 + 1));
        }

        v25 += 3;
      }

      (*(**a5 + 104))();
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v27)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      if (!v28)
      {
        v28 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v27, (v28 + 24));
      *&v34 = v35;
      sub_29ABC6FA0(&v34);
      v35[0] = &v36;
      sub_29ABC6FA0(v35);
    }

    *&v36 = &v38;
    sub_29ABC6FA0(&v36);
  }

  else
  {
    if (*a7 != a7[1])
    {
      v38 = "hdSt/resourceRegistry.cpp";
      v39 = "_UpdateBufferArrayRange";
      v40 = 1170;
      v41 = "HdBufferArrayRangeSharedPtr pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_UpdateBufferArrayRange(HdStAggregationStrategy *, HdStBufferArrayRegistry &, const TfToken &, const HdBufferArrayRangeSharedPtr &, const HdBufferSpecVector &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
      v42 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v38, 1, "Non-empty removed specs during BAR allocation\n");
    }

    pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(a3, a2, a4, a6, a8, a9);
  }
}

void sub_29AE8EAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = (v25 - 136);
  sub_29ABC6FA0(&a25);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_29A0ECEEC(&v21, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(const HdBufferArrayRangeSharedPtr &, HdBufferSourceSharedPtrVector &&)");
  if (*a3 == a3[1])
  {
    v16 = "hdSt/resourceRegistry.cpp";
    v17 = "AddSources";
    v18 = 379;
    v19 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(const HdBufferArrayRangeSharedPtr &, HdBufferSourceSharedPtrVector &&)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "sources list is empty");
  }

  else if (*a2 && (*(**a2 + 16))(*a2))
  {
    v6 = *a3;
    if (a3[1] != *a3)
    {
      v7 = 0;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*(v6 + 16 * v7)))
        {
          if ((*(**(*a3 + 16 * v7) + 72))(*(*a3 + 16 * v7)))
          {
            (*(**(*a3 + 16 * v7) + 80))(&v16);
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(a1, &v16);
            if (v17)
            {
              sub_29A014BEC(v17);
            }
          }

          ++v7;
          v9 = a3[1];
        }

        else
        {
          v16 = "hdSt/resourceRegistry.cpp";
          v17 = "AddSources";
          v18 = 403;
          v19 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(const HdBufferArrayRangeSharedPtr &, HdBufferSourceSharedPtrVector &&)";
          v20 = 0;
          v11 = *(*(**(*a3 + 16 * v7) + 16))(*(*a3 + 16 * v7)) & 0xFFFFFFFFFFFFFFF8;
          if (v11)
          {
            v12 = (v11 + 16);
            if (*(v11 + 39) < 0)
            {
              v12 = *v12;
            }
          }

          else
          {
            v12 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "Source Buffer for %s is invalid", v12);
          sub_29AE8F174((*a3 + 16 * v7), (a3[1] - 16));
          v13 = a3[1];
          v14 = *(v13 - 8);
          if (v14)
          {
            sub_29A014BEC(v14);
          }

          v9 = v13 - 16;
          a3[1] = v13 - 16;
        }

        v6 = *a3;
        v10 = v9 - *a3;
      }

      while (v7 < v10 >> 4);
      if (v6 != v9)
      {
        atomic_fetch_add((a1 + 80), v10 >> 4);
        sub_29AE8F1BC(a1 + 16, a2, a3, v8, &v16);
        v15 = a2[1];
        if (!v15 || *(v15 + 8) <= 0)
        {
          v16 = "hdSt/resourceRegistry.cpp";
          v17 = "AddSources";
          v18 = 423;
          v19 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(const HdBufferArrayRangeSharedPtr &, HdBufferSourceSharedPtrVector &&)";
          v20 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v16, "range.use_count() >=2", 0);
        }
      }
    }
  }

  else
  {
    v16 = "hdSt/resourceRegistry.cpp";
    v17 = "AddSources";
    v18 = 386;
    v19 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(const HdBufferArrayRangeSharedPtr &, HdBufferSourceSharedPtrVector &&)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 3, "range is null or invalid");
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29AE8EF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(uint64_t a1, void *a2)
{
  sub_29A0ECEEC(&v14, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferSourceSharedPtr &)");
  if (*a2)
  {
    if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*a2))
    {
      if ((*(**a2 + 72))())
      {
        (*(**a2 + 80))(&v9);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(a1, &v9);
        if (v10)
        {
          sub_29A014BEC(v10);
        }
      }

      v7 = 0;
      v8 = 0;
      sub_29AE8F558(a1 + 16, &v7, a2, v4, &v9);
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      atomic_fetch_add((a1 + 80), 1uLL);
    }

    else
    {
      v9 = "hdSt/resourceRegistry.cpp";
      v10 = "AddSource";
      v11 = 479;
      v12 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferSourceSharedPtr &)";
      v13 = 0;
      v5 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "source buffer for %s is invalid", v6);
    }
  }

  else
  {
    v9 = "hdSt/resourceRegistry.cpp";
    v10 = "AddSource";
    v11 = 471;
    v12 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferSourceSharedPtr &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "source pointer is null");
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29AE8F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29A0E9CEC(v13 - 48);
  _Unwind_Resume(a1);
}

void *sub_29AE8F174(void *a1, uint64_t *a2)
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

double sub_29AE8F1BC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *&v12 = a1;
  v8 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 40, &v12 + 1, a4);
  v13 = v8;
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0;
  *(v8 + 1) = *a3;
  v8[4] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v10 = v13;
  result = *&v12;
  *a5 = v12;
  *(a5 + 16) = v10;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(uint64_t a1, void *a2, void *a3)
{
  sub_29A0ECEEC(&v14, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferArrayRangeSharedPtr &, const HdBufferSourceSharedPtr &)");
  if (*a3 && *a2)
  {
    if ((*(**a2 + 16))(*a2))
    {
      if (pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*a3))
      {
        if ((*(**a3 + 72))())
        {
          (*(**a3 + 80))(&v9);
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(a1, &v9);
          if (v10)
          {
            sub_29A014BEC(v10);
          }
        }

        sub_29AE8F4D0(a1 + 16, a2, a3, v6, &v9);
        atomic_fetch_add((a1 + 80), 1uLL);
      }

      else
      {
        v9 = "hdSt/resourceRegistry.cpp";
        v10 = "AddSource";
        v11 = 451;
        v12 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferArrayRangeSharedPtr &, const HdBufferSourceSharedPtr &)";
        v13 = 0;
        v7 = *(*(**a3 + 16))() & 0xFFFFFFFFFFFFFFF8;
        if (v7)
        {
          v8 = (v7 + 16);
          if (*(v7 + 39) < 0)
          {
            v8 = *v8;
          }
        }

        else
        {
          v8 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "source buffer for %s is invalid", v8);
      }
    }

    else
    {
      v9 = "hdSt/resourceRegistry.cpp";
      v10 = "AddSource";
      v11 = 443;
      v12 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferArrayRangeSharedPtr &, const HdBufferSourceSharedPtr &)";
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "range is invalid");
    }
  }

  else
  {
    v9 = "hdSt/resourceRegistry.cpp";
    v10 = "AddSource";
    v11 = 436;
    v12 = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(const HdBufferArrayRangeSharedPtr &, const HdBufferSourceSharedPtr &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "An input pointer is null");
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29AE8F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

double sub_29AE8F4D0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *&v10 = a1;
  v11 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 40, &v10 + 1, a4);
  sub_29AE94AD8(v11, a2, a3);
  v8 = v11;
  result = *&v10;
  *a5 = v10;
  *(a5 + 16) = v8;
  return result;
}

void sub_29AE8F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 32) = 0;
    *a12 = 0u;
    *(a12 + 16) = 0u;
  }

  _Unwind_Resume(a1);
}

double sub_29AE8F558@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *&v10 = a1;
  v11 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 40, &v10 + 1, a4);
  sub_29AE94AD8(v11, a2, a3);
  v8 = v11;
  result = *&v10;
  *a5 = v10;
  *(a5 + 16) = v8;
  return result;
}

void sub_29AE8F5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 32) = 0;
    *a12 = 0u;
    *(a12 + 16) = 0u;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(uint64_t a1, void *a2, void *a3, int a4)
{
  sub_29A0ECEEC(&v11, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(const HdBufferArrayRangeSharedPtr &, const HdStComputationSharedPtr &, const HdStComputeQueue)");
  if (a4 < 4 || (v9[0] = "hdSt/resourceRegistry.cpp", v9[1] = "AddComputation", v9[2] = 499, v9[3] = "void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(const HdBufferArrayRangeSharedPtr &, const HdStComputationSharedPtr &, const HdStComputeQueue)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "queue < HdStComputeQueueCount", 0) & 1) != 0))
  {
    sub_29AE8F6CC(a1 + (a4 << 6) + 88, a2, a3, v8, v9);
  }

  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }
}

void sub_29AE8F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

double sub_29AE8F6CC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *&v13 = a1;
  v8 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 32, &v13 + 1, a4);
  v14 = v8;
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v14;
  result = *&v13;
  *a5 = v13;
  *(a5 + 16) = v11;
  return result;
}

void **pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterDispatchBuffer@<X0>(void **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, __int128 *a5@<X8>)
{
  v9 = a4;
  v10 = a3;
  v8 = this;
  sub_29AE94BD4(&v8, a2, &v10, &v9, a5);
  return sub_29A017F80(this + 398, a5);
}

void sub_29AE8F7BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBufferResource(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, __int128 *a7@<X8>)
{
  v20 = a3;
  v21 = a4;
  LODWORD(__p[0]) = 0;
  v13.n128_u32[0] = 0;
  sub_29AE94D5C(a2, &v20, __p, &v13, a7);
  v11 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v20, v21);
  v18 = 0;
  v19 = 0;
  v16 = a5;
  v17 = v11;
  *__p = *a6;
  v15 = *(a6 + 16);
  *(a6 + 23) = 0;
  *a6 = 0;
  v13.n128_u64[0] = (*(**(a1 + 8) + 96))(*(a1 + 8), __p);
  v13.n128_u64[1] = v12;
  pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(*a7, &v13, v11);
  sub_29A017F80((a1 + 3208), a7);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AE8F8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GarbageCollectDispatchBuffers(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  v2 = *(this + 398);
  v3 = *(this + 399);
  if (v2 != v3)
  {
    v4 = v2 + 1;
    while (1)
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        if (!*(v5 + 8))
        {
          break;
        }
      }

      if (v4++ == v3)
      {
        v2 = *(this + 399);
        goto LABEL_17;
      }
    }

    v2 = v4 - 1;
    if (v4 - 1 != v3 && v4 != v3)
    {
      do
      {
        v7 = *(v4 + 1);
        if (!v7 || *(v7 + 8))
        {
          v8 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = *(v2 + 1);
          *v2 = v8;
          *(v2 + 1) = v7;
          if (v9)
          {
            sub_29A014BEC(v9);
          }

          ++v2;
        }

        ++v4;
      }

      while (v4 != v3);
      v3 = *(this + 399);
    }
  }

LABEL_17:

  return sub_29AE8F9C8(this + 3184, v2, v3);
}

uint64_t sub_29AE8F9C8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_29A03D458(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_29A014BEC(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GarbageCollectBufferResources(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  v2 = *(this + 401);
  v3 = *(this + 402);
  if (v2 != v3)
  {
    v4 = v2 + 1;
    while (1)
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        if (!*(v5 + 8))
        {
          break;
        }
      }

      if (v4++ == v3)
      {
        v2 = *(this + 402);
        goto LABEL_17;
      }
    }

    v2 = v4 - 1;
    if (v4 - 1 != v3 && v4 != v3)
    {
      do
      {
        v7 = *(v4 + 1);
        if (!v7 || *(v7 + 8))
        {
          v8 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = *(v2 + 1);
          *v2 = v8;
          *(v2 + 1) = v7;
          if (v9)
          {
            sub_29A014BEC(v9);
          }

          ++v2;
        }

        ++v4;
      }

      while (v4 != v3);
      v3 = *(this + 402);
    }
  }

LABEL_17:

  return sub_29AE8F9C8(this + 3208, v2, v3);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMeshTopology(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FB8C(a2, this + 3232, (v6 + 144), a3);
}

void sub_29AE8FB8C(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  if (sub_29AE94E4C())
  {
    sub_29AE94EE8(a2, &v9, a4);
    if (*(a4 + 48) == 1)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, a3);
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 48) = 1;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesTopology(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FCB4(a2, this + 3856, (v6 + 120), a3);
}

void sub_29AE8FCB4(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  if (sub_29AE94E4C())
  {
    sub_29AE9503C(a2, &v9, a4);
    if (*(a4 + 48) == 1)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, a3);
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 48) = 1;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterVertexAdjacencyBuilder(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FDE0(a2, this + 4480, (v6 + 168), a3);
}

void sub_29AE8FDE0(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  if (sub_29AE94E4C())
  {
    sub_29AE95190(a2, &v9, a4);
    if (*(a4 + 48) == 1)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, a3);
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 48) = 1;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMeshIndexRange(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v6 = sub_29AE8FFD0(this + 5104, a2);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v7)
  {
    v7 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FF18(a3, v6, (v7 + 152), a4);
}

void sub_29AE8FF18(uint64_t a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  if (sub_29AE94E4C())
  {
    sub_29AE95E3C(a2, &v9, a4);
    if (*(a4 + 48) == 1)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v8)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, a3);
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 48) = 1;
  }
}

uint64_t sub_29AE8FFD0(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  sub_29AE952E4(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    bzero(v13, 0x270uLL);
    sub_29AE9304C(v13, 8uLL, &v12);
    v14.__m_.__sig = 850045863;
    memset(v14.__m_.__opaque, 0, sizeof(v14.__m_.__opaque));
    sub_29AE95D3C(&v15, a2, v13);
    sub_29AE95DD0(&v18, &v15);
    sub_29AE95618(a1, &v18, 0, &v10);
    v11 = v10;
    std::mutex::~mutex(&v20);
    sub_29AE94194(&v19, v6);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::mutex::~mutex(&v17);
    sub_29AE94194(&v16, v7);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::mutex::~mutex(&v14);
    sub_29AE94194(v13, v8);
    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AE90138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AE9430C(&STACK[0x520]);
  sub_29AE9430C(&STACK[0x2A8]);
  std::mutex::~mutex((v8 + 560));
  sub_29AE94194(va, v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesIndexRange(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v6 = sub_29AE8FFD0(this + 5664, a2);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v7)
  {
    v7 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FF18(a3, v6, (v7 + 128), a4);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterPrimvarRange(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FF18(a2, this + 6224, (v6 + 160), a3);
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterExtComputationDataRange(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  sub_29AE8FF18(a2, this + 6848, (v6 + 136), a3);
}

void sub_29AE90314(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE9042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE90498(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassShader>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE905B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE9061C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStGLSLProgram>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStGLSLProgram>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE90770(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HioGlslfx>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE908F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<MaterialX__aapl::Shader>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<MaterialX__aapl::Shader>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE90A78(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE90BFC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AE90D80(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AE90E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::FindOrCreateSubResourceRegistry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AE95F90(a1 + 12472, a2, &v18);
  v6 = v18;
  if (v18)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&v18 + 1) == a1 + 12488;
  }

  if (v7)
  {
    v8 = *(a3 + 24);
    if (!v8)
    {
      sub_29A0DDCB0();
    }

    (*(*v8 + 48))(&v13);
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v15 = *(a2 + 16);
    }

    v9 = v13;
    v13 = 0;
    v16 = v9;
    sub_29AE96308(a1 + 12472, __p, 0, &v17);
    v18 = v17;
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v13;
    v13 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v6 = v18;
  }

  return *(v6 + 32);
}

void sub_29AE91030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE9107C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  result = *(this + 1629);
  if (!result)
  {
    (*(**(this + 1) + 32))(&v6);
    v3 = v6;
    v6 = 0;
    v4 = *(this + 1629);
    *(this + 1629) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    return *(this + 1629);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(uint64_t a1, int a2)
{
  v3 = a2 & (*((*(**(a1 + 8) + 200))(*(a1 + 8)) + 48) << 29 >> 31);
  v4 = *(a1 + 13040);
  if (v4)
  {
    if ((*(*v4 + 80))(v4) == v3)
    {
      goto LABEL_5;
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(a1, 0);
    v5 = *(a1 + 13040);
    *(a1 + 13040) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
LABEL_5:
      result = *(a1 + 13040);
      if (result)
      {
        return result;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::HgiComputeCmdsDesc::HgiComputeCmdsDesc(&v11);
  v11 = v3;
  (*(**(a1 + 8) + 40))(&v10);
  v7 = v10;
  v10 = 0;
  v8 = *(a1 + 13040);
  *(a1 + 13040) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v10;
    v10 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  return *(a1 + 13040);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(uint64_t *result, uint64_t a2)
{
  v3 = result[1630];
  if (v3)
  {
    v4 = result;
    pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(result[1], v3, a2);
    result = v4[1630];
    v4[1630] = 0;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(uint64_t *result, uint64_t a2)
{
  v3 = result[1629];
  if (v3)
  {
    v4 = result;
    pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(result[1], v3, a2);
    result = v4[1629];
    v4[1629] = 0;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_CommitTextures(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry ***this)
{
  pxrInternal__aapl__pxrReserved__::HdStShaderCode::ResourceContext::ResourceContext(&v8, this);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::Commit(this[1324], &v6);
  v2 = v6;
  if (v6 != v7)
  {
    do
    {
      (*(*v2[4] + 112))(v2[4], &v8);
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

      v2 = v4;
    }

    while (v4 != v7);
  }

  sub_29A42FCE0(&v6, v7[0]);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_Commit(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  v100 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1563);
  if (v2)
  {
    while ((v2[5] & 1) == 0)
    {
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

LABEL_109:
    pxrInternal__aapl__pxrReserved__::HdResourceRegistry::Commit(v2[4]);
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2[5])
      {
        goto LABEL_109;
      }
    }
  }

LABEL_4:
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_CommitTextures(this);
  v86 = this + 16;
  v89 = 0;
  v90 = 0;
  v3 = 101;
  while (1)
  {
    v4 = atomic_load(&v89);
    v5 = atomic_load(this + 10);
    if (v4 >= v5)
    {
      break;
    }

    v6 = *(this + 5);
    __dmb(0xBu);
    v7 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 24));
    if (v7 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    __p[0] = &v89;
    __p[1] = &v90;
    LODWORD(v92) = 0;
    v98[0] = 65539;
    v99 = 55;
    tbb::task_group_context::init(&v92, v8, v9, v10);
    if (v11)
    {
      v91 = &v92;
      v12 = tbb::internal::allocate_root_with_context_proxy::allocate(&v91, 0x58uLL);
      *(v12 - 11) = 1;
      *v12 = &unk_2A2098E08;
      *(v12 + 8) = v86;
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = v86;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 1;
      *(v12 + 64) = __p;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v12);
      *(v12 + 80) = 0;
      *(v12 + 84) = 5;
      *(v12 + 72) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v12 - 40) + 16))(*(v12 - 40), v12, v12 - 8);
    }

    tbb::task_group_context::~task_group_context(&v92);
    if (!--v3)
    {
      v92 = "hdSt/resourceRegistry.cpp";
      v93 = "_Commit";
      v94 = 861;
      v95 = "virtual void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_Commit()";
      LOBYTE(v96[0].__locale_) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v92, "Too many iterations in resolving buffer source. It's likely due to inconsistent dependency.", v14);
      break;
    }
  }

  v15 = *(this + 5);
  __dmb(0xBu);
  v16 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 24));
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      if (!v20)
      {
        v21 = sub_29A0EC0EC(v19);
        v22 = *(this + 6);
        __dmb(0xBu);
        v20 = (*(v22 + 8 * v21) - 80 * ((1 << v21) >> 1) + v18);
      }

      if (*v20)
      {
        if (v20[2] != v20[3] || (v92 = "hdSt/resourceRegistry.cpp", v93 = "_Commit", v94 = 869, v95 = "virtual void pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_Commit()", LOBYTE(v96[0].__locale_) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v92, "!req.sources.empty()", 0) & 1) != 0))
        {
          v23 = *v20;
          v24 = (*(**v20[2] + 64))(*v20[2]);
          (*(*v23 + 48))(v23, v24);
        }
      }

      v25 = v19 + 1;
      if (((v19 - 1) & (v19 + 1)) != 0)
      {
        v20 += 5;
      }

      else
      {
        v20 = 0;
      }

      v18 += 40;
      ++v19;
    }

    while (v17 != v25);
  }

  v26 = atomic_load(&v89);
  v27 = atomic_load(this + 10);
  if (v26 != v27)
  {
    sub_29B2CACE8(&v92);
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v28)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v29)
  {
    v29 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  v30 = atomic_load(&v89);
  pxrInternal__aapl__pxrReserved__::HdPerfLog::AddCounter(v28, (v29 + 16), v30);
  for (i = 88; i != 344; i += 64)
  {
    v32 = *(this + i + 24);
    __dmb(0xBu);
    v33 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + i + 8));
    if (v33 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    if (v34)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        if (!v37)
        {
          v38 = sub_29A0EC0EC(v36);
          v39 = *(this + i + 32);
          __dmb(0xBu);
          v37 = (*(v39 + 8 * v38) - ((1 << v38) >> 1 << 6) + v35);
        }

        if (*v37)
        {
          v40 = (*(*v37[2] + 24))(v37[2]);
          if (v40 >= 1 && v40 > (*(**v37 + 88))())
          {
            (*(**v37 + 48))(*v37, v40);
          }
        }

        v41 = v36 + 1;
        if (((v36 - 1) & (v36 + 1)) != 0)
        {
          v37 += 4;
        }

        else
        {
          v37 = 0;
        }

        v35 += 32;
        ++v36;
      }

      while (v34 != v41);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll((this + 344), *(this + 393));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll((this + 904), *(this + 394));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll((this + 1464), *(this + 395));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll((this + 2024), *(this + 396));
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll((this + 2584), *(this + 397));
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(this, 1);
  v42 = *(this + 1631);
  v43 = atomic_load(&v90);
  pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Resize(v42, v43);
  v44 = *(this + 5);
  __dmb(0xBu);
  v45 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 24));
  if (v45 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  if (v46)
  {
    v47 = 0;
    v48 = 0;
    v84 = *(MEMORY[0x29EDC9528] + 64);
    v85 = *MEMORY[0x29EDC9528];
    v83 = *(MEMORY[0x29EDC9528] + 72);
    do
    {
      if (!v48)
      {
        v49 = sub_29A0EC0EC(v47);
        v50 = *(this + 6);
        __dmb(0xBu);
        v48 = (*(v50 + 8 * v49) + 40 * (v47 - ((1 << v49) & 0x1FFFFFFFFFFFFFFELL)));
      }

      if (*v48)
      {
        if ((*(**v48 + 88))(*v48))
        {
          v52 = v48[2];
          v51 = v48[3];
          while (v52 != v51)
          {
            (*(**v48 + 56))(*v48, v52);
            sub_29AE921A4(v52, v48);
            v52 += 2;
          }

          if (sub_29ABCF8C0(3))
          {
            sub_29A008864(&v92);
            pxrInternal__aapl__pxrReserved__::operator<<(&v94, *v48);
            if (sub_29ABCF8C0(3))
            {
              std::stringbuf::str();
              v55 = __p;
              if (v88 < 0)
              {
                v55 = __p[0];
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("CLEAN: %s\n", v53, v54, v55);
              if (v88 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v92 = v85;
            *(&v92 + *(v85 - 3)) = v84;
            v94 = v83;
            v95 = (MEMORY[0x29EDC9570] + 16);
            if (v97 < 0)
            {
              operator delete(v96[7].__locale_);
            }

            v95 = (MEMORY[0x29EDC9568] + 16);
            std::locale::~locale(v96);
            std::iostream::~basic_iostream();
            MEMORY[0x29C2C4390](v98);
          }
        }
      }

      v56 = v47 + 1;
      if (((v47 - 1) & (v47 + 1)) != 0)
      {
        v48 += 5;
      }

      else
      {
        v48 = 0;
      }

      ++v47;
    }

    while (v56 != v46);
  }

  (*(**(this + 393) + 56))(*(this + 393));
  (*(**(this + 394) + 56))(*(this + 394));
  (*(**(this + 395) + 56))(*(this + 395));
  (*(**(this + 396) + 56))(*(this + 396));
  (*(**(this + 397) + 56))(*(this + 397));
  pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::Flush(*(this + 1631));
  v57 = *(this + 1629);
  if (v57)
  {
    (*(*v57 + 112))(v57, 1);
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(this, 0);
  for (j = 88; j != 344; j += 64)
  {
    v59 = *(this + j + 24);
    __dmb(0xBu);
    v60 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + j + 8));
    if (v60 >= v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = v60;
    }

    if (v61)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        if (!v64)
        {
          v65 = sub_29A0EC0EC(v63);
          v66 = *(this + j + 32);
          __dmb(0xBu);
          v64 = *(v66 + 8 * v65) - ((1 << v65) >> 1 << 6) + v62;
        }

        (*(**(v64 + 16) + 16))(*(v64 + 16), v64, this);
        v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
        if (!v67)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
        }

        v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
        if (!v68)
        {
          v68 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v67, (v68 + 40));
        v69 = v63 + 1;
        if (((v63 - 1) & (v63 + 1)) != 0)
        {
          v64 += 32;
        }

        else
        {
          v64 = 0;
        }

        v62 += 32;
        ++v63;
      }

      while (v61 != v69);
    }

    v70 = *(this + 1629);
    if (v70)
    {
      (*(*v70 + 112))(v70, 1);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(this, 0);
    }

    v71 = *(this + 1630);
    if (v71)
    {
      (*(*v71 + 72))(v71, 1);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(this, 0);
    }
  }

  v72 = *(this + 5);
  __dmb(0xBu);
  v73 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 24));
  if (v73 >= v72)
  {
    v77 = v72;
  }

  else
  {
    v77 = v73;
  }

  LODWORD(v92) = 0;
  v98[0] = 65539;
  v99 = 55;
  tbb::task_group_context::init(&v92, v74, v75, v76);
  if (v77)
  {
    __p[0] = &v92;
    v78 = tbb::internal::allocate_root_with_context_proxy::allocate(__p, 0x58uLL);
    *(v78 - 11) = 1;
    *v78 = &unk_2A2098E50;
    *(v78 + 8) = v86;
    *(v78 + 16) = v77;
    *(v78 + 24) = 0;
    *(v78 + 32) = v86;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    *(v78 + 56) = 1;
    *(v78 + 64) = &v91;
    v79 = tbb::internal::get_initial_auto_partitioner_divisor(v78);
    *(v78 + 80) = 0;
    *(v78 + 84) = 5;
    *(v78 + 72) = (v79 >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v78 - 40) + 16))(*(v78 - 40), v78, v78 - 8);
  }

  tbb::task_group_context::~task_group_context(&v92);
  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 24), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingSource>>::destroy_array);
  atomic_store(0, this + 10);
  v80 = (this + 96);
  v81 = 256;
  do
  {
    result = tbb::internal::concurrent_vector_base_v3::internal_clear(v80, tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_PendingComputation>>::destroy_array);
    v80 = (v80 + 64);
    v81 -= 64;
  }

  while (v81);
  return result;
}

void sub_29AE9211C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  tbb::internal::allocate_root_with_context_proxy::free(&__p, v26);
  tbb::task_group_context::~task_group_context(&a24);
  _Unwind_Resume(a1);
}

void sub_29AE921A4(void *a1, void *a2)
{
  if ((*(**a1 + 88))(*a1))
  {
    (*(**a1 + 96))(v6);
    v4 = v6[0];
    v5 = v6[1];
    while (v4 != v5)
    {
      (*(**a2 + 56))(*a2, v4);
      sub_29AE921A4(v4, a2);
      v4 += 16;
    }

    v7 = v6;
    sub_29A0176E4(&v7);
  }
}

void sub_29AE9228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::_GarbageCollect(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *this)
{
  v2 = *(this + 1563);
  if (v2)
  {
    while ((v2[5] & 1) == 0)
    {
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
    pxrInternal__aapl__pxrReserved__::HdResourceRegistry::GarbageCollect(v2[4]);
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2[5])
      {
        goto LABEL_20;
      }
    }
  }

LABEL_4:
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GarbageCollectDispatchBuffers(this);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GarbageCollectBufferResources(this);
  v3 = sub_29AE973E0(this + 3232, &v32, 0);
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

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v4, (v5 + 144), v3);
  v6 = sub_29AE975F0(this + 3856, &v32, 0);
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

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v7, (v8 + 120), v6);
  v9 = sub_29AE976F8(this + 4480, &v32, 0);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v11)
  {
    v11 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v10, (v11 + 168), v9);
  v12 = *(this + 642);
  v13 = 0.0;
  if (v12)
  {
    while ((v12[80] & 1) == 0)
    {
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
LABEL_25:
    v14 += sub_29AE97800((v12 + 2), &v32, 0);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12[80])
      {
        goto LABEL_25;
      }
    }

    v13 = v14;
  }

LABEL_30:
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v16)
  {
    v16 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v15, (v16 + 152), v13);
  v17 = *(this + 712);
  v18 = 0.0;
  if (v17)
  {
    while ((v17[80] & 1) == 0)
    {
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    v19 = 0;
LABEL_39:
    v19 += sub_29AE97800((v17 + 2), &v32, 0);
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        break;
      }

      if (v17[80])
      {
        goto LABEL_39;
      }
    }

    v18 = v19;
  }

LABEL_44:
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v20)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v21)
  {
    v21 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v20, (v21 + 128), v18);
  v22 = sub_29AE97800(this + 6224, &v32, 0);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v23)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v24)
  {
    v24 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v23, (v24 + 160), v22);
  v25 = sub_29AE97800(this + 6848, &v32, 0);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v26)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v27)
  {
    v27 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v26, (v27 + 136), v25);
  sub_29AE97908(this + 7472, &v32, 0);
  sub_29AE97A10(this + 8096, &v32, 0);
  sub_29AE97B18(this + 8720, &v32, 0);
  sub_29AE97C20(this + 9344, &v32, 0);
  sub_29AE97D28(this + 9968, &v32, 0);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::GarbageCollect(*(this + 1324));
  v28 = *(this + 1);
  v32 = sub_29AE92858;
  v33 = v28;
  sub_29AE92724(this + 10600, &v32, 0);
  v29 = *(this + 1);
  v32 = sub_29AE929B0;
  v33 = v29;
  sub_29AE9287C(this + 11224, &v32, 0);
  v30 = *(this + 1);
  v32 = sub_29AE92B08;
  v33 = v30;
  sub_29AE929D4(this + 11848, &v32, 0);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(this + 344);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(this + 904);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(this + 1464);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(this + 2024);
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(this + 2584);
  return pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(this, 0);
}

uint64_t sub_29AE92724(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v14, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>, Callback = std::__bind<void (*)(pxrInternal__aapl__pxrReserved__::Hgi *, pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings> *), pxrInternal__aapl__pxrReserved__::Hgi *&, const std::placeholders::__ph<1> &>]");
  if (a3 < 0)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      while ((*(v6 + 40) & 1) == 0)
      {
        v6 = *v6;
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      v9 = a1 + 16;
      do
      {
        v10 = *(v6 + 24);
        if (v10 && !*(v10 + 8) && (v11 = *(v6 + 32), *(v6 + 32) = v11 + 1, v11 >= a3))
        {
          (*a2)(*(a2 + 8), *(v6 + 16));
          sub_29AE974E8(a1, v6, v9, v13);
          v6 = v13[0];
          v9 = v13[1];
        }

        else
        {
          do
          {
            v6 = *v6;
          }

          while (v6 && (*(v6 + 40) & 1) == 0);
          ++v7;
        }

        if (v6)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == a1 + 16;
        }
      }

      while (!v12);
    }

    else
    {
LABEL_5:
      v7 = 0;
    }
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v7;
}

void sub_29AE92840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE9287C(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v14, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>, Callback = std::__bind<void (*)(pxrInternal__aapl__pxrReserved__::Hgi *, pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline> *), pxrInternal__aapl__pxrReserved__::Hgi *&, const std::placeholders::__ph<1> &>]");
  if (a3 < 0)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      while ((*(v6 + 40) & 1) == 0)
      {
        v6 = *v6;
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      v9 = a1 + 16;
      do
      {
        v10 = *(v6 + 24);
        if (v10 && !*(v10 + 8) && (v11 = *(v6 + 32), *(v6 + 32) = v11 + 1, v11 >= a3))
        {
          (*a2)(*(a2 + 8), *(v6 + 16));
          sub_29AE974E8(a1, v6, v9, v13);
          v6 = v13[0];
          v9 = v13[1];
        }

        else
        {
          do
          {
            v6 = *v6;
          }

          while (v6 && (*(v6 + 40) & 1) == 0);
          ++v7;
        }

        if (v6)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == a1 + 16;
        }
      }

      while (!v12);
    }

    else
    {
LABEL_5:
      v7 = 0;
    }
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v7;
}

void sub_29AE92998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE929D4(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v14, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>, Callback = std::__bind<void (*)(pxrInternal__aapl__pxrReserved__::Hgi *, pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline> *), pxrInternal__aapl__pxrReserved__::Hgi *&, const std::placeholders::__ph<1> &>]");
  if (a3 < 0)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      while ((*(v6 + 40) & 1) == 0)
      {
        v6 = *v6;
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      v9 = a1 + 16;
      do
      {
        v10 = *(v6 + 24);
        if (v10 && !*(v10 + 8) && (v11 = *(v6 + 32), *(v6 + 32) = v11 + 1, v11 >= a3))
        {
          (*a2)(*(a2 + 8), *(v6 + 16));
          sub_29AE974E8(a1, v6, v9, v13);
          v6 = v13[0];
          v9 = v13[1];
        }

        else
        {
          do
          {
            v6 = *v6;
          }

          while (v6 && (*(v6 + 40) & 1) == 0);
          ++v7;
        }

        if (v6)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == a1 + 16;
        }
      }

      while (!v12);
    }

    else
    {
LABEL_5:
      v7 = 0;
    }
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v7;
}

void sub_29AE92AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE92B48(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE92CA0(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE92CDC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29ADCC444(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AE92D24(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE92E7C(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE92EB8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE93010(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE9304C(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AE931A4(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AE931E0(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}