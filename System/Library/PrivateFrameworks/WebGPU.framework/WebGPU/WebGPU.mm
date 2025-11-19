uint64_t WebGPU::Adapter::Adapter(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = a2;
  *a1 = 1;
  v10 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = a3;
  v11 = *(a3 + 8);
  if ((v11 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  v24 = WTF::fastMalloc(0x20);
  v11 = v24;
  *v24 = 0;
  *(v24 + 8) = xmmword_225881A50;
  *(v24 + 24) = a3;
  while (1)
  {
    v26 = *(a3 + 8);
    if ((v26 & 1) == 0)
    {
      break;
    }

    *(v24 + 8) = v26 >> 1;
    v27 = v26;
    atomic_compare_exchange_strong_explicit((a3 + 8), &v27, v24, memory_order_release, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree(v24, v25);
  v11 = *(a3 + 8);
  if (v11)
  {
LABEL_3:
    v12 = 0;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(v11, &v12, 1u, memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      MEMORY[0x22AA683C0](v11);
    }

    ++*(v11 + 16);
    atomic_compare_exchange_strong_explicit(v11, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v11);
    }
  }

LABEL_7:
  *(a1 + 24) = v11;
  v14 = *(a5 + 16);
  *(a1 + 32) = *a5;
  *(a1 + 48) = v14;
  v15 = *(a5 + 32);
  v16 = *(a5 + 48);
  v17 = *(a5 + 80);
  *(a1 + 96) = *(a5 + 64);
  *(a1 + 112) = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  v18 = *(a5 + 96);
  v19 = *(a5 + 112);
  v20 = *(a5 + 144);
  *(a1 + 160) = *(a5 + 128);
  *(a1 + 176) = v20;
  *(a1 + 128) = v18;
  *(a1 + 144) = v19;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v21 = *(a5 + 160);
  *(a5 + 160) = 0;
  *(a1 + 192) = v21;
  LODWORD(v21) = *(a5 + 168);
  *(a5 + 168) = 0;
  *(a1 + 200) = v21;
  LODWORD(v21) = *(a5 + 172);
  *(a5 + 172) = 0;
  *(a1 + 204) = v21;
  *(a1 + 208) = *(a5 + 176);
  v22 = *(a5 + 184);
  *(a5 + 184) = 0;
  *(a5 + 192) = 0;
  *(a1 + 216) = v22;
  LODWORD(v21) = *(a5 + 200);
  *(a1 + 235) = *(a5 + 203);
  *(a1 + 232) = v21;
  *(a1 + 240) = 0;
  *(a1 + 241) = a4;

  return a1;
}

void sub_2256650EC(_Unwind_Exception *a1)
{
  if (*v1 == 1)
  {

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WebGPU::Adapter *WebGPU::Adapter::Adapter(WebGPU::Adapter *this, WebGPU::Instance *a2)
{
  *this = 1;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v3 = *(a2 + 1);
  if ((v3 & 1) == 0)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  v8 = WTF::fastMalloc(0x20);
  v3 = v8;
  *v8 = 0;
  *(v8 + 8) = xmmword_225881A50;
  *(v8 + 24) = a2;
  while (1)
  {
    v10 = *(a2 + 1);
    if ((v10 & 1) == 0)
    {
      break;
    }

    *(v8 + 8) = v10 >> 1;
    v11 = v10;
    atomic_compare_exchange_strong_explicit(a2 + 1, &v11, v8, memory_order_release, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree(v8, v9);
  v3 = *(a2 + 1);
  if (v3)
  {
LABEL_3:
    v4 = 0;
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      MEMORY[0x22AA683C0](v3);
    }

    ++*(v3 + 16);
    atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != 1)
    {
      WTF::Lock::unlockSlow(v3);
    }
  }

LABEL_7:
  *(this + 3) = v3;
  *(this + 120) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 231) = 0;
  return this;
}

void sub_225665254(_Unwind_Exception *a1)
{
  if (*v1 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::Adapter::~Adapter(id *this)
{
  v3 = this[24];
  if (v3)
  {
    this[24] = 0;
    *(this + 50) = 0;
    WTF::fastFree(v3, v2);
  }

  v4 = this[3];
  this[3] = 0;
  if (v4)
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v8 = v4;
      MEMORY[0x22AA683C0]();
      v4 = v8;
      v9 = *(v8 + 2) - 1;
      *(v8 + 2) = v9;
      if (v9)
      {
LABEL_6:
        v7 = 1;
        atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != 1)
        {
          WTF::Lock::unlockSlow(v4);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v6 = *(v4 + 2) - 1;
      *(v4 + 2) = v6;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    v10 = *(v4 + 1);
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = v4;
      WTF::Lock::unlockSlow(v4);
      v4 = v12;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    WTF::fastFree(v4, v2);
  }

LABEL_12:

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::CompletionHandler<void ()(WGPURequestDeviceStatus,WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>> &&,WTF::String &&)>::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, 1, a2, a3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

WebGPU::Device *WebGPU::Device::createInvalid(WebGPU::Device *this, WebGPU::Adapter *a2)
{
  if (WebGPU::Device::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::Device::operatorNewSlow(0x230);
  }

  v5 = NonCompact;
  result = WebGPU::Device::Device(NonCompact, a2);
  *this = v5;
  return result;
}

atomic_ullong **WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(atomic_ullong **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v8, a2);
        return v9;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::Device::~Device(v2, a2);
      bmalloc::api::tzoneFree(v6, v7);
      return v5;
    }
  }

  return result;
}

id *wgpuAdapterRelease(id *result)
{
  if (*result == 1)
  {
    WebGPU::Adapter::~Adapter(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t wgpuAdapterEnumerateFeatures(const void **this, void *__dst)
{
  v3 = (*this)++;
  if (__dst)
  {
    v4 = *(this + 51);
    if (v4)
    {
      memmove(__dst, this[24], 4 * v4);
      v3 = *this - 1;
    }
  }

  v5 = *(this + 51);
  if (v3)
  {
    *this = v3;
  }

  else
  {
    WebGPU::Adapter::~Adapter(this);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v5;
}

id **WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::Adapter::~Adapter(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

BOOL wgpuAdapterGetLimits(uint64_t a1, uint64_t *a2)
{
  v2 = (*a1)++;
  v3 = *a2;
  if (*a2)
  {
    if (v2)
    {
LABEL_3:
      *a1 = v2;
      return v3 == 0;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    *(a2 + 3) = *(a1 + 48);
    *(a2 + 1) = v5;
    v6 = *(a1 + 64);
    v7 = *(a1 + 80);
    v8 = *(a1 + 96);
    *(a2 + 11) = *(a1 + 112);
    *(a2 + 9) = v8;
    *(a2 + 7) = v7;
    *(a2 + 5) = v6;
    v9 = *(a1 + 128);
    v10 = *(a1 + 144);
    v11 = *(a1 + 160);
    *(a2 + 19) = *(a1 + 176);
    *(a2 + 17) = v11;
    *(a2 + 15) = v10;
    *(a2 + 13) = v9;
    v2 = *a1 - 1;
    if (*a1 != 1)
    {
      goto LABEL_3;
    }
  }

  WebGPU::Adapter::~Adapter(a1);
  bmalloc::api::tzoneFree(v12, v13);
  return v3 == 0;
}

uint64_t wgpuAdapterGetProperties(id *a1, uint64_t a2)
{
  ++*a1;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  v4 = [a1[1] name];
  *(a2 + 40) = [v4 UTF8String];

  *(a2 + 48) = "";
  result = [a1[1] hasUnifiedMemory];
  *(a2 + 56) = result;
  *(a2 + 60) = 5;
  if (*a1 == 1)
  {
    WebGPU::Adapter::~Adapter(a1);

    return bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256657E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256657FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t wgpuAdapterHasFeature(uint64_t a1, int a2)
{
  v2 = (*a1)++;
  v3 = *(a1 + 204);
  if (v3)
  {
    v4 = *(a1 + 192);
    while (1)
    {
      v5 = *v4++;
      if (v5 == a2)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
    if (!v2)
    {
      goto LABEL_8;
    }

LABEL_6:
    *a1 = v2;
    return v6;
  }

LABEL_5:
  v6 = 0;
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_8:
  WebGPU::Adapter::~Adapter(a1);
  bmalloc::api::tzoneFree(v8, v9);
  return v6;
}

void wgpuAdapterRequestDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ++*a1;
  v110[1] = a1;
  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_2838D2A68;
  v9[1] = a3;
  v9[2] = a4;
  v110[0] = v9;
  if (!*a2)
  {
    if (*(a1 + 240) == 1)
    {
      if (WebGPU::Device::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v8);
      }

      else
      {
        NonCompact = WebGPU::Device::operatorNewSlow(0x230);
      }

      v21 = NonCompact;
      WebGPU::Device::Device(NonCompact, a1);
      v129 = v21;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v128 = *&v112[0];
      v110[0] = 0;
      (*(*v9 + 16))(v9, 1, &v129, &v128);
      (*(*v9 + 8))(v9);
      v23 = v128;
      v128 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      v24 = v129;
      v129 = 0;
      if (v24)
      {
        do
        {
          v25 = *v24;
          if ((*v24 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v24, v22);
            goto LABEL_43;
          }

          v26 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v26 != v25);
        if (v25 == 3)
        {
          WebGPU::Device::~Device(v24, v22);
          bmalloc::api::tzoneFree(v27, v28);
        }
      }

LABEL_43:
      v60 = *(a1 + 8);
      *(a1 + 8) = 0;

      goto LABEL_62;
    }

    v29 = *(a2 + 32);
    if (v29)
    {
      if (*v29)
      {
        if (WebGPU::Device::s_heapRef)
        {
          v30 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v8);
        }

        else
        {
          v30 = WebGPU::Device::operatorNewSlow(0x230);
        }

        v31 = v30;
        WebGPU::Device::Device(v30, a1);
        v129 = v31;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v128 = *&v112[0];
        v110[0] = 0;
        (*(*v9 + 16))(v9, 1, &v129, &v128);
        (*(*v9 + 8))(v9);
        v32 = v128;
        v128 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v12);
        }

        v14 = v129;
        v129 = 0;
        if (!v14)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v33 = *v14;
          if ((*v14 & 1) == 0)
          {
            goto LABEL_61;
          }

          v16 = v33 - 2;
          v34 = *v14;
          atomic_compare_exchange_strong_explicit(v14, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
          if (v34 == v33)
          {
            goto LABEL_10;
          }
        }
      }

      if ((*(v29 + 80) ^ (*(v29 + 80) - 1)) <= *(v29 + 80) - 1 || (*(v29 + 84) ^ (*(v29 + 84) - 1)) <= *(v29 + 84) - 1)
      {
        if (WebGPU::Device::s_heapRef)
        {
          v63 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v8);
        }

        else
        {
          v63 = WebGPU::Device::operatorNewSlow(0x230);
        }

        v64 = v63;
        WebGPU::Device::Device(v63, a1);
        v129 = v64;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v128 = *&v112[0];
        v110[0] = 0;
        (*(*v9 + 16))(v9, 1, &v129, &v128);
        (*(*v9 + 8))(v9);
        v65 = v128;
        v128 = 0;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, v12);
        }

        v14 = v129;
        v129 = 0;
        if (!v14)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v66 = *v14;
          if ((*v14 & 1) == 0)
          {
            goto LABEL_61;
          }

          v16 = v66 - 2;
          v67 = *v14;
          atomic_compare_exchange_strong_explicit(v14, &v67, v66 - 2, memory_order_relaxed, memory_order_relaxed);
          if (v67 == v66)
          {
LABEL_10:
            if (v16 == 1)
            {
              WebGPU::Device::~Device(v14, v12);
              bmalloc::api::tzoneFree(v18, v19);
            }

            goto LABEL_62;
          }
        }
      }

      if (WebGPU::anyLimitIsBetterThan(v29 + 8, a1 + 32))
      {
        WebGPU::Device::createInvalid(&v129, a1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v128 = *&v112[0];
        WTF::CompletionHandler<void ()(WGPURequestDeviceStatus,WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>> &&,WTF::String &&)>::operator()(v110, &v129, &v128);
        v62 = v128;
        v128 = 0;
        if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v62, v61);
        }

        WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&v129, v61);
        if (v110[0])
        {
          (*(*v110[0] + 8))(v110[0]);
        }

        goto LABEL_62;
      }

      v89 = *(a2 + 32);
      v38 = *(v89 + 8);
      v37 = *(v89 + 24);
      v36 = *(v89 + 40);
      v35 = *(v89 + 56);
      v39 = *(v89 + 64);
      v40 = *(v89 + 80);
      v45 = *(v89 + 96);
      v44 = *(v89 + 104);
      v43 = *(v89 + 120);
      v42 = *(v89 + 136);
      v41 = *(v89 + 152);
      v46 = *(a2 + 16);
      if (!v46)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v35 = 0xC00000004;
      v36 = xmmword_225881A60;
      v37 = xmmword_225881A70;
      v38 = xmmword_225881A80;
      v39 = xmmword_225881A90;
      v40 = xmmword_225881AA0;
      v41 = xmmword_225881AB0;
      v42 = xmmword_225881AC0;
      v43 = xmmword_225881AD0;
      v44 = xmmword_225881AE0;
      v45 = 0x10000000;
      v46 = *(a2 + 16);
      if (!v46)
      {
LABEL_92:
        v50 = 0;
LABEL_93:
        v112[0] = v38;
        v112[1] = v37;
        v112[2] = v36;
        v113 = v35;
        v114 = v39;
        v115 = v40;
        v116 = v45;
        v117 = v44;
        v118 = v43;
        v119 = v42;
        v120 = v41;
        v121 = v50;
        v122 = v46;
        v123 = v46;
        v90 = *(a1 + 216);
        v124 = *(a1 + 208);
        v125 = v90;
        v126 = *(a1 + 224);
        v127[0] = *(a1 + 232);
        *(v127 + 3) = *(a1 + 235);
        if (*(a2 + 8))
        {
          strlen(*(a2 + 8));
        }

        WTF::String::fromUTF8();
        *(a1 + 240) = 1;
        WebGPU::Device::create(*(a1 + 8), &v129, v112, a1, &v128);
        v111 = 0;
        v110[0] = 0;
        (*(*v9 + 16))(v9, 0, &v128, &v111);
        (*(*v9 + 8))(v9);
        v92 = v111;
        v111 = 0;
        if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v92, v91);
        }

        v93 = v128;
        v128 = 0;
        if (v93)
        {
          do
          {
            v94 = *v93;
            if ((*v93 & 1) == 0)
            {
              WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v93, v91);
              goto LABEL_104;
            }

            v95 = *v93;
            atomic_compare_exchange_strong_explicit(v93, &v95, v94 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v95 != v94);
          if (v94 == 3)
          {
            WebGPU::Device::~Device(v93, v91);
            bmalloc::api::tzoneFree(v96, v97);
          }
        }

LABEL_104:
        v98 = v129;
        v129 = 0;
        if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v98, v91);
        }

        v100 = v121;
        if (v121)
        {
          v121 = 0;
          v122 = 0;
          WTF::fastFree(v100, v99);
        }

        goto LABEL_62;
      }
    }

    v101 = v44;
    v102 = v43;
    v103 = v42;
    v104 = v41;
    v105 = v40;
    v106 = v39;
    v107 = v38;
    v108 = v37;
    v109 = v36;
    if (v46 >> 30)
    {
      __break(0xC471u);
      return;
    }

    v47 = *(a2 + 24);
    v48 = WTF::fastMalloc((4 * v46));
    v50 = v48;
    v51 = (v46 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v51 < 7)
    {
      v52 = v48;
      v53 = v47;
      v37 = v108;
      v36 = v109;
      v39 = v106;
      v38 = v107;
      v41 = v104;
      v40 = v105;
      v43 = v102;
      v42 = v103;
      v44 = v101;
    }

    else
    {
      v52 = v48;
      v53 = v47;
      v37 = v108;
      v36 = v109;
      v39 = v106;
      v38 = v107;
      v41 = v104;
      v40 = v105;
      v43 = v102;
      v42 = v103;
      v44 = v101;
      if ((v48 - v47) >= 0x20)
      {
        v54 = v51 + 1;
        v55 = 4 * (v54 & 0x7FFFFFFFFFFFFFF8);
        v52 = (v48 + v55);
        v53 = (v47 + v55);
        v56 = (v47 + 16);
        v57 = (v48 + 16);
        v58 = v54 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v59 = *v56;
          *(v57 - 1) = *(v56 - 1);
          *v57 = v59;
          v56 += 2;
          v57 += 2;
          v58 -= 8;
        }

        while (v58);
        if (v54 == (v54 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_67:
          if (v46)
          {
            v71 = *(a1 + 204);
            if (v71)
            {
              v72 = v48;
              while (1)
              {
                v73 = *v72;
                v74 = *(a1 + 192);
                v75 = *(a1 + 204);
                do
                {
                  v76 = v75 >> 1;
                  v77 = &v74[v75 >> 1];
                  v79 = *v77;
                  v78 = v77 + 1;
                  v49 = ~(v75 >> 1);
                  v75 += v49;
                  if (v79 < v73)
                  {
                    v74 = v78;
                  }

                  else
                  {
                    v75 = v76;
                  }
                }

                while (v75);
                if (v74 == (*(a1 + 192) + 4 * v71) || v73 < *v74)
                {
                  break;
                }

                if (++v72 == (v48 + 4 * v46))
                {
                  goto LABEL_93;
                }
              }
            }

            if (WebGPU::Device::s_heapRef)
            {
              v80 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v49);
            }

            else
            {
              v80 = WebGPU::Device::operatorNewSlow(0x230);
            }

            v81 = v80;
            WebGPU::Device::Device(v80, a1);
            v129 = v81;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v128 = *&v112[0];
            v110[0] = 0;
            (*(*v9 + 16))(v9, 1, &v129, &v128);
            (*(*v9 + 8))(v9);
            v83 = v128;
            v128 = 0;
            if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v83, v82);
            }

            v84 = v129;
            v129 = 0;
            if (v84)
            {
              do
              {
                v85 = *v84;
                if ((*v84 & 1) == 0)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v84, v82);
                  goto LABEL_90;
                }

                v86 = *v84;
                atomic_compare_exchange_strong_explicit(v84, &v86, v85 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v86 != v85);
              if (v85 == 3)
              {
                WebGPU::Device::~Device(v84, v82);
                bmalloc::api::tzoneFree(v87, v88);
              }
            }

LABEL_90:
            WTF::fastFree(v50, v82);
            goto LABEL_62;
          }

          goto LABEL_93;
        }
      }
    }

    do
    {
      v70 = *v53++;
      *v52++ = v70;
    }

    while (v53 != (v47 + 4 * v46));
    goto LABEL_67;
  }

  if (WebGPU::Device::s_heapRef)
  {
    v10 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v8);
  }

  else
  {
    v10 = WebGPU::Device::operatorNewSlow(0x230);
  }

  v11 = v10;
  WebGPU::Device::Device(v10, a1);
  v129 = v11;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v128 = *&v112[0];
  v110[0] = 0;
  (*(*v9 + 16))(v9, 1, &v129, &v128);
  (*(*v9 + 8))(v9);
  v13 = v128;
  v128 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v129;
  v129 = 0;
  if (!v14)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v15 = *v14;
    if ((*v14 & 1) == 0)
    {
      break;
    }

    v16 = v15 - 2;
    v17 = *v14;
    atomic_compare_exchange_strong_explicit(v14, &v17, v15 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v15)
    {
      goto LABEL_10;
    }
  }

LABEL_61:
  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v14, v12);
LABEL_62:
  if (*a1 == 1)
  {
    WebGPU::Adapter::~Adapter(a1);
    bmalloc::api::tzoneFree(v68, v69);
  }

  else
  {
    --*a1;
  }
}

void sub_2256662EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id *a29, WTF::StringImpl *a30, char a31)
{
  v33 = *(v31 - 96);
  *(v31 - 96) = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, a2);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v31 - 88), a2);
  if (a28)
  {
    (*(*a28 + 8))(a28);
    WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(&a29);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(&a29);
  _Unwind_Resume(a1);
}

uint64_t wgpuAdapterXRCompatible(uint64_t a1)
{
  v1 = (*a1)++;
  v2 = *(a1 + 241);
  if (v1)
  {
    *a1 = v1;
  }

  else
  {
    WebGPU::Adapter::~Adapter(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

void WebGPU::HardwareCapabilities::~HardwareCapabilities(id *this)
{
  v3 = this[20];
  if (v3)
  {
    this[20] = 0;
    *(this + 42) = 0;
    WTF::fastFree(v3, v2);
  }
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(result, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v13 = result;
    MEMORY[0x22AA683C0]();
    result = v13;
    v14 = *(v13 + 8);
    v4 = v14 - 1;
    *(v13 + 8) = v14 - 1;
    if (v14 != 1)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(result, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(result + 8);
    v4 = v3 - 1;
    *(result + 8) = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = *(result + 24);
  ++*(result + 16);
  *(result + 24) = 0;
  v15 = 1;
  atomic_compare_exchange_strong_explicit(result, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 == 1)
  {
LABEL_4:
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_13:
  v16 = result;
  WTF::Lock::unlockSlow(result);
  result = v16;
  if (v4)
  {
    return result;
  }

LABEL_5:
  if (v5)
  {
    v7 = result;
    WebGPU::Device::~Device(v5, a2);
    bmalloc::api::tzoneFree(v8, v9);
    result = v7;
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(result, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (!v10)
  {
    v12 = *(result + 16) - 1;
    *(result + 16) = v12;
    atomic_compare_exchange_strong_explicit(result, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v18 = result;
    WTF::Lock::unlockSlow(result);
    result = v18;
    if (v12)
    {
      return result;
    }

    goto LABEL_17;
  }

  v17 = result;
  MEMORY[0x22AA683C0]();
  result = v17;
  v12 = *(v17 + 16) - 1;
  *(v17 + 16) = v12;
  atomic_compare_exchange_strong_explicit(v17, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v12)
  {
    return result;
  }

LABEL_17:

  return WTF::fastFree(result, a2);
}

uint64_t WTF::Detail::CallableWrapper<wgpuAdapterRequestDevice(WGPUAdapterImpl *,WGPUDeviceDescriptor const*,void (*)(WGPURequestDeviceStatus,WGPUDeviceImpl *,char const*,void *),void *)::$_0,void,WGPURequestDeviceStatus,WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>> &&,WTF::String &&>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  *a3 = 0;
  WTF::String::utf8();
  if (v10)
  {
    v7 = v10 + 16;
  }

  else
  {
    v7 = 0;
  }

  v5(a2, v6, v7, *(a1 + 16));
  result = v10;
  if (v10)
  {
    if (*v10 == 1)
    {
      return WTF::fastFree(v10, v8);
    }

    else
    {
      --*v10;
    }
  }

  return result;
}

void sub_225666788(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebGPU::Device::createExternalTextureFromPixelBuffer(__n128 *a1, uint64_t a2, __CVBuffer *a3)
{
  LOBYTE(v100) = 0;
  v101 = 0;
  CVMetalTextureCacheFlush(*(a2 + 448), 0);
  v6 = [*(a2 + 8) supportsFamily:1004];
  if (CVPixelBufferGetIOSurface(a3))
  {
    WebGPU::Device::webProcessID(a2, v7, &image);
    if (BYTE4(image) == 1)
    {
      if (!image || (IOSurfaceSetOwnershipIdentity(), (BYTE4(image) & 1) != 0))
      {
        WTF::MachSendRight::~MachSendRight(&image);
      }
    }

    textureOut = 0;
    image = 0;
    if (CVPixelBufferGetPlaneCount(a3) <= 1)
    {
      v8 = *(a2 + 448);
      v9 = WebGPU::metalPixelFormat(a3, 0, &v100, v6);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      v12 = 0;
      if (!CVMetalTextureCacheCreateTextureFromImage(0, v8, a3, 0, v9, WidthOfPlane, HeightOfPlane, 0, &image))
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    v27 = WebGPU::metalPixelFormat(a3, 0, &v100, v6);
    if (v27)
    {
      v28 = *(a2 + 448);
      v29 = CVPixelBufferGetWidthOfPlane(a3, 0);
      v30 = CVPixelBufferGetHeightOfPlane(a3, 0);
      v31 = CVMetalTextureCacheCreateTextureFromImage(0, v28, a3, 0, v27, v29, v30, 0, &image);
    }

    else
    {
      v31 = -6680;
    }

    v32 = WebGPU::metalPixelFormat(a3, 1, &v100, v6);
    if (v32)
    {
      v33 = *(a2 + 448);
      v34 = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
      v35 = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
      v12 = CVMetalTextureCacheCreateTextureFromImage(0, v33, a3, 0, v32, v34, v35, 1uLL, &textureOut) == 0;
      if (v31)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = 0;
      if (v31)
      {
LABEL_30:
        if (textureOut)
        {
          CFRelease(textureOut);
        }

        goto LABEL_32;
      }
    }

LABEL_34:
    v19 = CVMetalTextureGetTexture(image);
    WebGPU::Device::setOwnerWithIdentity(a2, v19);
    CVMetalTextureGetCleanTexCoords(image, lowerLeft, lowerRight, upperRight, upperLeft);
    v36 = v19;
    if (v101 == 1)
    {
      v37 = [v19 pixelFormat];
      v38 = [v19 textureType];
      v39 = [v19 mipmapLevelCount];
      v40 = [v19 arrayLength];
      v41 = [v19 newTextureViewWithPixelFormat:v37 textureType:v38 levels:0 slices:v39 swizzle:0, v40, v100];

      v36 = v41;
    }

    if (v12)
    {
      v42 = CVMetalTextureGetTexture(textureOut);
      WebGPU::Device::setOwnerWithIdentity(a2, v42);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 16);
    atomic_fetch_add(v43, 1u);
    v88 = v43;
    v45 = textureOut;
    v44 = image;
    v46 = WTF::fastMalloc(0x18);
    *v46 = &unk_2838D2A90;
    v46[1] = v44;
    v46[2] = v45;
    v87 = v46;
    WebGPU::Queue::onSubmittedWorkDone(v43, &v87, v47);
    v49 = v87;
    v87 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    v88 = 0;
    if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v43);
      WebGPU::Queue::~Queue(v43);
      bmalloc::api::tzoneFree(v76, v77);
    }

    v82 = __PAIR64__(LODWORD(lowerRight[1]), LODWORD(upperRight[0]));
    v85 = __PAIR64__(LODWORD(upperLeft[1]), LODWORD(lowerLeft[0]));
    if (v42)
    {
      v50 = WebGPU::colorSpaceConversionMatrixForPixelBuffer(a3, v48);
    }

    else
    {
      v54 = v101;
      v55 = v19;
      v56 = [v55 pixelFormat];
      v57 = [v55 textureType];
      v58 = [v55 mipmapLevelCount];
      v59 = [v55 arrayLength];
      v60 = 1027;
      if (v54)
      {
        v60 = 1284;
      }

      v42 = [v55 newTextureViewWithPixelFormat:v56 textureType:v57 levels:0 slices:v58 swizzle:0, v59, v60];

      v52 = xmmword_225881B00;
      v51 = xmmword_225881B10;
      v50 = xmmword_225881B20;
      v53 = 0uLL;
    }

    __asm { FMOV            V5.2S, #1.0 }

    v66 = vdiv_f32(_D5, vsub_f32(v82, v85));
    v67 = v66.i32[0];
    v68 = vmul_f32(v85, vneg_f32(v66));
    v66.i32[0] = 0;
    a1->n128_u64[0] = v36;
    a1->n128_u64[1] = v42;
    a1[1].n128_u64[0] = v67;
    *&a1[1].n128_i8[8] = v66;
    a1[2].n128_u64[0] = v68;
    a1[3] = v50;
    a1[4] = v51;
    a1[5] = v52;
    a1[6] = v53;
    goto LABEL_57;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  if (PlaneCount >= 3 || (v14 = PlaneCount, CVPixelBufferLockBaseAddress(a3, 1uLL)))
  {
LABEL_32:
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2].n128_u64[0] = 0;
    return;
  }

  v15 = CVPixelBufferGetWidthOfPlane(a3, 0);
  v16 = CVPixelBufferGetHeightOfPlane(a3, 0);
  v17 = objc_opt_new();
  [v17 setUsage:1];
  [v17 setTextureType:2];
  v84 = v15;
  [v17 setWidth:?];
  [v17 setHeight:?];
  [v17 setPixelFormat:WebGPU::metalPixelFormat(a3, 0, &v100, v6)];
  v80 = v101;
  if (v101 == 1)
  {
    v78 = v100;
    [v17 setSwizzle:?];
  }

  [v17 setMipmapLevelCount:1];
  [v17 setSampleCount:1];
  if ([*(a2 + 8) hasUnifiedMemory])
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  [v17 setStorageMode:v18];
  v19 = [*(a2 + 8) newTextureWithDescriptor:v17];
  if (v19)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    image = 0;
    v95 = 0;
    v96 = 0;
    v97 = v84;
    v98 = v16;
    v99 = 1;
    [v19 replaceRegion:&image mipmapLevel:0 withBytes:BaseAddressOfPlane bytesPerRow:{CVPixelBufferGetBytesPerRowOfPlane(a3, 0)}];

    if (v14 != 2)
    {
      v24 = 0;
      goto LABEL_52;
    }

    v21 = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
    v22 = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
    v17 = objc_opt_new();
    [v17 setUsage:1];
    [v17 setTextureType:2];
    [v17 setWidth:?];
    [v17 setHeight:v22];
    [v17 setPixelFormat:WebGPU::metalPixelFormat(a3, 1, &v100, v6)];
    v80 = v101;
    if (v101 == 1)
    {
      [v17 setSwizzle:v78 & 0xFFFFFFFF00000000 | v100];
    }

    [v17 setMipmapLevelCount:1];
    [v17 setSampleCount:1];
    if ([*(a2 + 8) hasUnifiedMemory])
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }

    [v17 setStorageMode:v23];
    v24 = [*(a2 + 8) newTextureWithDescriptor:v17];
    if (v24)
    {
      v25 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
      image = 0;
      v95 = 0;
      v96 = 0;
      v97 = v21;
      v98 = v22;
      v99 = 1;
      [v24 replaceRegion:&image mipmapLevel:0 withBytes:v25 bytesPerRow:BytesPerRowOfPlane];

LABEL_52:
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      if (v14 == 2)
      {
        v71 = WebGPU::colorSpaceConversionMatrixForPixelBuffer(a3, v70);
        HIDWORD(v71) = 0;
        HIDWORD(v72) = 0;
        v81 = v71;
        v83 = v72;
        HIDWORD(v73) = 0;
        v86 = v73;
        v74.n128_u32[3] = 0;
        v79 = v74;
      }

      else
      {
        v75 = ___ZNK6WebGPU6Device36createExternalTextureFromPixelBufferEP10__CVBuffer14WGPUColorSpace_block_invoke(v19, v80);

        v86 = xmmword_225881B00;
        v83 = xmmword_225881B10;
        v79 = 0u;
        v81 = xmmword_225881B20;
        v24 = v75;
      }

      a1->n128_u64[0] = v19;
      v69 = v24;
      a1->n128_u64[1] = v69;
      a1[1].n128_u64[0] = 1065353216;
      a1[1].n128_u64[1] = 0x3F80000000000000;
      a1[2].n128_u64[0] = 0;
      a1[3] = v81;
      a1[4] = v83;
      a1[5] = v86;
      a1[6] = v79;
      goto LABEL_56;
    }
  }

  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2].n128_u64[0] = 0;

  v69 = 0;
LABEL_56:

LABEL_57:
}

id ___ZNK6WebGPU6Device36createExternalTextureFromPixelBufferEP10__CVBuffer14WGPUColorSpace_block_invoke(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 pixelFormat];
  v5 = [v3 textureType];
  v6 = [v3 mipmapLevelCount];
  v7 = [v3 arrayLength];
  v8 = 1027;
  if (a2)
  {
    v8 = 1284;
  }

  v9 = [v3 newTextureViewWithPixelFormat:v4 textureType:v5 levels:0 slices:v6 swizzle:0, v7, v8];

  return v9;
}

uint64_t WebGPU::metalPixelFormat(__CVBuffer *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType > 1380410944)
  {
    if (PixelFormatType > 1919379251)
    {
      if (PixelFormatType > 1999908972)
      {
        if (PixelFormatType <= 2019963955)
        {
          if (PixelFormatType <= 2016687155)
          {
            if (PixelFormatType == 1999908973)
            {
              return 0;
            }

            if (PixelFormatType != 2016686640)
            {
              v10 = 2016686642;
              goto LABEL_139;
            }

            goto LABEL_140;
          }

          if (PixelFormatType == 2016687156 || PixelFormatType == 2019963440)
          {
            goto LABEL_140;
          }

          v10 = 2019963442;
          goto LABEL_139;
        }

        if (PixelFormatType > 2033463855)
        {
          if (PixelFormatType == 2033463856 || PixelFormatType == 2037741158)
          {
            goto LABEL_140;
          }

          v10 = 2037741171;
          goto LABEL_139;
        }

        if (PixelFormatType == 2019963956)
        {
          goto LABEL_140;
        }

        if (PixelFormatType == 2033463352)
        {
          return 80;
        }

        v13 = 2033463606;
      }

      else
      {
        if (PixelFormatType <= 1983000885)
        {
          if (PixelFormatType <= 1937126451)
          {
            if (PixelFormatType != 1919379252)
            {
              return 0;
            }

            return 80;
          }

          if (PixelFormatType == 1937126452)
          {
            return 0;
          }

          if (PixelFormatType == 1982882104)
          {
            goto LABEL_140;
          }

          v10 = 1983000880;
LABEL_139:
          if (PixelFormatType == v10)
          {
            goto LABEL_140;
          }

          return 0;
        }

        if (PixelFormatType > 1983131951)
        {
          if (PixelFormatType != 1983131952)
          {
            if (PixelFormatType == 1999843442)
            {
              return 90;
            }

            return 0;
          }

          goto LABEL_140;
        }

        if (PixelFormatType == 1983000886 || PixelFormatType == 1983066168)
        {
          goto LABEL_140;
        }

        v13 = 1983131704;
      }

LABEL_109:
      if (PixelFormatType != v13)
      {
        return 0;
      }

      return 80;
    }

    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType <= 1647589489)
      {
        if (PixelFormatType <= 1630697080)
        {
          if (PixelFormatType == 1380410945)
          {
            return 125;
          }

          if (PixelFormatType == 1380411457)
          {
            return 115;
          }

          return 0;
        }

        if (PixelFormatType == 1630697081)
        {
          goto LABEL_140;
        }

        if (PixelFormatType == 1647392359)
        {
          return 25;
        }

        if (PixelFormatType != 1647522401)
        {
          return 0;
        }

        return 55;
      }

      if (PixelFormatType > 1651519797)
      {
        if (PixelFormatType != 1651519798 && PixelFormatType != 1651521076)
        {
          v10 = 1714696752;
          goto LABEL_139;
        }

        return 80;
      }

      if (PixelFormatType == 1647589490)
      {
        return 80;
      }

      if (PixelFormatType != 1647719521)
      {
        v9 = 1650943796;
        goto LABEL_99;
      }

      if ((*(a3 + 4) & 1) == 0)
      {
        *(a3 + 4) = 1;
      }

      *a3 = 3;
    }

    else
    {
      if (PixelFormatType <= 1815162993)
      {
        if (PixelFormatType <= 1735549491)
        {
          if (PixelFormatType == 1717855600)
          {
            return 252;
          }

          if (PixelFormatType != 1717856627)
          {
            v9 = 1734505012;
            goto LABEL_99;
          }

          return 80;
        }

        if (PixelFormatType == 1735549492)
        {
          return 80;
        }

        if (PixelFormatType == 1751410032)
        {
          return 250;
        }

        v9 = 1751411059;
LABEL_99:
        if (PixelFormatType != v9)
        {
          return 0;
        }

        return 80;
      }

      if (PixelFormatType > 1882468913)
      {
        if (PixelFormatType == 1882468914)
        {
          v15 = 509;
          if (((a2 == 0) & a4) == 0)
          {
            return 0;
          }

          return v15;
        }

        if (PixelFormatType == 1882469428)
        {
          v16 = 510;
          if (((a2 == 0) & a4) == 0)
          {
            return 0;
          }

          return v16;
        }

        v13 = 1916022840;
        goto LABEL_109;
      }

      if (PixelFormatType == 1815162994)
      {
        if ((*(a3 + 4) & 1) == 0)
        {
          *(a3 + 4) = 1;
        }

        *a3 = 3;
        return 90;
      }

      if (PixelFormatType != 1815491698)
      {
        if (PixelFormatType == 1882468912)
        {
          v12 = 508;
          if (((a2 == 0) & a4) == 0)
          {
            return 0;
          }

          return v12;
        }

        return 0;
      }
    }

    return 110;
  }

  if (PixelFormatType <= 843264101)
  {
    if (PixelFormatType > 641230383)
    {
      if (PixelFormatType > 758674991)
      {
        if (PixelFormatType > 762869297)
        {
          if (PixelFormatType == 762869298)
          {
            goto LABEL_140;
          }

          if (PixelFormatType != 842285639)
          {
            if (PixelFormatType == 843264056)
            {
              return 30;
            }

            return 0;
          }
        }

        else
        {
          if (PixelFormatType == 758674992)
          {
            goto LABEL_140;
          }

          if (PixelFormatType != 759318337)
          {
            v10 = 762869296;
            goto LABEL_139;
          }
        }
      }

      else
      {
        if (PixelFormatType > 645428783)
        {
          if (PixelFormatType != 645428784 && PixelFormatType != 645428786)
          {
            v10 = 758670896;
            goto LABEL_139;
          }

          goto LABEL_140;
        }

        if (PixelFormatType == 641230384 || PixelFormatType == 641234480)
        {
          goto LABEL_140;
        }

        if (PixelFormatType != 641877825)
        {
          return 0;
        }
      }

      return 80;
    }

    v11 = 1;
    if (PixelFormatType <= 15)
    {
      if ((PixelFormatType - 1) >= 2 && PixelFormatType != 4 && PixelFormatType != 8)
      {
        return 0;
      }
    }

    else
    {
      if (PixelFormatType > 0x28)
      {
        goto LABEL_170;
      }

      if (((1 << PixelFormatType) & 0x11600000000) == 0)
      {
        if (PixelFormatType == 24)
        {
          return 70;
        }

        if (PixelFormatType == 32)
        {
          if ((*(a3 + 4) & 1) == 0)
          {
            *(a3 + 4) = 1;
          }

          *a3 = 3;
          return 70;
        }

LABEL_170:
        if (PixelFormatType != 16)
        {
          return 0;
        }

        return 43;
      }
    }

    return v11;
  }

  if (PixelFormatType > 1110783540)
  {
    if (PixelFormatType <= 1278226737)
    {
      if (PixelFormatType <= 1278226533)
      {
        if (PixelFormatType != 1110783541)
        {
          if (PixelFormatType != 1111970369)
          {
            if (PixelFormatType == 1278226488)
            {
              return 10;
            }

            return 0;
          }

          return 80;
        }

        return 40;
      }

      if (PixelFormatType != 1278226534)
      {
        if (PixelFormatType != 1278226536)
        {
          return 0;
        }

        return 25;
      }

      return 55;
    }

    if (PixelFormatType <= 1278555700)
    {
      if (PixelFormatType == 1278226738)
      {
        return 0;
      }

      if (PixelFormatType == 1278226742)
      {
        return 20;
      }

      if (PixelFormatType != 1278555445)
      {
        return 0;
      }

      return 43;
    }

    if (PixelFormatType == 1278555701)
    {
      return 40;
    }

    if (PixelFormatType == 1378955371)
    {
      return 94;
    }

    if (PixelFormatType != 1380401729)
    {
      return 0;
    }

    return 70;
  }

  if (PixelFormatType > 875704933)
  {
    if (PixelFormatType <= 875836533)
    {
      if (PixelFormatType != 875704934 && PixelFormatType != 875704950)
      {
        v10 = 875836518;
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    if (PixelFormatType == 875836534)
    {
      goto LABEL_140;
    }

    if (PixelFormatType != 892679473)
    {
      if (PixelFormatType == 1094862674)
      {
        if ((*(a3 + 4) & 1) == 0)
        {
          *(a3 + 4) = 1;
        }

        *a3 = 3;
        return 80;
      }

      return 0;
    }

    return 43;
  }

  if (PixelFormatType > 846624120)
  {
    if (PixelFormatType != 846624121 && PixelFormatType != 875704422)
    {
      v10 = 875704438;
      goto LABEL_139;
    }

LABEL_140:
    v14 = 30;
    if (!a2)
    {
      return 10;
    }

    return v14;
  }

  if (PixelFormatType == 843264102)
  {
    return 105;
  }

  if (PixelFormatType != 843264104)
  {
    if (PixelFormatType == 843264310)
    {
      return 60;
    }

    return 0;
  }

  return 65;
}

__n128 WebGPU::colorSpaceConversionMatrixForPixelBuffer(WebGPU *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v4 = 1;
  if (PixelFormatType > 2019963439)
  {
    if (PixelFormatType > 2019963955)
    {
      if (PixelFormatType == 2037741158 || PixelFormatType == 2019963956)
      {
        goto LABEL_15;
      }
    }

    else if (PixelFormatType == 2019963440 || PixelFormatType == 2019963442)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (PixelFormatType <= 1714696751)
    {
      if (PixelFormatType != 641230384 && PixelFormatType != 875704422)
      {
        goto LABEL_16;
      }

LABEL_15:
      v4 = 0;
      goto LABEL_16;
    }

    if (PixelFormatType == 1714696752 || PixelFormatType == 1815162994)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v5 = CVBufferCopyAttachment(this, *MEMORY[0x277CC4D10], 0);
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = v5;
  if (CFEqual(v5, *MEMORY[0x277CC4D28]))
  {
LABEL_18:
    CFRelease(v7);
LABEL_19:
    if (!v4)
    {
      __asm { FMOV            V0.4S, #1.0 }

      return result;
    }

    goto LABEL_26;
  }

  if (CFEqual(v7, *MEMORY[0x277CC4D20]))
  {
    CFRelease(v7);
    if (v4)
    {
      goto LABEL_26;
    }

    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    if (!CFEqual(v7, *MEMORY[0x277CC4D18]))
    {
      goto LABEL_18;
    }

    CFRelease(v7);
    if (v4)
    {
LABEL_26:
      result.n128_u64[0] = vdupq_n_s32(0x3F95A027u).u64[0];
      return result;
    }

    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

atomic_uint **WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(atomic_uint **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  add = atomic_fetch_add(v2, 0xFFFFFFFF);
  if (add != 1)
  {
    return a1;
  }

  atomic_store(add, v2);
  v5 = a1;
  WebGPU::Queue::~Queue(v2);
  bmalloc::api::tzoneFree(v6, v7);
  return v5;
}

void *WebGPU::Device::createBindGroup@<X0>(uint64_t a1@<X0>, void *a2@<X1>, WebGPU::BindGroup *a3@<X8>)
{
  if (*a2 || (v6 = a2[2]) == 0 || !*(a1 + 8))
  {
    if (WebGPU::BindGroup::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::BindGroup::operatorNewSlow(0);
    }

    v4 = NonCompact;
    result = WebGPU::BindGroup::BindGroup(NonCompact, a1);
    *a3 = v4;
    return result;
  }

  ++*(v6 + 8);
  v356 = v6;
  if (*(v6 + 72) != 1)
  {
    goto LABEL_13;
  }

  if ((*(v6 + 120) & 1) == 0)
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      v7 = *(v7 - 12);
    }

    if (a2[3] != v7)
    {
      goto LABEL_13;
    }
  }

  if (*(v6 + 104) != a1)
  {
LABEL_13:
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"invalid BindGroupLayout createBindGroup"];
    WebGPU::Device::generateAValidationError(a1, v8);

    if (WebGPU::BindGroup::s_heapRef)
    {
      v10 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, v9);
    }

    else
    {
      v10 = WebGPU::BindGroup::operatorNewSlow(0);
    }

    v11 = v10;
    result = WebGPU::BindGroup::BindGroup(v10, a1);
    *a3 = v11;
LABEL_16:
    if (*(v6 + 8) == 1)
    {
      WebGPU::BindGroupLayout::~BindGroupLayout(v6, v12);
      return bmalloc::api::tzoneFree(v13, v14);
    }

    else
    {
      --*(v6 + 8);
    }

    return result;
  }

  v16 = *(v6 + 24);
  v17 = *(v6 + 32);
  v18 = *(v6 + 40);
  v353 = v16;
  v354 = v17;
  v355 = v18;
  v351[0] = xmmword_225881C88;
  v351[1] = unk_225881C98;
  v351[2] = xmmword_225881CA8;
  v351[3] = unk_225881CB8;
  v352 = 0x7FFFFFFFFFFFFFFFLL;
  v348 = 0;
  v349 = 0;
  v350 = 0;
  v345 = 0;
  v346 = 0;
  v347 = 0;
  v19 = [*(v6 + 24) encodedLength];
  if (v19)
  {
    v20 = WebGPU::Device::safeCreateBuffer(a1, v19, MTLStorageModeShared, 0, MTLCPUCacheModeDefaultCache, MTLHazardTrackingModeDefault);
    v21 = v348;
    v348 = v20;
  }

  else
  {
    v20 = v348;
  }

  [v353 setArgumentBuffer:v20 offset:0];
  WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(v341, (v6 + 184));
  v23 = v345;
  v345 = *&v341[0];
  *&v341[0] = v23;
  if (v23)
  {
    WTF::fastFree((v23 - 16), v22);
  }

  v24 = [*(v6 + 32) encodedLength];
  if (v24)
  {
    v25 = WebGPU::Device::safeCreateBuffer(a1, v24, MTLStorageModeShared, 0, MTLCPUCacheModeDefaultCache, MTLHazardTrackingModeDefault);
    v26 = v349;
    v349 = v25;
  }

  [v354 setArgumentBuffer:v349 offset:0];
  WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(v341, (v6 + 192));
  v28 = v346;
  v346 = *&v341[0];
  *&v341[0] = v28;
  if (v28)
  {
    WTF::fastFree((v28 - 16), v27);
  }

  v29 = [*(v6 + 40) encodedLength];
  if (v29)
  {
    v30 = WebGPU::Device::safeCreateBuffer(a1, v29, MTLStorageModeShared, 0, MTLCPUCacheModeDefaultCache, MTLHazardTrackingModeDefault);
    v31 = v350;
    v350 = v30;
  }

  [v355 setArgumentBuffer:v350 offset:0];
  WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(v341, (v6 + 200));
  v33 = v347;
  v347 = *&v341[0];
  *&v341[0] = v33;
  if (v33)
  {
    WTF::fastFree((v33 - 16), v32);
  }

  *(&v34 + 1) = 0;
  memset(v344, 0, sizeof(v344));
  memset(v343, 0, sizeof(v343));
  memset(v342, 0, sizeof(v342));
  memset(v341, 0, sizeof(v341));
  memset(v340, 0, sizeof(v340));
  memset(v339, 0, sizeof(v339));
  memset(v338, 0, sizeof(v338));
  memset(v337, 0, sizeof(v337));
  v335 = 0;
  v336 = 0;
  v334 = 0;
  v35 = a2[3];
  if (!v35)
  {
LABEL_372:
    if ((!v345 || !*(v345 - 12)) && (!v346 || !*(v346 - 12)) && (!v347 || !*(v347 - 12)))
    {
      v228 = 0;
      v323 = 0uLL;
      *&v34 = 0;
      v317 = v34;
      do
      {
        v229 = 0;
        v311 = v228;
        v230 = *(dword_225881C50 + v228);
        do
        {
          v231 = v339;
          v232 = v343;
          if (v230 == 1)
          {
            v233 = 2;
          }

          else
          {
            v231 = v338;
            v232 = v342;
            v233 = 1;
          }

          if (v230 == 2)
          {
            v231 = v337;
            v232 = v341;
            v233 = 0;
          }

          if (v230 == 3)
          {
            v234 = v340;
          }

          else
          {
            v234 = v231;
          }

          if (v230 == 3)
          {
            v232 = v344;
            v235 = 3;
          }

          else
          {
            v235 = v233;
          }

          v236 = &v232[v229];
          v237 = *(v236 + 3);
          if (v237)
          {
            if (v230 == 3 || v229)
            {
              v238 = HIDWORD(v323);
            }

            else
            {
              if (v230 >= 3)
              {
                goto LABEL_479;
              }

              v238 = HIDWORD(v323);
              *(v351 + 3 * v230) = HIDWORD(v323);
            }

            v239 = &v234[v229];
            v240 = *v236;
            v241 = *(v236 + 2);
            *v236 = v317;
            v326[0] = v240;
            v326[1] = __PAIR64__(v237, v241);
            v242 = *v239;
            v243 = v239[1];
            *v239 = 0u;
            *v327 = v242;
            *&v327[8] = v243;
            *&v327[16] = ++v229;
            *&v327[24] = v235;
            if (v238 == DWORD2(v323))
            {
              v244 = WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v323, v238 + 1, v326);
              v245 = v323 + 48 * HIDWORD(v323);
              *v245 = 0;
              *(v245 + 8) = 0;
              v246 = *v244;
              *v244 = 0;
              *v245 = v246;
              LODWORD(v246) = *(v244 + 8);
              *(v244 + 8) = 0;
              *(v245 + 8) = v246;
              LODWORD(v246) = *(v244 + 12);
              *(v244 + 12) = 0;
              *(v245 + 12) = v246;
              *(v245 + 16) = 0;
              *(v245 + 24) = 0;
              v247 = *(v244 + 16);
              *(v244 + 16) = 0;
              *(v245 + 16) = v247;
              LODWORD(v247) = *(v244 + 24);
              *(v244 + 24) = 0;
              *(v245 + 24) = v247;
              LODWORD(v247) = *(v244 + 28);
              *(v244 + 28) = 0;
              *(v245 + 28) = v247;
              v248 = *(v244 + 32);
            }

            else
            {
              v245 = v323 + 48 * v238;
              *v245 = 0;
              *(v245 + 8) = 0;
              v249 = v326[0];
              v326[0] = 0;
              *v245 = v249;
              LODWORD(v249) = v326[1];
              LODWORD(v326[1]) = 0;
              *(v245 + 8) = v249;
              LODWORD(v249) = HIDWORD(v326[1]);
              HIDWORD(v326[1]) = 0;
              *(v245 + 12) = v249;
              *(v245 + 16) = 0;
              *(v245 + 24) = 0;
              v250 = *v327;
              *v327 = 0;
              *(v245 + 16) = v250;
              LODWORD(v250) = *&v327[8];
              *&v327[8] = 0;
              *(v245 + 24) = v250;
              LODWORD(v250) = *&v327[12];
              *&v327[12] = 0;
              *(v245 + 28) = v250;
              v248 = *&v327[16];
            }

            *(v245 + 32) = v248;
            ++HIDWORD(v323);
            v251 = *v327;
            if (*&v327[12])
            {
              v252 = 40 * *&v327[12];
              v253 = (*v327 + 8);
              do
              {
                if (v253[8] != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v333, v253);
                }

                v253[8] = -1;
                v253 += 40;
                v252 -= 40;
              }

              while (v252);
              v251 = *v327;
            }

            if (v251)
            {
              *v327 = 0;
              *&v327[8] = 0;
              WTF::fastFree(v251, v32);
            }

            if (HIDWORD(v326[1]))
            {
              v254 = v326[0];
              v255 = 8 * HIDWORD(v326[1]);
              do
              {
                v256 = *v254++;

                v255 -= 8;
              }

              while (v255);
            }

            v257 = v326[0];
            if (v326[0])
            {
              v326[0] = 0;
              LODWORD(v326[1]) = 0;
              WTF::fastFree(v257, v32);
            }
          }

          else
          {
            ++v229;
          }
        }

        while (v229 != 3);
        v228 = v311 + 4;
      }

      while (v311 != 12);
      v258 = v356;
      v259 = *(v356 + 24);
      v260 = [v259 label];
      [v348 setLabel:v260];

      v261 = *(v258 + 32);
      v262 = [v261 label];
      [v349 setLabel:v262];

      v263 = *(v258 + 40);
      v264 = [v263 label];
      [v350 setLabel:v264];

      v326[0] = 24;
      std::ranges::__sort::__sort_fn_impl[abi:sn200100]<WebGPU::BindGroup::BufferAndType *,WebGPU::BindGroup::BufferAndType *,std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*>(v335, v335 + 2 * HIDWORD(v336), &v333, v326, v265);
      v266 = *(a1 + 540);
      if (v266 == -1)
      {
        WebGPU::Device::loseTheDevice(a1, 0);
        WebGPU::BindGroup::createInvalid(a3, a1);
      }

      else
      {
        v267 = v348;
        v268 = v349;
        v269 = v350;
        v270 = v266 + 1;
        *(a1 + 540) = v270;
        WebGPU::BindGroup::create(a3, v267, v268, v269, &v323, v258, &v335, &v334, v351, v270, a1);
      }

      WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v323, v271);
      goto LABEL_383;
    }

    if (!WebGPU::BindGroup::s_heapRef)
    {
      goto LABEL_464;
    }

LABEL_381:
    v223 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, v32);
    goto LABEL_382;
  }

  v36 = a2[4];
  v301 = &v36[7 * v35];
LABEL_34:
  v37 = *v36;
  if (*v36)
  {
    if (*(v37 + 8) != -140055559)
    {
      v282 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Unknown chain object in WGPUBindGroupEntry"];
      WebGPU::Device::generateAValidationError(a1, v282);

      if (!WebGPU::BindGroup::s_heapRef)
      {
        goto LABEL_464;
      }

      goto LABEL_381;
    }

    if (*v37)
    {
      v283 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Unknown chain object in WGPUBindGroupEntry"];
      WebGPU::Device::generateAValidationError(a1, v283);

      if (!WebGPU::BindGroup::s_heapRef)
      {
        goto LABEL_464;
      }

      goto LABEL_381;
    }

    v38 = *(v37 + 16);
  }

  else
  {
    v38 = 0;
  }

  v39 = v36[2];
  v40 = v38 != 0;
  if (v39)
  {
    ++v40;
  }

  v41 = v36[5];
  if (v41)
  {
    ++v40;
  }

  v318 = v36[6];
  if (v318)
  {
    ++v40;
  }

  if (v40 != 1)
  {
    if (!WebGPU::BindGroup::s_heapRef)
    {
      goto LABEL_464;
    }

    goto LABEL_381;
  }

  v316 = v36;
  v42 = *(v36 + 2);
  v43 = 9 * ((v42 + ~(v42 << 15)) ^ ((v42 + ~(v42 << 15)) >> 10));
  v307 = ((v43 ^ (v43 >> 6)) + ~((v43 ^ (v43 >> 6)) << 11)) ^ (((v43 ^ (v43 >> 6)) + ~((v43 ^ (v43 >> 6)) << 11)) >> 16);
  v44 = 0;
  if (!v39)
  {
    v114 = 0;
    v304 = v36[5];
    v306 = v38;
    while (1)
    {
      v116 = dword_225881C50[v114];
      v117 = v356;
      v118 = WebGPU::BindGroupLayout::argumentBufferIndexForEntryIndex(v356, v42, v116);
      if (v118 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_176;
      }

      v119 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v117, v42, v116);
      if ((v120 & 1) == 0)
      {
LABEL_472:
        __break(0xC471u);
        JUMPOUT(0x22566A538);
      }

      v121 = v119;
      WebGPU::BindGroupLayout::bufferSizeIndexForEntryIndex(v117, v42, v116);
      v122 = 1;
      if (v121 == 2)
      {
        v122 = 2;
      }

      v123 = v121 == 1 ? 3 : v122;
      if (!v41)
      {
        break;
      }

      v124 = *(v6 + 48);
      if (!v124)
      {
        goto LABEL_475;
      }

      if (v42 == -2)
      {
        goto LABEL_480;
      }

      if (v42 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22566A638);
      }

      v125 = *(v124 - 8);
      v126 = v125 & v307;
      v127 = (v124 + 136 * (v125 & v307));
      v128 = *v127;
      if (*v127 != v42)
      {
        v129 = 1;
        while (v128 != -1)
        {
          v126 = (v126 + v129) & v125;
          v127 = (v124 + 136 * v126);
          v128 = *v127;
          ++v129;
          if (*v127 == v42)
          {
            goto LABEL_205;
          }
        }

        v127 = (v124 + 136 * *(v124 - 4));
      }

LABEL_205:
      if (v127 == (v124 + 136 * *(v124 - 4)))
      {
LABEL_475:
        __break(0xC471u);
        JUMPOUT(0x22566A598);
      }

      if (*(v127 + 48) != 1)
      {
        v281 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Expected sampler but it was not present in the bind group layout"];
        WebGPU::Device::generateAValidationError(a1, v281);

        if (!WebGPU::BindGroup::s_heapRef)
        {
          goto LABEL_464;
        }

        goto LABEL_381;
      }

      v138 = v316[5];
      ++*v138;
      v333 = v138;
      if (*(v138 + 16) != 1 || *(v138 + 10) != a1)
      {
        v272 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Underlying sampler is not valid or created from a different device"];
        WebGPU::Device::generateAValidationError(a1, v272);

        if (WebGPU::BindGroup::s_heapRef)
        {
          v274 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, v273);
        }

        else
        {
          v274 = WebGPU::BindGroup::operatorNewSlow(0);
        }

        v275 = v274;
        WebGPU::BindGroup::BindGroup(v274, a1);
        *a3 = v275;
LABEL_431:
        if (*v138 != 1)
        {
          --*v138;
          goto LABEL_383;
        }

        WebGPU::Sampler::~Sampler(v138, v32, v46);
LABEL_454:
        bmalloc::api::tzoneFree(v279, v280);
        goto LABEL_383;
      }

      v139 = v127[6];
      if (v139 == 3)
      {
        if (!v138[18])
        {
          goto LABEL_430;
        }
      }

      else if (v139 == 2)
      {
        if (v138[18] || v138[14] == 1 || v138[13] == 1 || v138[15] == 1)
        {
LABEL_430:
          v276 = MEMORY[0x277CCACA8];
          v277 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected sampler type(%u) has wrong comparison or filtering modes", v139];
          v278 = [v276 stringWithFormat:@"GPUDevice.createBindGroup: %@", v277];
          WebGPU::Device::generateAValidationError(a1, v278);

          WebGPU::BindGroup::createInvalid(a3, a1);
          goto LABEL_431;
        }
      }

      else if (v139 != 1 || v138[18])
      {
        goto LABEL_430;
      }

      v140 = WebGPU::Sampler::samplerState(v138);
      if (v116 != 3)
      {
        if (v116 >= 3)
        {
          goto LABEL_479;
        }

        WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v118);
        [*(&v353 + v116) setSamplerState:v140 atIndex:v118];
        ++*v138;
        v332 = v138;
        v323 = 0uLL;
        v324 = 0;
        WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>(v326, &v334, &v332, &v323);
        v143 = v326[0] + 8 * v116;
        if ((v143[12] & 1) == 0)
        {
          v143[12] = 1;
        }

        *(v143 + 2) = v118;
        if (v332)
        {
          WTF::RefCounted<WebGPU::Sampler>::deref(v332, v141, v142);
        }
      }

      if (*v138 == 1)
      {
        WebGPU::Sampler::~Sampler(v138, v32, v115);
LABEL_203:
        bmalloc::api::tzoneFree(v136, v137);
        goto LABEL_175;
      }

      --*v138;
LABEL_175:
      v44 = 1;
LABEL_176:
      if (++v114 == 4)
      {
LABEL_369:
        if ((v44 & 1) == 0 && (*(v356 + 120) & 1) == 0)
        {
          v286 = MEMORY[0x277CCACA8];
          v287 = [MEMORY[0x277CCACA8] stringWithFormat:@"Binding %d was not contained in the bind group", *(v316 + 2)];
          v288 = [v286 stringWithFormat:@"GPUDevice.createBindGroup: %@", v287];
          WebGPU::Device::generateAValidationError(a1, v288);

          WebGPU::BindGroup::createInvalid(a3, a1);
          goto LABEL_383;
        }

        v36 = v316 + 7;
        if (v316 + 7 == v301)
        {
          goto LABEL_372;
        }

        goto LABEL_34;
      }
    }

    if (v318)
    {
      v130 = *(v6 + 48);
      if (!v130)
      {
        goto LABEL_484;
      }

      if (v42 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x22566A658);
      }

      if (v42 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22566A678);
      }

      v131 = *(v130 - 8);
      v132 = v131 & v307;
      v133 = (v130 + 136 * (v131 & v307));
      v134 = *v133;
      if (*v133 != v42)
      {
        v135 = 1;
        while (v134 != -1)
        {
          v132 = (v132 + v135) & v131;
          v133 = (v130 + 136 * v132);
          v134 = *v133;
          ++v135;
          if (*v133 == v42)
          {
            goto LABEL_236;
          }
        }

        v133 = (v130 + 136 * *(v130 - 4));
      }

LABEL_236:
      if (v133 == (v130 + 136 * *(v130 - 4)))
      {
LABEL_484:
        __break(0xC471u);
        JUMPOUT(0x22566A518);
      }

      v150 = *(v133 + 48);
      if (v150 == 2)
      {
        v151 = (v133 + 4);
      }

      else
      {
        v151 = 0;
      }

      if (v150 == 3)
      {
        v152 = (v133 + 4);
      }

      else
      {
        v152 = 0;
      }

      if ((v150 - 2) >= 3)
      {
        v284 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Expected texture or storage texture but it was not present in the bind group layout"];
        WebGPU::Device::generateAValidationError(a1, v284);

        if (!WebGPU::BindGroup::s_heapRef)
        {
          goto LABEL_464;
        }

        goto LABEL_381;
      }

      v313 = v123;
      v153 = v316[6];
      ++*(v153 + 8);
      *&v323 = v153;
      v154 = *(a1 + 16);
      atomic_fetch_add(v154, 1u);
      v326[0] = v154;
      WebGPU::Queue::clearTextureViewIfNeeded(v154, v323);
      v326[0] = 0;
      if (v154 && atomic_fetch_add(v154, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v154);
        WebGPU::Queue::~Queue(v154);
        bmalloc::api::tzoneFree(v220, v221);
      }

      v155 = v323;
      v309 = WebGPU::TextureView::texture(v323);
      v333 = v309;
      v156 = *(v155 + 12);
      if (*(v156 + 104))
      {
        if (v116 == 3)
        {
LABEL_283:
          if (v309)
          {
            if (v116 == 3)
            {
              v171 = v344;
              v170 = v313;
            }

            else
            {
              v170 = v313;
              if (v116 == 2)
              {
                v171 = v341;
              }

              else
              {
                v171 = v342;
                if (v116 == 1)
                {
                  v171 = v343;
                }
              }
            }

            v173 = v170 - 1;
            v174 = &v171[v170 - 1];
            v175 = *(v174 + 3);
            if (v175 == *(v174 + 2))
            {
              WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto9MTLBuffer}* {__strong}&>(v174, &v333);
            }

            else
            {
              v176 = *v174;
              *(v176 + v175) = v309;
              ++*(v174 + 3);
            }

            if (v116 == 3)
            {
              v177 = v340;
            }

            else if (v116 == 2)
            {
              v177 = v337;
            }

            else
            {
              v177 = v338;
              if (v116 == 1)
              {
                v177 = v339;
              }
            }

            if (v150 == 3)
            {
              v178 = WebGPU::usageForStorageTexture(v133[6]);
            }

            else
            {
              v178 = 64;
            }

            v41 = v304;
            v38 = v306;
            v179 = v323;
            v326[0] = __PAIR64__(*(v316 + 2), v178);
            if (v323)
            {
              ++*(v323 + 8);
            }

            v180 = &v177[v173];
            v326[1] = v179;
            v327[0] = 1;
            *&v327[8] = 0;
            *&v327[16] = 0;
            v181 = *(v180 + 12);
            if (v181 == *(v180 + 8))
            {
              WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebGPU::BindGroupEntryUsageData>(v180, v326);
            }

            else
            {
              v182 = *v180 + 40 * v181;
              *v182 = v326[0];
              *(v182 + 8) = 0;
              *(v182 + 16) = -1;
              v183 = v327[0];
              if (v327[0] != 255)
              {
                v184 = v326[1];
                v326[1] = 0;
                *(v182 + 8) = v184;
                *(v182 + 16) = v183;
              }

              *(v182 + 24) = *&v327[8];
              ++*(v180 + 12);
            }

            if (v327[0] != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v332, &v326[1]);
            }

            v155 = v323;
            v172 = v333;
          }

          else
          {
            v172 = 0;
            v41 = v304;
            v38 = v306;
          }

          if (!v155)
          {
            goto LABEL_175;
          }

          v185 = v155[2] - 1;
          if (v155[2] != 1)
          {
LABEL_367:
            v155[2] = v185;
            goto LABEL_175;
          }

          WebGPU::TextureView::~TextureView(v155, v32);
          goto LABEL_203;
        }

        if (v116 >= 3)
        {
          goto LABEL_479;
        }

        v157 = *(&v353 + v116);
        *(&v353 + v116) = 0;

        v158 = *(&v348 + v116);
        *(&v348 + v116) = 0;
      }

      else
      {
        v159 = *(v155 + 2);
        if (!v159)
        {
          v289 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Underlying texture is not valid"];
          WebGPU::Device::generateAValidationError(a1, v289);

          WebGPU::BindGroup::createInvalid(a3, a1);
          v290 = v155[2] - 1;
          if (v155[2] != 1)
          {
            goto LABEL_463;
          }

          goto LABEL_453;
        }

        if (*(v155 + 11) != a1)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Underlying texture was created from a different device"];
          v292 = v291 = v309;
          WebGPU::Device::generateAValidationError(a1, v292);

          WebGPU::BindGroup::createInvalid(a3, a1);
          goto LABEL_462;
        }

        v160 = *(v156 + 52);
        if (v150 == 2 && (v160 & 4) == 0 || v150 == 3 && (v160 & 8) == 0)
        {
          v285 = MEMORY[0x277CCACA8];
          v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"Storage texture usage(%u) did not have storage usage or storage texture entry did not have storage binding", *(v156 + 52)];
          v297 = [v285 stringWithFormat:@"GPUDevice.createBindGroup: %@", v296];
          WebGPU::Device::generateAValidationError(a1, v297);
          goto LABEL_448;
        }

        if (v150 == 2)
        {
          v161 = *(v156 + 40);
          v162 = v133[8];
          v163 = v162 ? 4 : 1;
          if (v163 != v161)
          {
            v294 = MEMORY[0x277CCACA8];
            v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bind group entry multisampled(%d) state does not match underlying texture sample count(%d)", v162, v161];
            v297 = [v294 stringWithFormat:@"GPUDevice.createBindGroup: %@", v296];
            WebGPU::Device::generateAValidationError(a1, v297);
LABEL_448:

LABEL_461:
            WebGPU::BindGroup::createInvalid(a3, a1);
            v291 = v333;
LABEL_462:

            v290 = v155[2] - 1;
            if (v155[2] != 1)
            {
LABEL_463:
              v155[2] = v290;
              goto LABEL_383;
            }

LABEL_453:
            WebGPU::TextureView::~TextureView(v155, v32);
            goto LABEL_454;
          }
        }

        if ((*(v356 + 120) & 1) == 0)
        {
          if (!WebGPU::validateTextureSampleType(v151, v155[10], v155[16], *(a1 + 240), *(a1 + 252)))
          {
            v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Bind group entry sampleType does not match TextureView sampleType"];
            WebGPU::Device::generateAValidationError(a1, v296);
            goto LABEL_461;
          }

          v159 = *(v155 + 2);
          v156 = *(v155 + 12);
        }

        if (!WebGPU::validateTextureViewDimension<WGPUTextureBindingLayout>(v151, v159, v156) || (WebGPU::validateTextureViewDimension<WGPUStorageTextureBindingLayout>(v152, *(v155 + 2), *(v155 + 12)) & 1) == 0)
        {
          v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Bind group entry viewDimension does not match TextureView viewDimension"];
          WebGPU::Device::generateAValidationError(a1, v296);
          goto LABEL_461;
        }

        if (v150 == 3)
        {
          if (v133[7] != v155[10])
          {
            v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Bind group storage texture entry format does not match TextureView format"];
            WebGPU::Device::generateAValidationError(a1, v296);
            goto LABEL_461;
          }

          v164 = WebGPU::TextureView::texture(v155);
          v165 = [v164 mipmapLevelCount];

          if (v165 != 1)
          {
            v295 = MEMORY[0x277CCACA8];
            v296 = WebGPU::TextureView::texture(v155);
            v297 = [v295 stringWithFormat:@"Storage textures must have a single mip level(%lu)", objc_msgSend(v296, "mipmapLevelCount")];
            v298 = [v295 stringWithFormat:@"GPUDevice.createBindGroup: %@", v297];
            WebGPU::Device::generateAValidationError(a1, v298);

            goto LABEL_448;
          }
        }

        else if (v150 == 2 && WebGPU::is32bppFloatFormat(v309))
        {
          v166 = v133[6];
          if ((v166 - 1) > 1)
          {
            goto LABEL_456;
          }

          if (v166 == 1)
          {
            v167 = *(a1 + 252);
            if (!v167)
            {
LABEL_456:
              v296 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Can not create bind group with filterable 32bpp floating point texture as float32-filterable feature is not enabled"];
              WebGPU::Device::generateAValidationError(a1, v296);
              goto LABEL_461;
            }

            v168 = *(a1 + 240);
            while (1)
            {
              v169 = *v168++;
              if (v169 == 13)
              {
                break;
              }

              if (!--v167)
              {
                goto LABEL_456;
              }
            }
          }
        }

        if (v116 == 3)
        {
          goto LABEL_283;
        }

        if (v116 > 2)
        {
          goto LABEL_479;
        }
      }

      WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v118);
      [*(&v353 + v116) setTexture:v309 atIndex:v118];
      goto LABEL_283;
    }

    if (!v38)
    {
      goto LABEL_175;
    }

    v144 = *(v6 + 48);
    if (!v144)
    {
      goto LABEL_478;
    }

    if (v42 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x22566A5B8);
    }

    if (v42 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x22566A5D8);
    }

    v145 = *(v144 - 8);
    v146 = v145 & v307;
    v147 = (v144 + 136 * (v145 & v307));
    v148 = *v147;
    if (*v147 != v42)
    {
      v149 = 1;
      while (v148 != -1)
      {
        v146 = (v146 + v149) & v145;
        v147 = (v144 + 136 * v146);
        v148 = *v147;
        ++v149;
        if (*v147 == v42)
        {
          goto LABEL_317;
        }
      }

      v147 = (v144 + 136 * *(v144 - 4));
    }

LABEL_317:
    if (v147 == (v144 + 136 * *(v144 - 4)))
    {
LABEL_478:
      __break(0xC471u);
LABEL_479:
      __break(1u);
LABEL_480:
      __break(0xC471u);
      JUMPOUT(0x22566A618);
    }

    if (*(v147 + 48) != 4)
    {
      v293 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Expected external texture but it was not present in the bind group layout"];
      WebGPU::Device::generateAValidationError(a1, v293);

      WebGPU::BindGroup::createInvalid(a3, a1);
      goto LABEL_383;
    }

    ++v38[2];
    v333 = v38;
    WebGPU::Device::createExternalTextureFromPixelBuffer(v326, a1, *(v38 + 2));
    v314 = v123;
    if (v326[0])
    {
      v186 = v326[0];
    }

    else
    {
      v186 = *(a1 + 296);
    }

    v332 = v186;
    v188 = v343;
    v187 = v339;
    if (v116 != 1)
    {
      if (v116 == 3)
      {
        v310 = 1;
        v188 = v344;
        v187 = v340;
LABEL_328:
        if (!v186)
        {
          goto LABEL_343;
        }

        v303 = v187;
        v190 = v314 - 1;
        v191 = &v188[v314 - 1];
        v192 = *(v191 + 3);
        if (v192 == *(v191 + 2))
        {
          WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto9MTLBuffer}* {__strong}&>(&v188[v314 - 1], &v332);
          v193 = v333;
          v194 = *(v316 + 2);
          v187 = v303;
          v195 = &v303[v190];
          LODWORD(v323) = 64;
          DWORD1(v323) = v194;
          if (!v333)
          {
            goto LABEL_336;
          }
        }

        else
        {
          v300 = *v191;
          *(v300 + 8 * v192) = v186;
          ++*(v191 + 3);
          v187 = v303;
          v195 = &v303[v190];
          v196 = *(v316 + 2);
          LODWORD(v323) = 64;
          DWORD1(v323) = v196;
          v193 = v306;
        }

        ++v193[2];
LABEL_336:
        *(&v323 + 1) = v193;
        LOBYTE(v324) = 2;
        v325 = 0uLL;
        v197 = *(v195 + 12);
        if (v197 == *(v195 + 8))
        {
          WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebGPU::BindGroupEntryUsageData>(v195, &v323);
        }

        else
        {
          v198 = *v195 + 40 * v197;
          *v198 = v323;
          *(v198 + 8) = 0;
          *(v198 + 16) = -1;
          v199 = v324;
          if (v324 != 255)
          {
            v200 = *(&v323 + 1);
            *(&v323 + 1) = 0;
            *(v198 + 8) = v200;
            *(v198 + 16) = v199;
          }

          *(v198 + 24) = v325;
          ++*(v195 + 12);
        }

        if (v324 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v322, &v323 + 8);
        }

LABEL_343:
        if (v326[1])
        {
          v201 = v326[1];
          v322 = v201;
        }

        else
        {
          v202 = *(a1 + 296);
          v322 = v202;

          v201 = v202;
          if (!v202)
          {
LABEL_358:
            if (v310)
            {
              v214 = v332;
              v155 = v333;
              v215 = v322;
              v41 = v304;
              v38 = v306;
            }

            else
            {
              if (v116 >= 3)
              {
                goto LABEL_479;
              }

              WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v118);
              v216 = v332;
              v155 = v333;
              v215 = v322;
              WebGPU::ExternalTexture::updateExternalTextures(v333, v332, v322);
              v315 = v216;
              [*(&v353 + v116) setTexture:v216 atIndex:v118];
              WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v118 + 1);
              [*(&v353 + v116) setTexture:v215 atIndex:v118 + 1];
              WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v118 + 2);
              v217 = [*(&v353 + v116) constantDataAtIndex:v118 + 2];
              v41 = v304;
              v38 = v306;
              if (v217)
              {
                *v217 = *v327;
                *(v217 + 16) = *&v327[16];
              }

              v218 = v118 + 3;
              WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v116, v218);
              v219 = [*(&v353 + v116) constantDataAtIndex:v218];
              v214 = v315;
              if (v219)
              {
                *v219 = v328;
                v219[1] = v329;
                v219[2] = v330;
                v219[3] = v331;
              }
            }

            if (!v155)
            {
              goto LABEL_175;
            }

            v185 = v155[2] - 1;
            if (v155[2] != 1)
            {
              goto LABEL_367;
            }

            WebGPU::ExternalTexture::~ExternalTexture(v155, v32);
            goto LABEL_203;
          }
        }

        v203 = &v188[v314 - 1];
        v204 = *(v203 + 3);
        if (v204 == *(v203 + 2))
        {
          WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto9MTLBuffer}* {__strong}&>(&v188[v314 - 1], &v322);
        }

        else
        {
          v205 = v187;
          v206 = *v203;
          *(v206 + 8 * v204) = v201;
          v187 = v205;
          ++*(v203 + 3);
        }

        v207 = *(v316 + 2);
        v208 = v333;
        LODWORD(v323) = 64;
        DWORD1(v323) = v207;
        if (v333)
        {
          ++v333[2];
        }

        v209 = &v187[v314 - 1];
        *(&v323 + 1) = v208;
        LOBYTE(v324) = 2;
        v325 = 0uLL;
        v210 = *(v209 + 12);
        if (v210 == *(v209 + 8))
        {
          WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebGPU::BindGroupEntryUsageData>(v209, &v323);
        }

        else
        {
          v211 = *v209 + 40 * v210;
          *v211 = v323;
          *(v211 + 8) = 0;
          *(v211 + 16) = -1;
          v212 = v324;
          if (v324 != 255)
          {
            v213 = *(&v323 + 1);
            *(&v323 + 1) = 0;
            *(v211 + 8) = v213;
            *(v211 + 16) = v212;
          }

          *(v211 + 24) = v325;
          ++*(v209 + 12);
        }

        if (v324 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(v357, &v323 + 8);
        }

        goto LABEL_358;
      }

      if (v116 == 2)
      {
        v188 = v341;
        v187 = v337;
      }

      else
      {
        v188 = v342;
        v187 = v338;
        if (v116 >= 3)
        {
          goto LABEL_479;
        }
      }
    }

    v310 = 0;
    v189 = v351 + 24 * v116;
    *(v189 + 1) = HIDWORD(v188[v314 - 1]);
    *(v189 + 2) = v118;
    goto LABEL_328;
  }

  v308 = 0;
  v45 = 0;
  while (1)
  {
    v47 = dword_225881C50[v45];
    v48 = v356;
    v49 = WebGPU::BindGroupLayout::argumentBufferIndexForEntryIndex(v356, v42, v47);
    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_50:
    if (++v45 == 4)
    {
      goto LABEL_369;
    }
  }

  v50 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v48, v42, v47);
  if ((v51 & 1) == 0)
  {
    goto LABEL_472;
  }

  v52 = v50;
  v305 = WebGPU::BindGroupLayout::bufferSizeIndexForEntryIndex(v48, v42, v47);
  v53 = *(v6 + 48);
  if (!v53)
  {
    goto LABEL_484;
  }

  if (v42 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x22566A558);
  }

  if (v42 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22566A578);
  }

  v54 = *(v53 - 8);
  v55 = v54 & v307;
  v56 = (v53 + 136 * (v54 & v307));
  v57 = *v56;
  if (*v56 != v42)
  {
    v58 = 1;
    while (v57 != -1)
    {
      v55 = (v55 + v58) & v54;
      v56 = (v53 + 136 * v55);
      v57 = *v56;
      ++v58;
      if (*v56 == v42)
      {
        goto LABEL_62;
      }
    }

    v56 = (v53 + 136 * *(v53 - 4));
  }

LABEL_62:
  if (v56 == (v53 + 136 * *(v53 - 4)))
  {
    goto LABEL_484;
  }

  if (*(v56 + 48))
  {
    v59 = 0;
  }

  else
  {
    v59 = v56 + 4;
  }

  if (*(v56 + 48))
  {
    v222 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Expected buffer but it was not present in the bind group layout"];
    WebGPU::Device::generateAValidationError(a1, v222);

    if (WebGPU::BindGroup::s_heapRef)
    {
      goto LABEL_381;
    }

LABEL_464:
    v223 = WebGPU::BindGroup::operatorNewSlow(0);
LABEL_382:
    v224 = v223;
    WebGPU::BindGroup::BindGroup(v223, a1);
    *a3 = v224;
    goto LABEL_383;
  }

  v60 = v316[2];
  while (1)
  {
    v61 = *v60;
    if ((*v60 & 1) == 0)
    {
      break;
    }

    v62 = *v60;
    atomic_compare_exchange_strong_explicit(v60, &v62, v61 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v62 == v61)
    {
      goto LABEL_75;
    }
  }

  v63 = 0;
  v64 = *v60;
  atomic_compare_exchange_strong_explicit(*v60, &v63, 1u, memory_order_acquire, memory_order_acquire);
  if (v63)
  {
    MEMORY[0x22AA683C0](v64);
  }

  ++*(v64 + 8);
  v65 = 1;
  atomic_compare_exchange_strong_explicit(v64, &v65, 0, memory_order_release, memory_order_relaxed);
  if (v65 != 1)
  {
    WTF::Lock::unlockSlow(v64);
  }

LABEL_75:
  *&v323 = v60;
  v319 = *(v60 + 8);
  v333 = v319;
  v66 = *(v60 + 44);
  if (v47 != 3 && v66 == 4)
  {
    if (v47 > 2)
    {
      goto LABEL_479;
    }

    v67 = *(&v353 + v47);
    *(&v353 + v47) = 0;

    v68 = *(&v348 + v47);
    *(&v348 + v47) = 0;
  }

  if (v66 == 4)
  {
    v69 = 0;
  }

  else
  {
    v69 = v316[3];
  }

  if ([v319 length] <= v69)
  {
    v71 = 0;
  }

  else
  {
    v71 = ([v319 length] - v69);
  }

  v72 = v316[4];
  if (v72 == -1)
  {
    v72 = v71;
  }

  v312 = v72;
  if (!((v59[3] == 0) | v308 & 1))
  {
    LODWORD(v326[0]) = v59[2];
    v326[1] = v72;
    *v327 = v71;
    *&v327[8] = v42;
    v73 = HIDWORD(v336);
    if (HIDWORD(v336) == v336)
    {
      v74 = WTF::Vector<WebGPU::BindGroup::BufferAndType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v335, HIDWORD(v336) + 1, v326);
      v73 = HIDWORD(v336);
      v75 = (v335 + 32 * HIDWORD(v336));
      v76 = v74[1];
      *v75 = *v74;
    }

    else
    {
      v75 = (v335 + 32 * HIDWORD(v336));
      v76 = *v327;
      *v75 = *v326;
    }

    v75[1] = v76;
    HIDWORD(v336) = v73 + 1;
    v308 = 1;
  }

  if (*(v60 + 44) == 4)
  {
    if (*(v60 + 280) != a1)
    {
      goto LABEL_111;
    }

    v302 = v59 + 2;
  }

  else
  {
    if (!*(v60 + 8) || *(v60 + 280) != a1)
    {
LABEL_111:
      if (v66 != 4)
      {
        v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUDevice.createBindGroup: %@", @"Buffer is invalid or created from a different device"];
        WebGPU::Device::generateAValidationError(a1, v81);
      }

      if (WebGPU::BindGroup::s_heapRef)
      {
        v82 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, v70);
      }

      else
      {
        v82 = WebGPU::BindGroup::operatorNewSlow(0);
      }

      v83 = v82;
      WebGPU::BindGroup::BindGroup(v82, a1);
      v84 = 0;
      *a3 = v83;
      goto LABEL_116;
    }

    v299 = v59[2];
    v302 = v59 + 2;
    v89 = v316[3];
    if (v89 >= [v319 length])
    {
      v91 = MEMORY[0x277CCACA8];
      v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected entry.offset(%llu) >= buffer length(%lu)", v316[3], objc_msgSend(v319, "length")];
      v93 = [v91 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
      WebGPU::Device::generateAValidationError(a1, v93);
      goto LABEL_168;
    }

    v90 = *(v60 + 40);
    if ((*v302 - 2) >= 2)
    {
      if (*v302 != 1 || (v90 & 0x40) == 0)
      {
LABEL_153:
        v105 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected type(%u), buffer.usage(%u)", *v302, v90];
        v93 = [v105 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
        WebGPU::Device::generateAValidationError(a1, v93);
        goto LABEL_168;
      }
    }

    else if ((v90 & 0x80) == 0)
    {
      goto LABEL_153;
    }

    if (v299 == 1)
    {
      v106 = v316[3];
      if (v106 % *(a1 + 152))
      {
        v107 = *(a1 + 156);
LABEL_159:
        v108 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer offset(%llu) is not a multiple of the device buffer alignment(%u)", v106, v107];
        v93 = [v108 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
        WebGPU::Device::generateAValidationError(a1, v93);
LABEL_168:

        WebGPU::BindGroup::createInvalid(a3, a1);
        v84 = 0;
LABEL_116:

        *&v323 = 0;
        goto LABEL_117;
      }

      v109 = *(a1 + 136);
      if (v312 > v109)
      {
        goto LABEL_167;
      }
    }

    else if ((v299 & 0xFFFFFFFE) == 2)
    {
      v106 = v316[3];
      v107 = *(a1 + 156);
      if (v106 % v107)
      {
        goto LABEL_159;
      }

      v109 = *(a1 + 144);
      if (v312 > v109)
      {
LABEL_167:
        v112 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer size(%llu) is larger than the device limits(%llu)", v312, v109];
        v93 = [v112 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
        WebGPU::Device::generateAValidationError(a1, v93);
        goto LABEL_168;
      }

      if ((v312 & 3) != 0)
      {
        v113 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Storage buffer size(%llu) is not multiple of 4", v312];
        v93 = [v113 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
        WebGPU::Device::generateAValidationError(a1, v93);
        goto LABEL_168;
      }
    }

    if (!v312 || v312 + v69 > [v319 length] || (v110 = *(v59 + 2)) != 0 && v110 > v312)
    {
      v111 = MEMORY[0x277CCACA8];
      v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"entrySize == 0 or entrySize(%llu) + entryOffset(%llu) > buffer size(%lu) or layoutBinding->minBindingSize(%llu) > entrySize(%llu)", v312, v69, objc_msgSend(v319, "length"), *(v59 + 2), v312];
      v93 = [v111 stringWithFormat:@"GPUDevice.createBindGroup: %@", v92];
      WebGPU::Device::generateAValidationError(a1, v93);
      goto LABEL_168;
    }
  }

  if (v47 != 3 && [v319 length])
  {
    if (v47 > 2)
    {
      goto LABEL_479;
    }

    WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v47, v49);
    [*(&v353 + v47) setBuffer:v319 offset:v69 atIndex:v49];
    if ((v305 & 0x100000000) != 0)
    {
      WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&v345 + v47, v305);
      v77 = [*(&v353 + v47) constantDataAtIndex:v305];
      if (v77)
      {
        v78 = [v319 length];
        if (v78 >= v312)
        {
          v79 = v312;
        }

        else
        {
          v79 = v78;
        }

        *v77 = v79;
      }
    }
  }

  if (!v319)
  {
    v84 = 1;
    goto LABEL_116;
  }

  v80 = v343;
  if (v47 != 1)
  {
    if (v47 == 3)
    {
      v80 = v344;
    }

    else
    {
      v80 = v342;
      if (v47 == 2)
      {
        v80 = v341;
      }
    }
  }

  if (v52 == 1)
  {
    v94 = 2;
  }

  else
  {
    v94 = v52 == 2;
  }

  v95 = &v80[v94];
  v96 = *(v95 + 3);
  if (v96 == *(v95 + 2))
  {
    WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto9MTLBuffer}* {__strong}&>(v95, &v333);
  }

  else
  {
    v97 = *v95;
    *(v97 + v96) = v319;
    ++*(v95 + 3);
  }

  v98 = v339;
  if (v47 != 1)
  {
    if (v47 == 3)
    {
      v98 = v340;
    }

    else
    {
      v98 = v338;
      if (v47 == 2)
      {
        v98 = v337;
      }
    }
  }

  v99 = WebGPU::usageForBuffer(*v302);
  v326[0] = __PAIR64__(*(v316 + 2), v99);
  mpark::variant<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>::variant<WebGPU::Buffer*,WebGPU::Buffer*,0,0,0,0ul,WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,0>(&v326[1], v323);
  v100 = &v98[v94];
  *&v327[8] = v69;
  *&v327[16] = v312;
  v101 = *(v100 + 12);
  if (v101 == *(v100 + 8))
  {
    WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebGPU::BindGroupEntryUsageData>(v100, v326);
  }

  else
  {
    v102 = *v100 + 40 * v101;
    *v102 = v326[0];
    *(v102 + 8) = 0;
    *(v102 + 16) = -1;
    v103 = v327[0];
    if (v327[0] != 255)
    {
      v104 = v326[1];
      v326[1] = 0;
      *(v102 + 8) = v104;
      *(v102 + 16) = v103;
    }

    *(v102 + 24) = *&v327[8];
    ++*(v100 + 12);
  }

  if (v327[0] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v332, &v326[1]);
  }

  v60 = v323;

  *&v323 = 0;
  if (!v60)
  {
    goto LABEL_49;
  }

  v84 = 1;
  do
  {
LABEL_117:
    v85 = *v60;
    if ((*v60 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v60, v32);
      if ((v84 & 1) == 0)
      {
        goto LABEL_383;
      }

      goto LABEL_49;
    }

    v86 = *v60;
    atomic_compare_exchange_strong_explicit(v60, &v86, v85 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v86 != v85);
  if (v85 == 3)
  {
    WebGPU::Buffer::~Buffer(v60);
    bmalloc::api::tzoneFree(v87, v88);
    if ((v84 & 1) == 0)
    {
      goto LABEL_383;
    }

LABEL_49:
    v44 = 1;
    goto LABEL_50;
  }

  if (v84)
  {
    goto LABEL_49;
  }

LABEL_383:
  WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&v334, v32, v46);
  if (v335)
  {
    WTF::fastFree(v335, v225);
  }

  std::array<std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(v337, v225);
  std::array<std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(v341, v226);
  WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray(&v345, v227);
  WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray(&v348);
  result = WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray(&v353);
  v6 = v356;
  if (v356)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_22566A69C(_Unwind_Exception *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, WebGPU::Sampler **a58, WTF *a59, uint64_t a60, char a61)
{
  WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a58, a2, a3);
  if (a59)
  {
    WTF::fastFree(a59, v63);
  }

  std::array<std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(&a61, v63);
  std::array<std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(&STACK[0x260], v64);
  WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray((v61 - 256), v65);
  WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray((v61 - 232));
  WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray((v61 - 128));
  WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>::~Ref((v61 - 104), v66);
  _Unwind_Resume(a1);
}

WebGPU::BindGroup *WebGPU::BindGroup::createInvalid(WebGPU::BindGroup *this, WebGPU::Device *a2)
{
  if (WebGPU::BindGroup::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::BindGroup::operatorNewSlow(0);
  }

  v5 = NonCompact;
  result = WebGPU::BindGroup::BindGroup(NonCompact, a2);
  *this = v5;
  return result;
}

uint64_t *WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *result, int a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x22566AC58);
    }

    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x22566AC78);
    }

    v3 = *(v2 - 8);
    v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v5 = v3 & (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) ^ (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) >> 16));
    v6 = *(v2 + 4 * v5);
    if (v6 == a2)
    {
LABEL_8:
      v8 = *(v2 - 4);
      if (v5 != v8)
      {
        *(v2 + 4 * v5) = -2;
        v9 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
        *(v2 - 16) = v9;
        if (v8 >= 9 && 6 * v9.i32[1] < v8)
        {
          return WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(result, v8 >> 1, 0);
        }
      }
    }

    else
    {
      v7 = 1;
      while (v6 != -1)
      {
        v5 = (v5 + v7) & v3;
        v6 = *(v2 + 4 * v5);
        ++v7;
        if (v6 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t WebGPU::usageForBuffer(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 8;
    }

    else
    {
      v3 = a1 == 0x7FFFFFFF;
      result = 0;
      if (v3)
      {
        result = 907;
        __break(0xC471u);
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = 4;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 1)
    {
      return 2;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

WebGPU::Sampler *WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>(WebGPU::Sampler *result, uint64_t *a2, const WTF::StringImpl *a3, __int128 *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22566AF34);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a3;
    result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v9;
    v8 = *a2;
    v4 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = v8 + 32 * v14;
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v25 = v8 + 32 * *(v8 - 4);
        *v7 = v15;
        *(v7 + 1) = v25;
        *(v7 + 16) = 0;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = v8 + 32 * v14;
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0u;
      v17[1] = 0u;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *a3 = 0;
  result = *v15;
  *v15 = v4;
  if (!result)
  {
LABEL_16:
    v19 = *a4;
    *(v15 + 24) = *(a4 + 2);
    *(v15 + 8) = v19;
    v20 = *a2;
    if (*a2)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_16;
  }

  WebGPU::Sampler::~Sampler(result, a2, a3);
  result = bmalloc::api::tzoneFree(v26, v27);
  v28 = *a4;
  *(v15 + 24) = *(a4 + 2);
  *(v15 + 8) = v28;
  v20 = *a2;
  if (*a2)
  {
LABEL_17:
    v21 = *(v20 - 16);
    v22 = *(v20 - 12) + 1;
    *(v20 - 12) = v22;
    v23 = (v21 + v22);
    v24 = *(v20 - 4);
    if (v24 <= 0x400)
    {
      goto LABEL_18;
    }

LABEL_25:
    if (v24 > 2 * v23)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_24:
  v22 = 1;
  *(v20 - 12) = 1;
  v23 = (*(v20 - 16) + 1);
  v24 = *(v20 - 4);
  if (v24 > 0x400)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (3 * v24 <= 4 * v23)
  {
    if (!v24)
    {
      result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::FastMalloc>::rehash(a2, 8u, v15);
      v15 = result;
      v20 = *a2;
      if (!*a2)
      {
LABEL_21:
        v24 = 0;
        goto LABEL_28;
      }

LABEL_27:
      v24 = *(v20 - 4);
      goto LABEL_28;
    }

LABEL_26:
    result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::FastMalloc>::rehash(a2, v24 << (6 * v22 >= (2 * v24)), v15);
    v15 = result;
    v20 = *a2;
    if (!*a2)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_28:
  *v7 = v15;
  *(v7 + 1) = v20 + 32 * v24;
  *(v7 + 16) = 1;
  return result;
}

WebGPU::Sampler **WTF::Ref<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>::~Ref(WebGPU::Sampler **result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  *result = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = result;
      WebGPU::Sampler::~Sampler(v3, a2, a3);
      bmalloc::api::tzoneFree(v5, v6);
      return v4;
    }

    else
    {
      --*v3;
    }
  }

  return result;
}

uint64_t WebGPU::validateTextureSampleType(uint64_t a1, int a2, int a3, int *a4, unsigned int a5)
{
  if (!a1)
  {
    return 1;
  }

  v5 = *(a1 + 8) - 1;
  if (v5 > 4)
  {
    return 0;
  }

  v6 = dword_225881CD0[v5];
  v7 = 3;
  switch(a2)
  {
    case 0:
      return 0;
    case 1:
    case 2:
    case 7:
    case 8:
    case 9:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 34:
      return (v7 & v6) != 0;
    case 3:
    case 5:
    case 10:
    case 13:
    case 15:
    case 21:
    case 25:
    case 30:
    case 32:
    case 36:
    case 38:
      return (v6 & 0x10) != 0;
    case 4:
    case 6:
    case 11:
    case 14:
    case 16:
    case 22:
    case 31:
    case 33:
    case 37:
      return (v6 & 8) != 0;
    case 12:
      if (!a5)
      {
        return (v6 & 2) != 0;
      }

      v13 = a5;
      while (1)
      {
        v14 = *a4++;
        if (v14 == 13)
        {
          break;
        }

        v7 = 2;
        if (!--v13)
        {
          return (v7 & v6) != 0;
        }
      }

      return (v6 & 3) != 0;
    case 29:
      if (!a5)
      {
        return (v6 & 2) != 0;
      }

      v11 = a5;
      do
      {
        v12 = *a4++;
        if (v12 == 13)
        {
          return (v6 & 3) != 0;
        }

        v7 = 2;
        --v11;
      }

      while (v11);
      return (v7 & v6) != 0;
    case 35:
      if (!a5)
      {
        return (v6 & 2) != 0;
      }

      v9 = a5;
      do
      {
        v10 = *a4++;
        if (v10 == 13)
        {
          return (v6 & 3) != 0;
        }

        v7 = 2;
        --v9;
      }

      while (v9);
      return (v7 & v6) != 0;
    case 39:
    case 40:
    case 42:
      goto LABEL_32;
    case 41:
    case 43:
      if (a3 > 1)
      {
        if (a3 == 0x7FFFFFFF)
        {
          __break(0xC471u);
          JUMPOUT(0x22566B140);
        }

LABEL_32:
        v7 = 6;
        return (v7 & v6) != 0;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          return (v6 & 0x10) != 0;
        }

        goto LABEL_32;
      }

      result = (v6 & 0x16) != 0;
      break;
    default:
      if (a2 != 0x7FFFFFFF)
      {
        return (v7 & v6) != 0;
      }

      return 0;
  }

  return result;
}

uint64_t WebGPU::validateTextureViewDimension<WGPUTextureBindingLayout>(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a3 + 104) == 1)
  {
    a2 = *(a3 + 16);
  }

  v3 = *(a1 + 12);
  v4 = a2;
  v5 = [v4 textureType];

  v6 = v5 == 5;
  v7 = v5 == 6;
  v8 = v5 == 7;
  if (v3 != 6)
  {
    v8 = 0;
  }

  if (v3 != 5)
  {
    v7 = v8;
  }

  if (v3 != 4)
  {
    v6 = v7;
  }

  v9 = v5 == 0;
  v11 = v5 == 2 || v5 == 4;
  v13 = v5 == 3 || v5 == 8;
  if (v3 != 3)
  {
    v13 = 0;
  }

  if (v3 != 2)
  {
    v11 = v13;
  }

  if (v3 != 1)
  {
    v9 = v11;
  }

  if (v3 <= 3)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t WebGPU::validateTextureViewDimension<WGPUStorageTextureBindingLayout>(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a3 + 104) == 1)
  {
    a2 = *(a3 + 16);
  }

  v3 = *(a1 + 16);
  v4 = a2;
  v5 = [v4 textureType];

  v6 = v5 == 5;
  v7 = v5 == 6;
  v8 = v5 == 7;
  if (v3 != 6)
  {
    v8 = 0;
  }

  if (v3 != 5)
  {
    v7 = v8;
  }

  if (v3 != 4)
  {
    v6 = v7;
  }

  v9 = v5 == 0;
  v11 = v5 == 2 || v5 == 4;
  v13 = v5 == 3 || v5 == 8;
  if (v3 != 3)
  {
    v13 = 0;
  }

  if (v3 != 2)
  {
    v11 = v13;
  }

  if (v3 != 1)
  {
    v9 = v11;
  }

  if (v3 <= 3)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t WebGPU::is32bppFloatFormat(void *a1)
{
  v1 = a1;
  if ([v1 pixelFormat] == 55 || objc_msgSend(v1, "pixelFormat") == 105)
  {

    return 1;
  }

  else
  {
    v3 = [v1 pixelFormat] == 125;

    return v3;
  }
}

uint64_t WebGPU::usageForStorageTexture(uint64_t result)
{
  if (result > 1)
  {
    if (result == 2)
    {
      return 256;
    }

    else
    {
      if (result != 3)
      {
        goto LABEL_10;
      }

      return 512;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      return 128;
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x22566B4B8);
  }

  return result;
}

WebGPU::ExternalTexture **WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(WebGPU::ExternalTexture **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::ExternalTexture::~ExternalTexture(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

void WebGPU::BindGroup::create(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, int a10, atomic_ullong *a11)
{
  v16 = a2;
  v17 = a3;
  v19 = a4;
  if (WebGPU::BindGroup::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroup::s_heapRef, v18);
  }

  else
  {
    NonCompact = WebGPU::BindGroup::operatorNewSlow(0);
  }

  v21 = NonCompact;
  v22 = v16;
  v23 = v17;
  v24 = v19;
  *v21 = 0;
  *(v21 + 8) = 1;
  v45 = v22;
  *(v21 + 16) = v45;
  v25 = v23;
  *(v21 + 24) = v25;
  v26 = v24;
  *(v21 + 32) = v26;
  while (1)
  {
    v27 = *a11;
    if ((*a11 & 1) == 0)
    {
      break;
    }

    v28 = *a11;
    atomic_compare_exchange_strong_explicit(a11, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v28 == v27)
    {
      goto LABEL_11;
    }
  }

  v29 = 0;
  v30 = *a11;
  v31 = 1;
  atomic_compare_exchange_strong_explicit(*a11, &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    MEMORY[0x22AA683C0](v30);
  }

  ++*(v30 + 8);
  atomic_compare_exchange_strong_explicit(v30, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != 1)
  {
    WTF::Lock::unlockSlow(v30);
  }

LABEL_11:
  *(v21 + 56) = 0;
  *(v21 + 48) = 0;
  v32 = *a5;
  *a5 = 0;
  v33 = *(a5 + 2);
  *(a5 + 2) = 0;
  *(v21 + 56) = v33;
  v34 = *(a5 + 3);
  *(a5 + 3) = 0;
  *(v21 + 60) = v34;
  ++*(a6 + 8);
  *(v21 + 80) = 0;
  *(v21 + 72) = 0;
  v35 = *a7;
  *a7 = 0;
  v36 = *(a7 + 2);
  *(a7 + 2) = 0;
  *(v21 + 80) = v36;
  v37 = *(a7 + 3);
  *(a7 + 3) = 0;
  *(v21 + 104) = 0;
  *(v21 + 40) = a11;
  *(v21 + 48) = v32;
  *(v21 + 64) = a6;
  *(v21 + 72) = v35;
  *(v21 + 84) = v37;
  *(v21 + 88) = 0;
  *(v21 + 96) = 0;
  v38 = *a8;
  *a8 = 0;
  *(v21 + 104) = v38;
  *(v21 + 112) = *a9;
  v39 = *(a9 + 16);
  v40 = *(a9 + 32);
  v41 = *(a9 + 48);
  *(v21 + 176) = *(a9 + 64);
  *(v21 + 160) = v41;
  *(v21 + 144) = v40;
  *(v21 + 128) = v39;
  *(v21 + 184) = a10;
  v47 = 0;
  if (v37)
  {
    v42 = 0;
    while (v42 < *(v21 + 84))
    {
      WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long &>((v21 + 88), (*(v21 + 72) + 32 * v42 + 24), &v47, v46);
      v42 = v47 + 1;
      v47 = v42;
      if (v42 >= v37)
      {
        goto LABEL_15;
      }
    }

    __break(0xC471u);
  }

  else
  {
LABEL_15:

    *a1 = v21;
  }
}

void sub_22566B7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v16, v20);

  bmalloc::api::tzoneFree(v16, v21);
  _Unwind_Resume(a1);
}

uint64_t *WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t *a1, void *a2)
{
  v3 = *(a1 + 3);
  v4 = *a1;
  if (!v3)
  {
    goto LABEL_33;
  }

  v5 = v4 + 48 * v3;
  while (2)
  {
    v6 = *(v4 + 28);
    v7 = *(v4 + 16);
    if (!v6)
    {
      goto LABEL_25;
    }

    v8 = v7 + 40 * v6;
    do
    {
      v9 = *(v7 + 16);
      if (v9 == 255)
      {
        goto LABEL_7;
      }

      v10 = *(v7 + 8);
      *(v7 + 8) = 0;
      if (v9 == 2)
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v11 = *(v10 + 2) - 1;
        if (*(v10 + 2) != 1)
        {
LABEL_6:
          *(v10 + 2) = v11;
          goto LABEL_7;
        }

        WebGPU::ExternalTexture::~ExternalTexture(v10, a2);
      }

      else if (v9 == 1)
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v11 = *(v10 + 2) - 1;
        if (*(v10 + 2) != 1)
        {
          goto LABEL_6;
        }

        WebGPU::TextureView::~TextureView(v10, a2);
      }

      else
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        do
        {
          v14 = *v10;
          if ((*v10 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v10, a2);
            goto LABEL_7;
          }

          v15 = *v10;
          atomic_compare_exchange_strong_explicit(v10, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v15 != v14);
        if (v14 != 3)
        {
          goto LABEL_7;
        }

        WebGPU::Buffer::~Buffer(v10);
      }

      bmalloc::api::tzoneFree(v12, v13);
LABEL_7:
      *(v7 + 16) = -1;
      v7 += 40;
    }

    while (v7 != v8);
    v7 = *(v4 + 16);
LABEL_25:
    if (v7)
    {
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      WTF::fastFree(v7, a2);
    }

    v16 = *(v4 + 12);
    if (v16)
    {
      v17 = *v4;
      v18 = 8 * v16;
      do
      {
        v19 = *v17++;

        v18 -= 8;
      }

      while (v18);
    }

    v20 = *v4;
    if (*v4)
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      WTF::fastFree(v20, a2);
    }

    v4 += 48;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

  v4 = *a1;
LABEL_33:
  if (v4)
  {
    *a1 = 0;
    *(a1 + 2) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WebGPU::Sampler ***WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(WebGPU::Sampler ***result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = result;
    v5 = *(v3 - 1);
    if (v5)
    {
      v6 = *result;
      do
      {
        v9 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v9)
          {
            if (*v9 == 1)
            {
              WebGPU::Sampler::~Sampler(v9, a2, a3);
              bmalloc::api::tzoneFree(v7, v8);
            }

            else
            {
              --*v9;
            }
          }
        }

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v3 - 2), a2);
    return v4;
  }

  return result;
}

uint64_t std::array<std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(uint64_t a1, void *a2)
{
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 144, a2);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 96, v3);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 48, v4);

  return std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1, v5);
}

uint64_t std::array<std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(uint64_t a1, void *a2)
{
  std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 144, a2);
  std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 96, v3);
  std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1 + 48, v4);

  return std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(a1, v5);
}

void *WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray(void *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  if (*a1)
  {
    WTF::fastFree((*a1 - 16), a2);
  }

  return a1;
}

uint64_t *WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long &>@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22566BDC0);
  }

  v6 = result;
  v8 = *result;
  if (!*result)
  {
    v9 = a2;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v9;
    v8 = *v6;
    v4 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 8 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = v8 + 8 * *(v8 - 4);
        *a4 = v14;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v8 + 8 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = 0xFFFFFFFFLL;
      --*(v8 - 16);
      v4 = *a2;
      v14 = v16;
    }
  }

  v18 = *a3;
  *v14 = v4;
  *(v14 + 1) = v18;
  v19 = *(v8 - 16);
  v20 = *(v8 - 12) + 1;
  *(v8 - 12) = v20;
  v21 = (v19 + v20);
  v22 = *(v8 - 4);
  if (v22 <= 0x400)
  {
    if (3 * v22 > 4 * v21)
    {
      goto LABEL_24;
    }

LABEL_17:
    if (v22)
    {
      v23 = v22 << (6 * v20 >= (2 * v22));
    }

    else
    {
      v23 = 8;
    }

    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v6, v23, v14);
    v14 = result;
    v8 = *v6;
    if (*v6)
    {
      v22 = *(v8 - 4);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_24;
  }

  if (v22 <= 2 * v21)
  {
    goto LABEL_17;
  }

LABEL_24:
  *a4 = v14;
  *(a4 + 8) = v8 + 8 * v22;
  *(a4 + 16) = 1;
  return result;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(uint64_t result, void *a2)
{
  if (*(result + 8) == 1)
  {
    v2 = *result;
    if (*result)
    {
      *(v2 + 8) = 0;
      *result = 0;
      add = atomic_fetch_add(v2, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v2);
        v4 = result;
        WTF::fastFree(v2, a2);
        return v4;
      }
    }
  }

  else
  {
    result = 191;
    __break(0xC471u);
  }

  return result;
}

WebGPU::BindGroup *WebGPU::BindGroup::BindGroup(WebGPU::BindGroup *this, atomic_ullong *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  while (1)
  {
    v4 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v5 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
  v7 = *a2;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v7);
  }

LABEL_9:
  *(this + 5) = a2;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  memset_pattern16(this + 112, &unk_225881C60, 0x48uLL);
  *(this + 46) = 0;
  return this;
}

void WebGPU::BindGroup::~BindGroup(WebGPU::BindGroup *this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v4 = *(this + 13);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 13);
      do
      {
        v9 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v9)
          {
            if (*v9 == 1)
            {
              WebGPU::Sampler::~Sampler(v9, a2, a3);
              bmalloc::api::tzoneFree(v7, v8);
            }

            else
            {
              --*v9;
            }
          }
        }

        v6 += 4;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v10 = *(this + 12);
  if (v10)
  {
    WTF::fastFree((v10 - 16), a2);
  }

  v11 = *(this + 11);
  if (v11)
  {
    WTF::fastFree((v11 - 16), a2);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v12, a2);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (!v13)
  {
LABEL_20:
    v14 = *(this + 15);
    v15 = *(this + 6);
    if (v14)
    {
      goto LABEL_21;
    }

LABEL_54:
    if (!v15)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (*(v13 + 2) != 1)
  {
    --*(v13 + 2);
    goto LABEL_20;
  }

  WebGPU::BindGroupLayout::~BindGroupLayout(v13, a2);
  bmalloc::api::tzoneFree(v32, v33);
  v14 = *(this + 15);
  v15 = *(this + 6);
  if (!v14)
  {
    goto LABEL_54;
  }

LABEL_21:
  v16 = v15 + 48 * v14;
  while (2)
  {
    v17 = *(v15 + 28);
    v18 = *(v15 + 16);
    if (!v17)
    {
      goto LABEL_44;
    }

    v19 = v18 + 40 * v17;
    do
    {
      v20 = *(v18 + 16);
      if (v20 == 255)
      {
        goto LABEL_26;
      }

      v21 = *(v18 + 8);
      *(v18 + 8) = 0;
      if (v20 == 2)
      {
        if (!v21)
        {
          goto LABEL_26;
        }

        v22 = *(v21 + 2) - 1;
        if (*(v21 + 2) != 1)
        {
LABEL_25:
          *(v21 + 2) = v22;
          goto LABEL_26;
        }

        WebGPU::ExternalTexture::~ExternalTexture(v21, a2);
      }

      else if (v20 == 1)
      {
        if (!v21)
        {
          goto LABEL_26;
        }

        v22 = *(v21 + 2) - 1;
        if (*(v21 + 2) != 1)
        {
          goto LABEL_25;
        }

        WebGPU::TextureView::~TextureView(v21, a2);
      }

      else
      {
        if (!v21)
        {
          goto LABEL_26;
        }

        do
        {
          v25 = *v21;
          if ((*v21 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v21, a2);
            goto LABEL_26;
          }

          v26 = *v21;
          atomic_compare_exchange_strong_explicit(v21, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v26 != v25);
        if (v25 != 3)
        {
          goto LABEL_26;
        }

        WebGPU::Buffer::~Buffer(v21);
      }

      bmalloc::api::tzoneFree(v23, v24);
LABEL_26:
      *(v18 + 16) = -1;
      v18 += 40;
    }

    while (v18 != v19);
    v18 = *(v15 + 16);
LABEL_44:
    if (v18)
    {
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      WTF::fastFree(v18, a2);
    }

    v27 = *(v15 + 12);
    if (v27)
    {
      v28 = *v15;
      v29 = 8 * v27;
      do
      {
        v30 = *v28++;

        v29 -= 8;
      }

      while (v29);
    }

    v31 = *v15;
    if (*v15)
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      WTF::fastFree(v31, a2);
    }

    v15 += 48;
    if (v15 != v16)
    {
      continue;
    }

    break;
  }

  v15 = *(this + 6);
  if (v15)
  {
LABEL_55:
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v15, a2);
  }

LABEL_56:
  v34 = *(this + 5);
  *(this + 5) = 0;
  if (v34)
  {
    do
    {
      v35 = *v34;
      if ((*v34 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v34, a2);
        goto LABEL_62;
      }

      v36 = *v34;
      atomic_compare_exchange_strong_explicit(v34, &v36, v35 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v36 != v35);
    if (v35 == 3)
    {
      WebGPU::Device::~Device(v34, a2);
      bmalloc::api::tzoneFree(v37, v38);
    }
  }

LABEL_62:

  if (*(this + 2) == 1)
  {
    v40 = *this;
    if (*this)
    {
      *(v40 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v40);
        WTF::fastFree(v40, v39);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::BindGroup::dynamicOffset(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22566C368);
  }

  v4 = *(v3 - 8);
  v5 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v4 & (v6 ^ HIWORD(v6));
  v8 = *(v3 + 8 * v7);
  if (v8 == a2)
  {
LABEL_8:
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v9 = 1;
    while (v8 != -1)
    {
      v7 = (v7 + v9) & v4;
      v8 = *(v3 + 8 * v7);
      ++v9;
      if (v8 == a2)
      {
        goto LABEL_8;
      }
    }

    v7 = *(v3 - 4);
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  if (v7 != *(v3 - 4))
  {
    v11 = *(v3 + 8 * v7 + 4);
    if (*(a3 + 12) > v11)
    {
      return *(*a3 + 4 * v11);
    }

    return 0;
  }

  return result;
}

id WebGPU::BindGroup::usageName(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v6 = [&stru_2838D6D18 stringByAppendingString:@"Input "];
    v2 = *a1;
    v3 = v6;
    if ((*a1 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = &stru_2838D6D18;
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = [(__CFString *)v3 stringByAppendingString:@"Constant "];

  v2 = *a1;
  v3 = v7;
  if ((*a1 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = [(__CFString *)v3 stringByAppendingString:@"Storage "];

  v2 = *a1;
  v3 = v8;
  if ((*a1 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [(__CFString *)v3 stringByAppendingString:@"StorageRead "];

  v2 = *a1;
  v3 = v9;
  if ((*a1 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [(__CFString *)v3 stringByAppendingString:@"Attachment "];

  v2 = *a1;
  v3 = v10;
  if ((*a1 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [(__CFString *)v3 stringByAppendingString:@"AttachmentRead "];

  v2 = *a1;
  v3 = v11;
  if ((*a1 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [(__CFString *)v3 stringByAppendingString:@"ConstantTexture "];

  v2 = *a1;
  v3 = v12;
  if ((*a1 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [(__CFString *)v3 stringByAppendingString:@"StorageTextureWriteOnly "];

  v2 = *a1;
  v3 = v13;
  if ((*a1 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [(__CFString *)v3 stringByAppendingString:@"StorageTextureRead "];

  v3 = v14;
  if ((*a1 & 0x200) == 0)
  {
LABEL_11:
    v4 = v3;

    return v4;
  }

LABEL_23:
  v15 = [(__CFString *)v3 stringByAppendingString:@"StorageTextureReadWrite "];

  v4 = v15;

  return v4;
}

uint64_t WebGPU::BindGroup::makeEntryMapKey(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    return (a2 << 32) | (2 * a1) | (a3 - 1);
  }

  result = 1348;
  __break(0xC471u);
  return result;
}

uint64_t WebGPU::BindGroup::rebindSamplersIfNeeded(WebGPU::BindGroup *this)
{
  if (!*(this + 8))
  {
    return 1;
  }

  v2 = *(this + 13);
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
LABEL_11:
    v6 = v4;
    v4 = v2 + 32 * v3;
    if (!v2)
    {
      v8 = 0;
      if (v6)
      {
        goto LABEL_18;
      }

      return 1;
    }

    goto LABEL_9;
  }

  v3 = *(v2 - 4);
  v4 = v2 + 32 * v3;
  if (!*(v2 - 12))
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v5 = 32 * v3;
    v6 = *(this + 13);
    while ((*v6 + 1) <= 1)
    {
      v6 += 32;
      v5 -= 32;
      if (!v5)
      {
        v6 = v4;
        break;
      }
    }

LABEL_9:
    v7 = *(v2 - 4);
    goto LABEL_15;
  }

  v7 = 0;
  v6 = *(this + 13);
LABEL_15:
  v8 = v2 + 32 * v7;
  if (v6 == v8)
  {
    return 1;
  }

  while (1)
  {
LABEL_18:
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_50;
    }

    ++*v9;
    WeakRetained = objc_loadWeakRetained(v9 + 11);

    if (WeakRetained)
    {
      v13 = 3;
      v14 = *v9 - 1;
      if (*v9 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_48;
    }

    WTFLogAlways();
    v15 = WebGPU::Sampler::samplerState(v9);
    if (!v15)
    {
      v13 = 1;

      v14 = *v9 - 1;
      if (*v9 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_48;
    }

    if (*(v6 + 12) == 1)
    {
      v16 = *(*(this + 8) + 24);
      v17 = *(this + 2);
      v18 = v16;
      v19 = v17;
      v20 = v19;
      if (v18 && v19)
      {
        [v18 setArgumentBuffer:v19 offset:0];

        result = *(*(this + 8) + 24);
        if ((*(v6 + 12) & 1) == 0)
        {
          goto LABEL_55;
        }

        v18 = result;
        [result setSamplerState:v15 atIndex:*(v6 + 8)];
      }

      else
      {
      }
    }

    if (*(v6 + 20) == 1)
    {
      v22 = *(*(this + 8) + 32);
      v23 = *(this + 3);
      v24 = v22;
      v25 = v23;
      v26 = v25;
      if (v24 && v25)
      {
        [v24 setArgumentBuffer:v25 offset:0];

        result = *(*(this + 8) + 32);
        if ((*(v6 + 20) & 1) == 0)
        {
          goto LABEL_55;
        }

        v24 = result;
        [result setSamplerState:v15 atIndex:*(v6 + 16)];
      }

      else
      {
      }
    }

    if (*(v6 + 28) == 1)
    {
      break;
    }

LABEL_47:
    v13 = 0;

    v14 = *v9 - 1;
    if (*v9 != 1)
    {
LABEL_21:
      *v9 = v14;
      if (v13 == 3)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_48:
    WebGPU::Sampler::~Sampler(v9, v11, v12);
    bmalloc::api::tzoneFree(v32, v33);
    if (v13 == 3)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v13)
    {
      return 0;
    }

    do
    {
LABEL_50:
      v6 += 32;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
    if (v6 == v8)
    {
      return 1;
    }
  }

  v27 = *(*(this + 8) + 40);
  v28 = *(this + 4);
  v29 = v27;
  v30 = v28;
  v31 = v30;
  if (!v29 || !v30)
  {

    goto LABEL_46;
  }

  [v29 setArgumentBuffer:v30 offset:0];

  result = *(*(this + 8) + 40);
  if (*(v6 + 28))
  {
    v29 = result;
    [result setSamplerState:v15 atIndex:*(v6 + 24)];
LABEL_46:

    goto LABEL_47;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t *WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22566CBC4);
  }

  v6 = result;
  v8 = *result;
  if (!*result)
  {
    v9 = a2;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,unsigned int>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v9;
    v8 = *v6;
    v4 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15 != -1)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v24 = v8 + 16 * *(v8 - 4);
        *a4 = v15;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        return result;
      }

      if (v16 == -2)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15 != -1);
    if (v17)
    {
      *v17 = -1;
      *(v17 + 2) = 0;
      --*(v8 - 16);
      v4 = *a2;
      v15 = v17;
    }
  }

  *v15 = v4;
  *(v15 + 2) = *a3;
  v19 = *(v8 - 16);
  v20 = *(v8 - 12) + 1;
  *(v8 - 12) = v20;
  v21 = (v19 + v20);
  v22 = *(v8 - 4);
  if (v22 <= 0x400)
  {
    if (3 * v22 > 4 * v21)
    {
      goto LABEL_24;
    }

LABEL_17:
    if (v22)
    {
      v23 = v22 << (6 * v20 >= (2 * v22));
    }

    else
    {
      v23 = 8;
    }

    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,unsigned int>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v6, v23, v15);
    v15 = result;
    v8 = *v6;
    if (*v6)
    {
      v22 = *(v8 - 4);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_24;
  }

  if (v22 <= 2 * v21)
  {
    goto LABEL_17;
  }

LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v8 + 16 * v22;
  *(a4 + 16) = 1;
  return result;
}

BOOL WebGPU::BindGroup::previouslyValidatedBindGroup(WebGPU::BindGroup *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 12);
  if (!v4)
  {
    return 0;
  }

  v5 = a2 | (a3 << 32);
  if (v5 == -2 || v5 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22566CCD0);
  }

  v6 = *(v4 - 8);
  v7 = (v5 + ~(a2 << 32)) ^ ((v5 + ~(a2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v4 + 16 * v10);
  if (v11 != v5)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v4 + 16 * v10);
      ++v12;
      if (v11 == v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v10 == *(v4 - 4))
  {
    return 0;
  }

  return *(v4 + 16 * v10 + 8) >= a4;
}

WebGPU::BindGroup *wgpuBindGroupRelease(WebGPU::BindGroup *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*(result + 2) == 1)
  {
    WebGPU::BindGroup::~BindGroup(result, a2, a3);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

WTF::StringImpl *wgpuBindGroupSetLabel(uint64_t a1, char *__s)
{
  ++*(a1 + 8);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v11);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v3);
    }
  }

  else
  {
    v11 = &stru_2838D6D18;
  }

  [*(a1 + 16) setLabel:v11];
  [*(a1 + 24) setLabel:v11];
  [*(a1 + 32) setLabel:v11];
  v4 = v11;
  v11 = 0;

  result = v10;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v10, v5);
  }

  if (*(a1 + 8) == 1)
  {
    WebGPU::BindGroup::~BindGroup(a1, v5, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

void sub_22566CE60(_Unwind_Exception *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::BindGroup *a11, __int16 a12, char a13, char a14)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(&a11, v16, v17);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(&a11, a2, a3);
  _Unwind_Resume(a1);
}

WebGPU::BindGroup **WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(WebGPU::BindGroup **result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  *result = 0;
  if (v3)
  {
    if (*(v3 + 2) == 1)
    {
      v4 = result;
      WebGPU::BindGroup::~BindGroup(v3, a2, a3);
      bmalloc::api::tzoneFree(v5, v6);
      return v4;
    }

    else
    {
      --*(v3 + 2);
    }
  }

  return result;
}

uint64_t wgpuBindGroupUpdateExternalTextures(WebGPU::BindGroup *this, uint64_t a2, const WTF::StringImpl *a3)
{
  ++*(this + 2);
  ++*(a2 + 8);
  if (!*(this + 8) || WebGPU::CommandEncoder::computeSize(a2 + 64, *(a2 + 32)))
  {
    v5 = 0;
    goto LABEL_4;
  }

  v12 = *(this + 5);
  while (1)
  {
    v13 = *v12;
    if ((*v12 & 1) == 0)
    {
      break;
    }

    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_18;
    }
  }

  v15 = 0;
  v16 = *v12;
  v17 = 1;
  atomic_compare_exchange_strong_explicit(*v12, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x22AA683C0](v16);
  }

  ++*(v16 + 8);
  atomic_compare_exchange_strong_explicit(v16, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    WTF::Lock::unlockSlow(v16);
  }

LABEL_18:
  v96 = v12;
  WebGPU::Device::createExternalTextureFromPixelBuffer(&v89, v12, *(a2 + 16));
  v18 = v89.n128_u64[0];
  if (v89.n128_u64[0])
  {
    v19 = v89.n128_u64[0];
    v20 = v89.n128_u64[1];
    v21 = v89.n128_u64[1];
    if (v89.n128_u64[1])
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v12 + 296);
    v20 = v89.n128_u64[1];
    v21 = v89.n128_u64[1];
    if (v89.n128_u64[1])
    {
      goto LABEL_20;
    }
  }

  v21 = *(v12 + 296);
LABEL_20:
  v22 = v21;
  obj = v19;
  v23 = v19;
  v24 = v22;
  v25 = *(a2 + 48);
  *(a2 + 48) = v23;
  v26 = v23;

  v27 = *(a2 + 56);
  *(a2 + 56) = v24;

  if (v26)
  {
    v28 = v24 == 0;
  }

  else
  {
    v28 = 1;
  }

  v5 = !v28;
  if (!v28)
  {
    v82 = v22;
    v29 = *(this + 2);
    v86 = *(this + 3);
    v87 = v29;
    v85 = *(this + 4);
    v30 = *(*(this + 8) + 24);
    v31 = *(*(this + 8) + 32);
    v32 = *(*(this + 8) + 40);
    v83 = v31;
    v84 = v30;
    v33 = *(this + 16);
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = *(this + 14);
      if (v34 < *(this + 15))
      {
        v35 = *(this + 15);
        v36 = *(this + 6) + 48 * v34;
        v37 = *(v36 + 12);
        if (v35 < v37 && v35 + 1 < v37)
        {
          v73 = v35 + 1;
          v79 = v32;
          objc_storeStrong((*v36 + 8 * v35), obj);
          if (v34 >= *(this + 15))
          {
            goto LABEL_78;
          }

          v38 = *(this + 6) + 48 * v34;
          if (v73 >= *(v38 + 12))
          {
            goto LABEL_78;
          }

          objc_storeStrong((*v38 + 8 * v73), v82);
          v39 = v84;
          v40 = v87;
          if (v40 && v39)
          {
            v74 = v40;
            [v39 setArgumentBuffer:v40 offset:0];

            [v39 setTexture:v26 atIndex:v33];
            [v39 setTexture:v24 atIndex:v33 + 1];
            v41 = [v39 constantDataAtIndex:v33 + 2];
            if (v41)
            {
              *v41 = v90;
              *(v41 + 16) = v91;
            }

            v42 = [v39 constantDataAtIndex:v33 + 3];
            if (v42)
            {
              v43 = v93;
              *v42 = v92;
              v42[1] = v43;
              v44 = v95;
              v42[2] = v94;
              v42[3] = v44;
            }
          }

          else
          {
          }

          v32 = v79;
        }
      }
    }

    v45 = *(this + 19);
    if (v45 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = *(this + 17);
      if (v46 < *(this + 15))
      {
        v47 = *(this + 18);
        v48 = *(this + 6) + 48 * v46;
        v49 = *(v48 + 12);
        if (v47 < v49 && v47 + 1 < v49)
        {
          v75 = v47 + 1;
          v80 = v32;
          objc_storeStrong((*v48 + 8 * v47), obj);
          if (v46 >= *(this + 15))
          {
            goto LABEL_78;
          }

          v50 = *(this + 6) + 48 * v46;
          if (v75 >= *(v50 + 12))
          {
            goto LABEL_78;
          }

          objc_storeStrong((*v50 + 8 * v75), v82);
          v51 = v83;
          v52 = v86;
          if (v52 && v51)
          {
            v76 = v52;
            [v51 setArgumentBuffer:v52 offset:0];

            [v51 setTexture:v26 atIndex:v45];
            [v51 setTexture:v24 atIndex:v45 + 1];
            v53 = [v51 constantDataAtIndex:v45 + 2];
            if (v53)
            {
              *v53 = v90;
              *(v53 + 16) = v91;
            }

            v54 = [v51 constantDataAtIndex:v45 + 3];
            if (v54)
            {
              v55 = v93;
              *v54 = v92;
              v54[1] = v55;
              v56 = v95;
              v54[2] = v94;
              v54[3] = v56;
            }
          }

          else
          {
          }

          v32 = v80;
        }
      }
    }

    v57 = *(this + 22);
    if (v57 == 0x7FFFFFFFFFFFFFFFLL || (v58 = *(this + 20), v58 >= *(this + 15)) || (v59 = *(this + 21), v60 = *(this + 6) + 48 * v58, v61 = *(v60 + 12), v59 >= v61) || v59 + 1 >= v61)
    {
LABEL_71:

      goto LABEL_72;
    }

    v77 = v59 + 1;
    v81 = v32;
    objc_storeStrong((*v60 + 8 * v59), obj);
    if (v58 < *(this + 15))
    {
      v62 = *(this + 6) + 48 * v58;
      if (v77 < *(v62 + 12))
      {
        objc_storeStrong((*v62 + 8 * v77), v82);
        v63 = v81;
        v64 = v85;
        if (v64 && v63)
        {
          v78 = v64;
          [v63 setArgumentBuffer:v64 offset:0];

          [v63 setTexture:v26 atIndex:v57];
          [v63 setTexture:v24 atIndex:v57 + 1];
          v65 = [v63 constantDataAtIndex:v57 + 2];
          if (v65)
          {
            *v65 = v90;
            *(v65 + 16) = v91;
          }

          v66 = [v63 constantDataAtIndex:v57 + 3];
          if (v66)
          {
            v67 = v93;
            *v66 = v92;
            v66[1] = v67;
            v68 = v95;
            v66[2] = v94;
            v66[3] = v68;
          }
        }

        else
        {
        }

        v32 = v81;
        goto LABEL_71;
      }
    }

LABEL_78:
    __break(0xC471u);
    JUMPOUT(0x22566D5FCLL);
  }

LABEL_72:

  v96 = 0;
  do
  {
    v69 = *v12;
    if ((*v12 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v12, a2);
      goto LABEL_4;
    }

    v70 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v70, v69 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v70 != v69);
  if (v69 == 3)
  {
    WebGPU::Device::~Device(v12, a2);
    bmalloc::api::tzoneFree(v71, v72);
  }

LABEL_4:
  if (*(a2 + 8) == 1)
  {
    WebGPU::ExternalTexture::~ExternalTexture(a2, a2);
    bmalloc::api::tzoneFree(v7, v8);
    v6 = *(this + 2) - 1;
    if (*(this + 2) != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    WebGPU::BindGroup::~BindGroup(this, a2, a3);
    bmalloc::api::tzoneFree(v9, v10);
    return v5;
  }

  --*(a2 + 8);
  v6 = *(this + 2) - 1;
  if (*(this + 2) == 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(this + 2) = v6;
  return v5;
}

void sub_22566D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v22 = va_arg(va1, WebGPU::ExternalTexture *);
  va_copy(va2, va1);
  v24 = va_arg(va2, WebGPU::BindGroup *);
  va_copy(va3, va2);
  v26 = va_arg(va3, id);
  v28 = va_arg(va3, void);
  v29 = va_arg(va3, void);

  WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray(va2);
  WTF::EnumeratedArray<WebGPU::ShaderStage,objc_object  {objcproto9MTLBuffer}* {__strong},(WebGPU::ShaderStage)2>::~EnumeratedArray(va3);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v16 - 96), v18);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, v19);
  WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(va1, v20, v21);
  _Unwind_Resume(a1);
}

void sub_22566D67C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v15 = va_arg(va1, WebGPU::ExternalTexture *);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, a2);
  WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(va1, v13, v14);
  _Unwind_Resume(a1);
}

void *WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(void *result, int **a2)
{
  *result = 0;
  if (!*a2)
  {
    return result;
  }

  v2 = *a2;
  v3 = *(*a2 - 3);
  if (!v3)
  {
    return result;
  }

  v5 = *(v2 - 3);
  v6 = *(v2 - 3);
  if (v3 == 1)
  {
    goto LABEL_6;
  }

  v7 = __clz(v3 - 1);
  if (!v7)
  {
    __break(1u);
    return result;
  }

  v5 = (1 << -v7);
  v6 = 1 << -v7;
  if (v3 <= 0x400)
  {
LABEL_6:
    if (3 * v5 > 4 * v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 <= 2 * v3)
  {
LABEL_7:
    v6 *= 2;
  }

LABEL_8:
  v8 = v3;
  v9 = v6;
  v10 = result;
  if (v6 > 0x400)
  {
    if (v9 * 0.416666667 > v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v9 * 0.604166667 <= v8)
  {
LABEL_12:
    v6 *= 2;
  }

LABEL_13:
  if (v6 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v6;
  }

  v12 = WTF::fastMalloc((4 * v11 + 16));
  v13 = v12 + 4;
  memset(v12 + 4, 255, 4 * v11);
  result = v10;
  *v10 = v12 + 4;
  v14 = v11 - 1;
  v12[2] = v11 - 1;
  v12[3] = v11;
  *v12 = 0;
  v12[1] = v3;
  v15 = *a2;
  if (!*a2)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  v16 = *(v15 - 1);
  v17 = &v15[v16];
  if (!*(v15 - 3))
  {
LABEL_24:
    v19 = v17;
    v17 = &v15[v16];
    goto LABEL_25;
  }

  if (!v16)
  {
    v20 = 0;
    v19 = *a2;
    goto LABEL_30;
  }

  v18 = 4 * v16;
  v19 = *a2;
  while (*v19 >= 0xFFFFFFFE)
  {
    ++v19;
    v18 -= 4;
    if (!v18)
    {
      v19 = v17;
      break;
    }
  }

LABEL_25:
  if (!v15)
  {
    goto LABEL_31;
  }

  v20 = *(v15 - 1);
LABEL_30:
  v15 += v20;
LABEL_31:
  while (v19 != v15)
  {
    v21 = 0;
    v22 = *v19;
    v23 = 9 * ((v22 + ~(v22 << 15)) ^ ((v22 + ~(v22 << 15)) >> 10));
    v24 = ((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) ^ (((v23 ^ (v23 >> 6)) + ~((v23 ^ (v23 >> 6)) << 11)) >> 16);
    do
    {
      v25 = v24 & v14;
      v26 = v13[v24 & v14];
      v24 = ++v21 + (v24 & v14);
    }

    while (v26 != -1);
    v13[v25] = v22;
    do
    {
      ++v19;
    }

    while (v19 != v17 && *v19 >= 0xFFFFFFFE);
  }

  return result;
}

uint64_t std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(uint64_t a1, void *a2)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;

      v5 -= 8;
    }

    while (v5);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(a1 + 28);
  if (v8)
  {
    v9 = *(a1 + 16);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;

      v10 -= 8;
    }

    while (v10);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v12, a2);
  }

  v13 = *(a1 + 12);
  if (v13)
  {
    v14 = *a1;
    v15 = 8 * v13;
    do
    {
      v16 = *v14++;

      v15 -= 8;
    }

    while (v15);
  }

  v17 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v17, a2);
  }

  return a1;
}

uint64_t std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(uint64_t a1, void *a2)
{
  v3 = *(a1 + 44);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 40 * v3;
    v6 = v4 + 8;
    do
    {
      if (v6[8] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v16, v6);
      }

      v6[8] = -1;
      v6 += 40;
      v5 -= 40;
    }

    while (v5);
    v4 = *(a1 + 32);
  }

  if (v4)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(a1 + 28);
  v8 = *(a1 + 16);
  if (v7)
  {
    v9 = 40 * v7;
    v10 = v8 + 8;
    do
    {
      if (v10[8] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v16, v10);
      }

      v10[8] = -1;
      v10 += 40;
      v9 -= 40;
    }

    while (v9);
    v8 = *(a1 + 16);
  }

  if (v8)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v8, a2);
  }

  v11 = *(a1 + 12);
  v12 = *a1;
  if (v11)
  {
    v13 = 40 * v11;
    v14 = v12 + 8;
    do
    {
      if (v14[8] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v16, v14);
      }

      v14[8] = -1;
      v14 += 40;
      v13 -= 40;
    }

    while (v13);
    v12 = *a1;
  }

  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v12, a2);
  }

  return a1;
}

WebGPU::ExternalTexture *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[8];
  if (v2 == 255)
  {
    v2 = -1;
  }

  result = *a2;
  *a2 = 0;
  if (v2 == 2)
  {
    if (!result)
    {
      return result;
    }

    v4 = *(result + 2) - 1;
    if (*(result + 2) == 1)
    {
      WebGPU::ExternalTexture::~ExternalTexture(result, a2);

      return bmalloc::api::tzoneFree(v5, v6);
    }

    goto LABEL_12;
  }

  if (v2 == 1)
  {
    if (!result)
    {
      return result;
    }

    v4 = *(result + 2) - 1;
    if (*(result + 2) == 1)
    {
      WebGPU::TextureView::~TextureView(result, a2);

      return bmalloc::api::tzoneFree(v5, v6);
    }

LABEL_12:
    *(result + 2) = v4;
    return result;
  }

  if (result)
  {
    do
    {
      v7 = *result;
      if ((*result & 1) == 0)
      {
        v9 = *result;

        return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
      }

      v8 = *result;
      atomic_compare_exchange_strong_explicit(result, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v8 != v7);
    if (v7 != 3)
    {
      return result;
    }

    WebGPU::Buffer::~Buffer(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(uint64_t result, void *a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(result, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v13 = result;
    MEMORY[0x22AA683C0]();
    result = v13;
    v14 = *(v13 + 8);
    v4 = v14 - 1;
    *(v13 + 8) = v14 - 1;
    if (v14 != 1)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(result, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(result + 8);
    v4 = v3 - 1;
    *(result + 8) = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = *(result + 24);
  ++*(result + 16);
  *(result + 24) = 0;
  v15 = 1;
  atomic_compare_exchange_strong_explicit(result, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 == 1)
  {
LABEL_4:
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_13:
  v16 = result;
  WTF::Lock::unlockSlow(result);
  result = v16;
  if (v4)
  {
    return result;
  }

LABEL_5:
  if (v5)
  {
    v7 = result;
    WebGPU::Buffer::~Buffer(v5);
    bmalloc::api::tzoneFree(v8, v9);
    result = v7;
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(result, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (!v10)
  {
    v12 = *(result + 16) - 1;
    *(result + 16) = v12;
    atomic_compare_exchange_strong_explicit(result, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v18 = result;
    WTF::Lock::unlockSlow(result);
    result = v18;
    if (v12)
    {
      return result;
    }

    goto LABEL_17;
  }

  v17 = result;
  MEMORY[0x22AA683C0]();
  result = v17;
  v12 = *(v17 + 16) - 1;
  *(v17 + 16) = v12;
  atomic_compare_exchange_strong_explicit(v17, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v12)
  {
    return result;
  }

LABEL_17:

  return WTF::fastFree(result, a2);
}

void WebGPU::BindableResources::~BindableResources(WebGPU::BindableResources *this, void *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 2);
  if (v3)
  {
    v5 = 40 * v3;
    v6 = v4 + 8;
    do
    {
      if (v6[8] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v12, v6);
      }

      v6[8] = -1;
      v6 += 40;
      v5 -= 40;
    }

    while (v5);
    v4 = *(this + 2);
  }

  if (v4)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v4, a2);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = *this;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;

      v9 -= 8;
    }

    while (v9);
  }

  v11 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v11, a2);
  }
}

__n128 *std::ranges::__sort::__sort_fn_impl[abi:sn200100]<WebGPU::BindGroup::BufferAndType *,WebGPU::BindGroup::BufferAndType *,std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = 126 - 2 * __clz((a2 - a1) >> 5);
  v9[0] = a3;
  v9[1] = a4;
  if (a2 == a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,false>(a1, a2, v9, v7, 1, a5);
  return a2;
}

double std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 2;
  v263 = a2 - 4;
  v11 = a2 - 6;
  for (i = a1; ; i[-1] = v162)
  {
LABEL_2:
    a1 = i;
    v13 = (a2 - i) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return a6.n128_f64[0];
      }

      if (v13 == 2)
      {
        if (*(v10->n128_u32 + **(a3 + 8)) >= *(i->n128_u32 + **(a3 + 8)))
        {
          return a6.n128_f64[0];
        }

        goto LABEL_134;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      v115 = i + 2;
      v170 = **(a3 + 8);
      v171 = *(i[2].n128_u32 + v170);
      v172 = *(i->n128_u32 + v170);
      v173 = *(v10->n128_u32 + v170);
      if (v171 < v172)
      {
        if (v173 >= v171)
        {
          v258 = i[1];
          v266 = *i;
          v267 = v258;
          v259 = i[3];
          *i = *v115;
          i[1] = v259;
          a6.n128_u64[0] = v266.n128_u64[0];
          v260 = v267;
          *v115 = v266;
          i[3] = v260;
          if (*(v10->n128_u32 + **(a3 + 8)) >= *(v115->n128_u32 + **(a3 + 8)))
          {
            return a6.n128_f64[0];
          }

          a6 = *v115;
          v176 = i[3];
          v266 = *v115;
          v267 = v176;
          v261 = a2[-1];
          *v115 = *v10;
          i[3] = v261;
          goto LABEL_135;
        }

LABEL_134:
        v174 = i[1];
        v266 = *i;
        v267 = v174;
        v175 = a2[-1];
        *i = *v10;
        i[1] = v175;
        a6 = v266;
        v176 = v267;
LABEL_135:
        *v10 = a6;
        a2[-1] = v176;
        return a6.n128_f64[0];
      }

      if (v173 >= v171)
      {
        return a6.n128_f64[0];
      }

      v234 = i[3];
      v266 = *v115;
      a6 = v266;
      v267 = v234;
      v235 = a2[-1];
      *v115 = *v10;
      i[3] = v235;
      *v10 = a6;
      a2[-1] = v234;
LABEL_206:
      if (*(v115->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
      {
        v255 = a1[1];
        v266 = *a1;
        v267 = v255;
        v256 = v115[1];
        *a1 = *v115;
        a1[1] = v256;
        a6.n128_u64[0] = v266.n128_u64[0];
        v257 = v267;
        *v115 = v266;
        v115[1] = v257;
      }

      return a6.n128_f64[0];
    }

    if (v13 == 4)
    {
      v115 = i + 2;
      v163 = **(a3 + 8);
      v164 = *(i[2].n128_u32 + v163);
      n128_u64 = i[4].n128_u64;
      v165 = *(i->n128_u32 + v163);
      v166 = *(i[4].n128_u32 + v163);
      if (v164 >= v165)
      {
        if (v166 < v164)
        {
          v229 = *v115;
          a6 = i[3];
          v230 = i[5];
          *v115 = *n128_u64;
          i[3] = v230;
          *n128_u64 = v229;
          i[5] = a6;
          if (*(v115->n128_u32 + **(a3 + 8)) < *(i->n128_u32 + **(a3 + 8)))
          {
            v231 = i[1];
            v266 = *i;
            v267 = v231;
            v232 = i[3];
            *i = *v115;
            i[1] = v232;
            a6.n128_u64[0] = v266.n128_u64[0];
            v233 = v267;
            *v115 = v266;
            i[3] = v233;
          }
        }

        goto LABEL_203;
      }

      if (v166 < v164)
      {
        v167 = i[1];
        v266 = *i;
        v267 = v167;
        v168 = i[5];
        *i = *n128_u64;
        i[1] = v168;
        a6.n128_u64[0] = v266.n128_u64[0];
        v169 = v267;
        *n128_u64 = v266;
        i[5] = v169;
LABEL_203:
        if (*(v10->n128_u32 + **(a3 + 8)) >= *(n128_u64 + **(a3 + 8)))
        {
          return a6.n128_f64[0];
        }

        v251 = *(n128_u64 + 16);
        v266 = *n128_u64;
        a6 = v266;
        v267 = v251;
        v252 = a2[-1];
        *n128_u64 = *v10;
        *(n128_u64 + 16) = v252;
        *v10 = a6;
        a2[-1] = v251;
        if (*(n128_u64 + **(a3 + 8)) >= *(v115->n128_u32 + **(a3 + 8)))
        {
          return a6.n128_f64[0];
        }

        v253 = *v115;
        a6 = v115[1];
        v254 = *(n128_u64 + 16);
        *v115 = *n128_u64;
        v115[1] = v254;
        *n128_u64 = v253;
        *(n128_u64 + 16) = a6;
        goto LABEL_206;
      }

LABEL_201:
      v246 = a1[1];
      v266 = *a1;
      v267 = v246;
      v247 = v115[1];
      *a1 = *v115;
      a1[1] = v247;
      a6.n128_u64[0] = v266.n128_u64[0];
      v248 = v267;
      *v115 = v266;
      v115[1] = v248;
      if (*(n128_u64 + **(a3 + 8)) < *(v115->n128_u32 + **(a3 + 8)))
      {
        v249 = *v115;
        a6 = v115[1];
        v250 = *(n128_u64 + 16);
        *v115 = *n128_u64;
        v115[1] = v250;
        *n128_u64 = v249;
        *(n128_u64 + 16) = a6;
      }

      goto LABEL_203;
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v177 = i + 2;
      v179 = i == a2 || v177 == a2;
      if (a5)
      {
        if (v179)
        {
          return a6.n128_f64[0];
        }

        v180 = 0;
        v181 = i;
        while (1)
        {
          v184 = **(a3 + 8);
          v185 = *(v181->n128_u32 + v184);
          v181 = v177;
          if (*(v177->n128_u32 + v184) < v185)
          {
            v186 = v177[1];
            v266 = *v177;
            v267 = v186;
            v187 = v180;
            do
            {
              v188 = (i + v187);
              v189 = *(i + v187 + 16);
              v188[2] = *(i + v187);
              v188[3] = v189;
              if (!v187)
              {
                v182 = i;
                goto LABEL_146;
              }

              v187 -= 32;
            }

            while (*(v266.n128_u32 + **(a3 + 8)) < *(v188[-2].n128_u32 + **(a3 + 8)));
            v182 = (i + v187 + 32);
LABEL_146:
            a6.n128_u64[0] = v266.n128_u64[0];
            v183 = v267;
            *v182 = v266;
            v182[1] = v183;
          }

          v177 = v181 + 2;
          v180 += 32;
          if (&v181[2] == a2)
          {
            return a6.n128_f64[0];
          }
        }
      }

      if (v179)
      {
        return a6.n128_f64[0];
      }

      v236 = 0;
      n128_u64 = i[-2].n128_u64;
      v237 = -32;
      v238 = 32;
      while (1)
      {
        v240 = i + v236;
        v236 = v238;
        if (*(v177->n128_u32 + **(a3 + 8)) < *&v240[**(a3 + 8)])
        {
          v241 = v177[1];
          v266 = *v177;
          v267 = v241;
          v242 = v237;
          v115 = n128_u64;
          do
          {
            v243 = v115[3];
            v115[4] = v115[2];
            v115[5] = v243;
            if (!v242)
            {
              goto LABEL_200;
            }

            v244 = **(a3 + 8);
            v245 = *(v266.n128_u32 + v244);
            LODWORD(v244) = *(v115->n128_u32 + v244);
            v115 -= 2;
            v242 += 32;
          }

          while (v245 < v244);
          a6.n128_u64[0] = v266.n128_u64[0];
          v239 = v267;
          v115[4] = v266;
          v115[5] = v239;
        }

        v238 = v236 + 32;
        v177 = (i + v236 + 32);
        n128_u64 += 32;
        v237 -= 32;
        if (v177 == a2)
        {
          return a6.n128_f64[0];
        }
      }
    }

    if (!a4)
    {
      if (i == a2)
      {
        return a6.n128_f64[0];
      }

      v190 = (v13 - 2) >> 1;
      v191 = v190;
      while (1)
      {
        if (v190 >= v191)
        {
          v194 = (2 * (v191 & 0x7FFFFFFFFFFFFFFLL)) | 1;
          v195 = &i[2 * v194];
          if (2 * (v191 & 0x7FFFFFFFFFFFFFFLL) + 2 < v13)
          {
            v196 = **(a3 + 8);
            if (*(v195->n128_u32 + v196) < *(v195[2].n128_u32 + v196))
            {
              v195 += 2;
              v194 = 2 * (v191 & 0x7FFFFFFFFFFFFFFLL) + 2;
            }

            v197 = &i[2 * v191];
            if (*(v195->n128_u32 + v196) < *(v197->n128_u32 + v196))
            {
              goto LABEL_156;
            }

LABEL_164:
            v198 = v197[1];
            v266 = *v197;
            v267 = v198;
            do
            {
              v201 = v195;
              v202 = v195[1];
              *v197 = *v195;
              v197[1] = v202;
              if (v190 < v194)
              {
                break;
              }

              v203 = (2 * (v194 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v195 = &i[2 * v203];
              v204 = 2 * v194 + 2;
              v205 = **(a3 + 8);
              if (v204 < v13 && *(v195->n128_u32 + v205) < *(v195[2].n128_u32 + v205))
              {
                v195 += 2;
                v203 = v204;
              }

              v199 = *(v195->n128_u32 + v205);
              v200 = *(v266.n128_u32 + v205);
              v197 = v201;
              v194 = v203;
            }

            while (v199 >= v200);
            v192 = v267;
            *v201 = v266;
            v201[1] = v192;
            goto LABEL_156;
          }

          v197 = &i[2 * v191];
          if (*(v195->n128_u32 + **(a3 + 8)) >= *(v197->n128_u32 + **(a3 + 8)))
          {
            goto LABEL_164;
          }
        }

LABEL_156:
        v193 = v191-- <= 0;
        if (v193)
        {
          do
          {
            v207 = 0;
            v208 = i[1];
            v264 = *i;
            v265 = v208;
            v209 = i;
            do
            {
              v211 = &v209[2 * v207];
              v212 = v211 + 2;
              v213 = (2 * v207) | 1;
              v214 = 2 * v207 + 2;
              if (v214 < v13)
              {
                v215 = v211 + 4;
                if (*(v212->n128_u32 + **(a3 + 8)) < *(v215->n128_u32 + **(a3 + 8)))
                {
                  v212 = v215;
                  v213 = v214;
                }
              }

              v210 = v212[1];
              *v209 = *v212;
              v209[1] = v210;
              v209 = v212;
              v207 = v213;
            }

            while (v213 <= ((v13 - 2) >> 1));
            a2 -= 2;
            if (v212 == a2)
            {
              a6.n128_u64[0] = v264.n128_u64[0];
              v206 = v265;
              *v212 = v264;
              v212[1] = v206;
            }

            else
            {
              v216 = a2[1];
              *v212 = *a2;
              v212[1] = v216;
              a6.n128_u64[0] = v264.n128_u64[0];
              v217 = v265;
              *a2 = v264;
              a2[1] = v217;
              v218 = (v212 - i + 32) >> 5;
              v193 = v218 < 2;
              v219 = v218 - 2;
              if (!v193)
              {
                v220 = v219 >> 1;
                v221 = &i[2 * v220];
                if (*(v221->n128_u32 + **(a3 + 8)) < *(v212->n128_u32 + **(a3 + 8)))
                {
                  v222 = v212[1];
                  v266 = *v212;
                  v267 = v222;
                  do
                  {
                    v223 = v221;
                    v224 = v221[1];
                    *v212 = *v221;
                    v212[1] = v224;
                    if (!v220)
                    {
                      break;
                    }

                    v220 = (v220 - 1) >> 1;
                    v221 = &i[2 * v220];
                    v225 = **(a3 + 8);
                    v226 = *(v221->n128_u32 + v225);
                    v227 = *(v266.n128_u32 + v225);
                    v212 = v223;
                  }

                  while (v226 < v227);
                  a6.n128_u64[0] = v266.n128_u64[0];
                  v228 = v267;
                  *v223 = v266;
                  v223[1] = v228;
                }
              }
            }

            v193 = v13-- <= 2;
          }

          while (!v193);
          return a6.n128_f64[0];
        }
      }
    }

    v14 = &i[2 * (v13 >> 1)];
    v15 = **(a3 + 8);
    v16 = *(v10->n128_u32 + v15);
    if (v13 < 0x81)
    {
      n128_u64 = *(i->n128_u32 + v15);
      if (n128_u64 >= *(v14->n128_u32 + v15))
      {
        if (v16 < n128_u64)
        {
          v29 = i[1];
          v266 = *i;
          v267 = v29;
          v30 = a2[-1];
          *i = *v10;
          i[1] = v30;
          v31 = v267;
          *v10 = v266;
          a2[-1] = v31;
          v32 = **(a3 + 8);
          v33 = *(i->n128_u32 + v32);
          n128_u64 = *(v14->n128_u32 + v32);
          if (v33 < n128_u64)
          {
            v34 = v14[1];
            v266 = *v14;
            v267 = v34;
            v35 = i[1];
            *v14 = *i;
            v14[1] = v35;
            v36 = v267;
            *i = v266;
            i[1] = v36;
            --a4;
            if (a5)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }
        }

        goto LABEL_37;
      }

      if (v16 >= n128_u64)
      {
        v57 = v14[1];
        v266 = *v14;
        v267 = v57;
        v58 = i[1];
        *v14 = *i;
        v14[1] = v58;
        v59 = v267;
        *i = v266;
        i[1] = v59;
        v60 = **(a3 + 8);
        n128_u64 = *(v10->n128_u32 + v60);
        if (n128_u64 >= *(i->n128_u32 + v60))
        {
          goto LABEL_37;
        }

        v61 = i[1];
        v266 = *i;
        v267 = v61;
        v62 = a2[-1];
        *i = *v10;
        i[1] = v62;
      }

      else
      {
        v21 = v14[1];
        v266 = *v14;
        v267 = v21;
        v22 = a2[-1];
        *v14 = *v10;
        v14[1] = v22;
      }

      v63 = v267;
      *v10 = v266;
      a2[-1] = v63;
LABEL_37:
      --a4;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v17 = *(v14->n128_u32 + v15);
    if (v17 >= *(i->n128_u32 + v15))
    {
      if (v16 < v17)
      {
        v23 = v14[1];
        v266 = *v14;
        v267 = v23;
        v24 = a2[-1];
        *v14 = *v10;
        v14[1] = v24;
        v25 = v267;
        *v10 = v266;
        a2[-1] = v25;
        if (*(v14->n128_u32 + **(a3 + 8)) < *(i->n128_u32 + **(a3 + 8)))
        {
          v26 = i[1];
          v266 = *i;
          v267 = v26;
          v27 = v14[1];
          *i = *v14;
          i[1] = v27;
          v28 = v267;
          *v14 = v266;
          v14[1] = v28;
        }
      }
    }

    else
    {
      if (v16 >= v17)
      {
        v37 = i[1];
        v266 = *i;
        v267 = v37;
        v38 = v14[1];
        *i = *v14;
        i[1] = v38;
        v39 = v267;
        *v14 = v266;
        v14[1] = v39;
        if (*(v10->n128_u32 + **(a3 + 8)) >= *(v14->n128_u32 + **(a3 + 8)))
        {
          goto LABEL_28;
        }

        v40 = v14[1];
        v266 = *v14;
        v267 = v40;
        v41 = a2[-1];
        *v14 = *v10;
        v14[1] = v41;
      }

      else
      {
        v18 = i[1];
        v266 = *i;
        v267 = v18;
        v19 = a2[-1];
        *i = *v10;
        i[1] = v19;
      }

      v42 = v267;
      *v10 = v266;
      a2[-1] = v42;
    }

LABEL_28:
    n128_u64 = v14[-2].n128_u64;
    v43 = **(a3 + 8);
    v44 = *(v14[-2].n128_u32 + v43);
    v45 = i + 2;
    v46 = *(i[2].n128_u32 + v43);
    v47 = *(v263->n128_u32 + v43);
    if (v44 >= v46)
    {
      if (v47 < v44)
      {
        v51 = v14[-1];
        v266 = *n128_u64;
        v267 = v51;
        v52 = a2[-3];
        *n128_u64 = *v263;
        v14[-1] = v52;
        v53 = v267;
        *v263 = v266;
        a2[-3] = v53;
        if (*(n128_u64 + **(a3 + 8)) < *(v45->n128_u32 + **(a3 + 8)))
        {
          v55 = i[3];
          v266 = *v45;
          v54 = v266;
          v267 = v55;
          v56 = v14[-1];
          *v45 = *n128_u64;
          i[3] = v56;
          *n128_u64 = v54;
          v14[-1] = v55;
        }
      }
    }

    else if (v47 >= v44)
    {
      v65 = i[3];
      v266 = *v45;
      v64 = v266;
      v267 = v65;
      v66 = v14[-1];
      *v45 = *n128_u64;
      i[3] = v66;
      *n128_u64 = v64;
      v14[-1] = v65;
      if (*(v263->n128_u32 + **(a3 + 8)) < *(n128_u64 + **(a3 + 8)))
      {
        v67 = v14[-1];
        v266 = *n128_u64;
        v267 = v67;
        v68 = a2[-3];
        *n128_u64 = *v263;
        v14[-1] = v68;
        v69 = v267;
        *v263 = v266;
        a2[-3] = v69;
      }
    }

    else
    {
      v49 = i[3];
      v266 = *v45;
      v48 = v266;
      v267 = v49;
      v50 = a2[-3];
      *v45 = *v263;
      i[3] = v50;
      *v263 = v48;
      a2[-3] = v49;
    }

    v70 = v14 + 2;
    v71 = **(a3 + 8);
    v72 = *(v14[2].n128_u32 + v71);
    v73 = i + 4;
    v74 = *(i[4].n128_u32 + v71);
    v75 = *(v11->n128_u32 + v71);
    if (v72 >= v74)
    {
      if (v75 < v72)
      {
        v79 = v14[3];
        v266 = *v70;
        v267 = v79;
        v80 = a2[-5];
        *v70 = *v11;
        v14[3] = v80;
        v81 = v267;
        *v11 = v266;
        a2[-5] = v81;
        if (*(v70->n128_u32 + **(a3 + 8)) < *(v73->n128_u32 + **(a3 + 8)))
        {
          v83 = i[5];
          v266 = *v73;
          v82 = v266;
          v267 = v83;
          v84 = v14[3];
          *v73 = *v70;
          i[5] = v84;
          *v70 = v82;
          v14[3] = v83;
        }
      }
    }

    else
    {
      if (v75 >= v72)
      {
        v86 = i[5];
        v266 = *v73;
        v85 = v266;
        v267 = v86;
        v87 = v14[3];
        *v73 = *v70;
        i[5] = v87;
        *v70 = v85;
        v14[3] = v86;
        if (*(v11->n128_u32 + **(a3 + 8)) >= *(v70->n128_u32 + **(a3 + 8)))
        {
          goto LABEL_50;
        }

        v88 = v14[3];
        v266 = *v70;
        v267 = v88;
        v89 = a2[-5];
        *v70 = *v11;
        v14[3] = v89;
        v76 = v266;
        v77 = v267;
      }

      else
      {
        v76 = *v73;
        v77 = i[5];
        v266 = *v73;
        v267 = v77;
        v78 = a2[-5];
        *v73 = *v11;
        i[5] = v78;
      }

      *v11 = v76;
      a2[-5] = v77;
    }

LABEL_50:
    v90 = **(a3 + 8);
    v91 = *(v14->n128_u32 + v90);
    v92 = *(n128_u64 + v90);
    v93 = *(v70->n128_u32 + v90);
    if (v91 >= v92)
    {
      if (v93 < v91)
      {
        v96 = v14[1];
        v266 = *v14;
        v267 = v96;
        v97 = v14[3];
        *v14 = *v70;
        v14[1] = v97;
        v98 = v267;
        *v70 = v266;
        v14[3] = v98;
        if (*(v14->n128_u32 + **(a3 + 8)) < *(n128_u64 + **(a3 + 8)))
        {
          v99 = v14[-1];
          v266 = *n128_u64;
          v267 = v99;
          v100 = v14[1];
          *n128_u64 = *v14;
          v14[-1] = v100;
          v101 = v267;
          *v14 = v266;
          v14[1] = v101;
        }
      }
    }

    else
    {
      if (v93 >= v91)
      {
        v102 = v14[-1];
        v266 = *n128_u64;
        v267 = v102;
        v103 = v14[1];
        *n128_u64 = *v14;
        v14[-1] = v103;
        v104 = v267;
        *v14 = v266;
        v14[1] = v104;
        v105 = **(a3 + 8);
        v106 = *(v70->n128_u32 + v105);
        n128_u64 = *(v14->n128_u32 + v105);
        if (v106 >= n128_u64)
        {
          goto LABEL_59;
        }

        v107 = v14[1];
        v266 = *v14;
        v267 = v107;
        v108 = v14[3];
        *v14 = *v70;
        v14[1] = v108;
      }

      else
      {
        v94 = v14[-1];
        v266 = *n128_u64;
        v267 = v94;
        v95 = v14[3];
        *n128_u64 = *v70;
        v14[-1] = v95;
      }

      v109 = v267;
      *v70 = v266;
      v14[3] = v109;
    }

LABEL_59:
    v110 = i[1];
    v266 = *i;
    v267 = v110;
    v111 = v14[1];
    *i = *v14;
    i[1] = v111;
    v112 = v267;
    *v14 = v266;
    v14[1] = v112;
    --a4;
    if (a5)
    {
      goto LABEL_61;
    }

LABEL_60:
    v113 = **(a3 + 8);
    n128_u64 = *(i[-2].n128_u32 + v113);
    if (n128_u64 < *(i->n128_u32 + v113))
    {
LABEL_61:
      v114 = i[1];
      v264 = *i;
      v265 = v114;
      v115 = i + 2;
      if (&i[2] == a2)
      {
        goto LABEL_200;
      }

      n128_u64 = **(a3 + 8);
      v116 = *(v264.n128_u32 + n128_u64);
      if (*(v115->n128_u32 + n128_u64) < v116)
      {
        v115 = (n128_u64 + 64);
        v117 = i;
        while (&v117[4] != a2)
        {
          v118 = *(v115->n128_u32 + v117);
          v117 += 2;
          if (v118 >= v116)
          {
            v115 = v117 + 2;
            v119 = n128_u64 - 32;
            v120 = a2;
            while (v120 != i)
            {
              n128_u64 = v120[-2].n128_u64;
              v121 = *(v120->n128_u32 + v119);
              v120 -= 2;
              if (v121 < v116)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_200;
          }
        }

        goto LABEL_200;
      }

      v122 = n128_u64 - 32;
      n128_u64 = a2;
      do
      {
        if (v115 >= n128_u64)
        {
          v117 = i;
          goto LABEL_88;
        }

        v123 = n128_u64 - 32;
        v124 = *(n128_u64 + v122);
        n128_u64 -= 32;
      }

      while (v124 >= v116);
      v117 = i;
      n128_u64 = v123;
LABEL_74:
      if (v115 < n128_u64)
      {
        v125 = v115;
        v126 = n128_u64;
LABEL_78:
        v127 = v125[1];
        v266 = *v125;
        v267 = v127;
        v128 = v126[1];
        *v125 = *v126;
        v125[1] = v128;
        v129 = v267;
        *v126 = v266;
        v126[1] = v129;
        if (&v125[2] != a2)
        {
          v130 = **(a3 + 8);
          v131 = *(v264.n128_u32 + v130);
          if (*(v125[2].n128_u32 + v130) >= v131)
          {
            v117 = v125;
            v125 += 2;
LABEL_84:
            v133 = v130 - 32;
            while (v126 != i)
            {
              v134 = v126 - 2;
              v135 = *(v126->n128_u32 + v133);
              v126 -= 2;
              if (v135 < v131)
              {
                v126 = v134;
                if (v125 < v134)
                {
                  goto LABEL_78;
                }

                goto LABEL_88;
              }
            }
          }

          else
          {
            while (&v125[4] != a2)
            {
              v132 = *(v125[4].n128_u32 + v130);
              v125 += 2;
              if (v132 >= v131)
              {
                v117 = v125;
                v125 += 2;
                goto LABEL_84;
              }
            }
          }
        }

        goto LABEL_200;
      }

LABEL_88:
      if (v117 != i)
      {
        v136 = v117[1];
        *i = *v117;
        i[1] = v136;
      }

      v137 = v264;
      v138 = v265;
      *v117 = v264;
      v117[1] = v138;
      if (v115 < n128_u64)
      {
        goto LABEL_93;
      }

      v139 = a4;
      v140 = a5;
      v141 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*>(i, v117, a3, v137);
      i = v117 + 2;
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*>(v117 + 2, a2, a3, v142))
      {
        a5 = v140;
        a4 = v139;
        if (v141)
        {
          goto LABEL_2;
        }

LABEL_93:
        std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,false>(a1, v117, a3, a4, a5 & 1);
        a5 = 0;
        i = v117 + 2;
        goto LABEL_2;
      }

      a2 = v117;
      a5 = v140;
      a4 = v139;
      if (v141)
      {
        return a6.n128_f64[0];
      }

      goto LABEL_1;
    }

    v143 = i[1];
    v264 = *i;
    v265 = v143;
    v144 = *(v264.n128_u32 + v113);
    if (v144 < *(v10->n128_u32 + v113))
    {
      n128_u64 = v113 + 32;
      v145 = i;
      while (1)
      {
        v115 = v145 + 2;
        if (&v145[2] == a2)
        {
          goto LABEL_200;
        }

        v146 = *(v145->n128_u32 + n128_u64);
        v145 += 2;
        if (v144 < v146)
        {
          goto LABEL_102;
        }
      }
    }

    v147 = i + 2;
    do
    {
      v115 = v147;
      if (v147 >= a2)
      {
        break;
      }

      v148 = *(v147->n128_u32 + v113);
      v147 += 2;
    }

    while (v144 >= v148);
LABEL_102:
    n128_u64 = a2;
    if (v115 < a2)
    {
      v149 = v113 - 32;
      v150 = a2;
      while (v150 != i)
      {
        n128_u64 = v150[-2].n128_u64;
        v151 = *(v150->n128_u32 + v149);
        v150 -= 2;
        if (v144 >= v151)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_200;
    }

LABEL_106:
    if (v115 < n128_u64)
    {
      while (1)
      {
        v152 = v115[1];
        v266 = *v115;
        v267 = v152;
        v153 = *(n128_u64 + 16);
        *v115 = *n128_u64;
        v115[1] = v153;
        v154 = v267;
        *n128_u64 = v266;
        *(n128_u64 + 16) = v154;
        i = v115 + 2;
        if (&v115[2] == a2)
        {
          break;
        }

        v155 = **(a3 + 8);
        v156 = *(v264.n128_u32 + v155);
        if (v156 >= *(i->n128_u32 + v155))
        {
          v115 += 4;
          do
          {
            if (v115 == a2)
            {
              goto LABEL_200;
            }

            v157 = *(v115->n128_u32 + v155);
            v115 += 2;
          }

          while (v156 >= v157);
          i = v115 - 2;
        }

        v115 = (v155 - 32);
        do
        {
          if (n128_u64 == a1)
          {
            goto LABEL_200;
          }

          v158 = n128_u64 - 32;
          v159 = *(v115->n128_u32 + n128_u64);
          n128_u64 -= 32;
        }

        while (v156 < v159);
        v115 = i;
        n128_u64 = v158;
        if (i >= v158)
        {
          goto LABEL_119;
        }
      }

LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    i = v115;
LABEL_119:
    v160 = i - 2;
    if (&i[-2] != a1)
    {
      v161 = i[-1];
      *a1 = *v160;
      a1[1] = v161;
    }

    a5 = 0;
    a6 = v264;
    v162 = v265;
    *v160 = v264;
  }

  a6.n128_u64[0] = std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,0>(i, i + 2, i + 4, i + 6, a2 - 2, a3, a6).n128_u64[0];
  return a6.n128_f64[0];
}

__n128 std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6, __n128 result)
{
  v7 = **(a6 + 8);
  v8 = *(a2->n128_u32 + v7);
  v9 = *(a1->n128_u32 + v7);
  v10 = *(a3->n128_u32 + v7);
  if (v8 >= v9)
  {
    if (v10 < v8)
    {
      v13 = *a2;
      result = a2[1];
      v14 = a3[1];
      *a2 = *a3;
      a2[1] = v14;
      *a3 = v13;
      a3[1] = result;
      if (*(a2->n128_u32 + **(a6 + 8)) < *(a1->n128_u32 + **(a6 + 8)))
      {
        v15 = *a1;
        result = a1[1];
        v16 = a2[1];
        *a1 = *a2;
        a1[1] = v16;
        *a2 = v15;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v10 < v8)
    {
      v11 = *a1;
      result = a1[1];
      v12 = a3[1];
      *a1 = *a3;
      a1[1] = v12;
LABEL_9:
      *a3 = v11;
      a3[1] = result;
      goto LABEL_10;
    }

    v17 = *a1;
    result = a1[1];
    v18 = a2[1];
    *a1 = *a2;
    a1[1] = v18;
    *a2 = v17;
    a2[1] = result;
    if (*(a3->n128_u32 + **(a6 + 8)) < *(a2->n128_u32 + **(a6 + 8)))
    {
      v11 = *a2;
      result = a2[1];
      v19 = a3[1];
      *a2 = *a3;
      a2[1] = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  v20 = **(a6 + 8);
  if (*(a4->n128_u32 + v20) < *(a3->n128_u32 + v20))
  {
    v21 = *a3;
    result = a3[1];
    v22 = a4[1];
    *a3 = *a4;
    a3[1] = v22;
    *a4 = v21;
    a4[1] = result;
    v20 = **(a6 + 8);
    if (*(a3->n128_u32 + v20) < *(a2->n128_u32 + v20))
    {
      v23 = *a2;
      result = a2[1];
      v24 = a3[1];
      *a2 = *a3;
      a2[1] = v24;
      *a3 = v23;
      a3[1] = result;
      v20 = **(a6 + 8);
      if (*(a2->n128_u32 + v20) < *(a1->n128_u32 + v20))
      {
        v25 = *a1;
        result = a1[1];
        v26 = a2[1];
        *a1 = *a2;
        a1[1] = v26;
        *a2 = v25;
        a2[1] = result;
        v20 = **(a6 + 8);
      }
    }
  }

  if (*(a5->n128_u32 + v20) < *(a4->n128_u32 + v20))
  {
    v27 = *a4;
    result = a4[1];
    v28 = a5[1];
    *a4 = *a5;
    a4[1] = v28;
    *a5 = v27;
    a5[1] = result;
    if (*(a4->n128_u32 + **(a6 + 8)) < *(a3->n128_u32 + **(a6 + 8)))
    {
      v29 = *a3;
      result = a3[1];
      v30 = a4[1];
      *a3 = *a4;
      a3[1] = v30;
      *a4 = v29;
      a4[1] = result;
      if (*(a3->n128_u32 + **(a6 + 8)) < *(a2->n128_u32 + **(a6 + 8)))
      {
        v31 = *a2;
        result = a2[1];
        v32 = a3[1];
        *a2 = *a3;
        a2[1] = v32;
        *a3 = v31;
        a3[1] = result;
        if (*(a2->n128_u32 + **(a6 + 8)) < *(a1->n128_u32 + **(a6 + 8)))
        {
          v33 = *a1;
          result = a1[1];
          v34 = a2[1];
          *a1 = *a2;
          a1[1] = v34;
          *a2 = v33;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = a1 + 2;
      v10 = **(a3 + 8);
      v11 = *(a1[2].n128_u32 + v10);
      v12 = a2 - 2;
      v13 = *(a1->n128_u32 + v10);
      v14 = *(a2[-2].n128_u32 + v10);
      if (v11 < v13)
      {
        if (v14 >= v11)
        {
          v51 = *a1;
          v50 = a1[1];
          v52 = a1[3];
          *a1 = *v5;
          a1[1] = v52;
          *v5 = v51;
          a1[3] = v50;
          if (*(v12->n128_u32 + **(a3 + 8)) >= *(v5->n128_u32 + **(a3 + 8)))
          {
            return 1;
          }

          v16 = *v5;
          v15 = a1[3];
          v53 = a2[-1];
          *v5 = *v12;
          a1[3] = v53;
        }

        else
        {
          v16 = *a1;
          v15 = a1[1];
          v17 = a2[-1];
          *a1 = *v12;
          a1[1] = v17;
        }

        *v12 = v16;
        a2[-1] = v15;
        return 1;
      }

      if (v14 >= v11)
      {
        return 1;
      }

      v36 = *v5;
      v35 = a1[3];
      v37 = a2[-1];
      *v5 = *v12;
      a1[3] = v37;
LABEL_50:
      *v12 = v36;
      v12[1] = v35;
      if (*(v5->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
      {
        v7 = *a1;
        v6 = a1[1];
        v76 = v5[1];
        *a1 = *v5;
        a1[1] = v76;
        goto LABEL_52;
      }

      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroup::BufferAndType::*> &,WebGPU::BindGroup::BufferAndType*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3, a4);
        return 1;
      }

      goto LABEL_13;
    }

    v5 = a1 + 2;
    v12 = a1 + 4;
    v27 = **(a3 + 8);
    v28 = *(a1[2].n128_u32 + v27);
    v29 = a2 - 2;
    v30 = *(a1->n128_u32 + v27);
    v31 = *(a1[4].n128_u32 + v27);
    if (v28 >= v30)
    {
      if (v31 < v28)
      {
        v45 = *v5;
        v44 = a1[3];
        v46 = a1[5];
        *v5 = *v12;
        a1[3] = v46;
        *v12 = v45;
        a1[5] = v44;
        if (*(v5->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
        {
          v48 = *a1;
          v47 = a1[1];
          v49 = a1[3];
          *a1 = *v5;
          a1[1] = v49;
          *v5 = v48;
          a1[3] = v47;
        }
      }

      goto LABEL_47;
    }

    if (v31 >= v28)
    {
      v69 = *a1;
      v68 = a1[1];
      v70 = a1[3];
      *a1 = *v5;
      a1[1] = v70;
      *v5 = v69;
      a1[3] = v68;
      if (*(v12->n128_u32 + **(a3 + 8)) >= *(v5->n128_u32 + **(a3 + 8)))
      {
        goto LABEL_47;
      }

      v33 = *v5;
      v32 = a1[3];
      v71 = a1[5];
      *v5 = *v12;
      a1[3] = v71;
    }

    else
    {
      v33 = *a1;
      v32 = a1[1];
      v34 = a1[5];
      *a1 = *v12;
      a1[1] = v34;
    }

    *v12 = v33;
    a1[5] = v32;
LABEL_47:
    if (*(v29->n128_u32 + **(a3 + 8)) >= *(v12->n128_u32 + **(a3 + 8)))
    {
      return 1;
    }

    v73 = *v12;
    v72 = a1[5];
    v74 = a2[-1];
    *v12 = *v29;
    a1[5] = v74;
    *v29 = v73;
    a2[-1] = v72;
    if (*(v12->n128_u32 + **(a3 + 8)) >= *(v5->n128_u32 + **(a3 + 8)))
    {
      return 1;
    }

    v36 = *v5;
    v35 = a1[3];
    v75 = a1[5];
    *v5 = *v12;
    a1[3] = v75;
    goto LABEL_50;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 2;
    if (*(a2[-2].n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
    {
      v7 = *a1;
      v6 = a1[1];
      v8 = a2[-1];
      *a1 = *v5;
      a1[1] = v8;
LABEL_52:
      *v5 = v7;
      v5[1] = v6;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v18 = a1 + 2;
  v19 = **(a3 + 8);
  v20 = *(a1[2].n128_u32 + v19);
  v21 = a1 + 4;
  v22 = *(a1->n128_u32 + v19);
  v23 = *(a1[4].n128_u32 + v19);
  if (v20 >= v22)
  {
    if (v23 < v20)
    {
      v39 = *v18;
      v38 = a1[3];
      v40 = a1[5];
      *v18 = *v21;
      a1[3] = v40;
      *v21 = v39;
      a1[5] = v38;
      if (*(v18->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
      {
        v42 = *a1;
        v41 = a1[1];
        v43 = a1[3];
        *a1 = *v18;
        a1[1] = v43;
        *v18 = v42;
        a1[3] = v41;
      }
    }
  }

  else
  {
    if (v23 >= v20)
    {
      v55 = *a1;
      v54 = a1[1];
      v56 = a1[3];
      *a1 = *v18;
      a1[1] = v56;
      *v18 = v55;
      a1[3] = v54;
      if (*(v21->n128_u32 + **(a3 + 8)) >= *(v18->n128_u32 + **(a3 + 8)))
      {
        goto LABEL_33;
      }

      v25 = *v18;
      v24 = a1[3];
      v57 = a1[5];
      *v18 = *v21;
      a1[3] = v57;
    }

    else
    {
      v25 = *a1;
      v24 = a1[1];
      v26 = a1[5];
      *a1 = *v21;
      a1[1] = v26;
    }

    *v21 = v25;
    a1[5] = v24;
  }

LABEL_33:
  v58 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v59 = 0;
  v60 = 0;
  while (*(v58->n128_u32 + **(a3 + 8)) >= *(v21->n128_u32 + **(a3 + 8)))
  {
LABEL_42:
    v21 = v58;
    v59 += 32;
    v58 += 2;
    if (v58 == a2)
    {
      return 1;
    }
  }

  v62 = v58[1];
  v77 = *v58;
  v78 = v62;
  v63 = v59;
  do
  {
    v64 = a1 + v63;
    v65 = *(&a1[5] + v63);
    *(v64 + 96) = *(a1 + v63 + 64);
    *(v64 + 112) = v65;
    if (v63 == -64)
    {
      v61 = v78;
      *a1 = v77;
      a1[1] = v61;
      if (++v60 != 8)
      {
        goto LABEL_42;
      }

      return &v58[2] == a2;
    }

    v63 -= 32;
  }

  while (*(v77.n128_u32 + **(a3 + 8)) < *(v64 + **(a3 + 8) + 32));
  v66 = (a1 + v63);
  v67 = v78;
  v66[6] = v77;
  v66[7] = v67;
  if (++v60 != 8)
  {
    goto LABEL_42;
  }

  return &v58[2] == a2;
}

id *WTF::RetainPtrArc<NSString>::~RetainPtrArc(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

WebGPU::BindGroupLayout **WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>::~Ref(WebGPU::BindGroupLayout **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::BindGroupLayout::~BindGroupLayout(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

WebGPU::BindGroupLayout *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(WebGPU::BindGroupLayout *result, WTF::StringImpl *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::BindGroupLayout::~BindGroupLayout(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

atomic_ullong **WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(atomic_ullong **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v8, a2);
        return v9;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::Buffer::~Buffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      return v5;
    }
  }

  return result;
}

WebGPU::Sampler *WTF::RefCounted<WebGPU::Sampler>::deref(WebGPU::Sampler *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*result == 1)
  {
    WebGPU::Sampler::~Sampler(result, a2, a3);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    --*result;
  }

  return result;
}

WebGPU::TextureView **WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(WebGPU::TextureView **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::TextureView::~TextureView(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebGPU::Device::createExternalTextureFromPixelBuffer(__CVBuffer *,WGPUColorSpace)::$_0,void,WGPUQueueWorkDoneStatus>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

unint64_t WTF::Vector<WebGPU::BindGroup::BufferAndType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 32 * v6 <= a3)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (!(v9 >> 27))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((32 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = 32 * v6;
        v14 = v5;
        do
        {
          v15 = *v14;
          v16 = *(v14 + 1);
          v14 = (v14 + 32);
          *v11 = v15;
          v11[1] = v16;
          v11 += 2;
          v13 -= 32;
        }

        while (v13);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return a3;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x22566F664);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >> 27)
  {
    goto LABEL_38;
  }

  v20 = a3 - v5;
  if (v19 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v19;
  }

  v22 = WTF::fastMalloc((32 * v21));
  v24 = 0;
  *(a1 + 8) = v21;
  *a1 = v22;
  do
  {
    v25 = (v22 + v24);
    v26 = *(v5 + v24 + 16);
    *v25 = *(v5 + v24);
    v25[1] = v26;
    v24 += 32;
  }

  while (32 * v6 != v24);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v23);
  }

  return *a1 + v20;
}

char *WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, int *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = 4 * a2;
    v11 = WTF::fastMalloc((v9 + 16));
    v12 = (v11 + 4);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = 0;
  v9 = 4 * a2;
  v11 = WTF::fastMalloc((v9 + 16));
  v12 = (v11 + 4);
  if (a2)
  {
LABEL_3:
    memset(v12, 255, v9);
  }

LABEL_4:
  *a1 = v12;
  v13 = a2 - 1;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (v6 + 4 * v14);
      v17 = *v16;
      if (*v16 <= 0xFFFFFFFD)
      {
        v18 = 0;
        v19 = 9 * ((v17 + ~(v17 << 15)) ^ ((v17 + ~(v17 << 15)) >> 10));
        v20 = ((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) ^ (((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) >> 16);
        do
        {
          v21 = v20 & v13;
          v20 = ++v18 + v21;
        }

        while (*&v12[4 * v21] != -1);
        *&v12[4 * v21] = v17;
        if (v16 == a3)
        {
          v15 = &v12[4 * v21];
        }
      }

      ++v14;
    }

    while (v14 != v7);
LABEL_17:
    if (!v6)
    {
      return v15;
    }

    goto LABEL_20;
  }

  v15 = 0;
LABEL_20:
  WTF::fastFree((v6 - 16), v10);
  return v15;
}

WTF **WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto9MTLBuffer}* {__strong}&>(WTF **result, id *a2)
{
  v2 = *(result + 2);
  v3 = *(result + 3);
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = v2 + (v2 >> 1);
  }

  if (v4 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  if (v4 >> 29)
  {
    __break(0xC471u);
  }

  else
  {
    v6 = result;
    v7 = *result;
    if (v4 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v4;
    }

    v10 = WTF::fastMalloc((8 * v8));
    *(v6 + 2) = v8;
    *v6 = v10;
    if (v3)
    {
      v11 = 8 * v3;
      v12 = v7;
      do
      {
        v13 = *v12;
        *v12 = 0;
        *v10 = v13;
        v10 = (v10 + 8);
        v14 = *v12++;

        v11 -= 8;
      }

      while (v11);
      v10 = *v6;
    }

    if (v7)
    {
      if (v10 == v7)
      {
        *v6 = 0;
        *(v6 + 2) = 0;
      }

      WTF::fastFree(v7, v9);
      v10 = *v6;
    }

    v15 = *(v6 + 3);
    result = *a2;
    *(v10 + v15) = result;
    ++*(v6 + 3);
  }

  return result;
}