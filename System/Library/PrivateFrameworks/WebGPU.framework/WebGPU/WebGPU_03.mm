void sub_225681FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c69_ZTSKZN6WebGPU13CommandBuffer22makeInvalidDueToCommitEP8NSStringE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
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
      goto LABEL_4;
    }
  }

  v5 = 0;
  v6 = *v2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*v2, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v9 = result;
    MEMORY[0x22AA683C0](v6);
    result = v9;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      goto LABEL_7;
    }

LABEL_4:
    *(result + 32) = v2;
    return result;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

LABEL_7:
  v8 = result;
  result = WTF::Lock::unlockSlow(v6);
  *(v8 + 32) = v2;
  return result;
}

atomic_ullong *__destroy_helper_block_ea8_32c69_ZTSKZN6WebGPU13CommandBuffer22makeInvalidDueToCommitEP8NSStringE3__0(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    while (1)
    {
      v4 = *result;
      if ((*result & 1) == 0)
      {
        break;
      }

      v5 = *result;
      atomic_compare_exchange_strong_explicit(result, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        if (v4 == 3)
        {
          WebGPU::CommandBuffer::~CommandBuffer(result);

          return bmalloc::api::tzoneFree(v6, v7);
        }

        return result;
      }
    }

    v8 = *result;

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v8, a2);
  }

  return result;
}

atomic_ullong **WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(atomic_ullong **result, void *a2)
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
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v8, a2);
        return v9;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::CommandBuffer::~CommandBuffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      return v5;
    }
  }

  return result;
}

atomic_ullong *wgpuCommandBufferReference(atomic_ullong *result)
{
  while (1)
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v2 = *result;
    atomic_compare_exchange_strong_explicit(result, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return result;
    }
  }

  v3 = 0;
  v4 = *result;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(*result, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x22AA683C0](v4);
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  else
  {
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  return WTF::Lock::unlockSlow(v4);
}

atomic_ullong *wgpuCommandBufferRelease(atomic_ullong *result, void *a2)
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

WTF::StringImpl *wgpuCommandBufferSetLabel(uint64_t a1, char *__s)
{
  while (1)
  {
    v4 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v5 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = *a1;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
LABEL_6:
      if (!__s)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v7);
  if (__s)
  {
LABEL_7:
    strlen(__s);
  }

LABEL_10:
  WTF::String::fromUTF8();
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v18);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v9);
    }
  }

  else
  {
    v18 = &stru_2838D6D18;
  }

  [*(a1 + 8) setLabel:v18];
  v10 = v18;
  v18 = 0;

  result = v17;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v17, v11);
  }

  do
  {
    v13 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*a1, v11);
    }

    v14 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v14 != v13);
  if (v13 == 3)
  {
    WebGPU::CommandBuffer::~CommandBuffer(a1);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void sub_2256824E4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, atomic_ullong *a11, __int16 a12, char a13, char a14)
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
      WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::~$_0(&a11, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(void *result, void *a2)
{
  v2 = result[1];
  *result = &unk_2838D2C20;
  result[1] = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v8, a2);
        return v9;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = result;
      WebGPU::CommandBuffer::~CommandBuffer(v2);
      bmalloc::api::tzoneFree(v6, v7);
      return v5;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_2838D2C20;
  *(a1 + 1) = 0;
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
          WebGPU::CommandBuffer::~CommandBuffer(v2);
          bmalloc::api::tzoneFree(v6, v7);
          a1 = v5;
        }

        goto LABEL_6;
      }
    }

    v9 = *v2;
    v10 = a1;
    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v9, a2);
    a1 = v10;
  }

  else
  {
LABEL_6:
  }

  return WTF::fastFree(a1, a2);
}

WebGPU::CommandEncoder *WTF::Detail::CallableWrapper<WebGPU::CommandBuffer::makeInvalidDueToCommit(NSString *)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 8);
  result = *(v4 + 104);
  *(v4 + 104) = 0;
  if (result)
  {
    if (*(result + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(result);

      return bmalloc::api::tzoneFree(v6, v7);
    }

    else
    {
      --*(result + 4);
    }
  }

  return result;
}

char *WTF::Vector<WTF::Function<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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
    JUMPOUT(0x225682900);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(uint64_t result, void *a2)
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
    WebGPU::CommandBuffer::~CommandBuffer(v5);
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

void WebGPU::CommandEncoder::makeInvalid(WebGPU::CommandEncoder *this, NSString *a2)
{
  v21 = a2;
  v4 = *(this + 3);
  if (!v4 || [v4 status] > 1)
  {
    goto LABEL_21;
  }

  WebGPU::CommandEncoder::endEncoding(this, *(this + 4));
  v5 = *(this + 5);
  *(this + 5) = 0;

  v6 = *(this + 4);
  *(this + 4) = 0;

  v7 = *(*(this + 24) + 16);
  atomic_fetch_add(v7, 1u);
  WebGPU::Queue::removeMTLCommandBuffer(v7, *(this + 3));
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WebGPU::Queue::~Queue(v7);
    bmalloc::api::tzoneFree(v19, v20);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;

  objc_storeStrong(this + 6, a2);
  v9 = *(this + 9);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = 0;
  v11 = *(this + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v9);
  }

  if (*(v9 + 24))
  {
    ++*(v9 + 8);
    v12 = 1;
    atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_11;
    }

LABEL_18:
    WTF::Lock::unlockSlow(v9);
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v11 = 0;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_12:
  WebGPU::CommandBuffer::makeInvalid(v11, v21);
  do
  {
    v14 = *v11;
    if ((*v11 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v11, v13);
      goto LABEL_21;
    }

    v15 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v15 != v14);
  if (v14 == 3)
  {
    WebGPU::CommandBuffer::~CommandBuffer(v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

LABEL_21:
}

void sub_225682CF4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::CommandBuffer,(WTF::DestructionThread)0>::deref(v9, a2);

  _Unwind_Resume(a1);
}

void sub_225682D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, atomic_uint *a10)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);

  _Unwind_Resume(a1);
}

void WebGPU::Device::createCommandEncoder(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*a2)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v9 = v7;
      v10 = v9;
      if (WebGPU::GPUFrameCapture::enabled == 1)
      {
        WebGPU::GPUFrameCapture::captureFrame(v9);
        WebGPU::GPUFrameCapture::enabled = 0;
      }

      v11 = objc_opt_new();
      v12 = *(a1 + 16);
      atomic_fetch_add(v12, 1u);
      v13 = WebGPU::Queue::commandBufferWithDescriptor(v12, v11);
      v15 = v13;
      v69 = 0;
      v16 = a2;
      if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WebGPU::Queue::~Queue(v12);
        bmalloc::api::tzoneFree(v63, v64);
        v16 = a2;
        if (v15)
        {
          goto LABEL_11;
        }
      }

      else if (v13)
      {
LABEL_11:
        if (v16[1])
        {
          strlen(v16[1]);
        }

        WTF::String::fromUTF8();
        if (v68)
        {
          atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
          MEMORY[0x22AA68130](&v69);
          if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v17);
          }
        }

        else
        {
          v69 = &stru_2838D6D18;
        }

        [v15 setLabel:v69];
        v18 = v69;
        v69 = 0;

        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v19);
        }

        v20 = *(a1 + 504);
        *(a1 + 504) = v20 + 1;
        v22 = v15;
        if (WebGPU::CommandEncoder::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandEncoder::s_heapRef, v21);
        }

        else
        {
          NonCompact = WebGPU::CommandEncoder::operatorNewSlow(0);
        }

        v24 = NonCompact;
        v25 = v22;
        *v24 = 0;
        *(v24 + 8) = 0;
        *(v24 + 16) = 1;
        v26 = v25;
        *(v24 + 128) = 0u;
        *(v24 + 24) = v26;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 0u;
        *(v24 + 64) = 0u;
        *(v24 + 80) = 0u;
        *(v24 + 96) = 0u;
        *(v24 + 112) = 0u;
        *(v24 + 144) = 0u;
        *(v24 + 157) = 0u;
        *(v24 + 176) = 0;
        *(v24 + 184) = 0;
        while (1)
        {
          v27 = *a1;
          if ((*a1 & 1) == 0)
          {
            break;
          }

          v28 = *a1;
          atomic_compare_exchange_strong_explicit(a1, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v28 == v27)
          {
            goto LABEL_28;
          }
        }

        v29 = 0;
        v30 = *a1;
        v31 = 1;
        atomic_compare_exchange_strong_explicit(*a1, &v29, 1u, memory_order_acquire, memory_order_acquire);
        if (v29)
        {
          v67 = v30;
          MEMORY[0x22AA683C0]();
          v30 = v67;
        }

        ++*(v30 + 8);
        atomic_compare_exchange_strong_explicit(v30, &v31, 0, memory_order_release, memory_order_relaxed);
        if (v31 == 1)
        {
LABEL_28:
          *(v24 + 192) = a1;
          *(v24 + 200) = v20;
          *(v24 + 208) = 0;
          v32 = 0x277CBE000uLL;
          if (*(a1 + 556) != 1)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        WTF::Lock::unlockSlow(v30);
        *(v24 + 192) = a1;
        *(v24 + 200) = v20;
        *(v24 + 208) = 0;
        v32 = 0x277CBE000;
        if (*(a1 + 556) == 1)
        {
LABEL_29:
          v33 = [*(v32 + 2904) set];
          v34 = *(v24 + 104);
          *(v24 + 104) = v33;

          v35 = [*(v32 + 2904) set];
          v36 = *(v24 + 96);
          *(v24 + 96) = v35;

          v37 = [*(v32 + 2904) set];
          v38 = *(v24 + 88);
          *(v24 + 88) = v37;
        }

LABEL_30:
        v39 = [*(v32 + 2904) set];
        v40 = *(v24 + 120);
        *(v24 + 120) = v39;

        v41 = WTF::fastMalloc(0x10);
        v41->isa = &unk_2838D2C48;
        v69 = v41;
        v42 = *(v24 + 140);
        if (v42 == *(v24 + 136))
        {
          v43 = WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v24 + 128, v42 + 1, &v69);
          v42 = *(v24 + 140);
          v44 = (*(v24 + 128) + 8 * v42);
          v41 = *v43;
        }

        else
        {
          v44 = (*(v24 + 128) + 8 * v42);
          v43 = &v69;
        }

        *v43 = 0;
        *v44 = v41;
        *(v24 + 140) = v42 + 1;
        v45 = v69;
        v69 = 0;
        if (v45)
        {
          (*(v45->isa + 1))(v45);
        }

        *a3 = v24;
        v46 = *(v24 + 200);
        if (v46 == -2 || v46 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x2256832C4);
        }

        v47 = *(a1 + 480);
        if (!v47)
        {
          WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 480), 8u);
          v47 = *(a1 + 480);
        }

        v48 = *(v47 - 8);
        v49 = (v46 + ~(v46 << 32)) ^ ((v46 + ~(v46 << 32)) >> 22);
        v50 = 9 * ((v49 + ~(v49 << 13)) ^ ((v49 + ~(v49 << 13)) >> 8));
        v51 = (v50 ^ (v50 >> 15)) + ~((v50 ^ (v50 >> 15)) << 27);
        v52 = v48 & ((v51 >> 31) ^ v51);
        v53 = (v47 + 16 * v52);
        v54 = *v53;
        if (*v53 == -1)
        {
LABEL_47:
          v57 = *(v47 - 16);
          v55 = v53;
        }

        else
        {
          v55 = 0;
          v56 = 1;
          do
          {
            if (v54 == v46)
            {
              v53[1] = v24;
              goto LABEL_63;
            }

            if (v54 == -2)
            {
              v55 = v53;
            }

            v52 = (v52 + v56) & v48;
            v53 = (v47 + 16 * v52);
            v54 = *v53;
            ++v56;
          }

          while (*v53 != -1);
          if (!v55)
          {
            goto LABEL_47;
          }

          *v55 = -1;
          v55[1] = 0;
          v57 = *(v47 - 16) - 1;
          *(v47 - 16) = v57;
        }

        *v55 = v46;
        v55[1] = v24;
        v58 = *(v47 - 12) + 1;
        *(v47 - 12) = v58;
        v59 = (v58 + v57);
        v60 = *(v47 - 4);
        if (v60 > 0x400)
        {
          if (v60 > 2 * v59)
          {
LABEL_63:

            return;
          }
        }

        else if (3 * v60 > 4 * v59)
        {
          goto LABEL_63;
        }

        v61 = v60 << (6 * v58 >= (2 * v60));
        if (v60)
        {
          v62 = v61;
        }

        else
        {
          v62 = 8;
        }

        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 480), v62);
        goto LABEL_63;
      }

      if (WebGPU::CommandEncoder::s_heapRef)
      {
        v65 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandEncoder::s_heapRef, v14);
      }

      else
      {
        v65 = WebGPU::CommandEncoder::operatorNewSlow(0);
      }

      v66 = v65;
      WebGPU::CommandEncoder::CommandEncoder(v65, a1);
      *a3 = v66;
      goto LABEL_63;
    }
  }

  if (WebGPU::CommandEncoder::s_heapRef)
  {
    v5 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandEncoder::s_heapRef, a2);
  }

  else
  {
    v5 = WebGPU::CommandEncoder::operatorNewSlow(0);
  }

  v6 = v5;
  WebGPU::CommandEncoder::CommandEncoder(v5, a1);
  *a3 = v6;
}

void sub_2256832E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, WTF::StringImpl *a11, uint64_t a12)
{
  WTF::Vector<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 152, v19, v20);
  WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v14 + 144), v21);
  WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v22);

  WTF::HashSet<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet((v14 + 112), v23, v24);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v14 + 64, v25);

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v16, v26);
  bmalloc::api::tzoneFree(v14, v27);

  _Unwind_Resume(a1);
}

atomic_uint **WTF::String::createNSString@<X0>(atomic_uint **this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    this = MEMORY[0x22AA68130](v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    *a2 = &stru_2838D6D18;
  }

  return this;
}

void sub_225683560(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WebGPU::CommandEncoder **WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(WebGPU::CommandEncoder **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 4) == 1)
    {
      v2 = result;
      WebGPU::CommandEncoder::~CommandEncoder(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 4);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v4 = *(a1 + 12);
  v5 = *a1;
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      v9 = *v5;
      *v5 = 0;
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

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
    v5 = *a1;
  }

  if (v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v5, a2);
  }

  return a1;
}

void *WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
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

WebGPU::Sampler ***WTF::HashSet<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(WebGPU::Sampler ***result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
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

        ++v6;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v3 - 2), a2);
    return v4;
  }

  return result;
}

uint64_t WebGPU::CommandEncoder::CommandEncoder(uint64_t this, atomic_ullong *a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 165) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  while (1)
  {
    v3 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v4 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_9;
    }
  }

  v5 = this;
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
  this = v5;
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v7);
    this = v5;
  }

LABEL_9:
  *(this + 192) = a2;
  *(this + 208) = 0;
  return this;
}

void sub_22568386C(_Unwind_Exception *a1)
{
  WTF::Vector<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 152, v4, v5);
  WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 144), v6);
  WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 128, v7);

  WTF::HashSet<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet((v2 + 112), v8, v9);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v2 + 64, v10);

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v1, v11);
  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::~CommandEncoder(WebGPU::CommandEncoder *this)
{
  v3 = (this + 192);
  v2 = *(this + 24);
  if (v2[1])
  {
    v4 = *(this + 5);
    if (*(this + 4) == v4)
    {
      WebGPU::CommandEncoder::endEncoding(this, v4);
      v5 = *(this + 5);
      *(this + 5) = 0;

      WebGPU::CommandEncoder::setExistingEncoder(this, 0);
      v2 = *v3;
    }
  }

  v6 = v2[2];
  atomic_fetch_add(v6, 1u);
  WebGPU::Queue::removeMTLCommandBuffer(v6, *(this + 3));
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WebGPU::Queue::~Queue(v6);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v7 = *(*(this + 24) + 16);
  atomic_fetch_add(v7, 1u);
  WebGPU::Queue::retainTimestampsForOneUpdate(v7, *(this + 15));
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WebGPU::Queue::~Queue(v7);
    bmalloc::api::tzoneFree(v24, v25);
    v26 = *(this + 3);
    *(this + 3) = 0;

    v10 = *(this + 24);
    v11 = v10[60];
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_25:
    *v3 = 0;
    do
    {
LABEL_26:
      v27 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v9);
        goto LABEL_31;
      }

      v28 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v27);
    if (v27 == 3)
    {
      WebGPU::Device::~Device(v10, v9);
      bmalloc::api::tzoneFree(v29, v30);
    }

    goto LABEL_31;
  }

  v8 = *(this + 3);
  *(this + 3) = 0;

  v10 = *(this + 24);
  v11 = v10[60];
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_10:
  v12 = *(this + 25);
  if (v12 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x225683E54);
  }

  if (v12 == -1)
  {
LABEL_85:
    __break(0xC471u);
    JUMPOUT(0x225683E34);
  }

  v13 = *(v11 - 8);
  v14 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = *(v11 + 16 * v17);
  if (v18 == v12)
  {
LABEL_16:
    v20 = *(v11 - 4);
    if (v17 != v20)
    {
      *(v11 + 16 * v17) = -2;
      v21 = vadd_s32(*(v11 - 16), 0xFFFFFFFF00000001);
      *(v11 - 16) = v21;
      if (v20 >= 9 && 6 * v21.i32[1] < v20)
      {
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v10 + 60, v20 >> 1);
        v10 = *v3;
      }
    }
  }

  else
  {
    v19 = 1;
    while (v18 != -1)
    {
      v17 = (v17 + v19) & v13;
      v18 = *(v11 + 16 * v17);
      ++v19;
      if (v18 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  *v3 = 0;
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_31:

  v33 = *(this + 41);
  v34 = *(this + 19);
  if (v33)
  {
    v35 = 8 * v33;
    do
    {
      v38 = *v34;
      *v34 = 0;
      if (v38)
      {
        if (*(v38 + 2) == 1)
        {
          WebGPU::BindGroup::~BindGroup(v38, v31, v32);
          bmalloc::api::tzoneFree(v36, v37);
        }

        else
        {
          --*(v38 + 2);
        }
      }

      v34 = (v34 + 8);
      v35 -= 8;
    }

    while (v35);
    v34 = *(this + 19);
  }

  if (v34)
  {
    *(this + 19) = 0;
    *(this + 40) = 0;
    WTF::fastFree(v34, v31);
  }

  v39 = *(this + 18);
  if (v39)
  {
    v40 = *(v39 - 4);
    if (v40)
    {
      v41 = v39 + 8;
      do
      {
        if (*(v41 - 8) != -2)
        {
          v42 = *v41;
          if (*v41)
          {
            *v41 = 0;
            *(v41 + 8) = 0;
            WTF::fastFree(v42, v31);
          }
        }

        v41 += 24;
        --v40;
      }

      while (v40);
    }

    WTF::fastFree((v39 - 16), v31);
  }

  v43 = *(this + 35);
  v44 = *(this + 16);
  if (v43)
  {
    v45 = 8 * v43;
    do
    {
      v46 = *v44;
      *v44 = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      v44 = (v44 + 8);
      v45 -= 8;
    }

    while (v45);
    v44 = *(this + 16);
  }

  if (v44)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v44, v31);
  }

  v49 = *(this + 14);
  if (v49)
  {
    v50 = *(v49 - 4);
    if (v50)
    {
      v51 = *(this + 14);
      do
      {
        v54 = *v51;
        if (*v51 != -1)
        {
          *v51 = 0;
          if (v54)
          {
            if (*v54 == 1)
            {
              WebGPU::Sampler::~Sampler(v54, v47, v48);
              bmalloc::api::tzoneFree(v52, v53);
            }

            else
            {
              --*v54;
            }
          }
        }

        ++v51;
        --v50;
      }

      while (v50);
    }

    WTF::fastFree((v49 - 16), v47);
  }

  v56 = *(this + 9);
  *(this + 9) = 0;
  if (v56)
  {
    v57 = 0;
    atomic_compare_exchange_strong_explicit(v56, &v57, 1u, memory_order_acquire, memory_order_acquire);
    if (v57)
    {
      v60 = v56;
      MEMORY[0x22AA683C0]();
      v56 = v60;
      v61 = *(v60 + 16) - 1;
      *(v60 + 16) = v61;
      if (v61)
      {
LABEL_70:
        v59 = 1;
        atomic_compare_exchange_strong_explicit(v56, &v59, 0, memory_order_release, memory_order_relaxed);
        if (v59 != 1)
        {
          WTF::Lock::unlockSlow(v56);
        }

        goto LABEL_76;
      }
    }

    else
    {
      v58 = *(v56 + 16) - 1;
      *(v56 + 16) = v58;
      if (v58)
      {
        goto LABEL_70;
      }
    }

    v62 = *(v56 + 8);
    v63 = 1;
    atomic_compare_exchange_strong_explicit(v56, &v63, 0, memory_order_release, memory_order_relaxed);
    if (v63 == 1)
    {
      if (v62)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v66 = v56;
      WTF::Lock::unlockSlow(v56);
      v56 = v66;
      if (v62)
      {
        goto LABEL_76;
      }
    }

    WTF::fastFree(v56, v55);
  }

LABEL_76:

  if (*(this + 4) != 1)
  {
    goto LABEL_85;
  }

  v65 = *(this + 1);
  if (v65)
  {
    *(v65 + 8) = 0;
    *(this + 1) = 0;
    if (atomic_fetch_add(v65, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v65);
      WTF::fastFree(v65, v64);
    }
  }
}

void sub_225683E78(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(v3, a2);

  WTF::Vector<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 152, v5, v6);
  WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 144), v7);
  WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 128, v8);

  WTF::HashSet<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet((v2 + 112), v9, v10);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v2 + 64, v11);

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2 + 8, v12);
  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::finalizeBlitCommandEncoder(WebGPU::CommandEncoder *this)
{
  if (*(*(this + 24) + 8))
  {
    v2 = *(this + 5);
    if (*(this + 4) == v2)
    {
      WebGPU::CommandEncoder::endEncoding(this, v2);
      v4 = *(this + 5);
      *(this + 5) = 0;

      WebGPU::CommandEncoder::setExistingEncoder(this, 0);
    }
  }
}

id WebGPU::CommandEncoder::ensureBlitCommandEncoder(id *this)
{
  v2 = [this[3] status];
  v4 = this[5];
  if (v2)
  {
    this[5] = 0;

    goto LABEL_3;
  }

  v7 = this[24];
  if (!v4 || !v7[1] || this[4] != v4)
  {
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

    v10 = 0;
    v11 = *v7;
    v12 = 1;
    atomic_compare_exchange_strong_explicit(*v7, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      v22 = v11;
      MEMORY[0x22AA683C0]();
      v11 = v22;
      ++*(v22 + 1);
      atomic_compare_exchange_strong_explicit(v22, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      ++*(v11 + 8);
      atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 == 1)
      {
LABEL_14:
        v13 = v7[1];
        while (1)
        {
          v14 = *v7;
          if ((*v7 & 1) == 0)
          {
            break;
          }

          v15 = *v7;
          atomic_compare_exchange_strong_explicit(v7, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
          if (v15 == v14)
          {
            if (v14 == 3)
            {
              WebGPU::Device::~Device(v7, v3);
              bmalloc::api::tzoneFree(v16, v17);
            }

            if (!v13)
            {
LABEL_3:
              v5 = 0;

              return v5;
            }

LABEL_22:
            v18 = objc_opt_new();
            v19 = [this[3] blitCommandEncoderWithDescriptor:v18];
            v20 = this[5];
            this[5] = v19;

            WebGPU::CommandEncoder::setExistingEncoder(this, this[5]);
            v21 = this[5];

            v5 = v21;

            return v5;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, v3);
        if (!v13)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    WTF::Lock::unlockSlow(v11);
    goto LABEL_14;
  }

  v5 = v4;

  return v5;
}

void WebGPU::CommandEncoder::setExistingEncoder(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_storeStrong((a1 + 32), a2);
  v4 = *(*(a1 + 192) + 16);
  atomic_fetch_add(v4, 1u);
  WebGPU::Queue::setEncoderForBuffer(v4, *(a1 + 24), v8);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WebGPU::Queue::~Queue(v4);
    bmalloc::api::tzoneFree(v6, v7);
    v5 = v8;
  }

  else
  {
    v5 = v8;
  }
}

void sub_22568422C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, atomic_uint *a10)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);

  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::endEncoding(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 192) + 16);
  atomic_fetch_add(v4, 1u);
  v10 = v3;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = [*(v4 + 120) objectForKey:v5];

    if (v6 != v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;

    if (v10)
    {
LABEL_3:
      WebGPU::Queue::endEncoding(v4, v6, *(a1 + 24));
      WebGPU::CommandEncoder::setExistingEncoder(a1, 0);
      if (!*(a1 + 48))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  WebGPU::Queue::endEncoding(v4, *(a1 + 32), *(a1 + 24));
  WebGPU::CommandEncoder::setExistingEncoder(a1, 0);
  v7 = *(a1 + 40);
  *(a1 + 40) = 0;

  if (*(a1 + 48))
  {
LABEL_7:
    WebGPU::CommandEncoder::discardCommandBuffer(a1);
  }

LABEL_8:

  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WebGPU::Queue::~Queue(v4);
    bmalloc::api::tzoneFree(v8, v9);
  }
}

void sub_225684378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, atomic_uint *a10)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);

  _Unwind_Resume(a1);
}

void WebGPU::ComputePassEncoder::createInvalid(WebGPU::ComputePassEncoder *this, WebGPU::CommandEncoder *a2, atomic_ullong *a3, NSString *a4)
{
  v7 = @"GPUDevice was invalid, this will be an error submitting the command buffer";
  if (WebGPU::ComputePassEncoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, v8);
  }

  else
  {
    NonCompact = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
  }

  v10 = NonCompact;
  WebGPU::ComputePassEncoder::ComputePassEncoder(NonCompact, a2, a3, &cfstr_GpudeviceWasIn.isa);
  *this = v10;
}

void sub_225684430(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v2, a2);

  _Unwind_Resume(a1);
}

WebGPU::QuerySet **WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(WebGPU::QuerySet **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      WebGPU::QuerySet::~QuerySet(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

void WebGPU::CommandEncoder::discardCommandBuffer(WebGPU::CommandEncoder *this)
{
  v2 = *(this + 3);
  if (!v2 || [v2 status] >= 2)
  {
    v3 = *(*(this + 24) + 16);
    atomic_fetch_add(v3, 1u);
    WebGPU::Queue::retainTimestampsForOneUpdate(v3, *(this + 15));
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WebGPU::Queue::~Queue(v3);
      bmalloc::api::tzoneFree(v13, v14);
    }

    v4 = *(this + 3);
    *(this + 3) = 0;

    goto LABEL_8;
  }

  v5 = *(*(this + 24) + 16);
  atomic_fetch_add(v5, 1u);
  v6 = *(this + 3);
  if (v6)
  {
    v7 = v6;
    v22 = [*(v5 + 120) objectForKey:v6];

    v8 = v22;
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    v24 = v8;
    WebGPU::Queue::~Queue(v5);
    bmalloc::api::tzoneFree(v15, v16);
    v8 = v24;
  }

LABEL_14:
  v9 = *(*(this + 24) + 16);
  atomic_fetch_add(v9, 1u);
  v23 = v8;
  v25 = v9;
  WebGPU::Queue::endEncoding(v9, v8, *(this + 3));
  WebGPU::Queue::removeMTLCommandBuffer(v9, *(this + 3));
  v10 = *(*(this + 24) + 16);
  atomic_fetch_add(v10, 1u);
  WebGPU::Queue::retainTimestampsForOneUpdate(v10, *(this + 15));
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WebGPU::Queue::~Queue(v10);
    bmalloc::api::tzoneFree(v17, v18);
    v19 = *(this + 3);
    *(this + 3) = 0;

    v12 = v25;
    if (v25)
    {
LABEL_17:
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WebGPU::Queue::~Queue(v12);
        bmalloc::api::tzoneFree(v20, v21);
      }
    }
  }

  else
  {
    v11 = *(this + 3);
    *(this + 3) = 0;

    v12 = v25;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  v4 = v23;

LABEL_8:
}

void sub_2256846D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256846F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, atomic_uint *a11, atomic_uint *a12)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a12);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a11);

  _Unwind_Resume(a1);
}

void sub_225684714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, atomic_uint *a11)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a11);

  _Unwind_Resume(a1);
}

void sub_225684730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::runClearEncoder(uint64_t a1, void *a2, void *a3, int a4, int a5, uint64_t a6, void *a7, float a8)
{
  v79[16] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v64 = a3;
  v63 = a7;
  v61 = v13;
  if ([v13 count] || (a4 & 1) != 0 || (a5 & 1) != 0)
  {
    if ((a4 & 1) == 0 && (a5 & 1) == 0)
    {

      v64 = 0;
    }

    v58 = *(*(a1 + 192) + 8);
    if (!v58)
    {
      WebGPU::CommandEncoder::endEncoding(a1, v63);
LABEL_59:

      goto LABEL_60;
    }

    v59 = v63;
    if (!v59)
    {
      v14 = objc_opt_new();
      v15 = v14;
      if (a4)
      {
        v16 = [v14 depthAttachment];
        [v16 setLoadAction:2];

        v17 = [v15 depthAttachment];
        [v17 setStoreAction:1];

        v18 = [v15 depthAttachment];
        [v18 setClearDepth:a8];

        v19 = [v15 depthAttachment];
        [v19 setTexture:v64];
      }

      if (a5)
      {
        v20 = [v15 stencilAttachment];
        [v20 setLoadAction:2];

        v21 = [v15 stencilAttachment];
        [v21 setStoreAction:1];

        v22 = [v15 stencilAttachment];
        [v22 setClearStencil:a6];

        v23 = [v15 stencilAttachment];
        [v23 setTexture:v64];
      }

      if (![v13 count])
      {
        if (!v64)
        {
          __break(0xC471u);
          goto LABEL_66;
        }

        [v15 setDefaultRasterSampleCount:{objc_msgSend(v64, "sampleCount")}];
        [v15 setRenderTargetWidth:{objc_msgSend(v64, "width")}];
        [v15 setRenderTargetHeight:{objc_msgSend(v64, "height")}];
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v24 = v13;
      v25 = [v24 countByEnumeratingWithState:&v65 objects:v78 count:16];
      if (v25)
      {
        v26 = *v66;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v66 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v65 + 1) + 8 * i);
            v29 = [v28 intValue];
            v30 = [v24 objectForKey:v28];
            v31 = [v30 texture];
            v32 = [v15 colorAttachments];
            v33 = [v32 objectAtIndexedSubscript:v29];

            [v33 setLoadAction:2];
            [v33 setStoreAction:1];
            [v30 clearColor];
            [v33 setClearColor:?];
            [v33 setTexture:v31];
            [v33 setLevel:0];
            [v33 setSlice:0];
            [v33 setDepthPlane:{objc_msgSend(v30, "depthPlane")}];
          }

          v25 = [v24 countByEnumeratingWithState:&v65 objects:v78 count:16];
        }

        while (v25);
      }

      v34 = [*(a1 + 24) renderCommandEncoderWithDescriptor:v15];
      WebGPU::CommandEncoder::setExistingEncoder(a1, v34);
      v59 = v34;
    }

    v56 = a1;
    v35 = v61;
    v57 = v64;
    v75 = v58;
    v36 = objc_opt_new();
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v71 objects:v79 count:{16, v35}];
    if (v38)
    {
      v39 = *v72;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v72 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v71 + 1) + 8 * j);
          v42 = [v41 intValue];
          v43 = [v37 objectForKey:v41];
          v44 = [v43 texture];
          v45 = [v44 sampleCount];
          v46 = [v36 colorAttachments];
          v47 = [v46 objectAtIndexedSubscript:v42];

          [v47 setPixelFormat:objc_msgSend(v44, "pixelFormat")];
          [v47 setBlendingEnabled:0];
        }

        v38 = [v37 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v38);
    }

    else
    {
      v45 = 0;
    }

    if (v57)
    {
      v48 = objc_opt_new();
      v49 = v57;
      v45 = [v49 sampleCount];
      if (a4 && (([v49 pixelFormat] - 253) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        v50 = [v49 pixelFormat];
      }

      else
      {
        v50 = 0;
      }

      [v36 setDepthAttachmentPixelFormat:v50];
      [v48 setDepthWriteEnabled:0];
      if (a5 && ([v49 pixelFormat] == 260 || objc_msgSend(v49, "pixelFormat") == 253 || objc_msgSend(v49, "pixelFormat") == 261))
      {
        [v36 setStencilAttachmentPixelFormat:objc_msgSend(v49, "pixelFormat")];
      }
    }

    else
    {
      v48 = 0;
    }

    obj[0] = &v75;
    obj[1] = &location;
    location = 0;
    if (atomic_load_explicit(&qword_28159C890, memory_order_acquire) != -1)
    {
      v77 = obj;
      v76 = &v77;
      std::__call_once(&qword_28159C890, &v76, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::createSimplePso(NSMutableDictionary<NSNumber *,TextureAndClearColor *> *,objc_object  {objcproto10MTLTexture}*,BOOL,BOOL,objc_object  {objcproto9MTLDevice}*)::$_0 &&>>);
    }

    if (!_MergedGlobals)
    {
      __break(0xC471u);
      JUMPOUT(0x225684F90);
    }

    [v36 setVertexFunction:?];
    [v36 setFragmentFunction:0];
    if (!v45)
    {
      __break(0xC471u);
      JUMPOUT(0x225684FB0);
    }

    [v36 setRasterSampleCount:v45];
    [v36 setInputPrimitiveTopology:1];
    obj[0] = location;
    v51 = [v75 newRenderPipelineStateWithDescriptor:v36 error:obj];
    objc_storeStrong(&location, obj[0]);
    if (v48)
    {
      v52 = [v75 newDepthStencilStateWithDescriptor:v48];
      if (!location)
      {
LABEL_53:

        [v59 setRenderPipelineState:v51];
        if (v52)
        {
          [v59 setDepthStencilState:v52];
        }

        [v59 setCullMode:0];
        [v59 drawPrimitives:0 vertexStart:0 vertexCount:1 instanceCount:1 baseInstance:0];
        v53 = *(*(v56 + 192) + 16);
        atomic_fetch_add(v53, 1u);
        v79[0] = v53;
        WebGPU::Queue::endEncoding(v53, v59, *(v56 + 24));
        v79[0] = 0;
        if (v53 && atomic_fetch_add(v53, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v53);
          WebGPU::Queue::~Queue(v53);
          bmalloc::api::tzoneFree(v54, v55);
        }

        WebGPU::CommandEncoder::setExistingEncoder(v56, 0);

        goto LABEL_59;
      }
    }

    else
    {
      v52 = 0;
      if (!location)
      {
        goto LABEL_53;
      }
    }

    __break(0xC471u);
LABEL_66:
    JUMPOUT(0x225684F58);
  }

  WebGPU::CommandEncoder::endEncoding(a1, v63);
LABEL_60:
}

void WebGPU::CommandEncoder::beginRenderPass(WebGPU::RenderPassEncoder *a1, WebGPU::CommandEncoder *this, uint64_t *a3)
{
  v267[1] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  if (*a3)
  {
    if (*(v6 + 8) != 15)
    {
      v16 = *(this + 24);
      if (WebGPU::RenderPassEncoder::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, this);
      }

      else
      {
        NonCompact = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
      }

      v18 = NonCompact;
      WebGPU::RenderPassEncoder::RenderPassEncoder(NonCompact, this, v16, &cfstr_DescriptorIsCo.isa);
      goto LABEL_36;
    }

    v7 = *(v6 + 16);
    v8 = *this;
    if ((v8 - 3) >= 0xFFFFFFFE)
    {
LABEL_4:
      if (v8 != 2)
      {
        if (*(this + 6))
        {
          v19 = *(this + 6);
        }

        else
        {
          v19 = @"Encoder state is locked";
        }

        WebGPU::CommandEncoder::makeInvalid(this, &v19->isa);
LABEL_33:
        v31 = *(this + 24);
        if (WebGPU::RenderPassEncoder::s_heapRef)
        {
          v32 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v20);
        }

        else
        {
          v32 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
        }

        v18 = v32;
        WebGPU::RenderPassEncoder::RenderPassEncoder(v32, this, v31, &cfstr_EncoderStateIs_1.isa);
LABEL_36:
        *a1 = v18;
        return;
      }

      v9 = *(this + 24);
      while (1)
      {
        v10 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v11 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_27;
        }
      }

      v21 = 0;
      v22 = *v9;
      v23 = 1;
      atomic_compare_exchange_strong_explicit(*v9, &v21, 1u, memory_order_acquire, memory_order_acquire);
      if (v21)
      {
        MEMORY[0x22AA683C0](v22);
        ++*(v22 + 8);
        atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 == 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        ++*(v22 + 8);
        atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 == 1)
        {
          goto LABEL_27;
        }
      }

      WTF::Lock::unlockSlow(v22);
LABEL_27:
      v24 = MEMORY[0x277CCACA8];
      v25 = WebGPU::CommandsMixin::encoderStateName(this);
      v26 = [v24 stringWithFormat:@"%s: encoder state is %@", "Ref<RenderPassEncoder> WebGPU::CommandEncoder::beginRenderPass(const WGPURenderPassDescriptor &)", v25];
      WebGPU::Device::generateAValidationError(v9, v26);

      v262[0] = 0;
      do
      {
        v27 = *v9;
        if ((*v9 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v9, v20);
          goto LABEL_33;
        }

        v28 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v28 != v27);
      if (v27 == 3)
      {
        WebGPU::Device::~Device(v9, v20);
        bmalloc::api::tzoneFree(v29, v30);
      }

      goto LABEL_33;
    }
  }

  else
  {
    v7 = -1;
    v8 = *this;
    if ((v8 - 3) >= 0xFFFFFFFE)
    {
      goto LABEL_4;
    }
  }

  v259 = v7;
  v12 = a3[5];
  if (v12)
  {
    v13 = (*v12)++;
    if ((*(v12 + 56) & 1) == 0 && !*(v12 + 16) && !*(v12 + 24) || (v14 = *(v12 + 8), !*(v14 + 8)) || v14 != *(this + 24))
    {
      v15 = @"occlusion query does not match the device";
      if (v13)
      {
LABEL_17:
        *v12 = v13;
        goto LABEL_89;
      }

LABEL_39:
      WebGPU::QuerySet::~QuerySet(v12, this);
      bmalloc::api::tzoneFree(v33, v34);
      goto LABEL_88;
    }

    if (*(v12 + 36))
    {
      v15 = @"occlusion query type is not occlusion";
      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      *v12 = v13;
      if (!a3[6])
      {
        goto LABEL_87;
      }

      goto LABEL_41;
    }

    WebGPU::QuerySet::~QuerySet(v12, this);
    bmalloc::api::tzoneFree(v46, v47);
  }

  if (!a3[6])
  {
LABEL_87:
    v15 = 0;
    goto LABEL_88;
  }

LABEL_41:
  v35 = *(this + 24);
  while (1)
  {
    v36 = *v35;
    if ((*v35 & 1) == 0)
    {
      break;
    }

    v37 = *v35;
    atomic_compare_exchange_strong_explicit(v35, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v36)
    {
      goto LABEL_47;
    }
  }

  v38 = 0;
  v39 = *v35;
  v40 = 1;
  atomic_compare_exchange_strong_explicit(*v35, &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x22AA683C0](v39);
    ++*(v39 + 8);
    atomic_compare_exchange_strong_explicit(v39, &v40, 0, memory_order_release, memory_order_relaxed);
    if (v40 == 1)
    {
LABEL_47:
      v41 = *(v35 + 252);
      if (v41)
      {
        goto LABEL_48;
      }

LABEL_65:
      v15 = 0;
      goto LABEL_66;
    }
  }

  else
  {
    ++*(v39 + 8);
    atomic_compare_exchange_strong_explicit(v39, &v40, 0, memory_order_release, memory_order_relaxed);
    if (v40 == 1)
    {
      goto LABEL_47;
    }
  }

  WTF::Lock::unlockSlow(v39);
  v41 = *(v35 + 252);
  if (!v41)
  {
    goto LABEL_65;
  }

LABEL_48:
  v42 = *(v35 + 240);
  v43 = v41 - 1;
  do
  {
    v44 = *v42++;
    v15 = (v44 == 3);
  }

  while (v44 != 3 && v43-- != 0);
  do
  {
LABEL_66:
    v48 = *v35;
    if ((*v35 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v35, this);
      if (v15)
      {
        goto LABEL_71;
      }

LABEL_83:
      v15 = @"device does not have timestamp query feature";
      goto LABEL_88;
    }

    v49 = *v35;
    atomic_compare_exchange_strong_explicit(v35, &v49, v48 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v49 != v48);
  if (v48 == 3)
  {
    WebGPU::Device::~Device(v35, this);
    bmalloc::api::tzoneFree(v50, v51);
  }

  if (!v15)
  {
    goto LABEL_83;
  }

LABEL_71:
  v52 = a3[6];
  v53 = *v52;
  v54 = **v52;
  *v53 = v54 + 1;
  v262[0] = v53;
  if (v53[9] != 1)
  {
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"query type is not timestamp but %d", v53[9]];
    goto LABEL_85;
  }

  if ((v53[14] & 1) != 0 || *(v53 + 2) || *(v53 + 3))
  {
    v55 = *(v53 + 1);
    if (*(v55 + 8) && v55 == *(this + 24))
    {
      v71 = v53[8];
      v72 = *(v52 + 8);
      v73 = *(v52 + 12);
      if (v72 == -1)
      {
        v74 = 0;
      }

      else
      {
        v74 = v72;
      }

      if (v73 == -1)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (v74 < v71 && v75 < v71 && v72 != v73)
      {
        v57 = 1;
        if (!v54)
        {
          goto LABEL_80;
        }

        goto LABEL_86;
      }

      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"writeIndices mismatch: beginningOfPassWriteIndex(%u) >= querySetCount(%u) || endOfPassWriteIndex(%u) >= querySetCount(%u) || timestampWrite.beginningOfPassWriteIndex(%u) == timestampWrite.endOfPassWriteIndex(%u)", v74, v71, v75, v71, v72, v73];
LABEL_85:
      v15 = v60;
      v57 = 0;
      v54 = *v53 - 1;
      if (*v53 == 1)
      {
        goto LABEL_80;
      }

LABEL_86:
      *v53 = v54;
      if ((v57 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }
  }

  v57 = 0;
  v15 = @"device mismatch";
  if (v54)
  {
    goto LABEL_86;
  }

LABEL_80:
  WebGPU::QuerySet::~QuerySet(v53, this);
  bmalloc::api::tzoneFree(v58, v59);
  if (v57)
  {
    goto LABEL_87;
  }

LABEL_88:
  if (v15)
  {
LABEL_89:
    v61 = *(this + 24);
    v260 = v15;
    if (WebGPU::RenderPassEncoder::s_heapRef)
    {
      v63 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v62);
    }

    else
    {
      v63 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
    }

    v64 = v63;
    WebGPU::RenderPassEncoder::RenderPassEncoder(v63, this, v61, v260);
    *a1 = v64;

    return;
  }

  if ([*(this + 3) status])
  {
    v66 = *(this + 24);
    if (WebGPU::RenderPassEncoder::s_heapRef)
    {
      v67 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v65);
    }

    else
    {
      v67 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
    }

    v18 = v67;
    WebGPU::RenderPassEncoder::RenderPassEncoder(v67, this, v66, &cfstr_CommandBufferH.isa);
    goto LABEL_36;
  }

  v258 = objc_opt_new();
  v68 = a3[6];
  if (v68)
  {
    v69 = *v68;
    *v69 = **v68 + 1;
    v262[0] = v69;
    WebGPU::QuerySet::setCommandEncoder(v69, this);
    v257 = v69[3];
    if (*v69 == 1)
    {
      WebGPU::QuerySet::~QuerySet(v69, v70);
      bmalloc::api::tzoneFree(v78, v79);
    }

    else
    {
      --*v69;
    }
  }

  else
  {
    v257 = 0;
  }

  v80 = WebGPU::Device::enableEncoderTimestamps(*(this + 24));
  if (v257)
  {
    v82 = 1;
  }

  else
  {
    v82 = v80;
  }

  if (v82 == 1)
  {
    if (v257)
    {
      v83 = [v258 sampleBufferAttachments];
      v84 = [v83 objectAtIndexedSubscript:0];
      [v84 setSampleBuffer:v257];

      if (*(a3[6] + 8) == -1)
      {
        v85 = -1;
      }

      else
      {
        v85 = *(a3[6] + 8);
      }

      v86 = [v258 sampleBufferAttachments];
      v87 = [v86 objectAtIndexedSubscript:0];
      [v87 setStartOfVertexSampleIndex:v85];

      if (*(a3[6] + 12) == -1)
      {
        v88 = -1;
      }

      else
      {
        v88 = *(a3[6] + 12);
      }

      v89 = [v258 sampleBufferAttachments];
      v90 = [v89 objectAtIndexedSubscript:0];
      [v90 setEndOfVertexSampleIndex:v88];

      if (*(a3[6] + 12) == -1)
      {
        v91 = -1;
      }

      else
      {
        v91 = *(a3[6] + 12);
      }

      v92 = [v258 sampleBufferAttachments];
      v93 = [v92 objectAtIndexedSubscript:0];
      [v93 setStartOfFragmentSampleIndex:v91];

      if (*(a3[6] + 12) == -1)
      {
        v94 = -1;
      }

      else
      {
        v94 = *(a3[6] + 12);
      }

      v95 = [v258 sampleBufferAttachments];
      v96 = [v95 objectAtIndexedSubscript:0];
      [v96 setEndOfFragmentSampleIndex:v94];

      WebGPU::Device::trackTimestampsBuffer(*(this + 24), *(this + 3), v257);
    }

    else
    {
      v97 = WebGPU::Device::timestampsBuffer(*(this + 24), *(this + 3), 4);
      v98 = [v258 sampleBufferAttachments];
      v99 = [v98 objectAtIndexedSubscript:0];
      [v99 setSampleBuffer:v97];

      v100 = [v258 sampleBufferAttachments];
      v101 = [v100 objectAtIndexedSubscript:0];
      [v101 setStartOfVertexSampleIndex:0];

      v102 = [v258 sampleBufferAttachments];
      v103 = [v102 objectAtIndexedSubscript:0];
      [v103 setEndOfVertexSampleIndex:1];

      v104 = [v258 sampleBufferAttachments];
      v105 = [v104 objectAtIndexedSubscript:0];
      [v105 setStartOfFragmentSampleIndex:2];

      v106 = [v258 sampleBufferAttachments];
      v107 = [v106 objectAtIndexedSubscript:0];
      [v107 setEndOfFragmentSampleIndex:3];
    }
  }

  if (a3[2] >= 9)
  {
    v108 = *(this + 24);
    if (WebGPU::RenderPassEncoder::s_heapRef)
    {
      v109 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v81);
    }

    else
    {
      v109 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
    }

    v110 = v109;
    WebGPU::RenderPassEncoder::RenderPassEncoder(v109, this, v108, &cfstr_ColorAttachmen.isa);
    *a1 = v110;
    goto LABEL_389;
  }

  if (*(*(this + 24) + 8))
  {
    v111 = *(this + 5);
    if (*(this + 4) == v111)
    {
      WebGPU::CommandEncoder::endEncoding(this, v111);
      v112 = *(this + 5);
      *(this + 5) = 0;

      WebGPU::CommandEncoder::setExistingEncoder(this, 0);
    }
  }

  v244 = [MEMORY[0x277CBEB38] dictionary];
  v245 = *(*(this + 24) + 196);
  v266 = 0;
  v113 = a3[2];
  if (!v113)
  {
    v179 = (a3 + 4);
    v178 = a3[4];
    if (v178)
    {
      v255 = 0;
      v249 = 0;
      v246 = 0;
      v241 = 1;
      goto LABEL_284;
    }

    LODWORD(v180) = 0;
    v181 = 0;
    v253 = 0;
    v182 = 0;
    v256 = 0;
LABEL_306:
    if (![v258 renderTargetWidth])
    {
      WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &cfstr_ZeroColorAndDe.isa);
      goto LABEL_379;
    }

LABEL_307:
    v199 = a3[5];
    if (v199)
    {
      ++*v199;
      v262[0] = v199;
      WebGPU::QuerySet::setCommandEncoder(v199, this);
      if (*(v262[0] + 9))
      {
        WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &cfstr_QuerysetForOcc.isa);
        WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(v262, v200);
        v201 = 0;
LABEL_334:

        goto LABEL_379;
      }

      v205 = *(v262[0] + 2);
      [v258 setVisibilityResultBuffer:v205];

      v201 = [v258 visibilityResultBuffer];
      if (*(v262[0] + 56))
      {
        v202 = -1;
      }

      else
      {
        v207 = *(v262[0] + 2);
        v202 = [v207 length];
      }

      WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(v262, v206);
    }

    else
    {
      v202 = 0;
      v201 = 0;
    }

    if ([v244 count] || v181)
    {
      if (v181)
      {
        v208 = **v179;
        ++*(v208 + 2);
        v262[0] = v208;
        WebGPU::TextureView::setPreviouslyCleared(v208, 0, 0);
        WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v209);
      }

      WebGPU::CommandEncoder::runClearEncoder(this, v244, v181, v182, v180, 0, 0, 0.0);
    }

    v210 = *(this + 24);
    if (v210[1])
    {
      v211 = [*(this + 3) renderCommandEncoderWithDescriptor:v258];
      WebGPU::CommandEncoder::setExistingEncoder(this, v211);
      WebGPU::RenderPassEncoder::create(a1, v211, a3, v202, v256, v253, this, v201, v259, *(this + 24), v258);
    }

    else
    {
      WebGPU::RenderPassEncoder::createInvalid(a1, this, v210, &cfstr_GpudeviceWasIn.isa);
    }

    goto LABEL_334;
  }

  v252 = 0;
  v255 = 0;
  v249 = 0;
  v246 = 0;
  v114 = 0;
  v115 = 72 * v113;
  v116 = a3[3] + 32;
  v241 = 1;
  while (2)
  {
    if (!*(v116 - 24))
    {
      goto LABEL_148;
    }

    v117 = [v258 colorAttachments];
    v118 = [v117 objectAtIndexedSubscript:v114];

    [v118 setClearColor:{*(v116 + 8), *(v116 + 16), *(v116 + 24), *(v116 + 32)}];
    v120 = *(v116 - 24);
    ++*(v120 + 8);
    v265[1] = v120;
    if (!*(v120 + 16))
    {
      v122 = *(this + 24);
      goto LABEL_168;
    }

    v121 = *(v120 + 88);
    v122 = *(this + 24);
    if (v121[1])
    {
      v123 = v121 == v122;
    }

    else
    {
      v123 = 0;
    }

    if (!v123)
    {
LABEL_168:
      if (WebGPU::RenderPassEncoder::s_heapRef)
      {
        v135 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v119);
      }

      else
      {
        v135 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
      }

      v133 = v135;
      WebGPU::RenderPassEncoder::RenderPassEncoder(v135, this, v122, &cfstr_DeviceMismatch.isa);
      goto LABEL_171;
    }

    if (v255 && (WebGPU::TextureView::width(v120) != v255 || WebGPU::TextureView::height(v120) != v249 || v246 != *(*(v120 + 96) + 40)))
    {
      v140 = *(this + 24);
      if (WebGPU::RenderPassEncoder::s_heapRef)
      {
        v141 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v124);
      }

      else
      {
        v141 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
      }

      v133 = v141;
      WebGPU::RenderPassEncoder::RenderPassEncoder(v141, this, v140, &cfstr_TextureSizeDoe.isa);
      goto LABEL_171;
    }

    v255 = WebGPU::TextureView::width(v120);
    v249 = WebGPU::TextureView::height(v120);
    v247 = v118;
    v125 = *(v120 + 96);
    v246 = *(v125 + 40);
    v126 = *(v120 + 40);
    v127 = WebGPU::Texture::renderTargetPixelByteAlignment(v126);
    v128 = WebGPU::Texture::renderTargetPixelByteCost(v126);
    if (v252 % v127)
    {
      v130 = v127 - v252 % v127;
    }

    else
    {
      v130 = 0;
    }

    v252 += v128 + v130;
    if (v252 > v245)
    {
      v131 = *(this + 24);
      v118 = v247;
      if (WebGPU::RenderPassEncoder::s_heapRef)
      {
        v132 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v129);
      }

      else
      {
        v132 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
      }

      v133 = v132;
      WebGPU::RenderPassEncoder::RenderPassEncoder(v132, this, v131, &cfstr_TotalBytesPerS.isa);
      goto LABEL_171;
    }

    v142 = *(v125 + 104);
    if ((v142 & 1) == 0)
    {
      v147 = *(v125 + 52);
      v118 = v247;
      if ((v147 & 0x10) != 0 && WebGPU::Texture::isColorRenderableFormat(v126, *(this + 24)))
      {
        if ((*(*(v120 + 96) + 52) & 0x10) != 0)
        {
          v148 = *(v120 + 44);
          if (v148 <= 6 && ((1 << v148) & 0x4C) != 0 && *(v120 + 52) == 1 && *(v120 + 60) < 2u)
          {
            goto LABEL_183;
          }
        }

        v118 = v247;
        WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &cfstr_TextureViewIsN.isa);
        goto LABEL_172;
      }

      v149 = *(this + 24);
      if (WebGPU::RenderPassEncoder::s_heapRef)
      {
        v150 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v129);
      }

      else
      {
        v150 = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
      }

      v133 = v150;
      WebGPU::RenderPassEncoder::RenderPassEncoder(v150, this, v149, &cfstr_ColorAttachmen_0.isa);
LABEL_171:
      *a1 = v133;
LABEL_172:
      v136 = 1;
      goto LABEL_173;
    }

LABEL_183:
    v118 = v247;
    WebGPU::TextureView::setCommandEncoder(v120, this);
    v240 = WebGPU::TextureView::texture(v120);
    [v247 setTexture:?];
    v143 = [v247 texture];
    v144 = v143 == 0;

    if (v144)
    {
      if ((v142 & 1) == 0)
      {
        WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &cfstr_ColorAttachmen_1.isa);
        goto LABEL_210;
      }

      v136 = 3;
      goto LABEL_211;
    }

    [v247 setLevel:0];
    [v247 setSlice:0];
    v145 = *(v120 + 44);
    if (*(v116 - 12) != 1)
    {
      v146 = @"textureDimension is 3D and no depth slice is specified";
      if (v145 != 6)
      {
        if (v142)
        {
          v151 = WebGPU::TextureView::parentTexture(v120);
          v239 = 0;
          v152 = 0;
          v265[0] = v151;
          goto LABEL_214;
        }

        v239 = *(v120 + 56);
        v151 = WebGPU::TextureView::parentTexture(v120);
        v265[0] = v151;
        goto LABEL_213;
      }

      goto LABEL_209;
    }

    v146 = @"depthSlice specified on 2D texture";
    if (v145 != 6 || ((v142 & 1) == 0 ? (v239 = *(v116 - 16)) : (v239 = 0), v153 = WebGPU::TextureView::depthOrArrayLayers(v120), v146 = @"depthSlice is greater than texture's depth or array layers", v239 >= v153))
    {
LABEL_209:
      WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &v146->isa);
      goto LABEL_210;
    }

    v151 = WebGPU::TextureView::parentTexture(v120);
    v265[0] = v151;
    if (v142)
    {
      v152 = 0;
      goto LABEL_214;
    }

LABEL_213:
    v152 = *(v120 + 48) << 32;
LABEL_214:
    v154 = v152 | v239;
    v264 = v152 | v239;
    v155 = WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(v266, v151);
    v156 = v266;
    if (v266)
    {
      v156 = v266 + 16 * *(v266 - 4);
    }

    if (v156 == v155)
    {
      v267[0] = v154;
      WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v261, v267, 1);
      WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void * const&,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(v262, &v266, v265, &v261);
      if (v261)
      {
        WTF::fastFree((v261 - 16), v157);
      }

LABEL_221:
      if (v145 == 6)
      {
        v158 = v239;
      }

      else
      {
        v158 = 0;
      }

      [v247 setDepthPlane:v158];
      [v247 setSlice:0];
      v159 = *v116;
      if (!*v116 || v159 == 0x7FFFFFFF)
      {
        v160 = 0;
      }

      else if (v159 == 1)
      {
        v160 = 2;
      }

      else
      {
        v160 = 1;
      }

      [v247 setLoadAction:v160];
      v161 = *(v116 + 4);
      v162 = *(v116 - 8);
      if (!v161 || v161 == 2)
      {
        v163 = 2 * (v162 != 0);
      }

      else if (v161 == 1)
      {
        if (v162)
        {
          v163 = 3;
        }

        else
        {
          v163 = 1;
        }
      }

      else
      {
        v163 = 0;
      }

      [v247 setStoreAction:v163];
      if ([v247 loadAction] == 1 && !WebGPU::TextureView::previouslyCleared(v120))
      {
        v164 = [v247 texture];
      }

      else
      {
        v164 = 0;
      }

      v165 = *(v116 - 8);
      if (!v165)
      {
        goto LABEL_269;
      }

      ++*(v165 + 8);
      v262[0] = v165;
      if (*(v165 + 16))
      {
        v166 = *(v165 + 88);
        v167 = *(this + 24);
        if (v166[1] && v166 == v167)
        {
          WebGPU::TextureView::setCommandEncoder(v165, this);
          v242 = WebGPU::TextureView::texture(v262[0]);
          if ([v240 sampleCount] == 1 || objc_msgSend(v242, "sampleCount") != 1)
          {
            v168 = @"resolve target is invalid";
          }

          else
          {
            if ((WebGPU::isMultisampleTexture(v242) & 1) == 0)
            {
              if (WebGPU::isMultisampleTexture(v240))
              {
                if ((*(*(v262[0] + 12) + 52) & 0x10) != 0)
                {
                  v170 = *(v262[0] + 11);
                  if (v170 <= 6)
                  {
                    v168 = @"resolve target is invalid";
                    v118 = v247;
                    if (((1 << v170) & 0x4C) == 0)
                    {
                      goto LABEL_255;
                    }

                    if (*(v262[0] + 13) != 1 || *(v262[0] + 15) > 1u)
                    {
LABEL_277:
                      v118 = v247;
                      goto LABEL_255;
                    }

                    v171 = [v240 pixelFormat];
                    if (v171 == [v242 pixelFormat] && (WebGPU::Texture::supportsResolve(*(v262[0] + 10), *(this + 24)) & 1) != 0)
                    {
                      [v247 setResolveTexture:v242];
                      [v247 setResolveLevel:0];
                      [v247 setResolveSlice:0];
                      [v247 setResolveDepthPlane:0];
                      v172 = WebGPU::TextureView::width(v262[0]);
                      if (v172 == WebGPU::TextureView::width(v120))
                      {
                        v173 = WebGPU::TextureView::height(v262[0]);
                        if (v173 == WebGPU::TextureView::height(v120))
                        {

                          v118 = v247;
                          WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v174);
LABEL_269:
                          if (v164)
                          {
                            v243 = [[TextureAndClearColor alloc] initWithTexture:v164];
                            v175 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v114];
                            [v244 setObject:v243 forKey:v175];

                            WebGPU::TextureView::setPreviouslyCleared(v120, 0, 0);
                            v176 = *(v116 - 8);
                            if (v176)
                            {
                              ++*(v176 + 2);
                              v262[0] = v176;
                              WebGPU::TextureView::setPreviouslyCleared(v176, 0, 0);
                              WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v177);
                            }
                          }

                          v136 = 0;
                          goto LABEL_274;
                        }
                      }

                      v168 = @"resolve target dimensions are invalid";
                      goto LABEL_277;
                    }
                  }
                }
              }
            }

            v168 = @"resolve target is invalid";
            v118 = v247;
          }

LABEL_255:
          WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &v168->isa);

          goto LABEL_256;
        }
      }

      else
      {
        v167 = *(this + 24);
      }

      WebGPU::RenderPassEncoder::createInvalid(a1, this, v167, &cfstr_ResolveTargetC.isa);
LABEL_256:
      WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v169);
      v136 = 1;
LABEL_274:

      v241 = 0;
      goto LABEL_211;
    }

    WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v262, (v155 + 8), &v264);
    if (v263)
    {
      goto LABEL_221;
    }

    WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &cfstr_AttemptingToRe.isa);
LABEL_210:
    v136 = 1;
LABEL_211:

LABEL_173:
    if (*(v120 + 8) == 1)
    {
      WebGPU::TextureView::~TextureView(v120, v134);
      bmalloc::api::tzoneFree(v137, v138);
    }

    else
    {
      --*(v120 + 8);
    }

    if (v136 != 3 && v136)
    {
      goto LABEL_380;
    }

LABEL_148:
    ++v114;
    v116 += 72;
    v115 -= 72;
    if (v115)
    {
      continue;
    }

    break;
  }

  v179 = (a3 + 4);
  v178 = a3[4];
  if (!v178)
  {
    LODWORD(v180) = 0;
    v181 = 0;
    v253 = 0;
    v182 = 0;
    v256 = 0;
    goto LABEL_280;
  }

LABEL_284:
  v183 = *v178;
  *(v183 + 8) = *(*v178 + 8) + 1;
  v262[0] = v183;
  if (!*(v183 + 16))
  {
    v185 = *(this + 24);
    goto LABEL_304;
  }

  v184 = *(v183 + 88);
  v185 = *(this + 24);
  if (v184[1])
  {
    v186 = v184 == v185;
  }

  else
  {
    v186 = 0;
  }

  if (v186)
  {
    v254 = WebGPU::TextureView::texture(v183);
    v187 = v262[0];
    v188 = *(v262[0] + 10);
    v189 = *(v262[0] + 12);
    v190 = *(v189 + 104);
    if (v190)
    {
      goto LABEL_291;
    }

    if (!v255 || WebGPU::TextureView::width(v262[0]) == v255 && WebGPU::TextureView::height(v262[0]) == v249 && (v187 = v262[0], v189 = *(v262[0] + 12), v246 == *(v189 + 40)))
    {
      if (*(v187 + 15) <= 1u && (v203 = *(v187 + 13), v203 <= 1))
      {
        if ((*(v187 + 10) - 38) <= 5 && (*(v189 + 52) & 0x10) != 0)
        {
          v236 = *(v187 + 11);
          v204 = @"depth stencil texture is not renderable";
          if (v236 <= 6 && ((1 << v236) & 0x4C) != 0 && v203 == 1)
          {
LABEL_291:
            v250 = *(v178 + 5);
            v256 = v250 != 0;
            v248 = (v188 < 0x2C) & (0xF8000000000uLL >> v188);
            if (v248)
            {
              v191 = [v258 depthAttachment];
              v192 = WebGPU::RenderPassEncoder::quantizedDepthValue(*(v262[0] + 10), *(v178 + 4));
              if (v192 <= 1.0)
              {
                v193 = v192;
              }

              else
              {
                v193 = 1.0;
              }

              v194 = v192 < 0.0;
              v195 = 0.0;
              if (!v194)
              {
                v195 = v193;
              }

              if (*(v178 + 2) != 1)
              {
                v195 = 1.0;
              }

              [v191 setClearDepth:v195];
              [v191 setTexture:v254];
              [v191 setLevel:0];
              v196 = *(v178 + 2);
              if (!v196 || v196 == 0x7FFFFFFF)
              {
                v197 = 0;
              }

              else if (v196 == 1)
              {
                v197 = 2;
              }

              else
              {
                v197 = 1;
              }

              [v191 setLoadAction:v197];
              [v191 setStoreAction:*(v178 + 3) == 1];
              if ([v191 loadAction] != 1 || objc_msgSend(v191, "storeAction") || WebGPU::TextureView::previouslyCleared(v262[0]))
              {
                v181 = 0;
                v182 = 0;
              }

              else
              {
                v181 = [v191 texture];
                v235 = [v191 texture];
                v182 = v235 != 0;
              }
            }

            else
            {
              v181 = 0;
              v182 = 0;
            }

            if (v190)
            {
              v212 = *(v178 + 2);
            }

            else
            {
              v212 = *(v178 + 2);
              if (v248)
              {
                v216 = v250 == 0;
              }

              else
              {
                v216 = 0;
              }

              if (!v216)
              {
                if (v212 || *(v178 + 3))
                {
                  v215 = @"depth load and store op were specified";
                  goto LABEL_377;
                }

LABEL_358:
                if (v241)
                {
                  [v258 setDefaultRasterSampleCount:{objc_msgSend(v254, "sampleCount")}];
                  if (![v258 defaultRasterSampleCount])
                  {
                    v215 = @"no color targets and depth-stencil texture is nil";
                    goto LABEL_377;
                  }

                  [v258 setRenderTargetWidth:{objc_msgSend(v254, "width")}];
                  [v258 setRenderTargetHeight:{objc_msgSend(v254, "height")}];
                }

                WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v217);
                v180 = *v179;
                if (!*v179)
                {
                  v253 = 0;
                  goto LABEL_280;
                }

                v218 = [v258 stencilAttachment];
                v219 = *(v180 + 9);
                v253 = v219 != 0;
                v220 = *v180;
                *(v220 + 2) = *(*v180 + 2) + 1;
                v262[0] = v220;
                v221 = (v188 < 0x2C) & (0xA4000000000uLL >> v188);
                v251 = v218;
                if (v221)
                {
                  v222 = WebGPU::TextureView::texture(v220);
                  v223 = v218;
                  v224 = v222;
                  [v223 setTexture:v222];

                  v218 = v251;
                }

                [v218 setClearStencil:*(v180 + 8)];
                v225 = *(v180 + 6);
                if (!v225 || v225 == 0x7FFFFFFF)
                {
                  v226 = 0;
                }

                else if (v225 == 1)
                {
                  v226 = 2;
                }

                else
                {
                  v226 = 1;
                }

                [v218 setLoadAction:v226];
                [v218 setStoreAction:*(v180 + 7) == 1];
                if (*(*(v262[0] + 12) + 104))
                {
LABEL_392:
                  WebGPU::TextureView::setCommandEncoder(v262[0], this);
                  if (v221 && [v251 loadAction] == 1 && !objc_msgSend(v251, "storeAction") && !WebGPU::TextureView::previouslyCleared(v262[0]))
                  {
                    v237 = [v251 texture];

                    v238 = [v251 texture];
                    LODWORD(v180) = v238 != 0;

                    v181 = v237;
                  }

                  else
                  {
                    LODWORD(v180) = 0;
                  }

                  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v231);

LABEL_280:
                  if ((v241 & 1) == 0)
                  {
                    goto LABEL_307;
                  }

                  goto LABEL_306;
                }

                v232 = *(v180 + 6);
                if (!v221 || v219)
                {
                  if (!v232 && !*(v180 + 7))
                  {
                    goto LABEL_392;
                  }

                  v233 = @"stencil load and store op were specified";
                }

                else
                {
                  if (v232 && *(v180 + 7))
                  {
                    goto LABEL_392;
                  }

                  v233 = @"stencil load and store op were not specified";
                }

                WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &v233->isa);
                WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v234);

                goto LABEL_379;
              }

              if (!v212 || !*(v178 + 3))
              {
                v215 = @"depth load and store op were not specified";
                goto LABEL_377;
              }
            }

            if (v212 == 1)
            {
              v213 = *(v178 + 4);
              if (v213 < 0.0 || v213 > 1.0)
              {
                v215 = @"depth clear value is invalid";
LABEL_377:
                WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &v215->isa);
                goto LABEL_378;
              }
            }

            goto LABEL_358;
          }
        }

        else
        {
          v204 = @"depth stencil texture is not renderable";
        }
      }

      else
      {
        v204 = @"depth stencil texture has more than one array layer or mip level";
      }
    }

    else
    {
      v204 = @"depth stencil texture dimensions mismatch";
    }

    v181 = 0;
    WebGPU::RenderPassEncoder::createInvalid(a1, this, *(this + 24), &v204->isa);
LABEL_378:

    WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v227);
    goto LABEL_379;
  }

LABEL_304:
  WebGPU::RenderPassEncoder::createInvalid(a1, this, v185, &cfstr_DepthStencilTe.isa);
  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(v262, v198);
  v181 = 0;
LABEL_379:

LABEL_380:
  v228 = v266;
  if (v266)
  {
    v229 = *(v266 - 4);
    if (v229)
    {
      v230 = (v266 + 8);
      do
      {
        if (*(v230 - 1) != -1 && *v230)
        {
          WTF::fastFree((*v230 - 16), v139);
        }

        v230 += 2;
        --v229;
      }

      while (v229);
    }

    WTF::fastFree((v228 - 16), v139);
  }

LABEL_389:
}

void sub_225686C04(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, id a27, uint64_t a28, WebGPU::TextureView *a29)
{
  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(&a29, a2);

  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref((v30 - 120), v32);
  WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v30 - 112), v33);

  _Unwind_Resume(a1);
}

void WebGPU::RenderPassEncoder::createInvalid(WebGPU::RenderPassEncoder *this, WebGPU::CommandEncoder *a2, atomic_ullong *a3, NSString *a4)
{
  v10 = a4;
  if (WebGPU::RenderPassEncoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v7);
  }

  else
  {
    NonCompact = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
  }

  v9 = NonCompact;
  WebGPU::RenderPassEncoder::RenderPassEncoder(NonCompact, a2, a3, v10);
  *this = v9;
}

void sub_2256870C0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  bmalloc::api::tzoneFree(v10, a2);

  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256871A0);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

uint64_t WebGPU::isMultisampleTexture(void *a1)
{
  v1 = a1;
  if ([v1 textureType] == 4)
  {

    return 1;
  }

  else
  {
    v3 = [v1 textureType] == 8;

    return v3;
  }
}

void WebGPU::RenderPassEncoder::create(uint64_t *a1, void *a2, __int128 *a3, uint64_t a4, char a5, char a6, uint64_t a7, void *a8, unint64_t a9, atomic_ullong *a10, void *a11)
{
  v23 = a2;
  v17 = a8;
  v19 = a11;
  if (WebGPU::RenderPassEncoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPassEncoder::s_heapRef, v18);
  }

  else
  {
    NonCompact = WebGPU::RenderPassEncoder::operatorNewSlow(0x9C0);
  }

  v21 = NonCompact;
  WebGPU::RenderPassEncoder::RenderPassEncoder(NonCompact, v23, a3, a4, a5, a6, a7, v17, a9, a10, v19);
  *a1 = v21;
}

void sub_225687320(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  bmalloc::api::tzoneFree(v16, a2);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::CommandEncoder::incrementBufferMapCount(uint64_t this, void *a2)
{
  ++*(this + 168);
  v2 = *(this + 72);
  if (!v2)
  {
    return this;
  }

  v3 = 0;
  v4 = *(this + 64);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v11 = this;
    MEMORY[0x22AA683C0](v2);
    this = v11;
    if (*(v2 + 24))
    {
LABEL_4:
      ++*(v2 + 8);
      v5 = 1;
      atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 == 1)
      {
        goto LABEL_5;
      }

LABEL_18:
      v13 = this;
      WTF::Lock::unlockSlow(v2);
      this = v13;
      if (!v4)
      {
        return this;
      }

      goto LABEL_6;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v4 = 0;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (!v4)
  {
    return this;
  }

LABEL_6:
  *(v4 + 24) = *(this + 168);
  while (1)
  {
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v7 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      if (v6 == 3)
      {
        WebGPU::CommandBuffer::~CommandBuffer(v4);

        return bmalloc::api::tzoneFree(v8, v9);
      }

      return this;
    }
  }

  v10 = *v4;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v10, a2);
}

uint64_t WebGPU::CommandEncoder::decrementBufferMapCount(uint64_t this, void *a2)
{
  --*(this + 168);
  v2 = *(this + 72);
  if (!v2)
  {
    return this;
  }

  v3 = 0;
  v4 = *(this + 64);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v11 = this;
    MEMORY[0x22AA683C0](v2);
    this = v11;
    if (*(v2 + 24))
    {
LABEL_4:
      ++*(v2 + 8);
      v5 = 1;
      atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 == 1)
      {
        goto LABEL_5;
      }

LABEL_18:
      v13 = this;
      WTF::Lock::unlockSlow(v2);
      this = v13;
      if (!v4)
      {
        return this;
      }

      goto LABEL_6;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v4 = 0;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (!v4)
  {
    return this;
  }

LABEL_6:
  *(v4 + 24) = *(this + 168);
  while (1)
  {
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v7 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      if (v6 == 3)
      {
        WebGPU::CommandBuffer::~CommandBuffer(v4);

        return bmalloc::api::tzoneFree(v8, v9);
      }

      return this;
    }
  }

  v10 = *v4;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v10, a2);
}

__CFString *WebGPU::CommandEncoder::errorValidatingImageCopyBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
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
      goto LABEL_7;
    }
  }

  v5 = 0;
  v6 = *v2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*v2, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v19 = a2;
    v20 = a1;
    MEMORY[0x22AA683C0](v6);
    a2 = v19;
    a1 = v20;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_7:
      if (*(v2 + 44) == 4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_7;
    }
  }

  v16 = a1;
  v17 = v6;
  v18 = a2;
  WTF::Lock::unlockSlow(v17);
  a1 = v16;
  a2 = v18;
  if (*(v2 + 44) == 4)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (!*(v2 + 8))
  {
    v9 = @"buffer is not valid";
    goto LABEL_20;
  }

LABEL_9:
  v8 = *(v2 + 280);
  if (*(v8 + 8))
  {
    if (v8 == *(a1 + 192))
    {
      if (*(a2 + 24))
      {
        v10 = *(a2 + 24) == -1;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v9 = 0;
      }

      else
      {
        v9 = @"imageCopyBuffer.layout.bytesPerRow is not a multiple of 256";
      }
    }

    else
    {
      v9 = @"buffer is not valid";
    }
  }

  else
  {
    v9 = @"buffer is not valid";
  }

  do
  {
LABEL_20:
    v11 = *v2;
    if ((*v2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v2, a2);
      return v9;
    }

    v12 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Buffer::~Buffer(v2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

atomic_ullong **WebGPU::protectedFromAPI(atomic_ullong **result, atomic_ullong *a2)
{
  while (1)
  {
    v2 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v3 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  v5 = *a2;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v10 = a2;
    v11 = result;
    MEMORY[0x22AA683C0](v5);
    a2 = v10;
    result = v11;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {
      goto LABEL_6;
    }

LABEL_3:
    *result = a2;
    return result;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    goto LABEL_3;
  }

LABEL_6:
  v7 = result;
  v8 = v5;
  v9 = a2;
  result = WTF::Lock::unlockSlow(v8);
  *v7 = v9;
  return result;
}

void *WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      v2 = result;
      WebGPU::Texture::~Texture(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 8);
    }
  }

  return result;
}

void WebGPU::CommandEncoder::copyBufferToTexture(WebGPU::CommandEncoder *a1, uint64_t a2, uint64_t a3, uint32x2_t *a4)
{
  v4 = a2 + 8;
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 8) == 0;
  }

  if (!v5 || *a3 != 0)
  {
    return;
  }

  v8 = *a1;
  if ((v8 - 3) < 0xFFFFFFFE)
  {
    v12 = *(a3 + 8);
    v13 = *(v12 + 8);
    v178 = v12;
    *(v12 + 8) = v13 + 2;
    *v173 = v12;
    v14 = *(a2 + 32);
    while (1)
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v16 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_23;
      }
    }

    v20 = 0;
    v21 = *v14;
    v22 = 1;
    atomic_compare_exchange_strong_explicit(*v14, &v20, 1u, memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      MEMORY[0x22AA683C0](v21);
    }

    ++*(v21 + 8);
    atomic_compare_exchange_strong_explicit(v21, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != 1)
    {
      WTF::Lock::unlockSlow(v21);
    }

LABEL_23:
    *&v170 = v14;
    v23 = WebGPU::CommandEncoder::errorValidatingImageCopyBuffer(a1, a2);
    if (v23)
    {
      goto LABEL_24;
    }

    if ((*(v14 + 40) & 4) != 0)
    {
      if (((*(*v173 + 104) & 1) != 0 || *(*v173 + 16)) && (v40 = *(*v173 + 72), *(v40 + 8)) && v40 == *(a1 + 24))
      {
        v23 = WebGPU::Texture::errorValidatingImageCopyTexture(a3, a4);
        if (v23)
        {
LABEL_24:
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyBufferToTexture: %@", v23];
LABEL_25:
          v25 = v24;

LABEL_49:
          *&v170 = 0;
          do
          {
            v42 = *v14;
            if ((*v14 & 1) == 0)
            {
              WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v14, v26);
              v46 = *v173;
              if (!*v173)
              {
                goto LABEL_55;
              }

              goto LABEL_58;
            }

            v43 = *v14;
            atomic_compare_exchange_strong_explicit(v14, &v43, v42 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v43 != v42);
          if (v42 == 3)
          {
            WebGPU::Buffer::~Buffer(v14);
            bmalloc::api::tzoneFree(v44, v45);
          }

          v46 = *v173;
          if (!*v173)
          {
LABEL_55:
            if (v25)
            {
LABEL_56:
              WebGPU::CommandEncoder::makeInvalid(a1, v25);

              goto LABEL_153;
            }

            goto LABEL_60;
          }

LABEL_58:
          if (*(v46 + 8) == 1)
          {
            WebGPU::Texture::~Texture(v46);
            bmalloc::api::tzoneFree(v50, v51);
            if (v25)
            {
              goto LABEL_56;
            }
          }

          else
          {
            --*(v46 + 8);
            if (v25)
            {
              goto LABEL_56;
            }
          }

LABEL_60:
          v47 = *(a2 + 32);
          while (1)
          {
            v48 = *v47;
            if ((*v47 & 1) == 0)
            {
              break;
            }

            v49 = *v47;
            atomic_compare_exchange_strong_explicit(v47, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v49 == v48)
            {
              goto LABEL_70;
            }
          }

          v52 = 0;
          v53 = *v47;
          v54 = 1;
          atomic_compare_exchange_strong_explicit(*v47, &v52, 1u, memory_order_acquire, memory_order_acquire);
          if (v52)
          {
            MEMORY[0x22AA683C0](v53);
          }

          ++*(v53 + 8);
          atomic_compare_exchange_strong_explicit(v53, &v54, 0, memory_order_release, memory_order_relaxed);
          if (v54 != 1)
          {
            WTF::Lock::unlockSlow(v53);
          }

LABEL_70:
          v177 = v47;
          WebGPU::Buffer::setCommandEncoder(v47, a1);
          v12 = v178;
          v55 = *(a1 + 25);
          *v173 = v55;
          v56 = *(v178 + 124);
          if (v56 == *(v178 + 120))
          {
            v57 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v178 + 112, v56 + 1, v173);
            v56 = *(v12 + 124);
            *(*(v12 + 112) + 8 * v56) = *v57;
          }

          else
          {
            *(*(v178 + 112) + 8 * v56) = v55;
          }

          *(v12 + 124) = v56 + 1;
          WebGPU::CommandEncoder::addTexture(a1, v12);
          if ((*(v12 + 105) & 1) == 0 && *(v12 + 104) == 1)
          {
            WebGPU::CommandEncoder::makeSubmitInvalid(a1, 0);
          }

          if (!a4->i32[0] && !a4->i32[1] && !a4[1].i32[0] || *(v47 + 44) == 4 || (*(v12 + 104) & 1) != 0)
          {
            goto LABEL_147;
          }

          v59 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(a1);
          v60 = *(a2 + 24);
          v61 = *(v47 + 8);
          if (!v61)
          {
            __break(0xC471u);
LABEL_235:
            JUMPOUT(0x225688650);
          }

          v62 = v61;
          if (v60 == -1)
          {
            v60 = [v61 length];
          }

          v63 = *(a3 + 32);
          v64 = WebGPU::Texture::aspectSpecificFormat(*(v12 + 48), v63);
          v65 = v64;
          WebGPU::Texture::texelBlockSize(v64, &v176);
          v66 = *(v12 + 44);
          if ((v66 - 1) >= 2)
          {
            if (v66)
            {
              goto LABEL_94;
            }

            v67 = v176;
            v68 = *(*(a1 + 24) + 80);
          }

          else
          {
            v67 = v176;
            v68 = *(*(a1 + 24) + 84);
          }

          v69 = v67 * v68;
          if ((v69 & 0xFFFFFFFF00000000) == 0)
          {
            if (v69 >= v60)
            {
              v60 = v60;
            }

            else
            {
              v60 = v69;
            }
          }

LABEL_94:
          if (v63 == 0x7FFFFFFF)
          {
            goto LABEL_146;
          }

          v161 = v60;
          if (v63 == 2)
          {
            v70 = 1;
          }

          else
          {
            if (v63 != 1)
            {
              v152 = 0;
              goto LABEL_103;
            }

            v70 = 2;
          }

          v152 = v70;
LABEL_103:
          v71 = *(a3 + 8);
          ++v71[1].i32[0];
          *v173 = v71;
          v72 = WebGPU::Texture::logicalMiplevelSpecificTextureExtent(v71, *(a3 + 16));
          v74 = v73;
          WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(v173);
          v75 = *(a3 + 28);
          v76 = v74 - v75;
          if (v74 - v75 >= a4[1].i32[0])
          {
            v76 = a4[1].u32[0];
          }

          v77 = v72;
          v78 = vbic_s8(vmin_u32(vsub_s32(v72, *(a3 + 20)), *a4), vcgt_u32(*(a3 + 20), v72));
          if (v74 >= v75)
          {
            v79 = v76;
          }

          else
          {
            v79 = 0;
          }

          LODWORD(v80) = *(a2 + 28);
          v153 = v78;
          if (v78.i32[1] <= 1u)
          {
            v81 = 1;
          }

          else
          {
            v81 = v78.u32[1];
          }

          if (v80 == -1)
          {
            v80 = v81;
          }

          else
          {
            v80 = v80;
          }

          v82 = (v80 * v161) >> 64;
          v83 = v80 * v161;
          if (v82)
          {
            v83 = 0;
          }

          v155 = v83;
          if (v82)
          {
            goto LABEL_146;
          }

          v149 = v78.i32[1];
          v150 = v79;
          v151 = v65;
          v154 = v62;
          v167 = *(v12 + 16);
          v84 = *(v12 + 44);
          LODWORD(v85) = a4[1].i32[0];
          if (v84 == 2)
          {
            v85 = 1;
          }

          else
          {
            v85 = v85;
          }

          v164 = v85;
          if (!v85)
          {
LABEL_139:
            if (v84 == 2)
            {
              v95 = a4->u32[1];
              v96 = a4[1].u32[0];
              v97 = v154;
              v98 = v161;
              if (v96 > 1 || v95 >= 2)
              {
                if (v161 > v176 << 11)
                {
                  if (!v96 || HIDWORD(v155))
                  {
                    goto LABEL_145;
                  }

                  v109 = 0;
                  while (1)
                  {
                    v110 = *(a3 + 28);
                    v111 = v110 + v109;
                    v112 = __CFADD__(v110, v109);
                    if (v112)
                    {
                      v113 = 0;
                    }

                    else
                    {
                      v113 = v111;
                    }

                    v114 = v109 * v155;
                    if ((v114 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_145;
                    }

                    if (v95)
                    {
                      if (HIDWORD(v161))
                      {
                        goto LABEL_145;
                      }

                      v115 = v114;
                      if (v112)
                      {
                        v146 = *(a2 + 16);
                        v119 = __CFADD__(v114, v146);
                        v147 = v114 + v146;
                        if (!v119)
                        {
                          *v173 = 0u;
                          *&v173[16] = v147;
                          v174 = -1;
                          v175 = *(a2 + 32);
                          v148 = *(a3 + 24);
                          v170 = 0u;
                          v171 = 0u;
                          v172 = 0;
                          *(&v170 + 1) = *(a3 + 8);
                          *&v171 = *(a3 + 16);
                          DWORD2(v171) = v148;
                          __break(0xC471u);
                          goto LABEL_235;
                        }

LABEL_145:

                        v62 = v154;
LABEL_146:

LABEL_147:
                        v177 = 0;
                        do
                        {
                          v100 = *v47;
                          if ((*v47 & 1) == 0)
                          {
                            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v47, v58);
                            goto LABEL_153;
                          }

                          v101 = *v47;
                          atomic_compare_exchange_strong_explicit(v47, &v101, v100 - 2, memory_order_relaxed, memory_order_relaxed);
                        }

                        while (v101 != v100);
                        if (v100 == 3)
                        {
                          WebGPU::Buffer::~Buffer(v47);
                          bmalloc::api::tzoneFree(v102, v103);
                        }

LABEL_153:
                        if (*(v12 + 8) != 1)
                        {
                          --*(v12 + 8);
                          return;
                        }

                        WebGPU::Texture::~Texture(v12);
LABEL_156:
                        bmalloc::api::tzoneFree(v38, v39);
                        return;
                      }

                      for (i = 0; i < v95; ++i)
                      {
                        v117 = i * v161;
                        if ((v117 & 0xFFFFFFFF00000000) != 0)
                        {
                          goto LABEL_145;
                        }

                        v118 = *(a2 + 16);
                        v119 = __CFADD__(v118, v117);
                        v120 = v118 + v117;
                        if (v119)
                        {
                          goto LABEL_145;
                        }

                        v119 = __CFADD__(v115, v120);
                        v121 = v115 + v120;
                        if (v119)
                        {
                          goto LABEL_145;
                        }

                        *v173 = 0u;
                        *&v173[16] = v121;
                        v174 = -1;
                        v175 = *(a2 + 32);
                        v122 = *(a3 + 24);
                        v119 = __CFADD__(v122, i);
                        v123 = v122 + i;
                        if (v119)
                        {
                          goto LABEL_145;
                        }

                        v170 = 0u;
                        v171 = 0u;
                        v172 = 0;
                        *(&v170 + 1) = *(a3 + 8);
                        *&v171 = *(a3 + 16);
                        *(&v171 + 1) = __PAIR64__(v113, v123);
                        LODWORD(v172) = *(a3 + 32);
                        *v169 = a4->i32[0];
                        *&v169[4] = 0x100000001;
                        WebGPU::CommandEncoder::copyBufferToTexture(a1, v173, &v170, v169);
                        v95 = a4->u32[1];
                      }

                      v96 = a4[1].u32[0];
                    }

                    if (++v109 >= v96)
                    {
                      goto LABEL_145;
                    }
                  }
                }
              }

              else
              {
                v98 = 0;
              }
            }

            else
            {
              v97 = v154;
              v98 = v161;
            }

            v99 = [v97 length];
            if (v99 >= WebGPU::Texture::bytesPerRow(v151, v153.u32[0], *(v12 + 40)))
            {
              v104 = *(v12 + 44);
              switch(v104)
              {
                case 2:
                  if (v153.i32[0] && v149 && v150)
                  {
                    v138 = *(a3 + 28);
                    v139 = *(a2 + 16);
                    v140 = *(a1 + 5);
                    *&v141 = v153.u32[0];
                    *(&v141 + 1) = v153.u32[1];
                    *v173 = v141;
                    *&v173[16] = v150;
                    v142 = *(a3 + 16);
                    v143 = *(a3 + 20);
                    *&v141 = v143;
                    *(&v141 + 1) = HIDWORD(v143);
                    v170 = v141;
                    *&v171 = v138;
                    [v140 copyFromBuffer:v154 sourceOffset:v139 sourceBytesPerRow:v98 sourceBytesPerImage:v155 sourceSize:v173 toTexture:v167 destinationSlice:0 destinationLevel:v142 destinationOrigin:&v170 options:v152];
                  }

                  break;
                case 1:
                  if (v153.i32[0] && v149 && a4[1].i32[0])
                  {
                    v129 = 0;
                    v130 = *(a3 + 20);
                    *&v131 = v130;
                    *(&v131 + 1) = HIDWORD(v130);
                    v132 = v131;
                    *&v131 = v153.u32[0];
                    *(&v131 + 1) = v153.u32[1];
                    v163 = v131;
                    v166 = v132;
                    do
                    {
                      if (!is_mul_ok(v129, v155))
                      {
                        break;
                      }

                      v133 = *(a2 + 16);
                      v134 = v133 + v129 * v155;
                      if (__CFADD__(v133, v129 * v155))
                      {
                        break;
                      }

                      v135 = v129 + *(a3 + 28);
                      v136 = *(a1 + 5);
                      *v173 = v163;
                      *&v173[16] = 1;
                      v137 = *(a3 + 16);
                      v170 = v166;
                      *&v171 = 0;
                      [v136 copyFromBuffer:v154 sourceOffset:v134 sourceBytesPerRow:v98 sourceBytesPerImage:v155 sourceSize:v173 toTexture:v167 destinationSlice:v135 destinationLevel:v137 destinationOrigin:&v170 options:v152];
                      ++v129;
                    }

                    while (v129 < a4[1].u32[0]);
                  }

                  break;
                case 0:
                  if (v153.i32[0])
                  {
                    v105 = v176 * v153.u32[0];
                    if ((v105 & 0xFFFFFFFF00000000) == 0)
                    {
                      v105 = v105;
                      if (v98 < v105)
                      {
                        v105 = v98;
                      }

                      v165 = v105;
                      if (a4[1].i32[0])
                      {
                        v106 = 0;
                        v160 = *(a3 + 20);
                        v158 = vdupq_n_s64(1uLL);
                        do
                        {
                          if (!is_mul_ok(v106, v155))
                          {
                            break;
                          }

                          v124 = *(a2 + 16);
                          v119 = __CFADD__(v124, v106 * v155);
                          v125 = v124 + v106 * v155;
                          if (v119 || __CFADD__(v125, v165))
                          {
                            break;
                          }

                          v162 = v125;
                          v126 = *(a3 + 28);
                          if (v125 + v165 <= [v154 length])
                          {
                            v127 = *(a1 + 5);
                            *v173 = v153.u32[0];
                            *&v173[8] = v158;
                            v128 = *(a3 + 16);
                            v170 = v160;
                            *&v171 = 0;
                            [v127 copyFromBuffer:v154 sourceOffset:v162 sourceBytesPerRow:v165 sourceBytesPerImage:v155 sourceSize:v173 toTexture:v167 destinationSlice:v106 + v126 destinationLevel:v128 destinationOrigin:&v170 options:v152];
                          }

                          ++v106;
                        }

                        while (v106 < a4[1].u32[0]);
                      }
                    }
                  }

                  break;
              }
            }

            goto LABEL_145;
          }

          v86 = 0;
          v87 = vceq_s32(v153, v77);
          v159 = v87.i8[0];
          v156 = v87.i32[0] & v87.i32[1] & (v150 == v74);
          v157 = v87.i8[0] & v87.i8[4];
          while (1)
          {
            if (*(v12 + 44) == 2)
            {
              v88 = 0;
            }

            else
            {
              v88 = v86 + *(a3 + 28);
            }

            v89 = [v167 parentTexture];

            if (v89)
            {
              __break(0xC471u);
              JUMPOUT(0x225688670);
            }

            if (v84 == 2)
            {
              if (!v156)
              {
                goto LABEL_136;
              }
            }

            else if (v84 == 1)
            {
              if ((v157 & 1) == 0)
              {
                goto LABEL_136;
              }
            }

            else if (v84 || (v159 & 1) == 0)
            {
LABEL_136:
              v90 = *(a1 + 24);
              v91 = *(a1 + 5);
              v92 = *(a3 + 8);
              ++v92[1].i32[0];
              *v173 = v92;
              WebGPU::CommandEncoder::clearTextureIfNeeded(v92, *(a3 + 16), v88, v90, v91);
              if (v92[1].i32[0] == 1)
              {
                WebGPU::Texture::~Texture(v92);
                bmalloc::api::tzoneFree(v93, v94);
              }

              else
              {
                --v92[1].i32[0];
              }

              goto LABEL_123;
            }

            WebGPU::Texture::setPreviouslyCleared(v12, *(a3 + 16), v88, 1);
LABEL_123:
            if (v164 == ++v86)
            {
              goto LABEL_139;
            }
          }
        }

        if ((*(*v173 + 52) & 2) != 0)
        {
          if (*(*v173 + 40) == 1)
          {
            v107 = *(*v173 + 48);
            if ((v107 - 38) <= 5)
            {
              v168 = *(a3 + 32);
              if (!WebGPU::Texture::refersToSingleAspect(*(*v173 + 48), v168))
              {
                v28 = @"destination aspect refers to more than one asepct";
                goto LABEL_47;
              }

              if ((v107 - 38) >= 2 && (v107 != 41 && v107 != 43 || v168 != 1))
              {
                v28 = @"destination is not valid depthStencilCopyDestination";
                goto LABEL_47;
              }

              v107 = WebGPU::Texture::aspectSpecificFormat(v107, v168);
            }

            v108 = WebGPU::Texture::errorValidatingTextureCopyRange(a3, a4);
            if (v108)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyBufferToTexture: %@", v108];

              goto LABEL_49;
            }

            v144 = *(*v173 + 48);
            if ((v144 - 38) >= 6)
            {
              WebGPU::Texture::texelBlockSize(v144, v169);
              if (*(a2 + 16) % *v169)
              {
                v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyBufferToTexture: %@", @"source.layout.offset is not a multiple of texelBlockSize"];
                goto LABEL_48;
              }
            }

            else if ((*(a2 + 16) & 3) != 0)
            {
              v28 = @"source.layout.offset is not a multiple of four for depth stencil format";
              goto LABEL_47;
            }

            WebGPU::protectedFromAPI(v169, *(a2 + 32));
            v23 = WebGPU::Texture::errorValidatingLinearTextureData(v4, *(*v169 + 32), v107, *a4, a4[1].u32[0]);
            WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(v169, v145);
            if (!v23)
            {
              v25 = 0;

              goto LABEL_49;
            }

            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyBufferToTexture: %@", v23];
            goto LABEL_25;
          }

          v28 = @"destination sample count is not one";
        }

        else
        {
          v28 = @"destination usage does not contain CopyDst";
        }
      }

      else
      {
        v28 = @"destination texture is not valid to use with this GPUCommandEncoder";
      }
    }

    else
    {
      v28 = @"source usage does not contain CopySrc";
    }

LABEL_47:
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyBufferToTexture: %@", v28];
LABEL_48:
    v25 = v41;
    goto LABEL_49;
  }

  if (v8 != 2)
  {
    if (*(a1 + 6))
    {
      v27 = *(a1 + 6);
    }

    else
    {
      v27 = @"Encoder state is locked";
    }

    WebGPU::CommandEncoder::makeInvalid(a1, &v27->isa);
    return;
  }

  v17 = *(a1 + 24);
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v19 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_36;
    }
  }

  v29 = 0;
  v30 = *v17;
  v31 = 1;
  atomic_compare_exchange_strong_explicit(*v17, &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    MEMORY[0x22AA683C0](v30);
    ++*(v30 + 8);
    atomic_compare_exchange_strong_explicit(v30, &v31, 0, memory_order_release, memory_order_relaxed);
    if (v31 == 1)
    {
      goto LABEL_36;
    }

LABEL_229:
    WTF::Lock::unlockSlow(v30);
    goto LABEL_36;
  }

  ++*(v30 + 8);
  atomic_compare_exchange_strong_explicit(v30, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != 1)
  {
    goto LABEL_229;
  }

LABEL_36:
  v32 = MEMORY[0x277CCACA8];
  v33 = WebGPU::CommandsMixin::encoderStateName(a1);
  v34 = [v32 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::copyBufferToTexture(const WGPUImageCopyBuffer &, const WGPUImageCopyTexture &, const WGPUExtent3D &)", v33];
  WebGPU::Device::generateAValidationError(v17, v34);

  *v173 = 0;
  do
  {
    v36 = *v17;
    if ((*v17 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v17, v35);
      return;
    }

    v37 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v37, v36 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v37 != v36);
  if (v36 == 3)
  {
    WebGPU::Device::~Device(v17, v35);
    goto LABEL_156;
  }
}

void sub_2256886A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, atomic_ullong *a35)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a35, v38);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v36 - 176));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_2256887EC(_Unwind_Exception *a1, void *a2)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref((v2 - 120), a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v2 - 112));
  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::clearTextureIfNeeded(uint32x2_t *a1, uint64_t a2, unint64_t a3, WebGPU::Device *a4, void *a5)
{
  v9 = a5;
  if (!v9 || WebGPU::Texture::previouslyCleared(a1, a2, a3))
  {
    goto LABEL_45;
  }

  WebGPU::Texture::setPreviouslyCleared(a1, a2, a3, 1);
  v10 = a1[5].i32[1];
  if (v10 == 2)
  {
    v34 = vmax_u32(vshl_u32(a1[3], vneg_s32(vdup_n_s32(a2))), 0x100000001);
    if (a1[4].i32[0] >> a2 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a1[4].i32[0] >> a2;
    }

    v13 = *&a1[2];
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  else if (v10 == 1)
  {
    v34 = vmax_u32(vshl_u32(a1[3], vneg_s32(vdup_n_s32(a2))), 0x100000001);
    v12 = a1[4].u32[0];
    v13 = *&a1[2];
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v10)
    {
LABEL_45:

      return;
    }

    v11 = a1[3].i32[0] >> a2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = a1[4].u32[0];
    v34 = v11 | 0x100000000;
    v13 = *&a1[2];
    if (!v13)
    {
LABEL_44:

      goto LABEL_45;
    }
  }

  v14 = a1[6].u32[0];
  if ([v13 pixelFormat] == 260 || objc_msgSend(v13, "pixelFormat") == 261)
  {
    v14 = 42;
  }

  v30 = v34;
  v31 = HIDWORD(v34);
  v15 = a1[5].i32[1];
  v32 = v12;
  v16 = WebGPU::Texture::physicalTextureExtent(v15, v14, v34 | (HIDWORD(v34) << 32));
  v35 = v17;
  v18 = WebGPU::Texture::texelBlockWidth(v14);
  if (v18)
  {
    v19 = v18;
    v33 = v13;
    v20 = a1[5].u32[0];
    WebGPU::Texture::texelBlockSize(v14, &v39);
    v21 = v16 / v19;
    if (v16 % v19)
    {
      ++v21;
    }

    v22 = v21 * v20;
    if (is_mul_ok(v39, v22))
    {
      v23 = v39 * v22;
    }

    else
    {
      v23 = -1;
    }

    v13 = v33;
    v24 = HIDWORD(v16);
    if (!is_mul_ok(v23, HIDWORD(v16)))
    {
      goto LABEL_44;
    }
  }

  else
  {
    v23 = -1;
    v24 = HIDWORD(v16);
    if (!is_mul_ok(0xFFFFFFFFFFFFFFFFLL, HIDWORD(v16)))
    {
      goto LABEL_44;
    }
  }

  v25 = v23 * v24;
  v26 = v35;
  if (v15 != 2)
  {
    v26 = 1;
  }

  if (!is_mul_ok(v25, v26) || !(v25 * v26))
  {
    goto LABEL_44;
  }

  v27 = WebGPU::Device::safeCreateBuffer(a4, v25 * v26, 0);
  if (!v27)
  {
LABEL_43:

    goto LABEL_44;
  }

  v28 = a1[5].i32[1];
  if (v28 == 1)
  {
    v25 = 0;
LABEL_39:
    v32 = 1;
LABEL_40:
    v29 = [v13 pixelFormat];
    if (a3 < [v13 arrayLength])
    {
      v39 = v30;
      v40 = v31;
      v41 = v32;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      [v9 copyFromBuffer:v27 sourceOffset:0 sourceBytesPerRow:v23 sourceBytesPerImage:v25 sourceSize:&v39 toTexture:v13 destinationSlice:a3 destinationLevel:a2 destinationOrigin:&v36 options:v29 == 260];
      if (v29 == 260)
      {
        v39 = v30;
        v40 = v31;
        v41 = v32;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        [v9 copyFromBuffer:v27 sourceOffset:0 sourceBytesPerRow:v23 >> 2 sourceBytesPerImage:v25 >> 2 sourceSize:&v39 toTexture:v13 destinationSlice:a3 destinationLevel:a2 destinationOrigin:&v36 options:2];
      }
    }

    goto LABEL_43;
  }

  if (v28 == 2)
  {
    a3 = 0;
    goto LABEL_40;
  }

  if (v28 != 0x7FFFFFFF)
  {
    v25 = 0;
    v31 = 1;
    goto LABEL_39;
  }

  __break(0xC471u);
}

uint64_t WebGPU::CommandEncoder::waitForCommandBufferCompletion(WebGPU::CommandEncoder *this)
{
  v2 = *(this + 9);
  result = 1;
  if (!v2)
  {
    return result;
  }

  v4 = 0;
  v5 = *(this + 8);
  atomic_compare_exchange_strong_explicit(v2, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v2);
    if (*(v2 + 24))
    {
LABEL_4:
      ++*(v2 + 8);
      v6 = 1;
      atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_5;
      }

LABEL_17:
      WTF::Lock::unlockSlow(v2);
      if (v5)
      {
        goto LABEL_6;
      }

      return 1;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v5 = 0;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

LABEL_6:
  v7 = [*(v5 + 16) status];
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    WTF::MonotonicTime::now(v7);
    result = WTF::BinarySemaphore::waitUntil();
  }

  else
  {
    result = 1;
  }

  do
  {
    v9 = *v5;
    if ((*v5 & 1) == 0)
    {
      v14 = *v5;
      v15 = result;
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(v14, v8);
      return v15;
    }

    v10 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v9 == 3)
  {
    v11 = result;
    WebGPU::CommandBuffer::~CommandBuffer(v5);
    bmalloc::api::tzoneFree(v12, v13);
    return v11;
  }

  return result;
}

void WebGPU::CommandEncoder::addTexture(id *this, id *a2)
{
  v4 = a2[2];
  if (v4)
  {
    [this[12] addObject:v4];
  }

  v5 = a2[16];
  v6 = v5;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong(this + 22, v5);
    v6 = v7;
    this[23] = a2[17];
  }
}

void WebGPU::CommandEncoder::makeSubmitInvalid(WebGPU::CommandEncoder *this, NSString *a2)
{
  v14 = a2;
  *(this + 172) = 1;
  v3 = *(this + 9);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *(this + 8);
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v3);
  }

  if (*(v3 + 24))
  {
    ++*(v3 + 8);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_15:
    WTF::Lock::unlockSlow(v3);
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v5 = 0;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_7:
  v7 = v14;
  if (!v14)
  {
    v7 = *(this + 6);
  }

  WebGPU::CommandBuffer::makeInvalid(v5, v7);
  do
  {
    v9 = *v5;
    if ((*v5 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v5, v8);
      goto LABEL_18;
    }

    v10 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v9 == 3)
  {
    WebGPU::CommandBuffer::~CommandBuffer(v5);
    bmalloc::api::tzoneFree(v11, v12);
  }

LABEL_18:
}

void sub_225688F00(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::CommandBuffer,(WTF::DestructionThread)0>::deref(v10, a2);

  _Unwind_Resume(a1);
}

void WebGPU::CommandEncoder::copyTextureToBuffer(WebGPU::CommandEncoder *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 + 8;
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a3 == 0;
  }

  if (!v5 || *(a3 + 8) != 0)
  {
    return;
  }

  v8 = *a1;
  if ((v8 - 3) < 0xFFFFFFFE)
  {
    v12 = *(a2 + 8);
    v13 = v12[1].i32[0];
    v168 = v12;
    v12[1].i32[0] = v13 + 2;
    *&v163 = v12;
    if ((v12[13].i8[0] & 1) == 0 && !*&v12[2] || (v14 = v12[9], !*(*&v14 + 8)) || *&v14 != *(a1 + 24))
    {
      v15 = @"source texture is not valid to use with this GPUCommandEncoder";
LABEL_15:
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v15];
LABEL_16:
      v17 = v16;
      goto LABEL_17;
    }

    v44 = WebGPU::Texture::errorValidatingImageCopyTexture(a2, a4);
    if (v44)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v44];
LABEL_52:
      v17 = v45;

      goto LABEL_17;
    }

    if ((v12[6].i8[4] & 1) == 0)
    {
      v15 = @"sourceTexture usage does not contain CopySrc";
      goto LABEL_15;
    }

    if (v12[5].i32[0] != 1)
    {
      v15 = @"sourceTexture sample count != 1";
      goto LABEL_15;
    }

    v49 = v12[6].u32[0];
    if ((v49 - 38) <= 5)
    {
      v50 = *(a2 + 32);
      if (!WebGPU::Texture::refersToSingleAspect(v12[6].u32[0], v50))
      {
        v51 = @"copying to depth stencil texture with more than one aspect";
        goto LABEL_152;
      }

      v51 = @"copying to depth stencil texture, validDepthStencilCopySource fails";
      if (v49 > 0x2B || ((1 << v49) & 0xCC000000000) == 0 && (v49 != 41 || v50 != 1))
      {
        goto LABEL_152;
      }

      v49 = WebGPU::Texture::aspectSpecificFormat(v49, v50);
    }

    v52 = WebGPU::CommandEncoder::errorValidatingImageCopyBuffer(a1, a3);
    if (v52)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v52];
LABEL_73:
      v17 = v53;

      goto LABEL_17;
    }

    WebGPU::protectedFromAPI(v160, *(a3 + 32));
    v97 = *(*v160 + 40);
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(v160, v98);
    if ((v97 & 8) != 0)
    {
      v52 = WebGPU::Texture::errorValidatingTextureCopyRange(a2, a4);
      if (v52)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v52];
        goto LABEL_73;
      }

      v139 = v12[6].u32[0];
      if ((v139 - 38) >= 6)
      {
        WebGPU::Texture::texelBlockSize(v139, v160);
        if (*(a3 + 16) % *v160)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", @"destination.layout.offset is not a multiple of texelBlockSize"];
          goto LABEL_16;
        }
      }

      else if ((*(a3 + 16) & 3) != 0)
      {
        v51 = @"destination.layout.offset is not a multiple of 4";
        goto LABEL_152;
      }

      WebGPU::protectedFromAPI(v160, *(a3 + 32));
      v44 = WebGPU::Texture::errorValidatingLinearTextureData(v4, *(*v160 + 32), v49, *a4, a4[2]);
      WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(v160, v140);
      if (v44)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v44];
        goto LABEL_52;
      }

      v17 = 0;

LABEL_17:
      if (v12[1].i32[0] == 1)
      {
        WebGPU::Texture::~Texture(v12);
        bmalloc::api::tzoneFree(v22, v23);
        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        --v12[1].i32[0];
        if (v17)
        {
LABEL_19:
          WebGPU::CommandEncoder::makeInvalid(a1, v17);

LABEL_123:
          if (v12[1].i32[0] != 1)
          {
            --v12[1].i32[0];
            return;
          }

          WebGPU::Texture::~Texture(v12);
          goto LABEL_126;
        }
      }

      v24 = *(a3 + 32);
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
          goto LABEL_48;
        }
      }

      v38 = 0;
      v39 = *v24;
      v40 = 1;
      atomic_compare_exchange_strong_explicit(*v24, &v38, 1u, memory_order_acquire, memory_order_acquire);
      if (v38)
      {
        MEMORY[0x22AA683C0](v39);
      }

      ++*(v39 + 8);
      atomic_compare_exchange_strong_explicit(v39, &v40, 0, memory_order_release, memory_order_relaxed);
      if (v40 != 1)
      {
        WTF::Lock::unlockSlow(v39);
      }

LABEL_48:
      v167 = v24;
      v12 = v168;
      v41 = *(a1 + 25);
      *&v163 = v41;
      v42 = v168[15].u32[1];
      if (v42 == v168[15].i32[0])
      {
        v43 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v168[14], v42 + 1, &v163);
        v42 = v12[15].u32[1];
        *(*&v12[14] + 8 * v42) = *v43;
      }

      else
      {
        *(*&v168[14] + 8 * v42) = v41;
      }

      v12[15].i32[1] = v42 + 1;
      WebGPU::CommandEncoder::addTexture(a1, v12);
      if ((v12[13].i8[1] & 1) == 0 && v12[13].i8[0] == 1)
      {
        WebGPU::CommandEncoder::makeSubmitInvalid(a1, 0);
      }

      WebGPU::Buffer::setCommandEncoder(v24, a1);
      WebGPU::Buffer::indirectBufferInvalidated(v24, a1);
      if ((v12[13].i8[0] & 1) != 0 || *(v24 + 44) == 4 || (v47 = *(a2 + 32), v47 == 0x7FFFFFFF))
      {
LABEL_117:
        v167 = 0;
        do
        {
          v83 = *v24;
          if ((*v24 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v24, v46);
            goto LABEL_123;
          }

          v84 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v84, v83 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v84 != v83);
        if (v83 == 3)
        {
          WebGPU::Buffer::~Buffer(v24);
          bmalloc::api::tzoneFree(v85, v86);
        }

        goto LABEL_123;
      }

      if (v47 == 2)
      {
        v48 = 1;
      }

      else
      {
        if (v47 != 1)
        {
          v147 = 0;
LABEL_77:
          v55 = WebGPU::Texture::logicalMiplevelSpecificTextureExtent(v12, *(a2 + 16));
          v56 = *(a2 + 28);
          v57 = v54 - v56;
          if (v54 - v56 >= a4[2])
          {
            v57 = a4[2];
          }

          v58 = *(a2 + 20);
          v59 = *a4;
          if (v54 >= v56)
          {
            v60 = v57;
          }

          else
          {
            v60 = 0;
          }

          v143 = v60;
          v156 = *(v24 + 8);
          v61 = *(a3 + 24);
          if (v61 == -1)
          {
            v61 = [v156 length];
          }

          v152 = vbic_s8(vmin_u32(vsub_s32(v55, v58), v59), vcgt_u32(v58, v55));
          v62 = WebGPU::Texture::aspectSpecificFormat(v12[6].u32[0], *(a2 + 32));
          v63 = v62;
          WebGPU::Texture::texelBlockSize(v62, &v166);
          v64 = v12[5].i32[1];
          if ((v64 - 1) >= 2)
          {
            if (v64)
            {
              v65 = v166;
              goto LABEL_94;
            }

            v65 = v166;
            v66 = *(*(a1 + 24) + 80);
          }

          else
          {
            v65 = v166;
            v66 = *(*(a1 + 24) + 84);
          }

          v67 = v65 * v66;
          if ((v67 & 0xFFFFFFFF00000000) == 0)
          {
            if (v67 >= v61)
            {
              v61 = v61;
            }

            else
            {
              v61 = v67;
            }
          }

LABEL_94:
          v68 = v65;
          v69 = v61 % v65;
          v148 = v68;
          v70 = v68 - v69;
          if (v69)
          {
            v71 = v70;
          }

          else
          {
            v71 = 0;
          }

          v72 = v71 + v61;
          v73 = a4[1];
          v74 = a4[2];
          v75 = v64 != 2 || v73 >= 2;
          if (v75 || v74 >= 2)
          {
            v77 = v72;
          }

          else
          {
            v77 = 0;
          }

          LODWORD(v78) = *(a3 + 28);
          if (v152.i32[1] <= 1u)
          {
            v79 = 1;
          }

          else
          {
            v79 = v152.u32[1];
          }

          if (v78 == -1)
          {
            v78 = v79;
          }

          else
          {
            v78 = v78;
          }

          v157 = v77;
          v80 = v78 * v77;
          v81 = !is_mul_ok(v78, v77);
          if (v81)
          {
            v82 = 0;
          }

          else
          {
            v82 = v80;
          }

          if (v81)
          {
            goto LABEL_116;
          }

          if (v64 == 2 && v77 > v148 << 11)
          {
            if (v74 && !HIDWORD(v80))
            {
              v153 = 0;
              v149 = HIDWORD(v77);
              while (1)
              {
                v107 = *(a2 + 28);
                v108 = __CFADD__(v107, v153);
                v109 = v107 + v153;
                v110 = v108;
                v111 = v108 ? 0 : v109;
                v112 = v153 * v80;
                if ((v112 & 0xFFFFFFFF00000000) != 0 || v110)
                {
                  break;
                }

                if (v73)
                {
                  if (!v149)
                  {
                    v113 = 0;
                    v114 = v112;
                    while (1)
                    {
                      v115 = *(a2 + 24);
                      v116 = v115 + v113;
                      v117 = __CFADD__(v115, v113);
                      v118 = v113 * v157;
                      if ((v118 & 0xFFFFFFFF00000000) != 0)
                      {
                        break;
                      }

                      if (v117)
                      {
                        break;
                      }

                      v163 = 0u;
                      v164 = 0u;
                      v165 = 0;
                      *(&v163 + 1) = *(a2 + 8);
                      *&v164 = *(a2 + 16);
                      *(&v164 + 1) = __PAIR64__(v111, v116);
                      v119 = *(a3 + 16);
                      v75 = __CFADD__(v119, v118);
                      v120 = v119 + v118;
                      LODWORD(v165) = *(a2 + 32);
                      if (v75)
                      {
                        break;
                      }

                      v75 = __CFADD__(v114, v120);
                      v121 = v114 + v120;
                      if (v75)
                      {
                        break;
                      }

                      *v160 = 0u;
                      *&v160[16] = v121;
                      v161 = -1;
                      v162 = *(a3 + 32);
                      v158 = *a4;
                      v159 = 0x100000001;
                      WebGPU::CommandEncoder::copyTextureToBuffer(a1, &v163, v160, &v158);
                      ++v113;
                      v73 = a4[1];
                      if (v113 >= v73)
                      {
                        v74 = a4[2];
                        goto LABEL_170;
                      }
                    }
                  }

                  goto LABEL_116;
                }

LABEL_170:
                if (++v153 >= v74)
                {
                  goto LABEL_116;
                }
              }
            }

            goto LABEL_116;
          }

          v87 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(a1);
          v142 = v82;
          if (a4[2])
          {
            v88 = 0;
            do
            {
              if (v12[5].i32[1] == 2)
              {
                v89 = 0;
              }

              else
              {
                v89 = v88 + *(a2 + 28);
              }

              if (!WebGPU::Texture::previouslyCleared(v12, *(a2 + 16), v89))
              {
                v90 = *(a1 + 24);
                v91 = *(a1 + 5);
                v92 = *(a2 + 8);
                ++v92[1].i32[0];
                *&v163 = v92;
                WebGPU::CommandEncoder::clearTextureIfNeeded(v92, *(a2 + 16), v89, v90, v91);
                if (v92[1].i32[0] == 1)
                {
                  WebGPU::Texture::~Texture(v92);
                  bmalloc::api::tzoneFree(v93, v94);
                }

                else
                {
                  --v92[1].i32[0];
                }
              }

              ++v88;
            }

            while (v88 < a4[2]);
          }

          v95 = v12[5].i32[1];
          if (v95)
          {
            v96 = v142;
            if (v95 == 2)
            {
              if (!v152.i32[0] || !v152.i32[1] || !v143)
              {
                goto LABEL_116;
              }
            }

            else if (v95 == 1 && (!v152.i32[0] || !v152.i32[1]))
            {
              goto LABEL_116;
            }
          }

          else
          {
            v96 = v142;
            if (!v152.i32[0])
            {
LABEL_116:

              goto LABEL_117;
            }
          }

          v99 = [v156 length];
          v145 = v152.u32[0];
          if (v99 >= WebGPU::Texture::bytesPerRow(v63, v152.u32[0], v12[5].u32[0]))
          {
            v100 = v12[5].i32[1];
            if (v100 == 2)
            {
              v132 = *(a2 + 28);
              v133 = *(a3 + 16);
              v134 = *(a1 + 5);
              v135 = v12[2];
              v136 = *(a2 + 16);
              v137 = *(a2 + 20);
              *&v138 = v137;
              *(&v138 + 1) = HIDWORD(v137);
              v163 = v138;
              *&v164 = v132;
              *&v138 = v152.u32[0];
              *(&v138 + 1) = v152.u32[1];
              *v160 = v138;
              *&v160[16] = v143;
              [v134 copyFromTexture:*&v135 sourceSlice:0 sourceLevel:v136 sourceOrigin:&v163 sourceSize:v160 toBuffer:v156 destinationOffset:v133 destinationBytesPerRow:v157 destinationBytesPerImage:v96 options:v147];
            }

            else if (v100 == 1)
            {
              if (a4[2])
              {
                v122 = 0;
                v123 = *(a2 + 20);
                *&v124 = v123;
                *(&v124 + 1) = HIDWORD(v123);
                v151 = v124;
                *&v124 = v152.u32[0];
                *(&v124 + 1) = v152.u32[1];
                v146 = v124;
                do
                {
                  if (!is_mul_ok(v122, v96))
                  {
                    break;
                  }

                  v125 = *(a3 + 16);
                  v126 = v125 + v122 * v96;
                  if (__CFADD__(v125, v122 * v96))
                  {
                    break;
                  }

                  v127 = *(a2 + 28);
                  v155 = *(a1 + 5);
                  v128 = *&v12[2];
                  v129 = v96;
                  v130 = v128;
                  v131 = *(a2 + 16);
                  v163 = v151;
                  *&v164 = 0;
                  *v160 = v146;
                  *&v160[16] = 1;
                  [v155 copyFromTexture:v128 sourceSlice:v122 + v127 sourceLevel:v131 sourceOrigin:&v163 sourceSize:v160 toBuffer:v156 destinationOffset:v126 destinationBytesPerRow:v157 destinationBytesPerImage:v129 options:v147];

                  ++v122;
                  v96 = v142;
                }

                while (v122 < a4[2]);
              }
            }

            else if (!v100 && a4[2])
            {
              v101 = 0;
              v144 = *(a2 + 20);
              v154 = v148 * v152.u32[0];
              v141 = vdupq_n_s64(1uLL);
              while (is_mul_ok(v101, v96))
              {
                v102 = *(a3 + 16);
                v103 = v102 + v101 * v96;
                if (__CFADD__(v102, v101 * v96))
                {
                  break;
                }

                if (__CFADD__(v103, v154))
                {
                  __break(0xC471u);
                  return;
                }

                v104 = *(a2 + 28);
                if (v103 + v154 <= [v156 length])
                {
                  v150 = *(a1 + 5);
                  v105 = *&v12[2];
                  v106 = *(a2 + 16);
                  v163 = v144;
                  *&v164 = 0;
                  *v160 = v145;
                  *&v160[8] = v141;
                  [v150 copyFromTexture:v105 sourceSlice:v101 + v104 sourceLevel:v106 sourceOrigin:&v163 sourceSize:v160 toBuffer:v156 destinationOffset:v103 destinationBytesPerRow:v157 destinationBytesPerImage:v142 options:v147];
                }

                ++v101;
                v96 = v142;
                if (v101 >= a4[2])
                {
                  goto LABEL_116;
                }
              }
            }
          }

          goto LABEL_116;
        }

        v48 = 2;
      }

      v147 = v48;
      goto LABEL_77;
    }

    v51 = @"destination buffer usage does not contain CopyDst";
LABEL_152:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToBuffer: %@", v51];
    goto LABEL_16;
  }

  if (v8 == 2)
  {
    v18 = *(a1 + 24);
    while (1)
    {
      v19 = *v18;
      if ((*v18 & 1) == 0)
      {
        break;
      }

      v20 = *v18;
      atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_38;
      }
    }

    v27 = 0;
    v28 = *v18;
    v29 = 1;
    atomic_compare_exchange_strong_explicit(*v18, &v27, 1u, memory_order_acquire, memory_order_acquire);
    if (v27)
    {
      MEMORY[0x22AA683C0](v28);
      ++*(v28 + 8);
      atomic_compare_exchange_strong_explicit(v28, &v29, 0, memory_order_release, memory_order_relaxed);
      if (v29 == 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      ++*(v28 + 8);
      atomic_compare_exchange_strong_explicit(v28, &v29, 0, memory_order_release, memory_order_relaxed);
      if (v29 == 1)
      {
        goto LABEL_38;
      }
    }

    WTF::Lock::unlockSlow(v28);
LABEL_38:
    v30 = MEMORY[0x277CCACA8];
    v31 = WebGPU::CommandsMixin::encoderStateName(a1);
    v32 = [v30 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::copyTextureToBuffer(const WGPUImageCopyTexture &, const WGPUImageCopyBuffer &, const WGPUExtent3D &)", v31];
    WebGPU::Device::generateAValidationError(v18, v32);

    *&v163 = 0;
    do
    {
      v34 = *v18;
      if ((*v18 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v18, v33);
        return;
      }

      v35 = *v18;
      atomic_compare_exchange_strong_explicit(v18, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v35 != v34);
    if (v34 != 3)
    {
      return;
    }

    WebGPU::Device::~Device(v18, v33);
LABEL_126:
    bmalloc::api::tzoneFree(v36, v37);
    return;
  }

  if (*(a1 + 6))
  {
    v21 = *(a1 + 6);
  }

  else
  {
    v21 = @"Encoder state is locked";
  }

  WebGPU::CommandEncoder::makeInvalid(a1, &v21->isa);
}

void sub_225689BD8(_Unwind_Exception *a1)
{
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v2 - 176));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_225689D18(_Unwind_Exception *a1)
{
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v1 - 176));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_225689D34(_Unwind_Exception *a1, void *a2)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref((v2 - 120), a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v2 - 112));
  _Unwind_Resume(a1);
}

BOOL WebGPU::areCopyCompatible(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = WebGPU::Texture::removeSRGBSuffix(a1);
  return v4 == WebGPU::Texture::removeSRGBSuffix(a2);
}

uint64_t WebGPU::CommandEncoder::computeSize(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 12);
  v5 = (*a1 + 8 * v4);
  if (v4)
  {
    v7 = 0;
    v8 = (*a1 + 8 * v4);
    v9 = v8;
    while (1)
    {
      v12 = *v3;
      if (*v3 == -2 || v12 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225689F50);
      }

      v13 = *(a2 + 480);
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v13 - 8);
      v15 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      v18 = v14 & ((v17 >> 31) ^ v17);
      v19 = *(v13 + 16 * v18);
      if (v19 != v12)
      {
        break;
      }

LABEL_13:
      if (!*(v13 + 16 * v18 + 8))
      {
        goto LABEL_14;
      }

LABEL_5:
      v3 += 8;
      if (v3 >= v5)
      {
        LODWORD(v4) = *(a1 + 12);
        v5 = v9;
        v21 = *a1 + 8 * v4;
        if (v9 != v21)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    v20 = 1;
    while (v19 != -1)
    {
      v18 = (v18 + v20) & v14;
      v19 = *(v13 + 16 * v18);
      ++v20;
      if (v19 == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v11 = v3;
    if (v8 != (*a1 + 8 * *(a1 + 12)))
    {
      if (v9 == v3)
      {
        v11 = v8;
      }

      else
      {
        v10 = v3 - v9;
        memmove(v8, v9, v3 - v9);
        v11 = &v8[v10];
      }
    }

    v9 = v3 + 8;
    ++v7;
    v8 = v11;
    goto LABEL_5;
  }

  v7 = 0;
  v8 = (*a1 + 8 * v4);
  v21 = *a1;
  if (v5 != v3)
  {
LABEL_18:
    memmove(v8, v5, v21 - v5);
    LODWORD(v4) = *(a1 + 12);
  }

LABEL_19:
  result = (v4 - v7);
  *(a1 + 12) = result;
  return result;
}

WTF *WebGPU::CommandEncoder::skippedDrawIndexedValidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v20 = 0;
  v21 = 0;
  WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((a1 + 144), &v23, &v20, v22);
  v5 = v22[0];
  v6 = *(a3 + 8);
  LODWORD(v17) = *a3;
  DWORD1(v17) = v6;
  v7 = *(a3 + 24);
  DWORD2(v17) = *(a3 + 16);
  HIDWORD(v17) = v7;
  v8 = *(a3 + 40);
  LODWORD(v18) = *(a3 + 32);
  DWORD1(v18) = v8;
  v9 = *(a3 + 56);
  DWORD2(v18) = *(a3 + 48);
  HIDWORD(v18) = v9;
  v19 = *(a3 + 64);
  v10 = *(v22[0] + 20);
  if (v10 == *(v22[0] + 16))
  {
    v11 = WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v22[0] + 8, v10 + 1, &v17);
    v12 = *(v5 + 8) + 40 * *(v5 + 20);
    v13 = *v11;
    v14 = *(v11 + 1);
    v15 = *(v11 + 4);
  }

  else
  {
    v12 = *(v22[0] + 8) + 40 * v10;
    v13 = v17;
    v14 = v18;
    v15 = v19;
  }

  *(v12 + 32) = v15;
  *v12 = v13;
  *(v12 + 16) = v14;
  ++*(v5 + 20);
  result = v20;
  if (v20)
  {
    v20 = 0;
    LODWORD(v21) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_22568A06C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22568A2B0);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    v8 = a2;
    v9 = a3;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v8;
    a3 = v9;
    v7 = *v5;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v7 + 24 * v14);
  v16 = *v15;
  if (*v15 != -1)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v27 = 0;
        v26 = v7 + 24 * *(v7 - 4);
        goto LABEL_25;
      }

      if (v16 == -2)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v7 + 24 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15 != -1);
    if (v17)
    {
      v17[1] = 0;
      v17[2] = 0;
      *v17 = -1;
      v7 = *v5;
      --*(*v5 - 16);
      v4 = *a2;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 12);
  *a3 = 0;
  *(a3 + 8) = 0;
  result = v15[1];
  if (result)
  {
    v15[1] = 0;
    *(v15 + 4) = 0;
    result = WTF::fastFree(result, a2);
    v7 = *v5;
  }

  v15[1] = v19;
  *(v15 + 4) = v20;
  *(v15 + 5) = v21;
  v22 = *(v7 - 16);
  v23 = *(v7 - 12) + 1;
  *(v7 - 12) = v23;
  v24 = (v22 + v23);
  v25 = *(v7 - 4);
  if (v25 > 0x400)
  {
    if (v25 > 2 * v24)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (3 * v25 <= 4 * v24)
  {
    if (!v25)
    {
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v5, 8u, v15);
      v15 = result;
      v7 = *v5;
      if (!*v5)
      {
LABEL_19:
        LODWORD(v25) = 0;
        goto LABEL_23;
      }

LABEL_22:
      LODWORD(v25) = *(v7 - 4);
      goto LABEL_23;
    }

LABEL_21:
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WebGPU::DrawIndexCacheContainerValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v5, v25 << (6 * v23 >= (2 * v25)), v15);
    v15 = result;
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  v26 = v7 + 24 * v25;
  v27 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
  return result;
}

void sub_22568A2D4(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebGPU::CommandEncoder::rebindSamplersPreCommit(unsigned int *this, const WebGPU::BindGroup *a2)
{
  v3 = this;
  v4 = this[41];
  if (v4 != this[40])
  {
    v11 = (*(this + 19) + 8 * v4);
    if (a2)
    {
      ++*(a2 + 2);
    }

    goto LABEL_17;
  }

  v5 = v4 + (v4 >> 1);
  if (v5 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  if (!(v5 >> 29))
  {
    v6 = *(this + 19);
    if (v5 <= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v5;
    }

    v8 = WTF::fastMalloc((8 * v7));
    v3[40] = v7;
    *(v3 + 19) = v8;
    this = memcpy(v8, v6, 8 * v4);
    if (v6)
    {
      if (*(v3 + 19) == v6)
      {
        *(v3 + 19) = 0;
        v3[40] = 0;
      }

      this = WTF::fastFree(v6, v9);
    }

    v4 = v3[41];
    v10 = *(v3 + 19);
    if (a2)
    {
      ++*(a2 + 2);
    }

    v11 = (v10 + 8 * v4);
LABEL_17:
    *v11 = a2;
    v3[41] = v4 + 1;
    return this;
  }

  __break(0xC471u);
  return this;
}

WebGPU::CommandEncoder *wgpuCommandEncoderRelease(WebGPU::CommandEncoder *result)
{
  if (*(result + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 4);
  }

  return result;
}

uint64_t wgpuCommandEncoderBeginComputePass(WebGPU::CommandEncoder *this, void *a2)
{
  ++*(this + 4);
  if (*a2)
  {
    v3 = *(this + 24);
    if (WebGPU::ComputePassEncoder::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
    }

    v5 = NonCompact;
    WebGPU::ComputePassEncoder::ComputePassEncoder(NonCompact, this, v3, &cfstr_DescriptorIsCo.isa);
    goto LABEL_83;
  }

  v6 = *this;
  if ((v6 - 3) >= 0xFFFFFFFE)
  {
    if (v6 == 2)
    {
      v11 = *(this + 24);
      while (1)
      {
        v12 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v13 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_35;
        }
      }

      v25 = 0;
      v26 = *v11;
      v27 = 1;
      atomic_compare_exchange_strong_explicit(*v11, &v25, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_35:
      v28 = MEMORY[0x277CCACA8];
      v29 = WebGPU::CommandsMixin::encoderStateName(this);
      v30 = [v28 stringWithFormat:@"%s: encoder state is %@", "Ref<ComputePassEncoder> WebGPU::CommandEncoder::beginComputePass(const WGPUComputePassDescriptor &)", v29];
      WebGPU::Device::generateAValidationError(v11, v30);

      v104 = 0;
      while (1)
      {
        v31 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v32 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v32, v31 - 2, memory_order_relaxed, memory_order_relaxed);
        if (v32 == v31)
        {
          if (v31 == 3)
          {
            WebGPU::Device::~Device(v11, v15);
            bmalloc::api::tzoneFree(v33, v34);
          }

          goto LABEL_41;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v11, v15);
    }

    else
    {
      if (*(this + 6))
      {
        v14 = *(this + 6);
      }

      else
      {
        v14 = @"Encoder state is locked";
      }

      WebGPU::CommandEncoder::makeInvalid(this, &v14->isa);
    }

LABEL_41:
    v35 = *(this + 24);
    if (WebGPU::ComputePassEncoder::s_heapRef)
    {
      v36 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, v15);
    }

    else
    {
      v36 = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
    }

    v5 = v36;
    WebGPU::ComputePassEncoder::ComputePassEncoder(v36, this, v35, &cfstr_EncoderStateIs_0.isa);
    goto LABEL_83;
  }

  if (!a2[2])
  {
    goto LABEL_75;
  }

  v8 = *(this + 24);
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
      goto LABEL_23;
    }
  }

  v16 = 0;
  v17 = *v8;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(*v8, &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    MEMORY[0x22AA683C0](v17);
  }

  ++*(v17 + 8);
  atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 == 1)
  {
LABEL_23:
    v19 = *(v8 + 252);
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_47:
    v23 = 0;
    goto LABEL_48;
  }

  WTF::Lock::unlockSlow(v17);
  v19 = *(v8 + 252);
  if (!v19)
  {
    goto LABEL_47;
  }

LABEL_24:
  v20 = *(v8 + 240);
  v21 = v19 - 1;
  do
  {
    v22 = *v20++;
    v23 = v22 == 3;
  }

  while (v22 != 3 && v21-- != 0);
  do
  {
LABEL_48:
    v37 = *v8;
    if ((*v8 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v8, a2);
      if (v23)
      {
        goto LABEL_53;
      }

      goto LABEL_68;
    }

    v38 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v38, v37 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v38 != v37);
  if (v37 == 3)
  {
    WebGPU::Device::~Device(v8, a2);
    bmalloc::api::tzoneFree(v39, v40);
  }

  if (!v23)
  {
LABEL_68:
    v23 = @"device does not have timestamp query feature";
    goto LABEL_79;
  }

LABEL_53:
  v41 = a2[2];
  v42 = *v41;
  v43 = **v41;
  *v42 = v43 + 1;
  v104 = v42;
  if (v42[9] != 1)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"query type is not timestamp but %d", v42[9]];
    goto LABEL_70;
  }

  if ((v42[14] & 1) != 0 || *(v42 + 2) || *(v42 + 3))
  {
    v44 = *(v42 + 1);
    if (*(v44 + 8) && v44 == *(this + 24))
    {
      v71 = v42[8];
      v72 = *(v41 + 8);
      v73 = *(v41 + 12);
      if (v72 == -1)
      {
        v74 = 0;
      }

      else
      {
        v74 = v72;
      }

      if (v73 == -1)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (v74 < v71 && v75 < v71 && v72 != v73)
      {
        v46 = 1;
        if (v43)
        {
          goto LABEL_71;
        }

LABEL_62:
        WebGPU::QuerySet::~QuerySet(v42, a2);
        bmalloc::api::tzoneFree(v47, v48);
        if (v23)
        {
          v49 = v46;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          goto LABEL_75;
        }

LABEL_79:
        v56 = *(this + 24);
        v58 = v23;
        if (WebGPU::ComputePassEncoder::s_heapRef)
        {
          v59 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, v57);
        }

        else
        {
          v59 = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
        }

        v5 = v59;
        WebGPU::ComputePassEncoder::ComputePassEncoder(v59, this, v56, v58);

        goto LABEL_82;
      }

      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"writeIndices mismatch: beginningOfPassWriteIndex(%u) >= querySetCount(%u) || endOfPassWriteIndex(%u) >= querySetCount(%u) || timestampWrite.beginningOfPassWriteIndex(%u) == timestampWrite.endOfPassWriteIndex(%u)", v74, v71, v75, v71, v72, v73, this];
LABEL_70:
      v23 = v50;
      v46 = 0;
      v43 = *v42 - 1;
      if (*v42 != 1)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }
  }

  v46 = 0;
  v23 = @"device mismatch";
  if (!v43)
  {
    goto LABEL_62;
  }

LABEL_71:
  *v42 = v43;
  if (v23)
  {
    v51 = v46;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  if ([*(this + 3) status])
  {
    v54 = *(this + 24);
    if (WebGPU::ComputePassEncoder::s_heapRef)
    {
      v55 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, v52);
    }

    else
    {
      v55 = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
    }

    v5 = v55;
    WebGPU::ComputePassEncoder::ComputePassEncoder(v55, this, v54, &cfstr_CommandBufferH.isa);
    goto LABEL_83;
  }

  v61 = *(this + 24);
  if (!v61[1] || (v62 = *(this + 5), *(this + 4) == v62) && (WebGPU::CommandEncoder::endEncoding(this, v62), v63 = *(this + 5), *(this + 5) = 0, v63, WebGPU::CommandEncoder::setExistingEncoder(this, 0), v61 = *(this + 24), !v61[1]))
  {
    WebGPU::ComputePassEncoder::createInvalid(&v102, this, v61, v53);
    v5 = v102;
    v60 = *(this + 4) - 1;
    if (*(this + 4) != 1)
    {
      goto LABEL_84;
    }

    goto LABEL_91;
  }

  v58 = objc_opt_new();
  [(NSString *)v58 setDispatchType:0];
  v64 = a2[2];
  if (v64)
  {
    v65 = *v64;
    *v65 = **v64 + 1;
    v104 = v65;
    v66 = v65[3];
    WebGPU::QuerySet::setCommandEncoder(v65, this);
    WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(&v104, v67);
  }

  else
  {
    v66 = 0;
  }

  v78 = WebGPU::Device::enableEncoderTimestamps(*(this + 24));
  if (v66)
  {
    v79 = 1;
  }

  else
  {
    v79 = v78;
  }

  if (v79 == 1)
  {
    v80 = a2[2];
    v81 = v66;
    if (!v66)
    {
      v81 = WebGPU::Device::timestampsBuffer(*(this + 24), *(this + 3), 2);
    }

    v82 = [(NSString *)v58 sampleBufferAttachments];
    v83 = [v82 objectAtIndexedSubscript:0];
    [v83 setSampleBuffer:v81];

    if (!v66)
    {
    }

    if (v80)
    {
      if (*(v80 + 8) == -1)
      {
        v84 = -1;
      }

      else
      {
        v84 = *(v80 + 8);
      }
    }

    else
    {
      v84 = 0;
    }

    v85 = [(NSString *)v58 sampleBufferAttachments];
    v86 = [v85 objectAtIndexedSubscript:0];
    [v86 setStartOfEncoderSampleIndex:v84];

    if (v80)
    {
      if (*(v80 + 12) == -1)
      {
        v87 = -1;
      }

      else
      {
        v87 = *(v80 + 12);
      }
    }

    else
    {
      v87 = 1;
    }

    v88 = [(NSString *)v58 sampleBufferAttachments];
    v89 = [v88 objectAtIndexedSubscript:0];
    [v89 setEndOfEncoderSampleIndex:v87];

    WebGPU::Device::trackTimestampsBuffer(*(this + 24), *(this + 3), v66);
  }

  v90 = [*(this + 3) computeCommandEncoderWithDescriptor:v58];
  WebGPU::CommandEncoder::setExistingEncoder(this, v90);
  v91 = a2[1];
  if (v91)
  {
    strlen(v91);
  }

  WTF::String::fromUTF8();
  if (v103)
  {
    atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v104, v103);
    if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v103, v92);
    }
  }

  else
  {
    v104 = &stru_2838D6D18;
  }

  [v90 setLabel:v104];
  v93 = v104;
  v104 = 0;

  v95 = v103;
  v103 = 0;
  if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v95, v94);
  }

  v96 = *(this + 24);
  v98 = v90;
  if (WebGPU::ComputePassEncoder::s_heapRef)
  {
    v99 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePassEncoder::s_heapRef, v97);
  }

  else
  {
    v99 = WebGPU::ComputePassEncoder::operatorNewSlow(0x110);
  }

  v5 = v99;
  WebGPU::ComputePassEncoder::ComputePassEncoder(v99, v98, v100, this, v96);

LABEL_82:
LABEL_83:
  v60 = *(this + 4) - 1;
  if (*(this + 4) == 1)
  {
LABEL_91:
    WebGPU::CommandEncoder::~CommandEncoder(this);
    bmalloc::api::tzoneFree(v68, v69);
    return v5;
  }

LABEL_84:
  *(this + 4) = v60;
  return v5;
}

void sub_22568ABDC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WebGPU::CommandEncoder *a15, uint64_t a16, WTF::StringImpl *a17, WebGPU::QuerySet *a18)
{
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(&a18, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a15);
  _Unwind_Resume(a1);
}

void sub_22568AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568AD60(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WebGPU::CommandEncoder *a15, uint64_t a16, uint64_t a17, char a18)
{
  bmalloc::api::tzoneFree(v18, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a15);
  _Unwind_Resume(a1);
}

void sub_22568AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t wgpuCommandEncoderBeginRenderPass(WebGPU::CommandEncoder *this, uint64_t *a2)
{
  ++*(this + 4);
  WebGPU::CommandEncoder::beginRenderPass(&v7, this, a2);
  v3 = v7;
  if (*(this + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(this);
    bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(this + 4);
  }

  return v3;
}

WebGPU::CommandEncoder *wgpuCommandEncoderCopyBufferToBuffer(WebGPU::CommandEncoder *this, atomic_ullong *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ++*(this + 4);
  while (1)
  {
    v12 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v13 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_9;
    }
  }

  v14 = 0;
  v15 = *a2;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v14, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_9:
  v62 = a2;
  while (1)
  {
    v17 = *a4;
    if ((*a4 & 1) == 0)
    {
      break;
    }

    v18 = *a4;
    atomic_compare_exchange_strong_explicit(a4, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v20 = *a4;
  v21 = 1;
  atomic_compare_exchange_strong_explicit(*a4, &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    MEMORY[0x22AA683C0](v20);
  }

  ++*(v20 + 8);
  atomic_compare_exchange_strong_explicit(v20, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
LABEL_16:
    v61 = a4;
    v22 = *this;
    if ((v22 - 3) < 0xFFFFFFFE)
    {
LABEL_17:
      v23 = *(a2 + 44);
      if (v23 != 4)
      {
        if (!a2[1] || (v26 = a2[35], !*(v26 + 8)) || v26 != *(this + 24))
        {
          v25 = @"GPUCommandEncoder.copyBufferToBuffer: source buffer is not valid";
          goto LABEL_45;
        }
      }

      v24 = *(a4 + 44);
      if (v24 != 4)
      {
        if (!*(a4 + 8) || (v27 = *(a4 + 280), !*(v27 + 8)) || v27 != *(this + 24))
        {
          v25 = @"GPUCommandEncoder.copyBufferToBuffer: destination buffer is not valid";
          goto LABEL_45;
        }
      }

      if ((a2[5] & 4) == 0)
      {
        v25 = @"GPUCommandEncoder.copyBufferToBuffer: source usage does not have COPY_SRC";
        goto LABEL_45;
      }

      if ((*(a4 + 40) & 8) == 0)
      {
        v25 = @"GPUCommandEncoder.copyBufferToBuffer: destination usage does not have COPY_DST";
        goto LABEL_45;
      }

      v25 = @"GPUCommandEncoder.copyBufferToBuffer: destination state is not unmapped or source state is not unmapped";
      if (v23 == 2 || v24 == 2)
      {
        goto LABEL_45;
      }

      if ((a6 & 3) != 0)
      {
        v25 = @"GPUCommandEncoder.copyBufferToBuffer: size is not a multiple of 4";
        goto LABEL_45;
      }

      if ((a3 & 3) != 0)
      {
        v25 = @"GPUCommandEncoder.copyBufferToBuffer: source offset is not a multiple of 4";
        goto LABEL_45;
      }

      if ((a5 & 3) != 0)
      {
        v25 = @"GPUCommandEncoder.copyBufferToBuffer: destination offset is not a multiple of 4";
        goto LABEL_45;
      }

      if (!__CFADD__(a3, a6))
      {
        if (__CFADD__(a5, a6))
        {
          goto LABEL_44;
        }

        if (a2[4] >= (a3 + a6))
        {
          if (*(a4 + 32) >= (a5 + a6))
          {
            if (a2 != a4)
            {
              WebGPU::Buffer::setCommandEncoder(a2, this);
              WebGPU::Buffer::setCommandEncoder(a4, this);
              WebGPU::Buffer::indirectBufferInvalidated(a4, this);
              if (a6 && *(a2 + 44) != 4 && *(a4 + 44) != 4)
              {
                v30 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(this);
                v31 = *(this + 5);
                v32 = a2[1];
                v33 = *(a4 + 8);
                v34 = v32;
                [v31 copyFromBuffer:v34 sourceOffset:a3 toBuffer:v33 destinationOffset:a5 size:a6];
              }

              goto LABEL_73;
            }

            v25 = @"GPUCommandEncoder.copyBufferToBuffer: source equals destination not valid";
LABEL_45:
            v28 = v25;
            WebGPU::CommandEncoder::makeInvalid(this, v28);

            goto LABEL_73;
          }

LABEL_44:
          v25 = @"GPUCommandEncoder.copyBufferToBuffer: destination size + offset overflows";
          goto LABEL_45;
        }
      }

      v25 = @"GPUCommandEncoder.copyBufferToBuffer: source size + offset overflows";
      goto LABEL_45;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v20);
    v61 = a4;
    v22 = *this;
    if ((v22 - 3) < 0xFFFFFFFE)
    {
      goto LABEL_17;
    }
  }

  if (v22 != 2)
  {
    if (*(this + 6))
    {
      v38 = *(this + 6);
    }

    else
    {
      v38 = @"Encoder state is locked";
    }

    WebGPU::CommandEncoder::makeInvalid(this, &v38->isa);
    goto LABEL_73;
  }

  v35 = *(this + 24);
  while (1)
  {
    v36 = *v35;
    if ((*v35 & 1) == 0)
    {
      break;
    }

    v37 = *v35;
    atomic_compare_exchange_strong_explicit(v35, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v36)
    {
      goto LABEL_67;
    }
  }

  v39 = 0;
  v40 = *v35;
  v41 = 1;
  atomic_compare_exchange_strong_explicit(*v35, &v39, 1u, memory_order_acquire, memory_order_acquire);
  if (v39)
  {
    MEMORY[0x22AA683C0](v40);
  }

  ++*(v40 + 8);
  atomic_compare_exchange_strong_explicit(v40, &v41, 0, memory_order_release, memory_order_relaxed);
  if (v41 != 1)
  {
    WTF::Lock::unlockSlow(v40);
  }

LABEL_67:
  v42 = MEMORY[0x277CCACA8];
  v43 = WebGPU::CommandsMixin::encoderStateName(this);
  v44 = [v42 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::copyBufferToBuffer(const Buffer &, uint64_t, Buffer &, uint64_t, uint64_t)", v43, v61];
  WebGPU::Device::generateAValidationError(v35, v44);

  do
  {
    v45 = *v35;
    if ((*v35 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v35, v29);
      goto LABEL_73;
    }

    v46 = *v35;
    atomic_compare_exchange_strong_explicit(v35, &v46, v45 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v46 != v45);
  if (v45 == 3)
  {
    WebGPU::Device::~Device(v35, v29);
    bmalloc::api::tzoneFree(v47, v48);
  }

  do
  {
LABEL_73:
    v49 = *a4;
    if ((*a4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a4, v29);
      v53 = v62;
      if (v62)
      {
        goto LABEL_80;
      }

      goto LABEL_84;
    }

    v50 = *a4;
    atomic_compare_exchange_strong_explicit(a4, &v50, v49 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v50 != v49);
  if (v49 == 3)
  {
    WebGPU::Buffer::~Buffer(a4);
    bmalloc::api::tzoneFree(v51, v52);
  }

  v53 = v62;
  if (v62)
  {
LABEL_80:
    while (1)
    {
      v54 = *v53;
      if ((*v53 & 1) == 0)
      {
        break;
      }

      v55 = *v53;
      atomic_compare_exchange_strong_explicit(v53, &v55, v54 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v55 == v54)
      {
        if (v54 == 3)
        {
          WebGPU::Buffer::~Buffer(v53);
          bmalloc::api::tzoneFree(v56, v57);
        }

        goto LABEL_84;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v53, v29);
    result = this;
    if (!this)
    {
      return result;
    }

    goto LABEL_87;
  }

LABEL_84:
  result = this;
  if (!this)
  {
    return result;
  }

LABEL_87:
  if (*(result + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(result);

    return bmalloc::api::tzoneFree(v59, v60);
  }

  else
  {
    --*(result + 4);
  }

  return result;
}

void sub_22568B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v9 = va_arg(va2, atomic_ullong *);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v5);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va1, v6);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va2);
  _Unwind_Resume(a1);
}

void wgpuCommandEncoderCopyBufferToTexture(WebGPU::CommandEncoder *a1, uint64_t a2, uint64_t a3, uint32x2_t *a4)
{
  ++*(a1 + 4);
  WebGPU::CommandEncoder::copyBufferToTexture(a1, a2, a3, a4);
  if (*(a1 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);

    bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(a1 + 4);
  }
}

void sub_22568B508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuCommandEncoderCopyTextureToBuffer(WebGPU::CommandEncoder *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  ++*(a1 + 4);
  WebGPU::CommandEncoder::copyTextureToBuffer(a1, a2, a3, a4);
  if (*(a1 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(a1);

    bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(a1 + 4);
  }
}

void sub_22568B590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuCommandEncoderCopyTextureToTexture(WebGPU::CommandEncoder *this, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  ++*(this + 4);
  if (*a2 | *a3)
  {
    goto LABEL_138;
  }

  v5 = *this;
  if ((v5 - 3) >= 0xFFFFFFFE)
  {
    if (v5 == 2)
    {
      v15 = *(this + 24);
      while (1)
      {
        v16 = *v15;
        if ((*v15 & 1) == 0)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_30;
        }
      }

      v26 = 0;
      v27 = *v15;
      v28 = 1;
      atomic_compare_exchange_strong_explicit(*v15, &v26, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_30:
      v29 = MEMORY[0x277CCACA8];
      v30 = WebGPU::CommandsMixin::encoderStateName(this);
      v31 = [v29 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::copyTextureToTexture(const WGPUImageCopyTexture &, const WGPUImageCopyTexture &, const WGPUExtent3D &)", v30];
      WebGPU::Device::generateAValidationError(v15, v31);

      *&v131 = 0;
      do
      {
        v33 = *v15;
        if ((*v15 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v15, v32);
          v12 = *(this + 4) - 1;
          if (*(this + 4) != 1)
          {
            goto LABEL_139;
          }

          goto LABEL_11;
        }

        v34 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v34 != v33);
      if (v33 != 3)
      {
        goto LABEL_138;
      }

      WebGPU::Device::~Device(v15, v32);
      bmalloc::api::tzoneFree(v35, v36);
      v12 = *(this + 4) - 1;
      if (*(this + 4) != 1)
      {
        goto LABEL_139;
      }

      goto LABEL_11;
    }

    if (*(this + 6))
    {
      v18 = *(this + 6);
    }

    else
    {
      v18 = @"Encoder state is locked";
    }

    WebGPU::CommandEncoder::makeInvalid(this, &v18->isa);
LABEL_138:
    v12 = *(this + 4) - 1;
    if (*(this + 4) == 1)
    {
      goto LABEL_11;
    }

LABEL_139:
    *(this + 4) = v12;
    return;
  }

  v9 = *(a2 + 8);
  ++*(v9 + 8);
  *&v131 = v9;
  if ((*(v9 + 104) & 1) == 0 && !*(v9 + 16) || (v10 = *(v9 + 72), !*(v10 + 8)) || v10 != *(this + 24))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToTexture: %@", @"source texture is not valid to use with this GPUCommandEncoder"];
    goto LABEL_8;
  }

  v37 = *(a3 + 8);
  ++*(v37 + 8);
  v129 = v37;
  if ((*(v37 + 104) & 1) == 0 && !*(v37 + 16))
  {
    v39 = @"desintation texture is not valid to use with this GPUCommandEncoder";
LABEL_68:
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToTexture: %@", v39];
LABEL_69:
    v11 = v50;
    goto LABEL_70;
  }

  v38 = *(v37 + 72);
  v39 = @"desintation texture is not valid to use with this GPUCommandEncoder";
  if (v38 != v10 || !*(v38 + 8))
  {
    goto LABEL_68;
  }

  v40 = WebGPU::Texture::errorValidatingImageCopyTexture(a2, a4);
  if (v40)
  {
LABEL_43:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToTexture: %@", v40];

    goto LABEL_70;
  }

  if ((*(v9 + 52) & 1) == 0)
  {
    v39 = @"source texture usage does not contain CopySrc";
    goto LABEL_68;
  }

  v40 = WebGPU::Texture::errorValidatingImageCopyTexture(a3, a4);
  if (v40)
  {
    goto LABEL_43;
  }

  if ((*(v37 + 52) & 2) == 0)
  {
    v39 = @"destination texture usage does not contain CopyDst";
    goto LABEL_68;
  }

  if (*(v9 + 40) != *(v37 + 40))
  {
    v39 = @"destination texture sample count does not equal source texture sample count";
    goto LABEL_68;
  }

  v106 = *(v9 + 48);
  v107 = *(v37 + 48);
  if (!WebGPU::areCopyCompatible(v106, v107))
  {
    v39 = @"destination texture and source texture are not copy compatible";
    goto LABEL_68;
  }

  v108 = *(a2 + 32);
  if (v106 - 38 <= 5)
  {
    switch(v108)
    {
      case 1:
        if (v106 != 38)
        {
          goto LABEL_169;
        }

        break;
      case 0x7FFFFFFF:
        goto LABEL_169;
      case 2:
        v109 = @"source or destination do not refer to a single copy aspect";
        if (v106 > 0x2A || ((1 << v106) & 0x58000000000) == 0)
        {
          goto LABEL_170;
        }

        break;
    }

    v110 = *(a3 + 32);
    if (v110 == 1)
    {
      if (v107 == 38)
      {
        goto LABEL_167;
      }
    }

    else if (v110 != 0x7FFFFFFF)
    {
      if (v110 == 2)
      {
        v109 = @"source or destination do not refer to a single copy aspect";
        if (v107 > 0x2A || ((1 << v107) & 0x58000000000) == 0)
        {
          goto LABEL_170;
        }
      }

      goto LABEL_167;
    }

LABEL_169:
    v109 = @"source or destination do not refer to a single copy aspect";
    goto LABEL_170;
  }

  if (v108)
  {
    v109 = @"source aspect is not All";
    goto LABEL_170;
  }

  if (v107 - 38 >= 6 && *(a3 + 32))
  {
    v109 = @"destination aspect is not All";
    goto LABEL_170;
  }

LABEL_167:
  v40 = WebGPU::Texture::errorValidatingTextureCopyRange(a2, a4);
  if (v40)
  {
    goto LABEL_43;
  }

  v40 = WebGPU::Texture::errorValidatingTextureCopyRange(a3, a4);
  if (v40)
  {
    goto LABEL_43;
  }

  v111 = *(a2 + 8);
  if (v111 != *(a3 + 8) || *(a2 + 16) != *(a3 + 16))
  {
LABEL_181:
    v11 = 0;
    goto LABEL_70;
  }

  ++*(v111 + 8);
  *&v127 = v111;
  v112 = *(v111 + 44);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&v127);
  v11 = 0;
  if (v112 <= 1)
  {
    if (v112)
    {
      if (v112 != 1)
      {
        goto LABEL_70;
      }

      v113 = a4[2];
      if (v113)
      {
        v11 = 0;
        v114 = *(a2 + 28);
        v115 = *(a3 + 28);
        if (v114 + v113 <= v115 || v115 + v113 <= v114)
        {
          goto LABEL_70;
        }

        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToTexture: %@", @"can't copy 2D texture to itself with overlapping array range"];
        goto LABEL_69;
      }

      goto LABEL_181;
    }

    v109 = @"can't copy 1D texture to itself";
LABEL_170:
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.copyTextureToTexture: %@", v109];
    goto LABEL_69;
  }

  if (v112 == 2)
  {
    v109 = @"can't copy 3D texture to itself";
    goto LABEL_170;
  }

  if (v112 == 0x7FFFFFFF)
  {
    v109 = @"unknown texture format";
    goto LABEL_170;
  }

LABEL_70:
  if (*(v37 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v37);
    bmalloc::api::tzoneFree(v51, v52);
  }

  else
  {
    --*(v37 + 8);
  }

LABEL_8:
  if (*(v9 + 8) != 1)
  {
    --*(v9 + 8);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_24:
    v21 = *(a2 + 8);
    ++*(v21 + 8);
    v22 = *(a3 + 8);
    ++v22[1].i32[0];
    v133 = v22;
    v134 = v21;
    v23 = *(this + 25);
    *&v131 = v23;
    v24 = *(v21 + 124);
    if (v24 == *(v21 + 120))
    {
      v25 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v21 + 112, v24 + 1, &v131);
      v24 = *(v21 + 124);
      *(*(v21 + 112) + 8 * v24) = *v25;
    }

    else
    {
      *(*(v21 + 112) + 8 * v24) = v23;
    }

    *(v21 + 124) = v24 + 1;
    WebGPU::CommandEncoder::addTexture(this, v21);
    if ((*(v21 + 105) & 1) == 0 && *(v21 + 104) == 1)
    {
      WebGPU::CommandEncoder::makeSubmitInvalid(this, 0);
    }

    v41 = *(this + 25);
    *&v131 = v41;
    v42 = v22[15].u32[1];
    if (v42 == v22[15].i32[0])
    {
      v43 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v22[14], v42 + 1, &v131);
      v42 = v22[15].u32[1];
      *(*&v22[14] + 8 * v42) = *v43;
    }

    else
    {
      *(*&v22[14] + 8 * v42) = v41;
    }

    v22[15].i32[1] = v42 + 1;
    WebGPU::CommandEncoder::addTexture(this, v22);
    if ((v22[13].i8[1] & 1) == 0 && v22[13].i8[0] == 1)
    {
      WebGPU::CommandEncoder::makeSubmitInvalid(this, 0);
    }

    if (*(v21 + 104) & 1) != 0 || (v22[13].i8[0])
    {
      goto LABEL_135;
    }

    v44 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(this);
    v45 = v22[5].i32[1];
    v46 = *(a3 + 16);
    if (v45 == 2)
    {
      v47 = 1;
    }

    else
    {
      v47 = a4[2];
    }

    if (v45 == 2)
    {
      v125 = vmax_u32(vshl_u32(v22[3], vneg_s32(vdup_n_s32(v46))), 0x100000001);
      v53 = v22[4].i32[0] >> v46;
      if (v53 <= 1)
      {
        v53 = 1;
      }
    }

    else
    {
      if (v45 != 1)
      {
        if (v45)
        {
          v122 = 0;
          v49 = 0;
        }

        else
        {
          v48 = v22[3].i32[0] >> v46;
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v122 = v22[4].u32[0];
          v49 = v48 | 0x100000000;
        }

        v125 = v49;
        goto LABEL_79;
      }

      v125 = vmax_u32(vshl_u32(v22[3], vneg_s32(vdup_n_s32(v46))), 0x100000001);
      v53 = v22[4].u32[0];
    }

    v122 = v53;
LABEL_79:
    if (v47)
    {
      for (i = 0; v47 != i; ++i)
      {
        if (*(v21 + 44) == 2)
        {
          v55 = 0;
        }

        else
        {
          v55 = i + *(a2 + 28);
        }

        v56 = *(this + 24);
        v57 = *(this + 5);
        v58 = *(a2 + 8);
        ++v58[1].i32[0];
        *&v131 = v58;
        WebGPU::CommandEncoder::clearTextureIfNeeded(v58, *(a2 + 16), v55, v56, v57);
        if (v58[1].i32[0] == 1)
        {
          WebGPU::Texture::~Texture(v58);
          bmalloc::api::tzoneFree(v59, v60);
        }

        else
        {
          --v58[1].i32[0];
        }

        if (v22[5].i32[1] == 2)
        {
          v61 = 0;
        }

        else
        {
          v61 = i + *(a3 + 28);
        }

        v62 = *a4;
        if (v45 == 2)
        {
          v64 = vceq_s32(v62, v125);
          if ((vand_s8(v64, vdup_lane_s32(v64, 1)).u8[0] & 1) == 0 || a4[2] != v122)
          {
LABEL_101:
            v65 = *(this + 24);
            v66 = *(this + 5);
            v67 = *(a3 + 8);
            ++v67[1].i32[0];
            *&v131 = v67;
            WebGPU::CommandEncoder::clearTextureIfNeeded(v67, *(a3 + 16), v61, v65, v66);
            if (v67[1].i32[0] == 1)
            {
              WebGPU::Texture::~Texture(v67);
              bmalloc::api::tzoneFree(v68, v69);
            }

            else
            {
              --v67[1].i32[0];
            }

            continue;
          }
        }

        else if (v45 == 1)
        {
          v63 = vceq_s32(v62, v125);
          if ((vand_s8(v63, vdup_lane_s32(v63, 1)).u8[0] & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        else if (v45 || (vceq_s32(v62, v125).u8[0] & 1) == 0)
        {
          goto LABEL_101;
        }

        WebGPU::Texture::setPreviouslyCleared(v22, *(a3 + 16), v61, 1);
      }
    }

    v70 = *&v22[2];
    v126 = *(*(a2 + 8) + 16);
    v71 = *(v21 + 44);
    switch(v71)
    {
      case 2:
        v86 = *a4;
        if (v86)
        {
          v87 = a4[1];
          if (v87)
          {
            v88 = a4[2];
            if (v88)
            {
              v89 = *(a3 + 28);
              v90 = v89 + v88;
              if (!__CFADD__(v89, v88))
              {
                v91 = [v70 depth];
                v92 = v122;
                if (v91 < v122)
                {
                  v92 = v91;
                }

                if (v90 <= v92)
                {
                  v93 = *(a2 + 28);
                  v94 = *(a3 + 28);
                  v95 = *(this + 5);
                  v96 = *(a2 + 16);
                  v97 = *(a2 + 20);
                  *&v98 = v97;
                  *(&v98 + 1) = HIDWORD(v97);
                  v131 = v98;
                  v132 = v93;
                  v129 = v86;
                  v130.i64[0] = v87;
                  v130.i64[1] = v88;
                  v99 = *(a3 + 16);
                  v100 = *(a3 + 20);
                  *&v98 = v100;
                  *(&v98 + 1) = HIDWORD(v100);
                  v127 = v98;
                  v128 = v94;
                  [v95 copyFromTexture:v126 sourceSlice:0 sourceLevel:v96 sourceOrigin:&v131 sourceSize:&v129 toTexture:v70 destinationSlice:0 destinationLevel:v99 destinationOrigin:&v127];
                }

                else
                {
                  WebGPU::CommandEncoder::makeInvalid(this, &cfstr_Gpucommandenco_13.isa);
                }
              }
            }
          }
        }

        break;
      case 1:
        v124 = *a4;
        if (v124)
        {
          v121 = a4[1];
          if (v121)
          {
            if (a4[2])
            {
              v77 = 0;
              v78 = *(a2 + 20);
              *&v79 = v78;
              *(&v79 + 1) = HIDWORD(v78);
              v80 = v79;
              v81 = *(a3 + 20);
              *&v79 = v81;
              *(&v79 + 1) = HIDWORD(v81);
              v117 = v79;
              v119 = v80;
              do
              {
                v82 = *(a2 + 28);
                v83 = v77 + *(a3 + 28);
                if (v83 < [v70 arrayLength] && v77 + v82 < objc_msgSend(v126, "arrayLength"))
                {
                  v84 = *(this + 5);
                  v131 = v119;
                  v132 = 0;
                  v129 = v124;
                  v130.i64[0] = v121;
                  v130.i64[1] = 1;
                  v85 = *(a3 + 16);
                  v127 = v117;
                  v128 = 0;
                  [v84 copyFromTexture:v126 sourceSlice:v83 sourceLevel:v85 sourceOrigin:&v127 sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
                }

                ++v77;
              }

              while (v77 < a4[2]);
            }
          }
        }

        break;
      case 0:
        v123 = *a4;
        if (v123)
        {
          if (a4[2])
          {
            v72 = 0;
            v120 = *(a2 + 20);
            v118 = *(a3 + 20);
            v116 = vdupq_n_s64(1uLL);
            do
            {
              v73 = *(a2 + 28);
              v74 = v72 + *(a3 + 28);
              if (v74 < [v70 arrayLength] && v72 + v73 < objc_msgSend(v126, "arrayLength"))
              {
                v75 = *(this + 5);
                v131 = v120;
                v132 = 0;
                v129 = v123;
                v130 = v116;
                v76 = *(a3 + 16);
                v127 = v118;
                v128 = 0;
                [v75 copyFromTexture:v126 sourceSlice:v74 sourceLevel:v76 sourceOrigin:&v127 sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
              }

              ++v72;
            }

            while (v72 < a4[2]);
          }
        }

        break;
    }

LABEL_135:
    if (v22[1].i32[0] == 1)
    {
      WebGPU::Texture::~Texture(v22);
      bmalloc::api::tzoneFree(v102, v103);
      v101 = *(v21 + 8) - 1;
      if (*(v21 + 8) != 1)
      {
        goto LABEL_137;
      }
    }

    else
    {
      --v22[1].i32[0];
      v101 = *(v21 + 8) - 1;
      if (*(v21 + 8) != 1)
      {
LABEL_137:
        *(v21 + 8) = v101;
        goto LABEL_138;
      }
    }

    WebGPU::Texture::~Texture(v21);
    bmalloc::api::tzoneFree(v104, v105);
    v12 = *(this + 4) - 1;
    if (*(this + 4) == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_139;
  }

  WebGPU::Texture::~Texture(v9);
  bmalloc::api::tzoneFree(v19, v20);
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_10:
  WebGPU::CommandEncoder::makeInvalid(this, v11);

  v12 = *(this + 4) - 1;
  if (*(this + 4) != 1)
  {
    goto LABEL_139;
  }

LABEL_11:
  WebGPU::CommandEncoder::~CommandEncoder(this);

  bmalloc::api::tzoneFree(v13, v14);
}

void sub_22568C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WebGPU::CommandEncoder *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a26);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v26 - 128));
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a22);
  _Unwind_Resume(a1);
}

void sub_22568C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v16 - 128), v18);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C2C4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v15 - 128), a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v15 - 104));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v15 - 96));
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(v14 - 104);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(v14 - 96);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v14 - 128));
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v14 - 128));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v14 - 104));
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v14 - 96));
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WebGPU::CommandEncoder *wgpuCommandEncoderClearBuffer(WebGPU::CommandEncoder *this, atomic_ullong *a2, unint64_t a3, uint64_t a4)
{
  ++*(this + 4);
  while (1)
  {
    v8 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v9 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
  v11 = *a2;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v11);
    v13 = *this;
    if ((v13 - 3) < 0xFFFFFFFE)
    {
      goto LABEL_9;
    }

LABEL_55:
    if (v13 == 2)
    {
      v38 = *(this + 24);
      while (1)
      {
        v39 = *v38;
        if ((*v38 & 1) == 0)
        {
          break;
        }

        v40 = *v38;
        atomic_compare_exchange_strong_explicit(v38, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v40 == v39)
        {
          goto LABEL_80;
        }
      }

      v48 = 0;
      v49 = *v38;
      v50 = 1;
      atomic_compare_exchange_strong_explicit(*v38, &v48, 1u, memory_order_acquire, memory_order_acquire);
      if (v48)
      {
        MEMORY[0x22AA683C0](v49);
      }

      ++*(v49 + 8);
      atomic_compare_exchange_strong_explicit(v49, &v50, 0, memory_order_release, memory_order_relaxed);
      if (v50 != 1)
      {
        WTF::Lock::unlockSlow(v49);
      }

LABEL_80:
      v51 = MEMORY[0x277CCACA8];
      v52 = WebGPU::CommandsMixin::encoderStateName(this);
      v53 = [v51 stringWithFormat:@"%s: encoder state is %@", "void WebGPU::CommandEncoder::clearBuffer(Buffer &, uint64_t, uint64_t)", v52];
      WebGPU::Device::generateAValidationError(v38, v53);

      v61 = 0;
      do
      {
        v54 = *v38;
        if ((*v38 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v38, v25);
          goto LABEL_64;
        }

        v55 = *v38;
        atomic_compare_exchange_strong_explicit(v38, &v55, v54 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v55 != v54);
      if (v54 != 3)
      {
        goto LABEL_64;
      }

      v37 = v38;
LABEL_85:
      WebGPU::Device::~Device(v37, v25);
      bmalloc::api::tzoneFree(v56, v57);
      goto LABEL_64;
    }

    if (*(this + 6))
    {
      v21 = *(this + 6);
    }

    else
    {
      v21 = @"Encoder state is locked";
    }

LABEL_63:
    WebGPU::CommandEncoder::makeInvalid(this, &v21->isa);
    goto LABEL_64;
  }

LABEL_8:
  v13 = *this;
  if ((v13 - 3) >= 0xFFFFFFFE)
  {
    goto LABEL_55;
  }

LABEL_9:
  if (a4 == -1)
  {
    v14 = a2[4];
    v15 = v14 >= a3;
    v16 = v14 - a3;
    a4 = v15 ? v16 : 0;
    if (!v15)
    {
      v17 = *(this + 24);
      while (1)
      {
        v18 = *v17;
        if ((*v17 & 1) == 0)
        {
          break;
        }

        v19 = *v17;
        atomic_compare_exchange_strong_explicit(v17, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          goto LABEL_27;
        }
      }

      v22 = 0;
      v23 = *v17;
      v24 = 1;
      atomic_compare_exchange_strong_explicit(*v17, &v22, 1u, memory_order_acquire, memory_order_acquire);
      if (v22)
      {
        MEMORY[0x22AA683C0](v23);
      }

      ++*(v23 + 8);
      atomic_compare_exchange_strong_explicit(v23, &v24, 0, memory_order_release, memory_order_relaxed);
      if (v24 != 1)
      {
        WTF::Lock::unlockSlow(v23);
      }

LABEL_27:
      v60 = v17;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v26 = v61;
      v59 = v61;
      if ((*(v17 + 548) & 1) == 0)
      {
        v27 = *(v17 + 32) + 32 * *(v17 + 44);
        v28 = (v27 + 16);
        v29 = -32 * *(v17 + 44);
        while (v29)
        {
          v30 = *(v27 - 8);
          v27 -= 32;
          v28 -= 32;
          v29 += 32;
          if (!v30)
          {
            if ((*v28 & 1) == 0)
            {
              v59 = 0;
              *(v28 - 4) = 1;
              *(v28 - 1) = v26;
              *v28 = 1;
            }

            goto LABEL_44;
          }
        }

        v33 = *(v17 + 24);
        if (v33)
        {
          (*(*v33 + 16))(v33, 1, &v59);
          v34 = *(v17 + 24);
          *(v17 + 24) = 0;
          if (v34)
          {
            (*(*v34 + 8))(v34);
          }
        }

LABEL_44:
        v26 = v59;
      }

      v59 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      v60 = 0;
      do
      {
        v35 = *v17;
        if ((*v17 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v17, v25);
          goto LABEL_64;
        }

        v36 = *v17;
        atomic_compare_exchange_strong_explicit(v17, &v36, v35 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v36 != v35);
      if (v35 != 3)
      {
        goto LABEL_64;
      }

      v37 = v17;
      goto LABEL_85;
    }
  }

  if (*(a2 + 44) != 4 && !a2[1] || (v20 = a2[35], !*(v20 + 8)) || v20 != *(this + 24))
  {
    v21 = @"GPUCommandEncoder.clearBuffer validation failed";
    goto LABEL_63;
  }

  v21 = @"GPUCommandEncoder.clearBuffer validation failed";
  if (((a4 | a3) & 3) != 0)
  {
    goto LABEL_63;
  }

  if ((a2[5] & 8) == 0)
  {
    goto LABEL_63;
  }

  v31 = a3 + a4;
  if (__CFADD__(a3, a4) || a2[4] < v31)
  {
    goto LABEL_63;
  }

  WebGPU::Buffer::setCommandEncoder(a2, this);
  WebGPU::Buffer::indirectBufferInvalidated(a2, this);
  if (a4 && *(a2 + 44) != 4 && v31 <= [a2[1] length])
  {
    v32 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(this);
    [*(this + 5) fillBuffer:a2[1] range:a3 value:{a4, 0}];
  }

  do
  {
LABEL_64:
    v41 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v25);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_69;
    }

    v42 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v42, v41 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v42 != v41);
  if (v41 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v43, v44);
  }

  result = this;
  if (this)
  {
LABEL_69:
    if (*(result + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(result);

      return bmalloc::api::tzoneFree(v46, v47);
    }

    else
    {
      --*(result + 4);
    }
  }

  return result;
}

void sub_22568C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_22568C8C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, WebGPU::CommandEncoder *a13, WTF::StringImpl *a14, atomic_ullong *a15, __int16 a16, char a17, char a18)
{
  v19 = a14;
  a14 = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, a2);
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a15, a2);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a12, v20);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a13);
  _Unwind_Resume(a1);
}

void sub_22568C934(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, atomic_ullong *);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

uint64_t wgpuCommandEncoderFinish(WebGPU::CommandEncoder *this, void *a2)
{
  ++*(this + 4);
  if (*a2 || !*(this + 3) || (v24 = *(this + 4)) != 0 && v24 != *(this + 5))
  {
    *this = 2;
    WebGPU::CommandEncoder::discardCommandBuffer(this);
    v3 = *(this + 24);
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }

    v6 = 0;
    v7 = *v3;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(*v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_10:
    v101 = v3;
    if (*(this + 6))
    {
      v9 = *(this + 6);
    }

    else
    {
      v9 = @"Invalid CommandEncoder.";
    }

    WebGPU::Device::generateAValidationError(v3, &v9->isa);
    v101 = 0;
    do
    {
      v11 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, v10);
        goto LABEL_19;
      }

      v12 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v12 != v11);
    if (v11 == 3)
    {
      WebGPU::Device::~Device(v3, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

LABEL_19:
    v15 = *(this + 24);
    if (WebGPU::CommandBuffer::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandBuffer::s_heapRef, v10);
    }

    else
    {
      NonCompact = WebGPU::CommandBuffer::operatorNewSlow(0x70);
    }

    v17 = NonCompact;
    *(NonCompact + 8) = 0;
    *(NonCompact + 16) = 0;
    *NonCompact = 3;
    *(NonCompact + 24) = 0;
    while (1)
    {
      v18 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v19 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_29;
      }
    }

    v20 = 0;
    v21 = *v15;
    v22 = 1;
    atomic_compare_exchange_strong_explicit(*v15, &v20, 1u, memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      MEMORY[0x22AA683C0](v21);
    }

    ++*(v21 + 8);
    atomic_compare_exchange_strong_explicit(v21, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != 1)
    {
      WTF::Lock::unlockSlow(v21);
    }

LABEL_29:
    *(v17 + 32) = v15;
    *(v17 + 104) = 0;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 83) = 0u;
    v23 = *(this + 4) - 1;
    if (*(this + 4) == 1)
    {
      goto LABEL_68;
    }

    goto LABEL_30;
  }

  if (*this)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = WebGPU::CommandsMixin::encoderStateName(this);
    v28 = [v26 stringWithFormat:@"GPUCommandEncoder.finish: encoder state is '%@', expected 'Open'", v27];

    *this = 2;
    v29 = a2;
    if (v28)
    {
LABEL_36:
      WebGPU::CommandEncoder::discardCommandBuffer(this);
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
          goto LABEL_48;
        }
      }

      v35 = 0;
      v36 = *v30;
      v37 = 1;
      atomic_compare_exchange_strong_explicit(*v30, &v35, 1u, memory_order_acquire, memory_order_acquire);
      if (v35)
      {
        MEMORY[0x22AA683C0](v36);
      }

      ++*(v36 + 8);
      atomic_compare_exchange_strong_explicit(v36, &v37, 0, memory_order_release, memory_order_relaxed);
      if (v37 != 1)
      {
        WTF::Lock::unlockSlow(v36);
      }

LABEL_48:
      v101 = v30;
      if (*(this + 6))
      {
        v38 = *(this + 6);
      }

      else
      {
        v38 = v28;
      }

      WebGPU::Device::generateAValidationError(v30, v38);
      v101 = 0;
      do
      {
        v40 = *v30;
        if ((*v30 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v30, v39);
          goto LABEL_57;
        }

        v41 = *v30;
        atomic_compare_exchange_strong_explicit(v30, &v41, v40 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v41 != v40);
      if (v40 == 3)
      {
        WebGPU::Device::~Device(v30, v39);
        bmalloc::api::tzoneFree(v42, v43);
      }

LABEL_57:
      v44 = *(this + 24);
      if (WebGPU::CommandBuffer::s_heapRef)
      {
        v45 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandBuffer::s_heapRef, v39);
      }

      else
      {
        v45 = WebGPU::CommandBuffer::operatorNewSlow(0x70);
      }

      v46 = v45;
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      *v45 = 3;
      *(v45 + 24) = 0;
      while (1)
      {
        v47 = *v44;
        if ((*v44 & 1) == 0)
        {
          break;
        }

        v48 = *v44;
        atomic_compare_exchange_strong_explicit(v44, &v48, v47 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v48 == v47)
        {
          goto LABEL_67;
        }
      }

      v49 = 0;
      v50 = *v44;
      v51 = 1;
      atomic_compare_exchange_strong_explicit(*v44, &v49, 1u, memory_order_acquire, memory_order_acquire);
      if (v49)
      {
        MEMORY[0x22AA683C0](v50);
      }

      ++*(v50 + 8);
      atomic_compare_exchange_strong_explicit(v50, &v51, 0, memory_order_release, memory_order_relaxed);
      if (v51 != 1)
      {
        WTF::Lock::unlockSlow(v50);
      }

LABEL_67:
      *(v46 + 32) = v44;
      *(v46 + 104) = 0;
      *(v46 + 40) = 0u;
      *(v46 + 56) = 0u;
      *(v46 + 72) = 0u;
      *(v46 + 83) = 0u;

      v17 = v46;
      v23 = *(this + 4) - 1;
      if (*(this + 4) == 1)
      {
        goto LABEL_68;
      }

      goto LABEL_30;
    }

LABEL_42:
    v34 = v29;
    if (!*(*(this + 24) + 8))
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if (*(this + 7))
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUCommandEncoder.finish: encoder stack size '%llu'", *(this + 7)];
    *this = 2;
    v29 = a2;
    if (v28)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  *this = 2;
  v34 = a2;
  if (!*(*(this + 24) + 8))
  {
    goto LABEL_73;
  }

LABEL_71:
  v55 = *(this + 5);
  if (*(this + 4) == v55)
  {
    WebGPU::CommandEncoder::endEncoding(this, v55);
    v56 = *(this + 5);
    *(this + 5) = 0;

    WebGPU::CommandEncoder::setExistingEncoder(this, 0);
  }

LABEL_73:
  v57 = *(this + 3);
  v58 = *(this + 3);
  *(this + 3) = 0;

  v59 = *(this + 4);
  *(this + 4) = 0;

  v60 = v34[1];
  if (v60)
  {
    strlen(v60);
  }

  WTF::String::fromUTF8();
  if (v100)
  {
    atomic_fetch_add_explicit(v100, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v101);
    if (atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v100, v61);
    }
  }

  else
  {
    v101 = &stru_2838D6D18;
  }

  [v57 setLabel:v101];
  v62 = v101;
  v101 = 0;

  if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v100, v63);
  }

  v65 = *(this + 23);
  v64 = *(this + 24);
  v66 = *(this + 22);
  v67 = v57;
  v69 = v66;
  if (WebGPU::CommandBuffer::s_heapRef)
  {
    v70 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::CommandBuffer::s_heapRef, v68);
  }

  else
  {
    v70 = WebGPU::CommandBuffer::operatorNewSlow(0x70);
  }

  v71 = v70;
  WebGPU::CommandBuffer::CommandBuffer(v70, v67, v64, v69, v65, this + 16, this);
  v99 = v71;

  v72 = *(this + 22);
  *(this + 22) = 0;

  if (!v71)
  {
    v82 = *(this + 9);
    *(this + 9) = 0;
    if (v82)
    {
      v83 = 0;
      atomic_compare_exchange_strong_explicit(v82, &v83, 1u, memory_order_acquire, memory_order_acquire);
      if (v83)
      {
        v94 = v82;
        MEMORY[0x22AA683C0]();
        v82 = v94;
        v95 = *(v94 + 16) - 1;
        *(v94 + 16) = v95;
        if (v95)
        {
LABEL_97:
          v85 = 1;
          atomic_compare_exchange_strong_explicit(v82, &v85, 0, memory_order_release, memory_order_relaxed);
          if (v85 != 1)
          {
            WTF::Lock::unlockSlow(v82);
          }

          goto LABEL_116;
        }
      }

      else
      {
        v84 = *(v82 + 16) - 1;
        *(v82 + 16) = v84;
        if (v84)
        {
          goto LABEL_97;
        }
      }

      v96 = *(v82 + 8);
      v97 = 1;
      atomic_compare_exchange_strong_explicit(v82, &v97, 0, memory_order_release, memory_order_relaxed);
      if (v97 != 1)
      {
        v98 = v82;
        WTF::Lock::unlockSlow(v82);
        v82 = v98;
        if (v96)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

      if (!v96)
      {
LABEL_115:
        WTF::fastFree(v82, v73);
      }
    }

LABEL_116:
    v71 = 0;
    goto LABEL_117;
  }

  v74 = *v71;
  if (*v71)
  {
    v74 = WTF::fastMalloc(0x20);
    *v74 = 0;
    *(v74 + 8) = xmmword_225881A50;
    *(v74 + 24) = v71;
    while (1)
    {
      v86 = *v71;
      if ((*v71 & 1) == 0)
      {
        break;
      }

      *(v74 + 8) = v86 >> 1;
      v87 = v86;
      atomic_compare_exchange_strong_explicit(v71, &v87, v74, memory_order_release, memory_order_relaxed);
      if (v87 == v86)
      {
        v75 = (this + 72);
        v88 = 0;
        v77 = 1;
        atomic_compare_exchange_strong_explicit(v74, &v88, 1u, memory_order_acquire, memory_order_acquire);
        if (!v88)
        {
          goto LABEL_87;
        }

        goto LABEL_107;
      }
    }

    WTF::fastFree(v74, v73);
    v74 = *v71;
    v75 = (this + 72);
    if (*v71)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v75 = (this + 72);
    if (v74)
    {
LABEL_86:
      v76 = 0;
      v77 = 1;
      atomic_compare_exchange_strong_explicit(v74, &v76, 1u, memory_order_acquire, memory_order_acquire);
      if (v76)
      {
LABEL_107:
        v89 = v74;
        MEMORY[0x22AA683C0]();
        v74 = v89;
      }

LABEL_87:
      ++*(v74 + 16);
      atomic_compare_exchange_strong_explicit(v74, &v77, 0, memory_order_release, memory_order_relaxed);
      if (v77 != 1)
      {
        v90 = v74;
        WTF::Lock::unlockSlow(v74);
        v74 = v90;
      }
    }
  }

  v78 = *v75;
  *v75 = v74;
  if (v78)
  {
    v79 = 0;
    atomic_compare_exchange_strong_explicit(v78, &v79, 1u, memory_order_acquire, memory_order_acquire);
    if (v79)
    {
      MEMORY[0x22AA683C0](v78);
      v91 = *(v78 + 16) - 1;
      *(v78 + 16) = v91;
      if (v91)
      {
LABEL_92:
        v81 = 1;
        atomic_compare_exchange_strong_explicit(v78, &v81, 0, memory_order_release, memory_order_relaxed);
        if (v81 != 1)
        {
          WTF::Lock::unlockSlow(v78);
        }

        goto LABEL_117;
      }
    }

    else
    {
      v80 = *(v78 + 16) - 1;
      *(v78 + 16) = v80;
      if (v80)
      {
        goto LABEL_92;
      }
    }

    v92 = *(v78 + 8);
    v93 = 1;
    atomic_compare_exchange_strong_explicit(v78, &v93, 0, memory_order_release, memory_order_relaxed);
    if (v93 == 1)
    {
      if (v92)
      {
        goto LABEL_117;
      }
    }

    else
    {
      WTF::Lock::unlockSlow(v78);
      if (v92)
      {
        goto LABEL_117;
      }
    }

    WTF::fastFree(v78, v73);
  }

LABEL_117:
  *(this + 8) = v71;
  *(v99 + 6) = *(this + 42);
  if (*(this + 172) == 1)
  {
    WebGPU::CommandBuffer::makeInvalid(v99, *(this + 6));
  }

  v17 = v99;
  v23 = *(this + 4) - 1;
  if (*(this + 4) == 1)
  {
LABEL_68:
    WebGPU::CommandEncoder::~CommandEncoder(this);
    bmalloc::api::tzoneFree(v52, v53);
    return v17;
  }

LABEL_30:
  *(this + 4) = v23;
  return v17;
}