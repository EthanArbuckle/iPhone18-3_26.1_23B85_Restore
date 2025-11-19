void sub_2256B9EA0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, WTF *a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a39)
  {
    WTF::fastFree(a39, a2);
  }

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v43 - 112));
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v42, v45);
  _Unwind_Resume(a1);
}

void sub_2256B9F70(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v5 = *(v3 - 144);
  *(v3 - 144) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
      WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v3 - 112));
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref((v3 - 112));
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v2, v7);
  _Unwind_Resume(a1);
}

void WebGPU::Queue::clearTextureViewIfNeeded(WebGPU::Queue *this, WebGPU::TextureView *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v5 = 0;
  v6 = *(this + 4);
  atomic_compare_exchange_strong_explicit(v2, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v2);
    if (*(v2 + 24))
    {
LABEL_4:
      ++*(v2 + 8);
      v7 = 1;
      atomic_compare_exchange_strong_explicit(v2, &v7, 0, memory_order_release, memory_order_relaxed);
      if (v7 == 1)
      {
        goto LABEL_5;
      }

LABEL_41:
      WTF::Lock::unlockSlow(v2);
      if (!v6)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v6 = 0;
  v29 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != 1)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (!v6)
  {
    return;
  }

LABEL_6:
  v8 = *(v3 + 12);
  ++v8[1].i32[0];
  v9 = *(v3 + 15);
  if (v9 && *(v3 + 13))
  {
    v10 = 0;
    v11 = 1;
    while (!v11)
    {
LABEL_10:
      if (++v10 >= v9)
      {
        goto LABEL_24;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = *(v3 + 12);
      v14 = v13 + v12;
      v15 = __CFADD__(v13, v12);
      v16 = *(v3 + 14);
      v17 = (v16 + v10);
      v18 = __CFADD__(v16, v10);
      if (v15 || v18)
      {
        break;
      }

      if (!WebGPU::Texture::previouslyCleared(v8, v14, v17))
      {
        v19 = WebGPU::Queue::ensureBlitCommandEncoder(this);
        WebGPU::CommandEncoder::clearTextureIfNeeded(v8, v14, v17, v6, v19);
      }

      ++v12;
      v11 = *(v3 + 13);
      if (v12 >= v11)
      {
        v9 = *(v3 + 15);
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_24:
    a2 = *(this + 3);
    if (a2)
    {
      WebGPU::Queue::endEncoding(this, a2, *(this + 2));
      WebGPU::Queue::commitMTLCommandBuffer(this, *(this + 2));
      v20 = *(this + 3);
      *(this + 3) = 0;

      v21 = *(this + 2);
      *(this + 2) = 0;
    }
  }

  if (v8)
  {
    if (v8[1].i32[0] == 1)
    {
      WebGPU::Texture::~Texture(v8);
      bmalloc::api::tzoneFree(v22, v23);
    }

    else
    {
      --v8[1].i32[0];
    }
  }

  while (1)
  {
    v24 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v25 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v25, v24 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      if (v24 == 3)
      {
        WebGPU::Device::~Device(v6, a2);

        bmalloc::api::tzoneFree(v26, v27);
      }

      return;
    }
  }

  v28 = *v6;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v28, a2);
}

void sub_2256BA28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v2, v4);
  _Unwind_Resume(a1);
}

atomic_uint *wgpuQueueRelease(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebGPU::Queue::~Queue(result);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

uint64_t wgpuQueueOnSubmittedWorkDone(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  atomic_fetch_add(a1, 1u);
  v12 = a1;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_2838D3238;
  v6[1] = a2;
  v6[2] = a3;
  v11 = v6;
  WebGPU::Queue::onSubmittedWorkDone(a1, &v11, v7);
  result = v11;
  if (v11)
  {
    result = (*(*v11 + 8))(v11);
  }

  v12 = 0;
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    WebGPU::Queue::~Queue(a1);

    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void sub_2256BA408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    (*(*a2 + 8))(a2);
    WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuQueueSubmit(WebGPU::Queue *this, void *a2, atomic_ullong **a3)
{
  v216[16] = *MEMORY[0x277D85DE8];
  v204 = 0;
  v205 = 0;
  if (a2)
  {
    v5 = a3;
    v3 = &a3[a2];
    do
    {
      v6 = *v5;
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
      atomic_compare_exchange_strong_explicit(*v6, &v9, 1u, memory_order_acquire, memory_order_acquire);
      if (v9)
      {
        MEMORY[0x22AA683C0](v10);
      }

      ++*(v10 + 8);
      v11 = 1;
      atomic_compare_exchange_strong_explicit(v10, &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 == 1)
      {
LABEL_12:
        v216[0] = v6;
        v12 = HIDWORD(v205);
        if (HIDWORD(v205) == v205)
        {
          goto LABEL_13;
        }
      }

      else
      {
        WTF::Lock::unlockSlow(v10);
        v216[0] = v6;
        v12 = HIDWORD(v205);
        if (HIDWORD(v205) == v205)
        {
LABEL_13:
          v13 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v204, v12 + 1, v216);
          v14 = HIDWORD(v205);
          v15 = v204;
          v16 = *v13;
          *v13 = 0;
          *(v15 + v14) = v16;
          HIDWORD(v205) = v14 + 1;
          v17 = v216[0];
          v216[0] = 0;
          if (v17)
          {
            goto LABEL_17;
          }

          goto LABEL_4;
        }
      }

      v216[0] = 0;
      *(v204 + v12) = v6;
      HIDWORD(v205) = v12 + 1;
      v17 = v216[0];
      v216[0] = 0;
      if (v17)
      {
        do
        {
LABEL_17:
          v18 = *v17;
          if ((*v17 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v17, a2);
            goto LABEL_4;
          }

          v19 = *v17;
          atomic_compare_exchange_strong_explicit(v17, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v19 != v18);
        if (v18 == 3)
        {
          WebGPU::CommandBuffer::~CommandBuffer(v17);
          bmalloc::api::tzoneFree(v20, v21);
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v3);
  }

  atomic_fetch_add(this, 1u);
  v22 = *(this + 5);
  if (!v22)
  {
    goto LABEL_256;
  }

  v23 = 0;
  v199 = *(this + 4);
  atomic_compare_exchange_strong_explicit(v22, &v23, 1u, memory_order_acquire, memory_order_acquire);
  if (v23)
  {
    MEMORY[0x22AA683C0](v22);
  }

  if (*(v22 + 24))
  {
    ++*(v22 + 8);
    v24 = 1;
    atomic_compare_exchange_strong_explicit(v22, &v24, 0, memory_order_release, memory_order_relaxed);
    if (v24 == 1)
    {
      goto LABEL_26;
    }

LABEL_58:
    WTF::Lock::unlockSlow(v22);
    if (v199)
    {
      goto LABEL_27;
    }

    goto LABEL_256;
  }

  v199 = 0;
  v44 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v44, 0, memory_order_release, memory_order_relaxed);
  if (v44 != 1)
  {
    goto LABEL_58;
  }

LABEL_26:
  if (v199)
  {
LABEL_27:
    v203 = this;
    if (!HIDWORD(v205))
    {
      goto LABEL_78;
    }

    v25 = v204;
    v26 = (v204 + 8 * HIDWORD(v205));
    while (1)
    {
      v27 = *v25;
      while (1)
      {
        v28 = *v27;
        if ((*v27 & 1) == 0)
        {
          break;
        }

        v29 = *v27;
        atomic_compare_exchange_strong_explicit(v27, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v29 == v28)
        {
          goto LABEL_36;
        }
      }

      v30 = 0;
      v31 = *v27;
      atomic_compare_exchange_strong_explicit(*v27, &v30, 1u, memory_order_acquire, memory_order_acquire);
      if (v30)
      {
        MEMORY[0x22AA683C0](v31);
      }

      ++*(v31 + 8);
      v32 = 1;
      atomic_compare_exchange_strong_explicit(v31, &v32, 0, memory_order_release, memory_order_relaxed);
      if (v32 == 1)
      {
LABEL_36:
        v215 = v27;
        if (!*(v27 + 8))
        {
          goto LABEL_41;
        }
      }

      else
      {
        WTF::Lock::unlockSlow(v31);
        v215 = v27;
        if (!*(v27 + 8))
        {
          goto LABEL_41;
        }
      }

      v33 = *(v27 + 32);
      if (!*(v33 + 8) || v33 != WebGPU::Queue::device(v203, a2) || *(v27 + 24) || (v34 = *(v27 + 8), v35 = [v34 status] > 1, v34, v35))
      {
LABEL_41:
        v36 = *(v27 + 40);
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = @"Validation failure.";
        }

        v3 = v38;

        v39 = 1;
        goto LABEL_45;
      }

      v39 = 0;
LABEL_45:
      v215 = 0;
      do
      {
        v40 = *v27;
        if ((*v27 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v27, a2);
          goto LABEL_51;
        }

        v41 = *v27;
        atomic_compare_exchange_strong_explicit(v27, &v41, v40 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v41 != v40);
      if (v40 == 3)
      {
        WebGPU::CommandBuffer::~CommandBuffer(v27);
        bmalloc::api::tzoneFree(v42, v43);
      }

LABEL_51:
      this = v203;
      if (v39)
      {
        if (v3)
        {
          WebGPU::Device::generateAValidationError(v199, v3);
          v213[0] = MEMORY[0x277D85DD0];
          v213[1] = 3221225472;
          v213[2] = ___ZN6WebGPU5Queue6submitEON3WTF6VectorINS1_3RefINS_13CommandBufferENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke;
          v213[3] = &unk_278566460;
          v200 = v3;
          v214 = v200;
          v45 = MEMORY[0x22AA68A80](v213);
          if (HIDWORD(v205))
          {
            v46 = v204;
            v47 = (v204 + 8 * HIDWORD(v205));
            do
            {
              v48 = *v46;
              while (1)
              {
                v49 = *v48;
                if ((*v48 & 1) == 0)
                {
                  break;
                }

                v50 = *v48;
                atomic_compare_exchange_strong_explicit(v48, &v50, v49 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v50 == v49)
                {
                  goto LABEL_73;
                }
              }

              v51 = 0;
              v52 = *v48;
              atomic_compare_exchange_strong_explicit(*v48, &v51, 1u, memory_order_acquire, memory_order_acquire);
              if (v51)
              {
                MEMORY[0x22AA683C0](v52);
              }

              ++*(v52 + 8);
              v53 = 1;
              atomic_compare_exchange_strong_explicit(v52, &v53, 0, memory_order_release, memory_order_relaxed);
              if (v53 != 1)
              {
                WTF::Lock::unlockSlow(v52);
              }

LABEL_73:
              v215 = v48;
              (v45)[2](v45, v48);
              v215 = 0;
              do
              {
                v55 = *v48;
                if ((*v48 & 1) == 0)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v48, v54);
                  goto LABEL_64;
                }

                v56 = *v48;
                atomic_compare_exchange_strong_explicit(v48, &v56, v55 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v56 != v55);
              if (v55 == 3)
              {
                WebGPU::CommandBuffer::~CommandBuffer(v48);
                bmalloc::api::tzoneFree(v57, v58);
              }

LABEL_64:
              v46 = (v46 + 8);
            }

            while (v46 != v47);
          }

          goto LABEL_248;
        }

LABEL_78:
        v59 = *(this + 3);
        if (v59)
        {
          WebGPU::Queue::endEncoding(this, v59, *(this + 2));
          WebGPU::Queue::commitMTLCommandBuffer(this, *(this + 2));
          v60 = *(this + 3);
          *(this + 3) = 0;

          v61 = *(v203 + 2);
          *(v203 + 2) = 0;
        }

        v62 = HIDWORD(v205);
        v200 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:HIDWORD(v205)];
        v212 = 0;
        if (v62)
        {
          v201 = 0;
          v63 = v204;
          v64 = (v204 + 8 * v62);
          while (1)
          {
            v66 = *v63;
            while (1)
            {
              v67 = *v66;
              if ((*v66 & 1) == 0)
              {
                break;
              }

              v68 = *v66;
              atomic_compare_exchange_strong_explicit(v66, &v68, v67 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v68 == v67)
              {
                goto LABEL_94;
              }
            }

            v69 = 0;
            v70 = *v66;
            atomic_compare_exchange_strong_explicit(*v66, &v69, 1u, memory_order_acquire, memory_order_acquire);
            if (v69)
            {
              MEMORY[0x22AA683C0](v70);
            }

            ++*(v70 + 8);
            v71 = 1;
            atomic_compare_exchange_strong_explicit(v70, &v71, 0, memory_order_release, memory_order_relaxed);
            if (v71 == 1)
            {
LABEL_94:
              v215 = v66;
              v72 = *(v66 + 8);
              if (!v72)
              {
                goto LABEL_96;
              }
            }

            else
            {
              WTF::Lock::unlockSlow(v70);
              v215 = v66;
              v72 = *(v66 + 8);
              if (!v72)
              {
LABEL_96:
                v73 = *(v66 + 40);
                v74 = v73;
                if (v73)
                {
                  v75 = v73;
                }

                else
                {
                  v75 = @"Command buffer appears twice.";
                }

                v76 = v75;

                v77 = 1;
                v201 = v76;
                goto LABEL_138;
              }
            }

            if (([(NSString *)v200 containsObject:v72]& 1) != 0)
            {
              goto LABEL_96;
            }

            [(NSString *)v200 addObject:v72];
            while (1)
            {
              v79 = *v66;
              if ((*v66 & 1) == 0)
              {
                break;
              }

              v80 = *v66;
              atomic_compare_exchange_strong_explicit(v66, &v80, v79 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v80 == v79)
              {
                goto LABEL_107;
              }
            }

            v81 = 0;
            v82 = *v66;
            atomic_compare_exchange_strong_explicit(*v66, &v81, 1u, memory_order_acquire, memory_order_acquire);
            if (v81)
            {
              MEMORY[0x22AA683C0](v82);
            }

            ++*(v82 + 8);
            v83 = 1;
            atomic_compare_exchange_strong_explicit(v82, &v83, 0, memory_order_release, memory_order_relaxed);
            if (v83 == 1)
            {
LABEL_107:
              if (v72 == -1)
              {
                goto LABEL_146;
              }
            }

            else
            {
              WTF::Lock::unlockSlow(v82);
              if (v72 == -1)
              {
LABEL_146:
                __break(0xC471u);
                JUMPOUT(0x2256BAD00);
              }
            }

            v84 = v212;
            if (!v212)
            {
              WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(&v212, 8u);
              v84 = v212;
            }

            v85 = *(v84 - 8);
            v86 = (v72 + ~(v72 << 32)) ^ ((v72 + ~(v72 << 32)) >> 22);
            v87 = 9 * ((v86 + ~(v86 << 13)) ^ ((v86 + ~(v86 << 13)) >> 8));
            v88 = (v87 ^ (v87 >> 15)) + ~((v87 ^ (v87 >> 15)) << 27);
            v89 = v85 & ((v88 >> 31) ^ v88);
            v90 = (v84 + 16 * v89);
            v91 = *v90;
            if (!*v90)
            {
LABEL_118:
              v94 = v90[1];
              *v90 = v72;
              v90[1] = v66;
              if (!v94)
              {
                goto LABEL_124;
              }

              do
              {
                v95 = *v94;
                if ((*v94 & 1) == 0)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v94, v78);
                  goto LABEL_124;
                }

                v96 = *v94;
                atomic_compare_exchange_strong_explicit(v94, &v96, v95 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v96 != v95);
              if (v95 == 3)
              {
                WebGPU::CommandBuffer::~CommandBuffer(v94);
                bmalloc::api::tzoneFree(v97, v98);
              }

LABEL_124:
              v99 = *(v84 - 16);
              v100 = *(v84 - 12) + 1;
              *(v84 - 12) = v100;
              v101 = (v99 + v100);
              v102 = *(v84 - 4);
              if (v102 > 0x400)
              {
                if (v102 > 2 * v101)
                {
                  goto LABEL_137;
                }
              }

              else
              {
                if (3 * v102 > 4 * v101)
                {
                  goto LABEL_137;
                }

                if (!v102)
                {
                  v103 = 8;
LABEL_130:
                  WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(&v212, v103);
                  goto LABEL_137;
                }
              }

              v103 = v102 << (6 * v100 >= (2 * v102));
              goto LABEL_130;
            }

            v92 = 0;
            v93 = 1;
            while (v91 != v72)
            {
              if (v91 == -1)
              {
                v92 = v90;
              }

              v89 = (v89 + v93) & v85;
              v90 = (v84 + 16 * v89);
              v91 = *v90;
              ++v93;
              if (!*v90)
              {
                if (v92)
                {
                  *v92 = 0;
                  v92[1] = 0;
                  --*(v84 - 16);
                  v90 = v92;
                }

                goto LABEL_118;
              }
            }

            v104 = v90[1];
            v90[1] = v66;
            if (!v104)
            {
              goto LABEL_137;
            }

            do
            {
              v105 = *v104;
              if ((*v104 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v104, v78);
                goto LABEL_137;
              }

              v106 = *v104;
              atomic_compare_exchange_strong_explicit(v104, &v106, v105 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v106 != v105);
            if (v105 == 3)
            {
              WebGPU::CommandBuffer::~CommandBuffer(v104);
              bmalloc::api::tzoneFree(v107, v108);
              v77 = 0;
              goto LABEL_138;
            }

LABEL_137:
            v77 = 0;
LABEL_138:

            v110 = v215;
            v215 = 0;
            if (v110)
            {
              do
              {
                v111 = *v110;
                if ((*v110 & 1) == 0)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v110, v109);
                  goto LABEL_83;
                }

                v112 = *v110;
                atomic_compare_exchange_strong_explicit(v110, &v112, v111 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v112 != v111);
              if (v111 == 3)
              {
                WebGPU::CommandBuffer::~CommandBuffer(v110);
                bmalloc::api::tzoneFree(v113, v114);
              }
            }

LABEL_83:
            v63 = (v63 + 8);
            if (v63 == v64)
            {
              v65 = 1;
            }

            else
            {
              v65 = v77;
            }

            if (v65)
            {
              goto LABEL_148;
            }
          }
        }

        v201 = 0;
LABEL_148:
        v210[0] = MEMORY[0x277D85DD0];
        v210[1] = 3221225472;
        v210[2] = ___ZN6WebGPU5Queue6submitEON3WTF6VectorINS1_3RefINS_13CommandBufferENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke_2;
        v210[3] = &unk_278566460;
        v202 = v201;
        v211 = v202;
        v115 = MEMORY[0x22AA68A80](v210);
        if (HIDWORD(v205))
        {
          v116 = v204;
          v117 = (v204 + 8 * HIDWORD(v205));
          do
          {
            v118 = *v116;
            while (1)
            {
              v119 = *v118;
              if ((*v118 & 1) == 0)
              {
                break;
              }

              v120 = *v118;
              atomic_compare_exchange_strong_explicit(v118, &v120, v119 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v120 == v119)
              {
                goto LABEL_160;
              }
            }

            v121 = 0;
            v122 = *v118;
            atomic_compare_exchange_strong_explicit(*v118, &v121, 1u, memory_order_acquire, memory_order_acquire);
            if (v121)
            {
              MEMORY[0x22AA683C0](v122);
            }

            ++*(v122 + 8);
            v123 = 1;
            atomic_compare_exchange_strong_explicit(v122, &v123, 0, memory_order_release, memory_order_relaxed);
            if (v123 != 1)
            {
              WTF::Lock::unlockSlow(v122);
            }

LABEL_160:
            v215 = v118;
            (v115)[2](v115, v118);
            v215 = 0;
            do
            {
              v125 = *v118;
              if ((*v118 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v118, v124);
                goto LABEL_151;
              }

              v126 = *v118;
              atomic_compare_exchange_strong_explicit(v118, &v126, v125 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v126 != v125);
            if (v125 == 3)
            {
              WebGPU::CommandBuffer::~CommandBuffer(v118);
              bmalloc::api::tzoneFree(v127, v128);
            }

LABEL_151:
            v116 = (v116 + 8);
          }

          while (v116 != v117);
        }

        if (v202)
        {
          WebGPU::Device::generateAValidationError(v199, &cfstr_CommandBufferA.isa);
          goto LABEL_235;
        }

        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v129 = v200;
        v131 = [(NSString *)v129 countByEnumeratingWithState:&v206 objects:v216 count:16];
        if (!v131)
        {
          goto LABEL_228;
        }

        v132 = *v207;
LABEL_169:
        v133 = 0;
        v134 = v203;
LABEL_172:
        if (*v207 != v132)
        {
          objc_enumerationMutation(v129);
        }

        v135 = *(*(&v206 + 1) + 8 * v133);
        if (v212)
        {
          if (v135 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x2256BB498);
          }

          if (!v135)
          {
            __break(0xC471u);
            JUMPOUT(0x2256BB4B8);
          }

          v136 = *(v212 - 8);
          v137 = (v135 + ~(v135 << 32)) ^ ((v135 + ~(v135 << 32)) >> 22);
          v138 = 9 * ((v137 + ~(v137 << 13)) ^ ((v137 + ~(v137 << 13)) >> 8));
          v139 = (v138 ^ (v138 >> 15)) + ~((v138 ^ (v138 >> 15)) << 27);
          v140 = v136 & ((v139 >> 31) ^ v139);
          v141 = *(v212 + 16 * v140);
          if (v141 != v135)
          {
            v142 = 1;
            while (v141)
            {
              v140 = (v140 + v142) & v136;
              v141 = *(v212 + 16 * v140);
              ++v142;
              if (v141 == v135)
              {
                goto LABEL_181;
              }
            }

            goto LABEL_182;
          }

LABEL_181:
          if (v140 == *(v212 - 4))
          {
            goto LABEL_182;
          }

          v143 = *(v212 + 16 * v140 + 8);
          if (!v143)
          {
            goto LABEL_192;
          }

          while (1)
          {
            v145 = *v143;
            if ((*v143 & 1) == 0)
            {
              break;
            }

            v146 = *v143;
            atomic_compare_exchange_strong_explicit(v143, &v146, v145 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v146 == v145)
            {
              goto LABEL_192;
            }
          }

          v147 = 0;
          v148 = *v143;
          atomic_compare_exchange_strong_explicit(*v143, &v147, 1u, memory_order_acquire, memory_order_acquire);
          if (v147)
          {
            MEMORY[0x22AA683C0](v148);
          }

          ++*(v148 + 8);
          v149 = 1;
          atomic_compare_exchange_strong_explicit(v148, &v149, 0, memory_order_release, memory_order_relaxed);
          if (v149 != 1)
          {
            WTF::Lock::unlockSlow(v148);
            v144 = *(v143 + 104);
            if (v144)
            {
LABEL_193:
              v150 = *(v144 + 4);
              *(v144 + 4) = v150 + 1;
              v151 = *(v143 + 68);
              if (v151)
              {
                v152 = *(v143 + 56);
                v153 = 8 * v151;
                do
                {
                  (*(**v152 + 16))(*v152, v143, v144);
                  ++v152;
                  v153 -= 8;
                }

                while (v153);
                v150 = *(v144 + 4) - 1;
                v134 = v203;
              }

              if (v150)
              {
                *(v144 + 4) = v150;
              }

              else
              {
                WebGPU::CommandEncoder::~CommandEncoder(v144);
                bmalloc::api::tzoneFree(v154, v155);
              }
            }
          }

          else
          {
LABEL_192:
            v144 = *(v143 + 104);
            if (v144)
            {
              goto LABEL_193;
            }
          }
        }

        else
        {
LABEL_182:
          v143 = 0;
          v144 = MEMORY[0x68];
          if (MEMORY[0x68])
          {
            goto LABEL_193;
          }
        }

        if (*(v143 + 64))
        {
          v156 = *(v143 + 68);
          v157 = *(v143 + 56);
          if (v156)
          {
            v158 = 8 * v156;
            do
            {
              v159 = *v157;
              *v157 = 0;
              if (v159)
              {
                (*(*v159 + 8))(v159);
              }

              v157 = (v157 + 8);
              v158 -= 8;
            }

            while (v158);
            *(v143 + 68) = 0;
            v157 = *(v143 + 56);
          }

          if (v157)
          {
            *(v143 + 56) = 0;
            *(v143 + 64) = 0;
            WTF::fastFree(v157, v130);
          }
        }

        WebGPU::Queue::commitMTLCommandBuffer(v134, v135);
        v160 = *(v143 + 84);
        if (v160)
        {
          v161 = *(v143 + 72);
          v162 = 8 * v160;
          do
          {
            (*(**v161 + 16))(*v161, *(v143 + 16));
            ++v161;
            v162 -= 8;
          }

          while (v162);
        }

        if (*(v143 + 80))
        {
          v163 = *(v143 + 84);
          v164 = *(v143 + 72);
          if (v163)
          {
            v165 = 8 * v163;
            do
            {
              v166 = *v164;
              *v164 = 0;
              if (v166)
              {
                (*(*v166 + 8))(v166);
              }

              v164 = (v164 + 8);
              v165 -= 8;
            }

            while (v165);
            *(v143 + 84) = 0;
            v164 = *(v143 + 72);
          }

          if (v164)
          {
            *(v143 + 72) = 0;
            *(v143 + 80) = 0;
            WTF::fastFree(v164, v130);
          }
        }

        do
        {
          v167 = *v143;
          if ((*v143 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v143, v130);
            goto LABEL_171;
          }

          v168 = *v143;
          atomic_compare_exchange_strong_explicit(v143, &v168, v167 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v168 != v167);
        if (v167 == 3)
        {
          WebGPU::CommandBuffer::~CommandBuffer(v143);
          bmalloc::api::tzoneFree(v169, v170);
        }

LABEL_171:
        if (++v133 == v131)
        {
          v131 = [(NSString *)v129 countByEnumeratingWithState:&v206 objects:v216 count:16];
          if (!v131)
          {
LABEL_228:

            v171 = [MEMORY[0x277CD6CD8] sharedCaptureManager];
            if (![v171 isCapturing])
            {
              goto LABEL_234;
            }

            v172 = WebGPU::GPUFrameCapture::submitCallsCaptured + 1 < WebGPU::GPUFrameCapture::maxSubmitCallsToCapture;
            if (WebGPU::GPUFrameCapture::submitCallsCaptured + 1 < WebGPU::GPUFrameCapture::maxSubmitCallsToCapture)
            {
              v173 = WebGPU::GPUFrameCapture::submitCallsCaptured + 1;
            }

            else
            {
              v173 = 0;
            }

            WebGPU::GPUFrameCapture::submitCallsCaptured = v173;

            if (!v172)
            {
              v171 = [MEMORY[0x277CD6CD8] sharedCaptureManager];
              [v171 stopCapture];
LABEL_234:
            }

LABEL_235:

            v175 = v212;
            if (v212)
            {
              v176 = *(v212 - 4);
              if (v176)
              {
                for (i = 0; i != v176; ++i)
                {
                  v178 = (v175 + 16 * i);
                  if (*v178 != -1)
                  {
                    v179 = v178[1];
                    v178[1] = 0;
                    if (v179)
                    {
                      do
                      {
                        v180 = *v179;
                        if ((*v179 & 1) == 0)
                        {
                          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v179, v174);
                          goto LABEL_239;
                        }

                        v181 = *v179;
                        atomic_compare_exchange_strong_explicit(v179, &v181, v180 - 2, memory_order_relaxed, memory_order_relaxed);
                      }

                      while (v181 != v180);
                      if (v180 == 3)
                      {
                        WebGPU::CommandBuffer::~CommandBuffer(v179);
                        bmalloc::api::tzoneFree(v182, v183);
                      }
                    }
                  }

LABEL_239:
                  ;
                }
              }

              WTF::fastFree((v175 - 16), v174);
            }

LABEL_248:

            do
            {
              v184 = *v199;
              if ((*v199 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v199, a2);
                this = v203;
                if (!v203)
                {
                  goto LABEL_257;
                }

                goto LABEL_256;
              }

              v185 = *v199;
              atomic_compare_exchange_strong_explicit(v199, &v185, v184 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v185 != v184);
            if (v184 == 3)
            {
              WebGPU::Device::~Device(v199, a2);
              bmalloc::api::tzoneFree(v186, v187);
            }

            this = v203;
            if (v203)
            {
              break;
            }

LABEL_257:
            v188 = HIDWORD(v205);
            v189 = v204;
            if (HIDWORD(v205))
            {
              goto LABEL_258;
            }

            goto LABEL_267;
          }

          goto LABEL_169;
        }

        goto LABEL_172;
      }

      v25 = (v25 + 8);
      if (v25 == v26)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_256:
  if (atomic_fetch_add(this, 0xFFFFFFFF) != 1)
  {
    goto LABEL_257;
  }

  atomic_store(1u, this);
  WebGPU::Queue::~Queue(this);
  bmalloc::api::tzoneFree(v197, v198);
  v188 = HIDWORD(v205);
  v189 = v204;
  if (HIDWORD(v205))
  {
LABEL_258:
    v190 = (v189 + 8 * v188);
    v191 = v189;
    do
    {
      v192 = *v191;
      *v191 = 0;
      if (v192)
      {
        do
        {
          v193 = *v192;
          if ((*v192 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v192, a2);
            goto LABEL_260;
          }

          v194 = *v192;
          atomic_compare_exchange_strong_explicit(v192, &v194, v193 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v194 != v193);
        if (v193 == 3)
        {
          WebGPU::CommandBuffer::~CommandBuffer(v192);
          bmalloc::api::tzoneFree(v195, v196);
        }
      }

LABEL_260:
      ++v191;
    }

    while (v191 != v190);
  }

LABEL_267:
  if (v189)
  {
    WTF::fastFree(v189, a2);
  }
}

void sub_2256BB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, atomic_uint *);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  WTF::Vector<WTF::Ref<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v7);
  _Unwind_Resume(a1);
}

void sub_2256BB4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_ullong *a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(a10, v38);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a14);
  WTF::Vector<WTF::Ref<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, v39);
  _Unwind_Resume(a1);
}

unsigned int *wgpuQueueWriteBuffer(atomic_uint *a1, atomic_ullong *a2, unint64_t a3, _OWORD *a4, unint64_t a5)
{
  atomic_fetch_add(a1, 1u);
  while (1)
  {
    v10 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v11 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  v13 = *a2;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v12, 1u, memory_order_acquire, memory_order_acquire);
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
  WebGPU::Queue::writeBuffer(a1, a2, a3, a4, a5);
  do
  {
    v16 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v15);
      result = a1;
      if (!a1)
      {
        return result;
      }

      goto LABEL_17;
    }

    v17 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  result = a1;
  if (a1)
  {
LABEL_17:
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      WebGPU::Queue::~Queue(result);

      return bmalloc::api::tzoneFree(v21, v22);
    }
  }

  return result;
}

void sub_2256BB810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256BB824(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, atomic_uint *a10)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

id *wgpuQueueWriteTexture(atomic_uint *a1, WTF::StringImpl *a2, char *a3, unint64_t a4, uint64_t a5, unsigned int *a6)
{
  atomic_fetch_add(a1, 1u);
  result = WebGPU::Queue::writeTexture(a1, a2, a3, a4, a5, a6);
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    WebGPU::Queue::~Queue(a1);

    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void sub_2256BB8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuQueueSetLabel(uint64_t a1, char *__s)
{
  atomic_fetch_add(a1, 1u);
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

  [*(a1 + 8) setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    WebGPU::Queue::~Queue(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void sub_2256BB9DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, atomic_uint *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D3120;
  result[1] = 0;
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1);
      v2 = result;
      WebGPU::Queue::~Queue(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_2838D3120;
  *(a1 + 1) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v4 = a1;
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v5, v6);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  v4 = v3 + 1;
  *(v2 + 64) = v3 + 1;
  v7 = *(v2 + 72);
  result = (v2 + 72);
  v6 = v7;
  if (v7)
  {
    if (v3 == -3 || v3 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256BBDA8);
    }

    v8 = *(v6 - 8);
    v9 = (v3 - (v4 << 32)) ^ ((v3 - (v4 << 32)) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = (v6 + 24 * v12);
    v14 = *v13;
    if (*v13 == v4)
    {
LABEL_8:
      if ((v6 + 24 * *(v6 - 4)) != v13)
      {
        v16 = v13[1];
        v22 = v16;
        v17 = *(v13 + 5);
        v13[1] = 0;
        v13[2] = 0;
        v23 = v17;
        v18 = *(v6 - 4);
        if ((v6 + 24 * v18) != v13)
        {
          *v13 = -2;
          v19 = vadd_s32(*(v6 - 16), 0xFFFFFFFF00000001);
          *(v6 - 16) = v19;
          if (v18 >= 9 && 6 * v19.i32[1] < v18)
          {
            result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(result, v18 >> 1, 0);
            v17 = v23;
          }
        }

        if (v17)
        {
          v20 = 8 * v17;
          do
          {
            result = (*(**v16 + 16))();
            v16 = (v16 + 8);
            v20 -= 8;
          }

          while (v20);
          v16 = v22;
          if (v23)
          {
            v21 = 0;
            do
            {
              result = *(v22 + v21);
              *(v22 + v21) = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              v21 += 8;
            }

            while (8 * v23 != v21);
          }
        }

        if (v16)
        {

          return WTF::fastFree(v16, a2);
        }
      }
    }

    else
    {
      v15 = 1;
      while (v14 != -1)
      {
        v12 = (v12 + v15) & v8;
        v13 = (v6 + 24 * v12);
        v14 = *v13;
        ++v15;
        if (*v13 == v4)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(void *a1, unsigned int a2, uint64_t *a3)
{
  v4 = a1;
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
  *v4 = v10;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = v6;
    v45 = v6;
    do
    {
      v16 = (v5 + 24 * v13);
      v17 = *v16;
      if (*v16 != -2)
      {
        if (v17 == -1)
        {
          v18 = *(v16 + 5);
          v19 = v16[1];
          if (v18)
          {
            v20 = 8 * v18;
            do
            {
              v21 = *v19;
              *v19 = 0;
              if (v21)
              {
                (*(*v21 + 8))(v21);
              }

              v19 = (v19 + 8);
              v20 -= 8;
            }

            while (v20);
            v19 = v16[1];
          }

          if (v19)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v19, v9);
          }
        }

        else
        {
          v22 = *v4;
          if (*v4)
          {
            v23 = *(v22 - 8);
          }

          else
          {
            v23 = 0;
          }

          v24 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
          v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
          v27 = v23 & ((v26 >> 31) ^ v26);
          v28 = 1;
          do
          {
            v29 = v22 + 24 * v27;
            v27 = (v27 + v28++) & v23;
          }

          while (*v29 != -1);
          v30 = (v29 + 8);
          v31 = *(v29 + 8);
          v32 = *(v29 + 20);
          if (v32)
          {
            v33 = v5;
            v34 = v14;
            v35 = v4;
            v36 = 8 * v32;
            do
            {
              v37 = *v31;
              *v31 = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }

              v31 = (v31 + 8);
              v36 -= 8;
            }

            while (v36);
            v31 = *v30;
            v4 = v35;
            v14 = v34;
            v5 = v33;
            v15 = v45;
          }

          if (v31)
          {
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            WTF::fastFree(v31, v9);
          }

          v38 = *v16;
          *v30 = 0;
          *(v29 + 16) = 0;
          v39 = v16[1];
          v16[1] = 0;
          *v29 = v38;
          *(v29 + 8) = v39;
          LODWORD(v38) = *(v16 + 4);
          *(v16 + 4) = 0;
          *(v29 + 16) = v38;
          LODWORD(v38) = *(v16 + 5);
          *(v16 + 5) = 0;
          *(v29 + 20) = v38;
          v40 = *(v16 + 5);
          v41 = v16[1];
          if (v40)
          {
            v42 = 8 * v40;
            do
            {
              v43 = *v41;
              *v41 = 0;
              if (v43)
              {
                (*(*v43 + 8))(v43);
              }

              v41 = (v41 + 8);
              v42 -= 8;
            }

            while (v42);
            v41 = v16[1];
          }

          if (v41)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v41, v9);
          }

          if (v16 == a3)
          {
            v14 = v29;
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
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

void WebGPU::crashGPUProcess<9u>(void *a1, void *a2)
{
  a1;
  a2;
  WTFLogAlways();
  __break(0xC471u);
}

void WebGPU::crashGPUProcess<10u>(void *a1, void *a2)
{
  a1;
  a2;
  WTFLogAlways();
  __break(0xC471u);
}

void WebGPU::crashGPUProcess<11u>(void *a1, void *a2)
{
  a1;
  a2;
  WTFLogAlways();
  __break(0xC471u);
}

void WebGPU::crashGPUProcess<16u>(void *a1, void *a2)
{
  a1;
  a2;
  WTFLogAlways();
  __break(0xC471u);
}

void WebGPU::crashGPUProcess<17u>(void *a1, void *a2)
{
  a1;
  a2;
  WTFLogAlways();
  __break(0xC471u);
}

uint64_t WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
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

void *WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_2838D3148;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1);
      v2 = result;
      WebGPU::Queue::~Queue(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D3148;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v4 = a1;
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v5, v6);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebGPU::Queue::commitMTLCommandBuffer(objc_object  {objcproto16MTLCommandBuffer}*)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer})::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 56);
  v5 = v4 + 1;
  *(v3 + 56) = v4 + 1;
  v8 = *(v3 + 80);
  v6 = (v3 + 80);
  v7 = v8;
  if (v8)
  {
    if (v4 == -3 || v4 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256BC80CLL);
    }

    v9 = *(v7 - 8);
    v10 = (v4 - (v5 << 32)) ^ ((v4 - (v5 << 32)) >> 22);
    v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
    v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
    v13 = v9 & ((v12 >> 31) ^ v12);
    v14 = (v7 + 24 * v13);
    v15 = *v14;
    if (*v14 == v5)
    {
LABEL_8:
      if ((v7 + 24 * *(v7 - 4)) != v14)
      {
        v17 = v14[1];
        v36 = v17;
        v18 = *(v14 + 5);
        v14[1] = 0;
        v14[2] = 0;
        v37 = v18;
        v19 = *(v7 - 4);
        if ((v7 + 24 * v19) != v14)
        {
          *v14 = -2;
          v20 = vadd_s32(*(v7 - 16), 0xFFFFFFFF00000001);
          *(v7 - 16) = v20;
          if (v19 >= 9 && 6 * v20.i32[1] < v19)
          {
            WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v6, v19 >> 1, 0);
            v18 = v37;
          }
        }

        if (v18)
        {
          v21 = 8 * v18;
          do
          {
            (*(**v17 + 16))(*v17, 0);
            v17 = (v17 + 8);
            v21 -= 8;
          }

          while (v21);
          v17 = v36;
          if (v37)
          {
            v22 = 0;
            do
            {
              v23 = *(v36 + v22);
              *(v36 + v22) = 0;
              if (v23)
              {
                (*(*v23 + 8))(v23);
              }

              v22 += 8;
            }

            while (8 * v37 != v22);
          }
        }

        if (v17)
        {
          WTF::fastFree(v17, a2);
        }
      }
    }

    else
    {
      v16 = 1;
      while (v15 != -1)
      {
        v13 = (v13 + v16) & v9;
        v14 = (v7 + 24 * v13);
        v15 = *v14;
        ++v16;
        if (*v14 == v5)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (*(a1 + 8))
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 40);
    if (v25)
    {
      v26 = 0;
      v27 = *(v24 + 32);
      atomic_compare_exchange_strong_explicit(v25, &v26, 1u, memory_order_acquire, memory_order_acquire);
      if (v26)
      {
        MEMORY[0x22AA683C0](v25);
        if (*(v25 + 24))
        {
LABEL_29:
          ++*(v25 + 8);
          v28 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v28, 0, memory_order_release, memory_order_relaxed);
          if (v28 == 1)
          {
            goto LABEL_30;
          }

          goto LABEL_43;
        }
      }

      else if (*(v25 + 24))
      {
        goto LABEL_29;
      }

      v27 = 0;
      v35 = 1;
      atomic_compare_exchange_strong_explicit(v25, &v35, 0, memory_order_release, memory_order_relaxed);
      if (v35 == 1)
      {
LABEL_30:
        if (!v27)
        {
          return;
        }

LABEL_31:
        WebGPU::Device::loseTheDevice(v27, 0);
        while (1)
        {
          v30 = *v27;
          if ((*v27 & 1) == 0)
          {
            break;
          }

          v31 = *v27;
          atomic_compare_exchange_strong_explicit(v27, &v31, v30 - 2, memory_order_relaxed, memory_order_relaxed);
          if (v31 == v30)
          {
            if (v30 == 3)
            {
              WebGPU::Device::~Device(v27, v29);

              bmalloc::api::tzoneFree(v32, v33);
            }

            return;
          }
        }

        v34 = *v27;

        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v34, v29);
        return;
      }

LABEL_43:
      WTF::Lock::unlockSlow(v25);
      if (!v27)
      {
        return;
      }

      goto LABEL_31;
    }
  }
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(void *a1, unsigned int a2, uint64_t *a3)
{
  v4 = a1;
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
  *v4 = v10;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = v6;
    v45 = v6;
    do
    {
      v16 = (v5 + 24 * v13);
      v17 = *v16;
      if (*v16 != -2)
      {
        if (v17 == -1)
        {
          v18 = *(v16 + 5);
          v19 = v16[1];
          if (v18)
          {
            v20 = 8 * v18;
            do
            {
              v21 = *v19;
              *v19 = 0;
              if (v21)
              {
                (*(*v21 + 8))(v21);
              }

              v19 = (v19 + 8);
              v20 -= 8;
            }

            while (v20);
            v19 = v16[1];
          }

          if (v19)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v19, v9);
          }
        }

        else
        {
          v22 = *v4;
          if (*v4)
          {
            v23 = *(v22 - 8);
          }

          else
          {
            v23 = 0;
          }

          v24 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
          v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
          v27 = v23 & ((v26 >> 31) ^ v26);
          v28 = 1;
          do
          {
            v29 = v22 + 24 * v27;
            v27 = (v27 + v28++) & v23;
          }

          while (*v29 != -1);
          v30 = (v29 + 8);
          v31 = *(v29 + 8);
          v32 = *(v29 + 20);
          if (v32)
          {
            v33 = v5;
            v34 = v14;
            v35 = v4;
            v36 = 8 * v32;
            do
            {
              v37 = *v31;
              *v31 = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }

              v31 = (v31 + 8);
              v36 -= 8;
            }

            while (v36);
            v31 = *v30;
            v4 = v35;
            v14 = v34;
            v5 = v33;
            v15 = v45;
          }

          if (v31)
          {
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            WTF::fastFree(v31, v9);
          }

          v38 = *v16;
          *v30 = 0;
          *(v29 + 16) = 0;
          v39 = v16[1];
          v16[1] = 0;
          *v29 = v38;
          *(v29 + 8) = v39;
          LODWORD(v38) = *(v16 + 4);
          *(v16 + 4) = 0;
          *(v29 + 16) = v38;
          LODWORD(v38) = *(v16 + 5);
          *(v16 + 5) = 0;
          *(v29 + 20) = v38;
          v40 = *(v16 + 5);
          v41 = v16[1];
          if (v40)
          {
            v42 = 8 * v40;
            do
            {
              v43 = *v41;
              *v41 = 0;
              if (v43)
              {
                (*(*v43 + 8))(v43);
              }

              v41 = (v41 + 8);
              v42 -= 8;
            }

            while (v42);
            v41 = v16[1];
          }

          if (v41)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v41, v9);
          }

          if (v16 == a3)
          {
            v14 = v29;
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
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

void *WTF::HashMap<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v2 + 16 * i);
        if (*v6 != -1)
        {
          v7 = v6[1];
          v6[1] = 0;
          if (v7)
          {
            do
            {
              v8 = *v7;
              if ((*v7 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v7, a2);
                goto LABEL_5;
              }

              v9 = *v7;
              atomic_compare_exchange_strong_explicit(v7, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v9 != v8);
            if (v8 == 3)
            {
              WebGPU::CommandBuffer::~CommandBuffer(v7);
              bmalloc::api::tzoneFree(v10, v11);
            }
          }
        }

LABEL_5:
        ;
      }
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::Queue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)> &&)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D3170;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_2838D3170;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::onSubmittedWorkDone(WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)>,void,WGPUQueueWorkDoneStatus>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D3198;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)>,void,WGPUQueueWorkDoneStatus>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_2838D3198;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WGPUQueueWorkDoneStatus)>,void,WGPUQueueWorkDoneStatus>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebGPU::Queue::onSubmittedWorkScheduled(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D31C0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::onSubmittedWorkScheduled(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_2838D31C0;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

char *WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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
    JUMPOUT(0x2256BD2A8);
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

uint64_t WTF::HashTable<void *,WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>>,WTF::DefaultHash<void *>,WTF::HashMap<void *,WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::RefPtr<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = result + 16;
  *(result + 8) = a2 - 1;
  *(result + 12) = a2;
  *result = 0;
  *(result + 4) = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
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

          v18 = (~(v11 << 32) + v11) ^ ((~(v11 << 32) + v11) >> 22);
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
          v25 = v16 + 16 * v23;
          v26 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v26)
          {
            do
            {
              v27 = *v26;
              if ((*v26 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v26, v8);
                goto LABEL_26;
              }

              v28 = *v26;
              atomic_compare_exchange_strong_explicit(v26, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v28 != v27);
            if (v27 == 3)
            {
              WebGPU::CommandBuffer::~CommandBuffer(v26);
              bmalloc::api::tzoneFree(v29, v30);
            }
          }

LABEL_26:
          v31 = *v10;
          v10[1] = 0;
          *v25 = v31;
          result = v10[1];
          v10[1] = 0;
          if (!result)
          {
            continue;
          }

          do
          {
            v32 = *result;
            if ((*result & 1) == 0)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*result, v8);
              goto LABEL_7;
            }

            v33 = *result;
            atomic_compare_exchange_strong_explicit(result, &v33, v32 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v33 != v32);
          if (v32 != 3)
          {
            continue;
          }
        }

        else
        {
          result = v10[1];
          v10[1] = 0;
          if (!result)
          {
            continue;
          }

          do
          {
            v12 = *result;
            if ((*result & 1) == 0)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*result, v8);
              goto LABEL_7;
            }

            v13 = *result;
            atomic_compare_exchange_strong_explicit(result, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v13 != v12);
          if (v12 != 3)
          {
            continue;
          }
        }

        WebGPU::CommandBuffer::~CommandBuffer(result);
        result = bmalloc::api::tzoneFree(v14, v15);
      }

LABEL_7:
      ;
    }
  }

  if (v4)
  {

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::Queue::releaseCounterSampleBuffer(unsigned long long)::$_0,void>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D31E8;
  result[1] = 0;
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1);
      v2 = result;
      WebGPU::Queue::~Queue(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::releaseCounterSampleBuffer(unsigned long long)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_2838D31E8;
  *(a1 + 1) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v4 = a1;
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v5, v6);
    a1 = v4;
  }

  return WTF::fastFree(a1, a2);
}

void WTF::Detail::CallableWrapper<WebGPU::Queue::releaseCounterSampleBuffer(unsigned long long)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 88);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 16)];
  [v1 removeObjectForKey:?];
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Queue::retainTimestampsForOneUpdate(NSMutableSet<objc_object  {objcproto22MTLCounterSampleBuffer}*> *)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_2838D3210;

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v2 || atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v2);
  WebGPU::Queue::~Queue(v2);
  bmalloc::api::tzoneFree(v4, v5);
  return a1;
}

{
  *a1 = &unk_2838D3210;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WebGPU::Queue::~Queue(v3);
    bmalloc::api::tzoneFree(v6, v7);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  return WTF::fastFree(v4, v2);
}

uint64_t WTF::Vector<WTF::Ref<WebGPU::CommandBuffer,WTF::RawPtrTraits<WebGPU::CommandBuffer>,WTF::DefaultRefDerefTraits<WebGPU::CommandBuffer>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = (v4 + 8 * v3);
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        do
        {
          v7 = *v6;
          if ((*v6 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::CommandBuffer,(WTF::DestructionThread)0>(*v6, a2);
            goto LABEL_4;
          }

          v8 = *v6;
          atomic_compare_exchange_strong_explicit(v6, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v8 != v7);
        if (v7 == 3)
        {
          WebGPU::CommandBuffer::~CommandBuffer(v6);
          bmalloc::api::tzoneFree(v9, v10);
        }
      }

LABEL_4:
      v4 = (v4 + 8);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_2256BDA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13[8] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  v13[8] = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WebGPU::RenderBundle::RenderBundle(uint64_t a1, void *a2, uint64_t *a3, _DWORD **a4, uint64_t a5, uint64_t a6, char a7, WebGPU::BindGroup ***a8, atomic_ullong *a9)
{
  v14 = a2;
  *a1 = 1;
  while (1)
  {
    v15 = *a9;
    if ((*a9 & 1) == 0)
    {
      break;
    }

    v16 = *a9;
    atomic_compare_exchange_strong_explicit(a9, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_8;
    }
  }

  v17 = 0;
  v18 = *a9;
  v19 = 1;
  atomic_compare_exchange_strong_explicit(*a9, &v17, 1u, memory_order_acquire, memory_order_acquire);
  if (v17)
  {
    MEMORY[0x22AA683C0](v18);
  }

  ++*(v18 + 8);
  atomic_compare_exchange_strong_explicit(v18, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 == 1)
  {
LABEL_8:
    *(a1 + 8) = a9;
    v20 = *a4;
    if (!*a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  WTF::Lock::unlockSlow(v18);
  *(a1 + 8) = a9;
  v20 = *a4;
  if (*a4)
  {
LABEL_9:
    ++*v20;
  }

LABEL_10:
  *(a1 + 16) = v20;
  v21 = v14;
  *(a1 + 32) = 0;
  *(a1 + 24) = v21;
  *(a1 + 40) = 0;
  v22 = *a3;
  *a3 = 0;
  *(a1 + 32) = v22;
  LODWORD(v22) = *(a3 + 2);
  *(a3 + 2) = 0;
  *(a1 + 40) = v22;
  LODWORD(v22) = *(a3 + 3);
  *(a3 + 3) = 0;
  *(a1 + 44) = v22;
  v24 = *(a5 + 16);
  v23 = *(a5 + 32);
  *(a1 + 48) = *a5;
  *(a1 + 64) = v24;
  *(a1 + 80) = v23;
  v26 = *(a5 + 16);
  v25 = *(a5 + 24);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = v26;
  if (v26)
  {
    if (v26 >> 30)
    {
      __break(0xC471u);
      goto LABEL_88;
    }

    v27 = WTF::fastMalloc((4 * v26));
    *(a1 + 104) = v26;
    *(a1 + 96) = v27;
    v28 = (v26 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v28 < 7)
    {
      v29 = v25;
    }

    else
    {
      v29 = v25;
      if (v27 - v25 >= 0x20)
      {
        v30 = v28 + 1;
        v31 = v30 & 0x7FFFFFFFFFFFFFF8;
        v32 = &v27[v31];
        v29 = (v25 + v31 * 4);
        v33 = (v25 + 16);
        v34 = v27 + 4;
        v35 = v30 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 8;
        }

        while (v35);
        v27 = v32;
        if (v30 == (v30 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_20;
        }
      }
    }

    do
    {
      v37 = *v29++;
      *v27++ = v37;
    }

    while (v29 != (v25 + 4 * v26));
  }

LABEL_20:
  *(a1 + 112) = 0;
  v38 = (a1 + 112);
  if (!*a8)
  {
    goto LABEL_79;
  }

  v39 = *(*a8 - 3);
  if (!v39)
  {
    goto LABEL_79;
  }

  if (v39 == 1)
  {
    v40 = *(*a8 - 3);
    v41 = 1;
    goto LABEL_26;
  }

  v42 = __clz(v39 - 1);
  if (!v42)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    JUMPOUT(0x2256BE09CLL);
  }

  v40 = (1 << -v42);
  v41 = 1 << -v42;
  if (v39 <= 0x400)
  {
LABEL_26:
    if (3 * v40 > 4 * v39)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v40 <= 2 * v39)
  {
LABEL_27:
    v41 *= 2;
  }

LABEL_28:
  v43 = v39;
  v44 = v41;
  if (v41 > 0x400)
  {
    if (v44 * 0.416666667 > v43)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v44 * 0.604166667 <= v43)
  {
LABEL_32:
    v41 *= 2;
  }

LABEL_33:
  if (v41 <= 8)
  {
    v45 = 8;
  }

  else
  {
    v45 = v41;
  }

  v46 = WTF::fastZeroedMalloc((8 * v45 + 16));
  *v38 = v46 + 16;
  *(v46 + 8) = v45 - 1;
  *(v46 + 12) = v45;
  *v46 = 0;
  v47 = *a8;
  if (!*a8)
  {
    v49 = 0;
    v48 = 0;
LABEL_46:
    v51 = v49;
    v49 = &v47[v48];
    if (v47)
    {
LABEL_44:
      v52 = *(v47 - 1);
      goto LABEL_52;
    }

LABEL_47:
    v53 = 0;
    if (v51)
    {
      goto LABEL_55;
    }

    goto LABEL_79;
  }

  v48 = *(v47 - 1);
  v49 = &v47[v48];
  if (!*(v47 - 3))
  {
    goto LABEL_46;
  }

  if (v48)
  {
    v50 = 8 * v48;
    v51 = *a8;
    while (*v51 + 1 <= 1)
    {
      ++v51;
      v50 -= 8;
      if (!v50)
      {
        v51 = v49;
        break;
      }
    }

    if (v47)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  v52 = 0;
  v51 = *a8;
LABEL_52:
  v53 = &v47[v52];
  if (v51 != v53)
  {
    while (1)
    {
LABEL_55:
      v54 = *v51;
      if (*v51 == -1)
      {
        __break(0xC471u);
        goto LABEL_89;
      }

      if (!v54)
      {
        __break(0xC471u);
        JUMPOUT(0x2256BE0BCLL);
      }

      v55 = *v38;
      if (!*v38)
      {
        WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash((a1 + 112), 8u, 0);
        v55 = *v38;
        v54 = *v51;
      }

      v56 = *(v55 - 8);
      v57 = (v54 + ~(v54 << 32)) ^ ((v54 + ~(v54 << 32)) >> 22);
      v58 = 9 * ((v57 + ~(v57 << 13)) ^ ((v57 + ~(v57 << 13)) >> 8));
      v59 = (v58 ^ (v58 >> 15)) + ~((v58 ^ (v58 >> 15)) << 27);
      v60 = v56 & ((v59 >> 31) ^ v59);
      v61 = (v55 + 8 * v60);
      v62 = *v61;
      if (*v61)
      {
        v63 = 0;
        v64 = 1;
        while (v62 != v54)
        {
          if (v62 == -1)
          {
            v63 = v61;
          }

          v60 = (v60 + v64) & v56;
          v61 = (v55 + 8 * v60);
          v62 = *v61;
          ++v64;
          if (!*v61)
          {
            if (v63)
            {
              *v63 = 0;
              v55 = *v38;
              --*(*v38 - 16);
              v54 = *v51;
              v61 = v63;
            }

            goto LABEL_67;
          }
        }

        goto LABEL_76;
      }

LABEL_67:
      if (v54)
      {
        ++*(v54 + 2);
      }

      *v61 = v54;
      v65 = *(v55 - 16);
      v66 = *(v55 - 12) + 1;
      *(v55 - 12) = v66;
      v67 = (v65 + v66);
      v68 = *(v55 - 4);
      if (v68 > 0x400)
      {
        break;
      }

      if (3 * v68 > 4 * v67)
      {
        goto LABEL_76;
      }

      if (v68)
      {
        goto LABEL_74;
      }

      v69 = 8;
LABEL_75:
      WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash((a1 + 112), v69, v61);
      do
      {
LABEL_76:
        ++v51;
      }

      while (v51 != v49 && *v51 + 1 <= 1);
      if (v51 == v53)
      {
        goto LABEL_79;
      }
    }

    if (v68 > 2 * v67)
    {
      goto LABEL_76;
    }

LABEL_74:
    v69 = v68 << (6 * v66 >= (2 * v68));
    goto LABEL_75;
  }

LABEL_79:
  *(a1 + 120) = 0;
  *(a1 + 128) = a6;
  *(a1 + 136) = 0x3F80000000000000;
  *(a1 + 144) = a7;
  if (*(a1 + 108))
  {
    v70 = *(a1 + 96);
  }

  else
  {
    v70 = 0;
  }

  *(a1 + 72) = v70;

  return a1;
}

void sub_2256BE0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (*v10 == 1)
  {

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WebGPU::RenderBundle *WebGPU::RenderBundle::RenderBundle(WebGPU::RenderBundle *this, atomic_ullong *a2, NSString *a3)
{
  v5 = a3;
  *this = 1;
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
      goto LABEL_9;
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
  }

LABEL_9:
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = v5;
  *(this + 16) = 0;
  *(this + 17) = 0x3F80000000000000;
  *(this + 144) = 0;
  return this;
}

void WebGPU::RenderBundle::~RenderBundle(id *this)
{
  v4 = this[14];
  if (v4)
  {
    v5 = *(v4 - 1);
    if (v5)
    {
      v6 = this[14];
      do
      {
        v9 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v9)
          {
            if (*(v9 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v9, v2, v3);
              bmalloc::api::tzoneFree(v7, v8);
            }

            else
            {
              --*(v9 + 2);
            }
          }
        }

        ++v6;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 4), v2);
  }

  v10 = this[12];
  if (v10)
  {
    this[12] = 0;
    *(this + 26) = 0;
    WTF::fastFree(v10, v2);
  }

  v11 = *(this + 11);
  v12 = this[4];
  if (!v11)
  {
    goto LABEL_45;
  }

  v13 = &v12[48 * v11];
  while (2)
  {
    v14 = *(v12 + 7);
    v15 = *(v12 + 2);
    if (!v14)
    {
      goto LABEL_37;
    }

    v16 = v15 + 40 * v14;
    do
    {
      v17 = *(v15 + 16);
      if (v17 == 255)
      {
        goto LABEL_19;
      }

      v18 = *(v15 + 8);
      *(v15 + 8) = 0;
      if (v17 == 2)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 2) - 1;
        if (*(v18 + 2) != 1)
        {
LABEL_18:
          *(v18 + 2) = v19;
          goto LABEL_19;
        }

        WebGPU::ExternalTexture::~ExternalTexture(v18, v2);
      }

      else if (v17 == 1)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 2) - 1;
        if (*(v18 + 2) != 1)
        {
          goto LABEL_18;
        }

        WebGPU::TextureView::~TextureView(v18, v2);
      }

      else
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        do
        {
          v22 = *v18;
          if ((*v18 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v18, v2);
            goto LABEL_19;
          }

          v23 = *v18;
          atomic_compare_exchange_strong_explicit(v18, &v23, v22 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v23 != v22);
        if (v22 != 3)
        {
          goto LABEL_19;
        }

        WebGPU::Buffer::~Buffer(v18);
      }

      bmalloc::api::tzoneFree(v20, v21);
LABEL_19:
      *(v15 + 16) = -1;
      v15 += 40;
    }

    while (v15 != v16);
    v15 = *(v12 + 2);
LABEL_37:
    if (v15)
    {
      *(v12 + 2) = 0;
      *(v12 + 6) = 0;
      WTF::fastFree(v15, v2);
    }

    v24 = *(v12 + 3);
    if (v24)
    {
      v25 = *v12;
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;

        v26 -= 8;
      }

      while (v26);
    }

    v28 = *v12;
    if (*v12)
    {
      *v12 = 0;
      *(v12 + 2) = 0;
      WTF::fastFree(v28, v2);
    }

    v12 += 48;
    if (v12 != v13)
    {
      continue;
    }

    break;
  }

  v12 = this[4];
LABEL_45:
  if (v12)
  {
    this[4] = 0;
    *(this + 10) = 0;
    WTF::fastFree(v12, v2);
  }

  v30 = this[2];
  this[2] = 0;
  if (v30)
  {
    if (*v30 != 1)
    {
      --*v30;
      goto LABEL_50;
    }

    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v30);
    bmalloc::api::tzoneFree(v32, v33);
    v31 = this[1];
    this[1] = 0;
    if (v31)
    {
      do
      {
LABEL_53:
        v34 = *v31;
        if ((*v31 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v31, v29);
          goto LABEL_58;
        }

        v35 = *v31;
        atomic_compare_exchange_strong_explicit(v31, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v35 != v34);
      if (v34 == 3)
      {
        WebGPU::Device::~Device(v31, v29);
        bmalloc::api::tzoneFree(v36, v37);
      }
    }
  }

  else
  {
LABEL_50:
    v31 = this[1];
    this[1] = 0;
    if (v31)
    {
      goto LABEL_53;
    }
  }

LABEL_58:
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void WebGPU::RenderBundle::setLabel(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v9, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v9 = &stru_2838D6D18;
  }

  v5 = v9;
  v6 = [*(a1 + 24) firstObject];
  v7 = [v6 indirectCommandBuffer];
  [v7 setLabel:v5];

  v8 = v9;
  v9 = 0;
}

void sub_2256BE5E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2256BE60C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3;

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_2256BE638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void WebGPU::RenderBundle::updateMinMaxDepths(WebGPU::RenderBundle *this, float a2, float a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 34) != a2 || *(this + 35) != a3)
  {
    *(this + 34) = a2;
    *(this + 35) = a3;
    *v17 = a2;
    *&v17[1] = a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(this + 3);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = *(*(this + 1) + 16);
          atomic_fetch_add(v9, 1u);
          v10 = [v8 fragmentDynamicOffsetsBuffer];
          WebGPU::Queue::writeBuffer(v9, v10, 0, v17, 8uLL);

          if (v9)
          {
            if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v9);
              WebGPU::Queue::~Queue(v9);
              bmalloc::api::tzoneFree(v11, v12);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v5);
    }
  }
}

uint64_t WebGPU::RenderBundle::validateRenderPass(uint64_t result, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = result;
  if (a2 && !*(result + 88))
  {
    return 0;
  }

  if (a3 && !*(result + 92))
  {
    return 0;
  }

  v10 = *(result + 64);
  if (v10 != *(a4 + 16))
  {
    return 0;
  }

  v11 = 0;
  if (!v10)
  {
LABEL_20:
    if (*(a4 + 32) && (v19 = *a6) != 0)
    {
      if (*(v19 + 40) == *(v9 + 80))
      {
        v11 = *(*(v19 + 96) + 40);
        return *(v9 + 84) == v11;
      }
    }

    else if (!*(v9 + 80))
    {
      return *(v9 + 84) == v11;
    }

    return 0;
  }

  v12 = 0;
  v13 = *(result + 72);
  while (1)
  {
    v14 = *(v13 + 4 * v12);
    if (v12 >= *(a4 + 16))
    {
LABEL_8:
      if (v14)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v12 >= *(a5 + 12))
    {
      break;
    }

    result = *(*a5 + 8 * v12);
    if (!result)
    {
      goto LABEL_8;
    }

    v15 = *(result + 8);
    *(result + 8) = v15 + 1;
    v16 = *(result + 40);
    if (v14 == v16)
    {
      v11 = *(*(result + 96) + 40);
    }

    if (v15)
    {
      *(result + 8) = v15;
      if (v14 != v16)
      {
        return 0;
      }
    }

    else
    {
      WebGPU::TextureView::~TextureView(result, a2);
      result = bmalloc::api::tzoneFree(v17, v18);
      if (v14 != v16)
      {
        return 0;
      }
    }

LABEL_9:
    if (v10 == ++v12)
    {
      goto LABEL_20;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WebGPU::RenderBundle::rebindSamplersIfNeeded(WebGPU::RenderBundle *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = *(v1 - 4);
    v3 = (v1 + 8 * v2);
    if (*(v1 - 12))
    {
      if (!v2)
      {
        v6 = 0;
        v5 = *(this + 14);
        goto LABEL_13;
      }

      v4 = 8 * v2;
      v5 = *(this + 14);
      while (*v5 + 1 <= 1)
      {
        ++v5;
        v4 -= 8;
        if (!v4)
        {
          v5 = v3;
          break;
        }
      }

LABEL_8:
      v6 = *(v1 - 4);
LABEL_13:
      v7 = (v1 + 8 * v6);
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v5 = v3;
  v3 = (v1 + 8 * v2);
  if (v1)
  {
    goto LABEL_8;
  }

  v7 = 0;
LABEL_14:
  v8 = 1;
  while (v5 != v7)
  {
    v9 = *v5;
    if (*v5)
    {
      ++*(v9 + 2);
    }

    v10 = WebGPU::BindGroup::rebindSamplersIfNeeded(v9);
    if (v9)
    {
      if (*(v9 + 2) == 1)
      {
        v13 = v10;
        WebGPU::BindGroup::~BindGroup(v9, v11, v12);
        bmalloc::api::tzoneFree(v14, v15);
        v10 = v13;
      }

      else
      {
        --*(v9 + 2);
      }
    }

    do
    {
      ++v5;
    }

    while (v5 != v3 && *v5 + 1 <= 1);
    v8 = v10 & v8;
  }

  return v8;
}

void sub_2256BEA98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (v3)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::deref(v3, a2, a3);
  }

  _Unwind_Resume(exception_object);
}

id *wgpuRenderBundleRelease(id *result)
{
  if (*result == 1)
  {
    WebGPU::RenderBundle::~RenderBundle(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *wgpuRenderBundleSetLabel(WTF::StringImpl *a1, char *__s)
{
  ++*a1;
  v7[1] = a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  WebGPU::RenderBundle::setLabel(a1, v7);
  result = v7[0];
  v7[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v3);
  }

  if (*a1 == 1)
  {
    WebGPU::RenderBundle::~RenderBundle(a1);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256BEBAC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, id *a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>::~Ref(&a10);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

WebGPU::ExternalTexture *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN6WebGPU6BufferENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_IKNS8_11TextureViewENSA_ISG_EENSC_ISG_EEEENS7_IKNS8_15ExternalTextureENSA_ISL_EENSC_ISL_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISP_LNS0_5TraitE1EEEEEvOT_EUlRSX_OT0_E_JRSQ_SW_EEEDcmSY_DpOT0_(WebGPU::ExternalTexture *result, unsigned __int8 *a2, WebGPU::ExternalTexture **a3, atomic_ullong **a4)
{
  v4 = a2[8];
  if (result == 2)
  {
    if (v4 != 255)
    {
      if (v4 == 2)
      {
        v6 = *a4;
        if (*a4)
        {
          ++*(v6 + 2);
        }

        result = *a3;
        *a3 = v6;
        if (result)
        {
          if (*(result + 2) != 1)
          {
            --*(result + 2);
            return result;
          }

          WebGPU::ExternalTexture::~ExternalTexture(result, a2);

          return bmalloc::api::tzoneFree(v28, v29);
        }

        return result;
      }

      v13 = a2;
      v14 = a4;
      result = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v43, a2);
      a4 = v14;
      a2 = v13;
    }

    v15 = *a4;
    if (*a4)
    {
      ++*(v15 + 2);
    }

    *a2 = v15;
    a2[8] = 2;
    return result;
  }

  if (result != 1)
  {
    if (v4 != 255)
    {
      if (!a2[8])
      {
        v7 = *a4;
        if (!*a4)
        {
          goto LABEL_42;
        }

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
            goto LABEL_42;
          }
        }

        v23 = 0;
        v24 = *v7;
        v25 = 1;
        atomic_compare_exchange_strong_explicit(*v7, &v23, 1u, memory_order_acquire, memory_order_acquire);
        if (v23)
        {
          v36 = v7;
          v39 = a3;
          v33 = v24;
          MEMORY[0x22AA683C0]();
          v34 = 1;
          v24 = v33;
          v7 = v36;
          a3 = v39;
          ++*(v24 + 8);
          atomic_compare_exchange_strong_explicit(v24, &v34, 0, memory_order_release, memory_order_relaxed);
          if (v34 == 1)
          {
LABEL_42:
            result = *a3;
            *a3 = v7;
            if (result)
            {
              goto LABEL_43;
            }

            return result;
          }
        }

        else
        {
          ++*(v24 + 8);
          atomic_compare_exchange_strong_explicit(v24, &v25, 0, memory_order_release, memory_order_relaxed);
          if (v25 == 1)
          {
            goto LABEL_42;
          }
        }

        v40 = a3;
        WTF::Lock::unlockSlow(v24);
        result = *v40;
        *v40 = v7;
        if (!result)
        {
          return result;
        }

        do
        {
LABEL_43:
          v26 = *result;
          if ((*result & 1) == 0)
          {
            v30 = *result;

            return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v30, a2);
          }

          v27 = *result;
          atomic_compare_exchange_strong_explicit(result, &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v27 != v26);
        if (v26 != 3)
        {
          return result;
        }

        WebGPU::Buffer::~Buffer(result);

        return bmalloc::api::tzoneFree(v28, v29);
      }

      v16 = a2;
      v17 = a4;
      result = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v41, a2);
      a4 = v17;
      a2 = v16;
    }

    a2[8] = -1;
    v18 = *a4;
    if (*a4)
    {
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
          goto LABEL_36;
        }
      }

      v21 = 0;
      result = *v18;
      v22 = 1;
      atomic_compare_exchange_strong_explicit(*v18, &v21, 1u, memory_order_acquire, memory_order_acquire);
      if (v21)
      {
        v35 = v18;
        v38 = a2;
        v31 = result;
        MEMORY[0x22AA683C0]();
        v32 = 1;
        result = v31;
        v18 = v35;
        a2 = v38;
        ++*(result + 1);
        atomic_compare_exchange_strong_explicit(result, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != 1)
        {
          goto LABEL_39;
        }
      }

      else
      {
        ++*(result + 1);
        atomic_compare_exchange_strong_explicit(result, &v22, 0, memory_order_release, memory_order_relaxed);
        if (v22 != 1)
        {
LABEL_39:
          v37 = a2;
          result = WTF::Lock::unlockSlow(result);
          *v37 = v18;
          v37[8] = 0;
          return result;
        }
      }
    }

LABEL_36:
    *a2 = v18;
    a2[8] = 0;
    return result;
  }

  if (v4 == 255)
  {
LABEL_25:
    v12 = *a4;
    if (*a4)
    {
      ++*(v12 + 2);
    }

    *a2 = v12;
    a2[8] = 1;
    return result;
  }

  if (v4 != 1)
  {
    v10 = a2;
    v11 = a4;
    result = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v42, a2);
    a4 = v11;
    a2 = v10;
    goto LABEL_25;
  }

  v5 = *a4;
  if (*a4)
  {
    ++*(v5 + 2);
  }

  result = *a3;
  *a3 = v5;
  if (result)
  {
    if (*(result + 2) != 1)
    {
      --*(result + 2);
      return result;
    }

    WebGPU::TextureView::~TextureView(result, a2);

    return bmalloc::api::tzoneFree(v28, v29);
  }

  return result;
}

WebGPU::TextureView *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::deref(WebGPU::TextureView *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::TextureView::~TextureView(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

WebGPU::BindGroup ***WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::~HashTable(WebGPU::BindGroup ***result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
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

id *WTF::RefCounted<WebGPU::RenderBundleEncoder>::deref(id *result)
{
  if (*result == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WebGPU::BindGroup **a3)
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
            if (*(v26 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v26, v10, v11);
              bmalloc::api::tzoneFree(v27, v28);
            }

            else
            {
              --*(v26 + 2);
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

void *WTF::HashMap<unsigned long long,WebGPU::IndexBufferAndIndexData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::IndexBufferAndIndexData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v2 + 88 * i);
        if (*v6 != -2)
        {
          v7 = v6[1];
          v6[1] = 0;
          if (v7)
          {
            do
            {
              v8 = *v7;
              if ((*v7 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v7, a2);
                goto LABEL_5;
              }

              v9 = *v7;
              atomic_compare_exchange_strong_explicit(v7, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v9 != v8);
            if (v8 == 3)
            {
              WebGPU::Buffer::~Buffer(v7);
              bmalloc::api::tzoneFree(v10, v11);
            }
          }
        }

LABEL_5:
        ;
      }
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

uint64_t WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(atomic_ullong **this, NSString *a2)
{
  v3 = a2;
  v4 = WebGPU::RenderBundleEncoder::validToEncodeCommand(this);
  if ((v4 & 1) == 0)
  {
    v5 = this[1];
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    v9 = *v5;
    v10 = 1;
    atomic_compare_exchange_strong_explicit(*v5, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      v17 = v9;
      MEMORY[0x22AA683C0]();
      v9 = v17;
    }

    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != 1)
    {
      WTF::Lock::unlockSlow(v9);
    }

LABEL_10:
    WebGPU::Device::generateAValidationError(v5, v3);
    do
    {
      v12 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v11);
        goto LABEL_16;
      }

      v13 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v13 != v12);
    if (v12 == 3)
    {
      WebGPU::Device::~Device(v5, v11);
      bmalloc::api::tzoneFree(v14, v15);
    }
  }

LABEL_16:

  return v4 ^ 1u;
}

void sub_2256BF8DC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderBundleEncoder::validToEncodeCommand(WebGPU::RenderBundleEncoder *this)
{
  if (!*(*(this + 1) + 8))
  {
    return 0;
  }

  if (*(this + 401) != 1)
  {
    return 1;
  }

  v1 = *(this + 39);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 8);
  if (*(*(v2 + 184) + 172) == 1)
  {
    v3 = 0;

    v4 = *(v2 + 8) - 1;
    if (*(v2 + 8) != 1)
    {
LABEL_7:
      *(v2 + 8) = v4;
      return v3 & 1;
    }
  }

  else
  {
    v7 = *(v2 + 16);
    if (v7)
    {
      v3 = *(this + 408) ^ 1;

      v4 = *(v2 + 8) - 1;
      if (*(v2 + 8) != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;

      v4 = *(v2 + 8) - 1;
      if (*(v2 + 8) != 1)
      {
        goto LABEL_7;
      }
    }
  }

  WebGPU::RenderPassEncoder::~RenderPassEncoder(v2);
  bmalloc::api::tzoneFree(v8, v9);
  return v3 & 1;
}

void WebGPU::Device::createRenderBundleEncoder(uint64_t a1@<X0>, void *a2@<X1>, WebGPU::RenderBundleEncoder *a3@<X8>)
{
  if (*a2 || !*(a1 + 8))
  {
    if (WebGPU::RenderBundleEncoder::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundleEncoder::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::RenderBundleEncoder::operatorNewSlow(0);
    }

    v6 = NonCompact;
    WebGPU::RenderBundleEncoder::RenderBundleEncoder(NonCompact, a1, &cfstr_Createrenderbu.isa);
    *a3 = v6;
    return;
  }

  v82 = objc_opt_new();
  [v82 setInheritBuffers:0];
  [v82 setInheritPipelineState:0];
  [v82 setMaxFragmentBufferBindCount:1];
  v8 = a2[2];
  v9 = *(a1 + 192);
  if (v8 > v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"descriptor.colorFormatCount(%zu) > limits().maxColorAttachments(%u)", a2[2], v9];
    WebGPU::Device::generateAValidationError(a1, v10);
    v12 = v10;
    if (WebGPU::RenderBundleEncoder::s_heapRef)
    {
      goto LABEL_8;
    }

LABEL_81:
    v13 = WebGPU::RenderBundleEncoder::operatorNewSlow(0);
    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_22:
    v28 = *(a2 + 8);
    if (v28)
    {
      if ((v28 - 38) >= 6)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"createRenderBundleEncoder - provided depthStencilFormat %d is not a depth or stencil format", *(a2 + 8)];
        WebGPU::Device::generateAValidationError(a1, v29);
        v12 = v29;
        if (WebGPU::RenderBundleEncoder::s_heapRef)
        {
          goto LABEL_8;
        }

        goto LABEL_81;
      }
    }

    else if (!a2[2])
    {
      WebGPU::Device::generateAValidationError(a1, &cfstr_Createrenderbu_3.isa);
      WebGPU::RenderBundleEncoder::createInvalid(a3, a1, v70);
      goto LABEL_75;
    }

    v31 = v82;
    if (WebGPU::RenderBundleEncoder::s_heapRef)
    {
      v32 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundleEncoder::s_heapRef, v30);
    }

    else
    {
      v32 = WebGPU::RenderBundleEncoder::operatorNewSlow(0);
    }

    v33 = v32;
    v34 = v31;
    *v33 = 1;
    *(v33 + 4) = 0;
    while (1)
    {
      v35 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v36 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v36 == v35)
      {
        goto LABEL_37;
      }
    }

    v37 = 0;
    v38 = *a1;
    v39 = 1;
    atomic_compare_exchange_strong_explicit(*a1, &v37, 1u, memory_order_acquire, memory_order_acquire);
    if (v37)
    {
      MEMORY[0x22AA683C0](v38);
    }

    ++*(v38 + 8);
    atomic_compare_exchange_strong_explicit(v38, &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != 1)
    {
      WTF::Lock::unlockSlow(v38);
    }

LABEL_37:
    *(v33 + 8) = a1;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
    v40 = v34;
    *(v33 + 176) = 0;
    v81 = v40;
    *(v33 + 80) = v40;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0u;
    *(v33 + 120) = 0u;
    *(v33 + 136) = 0u;
    *(v33 + 148) = 0u;
    *(v33 + 168) = 3;
    *(v33 + 184) = 0;
    v41 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v42 = *(*(v33 + 8) + 100);
    *(v33 + 200) = 0;
    *(v33 + 192) = v41;
    *(v33 + 208) = 0;
    v43 = __CFADD__(v42, 1);
    v44 = (v42 + 1);
    *(v33 + 212) = v44;
    if (!v43)
    {
      if (v44 >= 0x6666667)
      {
        goto LABEL_85;
      }

      v45 = 40 * v44;
      v46 = WTF::fastMalloc((40 * v44));
      *(v33 + 208) = v45 / 0x28;
      *(v33 + 200) = v46;
      v47 = *(v33 + 212);
      if (v47)
      {
        bzero(v46, 40 * ((40 * v47 - 40) / 0x28) + 40);
      }
    }

    v48 = *(*(v33 + 8) + 96);
    *(v33 + 216) = 0;
    *(v33 + 224) = 0;
    v43 = __CFADD__(v48, 1);
    v49 = (v48 + 1);
    *(v33 + 228) = v49;
    if (!v43)
    {
      if (v49 >= 0x6666667)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C0128);
      }

      v50 = 40 * v49;
      v51 = WTF::fastMalloc((40 * v49));
      *(v33 + 224) = v50 / 0x28;
      *(v33 + 216) = v51;
      v52 = *(v33 + 228);
      if (v52)
      {
        bzero(v51, 40 * ((40 * v52 - 40) / 0x28) + 40);
      }
    }

    *(v33 + 232) = 0;
    v53 = (v33 + 232);
    *(v33 + 240) = 0;
    *(v33 + 248) = 0u;
    *(v33 + 264) = 0u;
    *(v33 + 280) = 0u;
    *(v33 + 296) = 0u;
    *(v33 + 312) = 0u;
    v54 = *a2;
    v55 = *(a2 + 2);
    *(v33 + 344) = *(a2 + 1);
    *(v33 + 360) = v55;
    *(v33 + 328) = v54;
    v56 = a2[3];
    if (v56)
    {
      v57 = a2[2];
      *(v33 + 376) = 0;
      *(v33 + 384) = 0;
      *(v33 + 388) = v57;
      if (v57)
      {
        if (!(v57 >> 30))
        {
          v58 = WTF::fastMalloc((4 * v57));
          *(v33 + 384) = v57;
          *(v33 + 376) = v58;
          v59 = (v57 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v59 < 7)
          {
            v60 = v58;
            v61 = v56;
          }

          else
          {
            v60 = v58;
            v61 = v56;
            if ((v58 - v56) >= 0x20)
            {
              v62 = v59 + 1;
              v63 = 4 * (v62 & 0x7FFFFFFFFFFFFFF8);
              v60 = (v58 + v63);
              v61 = (v56 + v63);
              v64 = (v56 + 16);
              v65 = (v58 + 16);
              v66 = v62 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v67 = *v64;
                *(v65 - 1) = *(v64 - 1);
                *v65 = v67;
                v64 += 2;
                v65 += 2;
                v66 -= 8;
              }

              while (v66);
              if (v62 == (v62 & 0x7FFFFFFFFFFFFFF8))
              {
                goto LABEL_61;
              }
            }
          }

          do
          {
            v71 = *v61++;
            *v60++ = v71;
          }

          while (v61 != (v56 + 4 * v57));
LABEL_61:
          v72 = *(v33 + 388);
          *(v33 + 392) = 0;
          *(v33 + 400) = 0;
          *(v33 + 404) = -1;
          *(v33 + 408) = 0;
          if (v72)
          {
            v69 = v58;
          }

          else
          {
            v69 = 0;
          }

          goto LABEL_64;
        }

LABEL_85:
        __break(0xC471u);
        JUMPOUT(0x2256C0120);
      }
    }

    else
    {
      *(v33 + 376) = 0;
      *(v33 + 384) = 0;
    }

    v69 = 0;
    *(v33 + 392) = 0;
    *(v33 + 400) = 0;
    *(v33 + 404) = -1;
    *(v33 + 408) = 0;
LABEL_64:
    *(v33 + 352) = v69;
    v73 = [MEMORY[0x277CBEB18] array];
    v74 = *(v33 + 272);
    *(v33 + 272) = v73;

    if (*(v33 + 240) == 1)
    {
      v76 = *v53;
      *v53 = 0;
      v77 = v81;
      if (v76)
      {
        v78 = *(v76 - 4);
        if (v78)
        {
          v79 = v76 + 8;
          do
          {
            if (*(v79 - 8) != -2)
            {
              v80 = *v79;
              if (*v79)
              {
                *v79 = 0;
                *(v79 + 8) = 0;
                WTF::fastFree(v80, v75);
              }
            }

            v79 += 24;
            --v78;
          }

          while (v78);
        }

        WTF::fastFree((v76 - 16), v75);
      }
    }

    else
    {
      *(v33 + 232) = 0;
      *(v33 + 240) = 1;
      v77 = v81;
    }

    *a3 = v33;
    goto LABEL_75;
  }

  v15 = 0;
  v16 = 0;
  v17 = *(a1 + 196);
  v18 = a2[3];
  v19 = 4 * v8;
  while (1)
  {
    v20 = *(v18 + 4 * v16);
    if (!v20)
    {
      goto LABEL_12;
    }

    if (!WebGPU::Texture::isColorRenderableFormat(v20, a1))
    {
      break;
    }

    v21 = *(v18 + 4 * v16);
    v22 = WebGPU::Texture::renderTargetPixelByteAlignment(v21);
    v23 = WebGPU::Texture::renderTargetPixelByteCost(v21);
    if (v15 % v22)
    {
      v24 = v22 - v15 % v22;
    }

    else
    {
      v24 = 0;
    }

    v15 += v23 + v24;
    if (v15 > v17)
    {
      WebGPU::Device::generateAValidationError(a1, &cfstr_Createrenderbu_1.isa);
      if (WebGPU::RenderBundleEncoder::s_heapRef)
      {
        v26 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundleEncoder::s_heapRef, v25);
      }

      else
      {
        v26 = WebGPU::RenderBundleEncoder::operatorNewSlow(0);
      }

      v27 = v26;
      WebGPU::RenderBundleEncoder::RenderBundleEncoder(v26, a1, &cfstr_Createrenderbu_1.isa);
      *a3 = v27;
      goto LABEL_75;
    }

LABEL_12:
    ++v16;
    v19 -= 4;
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"createRenderBundleEncoder - colorAttachment[%zu] with format %d is not renderable", v16, *(v18 + 4 * v16)];
  WebGPU::Device::generateAValidationError(a1, v68);
  v12 = v68;
  if (!WebGPU::RenderBundleEncoder::s_heapRef)
  {
    goto LABEL_81;
  }

LABEL_8:
  v13 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundleEncoder::s_heapRef, v11);
LABEL_9:
  v14 = v13;
  WebGPU::RenderBundleEncoder::RenderBundleEncoder(v13, a1, v12);
  *a3 = v14;

LABEL_75:
}

void sub_2256C0134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id a16)
{
  if (*v16 == 1)
  {

    bmalloc::api::tzoneFree(v16, v18);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::RenderBundleEncoder::createInvalid(WebGPU::RenderBundleEncoder *this, atomic_ullong *a2, NSString *a3)
{
  v5 = @"createRenderBundleEncoder - zero color and depth-stencil formats provided";
  if (WebGPU::RenderBundleEncoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundleEncoder::s_heapRef, v6);
  }

  else
  {
    NonCompact = WebGPU::RenderBundleEncoder::operatorNewSlow(0);
  }

  v8 = NonCompact;
  WebGPU::RenderBundleEncoder::RenderBundleEncoder(NonCompact, a2, &cfstr_Createrenderbu_3.isa);
  *this = v8;
}

void sub_2256C04B8(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v2, a2);

  _Unwind_Resume(a1);
}

uint64_t *std::optional<WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~optional(uint64_t *result, void *a2)
{
  if (*(result + 8) == 1)
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
  }

  return result;
}

uint64_t WTF::Vector<WebGPU::RenderBundleEncoder::BufferAndOffset,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v6 = *v4;
      v4 += 5;

      v5 -= 40;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WebGPU::RenderBundleEncoder *WebGPU::RenderBundleEncoder::RenderBundleEncoder(WebGPU::RenderBundleEncoder *this, atomic_ullong *a2, NSString *a3)
{
  v5 = a3;
  *this = 1;
  *(this + 4) = 0;
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
      goto LABEL_9;
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
  }

LABEL_9:
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 0;
  *(this + 21) = 3;
  *(this + 240) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 217) = 0u;
  *(this + 248) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 49) = v5;
  *(this + 200) = 0;
  *(this + 101) = -1;
  *(this + 408) = 0;
  return this;
}

void WebGPU::RenderBundleEncoder::makeInvalid(WebGPU::RenderBundleEncoder *this, NSString *a2)
{
  v13 = a2;
  v4 = *(this + 9);
  *(this + 9) = 0;

  v5 = *(this + 10);
  *(this + 10) = 0;

  v6 = *(this + 24);
  *(this + 24) = 0;

  objc_storeStrong(this + 49, a2);
  v7 = *(this + 34);
  *(this + 34) = 0;

  v8 = *(this + 39);
  if (!v8 || (v9 = *(v8 + 8)) == 0)
  {
LABEL_5:
    v10 = v13;

    goto LABEL_7;
  }

  ++*(v9 + 8);
  WebGPU::RenderPassEncoder::makeInvalid(v9, v13);
  if (*(v9 + 8) != 1)
  {
    --*(v9 + 8);
    goto LABEL_5;
  }

  WebGPU::RenderPassEncoder::~RenderPassEncoder(v9);
  bmalloc::api::tzoneFree(v11, v12);
  v10 = v13;

LABEL_7:
}

void sub_2256C08B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v10);

  _Unwind_Resume(a1);
}

void WebGPU::RenderBundleEncoder::~RenderBundleEncoder(id *this)
{
  v3 = this[47];
  if (v3)
  {
    this[47] = 0;
    *(this + 96) = 0;
    WTF::fastFree(v3, v2);
  }

  v5 = this[39];
  this[39] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v8 = this[33];
  if (v8)
  {
    v9 = *(v8 - 1);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = &v8[22 * i];
        if (*v11 != -2)
        {
          v12 = *(v11 + 1);
          *(v11 + 1) = 0;
          if (v12)
          {
            do
            {
              v13 = *v12;
              if ((*v12 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v12, v6);
                goto LABEL_10;
              }

              v14 = *v12;
              atomic_compare_exchange_strong_explicit(v12, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v14 != v13);
            if (v13 == 3)
            {
              WebGPU::Buffer::~Buffer(v12);
              bmalloc::api::tzoneFree(v15, v16);
            }
          }
        }

LABEL_10:
        ;
      }
    }

    WTF::fastFree((v8 - 4), v6);
  }

  v17 = this[32];
  if (v17)
  {
    v18 = *(v17 - 1);
    if (v18)
    {
      v19 = this[32];
      do
      {
        v22 = *v19;
        if (*v19 != -1)
        {
          *v19 = 0;
          if (v22)
          {
            if (*(v22 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v22, v6, v7);
              bmalloc::api::tzoneFree(v20, v21);
            }

            else
            {
              --*(v22 + 2);
            }
          }
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    WTF::fastFree((v17 - 4), v6);
  }

  v23 = this[31];
  if (v23)
  {
    v24 = *(v23 - 1);
    if (v24)
    {
      v25 = (v23 + 2);
      do
      {
        if (*(v25 - 2) != -2)
        {
          v28 = *v25;
          *v25 = 0;
          if (v28)
          {
            if (*(v28 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v28, v6, v7);
              bmalloc::api::tzoneFree(v26, v27);
            }

            else
            {
              --*(v28 + 2);
            }
          }
        }

        v25 += 2;
        --v24;
      }

      while (v24);
    }

    WTF::fastFree((v23 - 4), v6);
  }

  if (*(this + 240) == 1)
  {
    v29 = this[29];
    if (v29)
    {
      v30 = *(v29 - 1);
      if (v30)
      {
        v31 = (v29 + 2);
        do
        {
          if (*(v31 - 2) != -2)
          {
            v32 = *v31;
            if (*v31)
            {
              *v31 = 0;
              *(v31 + 2) = 0;
              WTF::fastFree(v32, v6);
            }
          }

          v31 += 24;
          --v30;
        }

        while (v30);
      }

      WTF::fastFree((v29 - 4), v6);
    }
  }

  v33 = *(this + 57);
  if (v33)
  {
    v34 = this[27];
    v35 = 40 * v33;
    do
    {
      v36 = *v34;
      v34 += 5;

      v35 -= 40;
    }

    while (v35);
  }

  v37 = this[27];
  if (v37)
  {
    this[27] = 0;
    *(this + 56) = 0;
    WTF::fastFree(v37, v6);
  }

  v38 = *(this + 53);
  if (v38)
  {
    v39 = this[25];
    v40 = 40 * v38;
    do
    {
      v41 = *v39;
      v39 += 5;

      v40 -= 40;
    }

    while (v40);
  }

  v42 = this[25];
  if (v42)
  {
    this[25] = 0;
    *(this + 52) = 0;
    WTF::fastFree(v42, v6);
  }

  v44 = *(this + 47);
  v45 = this[22];
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = this[22];
  }

  if (v45)
  {
    this[22] = 0;
    *(this + 46) = 0;
    WTF::fastFree(v45, v43);
  }

  v49 = this[8];
  if (v49)
  {
    WTF::fastFree((v49 - 16), v48);
  }

  v50 = this[6];
  this[6] = 0;
  if (!v50)
  {
    goto LABEL_70;
  }

  if (*(v50 + 2) != 1)
  {
    --*(v50 + 2);
LABEL_70:
    v51 = this[2];
    this[2] = 0;
    if (v51)
    {
      goto LABEL_73;
    }

    goto LABEL_78;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v50, v48);
  bmalloc::api::tzoneFree(v52, v53);
  v51 = this[2];
  this[2] = 0;
  if (v51)
  {
    do
    {
LABEL_73:
      v54 = *v51;
      if ((*v51 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v51, v48);
        goto LABEL_78;
      }

      v55 = *v51;
      atomic_compare_exchange_strong_explicit(v51, &v55, v54 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v55 != v54);
    if (v54 == 3)
    {
      WebGPU::Buffer::~Buffer(v51);
      bmalloc::api::tzoneFree(v56, v57);
    }
  }

LABEL_78:
  v58 = this[1];
  this[1] = 0;
  if (v58)
  {
    do
    {
      v59 = *v58;
      if ((*v58 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v58, v48);
        goto LABEL_84;
      }

      v60 = *v58;
      atomic_compare_exchange_strong_explicit(v58, &v60, v59 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v60 != v59);
    if (v59 == 3)
    {
      WebGPU::Device::~Device(v58, v48);
      bmalloc::api::tzoneFree(v61, v62);
    }
  }

LABEL_84:
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

id WebGPU::RenderBundleEncoder::currentRenderCommand(WebGPU::RenderBundleEncoder *this)
{
  v1 = *(this + 39);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    ++*(v2 + 8);
    if (*(*(v2 + 184) + 172))
    {
      v3 = 0;
      v4 = *(v2 + 8) - 1;
      if (*(v2 + 8) != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 8) - 1;
      if (*(v2 + 8) != 1)
      {
LABEL_5:
        *(v2 + 8) = v4;

        return v3;
      }
    }

    v7 = v3;
    WebGPU::RenderPassEncoder::~RenderPassEncoder(v2);
    bmalloc::api::tzoneFree(v8, v9);
    v3 = v7;
  }

  else
  {
    v6 = *(this + 40);
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v10 = *(this + 12);
      if (v10 >= [*(this + 9) size])
      {
        v12 = 0;
      }

      else
      {
        v12 = [*(this + 9) indirectRenderCommandAtIndex:*(this + 12)];
      }

      v13 = *(this + 40);
      *(this + 40) = v12;

      v3 = *(this + 40);
    }
  }

  return v3;
}

BOOL WebGPU::RenderBundleEncoder::addResource(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(a1 + 312);
  if (v11 && (v12 = *(v11 + 8)) != 0)
  {
    ++*(v12 + 8);
    v13 = [v9 renderStages];
    if (v8 && v13)
    {
      if (*(*(v12 + 184) + 172))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v12 + 16);
      }

      v16 = v14;
      [v16 useResource:v8 usage:objc_msgSend(v10 stages:{"usage"), objc_msgSend(v10, "renderStages")}];
    }

    if (v10)
    {
      [v10 resource];
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    WebGPU::RenderPassEncoder::addResourceToActiveResources(v12, &v23, [v10 entryUsage]);
    if (v24 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v25, &v23);
    }

    if (v10)
    {
      [v10 resource];
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    WebGPU::RenderPassEncoder::setCommandEncoder(v12, &v23);
    if (v24 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v25, &v23);
    }

    if (*(*(v12 + 184) + 172))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v12 + 16);
    }

    v18 = v17;
    v19 = v18 != 0;

    if (*(v12 + 8) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v12);
      bmalloc::api::tzoneFree(v20, v21);
    }

    else
    {
      --*(v12 + 8);
    }
  }

  else
  {
    v15 = [v7 objectForKey:v8];
    if (v15)
    {
      [v15 setUsage:{objc_msgSend(v15, "usage") | objc_msgSend(v10, "usage")}];
      [v15 setRenderStages:{objc_msgSend(v15, "renderStages") | objc_msgSend(v10, "renderStages")}];
      [v15 setEntryUsage:{objc_msgSend(v15, "entryUsage") | objc_msgSend(v10, "entryUsage")}];
      [v15 setBinding:{objc_msgSend(v10, "binding")}];
    }

    else
    {
      [v7 setObject:v10 forKey:v8];
    }

    v19 = 1;
  }

  return v19;
}

void sub_2256C10A8(_Unwind_Exception *a1)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v4);

  _Unwind_Resume(a1);
}

BOOL WebGPU::RenderBundleEncoder::addResource(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = WebGPU::RenderBundleEncoder::addResource(a1, a2, a3, a4, &v6);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v8, &v6);
  return v4;
}

void sub_2256C1168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(v2 - 17, va);
  _Unwind_Resume(a1);
}

BOOL WebGPU::RenderBundleEncoder::addResource(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  v12 = *(a1 + 312);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
LABEL_7:
    v15 = 1;
    goto LABEL_9;
  }

  ++*(v13 + 8);
  if (v10)
  {
    if (*(*(v13 + 184) + 172))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v13 + 16);
    }

    v20 = v14;
    [v20 useResource:v11 usage:1 stages:a4];
    v18 = v20 != 0;

    v19 = *(v13 + 8) - 1;
    if (*(v13 + 8) == 1)
    {
      goto LABEL_16;
    }

LABEL_13:
    *(v13 + 8) = v19;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_9:
  v16 = [ResourceUsageAndRenderStage alloc];
  mpark::variant<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>::variant(v24, a5);
  v17 = [(ResourceUsageAndRenderStage *)v16 initWithUsage:1 renderStages:a4 entryUsage:1 binding:0x7FFFFFFFLL resource:v24];
  v18 = WebGPU::RenderBundleEncoder::addResource(a1, v9, v11, v17);

  if (v25 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v26, v24);
  }

  v25 = -1;
  if ((v15 & 1) == 0)
  {
    v19 = *(v13 + 8) - 1;
    if (*(v13 + 8) == 1)
    {
LABEL_16:
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v13);
      bmalloc::api::tzoneFree(v21, v22);
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:

  return v18;
}

void sub_2256C12FC(_Unwind_Exception *a1)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v3);

  _Unwind_Resume(a1);
}

_BYTE *mpark::variant<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>::variant(_BYTE *result, uint64_t *a2)
{
  *result = 0;
  result[8] = -1;
  v2 = *(a2 + 8);
  if (v2 != 255)
  {
    v4 = *a2;
    if (v2 == 2 || v2 == 1)
    {
      if (v4)
      {
        ++*(v4 + 8);
      }
    }

    else if (v4)
    {
      while (1)
      {
        v5 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v6 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_14;
        }
      }

      v7 = result;
      v8 = 0;
      v9 = *v4;
      v10 = 1;
      atomic_compare_exchange_strong_explicit(*v4, &v8, 1u, memory_order_acquire, memory_order_acquire);
      if (v8)
      {
        v11 = v9;
        MEMORY[0x22AA683C0](v9);
        v9 = v11;
      }

      ++*(v9 + 8);
      atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
      result = v7;
      if (v10 != 1)
      {
        WTF::Lock::unlockSlow(v9);
        result = v7;
      }
    }

LABEL_14:
    *result = v4;
    result[8] = *(a2 + 8);
  }

  return result;
}

void sub_2256C145C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13[8] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&a13, v13);
  }

  v13[8] = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WebGPU::RenderBundleEncoder::executePreDrawCommands(WebGPU::RenderBundleEncoder *this, void *a2, int a3, unsigned int a4, unsigned int a5)
{
  if (*(this + 10))
  {
    v5 = (a5 + a4) >> 32 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = *(this + 6);
  if (!v8)
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_PipelineWasNot.isa);
    return 0;
  }

  v10 = *(this + 37);
  v11 = *(this + 38);
  ++*(v8 + 2);
  v12 = *(v8 + 17);
  ++*(v12 + 8);
  v156 = v12;
  v13 = *(v12 + 64);
  if (!v13)
  {
    v15 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = *(v13 - 1);
  v15 = &v13[4 * v14];
  if (!*(v13 - 3))
  {
LABEL_15:
    v17 = v15;
    v15 = &v13[4 * v14];
    goto LABEL_16;
  }

  if (!v14)
  {
    v18 = 0;
    v17 = *(v12 + 64);
    goto LABEL_19;
  }

  v16 = 16 * v14;
  v17 = *(v12 + 64);
  while (*v17 >= 0xFFFFFFFE)
  {
    v17 += 4;
    v16 -= 16;
    if (!v16)
    {
      v17 = v15;
      break;
    }
  }

LABEL_16:
  if (!v13)
  {
    goto LABEL_20;
  }

  v18 = *(v13 - 1);
LABEL_19:
  v13 += 4 * v18;
LABEL_20:
  if (v17 == v13)
  {
    v21 = v10;
  }

  else
  {
    v19 = 0;
    v20 = v17 + 4;
    if (v17 + 4 != v15)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v19 += *(v17 + 1);
      v17 = v20;
      if (v20 == v13)
      {
        break;
      }

      v20 += 4;
      if (v17 + 4 != v15)
      {
        do
        {
LABEL_24:
          if (*v20 < 0xFFFFFFFE)
          {
            break;
          }

          v20 += 4;
        }

        while (v20 != v15);
      }
    }

    v21 = v10 + 4 * v19;
    if (__CFADD__(v10, 4 * v19))
    {
      WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_InvalidVertexd.isa);
LABEL_79:
      v6 = 0;
      goto LABEL_80;
    }
  }

  *(this + 37) = v21;
  v22 = *(v12 + 72);
  if (!v22)
  {
    v24 = 0;
    v23 = 0;
    goto LABEL_39;
  }

  v23 = *(v22 - 1);
  v24 = &v22[4 * v23];
  if (!*(v22 - 3))
  {
LABEL_39:
    v26 = v24;
    v24 = &v22[4 * v23];
    goto LABEL_40;
  }

  if (!v23)
  {
    v27 = 0;
    v26 = *(v12 + 72);
    goto LABEL_43;
  }

  v25 = 16 * v23;
  v26 = *(v12 + 72);
  while (*v26 >= 0xFFFFFFFE)
  {
    v26 += 4;
    v25 -= 16;
    if (!v25)
    {
      v26 = v24;
      break;
    }
  }

LABEL_40:
  if (!v22)
  {
    goto LABEL_44;
  }

  v27 = *(v22 - 1);
LABEL_43:
  v22 += 4 * v27;
LABEL_44:
  if (v26 == v22)
  {
    v30 = v11;
    goto LABEL_55;
  }

  v28 = 0;
  v29 = v26 + 4;
  if (v26 + 4 != v24)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v28 += *(v26 + 1);
    v26 = v29;
    if (v29 == v22)
    {
      break;
    }

    v29 += 4;
    if (v26 + 4 != v24)
    {
      do
      {
LABEL_48:
        if (*v29 < 0xFFFFFFFE)
        {
          break;
        }

        v29 += 4;
      }

      while (v29 != v24);
    }
  }

  v30 = v11 + 4 * v28;
  if (__CFADD__(v11, 4 * v28))
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_InvalidFragmen.isa);
    goto LABEL_79;
  }

LABEL_55:
  *(this + 38) = v30;
  v153 = v10;
  if (a2)
  {
    WebGPU::RenderPipeline::recomputeLastStrideAsStride(v8, &v157);
    v32 = v157;
    v157 = 0;
    if (*(v8 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v8, v31);
      bmalloc::api::tzoneFree(v33, v34);
      v36 = v157;
      v157 = 0;
      v8 = v32;
      if (v36)
      {
        if (*(v36 + 2) == 1)
        {
          WebGPU::RenderPipeline::~RenderPipeline(v36, v35);
          bmalloc::api::tzoneFree(v37, v38);
        }

        else
        {
          --*(v36 + 2);
        }
      }
    }

    else
    {
      --*(v8 + 2);
      v8 = v32;
    }

    objc_storeStrong(this + 14, *(v8 + 2));
  }

  if (!*(this + 14))
  {
    goto LABEL_79;
  }

  v39 = WebGPU::RenderBundleEncoder::currentRenderCommand(this);
  if (!v39)
  {
    v6 = 1;

    if (!v12)
    {
      goto LABEL_82;
    }

LABEL_80:
    if (*(v12 + 8) != 1)
    {
      --*(v12 + 8);
      goto LABEL_82;
    }

    WebGPU::PipelineLayout::~PipelineLayout(v12, a2);
    bmalloc::api::tzoneFree(v54, v55);
    if (v8)
    {
      goto LABEL_85;
    }

    return v6;
  }

  v154 = v39;
  v155 = v8;
  v41 = *(this + 39);
  v150 = v11;
  if (!v41)
  {
    v42 = 0;
    goto LABEL_92;
  }

  v42 = *(v41 + 8);
  if (!v42)
  {
LABEL_92:
    v152 = 1;
    goto LABEL_102;
  }

  ++*(v42 + 8);
  if (a3)
  {
    v43 = WebGPU::RenderPassEncoder::renderCommandEncoder(v42);
    v44 = *(this + 14);
    v151 = v43;
    if (v44)
    {
      [v43 setRenderPipelineState:v44];
    }

    v45 = *(this + 15);
    if (v45)
    {
      [v43 setDepthStencilState:v45];
    }

    [v43 setCullMode:*(this + 16)];
    [v43 setFrontFacingWinding:*(this + 17)];
    [v43 setDepthClipMode:*(this + 18)];
    LODWORD(v46) = *(this + 38);
    LODWORD(v47) = *(this + 39);
    LODWORD(v48) = *(this + 40);
    [v43 setDepthBias:v46 slopeScale:v47 clamp:v48];
    v49 = *(this + 31);
    if (v49)
    {
      v50 = *(v49 - 4);
      v51 = v49 + 16 * v50;
      if (*(v49 - 12))
      {
        if (!v50)
        {
          v53 = *(this + 31);
          goto LABEL_98;
        }

        v52 = 16 * v50;
        v53 = *(this + 31);
        while (*v53 >= 0xFFFFFFFE)
        {
          v53 += 16;
          v52 -= 16;
          if (!v52)
          {
            v53 = v51;
            break;
          }
        }

LABEL_95:
        if (!v49)
        {
          v59 = 0;
LABEL_99:
          while (v53 != v59)
          {
            v65 = *(v53 + 8);
            if (v65)
            {
              v66 = *(v65 + 60);
              if (v66)
              {
                v67 = *(v65 + 48);
                v68 = v67 + 48 * v66;
                while (1)
                {
                  v69 = *(v67 + 28);
                  if (v69 && *(v67 + 40))
                  {
                    v70 = 0;
                    v71 = v69 - 1;
LABEL_118:
                    if (v70 >= *(v67 + 12))
                    {
                      goto LABEL_261;
                    }

                    if (*(*v67 + 8 * v70))
                    {
                      if (*(*(v42 + 184) + 172))
                      {
                        v72 = 0;
                      }

                      else
                      {
                        v72 = *(v42 + 16);
                      }

                      v73 = v72;
                      if (v70 >= *(v67 + 12))
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2256C2130);
                      }

                      v74 = v73;
                      [v73 useResource:*(*v67 + 8 * v70) usage:*(v67 + 32) stages:*(v67 + 40)];
                    }

                    while (v71 != v70)
                    {
                      ++v70;
                      if (*(v67 + 40))
                      {
                        goto LABEL_118;
                      }
                    }
                  }

                  v67 += 48;
                  if (v67 == v68)
                  {
                    goto LABEL_127;
                  }
                }
              }
            }

            do
            {
LABEL_127:
              v53 += 16;
            }

            while (v53 != v51 && *v53 >= 0xFFFFFFFE);
          }

          goto LABEL_101;
        }

LABEL_98:
        v59 = v49 + 16 * *(v49 - 4);
        goto LABEL_99;
      }
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }

    v53 = v51;
    v51 = v49 + 16 * v50;
    goto LABEL_95;
  }

LABEL_101:
  v152 = 0;
LABEL_102:
  v60 = *(this + 31);
  if (!v60)
  {
    v62 = 0;
    v61 = 0;
    goto LABEL_131;
  }

  v61 = *(v60 - 4);
  v62 = (v60 + 16 * v61);
  if (!*(v60 - 12))
  {
LABEL_131:
    v64 = v62;
    v62 = (v60 + 16 * v61);
    goto LABEL_132;
  }

  if (!v61)
  {
    v64 = *(this + 31);
    goto LABEL_135;
  }

  v63 = 16 * v61;
  v64 = *(this + 31);
  while (*v64 >= 0xFFFFFFFE)
  {
    v64 += 4;
    v63 -= 16;
    if (!v63)
    {
      v64 = v62;
      break;
    }
  }

LABEL_132:
  if (!v60)
  {
    v75 = 0;
    goto LABEL_136;
  }

LABEL_135:
  v75 = (v60 + 16 * *(v60 - 4));
LABEL_136:
  if (v75 == v64)
  {
LABEL_181:
    v104 = *(v155 + 17);
    ++*(v104 + 2);
    v157 = v104;
    v106 = WebGPU::PipelineLayout::errorValidatingBindGroupCompatibility(v104, (this + 248), v40);
    if (*(v104 + 2) == 1)
    {
      WebGPU::PipelineLayout::~PipelineLayout(v104, v105);
      bmalloc::api::tzoneFree(v107, v108);
    }

    else
    {
      --*(v104 + 2);
    }

    if (v106)
    {
      WebGPU::RenderBundleEncoder::makeInvalid(this, v106);

      v6 = 0;
      if (v152)
      {
        goto LABEL_245;
      }
    }

    else
    {
      v110 = WebGPU::RenderBundleEncoder::errorValidatingDraw(this, v105);
      if (v110)
      {
        WebGPU::RenderBundleEncoder::makeInvalid(this, v110);

        v6 = 0;
        if (v152)
        {
          goto LABEL_245;
        }
      }

      else
      {
        if (*(this + 14))
        {
          [v154 setRenderPipelineState:?];
        }

        v111 = *(this + 53);
        if (v111)
        {
          v112 = 0;
          v113 = 32;
          do
          {
            if (v112 >= *(this + 53))
            {
              goto LABEL_258;
            }

            v114 = *(this + 25) + v113;
            v115 = *(v114 - 32);
            if (v115)
            {
              v116 = *(v114 - 24);
              v117 = [v115 length];
              v118 = *(this + 53);
              if (v116 >= v117)
              {
                if (v112 >= v118)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2256C2188);
                }

                if (*(*(this + 25) + v113))
                {
                  WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_AttemptingToSe.isa);
                  goto LABEL_241;
                }

                v119 = *(*(this + 1) + 288);
                [v154 setVertexBuffer:v119 offset:0 atIndex:v112];
              }

              else
              {
                if (v112 >= v118)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2256C2190);
                }

                [v154 setVertexBuffer:*(*(this + 25) + v113 - 32) offset:*(*(this + 25) + v113 - 24) atIndex:v112];
              }
            }

            ++v112;
            v113 += 40;
          }

          while (v111 != v112);
        }

        v120 = *(this + 57);
        if (v120)
        {
          v121 = 0;
          v122 = 0;
          v123 = 40 * v120;
          while (v122 < *(this + 57))
          {
            v124 = *(this + 27);
            v125 = *(v124 + v121);
            if (v125)
            {
              [v154 setFragmentBuffer:v125 offset:*(v124 + v121 + 8) atIndex:v122];
            }

            ++v122;
            v121 += 40;
            if (v123 == v121)
            {
              goto LABEL_209;
            }
          }

          __break(0xC471u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(0xC471u);
          JUMPOUT(0x2256C2180);
        }

LABEL_209:
        if ((*(this + 240) & 1) == 0 || ((v126 = *(this + 29), v127 = WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::begin(v126), v128 = v127, v129 = v109, !v126) ? (v130 = 0) : (v130 = &v126[6 * *(v126 - 1)]), v130 == v127))
        {
LABEL_229:
          v144 = *(this + 35);
          if (v144 && v153 < [v144 length])
          {
            [v154 setVertexBuffer:*(this + 35) offset:v153 atIndex:*(*(this + 1) + 100)];
          }

          v145 = *(this + 36);
          if (v145 && v150 < [v145 length])
          {
            v146 = *(this + 57);
            if (!v146)
            {
LABEL_261:
              __break(0xC471u);
              JUMPOUT(0x2256C2128);
            }

            [v154 setFragmentBuffer:*(this + 36) offset:v150 atIndex:v146 - 1];
          }

          if (*(this + 240) == 1)
          {
            WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::clear(this + 29, v109);
          }

          v6 = 1;
          if (v152)
          {
            goto LABEL_245;
          }
        }

        else
        {
          v131 = v153 >> 2;
          v132 = (v150 >> 2) + 3;
          while (1)
          {
            v133 = *(v155 + 17);
            ++*(v133 + 2);
            v157 = v133;
            v134 = *v128;
            v135 = *(this + 35);
            if (v135)
            {
              SpanFrom = WebGPU::makeSpanFromBuffer<unsigned int>(v135);
              if (v137 < v131)
              {
                goto LABEL_257;
              }

              if ((WebGPU::PipelineLayout::updateVertexOffsets(v157, v134, v128 + 1, SpanFrom + (v153 & 0xFFFFFFFFFFFFFFFCLL), v137 - v131) & 1) == 0)
              {
                WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_IncorrectDataF.isa);
                goto LABEL_249;
              }
            }

            v138 = *(this + 36);
            if (v138)
            {
              v139 = WebGPU::makeSpanFromBuffer<unsigned int>(v138);
              if (v140 < v132)
              {
                goto LABEL_257;
              }

              if ((WebGPU::PipelineLayout::updateFragmentOffsets(v157, v134, v128 + 1, v139 + 4 * v132, v140 - v132) & 1) == 0)
              {
                break;
              }
            }

            v141 = v157;
            v157 = 0;
            if (v141)
            {
              if (*(v141 + 2) == 1)
              {
                WebGPU::PipelineLayout::~PipelineLayout(v141, v109);
                bmalloc::api::tzoneFree(v142, v143);
              }

              else
              {
                --*(v141 + 2);
              }
            }

            do
            {
              v128 += 6;
            }

            while (v128 != v129 && *v128 >= 0xFFFFFFFE);
            if (v128 == v130)
            {
              goto LABEL_229;
            }
          }

          WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_IncorrectDataF_0.isa);
LABEL_249:
          WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&v157, v149);
          v6 = 0;
          if (v152)
          {
            goto LABEL_245;
          }
        }
      }
    }

LABEL_242:
    if (*(v42 + 8) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v42);
      bmalloc::api::tzoneFree(v147, v148);
    }

    else
    {
      --*(v42 + 8);
    }

    goto LABEL_245;
  }

  while (1)
  {
    v76 = *(v64 + 1);
    if (!v76)
    {
      goto LABEL_178;
    }

    ++*(v76 + 8);
    v77 = *v64;
    if (*(v156 + 32) == 1 && *(v156 + 28) > v77)
    {
      v78 = *(*(v156 + 16) + 8 * v77);
      if (*(this + 240) != 1)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v78 = 0;
      if (*(this + 240) != 1)
      {
LABEL_143:
        v79 = 0;
        goto LABEL_159;
      }
    }

    v80 = *(this + 29);
    if (v80)
    {
      if (v77 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C2150);
      }

      if (v77 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C2170);
      }

      v81 = *(v80 - 2);
      v82 = 9 * ((v77 + ~(v77 << 15)) ^ ((v77 + ~(v77 << 15)) >> 10));
      v83 = (v82 ^ (v82 >> 6)) + ~((v82 ^ (v82 >> 6)) << 11);
      v84 = v81 & (v83 ^ HIWORD(v83));
      v85 = &v80[6 * v84];
      v86 = *v85;
      if (*v85 != v77)
      {
        v87 = 1;
        while (v86 != -1)
        {
          v84 = (v84 + v87) & v81;
          v85 = &v80[6 * v84];
          v86 = *v85;
          ++v87;
          if (*v85 == v77)
          {
            goto LABEL_155;
          }
        }

        v85 = &v80[6 * *(v80 - 1)];
      }

LABEL_155:
      v80 += 6 * *(v80 - 1);
    }

    else
    {
      v85 = 0;
    }

    v79 = v85 == v80 ? 0 : (v85 + 2);
LABEL_159:
    v88 = WebGPU::RenderPipeline::minimumBufferSizes(v155, v77);
    v90 = WebGPU::errorValidatingBindGroup(v76, v88, v79);
    if (v90)
    {
      WebGPU::RenderBundleEncoder::makeInvalid(this, v90);

      goto LABEL_174;
    }

    if (v78)
    {
      if (!*(v76 + 64))
      {
        goto LABEL_173;
      }

      v91 = v75;
      ++*(v78 + 8);
      v157 = v78;
      v92 = [*(v76 + 16) length];
      v93 = [*(v78 + 24) encodedLength];
      v94 = v93;
      if (*(v78 + 8) == 1)
      {
        WebGPU::BindGroupLayout::~BindGroupLayout(v78, v89);
        bmalloc::api::tzoneFree(v95, v96);
        v5 = v92 == v94;
        v75 = v91;
        if (!v5)
        {
          goto LABEL_173;
        }
      }

      else
      {
        --*(v78 + 8);
        v75 = v91;
        if (v92 != v93)
        {
          goto LABEL_173;
        }
      }

      if (!*(v76 + 64) || ((++*(v78 + 8), v157 = v78, v97 = [*(v76 + 24) length], v98 = objc_msgSend(*(v78 + 32), "encodedLength"), *(v78 + 8) == 1) ? (v99 = v98, WebGPU::BindGroupLayout::~BindGroupLayout(v78, v89), bmalloc::api::tzoneFree(v100, v101), v98 = v99, v75 = v91) : --*(v78 + 8), v97 != v98))
      {
LABEL_173:
        *(this + 408) = 1;
      }
    }

LABEL_174:
    if (*(v76 + 8) == 1)
    {
      WebGPU::BindGroup::~BindGroup(v76, v89, v40);
      bmalloc::api::tzoneFree(v102, v103);
      if (v90)
      {
        break;
      }

      goto LABEL_178;
    }

    --*(v76 + 8);
    if (v90)
    {
      break;
    }

    do
    {
LABEL_178:
      v64 += 4;
    }

    while (v64 != v62 && *v64 >= 0xFFFFFFFE);
    if (v64 == v75)
    {
      goto LABEL_181;
    }
  }

LABEL_241:
  v6 = 0;
  if ((v152 & 1) == 0)
  {
    goto LABEL_242;
  }

LABEL_245:
  v8 = v155;

  v12 = v156;
  if (v156)
  {
    goto LABEL_80;
  }

LABEL_82:
  if (!v8)
  {
    return v6;
  }

LABEL_85:
  if (*(v8 + 2) == 1)
  {
    WebGPU::RenderPipeline::~RenderPipeline(v8, a2);
    bmalloc::api::tzoneFree(v56, v57);
  }

  else
  {
    --*(v8 + 2);
  }

  return v6;
}

void sub_2256C21B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, WebGPU::RenderPipeline *a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, WebGPU::PipelineLayout *);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va1, a2);
  if ((a5 & 1) == 0)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v8);
  }

  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va, v10);
  if (a8)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(a8, v11);
  }

  _Unwind_Resume(a1);
}

__CFString *WebGPU::RenderBundleEncoder::errorValidatingDraw(WebGPU::RenderBundleEncoder *this, unint64_t a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = v3 + 1;
    v4 = *(v2 + 128);
    if (v4)
    {
      v5 = *(v4 - 1);
      v6 = &v4[8 * v5];
      if (*(v4 - 3))
      {
        if (!v5)
        {
          v9 = 0;
          v8 = *(v2 + 128);
          goto LABEL_14;
        }

        v7 = 32 * v5;
        v8 = *(v2 + 128);
        while (*v8 >= 0xFFFFFFFE)
        {
          v8 += 8;
          v7 -= 32;
          if (!v7)
          {
            v8 = v6;
            break;
          }
        }

LABEL_11:
        if (!v4)
        {
          goto LABEL_15;
        }

        v9 = *(v4 - 1);
LABEL_14:
        v4 += 8 * v9;
LABEL_15:
        if (v8 != v4)
        {
          v10 = *(this + 8);
          if (v10)
          {
            while (1)
            {
              v11 = *v8;
              if (v11 == -2 || v11 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x2256C2514);
              }

              v12 = *(v10 - 8);
              v13 = 9 * ((v11 + ~(v11 << 15)) ^ ((v11 + ~(v11 << 15)) >> 10));
              v14 = (v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11);
              a2 = v12 & (v14 ^ HIWORD(v14));
              v15 = *(v10 + 16 * a2);
              if (v15 != v11)
              {
                break;
              }

              do
              {
LABEL_25:
                v8 += 8;
              }

              while (v8 != v6 && *v8 >= 0xFFFFFFFE);
              if (v8 == v4)
              {
                goto LABEL_28;
              }
            }

            v16 = 1;
            while (v15 != -1)
            {
              a2 = (a2 + v16) & v12;
              v15 = *(v10 + 16 * a2);
              ++v16;
              if (v15 == v11)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            v11 = *v8;
          }

          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer index[%u] is missing", v11];
          v3 = *(v2 + 8) - 1;
          if (*(v2 + 8) != 1)
          {
            goto LABEL_36;
          }

LABEL_40:
          v25 = v23;
          WebGPU::RenderPipeline::~RenderPipeline(v2, a2);
          bmalloc::api::tzoneFree(v26, v27);
          v23 = v25;

          return v23;
        }

LABEL_28:
        v17 = *(this + 14);
        v18 = __CFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18 || (v18 = __CFADD__(v19, 1), v20 = v19 + 1, v18) || (v21 = *(this + 15), v18 = __CFADD__(v21, v20), v22 = v21 + v20, v18) || v22 > *(*(this + 1) + 100))
        {
          v23 = @"Too many bind groups and vertex buffers used";
          if (!v3)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
          if (!v3)
          {
            goto LABEL_40;
          }
        }

LABEL_36:
        *(v2 + 8) = v3;

        return v23;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v8 = v6;
    v6 = &v4[8 * v5];
    goto LABEL_11;
  }

  v23 = @"pipeline is not set";

  return v23;
}

_DWORD *WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::begin(_DWORD *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[6 * v1];
  if (!*(result - 3))
  {
    return &result[6 * v1];
  }

  if (v1)
  {
    v3 = 24 * v1;
    while (*result >= 0xFFFFFFFE)
    {
      result += 6;
      v3 -= 24;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WebGPU::makeSpanFromBuffer<unsigned int>(void *a1)
{
  v1 = a1;
  if ([v1 length] < 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 contents];
  }

  return v2;
}

void WebGPU::RenderBundleEncoder::draw(WebGPU::RenderBundleEncoder *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "RenderBundleEncoder::FinalizeRenderCommand WebGPU::RenderBundleEncoder::draw(uint32_t, uint32_t, uint32_t, uint32_t)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v10))
  {

    goto LABEL_8;
  }

  v11 = *(this + 10);

  if (!v11 || (WebGPU::RenderBundleEncoder::executePreDrawCommands(this, (a2 == 1), 0, a5, a3) & 1) == 0)
  {
LABEL_8:
    v15 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {

      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    return;
  }

  v12 = WebGPU::RenderBundleEncoder::currentRenderCommand(this);
  v14 = v12;
  if (v12)
  {
    if ((*(this + 408) & 1) == 0)
    {
      [v12 drawPrimitives:*(this + 21) vertexStart:a4 vertexCount:a2 instanceCount:a3 baseInstance:a5];
    }

LABEL_70:

    [*(this + 10) setCommandTypes:{objc_msgSend(*(this + 10), "commandTypes") | 1}];
    ++*(this + 12);
    v40 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {
      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    return;
  }

  v16 = *(this + 6);
  if (!v16)
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_MissingPipelin.isa);
    goto LABEL_88;
  }

  ++*(v16 + 8);
  v17 = a4 + a2;
  if (__CFADD__(a4, a2))
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_OverflowInVert.isa);
    goto LABEL_19;
  }

  v19 = *(v16 + 128);
  if (!v19)
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_28;
  }

  v20 = *(v19 - 1);
  v21 = &v19[8 * v20];
  if (!*(v19 - 3))
  {
LABEL_28:
    v23 = v21;
    v21 = &v19[8 * v20];
    goto LABEL_29;
  }

  if (!v20)
  {
    v24 = 0;
    v23 = *(v16 + 128);
    goto LABEL_32;
  }

  v22 = 32 * v20;
  v23 = *(v16 + 128);
  while (*v23 >= 0xFFFFFFFE)
  {
    v23 += 8;
    v22 -= 32;
    if (!v22)
    {
      v23 = v21;
      break;
    }
  }

LABEL_29:
  if (v19)
  {
    v24 = *(v19 - 1);
LABEL_32:
    v19 += 8 * v24;
  }

  if (v23 == v19)
  {
LABEL_60:
    v18 = 1;
    goto LABEL_61;
  }

  if (!__CFADD__(a5, a3))
  {
    while (1)
    {
      v30 = v23[6];
      v31 = a4 + a2;
      if (!v30 || (v31 = a5 + a3, v30 == 1))
      {
        if (v31)
        {
          v27 = *v23;
          if (*(this + 53) <= v27)
          {
LABEL_83:
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"vertex buffer validation failed as vertex buffer %d was not set", v27];
            WebGPU::RenderBundleEncoder::makeInvalid(this, v41);
LABEL_86:

            goto LABEL_19;
          }

          v28 = *(v23 + 1);
          if (!is_mul_ok(v31 - 1, v28))
          {
LABEL_94:
            __break(0xC471u);
            return;
          }

          v32 = (v31 - 1) * v28;
          v29 = *(*(this + 25) + 40 * v27 + 32);
          v13 = *(v23 + 2);
          v33 = __CFADD__(v32, v13);
          v34 = &v13[v32];
          if (v33 || v34 > v29)
          {
LABEL_85:
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer[%d] fails: (strideCount(%llu) - 1) * bufferData.stride(%llu) + bufferData.lastStride(%llu) > bufferSize(%llu)", v27, v31, v28, v13, v29];
            WebGPU::RenderBundleEncoder::makeInvalid(this, v41);
            goto LABEL_86;
          }
        }
      }

      do
      {
        v23 += 8;
      }

      while (v23 != v21 && *v23 >= 0xFFFFFFFE);
      if (v23 == v19)
      {
        goto LABEL_60;
      }
    }
  }

  if (v17)
  {
    v25 = v17 - 1;
    while (1)
    {
      v26 = v23[6];
      if (v26)
      {
        if (v26 == 1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v27 = *v23;
        if (*(this + 53) <= v27)
        {
          goto LABEL_83;
        }

        v28 = *(v23 + 1);
        if (!is_mul_ok(v25, v28))
        {
          goto LABEL_94;
        }

        v29 = *(*(this + 25) + 40 * v27 + 32);
        v13 = *(v23 + 2);
        if (__CFADD__(v25 * v28, v13) || &v13[v25 * v28] > v29)
        {
          v31 = a4 + a2;
          goto LABEL_85;
        }
      }

      do
      {
        v23 += 8;
      }

      while (v23 != v21 && *v23 >= 0xFFFFFFFE);
      if (v23 == v19)
      {
        goto LABEL_60;
      }
    }
  }

  v18 = 1;
  while (v23[6] != 1)
  {
    do
    {
      v23 += 8;
    }

    while (v23 != v21 && *v23 >= 0xFFFFFFFE);
    if (v23 == v19)
    {
      goto LABEL_61;
    }
  }

LABEL_82:
  WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_StridecountInv.isa);
LABEL_19:
  v18 = 0;
LABEL_61:
  if (*(v16 + 8) != 1)
  {
    --*(v16 + 8);
    if ((v18 & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_65:
    if (!a2 || !a3)
    {
      WebGPU::RenderBundleEncoder::finalizeRenderCommand(this);
      return;
    }

    *&v43 = __PAIR64__(a3, a2);
    *(&v43 + 1) = __PAIR64__(a5, a4);
    ++*this;
    v44 = this;
    v37 = WTF::fastMalloc(0x20);
    *v37 = &unk_2838D3290;
    *(v37 + 8) = v43;
    v38 = v44;
    v44 = 0;
    v45 = v37;
    *(v37 + 24) = v38;
    WebGPU::RenderBundleEncoder::recordCommand(this, &v45);
    v39 = v45;
    v45 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    WebGPU::RenderBundleEncoder::draw(unsigned int,unsigned int,unsigned int,unsigned int)::$_0::~$_0(&v43);
    goto LABEL_70;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v16, v13);
  bmalloc::api::tzoneFree(v35, v36);
  if (v18)
  {
    goto LABEL_65;
  }

LABEL_88:
  v42 = *(this + 40);
  *(this + 40) = 0;

  if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
  {
    WebGPU::RenderBundleEncoder::splitICB(this, 1);
  }
}

void sub_2256C2B98(_Unwind_Exception *a1)
{
  if (v2)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v2, v5);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void WebGPU::RenderBundleEncoder::finalizeRenderCommand(WebGPU::RenderBundleEncoder *this)
{
  v2 = *(this + 40);
  *(this + 40) = 0;

  if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
  {

    WebGPU::RenderBundleEncoder::splitICB(this, 1);
  }
}

uint64_t WebGPU::RenderBundleEncoder::recordCommand(uint64_t result, unint64_t a2)
{
  if (*(result + 80))
  {
    if (*(result + 288))
    {
      result = 1283;
      __break(0xC471u);
    }

    else
    {
      v2 = a2;
      v3 = *(result + 188);
      if (v3 == *(result + 184))
      {
        v4 = result;
        v2 = WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(result + 176, v3 + 1, a2);
        result = v4;
        v3 = *(v4 + 188);
        v5 = (*(v4 + 176) + 8 * v3);
      }

      else
      {
        v5 = (*(result + 176) + 8 * v3);
      }

      v6 = *v2;
      *v2 = 0;
      *v5 = v6;
      *(result + 188) = v3 + 1;
    }
  }

  return result;
}

uint64_t WebGPU::RenderBundleEncoder::draw(unsigned int,unsigned int,unsigned int,unsigned int)::$_0::~$_0(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v1);
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

void WebGPU::RenderBundleEncoder::splitICB(WebGPU::RenderBundleEncoder *this, int a2)
{
  v4 = *(this + 1);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = *v4;
  v9 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v8);
    ++*(v8 + 8);
    atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ++*(v8 + 8);
    atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  WTF::Lock::unlockSlow(v8);
LABEL_7:
  v10 = [*(this + 9) size];
  v11 = *(this + 12);
  if (v10 > v11)
  {
    if (v11)
    {
      v12 = WebGPU::RenderBundleEncoder::makeICB(this, v11);
      WebGPU::Queue::trimICB(*(*(this + 1) + 16), v12, *(this + 9), *(this + 12));
      objc_claimAutoreleasedReturnValue();
      v13 = *(this + 9);
      *(this + 9) = v12;
    }

    else
    {
      v12 = *(this + 9);
      *(this + 9) = 0;
    }

    v11 = *(this + 12);
  }

  v14 = *(this + 13) - v11;
  *(this + 12) = 0;
  *(this + 13) = v14;
  if ([*(this + 9) size])
  {
    v55 = a2;
    v56 = *(this + 34);
    v15 = *(this + 14);
    v16 = *(this + 15);
    v17 = *(this + 16);
    v18 = *(this + 17);
    v19 = *(this + 18);
    v20 = *(this + 38);
    v21 = *(this + 39);
    v22 = *(this + 40);
    v23 = *(this + 36);
    v24 = *(this + 6);
    v60 = *(this + 9);
    v59 = v15;
    v58 = v16;
    v57 = v23;
    v25 = WebGPU::Device::icbCommandClampFunction(v4, MTLIndexTypeUInt32);
    v26 = [v25 newArgumentEncoderWithBufferIndex:1];

    v27 = [v26 encodedLength];
    if (v27 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    v29 = [*(v4 + 8) newBufferWithLength:v28 options:0];
    WebGPU::Device::setOwnerWithIdentity(v4, v29);
    v30 = [*(v4 + 8) newBufferWithLength:4 options:0];
    WebGPU::Device::setOwnerWithIdentity(v4, v30);
    [v30 setLabel:@"Out of bounds read flag"];
    [v29 setLabel:@"ICB Argument Buffer"];
    [v26 setArgumentBuffer:v29 offset:0];
    [v26 setBuffer:v30 offset:0 atIndex:0];
    [v26 setIndirectCommandBuffer:v60 atIndex:1];
    v31 = [RenderBundleICBWithResources alloc];
    LODWORD(v32) = v20;
    LODWORD(v33) = v21;
    LODWORD(v34) = v22;
    v36 = [(RenderBundleICBWithResources *)v31 initWithICB:v60 containerBuffer:v29 pipelineState:v59 depthStencilState:v58 cullMode:v17 frontFace:v18 depthClipMode:v32 depthBias:v33 depthBiasSlopeScale:v34 depthBiasClamp:v19 fragmentDynamicOffsetsBuffer:v57 pipeline:v24 minVertexCounts:this + 264 outOfBoundsReadFlag:v30];
    v37 = *(this + 33);
    if (v37)
    {
      *(this + 33) = 0;
      v38 = *(v37 - 4);
      if (v38)
      {
        for (i = 0; i != v38; ++i)
        {
          v40 = (v37 + 88 * i);
          if (*v40 != -2)
          {
            v41 = v40[1];
            v40[1] = 0;
            if (v41)
            {
              do
              {
                v42 = *v41;
                if ((*v41 & 1) == 0)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v41, v35);
                  goto LABEL_20;
                }

                v43 = *v41;
                atomic_compare_exchange_strong_explicit(v41, &v43, v42 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v43 != v42);
              if (v42 == 3)
              {
                WebGPU::Buffer::~Buffer(v41);
                bmalloc::api::tzoneFree(v44, v45);
              }
            }
          }

LABEL_20:
          ;
        }
      }

      WTF::fastFree((v37 - 16), v35);
    }

    [v56 addObject:v36];
    a2 = v55;
  }

  v46 = *(this + 13);
  if (v46)
  {
    v47 = WebGPU::RenderBundleEncoder::makeICB(this, v46);
    v48 = *(this + 9);
    *(this + 9) = v47;
  }

  WebGPU::RenderBundleEncoder::cleanup(this, a2);
  while (1)
  {
    v50 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v51 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v51, v50 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v51 == v50)
    {
      if (v50 == 3)
      {
        WebGPU::Device::~Device(v4, v49);

        bmalloc::api::tzoneFree(v52, v53);
      }

      return;
    }
  }

  v54 = *v4;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v54, v49);
}

void sub_2256C31EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v14);
  _Unwind_Resume(a1);
}

void sub_2256C3204(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256C3218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, ...)
{
  va_start(va, a12);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v17);
  _Unwind_Resume(a1);
}

void sub_2256C32B0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderBundleEncoder::runIndexBufferValidation(WebGPU::RenderBundleEncoder *this, void *a2, unsigned int a3)
{
  v4 = *(this + 6);
  if (!v4 || (v5 = *(v4 + 8), *(v4 + 8) = v5 + 1, !*(this + 2)))
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_MissingPipelin.isa);
LABEL_12:
    result = 0;
    if (!v4)
    {
      return result;
    }

LABEL_34:
    v5 = *(v4 + 8) - 1;
    if (*(v4 + 8) != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_15;
  }

  v6 = a3 + a2;
  if (!v6)
  {
    result = 1;
    if (v5)
    {
LABEL_35:
      *(v4 + 8) = v5;
      return result;
    }

LABEL_15:
    v13 = result;
    WebGPU::RenderPipeline::~RenderPipeline(v4, a2);
    bmalloc::api::tzoneFree(v14, v15);
    return v13;
  }

  v7 = *(v4 + 128);
  if (!v7)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v8 = *(v7 - 1);
  v9 = &v7[8 * v8];
  if (!*(v7 - 3))
  {
LABEL_17:
    v11 = v9;
    v9 = &v7[8 * v8];
    goto LABEL_18;
  }

  if (!v8)
  {
    v16 = 0;
    v11 = *(v4 + 128);
    goto LABEL_21;
  }

  v10 = 32 * v8;
  v11 = *(v4 + 128);
  while (*v11 >= 0xFFFFFFFE)
  {
    v11 += 8;
    v10 -= 32;
    if (!v10)
    {
      v11 = v9;
      break;
    }
  }

LABEL_18:
  if (!v7)
  {
    goto LABEL_22;
  }

  v16 = *(v7 - 1);
LABEL_21:
  v7 += 8 * v16;
LABEL_22:
  if (v11 == v7)
  {
LABEL_33:
    result = 1;
    goto LABEL_34;
  }

  v17 = v6 - 1;
  while (1)
  {
    v18 = *v11;
    if (*(this + 53) <= v18)
    {
      break;
    }

    if (v11[6] == 1)
    {
      v19 = *(v11 + 1);
      if (!is_mul_ok(v17, v19))
      {
        goto LABEL_12;
      }

      v20 = *(v11 + 2);
      if (__CFADD__(v17 * v19, v20))
      {
        goto LABEL_12;
      }

      v21 = *(this + 25) + 40 * v18;
      v22 = *(v21 + 32);
      if (v17 * v19 + v20 > v22)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(RenderBundle) Buffer[%d] fails: (strideCount(%lu) - 1) * stride(%llu) + lastStride(%llu) > bufferSize(%llu), metalBufferLength(%lu)", v18, v6, v19, v20, v22, objc_msgSend(*v21, "length")];
        WebGPU::RenderBundleEncoder::makeInvalid(this, v23);

        result = 0;
        goto LABEL_34;
      }
    }

    do
    {
      v11 += 8;
    }

    while (v11 != v9 && *v11 >= 0xFFFFFFFE);
    if (v11 == v7)
    {
      goto LABEL_33;
    }
  }

  result = 555;
  __break(0xC471u);
  return result;
}

void sub_2256C34E4(_Unwind_Exception *a1)
{
  if (v1)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v1, v4);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK6WebGPU19RenderBundleEncoder33computeMininumVertexInstanceCountERb_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 212) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(v2 + 200) + 40 * a2 + 32);
  }
}

void WebGPU::RenderBundleEncoder::drawIndexed(WebGPU::RenderBundleEncoder *this, WebGPU::RenderPassEncoder *a2, unsigned int a3, unsigned int a4, int a5, void *a6)
{
  v136 = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "RenderBundleEncoder::FinalizeRenderCommand WebGPU::RenderBundleEncoder::drawIndexed(uint32_t, uint32_t, uint32_t, int32_t, uint32_t)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v12))
  {

    goto LABEL_12;
  }

  v13 = *(this + 10);

  if (!v13 || ((v14 = *(this + 4), *(this + 3)) ? (v15 = 4) : (v15 = 2), !*(this + 3) ? (v16 = 1) : (v16 = 2), v17 = v14 + (a4 << v16), __CFADD__(v14, a4 << v16)))
  {
LABEL_12:
    v18 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {

      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    return;
  }

  v116 = v15;
  v19 = *(this + 2);
  if (v19)
  {
    v122 = *(v19 + 8);
    v119 = v17;
    v20 = *(this + 39);
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v122 = 0;
    v119 = v14 + (a4 << v16);
    v20 = *(this + 39);
    if (!v20)
    {
LABEL_29:
      v25 = 0;
      v123 = 0;
      v26 = 0;
      v121 = 0;
      v27 = 0;
      v124 = 0;
      v120 = 1;
      goto LABEL_35;
    }
  }

  v21 = *(v20 + 8);
  if (!v21)
  {
    goto LABEL_29;
  }

  v123 = *(v20 + 8);
  ++*(v21 + 8);
  v124 = 0;
  v22 = *(this + 6);
  if (v22)
  {
    ++*(v22 + 2);
  }

  *v125 = MEMORY[0x277D85DD0];
  *&v125[8] = 3221225472;
  *&v125[16] = ___ZNK6WebGPU19RenderBundleEncoder33computeMininumVertexInstanceCountERb_block_invoke;
  *&v126 = &__block_descriptor_40_e8_Q12__0I8l;
  *(&v126 + 1) = this;
  v24 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v22, &v124, v125);
  if (v22)
  {
    if (*(v22 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v22, v23);
      bmalloc::api::tzoneFree(v28, v29);
    }

    else
    {
      --*(v22 + 2);
    }
  }

  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(a2, v119, v24, a3, a5, a6, *(this + 3), *(this + 2), v125, HIDWORD(v24), v109, v123, *(this + 1), *(this + 91), *(this + 21));
  v26 = *v125;
  v30 = *&v125[8];
  v121 = v30;
  if ((v26 & 0xFFFFFFFD) == 1)
  {
    v27 = WebGPU::RenderPassEncoder::splitRenderPass(v123);
    v31 = *&v125[8];
  }

  else
  {
    v27 = 0;
    v31 = v30;
  }

  v120 = 0;
  v25 = v124;
LABEL_35:
  if (WebGPU::RenderBundleEncoder::executePreDrawCommands(this, (v25 & 1), v27, a6, a3))
  {
    WebGPU::RenderBundleEncoder::currentRenderCommand(this);
    v118 = v32 = a2 << v16;
    if (v118)
    {
      v114 = a2;
      v34 = *(this + 3);
      v35 = *(this + 39);
      v36 = v118;
      if (v35 && *(v35 + 8))
      {
        goto LABEL_39;
      }

      v40 = *(this + 2);
      if (v40)
      {
        v117 = *(v40 + 8);
      }

      else
      {
        v117 = 0;
      }

      v115 = WebGPU::RenderBundleEncoder::currentRenderCommand(this);
      if (!v115 || !v117 || *(*(this + 2) + 44) == 4)
      {

        v50 = *(this + 40);
        *(this + 40) = 0;

        if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
        {
          WebGPU::RenderBundleEncoder::splitICB(this, 1);
        }

        goto LABEL_102;
      }

      v113 = a2 << v16;
      v130 = 0;
      v51 = *(this + 3);
      v52 = [v117 length];
      v112 = v34;
      v53 = 1;
      if (v51)
      {
        v53 = 2;
      }

      v54 = v52 >> v53;
      if (!(v52 >> v53))
      {
        __break(0xC471u);
        JUMPOUT(0x2256C411CLL);
      }

      v55 = *(this + 6);
      if (v55)
      {
        ++*(v55 + 2);
      }

      *v125 = MEMORY[0x277D85DD0];
      *&v125[8] = 3221225472;
      *&v125[16] = ___ZNK6WebGPU19RenderBundleEncoder33computeMininumVertexInstanceCountERb_block_invoke;
      *&v126 = &__block_descriptor_40_e8_Q12__0I8l;
      *(&v126 + 1) = this;
      v111 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v55, &v130, v125);
      if (v55)
      {
        if (*(v55 + 2) == 1)
        {
          WebGPU::RenderPipeline::~RenderPipeline(v55, v56);
          bmalloc::api::tzoneFree(v68, v69);
        }

        else
        {
          --*(v55 + 2);
        }
      }

      v110 = v54;
      v70 = *(this + 2);
      if (v70)
      {
        while (1)
        {
          v71 = *v70;
          if ((*v70 & 1) == 0)
          {
            break;
          }

          v72 = *v70;
          atomic_compare_exchange_strong_explicit(v70, &v72, v71 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v72 == v71)
          {
            goto LABEL_118;
          }
        }

        v73 = 0;
        v74 = *v70;
        v75 = 1;
        atomic_compare_exchange_strong_explicit(*v70, &v73, 1u, memory_order_acquire, memory_order_acquire);
        if (v73)
        {
          MEMORY[0x22AA683C0](v74);
        }

        ++*(v74 + 8);
        atomic_compare_exchange_strong_explicit(v74, &v75, 0, memory_order_release, memory_order_relaxed);
        if (v75 != 1)
        {
          WTF::Lock::unlockSlow(v74);
        }
      }

LABEL_118:
      *v125 = v70;
      *&v125[8] = v112;
      v76 = *(this + 12);
      *&v125[16] = v119;
      *&v126 = v76;
      *(&v126 + 1) = v111;
      *&v127 = [v117 gpuAddress];
      DWORD2(v127) = v110 - 1;
      HIDWORD(v127) = a2;
      LODWORD(v128) = a3;
      DWORD1(v128) = v119 >> v16;
      *(&v128 + 1) = __PAIR64__(a6, a5);
      v129 = *(this + 21);
      v78 = *(this + 12);
      if (v78 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C413CLL);
      }

      v32 = a2 << v16;
      if (v78 != -1)
      {
        v79 = *(this + 33);
        if (!v79)
        {
          WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::IndexBufferAndIndexData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::IndexBufferAndIndexData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(this + 33, 8u);
          v79 = *(this + 33);
          v78 = *(this + 12);
        }

        v80 = *(v79 - 8);
        v81 = (v78 + ~(v78 << 32)) ^ ((v78 + ~(v78 << 32)) >> 22);
        v82 = 9 * ((v81 + ~(v81 << 13)) ^ ((v81 + ~(v81 << 13)) >> 8));
        v83 = (v82 ^ (v82 >> 15)) + ~((v82 ^ (v82 >> 15)) << 27);
        v84 = v80 & ((v83 >> 31) ^ v83);
        v85 = (v79 + 88 * v84);
        v86 = *v85;
        if (*v85 != -1)
        {
          v87 = 0;
          v88 = 1;
          while (v86 != v78)
          {
            if (v86 == -2)
            {
              v87 = v85;
            }

            v84 = (v84 + v88) & v80;
            v85 = (v79 + 88 * v84);
            v86 = *v85;
            ++v88;
            if (*v85 == -1)
            {
              if (v87)
              {
                *v87 = -1;
                *(v87 + 5) = 0u;
                *(v87 + 7) = 0u;
                *(v87 + 9) = 0u;
                *(v87 + 3) = 0u;
                *(v87 + 1) = 0u;
                v87[5] = -1;
                *(v87 + 3) = 0u;
                *(v87 + 4) = 0u;
                *(v87 + 20) = 3;
                --*(*(this + 33) - 16);
                v78 = *(this + 12);
                v85 = v87;
              }

              goto LABEL_130;
            }
          }

          *v125 = 0;
          if (v70)
          {
            do
            {
              v99 = *v70;
              if ((*v70 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v70, v77);
                goto LABEL_152;
              }

              v100 = *v70;
              atomic_compare_exchange_strong_explicit(v70, &v100, v99 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v100 != v99);
            if (v99 == 3)
            {
              WebGPU::Buffer::~Buffer(v70);
              bmalloc::api::tzoneFree(v101, v102);
            }
          }

LABEL_152:

          v35 = *(this + 39);
          if (!v35)
          {
            v37 = 0;
            goto LABEL_154;
          }

LABEL_39:
          v37 = *(v35 + 8);
          if (v37)
          {
            ++*(v37 + 8);
            if ((v26 & 0xFFFFFFFD) == 1)
            {
              if ((*(this + 408) & 1) == 0)
              {
                v38 = WebGPU::RenderPassEncoder::renderCommandEncoder(v37);
                [v38 drawIndexedPrimitives:*(this + 21) indexType:*(this + 3) indexBuffer:v122 indexBufferOffset:0 indirectBuffer:v121 indirectBufferOffset:0];
              }

LABEL_156:
              if (*(v37 + 8) == 1)
              {
                WebGPU::RenderPassEncoder::~RenderPassEncoder(v37);
                bmalloc::api::tzoneFree(v106, v107);
              }

              else
              {
                --*(v37 + 8);
              }

              goto LABEL_159;
            }

            v47 = 0;
            if (v26 == 2)
            {
LABEL_155:
              if (v47)
              {
                goto LABEL_159;
              }

              goto LABEL_156;
            }

LABEL_65:
            v48 = __CFADD__(v119, v32);
            v49 = v119 + v32;
            if (!v48 && v49 <= [v122 length] && (*(this + 408) & 1) == 0)
            {
              [v118 drawIndexedPrimitives:*(this + 21) indexCount:v114 indexType:*(this + 3) indexBuffer:v122 indexBufferOffset:v119 instanceCount:a3 baseVertex:a5 baseInstance:a6];
            }

            goto LABEL_155;
          }

LABEL_154:
          v47 = 1;
          if (v26 == 2)
          {
            goto LABEL_155;
          }

          goto LABEL_65;
        }

LABEL_130:
        *v85 = v78;
        *v125 = 0;
        v132 = v126;
        v133 = v127;
        v134 = v128;
        v135 = v129;
        v131 = *&v125[8];
        v89 = v85[1];
        v85[1] = v70;
        if (v89)
        {
          do
          {
            v90 = *v89;
            if ((*v89 & 1) == 0)
            {
              WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v89, v77);
              goto LABEL_136;
            }

            v91 = *v89;
            atomic_compare_exchange_strong_explicit(v89, &v91, v90 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v91 != v90);
          if (v90 == 3)
          {
            WebGPU::Buffer::~Buffer(v89);
            bmalloc::api::tzoneFree(v92, v93);
          }
        }

LABEL_136:
        v94 = v135;
        v95 = v134;
        *(v85 + 3) = v133;
        *(v85 + 4) = v95;
        *(v85 + 20) = v94;
        v96 = v132;
        *(v85 + 1) = v131;
        *(v85 + 2) = v96;
        v97 = *(this + 33);
        if (v97)
        {
          v98 = *(v97 - 12) + 1;
        }

        else
        {
          v98 = 1;
        }

        v32 = v113;
        *(v97 - 12) = v98;
        v103 = (*(v97 - 16) + v98);
        v104 = *(v97 - 4);
        if (v104 > 0x400)
        {
          if (v104 > 2 * v103)
          {
            goto LABEL_152;
          }
        }

        else
        {
          if (3 * v104 > 4 * v103)
          {
            goto LABEL_152;
          }

          if (!v104)
          {
            v105 = 8;
LABEL_150:
            WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::IndexBufferAndIndexData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::IndexBufferAndIndexData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(this + 33, v105);
            goto LABEL_152;
          }
        }

        v105 = v104 << (6 * v98 >= (2 * v104));
        goto LABEL_150;
      }

LABEL_167:
      __break(0xC471u);
      JUMPOUT(0x2256C40FCLL);
    }

    v41 = *(this + 6);
    if (!v41)
    {
      goto LABEL_167;
    }

    v42 = *(v41 + 8);
    *(v41 + 8) = v42 + 1;
    v43 = *(v41 + 128);
    if (v43 && *(v43 - 12))
    {
      if (!*(this + 2))
      {
        v44 = a2 << v16;
        v46 = @"Index buffer is not set";
        if (v42)
        {
          goto LABEL_63;
        }

        goto LABEL_87;
      }

      v44 = a2 << v16;
      v45 = *(v41 + 240);
      if (v45 == 4 || v45 == 2)
      {
        if (*(this + 3) == (*(v41 + 244) != 1))
        {
          v46 = 0;
        }

        else
        {
          v46 = @"Primitive topology mismiatch with render pipeline";
        }

        if (!v42)
        {
          goto LABEL_87;
        }

LABEL_63:
        *(v41 + 8) = v42;
        goto LABEL_88;
      }
    }

    else
    {
      v44 = a2 << v16;
    }

    v46 = 0;
    if (v42)
    {
      goto LABEL_63;
    }

LABEL_87:
    WebGPU::RenderPipeline::~RenderPipeline(v41, v33);
    bmalloc::api::tzoneFree(v57, v58);
LABEL_88:
    v59 = v46;
    if (v59)
    {
      v60 = v59;
      WebGPU::RenderBundleEncoder::makeInvalid(this, v59);
      WebGPU::RenderBundleEncoder::finalizeRenderCommand(this);

      v36 = 0;
    }

    else
    {
      v61 = *(this + 5);
      if ((a4 << v16) + v44 > v61 || v61 < v116)
      {
        WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_Firstindexoffs.isa);
        v36 = 0;
      }

      else
      {
        v36 = 0;
        if (WebGPU::RenderBundleEncoder::runIndexBufferValidation(this, a6, a3) && a2 && a3 && v122 && *(*(this + 2) + 44) != 4)
        {
          *v125 = a2;
          *&v125[4] = a3;
          *&v125[8] = a4;
          *&v125[12] = a5;
          *&v125[16] = a6;
          ++*this;
          *&v126 = this;
          v62 = WTF::fastMalloc(0x28);
          *v62 = &unk_2838D32B8;
          v63 = *v125;
          *(v62 + 24) = *&v125[16];
          *(v62 + 8) = v63;
          v64 = v126;
          *&v126 = 0;
          *(v62 + 32) = v64;
          *&v131 = v62;
          WebGPU::RenderBundleEncoder::recordCommand(this, &v131);
          v65 = v131;
          *&v131 = 0;
          if (v65)
          {
            (*(*v65 + 8))(v65);
          }

          WebGPU::RenderBundleEncoder::drawIndexed(unsigned int,unsigned int,unsigned int,int,unsigned int)::$_0::~$_0(v125);
LABEL_159:

          [*(this + 10) setCommandTypes:{objc_msgSend(*(this + 10), "commandTypes") | 2}];
          ++*(this + 12);
          v108 = *(this + 40);
          *(this + 40) = 0;

          if (!*(this + 10) || *(this + 12) < 0x4000uLL || (*(this + 400) & 1) != 0 || !*(this + 9))
          {
            goto LABEL_103;
          }

          goto LABEL_47;
        }
      }

      WebGPU::RenderBundleEncoder::finalizeRenderCommand(this);
    }

LABEL_102:

    goto LABEL_103;
  }

  v39 = *(this + 40);
  *(this + 40) = 0;

  if (!*(this + 10) || *(this + 12) < 0x4000uLL || (*(this + 400) & 1) != 0 || !*(this + 9))
  {
    goto LABEL_103;
  }

LABEL_47:
  WebGPU::RenderBundleEncoder::splitICB(this, 1);
LABEL_103:
  if ((v120 & 1) == 0)
  {
    if (*(v123 + 2) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v123);
      bmalloc::api::tzoneFree(v66, v67);
    }

    else
    {
      --*(v123 + 2);
    }
  }
}

void sub_2256C4160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, int a23, char a24, void *a25, void *a26, WebGPU::RenderPassEncoder *a27)
{
  if ((a24 & 1) == 0)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderBundleEncoder::drawIndexed(unsigned int,unsigned int,unsigned int,int,unsigned int)::$_0::~$_0(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v1);
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

void WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::RenderBundleEncoder *this, id *a2, unint64_t a3)
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "RenderBundleEncoder::FinalizeRenderCommand WebGPU::RenderBundleEncoder::drawIndexedIndirect(Buffer &, uint64_t)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v6))
  {

LABEL_11:
    v13 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {

      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    return;
  }

  v7 = *(this + 10);

  if (!v7)
  {
    goto LABEL_11;
  }

  *(this + 400) = 1;
  v45 = 0;
  v8 = *(this + 39);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    ++*(v9 + 8);
    v44 = 0;
    v10 = *(this + 6);
    if (v10)
    {
      ++*(v10 + 2);
    }

    *&v46 = MEMORY[0x277D85DD0];
    *(&v46 + 1) = 3221225472;
    v47 = ___ZNK6WebGPU19RenderBundleEncoder33computeMininumVertexInstanceCountERb_block_invoke;
    v48 = &__block_descriptor_40_e8_Q12__0I8l;
    v49 = this;
    v12 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v10, &v44, &v46);
    if (v10)
    {
      if (*(v10 + 2) == 1)
      {
        WebGPU::RenderPipeline::~RenderPipeline(v10, v11);
        bmalloc::api::tzoneFree(v20, v21);
      }

      else
      {
        --*(v10 + 2);
      }
    }

    LODWORD(v41) = *(this + 91);
    WebGPU::RenderPassEncoder::clampIndirectIndexBufferToValidValues(*(this + 2), a2, *(this + 3), *(this + 4), a3, v12, SHIDWORD(v12), *(this + 21), &v46, *(this + 1), v41, v9, &v45, v42);
    if (v45 == 1)
    {
      v45 = WebGPU::RenderPassEncoder::splitRenderPass(v9);
    }

    v17 = v46;
    v18 = *(&v46 + 1);

    v19 = 0;
    v14 = v45;
    v16 = 1;
    v15 = v44;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = 0;
    v17 = 0;
    v18 = 0;
    v44 = 0;
    v19 = 1;
  }

  if ((WebGPU::RenderBundleEncoder::executePreDrawCommands(this, (v15 & 1), v14 & 1, 0, 0) & 1) == 0)
  {
    v24 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {
      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    goto LABEL_55;
  }

  v22 = *(this + 2);
  if (v22)
  {
    v23 = *(v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  v25 = WebGPU::RenderBundleEncoder::currentRenderCommand(this);

  if (v25)
  {
    if (!v16)
    {
LABEL_48:
      [*(this + 10) setCommandTypes:{objc_msgSend(*(this + 10), "commandTypes") | 2}];
      ++*(this + 12);
      goto LABEL_49;
    }

    v26 = *(v9 + 184);
    ++*(v26 + 4);
    *&v46 = v26;
    WebGPU::Buffer::setCommandEncoder(a2, v26);
    if (*(v26 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v26);
      bmalloc::api::tzoneFree(v30, v31);
      if (*(*(v9 + 184) + 172))
      {
        goto LABEL_36;
      }
    }

    else
    {
      --*(v26 + 4);
      if (*(*(v9 + 184) + 172))
      {
LABEL_36:
        v27 = 0;
        goto LABEL_46;
      }
    }

    v27 = *(v9 + 16);
LABEL_46:
    v32 = v27;

    if (v32)
    {
      if (*(a2 + 44) != 4 && [v23 length] && v17 && (*(this + 408) & 1) == 0)
      {
        v36 = WebGPU::RenderPassEncoder::renderCommandEncoder(v9);
        [v36 drawIndexedPrimitives:*(this + 21) indexType:*(this + 3) indexBuffer:v23 indexBufferOffset:*(this + 4) indirectBuffer:v17 indirectBufferOffset:v18];
      }

      goto LABEL_48;
    }

LABEL_49:
    v33 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {
      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    goto LABEL_54;
  }

  if (![v23 length])
  {
    goto LABEL_49;
  }

  if (*(a2 + 44) != 4 && !a2[1] || (v28 = a2[35], !v28[1]) || v28 != *(this + 1))
  {
    v29 = @"drawIndexedIndirect: buffer was invalid";
LABEL_43:
    WebGPU::RenderBundleEncoder::makeInvalid(this, &v29->isa);
    goto LABEL_49;
  }

  v29 = @"drawIndexedIndirect: validation failed";
  if ((a3 & 3) != 0 || (a2[5] & 0x100) == 0)
  {
    goto LABEL_43;
  }

  if (a3 < 0xFFFFFFFFFFFFFFECLL && a2[4] >= a3 + 20)
  {
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(&v46, a2);
    ++*this;
    *(&v46 + 1) = a3;
    v47 = this;
    v37 = WTF::fastMalloc(0x20);
    *v37 = &unk_2838D32E0;
    *(v37 + 8) = v46;
    v38 = v47;
    *&v46 = 0;
    v47 = 0;
    *(v37 + 24) = v38;
    v43 = v37;
    WebGPU::RenderBundleEncoder::recordCommand(this, &v43);
    v40 = v43;
    v43 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0::~$_0(&v46, v39);
    goto LABEL_48;
  }

  WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_Drawindexedind_0.isa);
  WebGPU::RenderBundleEncoder::finalizeRenderCommand(this);
LABEL_54:

LABEL_55:
  if ((v19 & 1) == 0)
  {
    if (*(v9 + 8) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v9);
      bmalloc::api::tzoneFree(v34, v35);
    }

    else
    {
      --*(v9 + 8);
    }
  }
}

void sub_2256C48B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a8)
  {
    (*(*a8 + 8))(a8);
  }

  WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0::~$_0(va, a2);

  if ((v12 & 1) == 0)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v9);
  }

  _Unwind_Resume(a1);
}

atomic_ullong **WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(atomic_ullong **result, atomic_ullong *a2)
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
  WTF::Lock::unlockSlow(v8);
  result = v7;
  *v7 = v9;
  return result;
}

atomic_ullong **WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0::~$_0(atomic_ullong **result, void *a2)
{
  v2 = result[2];
  result[2] = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *result;
    *result = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    return result;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v11 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v12, v13);
  result = v11;
  v3 = *v11;
  *v11 = 0;
  if (v3)
  {
    do
    {
LABEL_5:
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        v9 = *v3;
        v10 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
        return v10;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      v6 = result;
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v7, v8);
      return v6;
    }
  }

  return result;
}

void WebGPU::RenderBundleEncoder::drawIndirect(WebGPU::RenderBundleEncoder *this, id *a2, WebGPU::Buffer *a3)
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v6))
  {

LABEL_11:
    v13 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {

      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    return;
  }

  v7 = *(this + 10);

  if (!v7)
  {
    goto LABEL_11;
  }

  *(this + 400) = 1;
  v39 = 0;
  v8 = *(this + 39);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    ++*(v9 + 8);
    v38 = 0;
    v10 = *(this + 6);
    if (v10)
    {
      ++*(v10 + 2);
    }

    *&v40 = MEMORY[0x277D85DD0];
    *(&v40 + 1) = 3221225472;
    v41 = ___ZNK6WebGPU19RenderBundleEncoder33computeMininumVertexInstanceCountERb_block_invoke;
    v42 = &__block_descriptor_40_e8_Q12__0I8l;
    v43 = this;
    v12 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v10, &v38, &v40);
    if (v10)
    {
      if (*(v10 + 2) == 1)
      {
        WebGPU::RenderPipeline::~RenderPipeline(v10, v11);
        bmalloc::api::tzoneFree(v19, v20);
      }

      else
      {
        --*(v10 + 2);
      }
    }

    WebGPU::RenderPassEncoder::clampIndirectBufferToValidValues(a2, a3, *(this + 91), &v39, v12, HIDWORD(v12), *(this + 1), v9, &v40, "RenderBundleEncoder::FinalizeRenderCommand WebGPU::RenderBundleEncoder::drawIndirect(Buffer &, uint64_t)");
    v17 = v40;
    a3 = *(&v40 + 1);
    v21 = v17;
    if (v39 == 1)
    {
      v39 = WebGPU::RenderPassEncoder::splitRenderPass(v9);
      v21 = v40;
    }

    v18 = 0;
    v14 = v39;
    v16 = 1;
    v15 = v38;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = 0;
    v17 = 0;
    v38 = 0;
    v18 = 1;
  }

  if ((WebGPU::RenderBundleEncoder::executePreDrawCommands(this, (v15 & 1), v14 & 1, 0, 0) & 1) == 0)
  {
    goto LABEL_42;
  }

  v22 = WebGPU::RenderBundleEncoder::currentRenderCommand(this);

  if (v22)
  {
    if (!v16)
    {
LABEL_41:
      [*(this + 10) setCommandTypes:{objc_msgSend(*(this + 10), "commandTypes") | 1}];
      ++*(this + 12);
      goto LABEL_42;
    }

    v23 = *(v9 + 184);
    ++*(v23 + 4);
    *&v40 = v23;
    WebGPU::Buffer::setCommandEncoder(a2, v23);
    if (*(v23 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v23);
      bmalloc::api::tzoneFree(v26, v27);
      if (*(*(v9 + 184) + 172))
      {
        goto LABEL_28;
      }
    }

    else
    {
      --*(v23 + 4);
      if (*(*(v9 + 184) + 172))
      {
LABEL_28:
        v24 = 0;
        goto LABEL_36;
      }
    }

    v24 = *(v9 + 16);
LABEL_36:
    v28 = v24;

    if (v28)
    {
      if (*(a2 + 44) != 4 && v17 && (*(this + 408) & 1) == 0)
      {
        v29 = WebGPU::RenderPassEncoder::renderCommandEncoder(v9);
        [v29 drawPrimitives:*(this + 21) indirectBuffer:v17 indirectBufferOffset:a3];
      }

      goto LABEL_41;
    }

LABEL_42:
    v30 = *(this + 40);
    *(this + 40) = 0;

    if (*(this + 10) && *(this + 12) >= 0x4000uLL && (*(this + 400) & 1) == 0 && *(this + 9))
    {
      WebGPU::RenderBundleEncoder::splitICB(this, 1);
    }

    goto LABEL_47;
  }

  if (*(a2 + 44) != 4 && !a2[1] || (v25 = a2[35], !v25[1]) || v25 != *(this + 1))
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_DrawindirectBu.isa);
    goto LABEL_42;
  }

  if ((*(a2 + 41) & 1) != 0 && (a3 & 3) == 0 && a2[4] >= a3 + 16)
  {
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(&v40, a2);
    ++*this;
    *(&v40 + 1) = a3;
    v41 = this;
    v33 = WTF::fastMalloc(0x20);
    *v33 = &unk_2838D3308;
    *(v33 + 8) = v40;
    v34 = v41;
    *&v40 = 0;
    v41 = 0;
    *(v33 + 24) = v34;
    v37 = v33;
    WebGPU::RenderBundleEncoder::recordCommand(this, &v37);
    v36 = v37;
    v37 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0::~$_0(&v40, v35);
    goto LABEL_41;
  }

  WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_DrawindirectVa.isa);
  WebGPU::RenderBundleEncoder::finalizeRenderCommand(this);
LABEL_47:
  if ((v18 & 1) == 0)
  {
    if (*(v9 + 8) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v9);
      bmalloc::api::tzoneFree(v31, v32);
    }

    else
    {
      --*(v9 + 8);
    }
  }
}

void sub_2256C4FF0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0::~$_0(va, a2);
  if ((v7 & 1) == 0)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v5);
  }

  _Unwind_Resume(a1);
}

id WebGPU::RenderBundleEncoder::makeICB(id *this, unint64_t a2)
{
  if (![this[10] commandTypes])
  {
    v7 = 0;
    goto LABEL_24;
  }

  v4 = this[1];
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v9 = *v4;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_9;
    }
  }

  WTF::Lock::unlockSlow(v9);
LABEL_9:
  v11 = 0x4000;
  if (a2 < 0x4000)
  {
    v11 = a2;
  }

  if (a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = [*(v4 + 8) newIndirectCommandBufferWithDescriptor:this[10] maxCommandCount:v12 options:0];
  v14 = v13;
  if (v13 && [v13 size] == v12)
  {
    WebGPU::Device::setOwnerWithIdentity(v4, v14);
    v7 = v14;
    v14 = 0;
  }

  else
  {
    WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_Mtlindirectcom.isa);
    v7 = 0;
  }

  do
  {
    v16 = *v4;
    if ((*v4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, v15);
      goto LABEL_24;
    }

    v17 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Device::~Device(v4, v15);
    bmalloc::api::tzoneFree(v18, v19);
  }

LABEL_24:

  return v7;
}