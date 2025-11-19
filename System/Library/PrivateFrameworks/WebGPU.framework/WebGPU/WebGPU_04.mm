void sub_22568D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  bmalloc::api::tzoneFree(v4, v6);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  bmalloc::api::tzoneFree(v3, v5);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D1F4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WebGPU::CommandEncoder *a11, atomic_ullong *a12, WTF::StringImpl *a13, char a14)
{
  WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(&a12, a2);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void sub_22568D294(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, WebGPU::CommandEncoder *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D2E4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::CommandEncoder *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuCommandEncoderInsertDebugMarker(unsigned __int8 *a1, char *__s)
{
  ++*(a1 + 4);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v3 = *a1;
  if ((v3 - 3) >= 0xFFFFFFFE)
  {
    if (v3 == 2)
    {
      v10 = *(a1 + 24);
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_24;
        }
      }

      v14 = 0;
      v15 = *v10;
      v16 = 1;
      atomic_compare_exchange_strong_explicit(*v10, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        MEMORY[0x22AA683C0](v15);
      }

      ++*(v15 + 8);
      atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 != 1)
      {
        WTF::Lock::unlockSlow(v15);
      }

LABEL_24:
      v17 = MEMORY[0x277CCACA8];
      v18 = WebGPU::CommandsMixin::encoderStateName(a1);
      v19 = [v17 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::insertDebugMarker(String &&)", v18];
      WebGPU::Device::generateAValidationError(v10, v19);

      v28 = 0;
      do
      {
        v20 = *v10;
        if ((*v10 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v9);
          goto LABEL_30;
        }

        v21 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v21 != v20);
      if (v20 == 3)
      {
        WebGPU::Device::~Device(v10, v9);
        bmalloc::api::tzoneFree(v22, v23);
      }
    }

    else
    {
      if (*(a1 + 6))
      {
        v13 = *(a1 + 6);
      }

      else
      {
        v13 = @"Encoder state is locked";
      }

      WebGPU::CommandEncoder::makeInvalid(a1, &v13->isa);
    }
  }

  else
  {
    if (*(*(a1 + 24) + 8))
    {
      v4 = *(a1 + 5);
      if (*(a1 + 4) == v4)
      {
        WebGPU::CommandEncoder::endEncoding(a1, v4);
        v5 = *(a1 + 5);
        *(a1 + 5) = 0;

        WebGPU::CommandEncoder::setExistingEncoder(a1, 0);
      }
    }

    v6 = *(a1 + 3);
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v28);
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v7);
      }
    }

    else
    {
      v28 = &stru_2838D6D18;
    }

    [v6 pushDebugGroup:v28];
    v8 = v28;
    v28 = 0;

    [*(a1 + 3) popDebugGroup];
  }

LABEL_30:
  result = v27;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v27, v9);
  }

  if (*(a1 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);
    return bmalloc::api::tzoneFree(v25, v26);
  }

  else
  {
    --*(a1 + 4);
  }

  return result;
}

void sub_22568D5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WebGPU::CommandEncoder *a13, atomic_ullong *a14)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a14, v17);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v18);
      WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a13);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a13);
  _Unwind_Resume(a1);
}

void wgpuCommandEncoderPopDebugGroup(WebGPU::CommandEncoder *this)
{
  ++*(this + 4);
  v2 = *this;
  if ((v2 - 3) >= 0xFFFFFFFE)
  {
    if (v2 == 2)
    {
      v6 = *(this + 24);
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_21;
        }
      }

      v10 = 0;
      v11 = *v6;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*v6, &v10, 1u, memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        MEMORY[0x22AA683C0](v11);
      }

      ++*(v11 + 8);
      atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

LABEL_21:
      v13 = MEMORY[0x277CCACA8];
      v14 = WebGPU::CommandsMixin::encoderStateName(this);
      v15 = [v13 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::popDebugGroup()", v14, this, v6];
      WebGPU::Device::generateAValidationError(v6, v15);

      while (1)
      {
        v17 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v18 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v18, v17 - 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          if (v17 == 3)
          {
            WebGPU::Device::~Device(v6, v16);
            bmalloc::api::tzoneFree(v19, v20);
          }

          goto LABEL_26;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v6, v16);
      v21 = *(this + 4) - 1;
      if (*(this + 4) != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (*(this + 6))
    {
      v9 = *(this + 6);
    }

    else
    {
      v9 = @"Encoder state is locked";
    }

    goto LABEL_16;
  }

  v3 = *(this + 7);
  if (!v3)
  {
    v9 = @"validatePopDebugGroup failed";
LABEL_16:
    WebGPU::CommandEncoder::makeInvalid(this, &v9->isa);
    goto LABEL_26;
  }

  if (*(*(this + 24) + 8))
  {
    v4 = *(this + 5);
    if (*(this + 4) == v4)
    {
      WebGPU::CommandEncoder::endEncoding(this, v4);
      v5 = *(this + 5);
      *(this + 5) = 0;

      WebGPU::CommandEncoder::setExistingEncoder(this, 0);
      v3 = *(this + 7);
    }
  }

  *(this + 7) = v3 - 1;
  [*(this + 3) popDebugGroup];
LABEL_26:
  v21 = *(this + 4) - 1;
  if (*(this + 4) != 1)
  {
LABEL_27:
    *(this + 4) = v21;
    return;
  }

LABEL_29:
  WebGPU::CommandEncoder::~CommandEncoder(this);

  bmalloc::api::tzoneFree(v22, v23);
}

void sub_22568D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, WebGPU::CommandEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v6);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568D89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuCommandEncoderPushDebugGroup(unsigned __int8 *a1, char *__s)
{
  ++*(a1 + 4);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v3 = *a1;
  if ((v3 - 3) >= 0xFFFFFFFE)
  {
    if (v3 == 2)
    {
      v10 = *(a1 + 24);
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_24;
        }
      }

      v14 = 0;
      v15 = *v10;
      v16 = 1;
      atomic_compare_exchange_strong_explicit(*v10, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        MEMORY[0x22AA683C0](v15);
      }

      ++*(v15 + 8);
      atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 != 1)
      {
        WTF::Lock::unlockSlow(v15);
      }

LABEL_24:
      v17 = MEMORY[0x277CCACA8];
      v18 = WebGPU::CommandsMixin::encoderStateName(a1);
      v19 = [v17 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::pushDebugGroup(String &&)", v18];
      WebGPU::Device::generateAValidationError(v10, v19);

      v28 = 0;
      do
      {
        v20 = *v10;
        if ((*v10 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v9);
          goto LABEL_30;
        }

        v21 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v21 != v20);
      if (v20 == 3)
      {
        WebGPU::Device::~Device(v10, v9);
        bmalloc::api::tzoneFree(v22, v23);
      }
    }

    else
    {
      if (*(a1 + 6))
      {
        v13 = *(a1 + 6);
      }

      else
      {
        v13 = @"Encoder state is locked";
      }

      WebGPU::CommandEncoder::makeInvalid(a1, &v13->isa);
    }
  }

  else
  {
    if (*(*(a1 + 24) + 8))
    {
      v4 = *(a1 + 5);
      if (*(a1 + 4) == v4)
      {
        WebGPU::CommandEncoder::endEncoding(a1, v4);
        v5 = *(a1 + 5);
        *(a1 + 5) = 0;

        WebGPU::CommandEncoder::setExistingEncoder(a1, 0);
      }
    }

    ++*(a1 + 7);
    v6 = *(a1 + 3);
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v28);
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v7);
      }
    }

    else
    {
      v28 = &stru_2838D6D18;
    }

    [v6 pushDebugGroup:v28];
    v8 = v28;
    v28 = 0;
  }

LABEL_30:
  result = v27;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v27, v9);
  }

  if (*(a1 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);
    return bmalloc::api::tzoneFree(v25, v26);
  }

  else
  {
    --*(a1 + 4);
  }

  return result;
}

void sub_22568DB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WebGPU::CommandEncoder *a13, atomic_ullong *a14)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a14, v17);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v18);
      WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a13);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a13);
  _Unwind_Resume(a1);
}

WebGPU::CommandEncoder *wgpuCommandEncoderResolveQuerySet(WebGPU::CommandEncoder *this, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  ++*(this + 4);
  ++*a2;
  while (1)
  {
    v12 = *a5;
    if ((*a5 & 1) == 0)
    {
      break;
    }

    v13 = *a5;
    atomic_compare_exchange_strong_explicit(a5, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_8;
    }
  }

  v14 = 0;
  v15 = *a5;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*a5, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x22AA683C0](v15);
  }

  ++*(v15 + 8);
  atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 == 1)
  {
LABEL_8:
    v59 = a5;
    v17 = *this;
    if ((v17 - 3) < 0xFFFFFFFE)
    {
      goto LABEL_9;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v15);
    v59 = a5;
    v17 = *this;
    if ((v17 - 3) < 0xFFFFFFFE)
    {
LABEL_9:
      if (((*(a2 + 56) & 1) != 0 || *(a2 + 16) || *(a2 + 24)) && (*(a5 + 44) == 4 || *(a5 + 8)) && (*(a5 + 41) & 2) != 0)
      {
        v19 = *(a2 + 32);
        v18 = @"GPUCommandEncoder.resolveQuerySet validation failed";
        if (v19 > a3 && !__CFADD__(a3, a4) && !a6 && a3 + a4 <= v19)
        {
          v20 = 8 * a4;
          if (!__CFADD__(a6, v20) && (a6 + v20) <= *(a5 + 32))
          {
            v21 = *(a2 + 8);
            if (*(v21 + 8))
            {
              if (v21 == *(this + 24))
              {
                v22 = *(a5 + 280);
                if (v22 == v21)
                {
                  if (*(v22 + 8))
                  {
                    WebGPU::QuerySet::setCommandEncoder(a2, this);
                    WebGPU::Buffer::setCommandEncoder(a5, this);
                    WebGPU::Buffer::indirectBufferInvalidated(a5, this);
                    if ((*(a2 + 56) & 1) == 0 && a4 && *(a5 + 44) != 4)
                    {
                      v24 = *(a2 + 36);
                      if (v24 == 1)
                      {
                        WebGPU::CommandEncoder::finalizeBlitCommandEncoder(this);
                        v53 = WebGPU::Device::resolveTimestampsSharedEvent(*(this + 24));
                        [*(this + 3) encodeSignalEvent:v53 value:1];
                        [*(this + 3) encodeWaitForEvent:v53 value:1];
                        v54 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(this);
                        v55 = *(this + 5);
                        v56 = *(a2 + 24);
                        v57 = *(a5 + 8);
                        v58 = v56;
                        [v55 resolveCounters:v58 inRange:a3 destinationBuffer:a4 destinationOffset:{v57, a6}];
                      }

                      else if (!v24)
                      {
                        v25 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(this);
                        v26 = *(this + 5);
                        v27 = *(a2 + 16);
                        v28 = *(a5 + 8);
                        v29 = v27;
                        [v26 copyFromBuffer:v29 sourceOffset:8 * a3 toBuffer:v28 destinationOffset:a6 size:v20];
                      }
                    }

                    goto LABEL_42;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v18 = @"GPUCommandEncoder.resolveQuerySet validation failed";
      }

LABEL_41:
      WebGPU::CommandEncoder::makeInvalid(this, &v18->isa);
      goto LABEL_42;
    }
  }

  if (v17 != 2)
  {
    if (*(this + 6))
    {
      v18 = *(this + 6);
    }

    else
    {
      v18 = @"Encoder state is locked";
    }

    goto LABEL_41;
  }

  v30 = *(this + 24);
  while (1)
  {
    v31 = *v30;
    if ((*v30 & 1) == 0)
    {
      break;
    }

    v32 = *v30;
    atomic_compare_exchange_strong_explicit(v30, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v31)
    {
      goto LABEL_64;
    }
  }

  v43 = 0;
  v44 = *v30;
  v45 = 1;
  atomic_compare_exchange_strong_explicit(*v30, &v43, 1u, memory_order_acquire, memory_order_acquire);
  if (v43)
  {
    MEMORY[0x22AA683C0](v44);
  }

  ++*(v44 + 8);
  atomic_compare_exchange_strong_explicit(v44, &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 != 1)
  {
    WTF::Lock::unlockSlow(v44);
  }

LABEL_64:
  v46 = MEMORY[0x277CCACA8];
  v47 = WebGPU::CommandsMixin::encoderStateName(this);
  v48 = [v46 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::resolveQuerySet(const QuerySet &, uint32_t, uint32_t, Buffer &, uint64_t)", v47, v59];
  WebGPU::Device::generateAValidationError(v30, v48);

  do
  {
    v49 = *v30;
    if ((*v30 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v30, v23);
      goto LABEL_42;
    }

    v50 = *v30;
    atomic_compare_exchange_strong_explicit(v30, &v50, v49 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v50 != v49);
  if (v49 == 3)
  {
    WebGPU::Device::~Device(v30, v23);
    bmalloc::api::tzoneFree(v51, v52);
  }

  do
  {
LABEL_42:
    v33 = *a5;
    if ((*a5 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a5, v23);
      v37 = a2;
      if (!a2)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

    v34 = *a5;
    atomic_compare_exchange_strong_explicit(a5, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v34 != v33);
  if (v33 == 3)
  {
    WebGPU::Buffer::~Buffer(a5);
    bmalloc::api::tzoneFree(v35, v36);
  }

  v37 = a2;
  if (!a2)
  {
LABEL_47:
    result = this;
    if (!this)
    {
      return result;
    }

    goto LABEL_54;
  }

LABEL_50:
  if (*v37 == 1)
  {
    WebGPU::QuerySet::~QuerySet(v37, v23);
    bmalloc::api::tzoneFree(v39, v40);
    result = this;
    if (!this)
    {
      return result;
    }
  }

  else
  {
    --*v37;
    result = this;
    if (!this)
    {
      return result;
    }
  }

LABEL_54:
  if (*(result + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(result);

    return bmalloc::api::tzoneFree(v41, v42);
  }

  else
  {
    --*(result + 4);
  }

  return result;
}

void sub_22568E0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v10 = va_arg(va2, WebGPU::QuerySet *);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v6);
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(va1, v7);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va2);
  _Unwind_Resume(a1);
}

void wgpuCommandEncoderWriteTimestamp(WebGPU::CommandEncoder *this, uint64_t a2, unsigned int a3)
{
  ++*(this + 4);
  ++*a2;
  v5 = *this;
  if ((v5 - 3) < 0xFFFFFFFE)
  {
    v7 = *(this + 24);
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_14;
      }
    }

    v13 = 0;
    v14 = *v7;
    v15 = 1;
    atomic_compare_exchange_strong_explicit(*v7, &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      MEMORY[0x22AA683C0](v14);
    }

    ++*(v14 + 8);
    atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 == 1)
    {
LABEL_14:
      v16 = *(v7 + 252);
      if (v16)
      {
LABEL_15:
        v17 = *(v7 + 240);
        v18 = v16 - 1;
        do
        {
          v19 = *v17++;
          v20 = v19 == 3;
        }

        while (v19 != 3 && v18-- != 0);
        do
        {
LABEL_37:
          v33 = *v7;
          if ((*v7 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, a2);
            if (!v20)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          }

          v34 = *v7;
          atomic_compare_exchange_strong_explicit(v7, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v34 != v33);
        if (v33 == 3)
        {
          WebGPU::Device::~Device(v7, a2);
          bmalloc::api::tzoneFree(v35, v36);
        }

        if (!v20)
        {
          goto LABEL_56;
        }

LABEL_44:
        v37 = *(a2 + 36) == 1 && *(a2 + 32) > a3;
        if (!v37 || (*(a2 + 56) & 1) == 0 && !*(a2 + 16) && !*(a2 + 24) || (v38 = *(a2 + 8), !*(v38 + 8)) || v38 != *(this + 24))
        {
          v22 = @"GPUCommandEncoder.writeTimestamp validation failed";
          goto LABEL_55;
        }

        WebGPU::QuerySet::setCommandEncoder(a2, this);
        goto LABEL_56;
      }
    }

    else
    {
      WTF::Lock::unlockSlow(v14);
      v16 = *(v7 + 252);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    v20 = 0;
    goto LABEL_37;
  }

  if (v5 == 2)
  {
    v10 = *(this + 24);
    while (1)
    {
      v11 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
    v24 = *v10;
    v25 = 1;
    atomic_compare_exchange_strong_explicit(*v10, &v23, 1u, memory_order_acquire, memory_order_acquire);
    if (v23)
    {
      MEMORY[0x22AA683C0](v24);
    }

    ++*(v24 + 8);
    atomic_compare_exchange_strong_explicit(v24, &v25, 0, memory_order_release, memory_order_relaxed);
    if (v25 != 1)
    {
      WTF::Lock::unlockSlow(v24);
    }

LABEL_29:
    v26 = MEMORY[0x277CCACA8];
    v27 = WebGPU::CommandsMixin::encoderStateName(this);
    v28 = [v26 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::writeTimestamp(QuerySet &, uint32_t)", v27];
    WebGPU::Device::generateAValidationError(v10, v28);

    do
    {
      v29 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, a2);
        goto LABEL_56;
      }

      v30 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v30, v29 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v30 != v29);
    if (v29 == 3)
    {
      WebGPU::Device::~Device(v10, a2);
      bmalloc::api::tzoneFree(v31, v32);
    }
  }

  else
  {
    if (*(this + 6))
    {
      v22 = *(this + 6);
    }

    else
    {
      v22 = @"Encoder state is locked";
    }

LABEL_55:
    WebGPU::CommandEncoder::makeInvalid(this, &v22->isa);
  }

LABEL_56:
  if (*a2 == 1)
  {
    WebGPU::QuerySet::~QuerySet(a2, a2);
    bmalloc::api::tzoneFree(v40, v41);
    v39 = *(this + 4) - 1;
    if (*(this + 4) != 1)
    {
      goto LABEL_58;
    }
  }

  else
  {
    --*a2;
    v39 = *(this + 4) - 1;
    if (*(this + 4) != 1)
    {
LABEL_58:
      *(this + 4) = v39;
      return;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(this);

  bmalloc::api::tzoneFree(v42, v43);
}

void sub_22568E474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, WebGPU::QuerySet *);
  va_copy(va2, va1);
  v11 = va_arg(va2, WebGPU::CommandEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v7);
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(va, v8);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_22568E4B0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, WebGPU::QuerySet *);
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuCommandEncoderSetLabel(uint64_t a1, char *__s)
{
  ++*(a1 + 16);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_2838D6D18;
  }

  [*(a1 + 24) setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*(a1 + 16) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*(a1 + 16);
  }

  return result;
}

void sub_22568E5D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::CommandEncoder *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

uint64_t WTF::String::fromUTF8(WTF::String *this, const char *a2)
{
  if (this)
  {
    strlen(this);
  }

  return WTF::String::fromUTF8();
}

_DWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    result = WTF::fastMalloc((16 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = WTF::fastMalloc((16 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 < 4)
  {
    v10 = 0;
LABEL_10:
    v13 = a2 - v10;
    v14 = &result[4 * v10 + 6];
    do
    {
      *(v14 - 1) = -1;
      *v14 = 0;
      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  v10 = a2 & 0xFFFFFFFC;
  v11 = result + 12;
  v12 = v10;
  do
  {
    *(v11 - 2) = xmmword_225881D00;
    *(v11 - 1) = xmmword_225881D00;
    *v11 = xmmword_225881D00;
    v11[1] = xmmword_225881D00;
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v10 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v9;
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v16 = (v4 + 16 * i);
      if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = *a1;
        if (*a1)
        {
          v18 = *(v17 - 8);
        }

        else
        {
          v18 = 0;
        }

        v19 = (*v16 + ~(*v16 << 32)) ^ ((*v16 + ~(*v16 << 32)) >> 22);
        v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
        v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
        v22 = v18 & ((v21 >> 31) ^ v21);
        v23 = 1;
        do
        {
          v24 = v22;
          v25 = *(v17 + 16 * v22);
          v22 = (v22 + v23++) & v18;
        }

        while (v25 != -1);
        *(v17 + 16 * v24) = *v16;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::createSimplePso(NSMutableDictionary<NSNumber *,TextureAndClearColor *> *,objc_object  {objcproto10MTLTexture}*,BOOL,BOOL,objc_object  {objcproto9MTLDevice}*)::$_0 &&>>(void *****a1)
{
  v1 = **a1;
  v2 = objc_opt_new();
  [v2 setFastMathEnabled:1];
  v3 = v1[1];
  v4 = **v1;
  if (v3)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v3)
  {
    obj = *v3;
  }

  v6 = [v4 newLibraryWithSource:@"[[vertex]] float4 vsNop() { return (float4)0; }" options:v2 error:p_obj];
  if (v3)
  {
    objc_storeStrong(v3, obj);
  }

  if (*v1[1])
  {
    v9 = *v1[1];
    WTFLogAlways();
  }

  v7 = [v6 newFunctionWithName:{@"vsNop", v9}];
  v8 = _MergedGlobals;
  _MergedGlobals = v7;
}

void *WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = (v2 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          if (*v5)
          {
            WTF::fastFree((*v5 - 16), a2);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::CommandBuffer,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebGPU::CommandBuffer::~CommandBuffer(result);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v6, a2);
}

_DWORD *WTF::RefCounted<WebGPU::BindGroup>::deref(_DWORD *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*result == 1)
  {
    WebGPU::BindGroup::~BindGroup((result - 2), a2, a3);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::CommandEncoder::CommandEncoder(objc_object  {objcproto16MTLCommandBuffer}*,WebGPU::Device &,unsigned long long)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder&>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 144);
  if (!v5)
  {
    v7 = 0;
    LODWORD(v6) = 0;
LABEL_10:
    v9 = v7;
    v7 = v5 + 24 * v6;
    if (!v5)
    {
      v11 = 0;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v6 = *(v5 - 4);
  v7 = v5 + 24 * v6;
  if (!*(v5 - 12))
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    v10 = 0;
    v9 = *(a3 + 144);
    goto LABEL_13;
  }

  v8 = 24 * v6;
  v9 = *(a3 + 144);
  while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v9 += 24;
    v8 -= 24;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

LABEL_8:
  v10 = *(v5 - 4);
LABEL_13:
  v11 = v5 + 24 * v10;
LABEL_14:
  while (v9 != v11)
  {
    v12 = WebGPU::Device::lookupBuffer(*(*(a2 + 32) + 488), *v9);
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        v14 = *v12;
        if ((*v12 & 1) == 0)
        {
          break;
        }

        v15 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_24;
        }
      }

      v16 = 0;
      v17 = *v12;
      atomic_compare_exchange_strong_explicit(*v12, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        MEMORY[0x22AA683C0](v17);
      }

      ++*(v17 + 8);
      v18 = 1;
      atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
      if (v18 != 1)
      {
        WTF::Lock::unlockSlow(v17);
      }

LABEL_24:
      v19 = v3;
      v48 = *(v3 + 200);
      WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v13 + 39, &v48);
      if ((v13[40] & 1) == 0)
      {
        goto LABEL_41;
      }

      v21 = *(v9 + 20);
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = *(v9 + 8);
      v23 = &v22[10 * v21];
      do
      {
        WebGPU::Buffer::takeSlowIndexValidationPath(v13, a2, *v22, v22[1], v22[2], v22[3], (v22[7] & 2), v22[4], v22[5], v22[6], v22[7] & 1);
        v48 = *v9;
        v24 = *(a2 + 32);
        while (1)
        {
          v25 = *v24;
          if ((*v24 & 1) == 0)
          {
            break;
          }

          v26 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v26 == v25)
          {
            goto LABEL_36;
          }
        }

        v27 = 0;
        v28 = *v24;
        atomic_compare_exchange_strong_explicit(*v24, &v27, 1u, memory_order_acquire, memory_order_acquire);
        if (v27)
        {
          MEMORY[0x22AA683C0](v28);
        }

        ++*(v28 + 8);
        v29 = 1;
        atomic_compare_exchange_strong_explicit(v28, &v29, 0, memory_order_release, memory_order_relaxed);
        if (v29 != 1)
        {
          WTF::Lock::unlockSlow(v28);
        }

LABEL_36:
        v49 = v24;
        v30 = WTF::fastMalloc(0x18);
        *v30 = &unk_2838D2C70;
        v30[1] = v48;
        v30[2] = v24;
        v49 = 0;
        v50 = v30;
        v31 = *(a2 + 84);
        if (v31 == *(a2 + 80))
        {
          v32 = WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2 + 72, v31 + 1, &v50);
          v31 = *(a2 + 84);
          v33 = (*(a2 + 72) + 8 * v31);
          v30 = *v32;
        }

        else
        {
          v33 = (*(a2 + 72) + 8 * v31);
          v32 = &v50;
        }

        *v32 = 0;
        *v33 = v30;
        *(a2 + 84) = v31 + 1;
        v34 = v50;
        v50 = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        v22 += 10;
      }

      while (v22 != v23);
      do
      {
LABEL_41:
        v35 = *v13;
        if ((*v13 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v13, v20);
          v3 = v19;
          goto LABEL_46;
        }

        v36 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v36, v35 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v36 != v35);
      v3 = v19;
      if (v35 == 3)
      {
        WebGPU::Buffer::~Buffer(v13);
        bmalloc::api::tzoneFree(v37, v38);
      }
    }

    do
    {
LABEL_46:
      v9 += 24;
    }

    while (v9 != v7 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
  }

  v39 = *(v3 + 164);
  if (v39)
  {
    v40 = *(v3 + 152);
    v41 = 8 * v39;
    do
    {
      v44 = *v40;
      if (*v40)
      {
        ++*(v44 + 2);
      }

      WebGPU::BindGroup::rebindSamplersIfNeeded(v44);
      if (v44)
      {
        if (*(v44 + 2) == 1)
        {
          WebGPU::BindGroup::~BindGroup(v44, v45, v46);
          bmalloc::api::tzoneFree(v42, v43);
        }

        else
        {
          --*(v44 + 2);
        }
      }

      ++v40;
      v41 -= 8;
    }

    while (v41);
  }

  return 1;
}

uint64_t WebGPU::Device::lookupBuffer(uint64_t this, uint64_t a2)
{
  if (this)
  {
    if (a2 == -2 || a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x22568EFD0);
    }

    v2 = *(this - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(this + 16 * v6);
    if (v7 != a2)
    {
      v8 = 1;
      while (v7 != -1)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(this + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (v6 == *(this - 4))
    {
      return 0;
    }

    return *(this + 16 * v6 + 8);
  }

  return this;
}

uint64_t WebGPU::CommandEncoder::CommandEncoder(objc_object  {objcproto16MTLCommandBuffer}*,WebGPU::Device &,unsigned long long)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder&)::{lambda(objc_object  {objcproto16MTLCommandBuffer})#1}::~CommandBuffer(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
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

void *WTF::Detail::CallableWrapper<WebGPU::CommandEncoder::CommandEncoder(objc_object  {objcproto16MTLCommandBuffer}*,WebGPU::Device &,unsigned long long)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder&)::{lambda(objc_object  {objcproto16MTLCommandBuffer})#1},void,objc_object  {objcproto16MTLCommandBuffer} {__strong}>::~CallableWrapper(void *result, WTF::StringImpl *a2)
{
  *result = &unk_2838D2C70;
  v2 = result[2];
  result[2] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebGPU::CommandEncoder::CommandEncoder(objc_object  {objcproto16MTLCommandBuffer}*,WebGPU::Device &,unsigned long long)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder&)::{lambda(objc_object  {objcproto16MTLCommandBuffer})#1},void,objc_object  {objcproto16MTLCommandBuffer} {__strong}>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D2C70;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        if (v3 == 3)
        {
          v5 = a1;
          WebGPU::Device::~Device(v2, a2);
          bmalloc::api::tzoneFree(v6, v7);
          a1 = v5;
        }

        goto LABEL_6;
      }
    }

    v9 = *v2;
    v10 = a1;
    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v9, a2);
    a1 = v10;
  }

  else
  {
LABEL_6:
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebGPU::CommandEncoder::CommandEncoder(objc_object  {objcproto16MTLCommandBuffer}*,WebGPU::Device &,unsigned long long)::$_0::operator() const(WebGPU::CommandBuffer &,WebGPU::CommandEncoder&)::{lambda(objc_object  {objcproto16MTLCommandBuffer})#1},void,objc_object  {objcproto16MTLCommandBuffer} {__strong}>::call(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = WebGPU::Device::lookupBuffer(*(*(a1 + 16) + 488), *(a1 + 8));
  v5 = v3;
  if (v3)
  {
    while (1)
    {
      v6 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v7 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    v9 = *v3;
    v10 = 1;
    atomic_compare_exchange_strong_explicit(*v3, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x22AA683C0](v9);
    }

    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != 1)
    {
      WTF::Lock::unlockSlow(v9);
    }

LABEL_9:
    *(v5 + 320) = 0;
    do
    {
      v11 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v5, v4);
        goto LABEL_15;
      }

      v12 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v12 != v11);
    if (v11 == 3)
    {
      WebGPU::Buffer::~Buffer(v5);
      bmalloc::api::tzoneFree(v13, v14);
    }
  }

LABEL_15:
}

char *WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(char *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -2 || v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22568F4D0);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v7 = *a2;
    v3 = *a3;
  }

  v8 = *(v7 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13 == -1)
  {
LABEL_13:
    v17 = *(v7 - 16);
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v22 = v7 + 8 * *(v7 - 4);
        *v6 = v13;
        *(v6 + 1) = v22;
        v6[16] = 0;
        return result;
      }

      if (v14 == -2)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13 != -1);
    if (!v15)
    {
      goto LABEL_13;
    }

    *v15 = -1;
    v17 = *(v7 - 16) - 1;
    *(v7 - 16) = v17;
    v3 = *a3;
  }

  *v15 = v3;
  v18 = *(v7 - 12) + 1;
  *(v7 - 12) = v18;
  v19 = (v18 + v17);
  v20 = *(v7 - 4);
  if (v20 <= 0x400)
  {
    if (3 * v20 > 4 * v19)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v20)
    {
      v21 = v20 << (6 * v18 >= (2 * v20));
    }

    else
    {
      v21 = 8;
    }

    result = WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, v21, v15);
    v15 = result;
    v7 = *a2;
    if (*a2)
    {
      v20 = *(v7 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_25;
  }

  if (v20 <= 2 * v19)
  {
    goto LABEL_18;
  }

LABEL_25:
  *v6 = v15;
  *(v6 + 1) = v7 + 8 * v20;
  v6[16] = 1;
  return result;
}

uint64_t *WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  *result = 0;
  if (!a3)
  {
    return v3;
  }

  if (a3 <= 1)
  {
    v6 = a3 & 1;
    v7 = 1;
    goto LABEL_6;
  }

  v8 = __clz(a3 - 1);
  if (v8)
  {
    v7 = (1 << -v8);
    v6 = a3;
    if (a3 > 0x400)
    {
      if (v7 > 2 * a3)
      {
LABEL_8:
        v9 = a3;
        v10 = v7;
        if (v7 > 0x400)
        {
          if (v10 * 0.416666667 > v9)
          {
LABEL_13:
            if (v7 <= 8)
            {
              v11 = 8;
            }

            else
            {
              v11 = v7;
            }

            v12 = WTF::fastMalloc((8 * v11 + 16));
            memset((v12 + 16), 255, 8 * v11);
            *v3 = v12 + 16;
            *(v12 + 8) = v11 - 1;
            *(v12 + 12) = v11;
            v13 = 8 * a3;
            *v12 = 0;
            do
            {
              WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v14, v3, a2++);
              v13 -= 8;
            }

            while (v13);
            return v3;
          }
        }

        else if (v10 * 0.604166667 > v9)
        {
          goto LABEL_13;
        }

        LODWORD(v7) = 2 * v7;
        goto LABEL_13;
      }

LABEL_7:
      LODWORD(v7) = 2 * v7;
      goto LABEL_8;
    }

LABEL_6:
    if (3 * v7 > 4 * v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_22568F644(_Unwind_Exception *exception_object, void *a2)
{
  if (*v2)
  {
    WTF::fastFree((*v2 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void * const&,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22568F8A8);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    v8 = a3;
    v9 = a4;
    result = WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v8;
    a4 = v9;
    v7 = *a2;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v7 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v4;
    v19 = *a4;
    *a4 = 0;
    v20 = v15[1];
    v15[1] = v19;
    if (v20)
    {
      result = WTF::fastFree((v20 - 16), a2);
    }

    v21 = *a2;
    if (*a2)
    {
      v22 = *(v21 - 16);
      v23 = *(v21 - 12) + 1;
      *(v21 - 12) = v23;
      v24 = (v22 + v23);
      v25 = *(v21 - 4);
      if (v25 <= 0x400)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_17:
        if (3 * v25 > 4 * v24)
        {
LABEL_29:
          *v6 = v15;
          v6[1] = v21 + 16 * v25;
          *(v6 + 16) = 1;
          return result;
        }

        if (!v25)
        {
          result = WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(a2, 8u, v15);
          v15 = result;
          v21 = *a2;
          if (!*a2)
          {
LABEL_20:
            v25 = 0;
            goto LABEL_29;
          }

LABEL_28:
          v25 = *(v21 - 4);
          goto LABEL_29;
        }

LABEL_27:
        result = WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(a2, v25 << (6 * v23 >= (2 * v25)), v15);
        v15 = result;
        v21 = *a2;
        if (!*a2)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    if (v25 > 2 * v24)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v4)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v7 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a2 - 16);
        v4 = *a3;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v26 = v7 + 16 * *(v7 - 4);
  *v6 = v15;
  v6[1] = v26;
  *(v6 + 16) = 0;
  v27 = *a4;
  *a4 = 0;
  v28 = v15[1];
  v15[1] = v27;
  if (v28)
  {

    return WTF::fastFree((v28 - 16), a2);
  }

  return result;
}

void *WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = 16 * a2;
    v11 = WTF::fastMalloc((v9 + 16));
    v12 = v11 + 4;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = 0;
  v9 = 16 * a2;
  v11 = WTF::fastMalloc((v9 + 16));
  v12 = v11 + 4;
  if (a2)
  {
LABEL_3:
    bzero(v12, v9);
  }

LABEL_4:
  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    v15 = v7;
    do
    {
      v16 = (v6 + 16 * v13);
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (~(v17 << 32) + v17) ^ ((~(v17 << 32) + v17) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          if (v29)
          {
            WTF::fastFree((v29 - 16), v10);
            v17 = *v16;
          }

          *v28 = v17;
          v28[1] = 0;
          v30 = v16[1];
          v16[1] = 0;
          v28[1] = v30;
          v31 = v16[1];
          if (v31)
          {
            WTF::fastFree((v31 - 16), v10);
          }

          if (v16 == a3)
          {
            v14 = v28;
          }
        }

        else
        {
          v18 = v16[1];
          if (v18)
          {
            WTF::fastFree((v18 - 16), v10);
          }
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22568FC94);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    v8 = a2;
    result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v8;
    v7 = *v5;
    v4 = *v8;
  }

  v9 = *(v7 - 8);
  v10 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v7 + 8 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v18 = v7 + 8 * *(v7 - 4);
        *a4 = v14;
        *(a4 + 8) = v18;
        *(a4 + 16) = 0;
        return result;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v9;
      v14 = (v7 + 8 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (v16)
    {
      *v16 = 0;
      v7 = *v5;
      --*(*v5 - 16);
      v4 = *a2;
      v14 = v16;
    }
  }

  *a2 = 0;
  result = *v14;
  *v14 = v4;
  if (result)
  {
    if (*result == 1)
    {
      WebGPU::Sampler::~Sampler(result, a2, a3);
      result = bmalloc::api::tzoneFree(v19, v20);
      v7 = *v5;
    }

    else
    {
      --*result;
    }
  }

  v21 = *(v7 - 16);
  v22 = *(v7 - 12) + 1;
  *(v7 - 12) = v22;
  v23 = (v21 + v22);
  v24 = *(v7 - 4);
  if (v24 > 0x400)
  {
    if (v24 > 2 * v23)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (3 * v24 <= 4 * v23)
  {
    if (!v24)
    {
      result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::rehash(v5, 8u, v14);
      v14 = result;
      v7 = *v5;
      if (!*v5)
      {
LABEL_22:
        v24 = 0;
        goto LABEL_26;
      }

LABEL_25:
      v24 = *(v7 - 4);
      goto LABEL_26;
    }

LABEL_24:
    result = WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::rehash(v5, v24 << (6 * v22 >= (2 * v24)), v14);
    v14 = result;
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_26:
  *a4 = v14;
  *(a4 + 8) = v7 + 8 * v24;
  *(a4 + 16) = 1;
  return result;
}

void *WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WebGPU::Sampler **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v6 + 8 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 8 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 8 * v23);
          *v14 = 0;
          *v25 = v15;
          v26 = *v14;
          *v14 = 0;
          if (v26)
          {
            if (*v26 == 1)
            {
              WebGPU::Sampler::~Sampler(v26, v10, v11);
              bmalloc::api::tzoneFree(v27, v28);
            }

            else
            {
              --*v26;
            }
          }

          if (v14 == a3)
          {
            v13 = v25;
          }
        }

        else
        {
          *v14 = 0;
        }
      }

      ++v12;
    }

    while (v12 != v7);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v13;
}

char *WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 8 * v6 <= a3)
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

    if (!(v9 >> 29))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((8 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = v11;
        v14 = 8 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          *v15 = 0;
          *v13 = v16;
          v17 = *v15;
          *v15 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          ++v13;
          v15 = (v15 + 8);
          v14 -= 8;
        }

        while (v14);
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

      return v3;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x225690024);
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

  if (v19 >> 29)
  {
    goto LABEL_42;
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

  v23 = WTF::fastMalloc((8 * v21));
  v24 = 0;
  *(a1 + 8) = v21;
  *a1 = v23;
  v25 = 8 * v6;
  do
  {
    v26 = *(v5 + v24);
    *(v5 + v24) = 0;
    *(v23 + v24) = v26;
    v27 = *(v5 + v24);
    *(v5 + v24) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v24 += 8;
  }

  while (v25 != v24);
  v28 = *a1;
  if (v5)
  {
    if (v28 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v22);
    v28 = *a1;
  }

  return v28 + v20;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v11 = a2;
  v12 = v8 + 6;
  do
  {
    *v12 = 0;
    v12[1] = 0;
    *(v12 - 1) = -1;
    v12 += 3;
    --v11;
  }

  while (v11);
LABEL_7:
  *a1 = v10;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v5 + 24 * v13);
      v16 = *v15;
      if (*v15 != -2)
      {
        if (v16 == -1)
        {
          v17 = v15[1];
          if (v17)
          {
            v15[1] = 0;
            *(v15 + 4) = 0;
            WTF::fastFree(v17, v9);
          }
        }

        else
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v18 + 24 * v23;
            v23 = (v23 + v24++) & v19;
          }

          while (*v25 != -1);
          v26 = *(v25 + 8);
          if (v26)
          {
            *(v25 + 8) = 0;
            *(v25 + 16) = 0;
            WTF::fastFree(v26, v9);
            v16 = *v15;
          }

          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          v27 = v15[1];
          v15[1] = 0;
          *v25 = v16;
          *(v25 + 8) = v27;
          v28 = *(v15 + 4);
          *(v15 + 4) = 0;
          *(v25 + 16) = v28;
          v29 = *(v15 + 5);
          *(v15 + 5) = 0;
          *(v25 + 20) = v29;
          v30 = v15[1];
          if (v30)
          {
            v15[1] = 0;
            *(v15 + 4) = 0;
            WTF::fastFree(v30, v9);
          }

          if (v15 == a3)
          {
            v14 = v25;
          }
        }
      }

      ++v13;
    }

    while (v13 != v6);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

WTF *WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, WTF *this)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > this || *a1 + 40 * v6 <= this)
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

    if (v9 < 0x6666667)
    {
      v10 = 16;
      if (v9 > 0x10)
      {
        v10 = v9;
      }

      v11 = 40 * v10;
      v12 = WTF::fastMalloc((40 * v10));
      *(a1 + 8) = v11 / 0x28;
      *a1 = v12;
      if (v6)
      {
        v14 = 40 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          v17 = *(v15 + 1);
          *(v12 + 32) = *(v15 + 4);
          *v12 = v16;
          *(v12 + 16) = v17;
          v12 += 40;
          v15 = (v15 + 40);
          v14 -= 40;
        }

        while (v14);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v13);
      }

      return this;
    }

LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x225690418);
  }

  v19 = *(a1 + 8);
  if (v19 + (v19 >> 1) <= v19 + 1)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = v19 + (v19 >> 1);
  }

  if (v20 <= a2)
  {
    v20 = a2;
  }

  if (v20 >= 0x6666667)
  {
    goto LABEL_36;
  }

  v21 = (this - v5);
  v22 = 16;
  if (v20 > 0x10)
  {
    v22 = v20;
  }

  v23 = 40 * v22;
  v24 = WTF::fastMalloc((40 * v22));
  v26 = 0;
  *(a1 + 8) = v23 / 0x28;
  *a1 = v24;
  do
  {
    v27 = v24 + v26;
    v28 = *(v5 + v26);
    v29 = *(v5 + v26 + 16);
    *(v27 + 32) = *(v5 + v26 + 32);
    *v27 = v28;
    *(v27 + 16) = v29;
    v26 += 40;
  }

  while (40 * v6 != v26);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v25);
  }

  return &v21[*a1];
}

__CFString *WebGPU::CommandsMixin::encoderStateName(WebGPU::CommandsMixin *this)
{
  v1 = *this;
  v2 = @"Open";
  if (v1 == 1)
  {
    v2 = @"Locked";
  }

  if (v1 == 2)
  {
    return @"Ended";
  }

  else
  {
    return v2;
  }
}

uint64_t WebGPU::ComputePassEncoder::ComputePassEncoder(uint64_t a1, void *a2, uint64_t a3, WebGPU::CommandEncoder *a4, uint64_t a5)
{
  v8 = a2;
  *a1 = 1;
  *(a1 + 4) = 0;
  v9 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  while (1)
  {
    v10 = *a5;
    if ((*a5 & 1) == 0)
    {
      break;
    }

    v11 = *a5;
    atomic_compare_exchange_strong_explicit(a5, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  v13 = *a5;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(*a5, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x22AA683C0](v13);
  }

  ++*(v13 + 8);
  atomic_compare_exchange_strong_explicit(v13, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    WTF::Lock::unlockSlow(v13);
  }

LABEL_9:
  *(a1 + 24) = a5;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v15 = *(a4 + 4);
  *(a1 + 96) = a4;
  *(a1 + 104) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a4 + 4) = v15 + 2;
  if (*a4 != 2)
  {
    *a4 = 1;
  }

  v16 = __CFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a4);
    bmalloc::api::tzoneFree(v18, v19);
    a5 = *(a1 + 24);
  }

  else
  {
    *(a4 + 4) = v17;
  }

  if (*(a5 + 96) >= 0x21u)
  {
    result = 61;
    __break(0xC471u);
  }

  else
  {

    return a1;
  }

  return result;
}

void sub_2256905B4(_Unwind_Exception *a1)
{
  if (*v1 == 1)
  {

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void *WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = result;
    v5 = *(v3 - 4);
    if (v5)
    {
      v6 = (v3 + 8);
      do
      {
        if (*(v6 - 2) != -2)
        {
          v9 = *v6;
          *v6 = 0;
          if (v9)
          {
            if (*(v9 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v9, a2, a3);
              bmalloc::api::tzoneFree(v7, v8);
            }

            else
            {
              --*(v9 + 2);
            }
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v3 - 16), a2);
    return v4;
  }

  return result;
}

void *WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = v2 + 8;
      do
      {
        if (*(v5 - 8) != -2)
        {
          v6 = *v5;
          if (*v5)
          {
            *v5 = 0;
            *(v5 + 8) = 0;
            WTF::fastFree(v6, a2);
          }
        }

        v5 += 24;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

uint64_t WebGPU::ComputePassEncoder::ComputePassEncoder(WebGPU::ComputePassEncoder *this, WebGPU::CommandEncoder *a2, atomic_ullong *a3, NSString *a4)
{
  v8 = a4;
  *this = 1;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  while (1)
  {
    v9 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v10 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v12 = *a3;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x22AA683C0](v12);
  }

  ++*(v12 + 8);
  atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    WTF::Lock::unlockSlow(v12);
  }

LABEL_9:
  *(this + 3) = a3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  ++*(a2 + 4);
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v14 = v8;
  *(this + 32) = v14;
  *(this + 264) = 0;
  v15 = *(this + 12);
  v16 = *(v15 + 16);
  *(v15 + 16) = v16 + 1;
  if (*v15 != 2)
  {
    *v15 = 1;
  }

  if (v16)
  {
    *(v15 + 16) = v16;
  }

  else
  {
    WebGPU::CommandEncoder::~CommandEncoder(v15);
    bmalloc::api::tzoneFree(v17, v18);
    v15 = *(this + 12);
  }

  objc_storeStrong((v15 + 48), a4);
  if (*(*(this + 3) + 96) >= 0x21u)
  {
    result = 71;
    __break(0xC471u);
  }

  else
  {

    return this;
  }

  return result;
}

void sub_22569087C(_Unwind_Exception *a1)
{
  if (*v1 == 1)
  {

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::ComputePassEncoder::~ComputePassEncoder(WebGPU::ComputePassEncoder *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 12);
    ++*(v3 + 4);
    WebGPU::CommandEncoder::makeInvalid(v3, &cfstr_Gpucomputepass.isa);
    if (*(v3 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v3);
      bmalloc::api::tzoneFree(v4, v5);
    }

    else
    {
      --*(v3 + 4);
    }

    v2 = *(this + 1);
  }

  *(this + 1) = 0;

  v8 = *(this + 15);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = (v8 + 8);
      do
      {
        if (*(v10 - 2) != -2)
        {
          v13 = *v10;
          *v10 = 0;
          if (v13)
          {
            if (*(v13 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v13, v6, v7);
              bmalloc::api::tzoneFree(v11, v12);
            }

            else
            {
              --*(v13 + 2);
            }
          }
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((v8 - 16), v6);
  }

  v14 = *(this + 14);
  if (v14)
  {
    v15 = *(v14 - 4);
    if (v15)
    {
      v16 = v14 + 8;
      do
      {
        if (*(v16 - 8) != -2)
        {
          v17 = *v16;
          if (*v16)
          {
            *v16 = 0;
            *(v16 + 8) = 0;
            WTF::fastFree(v17, v6);
          }
        }

        v16 += 24;
        --v15;
      }

      while (v15);
    }

    WTF::fastFree((v14 - 16), v6);
  }

  v18 = *(this + 13);
  if (v18)
  {
    v19 = *(v18 - 4);
    if (v19)
    {
      v20 = v18 + 8;
      do
      {
        if (*(v20 - 8) != -2)
        {
          v21 = *v20;
          if (*v20)
          {
            *v20 = 0;
            *(v20 + 8) = 0;
            WTF::fastFree(v21, v6);
          }
        }

        v20 += 24;
        --v19;
      }

      while (v19);
    }

    WTF::fastFree((v18 - 16), v6);
  }

  v22 = *(this + 12);
  *(this + 12) = 0;
  if (v22)
  {
    if (*(v22 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v22);
      bmalloc::api::tzoneFree(v33, v34);
      v23 = *(this + 11);
      *(this + 11) = 0;
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    --*(v22 + 4);
  }

  v23 = *(this + 11);
  *(this + 11) = 0;
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (*(v23 + 2) == 1)
  {
    WebGPU::ComputePipeline::~ComputePipeline(v23, v6);
    bmalloc::api::tzoneFree(v24, v25);
  }

  else
  {
    --*(v23 + 2);
  }

LABEL_39:
  v26 = *(this + 9);
  if (v26)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v26, v6);
  }

  v27 = *(this + 7);
  if (v27)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v27, v6);
  }

  v28 = *(this + 3);
  *(this + 3) = 0;
  if (v28)
  {
    do
    {
      v29 = *v28;
      if ((*v28 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v28, v6);
        goto LABEL_49;
      }

      v30 = *v28;
      atomic_compare_exchange_strong_explicit(v28, &v30, v29 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v30 != v29);
    if (v29 == 3)
    {
      WebGPU::Device::~Device(v28, v6);
      bmalloc::api::tzoneFree(v31, v32);
    }
  }

LABEL_49:

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void sub_225690B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);

  WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 120), v5, v6);
  WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 112), v7);
  WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 104), v8);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(v3);
  v10 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v10)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ComputePipeline>::deref(v10, v9);
  }

  v11 = *(v2 + 72);
  if (v11)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    WTF::fastFree(v11, v9);
  }

  v12 = *(v2 + 56);
  if (v12)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v12, v9);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v2 + 24), v9);

  if (*v2 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::ComputePassEncoder::executePreDispatchCommands(WebGPU::ComputePassEncoder *this, const WebGPU::Buffer *a2, const WTF::StringImpl *a3)
{
  v3 = this;
  v4 = *(this + 11);
  if (!v4)
  {
LABEL_265:

    WebGPU::ComputePassEncoder::makeInvalid(v3, &cfstr_PipelineIsNotS.isa);
    return;
  }

  ++*(v4 + 8);
  v6 = *(v4 + 56);
  ++*(v6 + 2);
  v169[0] = v6;
  v7 = WebGPU::PipelineLayout::errorValidatingBindGroupCompatibility(v6, (this + 120), a3);
  v9 = v7;
  if (*(v6 + 2) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(v6, v8);
    bmalloc::api::tzoneFree(v11, v12);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    --*(v6 + 2);
    if (v7)
    {
LABEL_4:
      WebGPU::ComputePassEncoder::makeInvalid(v3, v9);

      goto LABEL_256;
    }
  }

  if (*(*(v3 + 12) + 172))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v3 + 1);
  }

  v14 = v13;
  v15 = *(v4 + 16);
  [v14 setComputePipelineState:v15];

  v165 = 0;
  v166 = 0;
  if (a2)
  {
    v168 = a2;
    LODWORD(v164) = 1;
    WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void const* const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(&v166, &v168, &v164, v169);
  }

  v16 = *(v4 + 56);
  ++*(v16 + 8);
  v164 = v16;
  if (*(v16 + 32) == 1)
  {
    v156 = *(v16 + 28);
    v160 = *(v4 + 72);
    v162 = v3;
    v17 = *(v3 + 15);
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_22:
    v3 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v156 = 0;
  v160 = *(v4 + 72);
  v162 = v3;
  v17 = *(v3 + 15);
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_13:
  v18 = *(v17 - 1);
  v3 = (v17 + 16 * v18);
  if (*(v17 - 3))
  {
    if (!v18)
    {
      v155 = v4;
      goto LABEL_74;
    }

    v19 = 16 * v18;
    v20 = v17;
    while (*v20 >= 0xFFFFFFFE)
    {
      v20 = (v20 + 16);
      v19 -= 16;
      if (!v19)
      {
        v20 = v3;
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

LABEL_23:
  v20 = v3;
  v3 = (v17 + 16 * v18);
  if (!v17)
  {
    v21 = 0;
    v155 = v4;
    if (!v20)
    {
LABEL_74:
      v60 = v162;
      v61 = *(v162 + 14);
      if (v61)
      {
        v62 = *(v61 - 4);
        v63 = (v61 + 24 * v62);
        if (*(v61 - 12))
        {
          if (!v62)
          {
            goto LABEL_86;
          }

          v64 = 24 * v62;
          v65 = *(v162 + 14);
          do
          {
            if (*v65 < 0xFFFFFFFE)
            {
              goto LABEL_84;
            }

            v65 += 6;
            v64 -= 24;
          }

          while (v64);
          v65 = v63;
LABEL_84:
          if (v61)
          {
            v66 = (v61 + 24 * *(v61 - 4));
            if (v65 == v66)
            {
              goto LABEL_86;
            }

            goto LABEL_92;
          }

          v66 = 0;
          if (v65)
          {
LABEL_92:
            v153 = v63;
            v154 = v66;
            while (1)
            {
              v69 = *v65;
              if (v156 <= v69)
              {
                goto LABEL_183;
              }

              v70 = WebGPU::PipelineLayout::bindGroupLayout(v164, *v65);
              v71 = v70;
              ++*(v70 + 8);
              v163 = v70;
              v72 = v65[5];
              if (!v72)
              {
                v113 = 1;
                v114 = *(v70 + 8) - 1;
                if (*(v70 + 8) != 1)
                {
                  goto LABEL_177;
                }

LABEL_182:
                WebGPU::BindGroupLayout::~BindGroupLayout(v71, v10);
                bmalloc::api::tzoneFree(v115, v116);
                v66 = v154;
                if (!v113)
                {
                  goto LABEL_243;
                }

                goto LABEL_183;
              }

              v159 = v69;
              v73 = *(v65 + 1);
              v157 = &v73[v72];
              while (1)
              {
                v158 = v73;
                v74 = *v73;
                v75 = *(*v73 + 12);
                if (v75)
                {
                  break;
                }

LABEL_97:
                v73 = v158 + 1;
                if (v158 + 1 == v157)
                {
                  v113 = 1;
                  v4 = v155;
                  v60 = v162;
                  v63 = v153;
                  v114 = *(v71 + 2) - 1;
                  if (*(v71 + 2) == 1)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_177;
                }
              }

              v76 = 0;
              v161 = *(*v73 + 12);
              while (1)
              {
                if (v76 >= *(v74 + 28))
                {
                  goto LABEL_274;
                }

                v79 = *(v74 + 16) + 40 * v76;
                v80 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v71, *(v79 + 4), 0);
                if ((v10 & 1) == 0)
                {
                  v80 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v71, *(v79 + 4), 1);
                  if ((v10 & 1) == 0)
                  {
                    v80 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v71, *(v79 + 4), 2);
                    if ((v10 & 1) == 0)
                    {
                      v80 = WebGPU::BindGroupLayout::bindingAccessForBindingIndex(v71, *(v79 + 4), 3);
                    }
                  }
                }

                if ((v10 & 1) == 0)
                {
                  goto LABEL_102;
                }

                v81 = *v79;
                v82 = *(v162 + 12);
                ++*(v82 + 4);
                v83 = *(v79 + 16);
                if (v83 == 255)
                {
                  v84 = -1;
                }

                else
                {
                  v84 = *(v79 + 16);
                }

                if (v84 == 2)
                {
                  if (v83 != 2)
                  {
                    goto LABEL_268;
                  }

                  v92 = *(v79 + 8);
                  v168 = v92;
                  v167 = v81;
                  if (v166)
                  {
                    if (v92 == -1)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225691B54);
                    }

                    if (!v92)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225691B74);
                    }

                    v93 = *(v166 - 8);
                    v94 = (~(v92 << 32) + v92) ^ ((~(v92 << 32) + v92) >> 22);
                    v95 = 9 * ((v94 + ~(v94 << 13)) ^ ((v94 + ~(v94 << 13)) >> 8));
                    v96 = (v95 ^ (v95 >> 15)) + ~((v95 ^ (v95 >> 15)) << 27);
                    v97 = v93 & ((v96 >> 31) ^ v96);
                    v98 = *(v166 + 16 * v97);
                    if (v98 == v92)
                    {
LABEL_126:
                      if (v97 != *(v166 - 4))
                      {
                        v81 |= *(v166 + 16 * v97 + 8);
                        v167 = v81;
                      }
                    }

                    else
                    {
                      v99 = 1;
                      while (v98)
                      {
                        v97 = (v97 + v99) & v93;
                        v98 = *(v166 + 16 * v97);
                        ++v99;
                        if (v98 == v92)
                        {
                          goto LABEL_126;
                        }
                      }
                    }
                  }

                  if ((v81 & 4) != 0)
                  {
                    if (v81 == 4)
                    {
                      goto LABEL_160;
                    }
                  }

                  else if (v81 == 128 || (v81 & 0x80) == 0)
                  {
                    if ((v81 & 0x200) != 0)
                    {
                      if (v81 == 512)
                      {
                        goto LABEL_160;
                      }
                    }

                    else if (v81 == 16 || (v81 & 0x10) == 0)
                    {
LABEL_160:
                      WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void const* const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(&v166, &v168, &v167, v169);
                      active = 1;
                      if (!v82)
                      {
                        goto LABEL_101;
                      }

                      goto LABEL_172;
                    }
                  }

                  goto LABEL_171;
                }

                if (v84 == 1)
                {
                  if (v83 != 1)
                  {
                    goto LABEL_268;
                  }

                  v85 = *(v79 + 8);
                  if (v85)
                  {
                    v86 = *(v85 + 64);
                    v87 = *(v85 + 96);
                    v88 = *(v87 + 16);
                    v89 = *(v85 + 48);
                    v90 = *(v85 + 56);
                    if (v86)
                    {
                      active = WebGPU::addTextureToActiveResources(v87, v88, v81, &v165, v159, v89, v90, v86);
                    }

                    else if (WebGPU::addTextureToActiveResources(v87, v88, v81, &v165, v159, v89, v90, 2u))
                    {
                      v108 = *(v85 + 96);
                      v109 = *(v108 + 16);
                      active = WebGPU::addTextureToActiveResources(v108, v109, v81, &v165, v159, *(v85 + 48), *(v85 + 56), 1u);
                    }

                    else
                    {
                      active = 0;
                    }
                  }

                  else
                  {
                    active = 1;
                  }
                }

                else
                {
                  if (*(v79 + 16))
                  {
LABEL_268:
                    mpark::throw_bad_variant_access(v80);
                  }

                  v100 = *(v79 + 8);
                  if (v100)
                  {
                    if ((v81 & 4) != 0)
                    {
                      WebGPU::Buffer::indirectBufferInvalidated(v100, v82);
                      v100 = *(v79 + 8);
                    }

                    v168 = v100;
                    v167 = v81;
                    if (v166)
                    {
                      if (v100 == -1)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225691B94);
                      }

                      if (!v100)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225691BB4);
                      }

                      v101 = *(v166 - 8);
                      v102 = (v100 + ~(v100 << 32)) ^ ((v100 + ~(v100 << 32)) >> 22);
                      v103 = 9 * ((v102 + ~(v102 << 13)) ^ ((v102 + ~(v102 << 13)) >> 8));
                      v104 = (v103 ^ (v103 >> 15)) + ~((v103 ^ (v103 >> 15)) << 27);
                      v105 = v101 & ((v104 >> 31) ^ v104);
                      v106 = *(v166 + 16 * v105);
                      if (v106 == v100)
                      {
LABEL_146:
                        if (v105 != *(v166 - 4))
                        {
                          v81 |= *(v166 + 16 * v105 + 8);
                          v167 = v81;
                        }
                      }

                      else
                      {
                        v107 = 1;
                        while (v106)
                        {
                          v105 = (v105 + v107) & v101;
                          v106 = *(v166 + 16 * v105);
                          ++v107;
                          if (v106 == v100)
                          {
                            goto LABEL_146;
                          }
                        }
                      }
                    }

                    if ((v81 & 4) != 0)
                    {
                      if (v81 == 4)
                      {
                        goto LABEL_160;
                      }
                    }

                    else if (v81 == 128 || (v81 & 0x80) == 0)
                    {
                      if ((v81 & 0x200) != 0)
                      {
                        if (v81 == 512)
                        {
                          goto LABEL_160;
                        }
                      }

                      else if (v81 == 16 || (v81 & 0x10) == 0)
                      {
                        goto LABEL_160;
                      }
                    }

LABEL_171:
                    active = 0;
                    if (!v82)
                    {
                      goto LABEL_101;
                    }

                    goto LABEL_172;
                  }

                  active = 1;
                }

LABEL_172:
                if (*(v82 + 4) == 1)
                {
                  WebGPU::CommandEncoder::~CommandEncoder(v82);
                  bmalloc::api::tzoneFree(v77, v78);
                }

                else
                {
                  --*(v82 + 4);
                }

LABEL_101:
                v75 = v161;
                if ((active & 1) == 0)
                {
                  break;
                }

LABEL_102:
                if (++v76 == v75)
                {
                  goto LABEL_97;
                }
              }

              v60 = v162;
              v110 = *(v162 + 32);
              *(v162 + 32) = 0;

              v111 = *(v162 + 12);
              ++*(v111 + 16);
              v169[0] = v111;
              if (*(v162 + 1))
              {
                objc_storeStrong((v111 + 48), 0);
                WebGPU::CommandEncoder::endEncoding(v111, *(v162 + 1));
                v112 = *(v162 + 1);
                *(v162 + 1) = 0;
              }

              else
              {
                WebGPU::CommandEncoder::makeInvalid(v111, &cfstr_Renderpassenco.isa);
              }

              v4 = v155;
              if (*(v111 + 16) == 1)
              {
                WebGPU::CommandEncoder::~CommandEncoder(v111);
                bmalloc::api::tzoneFree(v117, v118);
                v113 = 0;
                v63 = v153;
                v114 = *(v71 + 2) - 1;
                if (*(v71 + 2) == 1)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                --*(v111 + 16);
                v113 = 0;
                v63 = v153;
                v114 = *(v71 + 2) - 1;
                if (*(v71 + 2) == 1)
                {
                  goto LABEL_182;
                }
              }

LABEL_177:
              *(v71 + 2) = v114;
              v66 = v154;
              if (!v113)
              {
LABEL_243:
                v134 = v164;
                if (v164)
                {
                  goto LABEL_244;
                }

LABEL_246:
                v146 = v165;
                if (v165)
                {
                  goto LABEL_247;
                }

                goto LABEL_254;
              }

              do
              {
LABEL_183:
                v65 += 6;
              }

              while (v65 != v63 && *v65 >= 0xFFFFFFFE);
              if (v65 == v66)
              {
                v61 = *(v60 + 14);
                if (v61)
                {
LABEL_191:
                  *(v60 + 14) = 0;
                  v119 = *(v61 - 4);
                  if (v119)
                  {
                    v120 = v61 + 8;
                    do
                    {
                      if (*(v120 - 8) != -2)
                      {
                        v121 = *v120;
                        if (*v120)
                        {
                          *v120 = 0;
                          *(v120 + 8) = 0;
                          WTF::fastFree(v121, v10);
                        }
                      }

                      v120 += 24;
                      --v119;
                    }

                    while (v119);
                  }

                  WTF::fastFree((v61 - 16), v10);
                  v60 = v162;
                }

LABEL_198:
                v122 = *(v60 + 17);
                if (!v122)
                {
                  goto LABEL_243;
                }

                v123 = *(v60 + 13);
                if (v123)
                {
                  v124 = *(v123 - 4);
                  v125 = v123 + 24 * v124;
                  if (*(v123 - 12))
                  {
                    if (v124)
                    {
                      v126 = 24 * v124;
                      v127 = *(v60 + 13);
                      while (*v127 >= 0xFFFFFFFE)
                      {
                        v127 += 24;
                        v126 -= 24;
                        if (!v126)
                        {
                          v127 = v125;
                          goto LABEL_208;
                        }
                      }

                      goto LABEL_208;
                    }

                    goto LABEL_212;
                  }
                }

                else
                {
                  v125 = 0;
                  LODWORD(v124) = 0;
                }

                v127 = v125;
                v125 = v123 + 24 * v124;
LABEL_208:
                if (v123)
                {
                  v128 = v123 + 24 * *(v123 - 4);
                  if (v127 != v128)
                  {
                    goto LABEL_215;
                  }
                }

                else
                {
                  v128 = 0;
                  if (v127)
                  {
LABEL_215:
                    while (1)
                    {
                      v130 = *(v4 + 56);
                      ++*(v130 + 2);
                      v169[0] = v130;
                      if ((WebGPU::PipelineLayout::updateComputeOffsets(v130, *v127, (v127 + 8), *(v162 + 7), *(v162 + 17)) & 1) == 0)
                      {
                        break;
                      }

                      if (v169[0])
                      {
                        if (*(v169[0] + 2) == 1)
                        {
                          WebGPU::PipelineLayout::~PipelineLayout(v169[0], v131);
                          bmalloc::api::tzoneFree(v132, v133);
                        }

                        else
                        {
                          --*(v169[0] + 2);
                        }
                      }

                      do
                      {
                        v127 += 24;
                      }

                      while (v127 != v125 && *v127 >= 0xFFFFFFFE);
                      if (v127 == v128)
                      {
                        v129 = v162;
                        v122 = *(v162 + 17);
                        if (v122 != *(v162 + 21))
                        {
                          goto LABEL_229;
                        }

LABEL_228:
                        if (memcmp(*(v129 + 7), *(v129 + 9), 4 * v122))
                        {
LABEL_229:
                          if (*(*(v129 + 12) + 172))
                          {
                            v135 = 0;
                          }

                          else
                          {
                            v135 = *(v129 + 1);
                          }

                          v136 = v135;
                          v137 = *(v129 + 17);
                          if (v137)
                          {
                            v138 = v136;
                            [v136 setBytes:*(v129 + 7) length:4 * v137 atIndex:*(*(v129 + 3) + 96)];

                            WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v129 + 72), (v129 + 56));
                            goto LABEL_243;
                          }

LABEL_274:
                          __break(0xC471u);
                          JUMPOUT(0x225691B34);
                        }

                        goto LABEL_243;
                      }
                    }

                    WebGPU::ComputePassEncoder::makeInvalid(v162, &cfstr_InvalidOffsetC.isa);
                    if (!v169[0])
                    {
                      goto LABEL_243;
                    }

                    if (*(v169[0] + 2) == 1)
                    {
                      WebGPU::PipelineLayout::~PipelineLayout(v169[0], v10);
                      goto LABEL_262;
                    }

                    --*(v169[0] + 2);
                    v134 = v164;
                    if (v164)
                    {
                      goto LABEL_244;
                    }

                    goto LABEL_246;
                  }
                }

LABEL_212:
                v129 = v162;
                if (v122 == *(v162 + 21))
                {
                  goto LABEL_228;
                }

                goto LABEL_229;
              }
            }
          }

LABEL_86:
          if (v61)
          {
            goto LABEL_191;
          }

          goto LABEL_198;
        }
      }

      else
      {
        v63 = 0;
        LODWORD(v62) = 0;
      }

      v65 = v63;
      v63 = (v61 + 24 * v62);
      goto LABEL_84;
    }

    goto LABEL_27;
  }

LABEL_19:
  v21 = (v17 + 16 * *(v17 - 1));
  v155 = v4;
  if (v20 == v21)
  {
    goto LABEL_74;
  }

LABEL_27:
  v22 = v162 + 128;
  while (1)
  {
    v23 = *(v20 + 1);
    if (!v23)
    {
      WebGPU::ComputePassEncoder::makeInvalid(v162, &cfstr_BindGroupWasDe.isa);
      goto LABEL_243;
    }

    v24 = *v20;
    ++*(v23 + 8);
    v25 = *(v23 + 104);
    if (!v25 || !*(v25 - 12))
    {
      goto LABEL_34;
    }

    v26 = *(v162 + 12);
    ++*(v26 + 4);
    v169[0] = v26;
    WebGPU::CommandEncoder::rebindSamplersPreCommit(v26, v23);
    if (*(v26 + 4) != 1)
    {
      --*(v26 + 4);
LABEL_34:
      if (v24 >= 0x20)
      {
        goto LABEL_264;
      }

      goto LABEL_35;
    }

    WebGPU::CommandEncoder::~CommandEncoder(v26);
    bmalloc::api::tzoneFree(v36, v37);
    if (v24 >= 0x20)
    {
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

LABEL_35:
    if (WebGPU::BindGroup::previouslyValidatedBindGroup(v23, v24, v160, *&v22[4 * v24]))
    {
      goto LABEL_65;
    }

    if (*(v164 + 32) != 1)
    {
      goto LABEL_49;
    }

    if (*(v164 + 7) <= v24)
    {
      goto LABEL_49;
    }

    v28 = *(*(v164 + 2) + 8 * v24);
    if (!v28)
    {
      goto LABEL_49;
    }

    v29 = *(v28 + 8);
    *(v28 + 8) = v29 + 1;
    if (!*(v23 + 64))
    {
      break;
    }

    *(v28 + 8) = v29 + 2;
    v169[0] = v28;
    v30 = [*(v23 + 32) length];
    v32 = [*(v28 + 40) encodedLength];
    v33 = *(v28 + 8) - 1;
    if (*(v28 + 8) == 1)
    {
      WebGPU::BindGroupLayout::~BindGroupLayout(v28, v31);
      bmalloc::api::tzoneFree(v38, v39);
      v34 = *(v28 + 8) - 1;
      if (*(v28 + 8) == 1)
      {
LABEL_47:
        WebGPU::BindGroupLayout::~BindGroupLayout(v28, v31);
        bmalloc::api::tzoneFree(v40, v41);
        v35 = v30 == v32;
        v4 = v155;
        if (!v35)
        {
          goto LABEL_238;
        }

        goto LABEL_49;
      }
    }

    else
    {
      *(v28 + 8) = v33;
      v34 = v33 - 1;
      if (!v34)
      {
        goto LABEL_47;
      }
    }

    *(v28 + 8) = v34;
    v35 = v30 == v32;
    v4 = v155;
    if (!v35)
    {
      goto LABEL_238;
    }

LABEL_49:
    v42 = *(v162 + 13);
    if (v42)
    {
      v43 = *(v42 - 8);
      v44 = 9 * ((v24 + ~(v24 << 15)) ^ ((v24 + ~(v24 << 15)) >> 10));
      v45 = v43 & (((v44 ^ (v44 >> 6)) + ~((v44 ^ (v44 >> 6)) << 11)) ^ (((v44 ^ (v44 >> 6)) + ~((v44 ^ (v44 >> 6)) << 11)) >> 16));
      v46 = (v42 + 24 * v45);
      v47 = *v46;
      if (*v46 != v24)
      {
        v48 = 1;
        while (v47 != -1)
        {
          v45 = (v45 + v48) & v43;
          v46 = (v42 + 24 * v45);
          v47 = *v46;
          ++v48;
          if (*v46 == v24)
          {
            goto LABEL_57;
          }
        }

        v46 = (v42 + 24 * *(v42 - 4));
      }

LABEL_57:
      v49 = (v42 + 24 * *(v42 - 4));
    }

    else
    {
      v46 = 0;
      v49 = 0;
    }

    v50 = WebGPU::ComputePipeline::minimumBufferSizes(v4, v24);
    if (v46 == v49)
    {
      v51 = 0;
    }

    else
    {
      v51 = (v46 + 2);
    }

    v52 = WebGPU::errorValidatingBindGroup(v23, v50, v51);
    if (v52)
    {
      v67 = v52;
      WebGPU::ComputePassEncoder::makeInvalid(v162, v52);

      goto LABEL_241;
    }

    LODWORD(v163) = *&v22[4 * v24];
    v168 = ((v160 << 32) | v24);
    WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>((v23 + 96), &v168, &v163, v169);
    v53 = *(v169[0] + 2);
    if (v53 <= v163)
    {
      v53 = v163;
    }

    *(v169[0] + 2) = v53;
LABEL_65:
    if (*(*(v162 + 12) + 172))
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v162 + 1);
    }

    v55 = v54;
    v56 = *(v23 + 32);
    [v55 setBuffer:v56 offset:0 atIndex:v24];

    if (*(v23 + 8) == 1)
    {
      WebGPU::BindGroup::~BindGroup(v23, v10, v57);
      bmalloc::api::tzoneFree(v58, v59);
    }

    else
    {
      --*(v23 + 8);
    }

    do
    {
      v20 = (v20 + 16);
    }

    while (v20 != v3 && *v20 >= 0xFFFFFFFE);
    if (v20 == v21)
    {
      goto LABEL_74;
    }
  }

  if (v29)
  {
    *(v28 + 8) = v29;
  }

  else
  {
    WebGPU::BindGroupLayout::~BindGroupLayout(v28, v27);
    bmalloc::api::tzoneFree(v141, v142);
  }

LABEL_238:
  v143 = *(v162 + 12);
  ++*(v143 + 4);
  v169[0] = v143;
  WebGPU::CommandEncoder::makeSubmitInvalid(v143, 0);
  if (*(v143 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(v143);
    bmalloc::api::tzoneFree(v144, v145);
  }

  else
  {
    --*(v143 + 4);
  }

LABEL_241:
  if (*(v23 + 8) != 1)
  {
    --*(v23 + 8);
    goto LABEL_243;
  }

  WebGPU::BindGroup::~BindGroup(v23, v10, v68);
LABEL_262:
  bmalloc::api::tzoneFree(v139, v140);
  v134 = v164;
  if (!v164)
  {
    goto LABEL_246;
  }

LABEL_244:
  if (*(v134 + 2) != 1)
  {
    --*(v134 + 2);
    goto LABEL_246;
  }

  WebGPU::PipelineLayout::~PipelineLayout(v134, v10);
  bmalloc::api::tzoneFree(v151, v152);
  v146 = v165;
  if (v165)
  {
LABEL_247:
    v147 = *(v146 - 4);
    if (v147)
    {
      v148 = (v146 + 8);
      do
      {
        if (*(v148 - 1) != -1 && *v148)
        {
          WTF::fastFree((*v148 - 16), v10);
        }

        v148 += 2;
        --v147;
      }

      while (v147);
    }

    WTF::fastFree((v146 - 16), v10);
  }

LABEL_254:
  if (v166)
  {
    WTF::fastFree((v166 - 16), v10);
  }

LABEL_256:
  if (*(v4 + 8) == 1)
  {
    WebGPU::ComputePipeline::~ComputePipeline(v4, v10);
    bmalloc::api::tzoneFree(v149, v150);
  }

  else
  {
    --*(v4 + 8);
  }
}

void sub_225691BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WebGPU::ComputePipeline *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WebGPU::PipelineLayout *a20, uint64_t a21, uint64_t a22)
{
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v23 - 112));
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::deref(v22, v25, v26);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&a20, v27);
  WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a21, v28);
  if (a22)
  {
    WTF::fastFree((a22 - 16), v29);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ComputePipeline>::deref(a11, v29);
  _Unwind_Resume(a1);
}

void WebGPU::ComputePassEncoder::makeInvalid(id *this, NSString *a2)
{
  v8 = a2;
  objc_storeStrong(this + 32, a2);
  v4 = this[12];
  ++*(v4 + 16);
  if (this[1])
  {
    objc_storeStrong((v4 + 48), a2);
    WebGPU::CommandEncoder::endEncoding(v4, this[1]);
    v5 = this[1];
    this[1] = 0;
  }

  else
  {
    WebGPU::CommandEncoder::makeInvalid(v4, &cfstr_Renderpassenco.isa);
  }

  if (*(v4 + 16) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*(v4 + 16);
  }
}

void sub_225691E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, WebGPU::CommandEncoder *a10)
{
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a10);

  _Unwind_Resume(a1);
}

WebGPU::PipelineLayout **WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(WebGPU::PipelineLayout **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::PipelineLayout::~PipelineLayout(v2, a2);
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

id WebGPU::ComputePassEncoder::computeCommandEncoder(id *this)
{
  if (*(this[12] + 172))
  {
    return 0;
  }

  else
  {
    return this[1];
  }
}

WTF *WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WTF *result, WTF *a2)
{
  v2 = result;
  if (a2 == result)
  {
    return v2;
  }

  v4 = *(result + 3);
  v5 = *(a2 + 3);
  if (v4 > v5)
  {
    *(result + 3) = v5;
    v6 = *result;
    if (v5)
    {
LABEL_4:
      memmove(v6, *a2, 4 * v5);
      v7 = *(v2 + 3);
      v6 = *v2;
LABEL_19:
      memcpy(&v6[4 * v7], (*a2 + 4 * v7), 4 * (*(a2 + 3) - v7));
      *(v2 + 3) = *(a2 + 3);
      return v2;
    }

LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v8 = *(result + 2);
  if (v5 <= v8)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    if (v4)
    {
      *(result + 3) = 0;
    }

    result = *result;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 2) = 0;
      result = WTF::fastFree(result, a2);
      v8 = *(v2 + 2);
    }
  }

  v9 = *(a2 + 3);
  if (v8 >= v9)
  {
LABEL_17:
    v5 = *(v2 + 3);
    v6 = *v2;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if (!(v9 >> 30))
  {
    v10 = *v2;
    v11 = *(v2 + 3);
    v12 = WTF::fastMalloc((4 * v9));
    *(v2 + 2) = v9;
    *v2 = v12;
    memcpy(v12, v10, 4 * v11);
    if (v10)
    {
      if (*v2 == v10)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      WTF::fastFree(v10, v13);
    }

    goto LABEL_17;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebGPU::ComputePassEncoder::runPredispatchIndirectCallValidation(WebGPU::ComputePassEncoder *this, const WebGPU::Buffer *a2, uint64_t a3)
{
  v34 = *(*(this + 3) + 8);
  *&v32 = this;
  *(&v32 + 1) = &v34;
  if (atomic_load_explicit(&qword_28159C8A0, memory_order_acquire) != -1)
  {
    *&v30 = &v32;
    v35 = &v30;
    std::__call_once(&qword_28159C8A0, &v35, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::ComputePassEncoder::runPredispatchIndirectCallValidation(WebGPU::Buffer const&,unsigned long long)::$_0 &&>>);
  }

  if (!_MergedGlobals_0)
  {
    result = 309;
    __break(0xC471u);
    return result;
  }

  v6 = *(this + 3);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
  v10 = *v6;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(*v6, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x22AA683C0](v10);
  }

  ++*(v10 + 8);
  atomic_compare_exchange_strong_explicit(v10, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v10);
  }

LABEL_12:
  v35 = v6;
  v12 = WebGPU::Device::dispatchCallPipelineState(v6, _MergedGlobals_0);
  v13 = *(v6 + 8);
  if (v13)
  {
    v14 = *(v6 + 312);
    if (!v14)
    {
      v15 = [v13 newBufferWithLength:12 options:32];
      v16 = *(v6 + 312);
      *(v6 + 312) = v15;

      WebGPU::Device::setOwnerWithIdentity(v6, *(v6 + 312));
      v14 = *(v6 + 312);
    }

    v17 = v14;
    if (*(*(this + 12) + 172))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    if (*(*(this + 12) + 172))
    {
LABEL_16:
      v18 = 0;
      goto LABEL_19;
    }
  }

  v18 = *(this + 1);
LABEL_19:
  [v18 setComputePipelineState:v12];
  if (*(*(this + 12) + 172))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 1);
  }

  v20 = *(a2 + 1);
  v21 = v19;
  [v21 setBuffer:v20 offset:a3 atIndex:0];

  if (*(*(this + 12) + 172))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 1);
  }

  [v22 setBuffer:v17 offset:0 atIndex:1];
  if (*(*(this + 12) + 172))
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 1);
  }

  v32 = xmmword_225881D60;
  v33 = 1;
  v30 = xmmword_225881D60;
  v31 = 1;
  [v23 dispatchThreads:&v32 threadsPerThreadgroup:&v30];

  v35 = 0;
  do
  {
    v25 = *v6;
    if ((*v6 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v6, v24);
      goto LABEL_34;
    }

    v26 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v26 != v25);
  if (v25 == 3)
  {
    WebGPU::Device::~Device(v6, v24);
    bmalloc::api::tzoneFree(v27, v28);
  }

LABEL_34:

  return v17;
}

void sub_2256922A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v12);
  _Unwind_Resume(a1);
}

void sub_2256922F8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);

  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22569247CLL);
  }

  v5 = *(v3 - 8);
  v6 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
  v8 = v5 & (v7 ^ HIWORD(v7));
  v9 = *(v3 + 16 * v8);
  if (v9 != v4)
  {
    v10 = 1;
    while (v9 != -1)
    {
      v8 = (v8 + v10) & v5;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v4)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v8 == *(v3 - 4))
  {
    return 0;
  }

  v12 = v3 + 16 * v8;
  *v12 = -2;
  v13 = *(v12 + 8);
  *(v12 + 8) = 0;
  if (v13)
  {
    if (*(v13 + 2) == 1)
    {
      v14 = a1;
      WebGPU::BindGroup::~BindGroup(v13, a2, a3);
      bmalloc::api::tzoneFree(v15, v16);
      a1 = v14;
      v3 = *v14;
    }

    else
    {
      --*(v13 + 2);
    }
  }

  v17 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v17;
  v18 = *(v3 - 4);
  if (6 * v17.i32[1] < v18 && v18 >= 9)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v18 >> 1, 0);
  }

  return 1;
}

uint64_t WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, int *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -2 || v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22569261CLL);
  }

  v4 = *(v2 - 8);
  v5 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v4 & (v6 ^ HIWORD(v6));
  v8 = v2 + 24 * v7;
  v9 = *v8;
  if (*v8 == v3)
  {
LABEL_8:
    v11 = *(v2 - 4);
    if (v2 + 24 * v11 != v8)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v10 = 1;
  while (v9 != -1)
  {
    v7 = (v7 + v10) & v4;
    v8 = v2 + 24 * v7;
    v9 = *v8;
    ++v10;
    if (*v8 == v3)
    {
      goto LABEL_8;
    }
  }

  v8 = v2 + 24 * *(v2 - 4);
  v11 = *(v2 - 4);
  if (v2 + 24 * v11 == v8)
  {
    return 0;
  }

LABEL_9:
  *v8 = -2;
  v12 = *(v8 + 8);
  if (v12)
  {
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    v13 = a1;
    WTF::fastFree(v12, a2);
    a1 = v13;
    v2 = *v13;
    v11 = *(*v13 - 4);
  }

  v14 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v14;
  if (v11 >= 9 && 6 * v14.i32[1] < v11)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v11 >> 1, 0);
  }

  return 1;
}

uint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(uint64_t result, unsigned int *a2, unint64_t a3)
{
  v3 = *(result + 12);
  if (v3 > a3)
  {
    *(result + 12) = a3;
    v4 = a3;
    v5 = *result;
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  v10 = *(result + 8);
  if (v10 >= a3)
  {
    goto LABEL_17;
  }

  if (v10)
  {
    if (v3)
    {
      *(result + 12) = 0;
    }

    v11 = *result;
    if (*result)
    {
      *result = 0;
      *(result + 8) = 0;
      v12 = result;
      v13 = a3;
      v14 = a2;
      WTF::fastFree(v11, a2);
      a2 = v14;
      result = v12;
      a3 = v13;
      LODWORD(v10) = *(v12 + 8);
    }
  }

  if (v10 >= a3)
  {
LABEL_17:
    v4 = *(result + 12);
    v5 = *result;
    if (v4)
    {
LABEL_3:
      v6 = v4;
      v7 = *a2;
      if (v4 >= 8)
      {
        v8 = (v5 + 4 * (v4 & 0xFFFFFFF8));
        v9 = v6 & 7;
        v22 = vdupq_n_s32(v7);
        v23 = (v5 + 16);
        v24 = v6 & 0xFFFFFFF8;
        do
        {
          v23[-1] = v22;
          *v23 = v22;
          v23 += 2;
          v24 -= 8;
        }

        while (v24);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
LABEL_25:
          v21 = *(result + 12);
          if (v21 != a3)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v8 = v5;
        v9 = v6;
      }

      v25 = v9 + 1;
      do
      {
        *v8++ = v7;
        --v25;
      }

      while (v25 > 1);
      goto LABEL_25;
    }

LABEL_18:
    v21 = 0;
    if (a3)
    {
LABEL_26:
      v26 = 4 * v21;
      v27 = (v5 + 4 * v21);
      v28 = *a2;
      v29 = 4 * a3 - v26 - 4;
      if (v29 < 0x1C)
      {
        goto LABEL_30;
      }

      v30 = (v29 >> 2) + 1;
      v27 += v30 & 0x7FFFFFFFFFFFFFF8;
      v31 = vdupq_n_s32(v28);
      v32 = (v5 + v26 + 16);
      v33 = v30 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32[-1] = v31;
        *v32 = v31;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v30 != (v30 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_30:
        v34 = (v5 + 4 * a3);
        do
        {
          *v27++ = v28;
        }

        while (v27 != v34);
      }
    }

LABEL_32:
    *(result + 12) = a3;
    return result;
  }

  if (!(a3 >> 30))
  {
    v15 = a2;
    v16 = *result;
    v17 = *(result + 12);
    v18 = result;
    v19 = a3;
    v20 = WTF::fastMalloc((4 * a3));
    *(v18 + 8) = v19;
    *v18 = v20;
    memcpy(v20, v16, 4 * v17);
    result = v18;
    a3 = v19;
    a2 = v15;
    if (v16)
    {
      if (*v18 == v16)
      {
        *v18 = 0;
        *(v18 + 8) = 0;
      }

      WTF::fastFree(v16, v15);
      result = v18;
      a3 = v19;
      a2 = v15;
    }

    goto LABEL_17;
  }

  __break(0xC471u);
  return result;
}

WebGPU::ComputePassEncoder *wgpuComputePassEncoderRelease(WebGPU::ComputePassEncoder *result)
{
  if (*result == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void wgpuComputePassEncoderDispatchWorkgroups(WebGPU::ComputePassEncoder *this, unsigned int a2, const WTF::StringImpl *a3, unsigned int a4)
{
  ++*this;
  v5 = *(this + 12);
  if (*v5 != 1)
  {
    v12 = *(this + 3);
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
        goto LABEL_16;
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

LABEL_16:
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::dispatch(uint32_t, uint32_t, uint32_t)", this];
    WebGPU::Device::generateAValidationError(v12, v18);

    v33[0] = 0;
    do
    {
      v20 = *v12;
      if ((*v12 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v12, v19);
        goto LABEL_22;
      }

      v21 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v20);
    if (v20 == 3)
    {
      WebGPU::Device::~Device(v12, v19);
      bmalloc::api::tzoneFree(v22, v23);
    }

    goto LABEL_22;
  }

  v6 = *(this + 1);
  if (!v6 || !*(v5 + 24))
  {
    goto LABEL_23;
  }

  v8 = a3;
  v10 = *(v5 + 16);
  *(v5 + 16) = v10 + 1;
  if (*(*(v5 + 192) + 8))
  {
    v11 = *(v5 + 32) == v6;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_6:
      *(v5 + 16) = v10;
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v5);
  bmalloc::api::tzoneFree(v26, v27);
  if (!v11)
  {
LABEL_22:
    v6 = *(this + 1);
LABEL_23:
    *(this + 1) = 0;

    goto LABEL_24;
  }

LABEL_31:
  WebGPU::ComputePassEncoder::executePreDispatchCommands(this, 0, a3);
  v28 = *(*(this + 3) + 220);
  if (v28 < a4 || v28 < a2 || v28 < v8)
  {
    WebGPU::ComputePassEncoder::makeInvalid(this, 0);
  }

  else if (v8 * a2 * a4)
  {
    if (*(*(this + 12) + 172))
    {
      v29 = 0;
    }

    else
    {
      v29 = *(this + 1);
    }

    v33[0] = a2;
    v33[1] = v8;
    v33[2] = a4;
    v31 = *(this + 2);
    v32 = *(this + 6);
    [v29 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  }

LABEL_24:
  if (*this == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(this);

    bmalloc::api::tzoneFree(v24, v25);
  }

  else
  {
    --*this;
  }
}

void sub_225692B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225692B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, WebGPU::ComputePassEncoder *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v4);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225692B54(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, WebGPU::ComputePassEncoder *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WebGPU::ComputePassEncoder **WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(WebGPU::ComputePassEncoder **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::ComputePassEncoder::~ComputePassEncoder(v1);
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

WebGPU::ComputePassEncoder *wgpuComputePassEncoderDispatchWorkgroupsIndirect(WebGPU::ComputePassEncoder *this, atomic_ullong *a2, unint64_t a3)
{
  ++*this;
  while (1)
  {
    v6 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v7 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  v9 = *a2;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow(v9);
    v11 = *(this + 12);
    if (*v11 == 1)
    {
      goto LABEL_9;
    }

LABEL_32:
    v22 = *(this + 3);
    while (1)
    {
      v23 = *v22;
      if ((*v22 & 1) == 0)
      {
        break;
      }

      v24 = *v22;
      atomic_compare_exchange_strong_explicit(v22, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_40;
      }
    }

    v25 = 0;
    v26 = *v22;
    v27 = 1;
    atomic_compare_exchange_strong_explicit(*v22, &v25, 1u, memory_order_acquire, memory_order_acquire);
    if (v25)
    {
      MEMORY[0x22AA683C0](v26);
    }

    ++*(v26 + 8);
    atomic_compare_exchange_strong_explicit(v26, &v27, 0, memory_order_release, memory_order_relaxed);
    if (v27 != 1)
    {
      WTF::Lock::unlockSlow(v26);
    }

LABEL_40:
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::dispatchIndirect(const Buffer &, uint64_t)"];
    WebGPU::Device::generateAValidationError(v22, v28);

    *&v42 = 0;
    do
    {
      v30 = *v22;
      if ((*v22 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v22, v29);
        goto LABEL_46;
      }

      v31 = *v22;
      atomic_compare_exchange_strong_explicit(v22, &v31, v30 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v31 != v30);
    if (v30 == 3)
    {
      WebGPU::Device::~Device(v22, v29);
      bmalloc::api::tzoneFree(v32, v33);
    }

    goto LABEL_46;
  }

LABEL_8:
  v11 = *(this + 12);
  if (*v11 != 1)
  {
    goto LABEL_32;
  }

LABEL_9:
  v12 = *(this + 1);
  if (!v12 || !*(v11 + 24))
  {
    goto LABEL_47;
  }

  v13 = *(v11 + 16);
  *(v11 + 16) = v13 + 1;
  if (*(*(v11 + 192) + 8))
  {
    v14 = *(v11 + 32) == v12;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    WebGPU::CommandEncoder::~CommandEncoder(v11);
    bmalloc::api::tzoneFree(v15, v16);
    if (!v14)
    {
      goto LABEL_46;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_13:
  *(v11 + 16) = v13;
  if (!v14)
  {
LABEL_46:
    v12 = *(this + 1);
LABEL_47:
    *(this + 1) = 0;

    goto LABEL_48;
  }

LABEL_17:
  if ((*(a2 + 44) == 4 || a2[1]) && (v17 = a2[35], *(v17 + 8)) && v17 == *(this + 3) && (a3 & 3) == 0 && a3 < 0xFFFFFFFFFFFFFFF4 && (a2[5] & 0x100) != 0 && a3 + 12 <= a2[4])
  {
    WebGPU::Buffer::setCommandEncoder(a2, *(this + 12));
    if (*(a2 + 44) != 4)
    {
      v20 = WebGPU::ComputePassEncoder::runPredispatchIndirectCallValidation(this, a2, a3);
      if (v20)
      {
        WebGPU::ComputePassEncoder::executePreDispatchCommands(this, a2, v19);
        v21 = WebGPU::ComputePassEncoder::computeCommandEncoder(this);
        v42 = *(this + 2);
        v43 = *(this + 6);
        [v21 dispatchThreadgroupsWithIndirectBuffer:v20 indirectBufferOffset:0 threadsPerThreadgroup:&v42];
      }

      else
      {
        WebGPU::ComputePassEncoder::makeInvalid(this, &cfstr_Gpucomputepass_0.isa);
      }
    }
  }

  else
  {
    WebGPU::ComputePassEncoder::makeInvalid(this, 0);
  }

  do
  {
LABEL_48:
    v34 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v18);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_53;
    }

    v35 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v35 != v34);
  if (v34 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v36, v37);
  }

  result = this;
  if (this)
  {
LABEL_53:
    if (*result == 1)
    {
      WebGPU::ComputePassEncoder::~ComputePassEncoder(result);

      return bmalloc::api::tzoneFree(v39, v40);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_225692F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225692F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, atomic_ullong *);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v6);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_225692FC4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, atomic_ullong *);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_225692FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v9 = va_arg(va2, WebGPU::ComputePassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v5);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v6);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void wgpuComputePassEncoderEnd(uint64_t a1)
{
  ++*a1;
  if (*(a1 + 264) == 1)
  {
    v2 = *(a1 + 24);
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_20;
      }
    }

    v11 = 0;
    v12 = *v2;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(*v2, &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x22AA683C0](v12);
    }

    ++*(v12 + 8);
    atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v12);
    }

LABEL_20:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as pass is already ended", "void WebGPU::ComputePassEncoder::endPass()"];
    WebGPU::Device::generateAValidationError(v2, v14);

    do
    {
      v16 = *v2;
      if ((*v2 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v2, v15);
        v20 = *a1 - 1;
        if (*a1 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_27;
      }

      v17 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v17 != v16);
    if (v16 != 3)
    {
      goto LABEL_49;
    }

    WebGPU::Device::~Device(v2, v15);
    bmalloc::api::tzoneFree(v18, v19);
    v20 = *a1 - 1;
    if (*a1 != 1)
    {
      goto LABEL_50;
    }

    goto LABEL_27;
  }

  *(a1 + 264) = 1;
  v5 = *(a1 + 96);
  if (*v5 != 1)
  {
    v23 = *(a1 + 24);
    while (1)
    {
      v24 = *v23;
      if ((*v23 & 1) == 0)
      {
        break;
      }

      v25 = *v23;
      atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v25 == v24)
      {
        goto LABEL_38;
      }
    }

    v26 = 0;
    v27 = *v23;
    v28 = 1;
    atomic_compare_exchange_strong_explicit(*v23, &v26, 1u, memory_order_acquire, memory_order_acquire);
    if (v26)
    {
      MEMORY[0x22AA683C0](v27);
    }

    ++*(v27 + 8);
    atomic_compare_exchange_strong_explicit(v27, &v28, 0, memory_order_release, memory_order_relaxed);
    if (v28 != 1)
    {
      WTF::Lock::unlockSlow(v27);
    }

LABEL_38:
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::endPass()"];
    WebGPU::Device::generateAValidationError(v23, v29);

    do
    {
      v31 = *v23;
      if ((*v23 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v23, v30);
        goto LABEL_44;
      }

      v32 = *v23;
      atomic_compare_exchange_strong_explicit(v23, &v32, v31 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v32 != v31);
    if (v31 == 3)
    {
      WebGPU::Device::~Device(v23, v30);
      bmalloc::api::tzoneFree(v33, v34);
    }

LABEL_44:
    v35 = *(a1 + 8);
    *(a1 + 8) = 0;

    v20 = *a1 - 1;
    if (*a1 == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

  v6 = *(a1 + 8);
  if (!v6 || !*(v5 + 24))
  {
    goto LABEL_48;
  }

  v7 = *(v5 + 16);
  *(v5 + 16) = v7 + 1;
  if (*(*(v5 + 192) + 8))
  {
    v8 = *(v5 + 32) == v6;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_47:
    WebGPU::CommandEncoder::~CommandEncoder(v5);
    bmalloc::api::tzoneFree(v36, v37);
    v6 = *(a1 + 8);
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_48:
    *(a1 + 8) = 0;

LABEL_49:
    v20 = *a1 - 1;
    if (*a1 == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

  v8 = 0;
  if (!v7)
  {
    goto LABEL_47;
  }

LABEL_11:
  *(v5 + 16) = v7;
  if (!v8)
  {
    goto LABEL_48;
  }

LABEL_12:
  v9 = *(a1 + 96);
  ++*(v9 + 4);
  if (*(a1 + 16) || !v6)
  {
    WebGPU::CommandEncoder::endEncoding(v9, v6);
    v38 = *(a1 + 8);
    *(a1 + 8) = 0;

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"ComputePassEncoder.endPass failure, m_debugGroupStackSize = %llu, isValid = %d, error = %@", *(a1 + 16), v6 != 0, *(a1 + 256)];
    WebGPU::CommandEncoder::makeInvalid(v9, v39);
  }

  else
  {
    WebGPU::CommandEncoder::endEncoding(v9, v6);
    v10 = *(a1 + 8);
    *(a1 + 8) = 0;

    if (*v9 != 2)
    {
      *v9 = 0;
      WebGPU::CommandEncoder::setExistingEncoder(v9, 0);
    }
  }

  if (*(v9 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(v9);
    bmalloc::api::tzoneFree(v40, v41);
    v20 = *a1 - 1;
    if (*a1 == 1)
    {
      goto LABEL_27;
    }

LABEL_50:
    *a1 = v20;
    return;
  }

  --*(v9 + 4);
  v20 = *a1 - 1;
  if (*a1 != 1)
  {
    goto LABEL_50;
  }

LABEL_27:
  WebGPU::ComputePassEncoder::~ComputePassEncoder(a1);

  bmalloc::api::tzoneFree(v21, v22);
}

void sub_225693404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225693418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, WebGPU::ComputePassEncoder *);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va1);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225693438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, WebGPU::ComputePassEncoder *);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va1);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225693454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, WebGPU::ComputePassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v7);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuComputePassEncoderInsertDebugMarker(uint64_t a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v4 = *(a1 + 96);
  if (*v4 != 1)
  {
    v8 = *(a1 + 24);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }

    v11 = 0;
    v12 = *v8;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(*v8, &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x22AA683C0](v12);
    }

    ++*(v12 + 8);
    atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v12);
    }

LABEL_18:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::insertDebugMarker(String &&)"];
    WebGPU::Device::generateAValidationError(v8, v14);

    v29 = 0;
    do
    {
      v16 = *v8;
      if ((*v8 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v8, v15);
        goto LABEL_24;
      }

      v17 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v17 != v16);
    if (v16 == 3)
    {
      WebGPU::Device::~Device(v8, v15);
      bmalloc::api::tzoneFree(v18, v19);
    }

    goto LABEL_24;
  }

  v5 = *(a1 + 8);
  if (!v5 || !*(v4 + 24))
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 1;
  if (*(*(v4 + 192) + 8))
  {
    v7 = *(v4 + 32) == v5;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
LABEL_8:
      *(v4 + 16) = v6;
      if (v7)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v4);
  bmalloc::api::tzoneFree(v23, v24);
  if (!v7)
  {
LABEL_24:
    v5 = *(a1 + 8);
LABEL_25:
    *(a1 + 8) = 0;
    goto LABEL_26;
  }

LABEL_35:
  if (*(a1 + 4) - 3 > 0xFFFFFFFD)
  {
    goto LABEL_27;
  }

  v25 = *(a1 + 8);
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v29);
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }
  }

  else
  {
    v29 = &stru_2838D6D18;
  }

  [v25 insertDebugSignpost:v29];
  v27 = v29;
  v29 = 0;

  v5 = v29;
LABEL_26:

LABEL_27:
  result = v28;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v3);
  }

  if (*a1 == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(a1);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_22569371C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::ComputePassEncoder *a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void wgpuComputePassEncoderPopDebugGroup(WebGPU::ComputePassEncoder *this)
{
  ++*this;
  v2 = *(this + 12);
  if (*v2 != 1)
  {
    v7 = *(this + 3);
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_16;
      }
    }

    v10 = 0;
    v11 = *v7;
    v12 = 1;
    atomic_compare_exchange_strong_explicit(*v7, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      MEMORY[0x22AA683C0](v11);
    }

    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != 1)
    {
      WTF::Lock::unlockSlow(v11);
    }

LABEL_16:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::popDebugGroup()"];
    WebGPU::Device::generateAValidationError(v7, v13);

    do
    {
      v15 = *v7;
      if ((*v7 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, v14);
        goto LABEL_22;
      }

      v16 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v16 != v15);
    if (v15 == 3)
    {
      WebGPU::Device::~Device(v7, v14);
      bmalloc::api::tzoneFree(v17, v18);
    }

LABEL_22:
    v4 = (this + 8);
    goto LABEL_23;
  }

  v4 = (this + 8);
  v3 = *(this + 1);
  if (!v3 || !*(v2 + 24))
  {
    goto LABEL_24;
  }

  v5 = *(v2 + 16);
  *(v2 + 16) = v5 + 1;
  if (*(*(v2 + 192) + 8))
  {
    v6 = *(v2 + 32) == v3;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_31:
    WebGPU::CommandEncoder::~CommandEncoder(v2);
    bmalloc::api::tzoneFree(v21, v22);
    if (v6)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_6:
  *(v2 + 16) = v5;
  if (!v6)
  {
LABEL_23:
    v3 = *v4;
LABEL_24:
    *v4 = 0;

    goto LABEL_25;
  }

LABEL_32:
  if (*(this + 4) - 3 <= 0xFFFFFFFD)
  {
    if (**(this + 12) == 1 && (v23 = *(this + 2)) != 0)
    {
      *(this + 2) = v23 - 1;
      [*(this + 1) popDebugGroup];
    }

    else
    {
      WebGPU::ComputePassEncoder::makeInvalid(this, 0);
    }
  }

LABEL_25:
  if (*this == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(this);

    bmalloc::api::tzoneFree(v19, v20);
  }

  else
  {
    --*this;
  }
}

void sub_2256939DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256939F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::ComputePassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_225693A10(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::ComputePassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuComputePassEncoderPushDebugGroup(uint64_t a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v4 = *(a1 + 96);
  if (*v4 != 1)
  {
    v8 = *(a1 + 24);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }

    v11 = 0;
    v12 = *v8;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(*v8, &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x22AA683C0](v12);
    }

    ++*(v12 + 8);
    atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v12);
    }

LABEL_18:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::pushDebugGroup(String &&)"];
    WebGPU::Device::generateAValidationError(v8, v14);

    v29 = 0;
    do
    {
      v16 = *v8;
      if ((*v8 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v8, v15);
        goto LABEL_24;
      }

      v17 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v17 != v16);
    if (v16 == 3)
    {
      WebGPU::Device::~Device(v8, v15);
      bmalloc::api::tzoneFree(v18, v19);
    }

    goto LABEL_24;
  }

  v5 = *(a1 + 8);
  if (!v5 || !*(v4 + 24))
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 1;
  if (*(*(v4 + 192) + 8))
  {
    v7 = *(v4 + 32) == v5;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
LABEL_8:
      *(v4 + 16) = v6;
      if (v7)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v4);
  bmalloc::api::tzoneFree(v23, v24);
  if (!v7)
  {
LABEL_24:
    v5 = *(a1 + 8);
LABEL_25:
    *(a1 + 8) = 0;
    goto LABEL_26;
  }

LABEL_35:
  if (*(a1 + 4) - 3 > 0xFFFFFFFD)
  {
    goto LABEL_27;
  }

  v25 = *(a1 + 8);
  ++*(a1 + 16);
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v29);
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }
  }

  else
  {
    v29 = &stru_2838D6D18;
  }

  [v25 pushDebugGroup:v29];
  v27 = v29;
  v29 = 0;

  v5 = v29;
LABEL_26:

LABEL_27:
  result = v28;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v28, v3);
  }

  if (*a1 == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(a1);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_225693CB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::ComputePassEncoder *a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void wgpuComputePassEncoderSetBindGroup(WebGPU::ComputePassEncoder *this, WTF::StringImpl *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  ++*this;
  if (a3)
  {
    ++*(a3 + 8);
  }

  v74 = a2;
  v8 = *(this + 12);
  if (*v8 != 1)
  {
    v12 = *(this + 3);
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
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::setBindGroup(uint32_t, const BindGroup *, std::optional<Vector<uint32_t>> &&)"];
    WebGPU::Device::generateAValidationError(v12, v18);

    v73[0] = 0;
    do
    {
      v20 = *v12;
      if ((*v12 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v12, v19);
        goto LABEL_24;
      }

      v21 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v20);
    if (v20 == 3)
    {
      WebGPU::Device::~Device(v12, v19);
      bmalloc::api::tzoneFree(v22, v23);
    }

    goto LABEL_24;
  }

  v9 = *(this + 1);
  if (!v9 || !*(v8 + 24))
  {
    goto LABEL_25;
  }

  v10 = *(v8 + 16);
  *(v8 + 16) = v10 + 1;
  if (*(*(v8 + 192) + 8))
  {
    v11 = *(v8 + 32) == v9;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_8:
      *(v8 + 16) = v10;
      if (v11)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v8);
  v8 = bmalloc::api::tzoneFree(v31, v32);
  if (!v11)
  {
LABEL_24:
    v9 = *(this + 1);
LABEL_25:
    *(this + 1) = 0;

    goto LABEL_26;
  }

LABEL_37:
  if (!a3 || (v8 = *(a3 + 64)) == 0)
  {
    v34 = 0;
    if (*(*(this + 3) + 96) > v6)
    {
      goto LABEL_43;
    }

LABEL_53:
    WebGPU::ComputePassEncoder::makeInvalid(this, &cfstr_Gpucomputepass_1.isa);
    goto LABEL_26;
  }

  v33 = *(v8 + 8);
  *(v8 + 8) = v33 + 1;
  v34 = *(v8 + 208) + *(v8 + 212);
  if (!v33)
  {
    WebGPU::BindGroupLayout::~BindGroupLayout(v8, a2);
    v8 = bmalloc::api::tzoneFree(v38, v39);
    if (*(*(this + 3) + 96) > v6)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

  *(v8 + 8) = v33;
  if (*(*(this + 3) + 96) <= v6)
  {
    goto LABEL_53;
  }

LABEL_43:
  if (*(a4 + 16) == 1 && *(a4 + 12) != v34)
  {
    goto LABEL_53;
  }

  if (!a3)
  {
    WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 15, &v74, a3);
    v35 = WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(*(this + 14), v74);
    WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 14, v35);
    v8 = WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 13, &v74);
    v6 = v74;
    if (v74 >= 0x20)
    {
      goto LABEL_110;
    }

    *(this + v74 + 32) = 0;
  }

  v36 = *(a3 + 64);
  if (v36)
  {
    v37 = *(a3 + 40);
    if (*(v37 + 8))
    {
      if (v37 == *(this + 3))
      {
        ++*(v36 + 2);
        if (v6 < 0x20)
        {
          v40 = this + 128;
          if (*(a4 + 16))
          {
            v41 = *(a4 + 12);
          }

          else
          {
            v41 = 0;
          }

          if (*(a4 + 16))
          {
            v42 = *a4;
          }

          else
          {
            v42 = 0;
          }

          v43 = WebGPU::BindGroupLayout::errorValidatingDynamicOffsets(v36, v42, v41, a3, &v40[4 * v6]);
          if (v43)
          {
            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUComputePassEncoder.setBindGroup: %@", v43];
            WebGPU::ComputePassEncoder::makeInvalid(this, v44);

LABEL_107:
            if (*(v36 + 2) == 1)
            {
              WebGPU::BindGroupLayout::~BindGroupLayout(v36, v24);
              bmalloc::api::tzoneFree(v66, v67);
            }

            else
            {
              --*(v36 + 2);
            }

LABEL_26:
            if (!a3)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }

          v68 = v36;
          if (*(a4 + 16) == 1 && *(a4 + 12))
          {
            v8 = WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this + 13, &v74, a4, v73);
          }

          else
          {
            v8 = WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 13, &v74);
            if (!v8)
            {
LABEL_69:
              v71 = 0;
              v72 = 0;
              v45 = *(a3 + 60);
              if (v45)
              {
                v46 = 0;
                v47 = 0;
                v48 = *(a3 + 48);
                v69 = v48 + 48 * v45;
                do
                {
                  if (!*(v48 + 40) && *(v48 + 12))
                  {
                    if (*(*(this + 12) + 172))
                    {
                      v49 = 0;
                    }

                    else
                    {
                      v49 = *(this + 1);
                    }

                    v50 = v49;
                    v51 = *(v48 + 12);
                    if (!v51)
                    {
                      goto LABEL_112;
                    }

                    v52 = v50;
                    [v50 useResources:*v48 count:v51 usage:*(v48 + 32)];
                  }

                  v73[0] = v48;
                  if (v47 == v72)
                  {
                    v8 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v71, v47 + 1, v73);
                    v47 = HIDWORD(v72);
                    v46 = v71;
                    *(v71 + HIDWORD(v72)) = *v8;
                  }

                  else
                  {
                    *(v46 + v47) = v48;
                  }

                  HIDWORD(v72) = ++v47;
                  v53 = *(v48 + 12);
                  if (v53)
                  {
                    v54 = 0;
                    v55 = 0;
                    while (v55 < *(v48 + 28))
                    {
                      v56 = *(v48 + 16) + v54;
                      v57 = *(this + 12);
                      v58 = *(v56 + 8);
                      v59 = *(v56 + 16);
                      if (v59 == 255)
                      {
                        v60 = -1;
                      }

                      else
                      {
                        v60 = v59;
                      }

                      if (v60 == 2)
                      {
                        if (v59 != 2)
                        {
                          goto LABEL_111;
                        }

                        if (v58)
                        {
                          WebGPU::ExternalTexture::setCommandEncoder(v58, *(this + 12));
                        }
                      }

                      else if (v60 == 1)
                      {
                        if (v59 != 1)
                        {
                          goto LABEL_111;
                        }

                        if (v58)
                        {
                          v61 = *(v57 + 200);
                          v73[0] = v61;
                          v62 = *(v58 + 116);
                          if (v62 == *(v58 + 112))
                          {
                            v63 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v58 + 104, v62 + 1, v73);
                            v62 = *(v58 + 116);
                            *(*(v58 + 104) + 8 * v62) = *v63;
                          }

                          else
                          {
                            *(*(v58 + 104) + 8 * v62) = v61;
                          }

                          *(v58 + 116) = v62 + 1;
                          WebGPU::CommandEncoder::addTexture(v57, *(v58 + 96));
                          v64 = *(v58 + 96);
                          if (*(v64 + 104) == 1 && (*(v64 + 105) & 1) == 0)
                          {
                            WebGPU::CommandEncoder::makeSubmitInvalid(v57, 0);
                          }
                        }
                      }

                      else
                      {
                        if (v59)
                        {
                          goto LABEL_111;
                        }

                        if (v58)
                        {
                          WebGPU::Buffer::setCommandEncoder(v58, *(this + 12));
                        }
                      }

                      ++v55;
                      v54 += 40;
                      if (v53 == v55)
                      {
                        goto LABEL_71;
                      }
                    }

LABEL_112:
                    __break(0xC471u);
                    JUMPOUT(0x2256943E0);
                  }

LABEL_71:
                  v48 += 48;
                }

                while (v48 != v69);
              }

              WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>(v73, this + 14, &v74, &v71);
              v70 = a3;
              v36 = v68;
              WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WebGPU::BindGroup const*>(this + 15, &v74, &v70, v73);
              v65 = v71;
              if (v71)
              {
                v71 = 0;
                LODWORD(v72) = 0;
                WTF::fastFree(v65, v24);
              }

              goto LABEL_107;
            }
          }

          if (v74 < 0x20)
          {
            *&v40[4 * v74] = 0;
            goto LABEL_69;
          }
        }

LABEL_110:
        __break(1u);
LABEL_111:
        mpark::throw_bad_variant_access(v8);
      }
    }
  }

  WebGPU::ComputePassEncoder::makeInvalid(this, &cfstr_Gpucomputepass_2.isa);
LABEL_27:
  if (*(a3 + 8) == 1)
  {
    WebGPU::BindGroup::~BindGroup(a3, v24, v25);
    bmalloc::api::tzoneFree(v27, v28);
    v26 = *this - 1;
    if (*this != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  --*(a3 + 8);
LABEL_29:
  v26 = *this - 1;
  if (*this != 1)
  {
LABEL_30:
    *this = v26;
    return;
  }

LABEL_32:
  WebGPU::ComputePassEncoder::~ComputePassEncoder(this);

  bmalloc::api::tzoneFree(v29, v30);
}

void sub_2256943EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebGPU::BindGroupLayout *a10, uint64_t a11, WebGPU::BindGroup *a12, WebGPU::ComputePassEncoder *a13, uint64_t a14, WTF *a15, int a16, int a17, char a18)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(a10, a2);
  if (v18)
  {
    WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(&a12, v20, v21);
  }

  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a13);
  _Unwind_Resume(a1);
}

void wgpuComputePassEncoderSetPipeline(WebGPU::ComputePassEncoder *this, uint64_t a2)
{
  ++*this;
  ++*(a2 + 8);
  v4 = *(this + 12);
  if (*v4 != 1)
  {
    v8 = *(this + 3);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_16;
      }
    }

    v11 = 0;
    v12 = *v8;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(*v8, &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x22AA683C0](v12);
    }

    ++*(v12 + 8);
    atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v12);
    }

LABEL_16:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::ComputePassEncoder::setPipeline(const ComputePipeline &)"];
    WebGPU::Device::generateAValidationError(v8, v14);

    v39 = 0;
    do
    {
      v16 = *v8;
      if ((*v8 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v8, v15);
        goto LABEL_22;
      }

      v17 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v17 != v16);
    if (v16 == 3)
    {
      WebGPU::Device::~Device(v8, v15);
      bmalloc::api::tzoneFree(v18, v19);
    }

    goto LABEL_22;
  }

  v5 = *(this + 1);
  if (!v5 || !*(v4 + 24))
  {
    goto LABEL_23;
  }

  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 1;
  if (*(*(v4 + 192) + 8))
  {
    v7 = *(v4 + 32) == v5;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
LABEL_6:
      *(v4 + 16) = v6;
      if (v7)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v4);
  bmalloc::api::tzoneFree(v26, v27);
  if (!v7)
  {
LABEL_22:
    v5 = *(this + 1);
LABEL_23:
    *(this + 1) = 0;

    goto LABEL_24;
  }

LABEL_33:
  if (*(a2 + 16) && *(*(a2 + 56) + 128) == 1 && (v28 = *(a2 + 24), *(v28 + 8)) && v28 == *(this + 3))
  {
    ++*(a2 + 8);
    v29 = *(this + 11);
    *(this + 11) = a2;
    v30 = a2;
    if (v29)
    {
      if (*(v29 + 2) == 1)
      {
        WebGPU::ComputePipeline::~ComputePipeline(v29, a2);
        bmalloc::api::tzoneFree(v31, v32);
        v30 = *(this + 11);
      }

      else
      {
        --*(v29 + 2);
        v30 = a2;
      }
    }

    v38 = 0;
    v33 = *(v30 + 56);
    ++*(v33 + 2);
    v39 = v33;
    v34 = WebGPU::PipelineLayout::sizeOfComputeDynamicOffsets(v33);
    WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(this + 56, &v38, v34);
    if (*(v33 + 2) == 1)
    {
      WebGPU::PipelineLayout::~PipelineLayout(v33, v20);
      bmalloc::api::tzoneFree(v35, v36);
    }

    else
    {
      --*(v33 + 2);
    }

    *(this + 14) = 0u;
    *(this + 15) = 0u;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
    *(this + 10) = 0u;
    *(this + 11) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
    v37 = *(a2 + 32);
    *(this + 6) = *(a2 + 48);
    *(this + 2) = v37;
  }

  else
  {
    WebGPU::ComputePassEncoder::makeInvalid(this, 0);
  }

LABEL_24:
  if (*(a2 + 8) == 1)
  {
    WebGPU::ComputePipeline::~ComputePipeline(a2, v20);
    bmalloc::api::tzoneFree(v22, v23);
    v21 = *this - 1;
    if (*this != 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    --*(a2 + 8);
    v21 = *this - 1;
    if (*this != 1)
    {
LABEL_26:
      *this = v21;
      return;
    }
  }

  WebGPU::ComputePassEncoder::~ComputePassEncoder(this);

  bmalloc::api::tzoneFree(v24, v25);
}

void sub_2256947B8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, WebGPU::ComputePipeline *);
  va_copy(va2, va1);
  v8 = va_arg(va2, WebGPU::ComputePassEncoder *);
  v10 = va_arg(va2, void);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va2, a2);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(va, v5);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256947DC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::ComputePipeline *);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(va, a2);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256947F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, WebGPU::ComputePipeline *);
  va_copy(va2, va1);
  v9 = va_arg(va2, WebGPU::ComputePassEncoder *);
  v11 = va_arg(va2, void);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v5);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(va, v6);
  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuComputePassEncoderSetLabel(id *a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_2838D6D18;
  }

  [a1[1] setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*a1 == 1)
  {
    WebGPU::ComputePassEncoder::~ComputePassEncoder(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_225694930(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::ComputePassEncoder *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::ComputePassEncoder,WTF::RawPtrTraits<WebGPU::ComputePassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::ComputePassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

uint64_t *WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void const* const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x225694BA8);
  }

  v7 = result;
  v8 = *result;
  if (!*result)
  {
    v9 = a2;
    result = WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v9;
    v8 = *v7;
    v5 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = v8 + 16 * *(v8 - 4);
        *a4 = v15;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        *(v15 + 2) = *a3;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      *(v17 + 2) = 0;
      --*(*v7 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  *(v15 + 2) = *a3;
  v19 = *v7;
  if (*v7)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(v7, 8u, v15);
      v15 = result;
      v19 = *v7;
      if (!*v7)
      {
LABEL_18:
        v23 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v23 = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(v7, v23 << (6 * v21 >= (2 * v23)), v15);
    v15 = result;
    v19 = *v7;
    if (!*v7)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v19 + 16 * v23;
  *(a4 + 16) = 1;
  return result;
}

_OWORD *WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v12 = a2;
  v13 = v9 + 6;
  do
  {
    *(v13 - 1) = 0;
    *v13 = 0;
    v13 += 4;
    --v12;
  }

  while (v12);
LABEL_7:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (v6 + 16 * v14);
      if ((*v16 + 1) >= 2)
      {
        v17 = *a1;
        if (*a1)
        {
          v18 = *(v17 - 8);
        }

        else
        {
          v18 = 0;
        }

        v19 = (~(*v16 << 32) + *v16) ^ ((~(*v16 << 32) + *v16) >> 22);
        v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
        v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
        v22 = v18 & ((v21 >> 31) ^ v21);
        v23 = 1;
        do
        {
          v24 = v22;
          v25 = *(v17 + 16 * v22);
          v22 = (v22 + v23++) & v18;
        }

        while (v25);
        v26 = (v17 + 16 * v24);
        *v26 = *v16;
        if (v16 == a3)
        {
          v15 = v26;
        }
      }

      ++v14;
    }

    while (v14 != v7);
  }

  else
  {
    v15 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v15;
}

uint64_t WebGPU::addTextureToActiveResources(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  v15 = a2;
  v16 = v15;
  if ((a3 & 0xFFFFFFF0) != 0)
  {
    v17 = v15;
    v18 = [v17 parentTexture];
    v19 = v18;
    v16 = v17;
    if (v18)
    {
      v16 = v18;

      a6 = [v17 parentRelativeLevel];
      a7 = [v17 parentRelativeSlice];
    }
  }

  EntryMapKey = WebGPU::BindGroup::makeEntryMapKey(a6, a7, a8);
  v70 = EntryMapKey;
  v21 = *a4;
  if (!*a4)
  {
LABEL_47:
    if ((a3 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_14;
  }

  if (a1 == -1)
  {
    goto LABEL_84;
  }

  if (!a1)
  {
    __break(0xC471u);
    JUMPOUT(0x225695238);
  }

  v22 = *(v21 - 8);
  v23 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
  v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
  v26 = v22 & ((v25 >> 31) ^ v25);
  v27 = *(v21 + 16 * v26);
  if (v27 != a1)
  {
    v28 = 1;
    while (v27)
    {
      v26 = (v26 + v28) & v22;
      v27 = *(v21 + 16 * v26);
      ++v28;
      if (v27 == a1)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    LODWORD(v21) = 0;
    if ((a3 & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_12:
  if (v26 == *(v21 - 4))
  {
    goto LABEL_13;
  }

  v49 = v21 + 16 * v26;
  v52 = *(v49 + 8);
  v50 = (v49 + 8);
  v51 = v52;
  if (!v52)
  {
    goto LABEL_46;
  }

  if (EntryMapKey == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x225695298);
  }

  if (EntryMapKey == -1)
  {
LABEL_84:
    __break(0xC471u);
    JUMPOUT(0x225695218);
  }

  v53 = *(v51 - 8);
  v54 = (EntryMapKey + ~(EntryMapKey << 32)) ^ ((EntryMapKey + ~(EntryMapKey << 32)) >> 22);
  v55 = 9 * ((v54 + ~(v54 << 13)) ^ ((v54 + ~(v54 << 13)) >> 8));
  v56 = (v55 ^ (v55 >> 15)) + ~((v55 ^ (v55 >> 15)) << 27);
  v57 = v53 & ((v56 >> 31) ^ v56);
  v58 = *(v51 + 16 * v57);
  if (v58 != EntryMapKey)
  {
    v59 = 1;
    while (v58 != -1)
    {
      v57 = (v57 + v59) & v53;
      v58 = *(v51 + 16 * v57);
      ++v59;
      if (v58 == EntryMapKey)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v57 == *(v51 - 4))
  {
LABEL_46:
    v69 = __PAIR64__(a5, a3);
    WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WebGPU::EntryUsageData>(&v68, v50, &v70, &v69);
    LODWORD(v21) = 1;
    goto LABEL_47;
  }

  v63 = v51 + 16 * v57;
  v64 = *(v63 + 8);
  v65 = *(v63 + 12);
  v66 = v64 | a3;
  if (v65 != a5)
  {
    if (a3 == 512)
    {
      if (v64 == 512)
      {
        goto LABEL_50;
      }
    }

    else if (a3 == 128 && v64 == 128)
    {
      goto LABEL_50;
    }
  }

  LODWORD(v21) = 1;
  a3 = v66;
  if ((v66 & 4) == 0)
  {
LABEL_48:
    if (a3 == 128 || (a3 & 0x80) == 0)
    {
      if ((a3 & 0x200) != 0)
      {
        v29 = a3 == 512;
        if (a3 != 512)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v60 = (a3 >> 4) & 1;
        if (a3 == 16)
        {
          v60 = 0;
        }

        if ((v21 | v60))
        {
          v29 = v60 ^ 1u;
          goto LABEL_69;
        }
      }

LABEL_17:
      v69 = 0;
      v67 = __PAIR64__(a5, a3);
      WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WebGPU::EntryUsageData>(&v68, &v69, &v70, &v67);
      if (a1 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225695258);
      }

      if (!a1)
      {
        __break(0xC471u);
        JUMPOUT(0x225695278);
      }

      v30 = *a4;
      if (!*a4)
      {
        WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(a4, 8u);
        v30 = *a4;
      }

      v31 = *(v30 - 8);
      v32 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
      v33 = 9 * ((v32 + ~(v32 << 13)) ^ ((v32 + ~(v32 << 13)) >> 8));
      v34 = (v33 ^ (v33 >> 15)) + ~((v33 ^ (v33 >> 15)) << 27);
      v35 = v31 & ((v34 >> 31) ^ v34);
      v36 = (v30 + 16 * v35);
      v37 = *v36;
      if (*v36)
      {
        v38 = 0;
        v39 = 1;
        while (v37 != a1)
        {
          if (v37 == -1)
          {
            v38 = v36;
          }

          v35 = (v35 + v39) & v31;
          v36 = (v30 + 16 * v35);
          v37 = *v36;
          ++v39;
          if (!*v36)
          {
            if (v38)
            {
              *v38 = 0;
              v38[1] = 0;
              --*(*a4 - 16);
              v36 = v38;
            }

            goto LABEL_29;
          }
        }

        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(&v68, &v69);
        v61 = v36[1];
        v36[1] = v68;
        *&v68 = v61;
        if (v61)
        {
          WTF::fastFree((v61 - 16), v40);
        }

        goto LABEL_66;
      }

LABEL_29:
      *v36 = a1;
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(&v68, &v69);
      v41 = v68;
      *&v68 = 0;
      v42 = v36[1];
      v36[1] = v41;
      if (v42)
      {
        WTF::fastFree((v42 - 16), v40);
        if (v68)
        {
          WTF::fastFree((v68 - 16), v40);
        }
      }

      v43 = *a4;
      if (*a4)
      {
        v44 = *(v43 - 16);
        v45 = *(v43 - 12) + 1;
        *(v43 - 12) = v45;
        v46 = (v44 + v45);
        v47 = *(v43 - 4);
        if (v47 <= 0x400)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v45 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v46 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v47 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_34:
          if (3 * v47 <= 4 * v46)
          {
            if (!v47)
            {
              v48 = 8;
LABEL_65:
              WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(a4, v48);
              goto LABEL_66;
            }

LABEL_64:
            v48 = v47 << (6 * v45 >= (2 * v47));
            goto LABEL_65;
          }

LABEL_66:
          if (v69)
          {
            WTF::fastFree((v69 - 16), v40);
          }

          v29 = 1;
          goto LABEL_69;
        }
      }

      if (v47 <= 2 * v46)
      {
        goto LABEL_64;
      }

      goto LABEL_66;
    }

LABEL_50:
    v29 = 0;
    goto LABEL_69;
  }

LABEL_14:
  v29 = a3 == 4;
  if (a3 != 4)
  {
    LOBYTE(v21) = 1;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_69:

  return v29;
}

_OWORD *WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WebGPU::EntryUsageData>(_OWORD *result, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22569553CLL);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,MTLBindingAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,MTLBindingAccess>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
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
        *v7 = v15;
        *(v7 + 1) = v24;
        *(v7 + 16) = 0;
        v15[1] = *a4;
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
      *v17 = xmmword_225881D00;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v15[1] = *a4;
  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,MTLBindingAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,MTLBindingAccess>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, v15);
      v15 = result;
      v19 = *a2;
      if (!*a2)
      {
LABEL_18:
        v23 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v23 = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,MTLBindingAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,MTLBindingAccess>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v15);
    v15 = result;
    v19 = *a2;
    if (!*a2)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *v7 = v15;
  *(v7 + 1) = v19 + 16 * v23;
  *(v7 + 16) = 1;
  return result;
}

void WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    v7 = 16 * a2;
    v9 = WTF::fastMalloc((v7 + 16));
    v10 = v9 + 4;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  v6 = 0;
  v7 = 16 * a2;
  v9 = WTF::fastMalloc((v7 + 16));
  v10 = v9 + 4;
  if (a2)
  {
LABEL_3:
    bzero(v10, v7);
  }

LABEL_4:
  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v4 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          if (v26)
          {
            WTF::fastFree((v26 - 16), v8);
            v14 = *v13;
          }

          *v25 = v14;
          v25[1] = 0;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v15 = v13[1];
          if (!v15)
          {
            goto LABEL_6;
          }

LABEL_10:
          WTF::fastFree((v15 - 16), v8);
          goto LABEL_6;
        }

        v15 = v13[1];
        if (v15)
        {
          goto LABEL_10;
        }
      }

LABEL_6:
      if (++v11 == v12)
      {
        goto LABEL_23;
      }
    }
  }

  if (v4)
  {
LABEL_23:

    WTF::fastFree((v4 - 16), v8);
  }
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::EntryUsageData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(void *result, void *a2)
{
  *result = 0;
  if (!*a2)
  {
    return result;
  }

  v2 = *a2;
  v3 = *(*a2 - 12);
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

  v12 = WTF::fastMalloc((16 * v11 + 16));
  v13 = v12 + 12;
  v14 = v11 & 0xFFFFFFFC;
  do
  {
    *(v13 - 2) = xmmword_225881D00;
    *(v13 - 1) = xmmword_225881D00;
    *v13 = xmmword_225881D00;
    v13[1] = xmmword_225881D00;
    v13 += 4;
    v14 -= 4;
  }

  while (v14);
  v15 = v11 - (v11 & 0xFFFFFFFC);
  result = v10;
  if (v15)
  {
    v16 = (v12 + ((16 * v11) & 0xFFFFFFFC0) + 16);
    do
    {
      *v16++ = xmmword_225881D00;
      --v15;
    }

    while (v15);
  }

  *v10 = v12 + 4;
  v12[2] = v11 - 1;
  v12[3] = v11;
  *v12 = 0;
  v12[1] = v3;
  v17 = *a2;
  if (!*a2)
  {
    v19 = 0;
    v18 = 0;
    goto LABEL_29;
  }

  v18 = *(v17 - 1);
  v19 = &v17[2 * v18];
  if (!*(v17 - 3))
  {
LABEL_29:
    v21 = v19;
    v19 = &v17[2 * v18];
    goto LABEL_30;
  }

  if (!v18)
  {
    v22 = 0;
    v21 = *a2;
    goto LABEL_35;
  }

  v20 = 16 * v18;
  v21 = *a2;
  while (*v21 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v21 += 2;
    v20 -= 16;
    if (!v20)
    {
      v21 = v19;
      break;
    }
  }

LABEL_30:
  if (!v17)
  {
    goto LABEL_36;
  }

  v22 = *(v17 - 1);
LABEL_35:
  v17 += 2 * v22;
LABEL_36:
  while (v21 != v17)
  {
    v23 = *v10;
    if (*v10)
    {
      v24 = *(v23 - 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *v21 + ~(*v21 << 32);
    v26 = (v25 ^ (v25 >> 22)) + ~((v25 ^ (v25 >> 22)) << 13);
    v27 = (9 * (v26 ^ (v26 >> 8))) ^ ((9 * (v26 ^ (v26 >> 8))) >> 15);
    v28 = v24 & (((v27 + ~(v27 << 27)) >> 31) ^ (v27 + ~(v27 << 27)));
    v29 = 1;
    do
    {
      v30 = v28;
      v31 = *(v23 + 16 * v28);
      v28 = (v28 + v29++) & v24;
    }

    while (v31 != -1);
    v32 = (v23 + 16 * v30);
    v33 = v21[1];
    *v32 = *v21;
    v32[1] = v33;
    do
    {
      v21 += 2;
    }

    while (v21 != v19 && *v21 >= 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

WebGPU::BindGroup *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::deref(WebGPU::BindGroup *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
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

WebGPU::ComputePipeline **WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(WebGPU::ComputePipeline **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::ComputePipeline::~ComputePipeline(v2, a2);
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

WebGPU::ComputePipeline *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ComputePipeline>::deref(WebGPU::ComputePipeline *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::ComputePipeline::~ComputePipeline(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::ComputePassEncoder::runPredispatchIndirectCallValidation(WebGPU::Buffer const&,unsigned long long)::$_0 &&>>(void **a1)
{
  v1 = **a1;
  v2 = *((*v1)[3] + 220);
  v3 = objc_opt_new();
  [v3 setFastMathEnabled:1];
  v4 = *v1[1];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[[kernel]] void csDispatchClamp(device const uint* indirectBuffer, device uint* dispatchCallBuffer, uint index [[thread_position_in_grid]]) { dispatchCallBuffer[index] = metal::select(indirectBuffer[index], 0u, indirectBuffer[index] > %u) }", v2];;
  v11 = 0;
  v6 = [v4 newLibraryWithSource:v5 options:v3 error:&v11];
  v7 = v11;

  if (v7)
  {
    v10 = v7;
    WTFLogAlways();
  }

  v8 = [v6 newFunctionWithName:{@"csDispatchClamp", v10}];
  v9 = _MergedGlobals_0;
  _MergedGlobals_0 = v8;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, int *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v12 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v12 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v13 = 0;
LABEL_10:
    v16 = a2 - v13;
    v17 = &v9[4 * v13 + 6];
    do
    {
      *(v17 - 2) = -1;
      *v17 = 0;
      v17 += 2;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v13 = a2 & 0xFFFFFFFE;
  v14 = v9 + 10;
  v15 = v13;
  do
  {
    *(v14 - 6) = -1;
    *(v14 - 2) = -1;
    *(v14 - 2) = 0;
    *v14 = 0;
    v14 += 4;
    v15 -= 2;
  }

  while (v15);
  if (v13 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v12;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v22 = (v6 + 16 * v18);
      v23 = *v22;
      if (*v22 != -2)
      {
        if (v23 == -1)
        {
          v24 = *(v22 + 1);
          *(v22 + 1) = 0;
          if (v24)
          {
            if (*(v24 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v24, v10, v11);
              bmalloc::api::tzoneFree(v33, v34);
            }

            else
            {
              --*(v24 + 2);
            }
          }
        }

        else
        {
          v25 = *a1;
          if (*a1)
          {
            v26 = *(v25 - 8);
          }

          else
          {
            v26 = 0;
          }

          v27 = 0;
          v28 = 9 * ((v23 + ~(v23 << 15)) ^ ((v23 + ~(v23 << 15)) >> 10));
          v29 = ((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) ^ (((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) >> 16);
          do
          {
            v30 = v29 & v26;
            v29 = ++v27 + v30;
          }

          while (*(v25 + 16 * v30) != -1);
          v31 = v25 + 16 * v30;
          v32 = *(v31 + 8);
          *(v31 + 8) = 0;
          if (v32)
          {
            if (*(v32 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v32, v10, v11);
              bmalloc::api::tzoneFree(v35, v36);
            }

            else
            {
              --*(v32 + 2);
            }
          }

          *v31 = *v22;
          v37 = *(v22 + 1);
          *(v22 + 1) = 0;
          *(v31 + 8) = v37;
          v38 = *(v22 + 1);
          *(v22 + 1) = 0;
          if (v38)
          {
            if (*(v38 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v38, v10, v11);
              bmalloc::api::tzoneFree(v20, v21);
            }

            else
            {
              --*(v38 + 2);
            }
          }

          if (v22 == a3)
          {
            v19 = v31;
          }
        }
      }

      ++v18;
    }

    while (v18 != v7);
  }

  else
  {
    v19 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v19;
}

uint64_t *WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v3 = *result;
  if (*result)
  {
    if ((v3 + 24 * *(v3 - 4)) == a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  *a2 = -2;
  v4 = *(a2 + 1);
  if (v4)
  {
    *(a2 + 1) = 0;
    *(a2 + 4) = 0;
    v5 = result;
    WTF::fastFree(v4, a2);
    result = v5;
    v3 = *v5;
  }

  v6 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v6;
  v7 = *(v3 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(result, v7 >> 1, 0);
  }

  return result;
}

int *WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225695F98);
  }

  v2 = *(a1 - 8);
  v3 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  v5 = v2 & (v4 ^ HIWORD(v4));
  v6 = (a1 + 24 * v5);
  v7 = *v6;
  if (*v6 == a2)
  {
    return v6;
  }

  v8 = 1;
  while (v7 != -1)
  {
    v5 = (v5 + v8) & v2;
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    ++v8;
    if (*v6 == a2)
    {
      return v6;
    }
  }

  return (a1 + 24 * *(a1 - 4));
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, int *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v11 = a2;
  v12 = v8 + 6;
  do
  {
    *(v12 - 2) = -1;
    *v12 = 0;
    v12[1] = 0;
    v12 += 3;
    --v11;
  }

  while (v11);
LABEL_7:
  *a1 = v10;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v5 + 24 * v13);
      v16 = *v15;
      if (*v15 != -2)
      {
        if (v16 == -1)
        {
          v17 = *(v15 + 1);
          if (v17)
          {
            *(v15 + 1) = 0;
            v15[4] = 0;
            WTF::fastFree(v17, v9);
          }
        }

        else
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = 0;
          v21 = 9 * ((v16 + ~(v16 << 15)) ^ ((v16 + ~(v16 << 15)) >> 10));
          v22 = ((v21 ^ (v21 >> 6)) + ~((v21 ^ (v21 >> 6)) << 11)) ^ (((v21 ^ (v21 >> 6)) + ~((v21 ^ (v21 >> 6)) << 11)) >> 16);
          do
          {
            v23 = v22 & v19;
            v24 = v18 + 24 * v23;
            v22 = ++v20 + v23;
          }

          while (*v24 != -1);
          v25 = *(v24 + 8);
          if (v25)
          {
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            WTF::fastFree(v25, v9);
            v16 = *v15;
          }

          *v24 = v16;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          v26 = *(v15 + 1);
          *(v15 + 1) = 0;
          *(v24 + 8) = v26;
          LODWORD(v26) = v15[4];
          v15[4] = 0;
          *(v24 + 16) = v26;
          LODWORD(v26) = v15[5];
          v15[5] = 0;
          *(v24 + 20) = v26;
          v27 = *(v15 + 1);
          if (v27)
          {
            *(v15 + 1) = 0;
            v15[4] = 0;
            WTF::fastFree(v27, v9);
          }

          if (v15 == a3)
          {
            v14 = v24;
          }
        }
      }

      ++v13;
    }

    while (v13 != v6);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

WTF *WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225696418);
  }

  v8 = *a1;
  if (!*a1)
  {
    v9 = a2;
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    a2 = v9;
    v8 = *a1;
    v4 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 24 * v13);
  v15 = *v14;
  if (*v14 == -1)
  {
LABEL_13:
    *v14 = v4;
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = *(a3 + 3);
    *a3 = 0;
    a3[1] = 0;
    result = *(v14 + 1);
    if (result)
    {
      *(v14 + 1) = 0;
      *(v14 + 4) = 0;
      result = WTF::fastFree(result, a2);
      v8 = *a1;
    }

    *(v14 + 1) = v18;
    *(v14 + 4) = v19;
    *(v14 + 5) = v20;
    v22 = *(v8 - 16);
    v23 = *(v8 - 12) + 1;
    *(v8 - 12) = v23;
    v24 = (v22 + v23);
    v25 = *(v8 - 4);
    if (v25 > 0x400)
    {
      if (v25 > 2 * v24)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (3 * v25 > 4 * v24)
      {
LABEL_23:
        *a4 = v14;
        *(a4 + 8) = v8 + 24 * v25;
        *(a4 + 16) = 1;
        return result;
      }

      if (!v25)
      {
        result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, 8u, v14);
        v14 = result;
        v8 = *a1;
        if (!*a1)
        {
LABEL_19:
          LODWORD(v25) = 0;
          goto LABEL_23;
        }

LABEL_22:
        LODWORD(v25) = *(v8 - 4);
        goto LABEL_23;
      }
    }

    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v25 << (6 * v23 >= (2 * v25)), v14);
    v14 = result;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v4)
  {
    if (v15 == -2)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v10;
    v14 = (v8 + 24 * v13);
    v15 = *v14;
    ++v17;
    if (*v14 == -1)
    {
      if (v16)
      {
        *v16 = -1;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        v8 = *a1;
        --*(*a1 - 16);
        v4 = *a2;
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

  v26 = v8 + 24 * *(v8 - 4);
  *a4 = v14;
  *(a4 + 8) = v26;
  *(a4 + 16) = 0;
  result = *(v14 + 1);
  if (result)
  {
    *(v14 + 1) = 0;
    *(v14 + 4) = 0;
    result = WTF::fastFree(result, a2);
  }

  v27 = *a3;
  *a3 = 0;
  *(v14 + 1) = v27;
  LODWORD(v27) = *(a3 + 2);
  *(a3 + 2) = 0;
  *(v14 + 4) = v27;
  LODWORD(v27) = *(a3 + 3);
  *(a3 + 3) = 0;
  *(v14 + 5) = v27;
  return result;
}

void sub_22569643C(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>(WTF *result, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == -2)
  {
    goto LABEL_53;
  }

  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256967E4);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a3;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v9;
    v8 = *a2;
    v4 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 24 * v13);
  v15 = *v14;
  if (*v14 == -1)
  {
LABEL_13:
    *v14 = v4;
    v18 = *(a4 + 12);
    if (v18)
    {
      if (v18 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x2256967ECLL);
      }

      v19 = WTF::fastMalloc((8 * v18));
      memcpy(v19, *a4, 8 * *(a4 + 12));
      result = *(v14 + 1);
      if (!result)
      {
LABEL_23:
        *(v14 + 1) = v19;
        *(v14 + 4) = v18;
        *(v14 + 5) = v18;
        v26 = *a2;
        if (*a2)
        {
          v27 = *(v26 - 16);
          v28 = *(v26 - 12) + 1;
          *(v26 - 12) = v28;
          v29 = (v27 + v28);
          v30 = *(v26 - 4);
          if (v30 <= 0x400)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v28 = 1;
          MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
          v29 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
          v30 = MEMORY[0xFFFFFFFFFFFFFFFC];
          if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
          {
LABEL_25:
            if (3 * v30 > 4 * v29)
            {
LABEL_33:
              *v7 = v14;
              *(v7 + 1) = v26 + 24 * v30;
              *(v7 + 16) = 1;
              return result;
            }

            if (!v30)
            {
              result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, v14);
              v14 = result;
              v26 = *a2;
              if (!*a2)
              {
LABEL_28:
                LODWORD(v30) = 0;
                goto LABEL_33;
              }

LABEL_32:
              LODWORD(v30) = *(v26 - 4);
              goto LABEL_33;
            }

LABEL_31:
            result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, v30 << (6 * v28 >= (2 * v30)), v14);
            v14 = result;
            v26 = *a2;
            if (!*a2)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }

        if (v30 > 2 * v29)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v19 = 0;
      result = *(v14 + 1);
      if (!result)
      {
        goto LABEL_23;
      }
    }

    *(v14 + 1) = 0;
    *(v14 + 4) = 0;
    result = WTF::fastFree(result, a2);
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v4)
  {
    if (v15 == -2)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v10;
    v14 = (v8 + 24 * v13);
    v15 = *v14;
    ++v17;
    if (*v14 == -1)
    {
      if (v16)
      {
        *v16 = -1;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        --*(*a2 - 16);
        v4 = *a3;
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

  v20 = v8 + 24 * *(v8 - 4);
  *v7 = v14;
  *(v7 + 1) = v20;
  *(v7 + 16) = 0;
  v21 = (v14 + 8);
  if ((v14 + 8) != a4)
  {
    v22 = *(v14 + 5);
    v23 = *(a4 + 12);
    if (v22 > v23)
    {
      *(v14 + 5) = v23;
      v24 = *v21;
      if (v23)
      {
LABEL_20:
        memmove(v24, *a4, 8 * v23);
        v25 = *(v14 + 5);
        v24 = *(v14 + 1);
LABEL_49:
        result = memcpy(&v24[8 * v25], (*a4 + 8 * v25), 8 * (*(a4 + 12) - v25));
        *(v14 + 5) = *(a4 + 12);
        return result;
      }

LABEL_48:
      v25 = 0;
      goto LABEL_49;
    }

    v31 = *(v14 + 4);
    if (v23 <= v31)
    {
      goto LABEL_47;
    }

    if (v31)
    {
      if (v22)
      {
        *(v14 + 5) = 0;
      }

      v32 = *v21;
      if (*v21)
      {
        *(v14 + 1) = 0;
        *(v14 + 4) = 0;
        WTF::fastFree(v32, a2);
        v31 = *(v14 + 4);
      }
    }

    v33 = *(a4 + 12);
    if (v31 >= v33)
    {
LABEL_47:
      v23 = *(v14 + 5);
      v24 = *v21;
      if (v23)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

    if (!(v33 >> 29))
    {
      v34 = *v21;
      v35 = *(v14 + 5);
      v36 = WTF::fastMalloc((8 * v33));
      *(v14 + 4) = v33;
      *(v14 + 1) = v36;
      memcpy(v36, v34, 8 * v35);
      if (v34)
      {
        if (*v21 == v34)
        {
          *(v14 + 1) = 0;
          *(v14 + 4) = 0;
        }

        WTF::fastFree(v34, v37);
      }

      goto LABEL_47;
    }

LABEL_53:
    __break(0xC471u);
    JUMPOUT(0x2256967C4);
  }

  return result;
}

void sub_2256967F8(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WebGPU::BindGroup *WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WebGPU::BindGroup const*>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225696A80);
  }

  v7 = *a1;
  if (!*a1)
  {
    v8 = a2;
    v9 = a3;
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, 8u, 0);
    a2 = v8;
    a3 = v9;
    v7 = *a1;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v7 + 16 * v13);
  v15 = *v14;
  if (*v14 == -1)
  {
LABEL_13:
    *v14 = v4;
    v18 = *a3;
    if (*a3)
    {
      ++*(v18 + 8);
    }

    result = *(v14 + 1);
    *(v14 + 1) = v18;
    if (result)
    {
      if (*(result + 2) == 1)
      {
        WebGPU::BindGroup::~BindGroup(result, a2, a3);
        result = bmalloc::api::tzoneFree(v22, v23);
        v7 = *a1;
      }

      else
      {
        --*(result + 2);
      }
    }

    v24 = *(v7 - 16);
    v25 = *(v7 - 12) + 1;
    *(v7 - 12) = v25;
    v26 = (v24 + v25);
    v27 = *(v7 - 4);
    if (v27 > 0x400)
    {
      if (v27 > 2 * v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (3 * v27 > 4 * v26)
      {
LABEL_33:
        *a4 = v14;
        *(a4 + 8) = v7 + 16 * v27;
        *(a4 + 16) = 1;
        return result;
      }

      if (!v27)
      {
        result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, 8u, v14);
        v14 = result;
        v7 = *a1;
        if (!*a1)
        {
LABEL_29:
          v27 = 0;
          goto LABEL_33;
        }

LABEL_32:
        v27 = *(v7 - 4);
        goto LABEL_33;
      }
    }

    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v27 << (6 * v25 >= (2 * v27)), v14);
    v14 = result;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v4)
  {
    if (v15 == -2)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v10;
    v14 = (v7 + 16 * v13);
    v15 = *v14;
    ++v17;
    if (*v14 == -1)
    {
      if (v16)
      {
        *v16 = -1;
        *(v16 + 1) = 0;
        --*(v7 - 16);
        v4 = *a2;
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

  v20 = *(v7 - 4);
  *a4 = v14;
  *(a4 + 8) = v7 + 16 * v20;
  *(a4 + 16) = 0;
  v21 = *a3;
  if (*a3)
  {
    ++*(v21 + 8);
  }

  result = *(v14 + 1);
  *(v14 + 1) = v21;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      WebGPU::BindGroup::~BindGroup(result, a2, a3);

      return bmalloc::api::tzoneFree(v28, v29);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}