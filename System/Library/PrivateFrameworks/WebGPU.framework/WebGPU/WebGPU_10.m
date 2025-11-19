void sub_2256CFD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, WebGPU::RenderPipeline *a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v18 = va_arg(va1, WebGPU::BindGroup *);

  WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(va, v14, v15);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va1, v16);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(a10, v17);
  _Unwind_Resume(a1);
}

BOOL WebGPU::RenderPassEncoder::setCommandEncoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v4 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_24;
    }

    if (*a2)
    {
      WebGPU::ExternalTexture::setCommandEncoder(*a2, *(a1 + 184));
    }
  }

  else
  {
    if (v4 == 1)
    {
      if (v3 == 1)
      {
        v5 = *a2;
        if (*a2)
        {
          v6 = *(a1 + 184);
          v7 = *(v6 + 200);
          v13 = v7;
          v8 = *(v5 + 29);
          if (v8 == *(v5 + 28))
          {
            v9 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 104, v8 + 1, &v13);
            v8 = *(v5 + 29);
            *(*(v5 + 13) + 8 * v8) = *v9;
          }

          else
          {
            *(*(v5 + 13) + 8 * v8) = v7;
          }

          *(v5 + 29) = v8 + 1;
          WebGPU::CommandEncoder::addTexture(v6, *(v5 + 12));
          v10 = *(v5 + 12);
          if (*(v10 + 104) == 1 && (*(v10 + 105) & 1) == 0)
          {
            WebGPU::CommandEncoder::makeSubmitInvalid(v6, 0);
          }
        }

        goto LABEL_20;
      }

LABEL_24:
      mpark::throw_bad_variant_access(a1);
    }

    if (*(a2 + 8))
    {
      goto LABEL_24;
    }

    if (*a2)
    {
      WebGPU::Buffer::setCommandEncoder(*a2, *(a1 + 184));
    }
  }

LABEL_20:
  if (*(*(a1 + 184) + 172))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 16);
  }

  return v11 != 0;
}

unint64_t WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(uint64_t a1, _BYTE *a2, void *a3)
{
  v5 = a3;
  *a2 = 0;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_47;
  }

  v6 = *(a1 + 128);
  if (!v6)
  {
    v8 = 0;
    v7 = 0;
LABEL_12:
    v10 = v8;
    v8 = &v6[8 * v7];
    if (!v6)
    {
      v13 = 0;
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_14:
      v12 = 0xFFFFFFFF00000000;
      a1 = 0xFFFFFFFFLL;
      goto LABEL_47;
    }

    goto LABEL_9;
  }

  v7 = *(v6 - 1);
  v8 = &v6[8 * v7];
  if (!*(v6 - 3))
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v9 = 32 * v7;
    v10 = v6;
    while (*v10 >= 0xFFFFFFFE)
    {
      v10 += 8;
      v9 -= 32;
      if (!v9)
      {
        v10 = v8;
        break;
      }
    }

LABEL_9:
    v11 = *(v6 - 1);
    goto LABEL_16;
  }

  v11 = 0;
  v10 = v6;
LABEL_16:
  v13 = &v6[8 * v11];
  if (v10 == v13)
  {
    goto LABEL_14;
  }

LABEL_17:
  v14 = -1;
  v15 = 0xFFFFFFFFLL;
  do
  {
    v16 = v5[2](v5, *v10);
    v17 = *(v10 + 1);
    v18 = *(v10 + 2);
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 >= v18;
    }

    if (!v19)
    {
      if (v16 >= v18)
      {
        v20 = (v16 - v18) / v17 + 1;
        if (v16 < v17 && v16 >= v18 && v20 == 1)
        {
          *a2 = 1;
        }
      }

      else
      {
        LODWORD(v20) = 0;
      }

      v23 = v10[6];
      if (v15 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v15;
      }

      if (v14 < v20)
      {
        LODWORD(v20) = v14;
      }

      if (v23)
      {
        v15 = v24;
      }

      else
      {
        v15 = v15;
      }

      if (!v23)
      {
        v14 = v20;
      }
    }

    do
    {
      v10 += 8;
    }

    while (v10 != v8 && *v10 >= 0xFFFFFFFE);
  }

  while (v10 != v13);
  v12 = v15 << 32;
  a1 = v14;
LABEL_47:

  return v12 | a1;
}

unint64_t WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(WebGPU::RenderPassEncoder *this, BOOL *a2)
{
  v2 = *(this + 9);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZNK6WebGPU17RenderPassEncoder33computeMininumVertexInstanceCountERb_block_invoke;
  v4[3] = &__block_descriptor_40_e8_Q12__0I8l;
  v4[4] = this;
  return WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v2, a2, v4);
}

void *___ZNK6WebGPU17RenderPassEncoder33computeMininumVertexInstanceCountERb_block_invoke(void *result, unsigned int a2)
{
  if (a2 >= 0x1F)
  {
    __break(1u);
  }

  else
  {
    v2 = result[4] + 24 * a2;
    result = *(v2 + 408);
    if (result)
    {
      if ([result length] >= *(v2 + 416))
      {
        return ([*(v2 + 408) length] - *(v2 + 416));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void WebGPU::RenderPassEncoder::emitMemoryBarrier(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 252) + 1;
  *(a1 + 252) = v3;
  if (v3 < *(*(a1 + 32) + 280))
  {
    [v4 memoryBarrierWithScope:1 afterStages:1 beforeStages:1];
  }
}

void WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(WebGPU::RenderPassEncoder *this@<X0>, unint64_t a2@<X5>, WebGPU::Buffer *a3@<X7>, unsigned int a4@<W1>, int a5@<W2>, unsigned int a6@<W3>, MTLIndexType a7@<X4>, uint64_t a8@<X6>, uint64_t a9@<X8>, unsigned int a10, unsigned int a11, WebGPU::RenderPassEncoder *a12, atomic_uint **a13, unsigned int a14, MTLPrimitiveType a15)
{
  v73 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    v25 = 0;
    goto LABEL_25;
  }

  v16 = a3;
  v23 = this;
  v24 = *(a8 + 8);
  v25 = v24;
  if (!v23 || !v24 || *(a8 + 44) == 4)
  {
    goto LABEL_25;
  }

  if ((a10 & v16) == 0xFFFFFFFF)
  {
    *a9 = 0;
    goto LABEL_27;
  }

  v26 = 1;
  if (a7)
  {
    v26 = 2;
  }

  v51 = v26;
  if (!v16 || !a10 || [v24 length] <= a2 || -a5 > v16)
  {
    goto LABEL_25;
  }

  v28 = a15 == MTLPrimitiveTypeLineStrip || a15 == MTLPrimitiveTypeTriangleStrip;
  if (v16 == -1)
  {
    v29 = ~v28;
  }

  else
  {
    v29 = v16 + a5;
  }

  v49 = v29;
  v50 = v28;
  WebGPU::Buffer::canSkipDrawIndexedValidation(a8, a2 >> v51, v23, v29, a4, a7, a6, a5, &v52, a10, v28, 0);
  if (v54 == 1)
  {
    if ((WebGPU::Buffer::didReadOOB(a8, 0) & 1) == 0)
    {
      v30 = *(a12 + 23);
      ++*(v30 + 4);
      v67 = v30;
      WebGPU::Buffer::skippedDrawIndexedValidation(a8, v30, v52);
      WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&v67);
      v31 = 0;
LABEL_26:
      *a9 = v31;
LABEL_27:
      *(a9 + 8) = 0;
      goto LABEL_28;
    }

LABEL_25:
    v31 = 2;
    goto LABEL_26;
  }

  v32 = v23 << v51;
  if (__CFADD__(v32, a2) || v32 + a2 > [v25 length])
  {
    goto LABEL_25;
  }

  v34 = a6 >= a10 || a6 + a4 > a10;
  v35 = !v34;
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = v23;
  }

  if (v35)
  {
    v37 = a4;
  }

  else
  {
    v37 = 0;
  }

  v67 = __PAIR64__(v37, v36);
  v68 = a2 >> v51;
  v69 = a5;
  v70 = a6;
  v71 = 0;
  v47 = WebGPU::RenderPassEncoder::renderCommandEncoder(a12);
  v46 = WebGPU::Device::safeCreateBufferWithData<WebGPU::WebKitMTLDrawIndexedPrimitivesIndirectArguments>(a13, &v67);
  v38 = WebGPU::Device::indexBufferClampPipeline(a13, a7, a14);
  if (v38)
  {
    v45 = v38;
    [v47 setRenderPipelineState:v38];

    WebGPU::RenderPassEncoder::setVertexBuffer(a12, v47, v25, a2, 0);
    WebGPU::RenderPassEncoder::setVertexBuffer(a12, v47, v46, 0, 1u);
    v39 = ~v50;
    if (v16 != -1)
    {
      v39 = v16;
    }

    v72[0] = v39;
    v72[1] = v50;
    v72[2] = v23 - 1;
    WebGPU::RenderPassEncoder::setVertexBytes(a12, v47, v72, 12, 2u);
    [v47 drawPrimitives:0 vertexStart:0 vertexCount:v23];
    WebGPU::RenderPassEncoder::emitMemoryBarrier(a12, v47);
    v40 = a13[2];
    atomic_fetch_add(v40, 1u);
    v52 = v40;
    v41 = *(a12 + 23);
    ++*(v41 + 4);
    v66 = v41;
    v48 = WebGPU::Queue::retainCounterSampleBuffer(v40, v41);
    WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&v66);
    WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&v52);
    v42 = *(a12 + 23);
    ++*(v42 + 16);
    v66 = v42;
    v43 = *(v42 + 24);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3321888768;
    v64[2] = ___ZN6WebGPU17RenderPassEncoder29clampIndexBufferToValidValuesEjjij12MTLIndexTypemPNS_6BufferEjjRS0_RNS_6DeviceEj16MTLPrimitiveType_block_invoke;
    v64[3] = &__block_descriptor_104_ea8_32c138_ZTSKZN6WebGPU17RenderPassEncoder29clampIndexBufferToValidValuesEjjij12MTLIndexTypemPNS_6BufferEjjRS0_RNS_6DeviceEj16MTLPrimitiveTypeE3__0_e28_v16__0___MTLCommandBuffer__8l;
    v52 = v48;
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(&v53, a13);
    v54 = a2 >> v51;
    v55 = v23;
    v56 = v49;
    v57 = a4;
    v58 = a7;
    v59 = a6;
    v60 = a5;
    v61 = a10;
    v62 = v50;
    WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(v63, a8);
    v44 = v46;
    v63[1] = v44;
    WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::$_0(v65, &v52);
    [v43 addCompletedHandler:v64];
    WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(&v52);

    WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&v66);
    *a9 = 1;
    *(a9 + 8) = v44;
    WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(v65);
  }

  else
  {
    *a9 = 2;
    *(a9 + 8) = 0;
  }

LABEL_28:
}

void sub_2256D0760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(v15 + 32);
  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(va);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v16 - 144));
  _Unwind_Resume(a1);
}

id WebGPU::Device::safeCreateBufferWithData<WebGPU::WebKitMTLDrawIndexedPrimitivesIndirectArguments>(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 8) newBufferWithBytes:a2 length:24 options:0];
  WebGPU::Device::setOwnerWithIdentity(a1, v3);

  return v3;
}

void ___ZN6WebGPU17RenderPassEncoder29clampIndexBufferToValidValuesEjjij12MTLIndexTypemPNS_6BufferEjjRS0_RNS_6DeviceEj16MTLPrimitiveType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] != 4)
  {
    v8 = *(*(a1 + 40) + 16);
    atomic_fetch_add(v8, 1u);
    v28 = v8;
    WebGPU::Queue::releaseCounterSampleBuffer(v8, *(a1 + 32));
    v28 = 0;
    if (!v8 || atomic_fetch_add(v8, 0xFFFFFFFF) != 1)
    {
      goto LABEL_25;
    }

    atomic_store(1u, v8);
    v9 = v8;
LABEL_27:
    WebGPU::Queue::~Queue(v9);
    bmalloc::api::tzoneFree(v24, v25);
    goto LABEL_25;
  }

  v4 = *(*(a1 + 40) + 16);
  atomic_fetch_add(v4, 1u);
  v34 = v4;
  v5 = *(a1 + 40);
  v28 = *(a1 + 32);
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
      goto LABEL_13;
    }
  }

  v10 = 0;
  v11 = *v5;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    v26 = v11;
    MEMORY[0x22AA683C0]();
    v11 = v26;
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

LABEL_13:
  v29 = v5;
  v30 = *(a1 + 48);
  *v31 = *(a1 + 64);
  *&v31[8] = *(a1 + 72);
  v13 = *(a1 + 88);
  while (1)
  {
    v14 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v15 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_21;
    }
  }

  v16 = 0;
  v17 = *v13;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(*v13, &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    v27 = v17;
    MEMORY[0x22AA683C0]();
    v17 = v27;
  }

  ++*(v17 + 8);
  atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(v17);
  }

LABEL_21:
  *&v32 = v13;
  *(&v32 + 1) = *(a1 + 96);
  v19 = WTF::fastMalloc(0x50);
  *v19 = &unk_2838D3460;
  *(v19 + 8) = v28;
  *(v19 + 16) = v29;
  v20 = v30;
  v21 = *v31;
  *(v19 + 56) = *&v31[16];
  *(v19 + 40) = v21;
  *(v19 + 24) = v20;
  v22 = v32;
  v32 = 0uLL;
  v29 = 0;
  *(v19 + 64) = v22;
  v33 = v19;
  WebGPU::Queue::scheduleWork(v4, &v33);
  v23 = v33;
  v33 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(&v28);
  v9 = v34;
  v34 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    goto LABEL_27;
  }

LABEL_25:
}

void sub_2256D0B20(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v3 + 8), a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v4 - 72));

  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
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

LABEL_17:
    WTF::Lock::unlockSlow(v8);
    goto LABEL_7;
  }

  ++*(v8 + 8);
  atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *(a1 + 8) = v4;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  v12 = *(a2 + 56);
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
      goto LABEL_15;
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

LABEL_15:
  *(a1 + 56) = v12;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(uint64_t a1)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v3, v2);
        goto LABEL_7;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

LABEL_7:
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    do
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v8, v2);
        return a1;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v10 != v9);
    if (v9 == 3)
    {
      WebGPU::Device::~Device(v8, v2);
      bmalloc::api::tzoneFree(v11, v12);
    }
  }

  return a1;
}

void WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(WebGPU::RenderPassEncoder *this, uint64_t a2, WebGPU::RenderPassEncoder *a3, unsigned int a4, int a5, MTLIndexType a6, MTLIndexType a7, BOOL *a8, _BYTE *a9)
{
  v11 = a6;
  v17 = *(a2 + 72);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZNK6WebGPU17RenderPassEncoder33computeMininumVertexInstanceCountERb_block_invoke;
  v20[3] = &__block_descriptor_40_e8_Q12__0I8l;
  v20[4] = a2;
  v18 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(v17, a9, v20);
  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(a3, a8, v18, a4, a5, v11, a7, *(a2 + 40), this, HIDWORD(v18), v19, a2, *(a2 + 32), *(a2 + 248), *(a2 + 88));
}

void WebGPU::RenderPassEncoder::clampIndirectIndexBufferToValidValues(id *this@<X0>, id *a2@<X1>, WebGPU::Buffer *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, WebGPU::Device *a10, WebGPU::Device *a11, id *a12, WebGPU::RenderPassEncoder *a13, BOOL *a14)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((a7 & a6) == 0xFFFFFFFF)
  {
    *a9 = a2[1];
    a9[1] = a5;
    return;
  }

  if (this)
  {
    v23 = this[1];
    if (v23 && *(this + 44) != 4 && *(a2 + 44) != 4)
    {
      v37 = a2[2];
      if (!HIDWORD(a4) && (a3 ? (v24 = 4) : (v24 = 2), !__CFADD__(a4, v24) && a7 && a6 && v37 && [v23 length] > (a4 + v24)))
      {
        v36 = WebGPU::RenderPassEncoder::renderCommandEncoder(a12);
        v25 = WebGPU::Device::indexedIndirectBufferClampPipeline(a10, a11);
        if (!v25)
        {
          goto LABEL_38;
        }

        [v36 setRenderPipelineState:v25];

        v34 = [v23 length];
        v26 = 1;
        if (a3)
        {
          v26 = 2;
        }

        v33 = v26;
        WebGPU::RenderPassEncoder::setVertexBuffer(a12, v36, a2[1], a5, 0);
        WebGPU::RenderPassEncoder::setVertexBuffer(a12, v36, a2[3], 0, 1u);
        WebGPU::RenderPassEncoder::setVertexBuffer(a12, v36, v37, 0, 2u);
        v35 = (v34 - a4) >> v33;
        v39[0] = v35;
        v39[1] = a7;
        WebGPU::RenderPassEncoder::setVertexBytes(a12, v36, v39, 8, 3u);
        [v36 drawPrimitives:0 vertexStart:0 vertexCount:1];
        WebGPU::RenderPassEncoder::emitMemoryBarrier(a12, v36);
        if (WebGPU::RenderPassEncoder::splitRenderPass(a12))
        {
          v27 = WebGPU::RenderPassEncoder::renderCommandEncoder(a12);

          v36 = v27;
        }

        v28 = WebGPU::Device::indexBufferClampPipeline(a10, a3, a11);
        if (v28)
        {
          [v36 setRenderPipelineState:v28];

          v29 = v36;
          WebGPU::RenderPassEncoder::setVertexBuffer(a12, v36, v23, a4, 0);
          WebGPU::RenderPassEncoder::setVertexBuffer(a12, v36, a2[3], 0, 1u);
          v31 = a8 == 2 || a8 == 4;
          if (a6 == -1)
          {
            v32 = ~v31;
          }

          else
          {
            v32 = a6;
          }

          v38[0] = v32;
          v38[1] = v31;
          v38[2] = v35 - 1;
          WebGPU::RenderPassEncoder::setVertexBytes(a12, v36, v38, 12, 2u);
          [v36 drawPrimitives:0 indirectBuffer:v37 indirectBufferOffset:0];
          WebGPU::RenderPassEncoder::emitMemoryBarrier(a12, v36);
          *a13 = 1;
          a2[32] = a3;
          a2[29] = a5;
          a2[30] = a4;
          *(a2 + 62) = a6;
          *(a2 + 63) = a7;
          *(a2 + 66) = 2;
          WebGPU::checkForIndirectDrawDeviceLost(a10, a12, v37);
          *a9 = a2[3];
          a9[1] = 0;
        }

        else
        {
LABEL_38:
          *a9 = 0;
          a9[1] = 0;
          v29 = v36;
        }
      }

      else
      {
        *a9 = 0;
        a9[1] = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
  }

  *a9 = 0;
  a9[1] = 0;
LABEL_17:
}

uint64_t WebGPU::RenderPassEncoder::splitRenderPass(WebGPU::RenderPassEncoder *this)
{
  if (*(this + 63) < *(*(this + 4) + 280))
  {
    return 0;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  *(this + 63) = 0;
  v3 = *(this + 23);
  ++*(v3 + 16);
  v37 = v3;
  WebGPU::CommandEncoder::endEncoding(v3, v2);
  if (*(this + 299))
  {
    if (*(this + 85))
    {
      v5 = 0;
      do
      {
        v6 = [*(this + 286) colorAttachments];
        v7 = [v6 objectAtIndexedSubscript:v5];
        [v7 setLoadAction:1];

        ++v5;
      }

      while (v5 < *(this + 85));
    }

    v8 = [*(this + 286) depthAttachment];
    [v8 setLoadAction:1];

    v9 = [*(this + 286) stencilAttachment];
    [v9 setLoadAction:1];
  }

  if (*(this + 36))
  {
    if (*(this + 37))
    {
      *(this + 37) = 0;
    }

    v10 = *(this + 17);
    if (v10)
    {
      *(this + 17) = 0;
      *(this + 36) = 0;
      WTF::fastFree(v10, v4);
    }
  }

  if (*(this + 44))
  {
    if (*(this + 45))
    {
      *(this + 45) = 0;
    }

    v11 = *(this + 21);
    if (v11)
    {
      *(this + 21) = 0;
      *(this + 44) = 0;
      WTF::fastFree(v11, v4);
    }
  }

  v12 = *(v3 + 24);
  v13 = [v12 renderCommandEncoderWithDescriptor:*(this + 286)];
  v14 = *(this + 2);
  *(this + 2) = v13;

  WebGPU::CommandEncoder::setExistingEncoder(v3, *(this + 2));
  if (*(this + 2464) == 1)
  {
    v16 = *(this + 2);
    v17 = *(this + 152);
    v34 = *(this + 151);
    v35 = v17;
    v36 = *(this + 153);
    [v16 setViewport:&v34];
  }

  if (*(this + 2328) == 1)
  {
    v18 = *(this + 287);
    *&v18 = v18;
    v19 = *(this + 288);
    *&v19 = v19;
    v20 = *(this + 289);
    *&v20 = v20;
    v21 = *(this + 290);
    *&v21 = v21;
    [*(this + 2) setBlendColorRed:v18 green:v19 blue:v20 alpha:v21];
  }

  if (*(this + 2380) == 1)
  {
    [*(this + 2) setStencilReferenceValue:*(this + 594)];
  }

  if (*(this + 2368) == 1)
  {
    v22 = *(this + 2);
    v23 = *(this + 147);
    v34 = *(this + 146);
    v35 = v23;
    [v22 setScissorRect:&v34];
  }

  v24 = *(this + 9);
  if (v24)
  {
    v25 = *(v24 + 2);
    *(v24 + 2) = v25 + 1;
    *(this + 9) = 0;
    if (v25)
    {
      *(v24 + 2) = v25;
    }

    else
    {
      WebGPU::RenderPipeline::~RenderPipeline(v24, v15);
      bmalloc::api::tzoneFree(v27, v28);
    }

    WebGPU::RenderPassEncoder::setPipeline(this, v24);
    if (*(v24 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v24, v29);
      bmalloc::api::tzoneFree(v30, v31);
    }

    else
    {
      --*(v24 + 2);
    }
  }

  *(this + 144) = 0;
  *(this + 290) = 0;
  *(this + 146) = 0;
  *(this + 294) = 0;
  *(this + 148) = 0;
  *(this + 298) = 0;
  *(this + 150) = 0;
  *(this + 302) = 0;
  *(this + 152) = 0;
  *(this + 306) = 0;
  *(this + 154) = 0;
  *(this + 310) = 0;
  *(this + 156) = 0;
  *(this + 314) = 0;
  *(this + 158) = 0;
  *(this + 318) = 0;
  *(this + 160) = 0;
  *(this + 322) = 0;
  *(this + 162) = 0;
  *(this + 326) = 0;
  *(this + 164) = 0;
  *(this + 330) = 0;
  *(this + 166) = 0;
  *(this + 334) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 170) = 0;
  *(this + 342) = 0;
  *(this + 172) = 0;
  *(this + 346) = 0;
  *(this + 174) = 0;
  *(this + 350) = 0;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 178) = 0;
  *(this + 358) = 0;
  *(this + 180) = 0;
  *(this + 362) = 0;
  *(this + 182) = 0;
  *(this + 366) = 0;
  *(this + 184) = 0;
  *(this + 370) = 0;
  *(this + 186) = 0;
  *(this + 374) = 0;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 190) = 0;
  *(this + 382) = 0;
  *(this + 192) = 0;
  *(this + 386) = 0;
  *(this + 194) = 0;
  *(this + 390) = 0;
  *(this + 196) = 0;
  *(this + 394) = 0;
  *(this + 198) = 0;
  *(this + 398) = 0;
  *(this + 200) = 0;
  *(this + 402) = 0;
  *(this + 202) = 0;
  *(this + 406) = 0;
  *(this + 204) = 0;
  *(this + 410) = 0;
  *(this + 206) = 0;
  *(this + 414) = 0;
  *(this + 208) = 0;
  *(this + 418) = 0;
  *(this + 210) = 0;
  *(this + 422) = 0;
  *(this + 212) = 0;
  *(this + 426) = 0;
  *(this + 214) = 0;
  *(this + 430) = 0;
  *(this + 216) = 0;
  *(this + 434) = 0;
  *(this + 218) = 0;
  *(this + 438) = 0;
  *(this + 220) = 0;
  *(this + 442) = 0;
  *(this + 222) = 0;
  *(this + 446) = 0;
  *(this + 224) = 0;
  *(this + 450) = 0;
  *(this + 226) = 0;
  *(this + 454) = 0;
  *(this + 228) = 0;
  *(this + 458) = 0;
  *(this + 230) = 0;
  *(this + 462) = 0;
  *(this + 232) = 0;
  *(this + 466) = 0;
  *(this + 234) = 0;
  *(this + 470) = 0;
  *(this + 236) = 0;
  *(this + 474) = 0;
  *(this + 238) = 0;
  *(this + 478) = 0;
  *(this + 240) = 0;
  *(this + 482) = 0;
  *(this + 242) = 0;
  *(this + 486) = 0;
  *(this + 244) = 0;
  *(this + 490) = 0;
  *(this + 246) = 0;
  *(this + 494) = 0;
  *(this + 248) = 0;
  *(this + 498) = 0;
  *(this + 250) = 0;
  *(this + 502) = 0;
  *(this + 252) = 0;
  *(this + 506) = 0;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 256) = 0;
  *(this + 514) = 0;
  *(this + 258) = 0;
  *(this + 518) = 0;
  *(this + 260) = 0;
  *(this + 522) = 0;
  *(this + 262) = 0;
  *(this + 526) = 0;
  *(this + 264) = 0;
  *(this + 530) = 0;
  *(this + 266) = 0;
  *(this + 534) = 0;
  LOBYTE(v34) = 1;
  WTF::Vector<BOOL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(this + 2480, &v34, *(this + 623));
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 2216) = 0u;
  *(this + 2232) = 0u;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  if (v37)
  {
    if (*(v37 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v37);
      bmalloc::api::tzoneFree(v32, v33);
    }

    else
    {
      --*(v37 + 4);
    }
  }

  return 1;
}

void sub_2256D17A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D17D0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v9, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D17EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D182C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D1840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D1858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void WebGPU::checkForIndirectDrawDeviceLost(atomic_ullong *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[2];
  atomic_fetch_add(v6, 1u);
  v7 = *(a2 + 184);
  ++*(v7 + 4);
  v45 = v7;
  v8 = WebGPU::Queue::retainCounterSampleBuffer(v6, v7);
  if (*(v7 + 4) != 1)
  {
    --*(v7 + 4);
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WebGPU::Queue::~Queue(v6);
      bmalloc::api::tzoneFree(v38, v39);
    }

    goto LABEL_7;
  }

  WebGPU::CommandEncoder::~CommandEncoder(v7);
  bmalloc::api::tzoneFree(v9, v10);
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_7:
  v11 = *(a2 + 184);
  ++*(v11 + 16);
  v45 = v11;
  v12 = *(v11 + 24);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3321888768;
  v42[2] = ___ZN6WebGPUL30checkForIndirectDrawDeviceLostERNS_6DeviceERNS_17RenderPassEncoderEPU19objcproto9MTLBuffer11objc_object_block_invoke;
  v42[3] = &__block_descriptor_56_ea8_32c125_ZTSKZN6WebGPUL30checkForIndirectDrawDeviceLostERNS_6DeviceERNS_17RenderPassEncoderEPU19objcproto9MTLBuffer11objc_objectE3__0_e28_v16__0___MTLCommandBuffer__8l;
  v40 = v8;
  while (1)
  {
    v13 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v14 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_15;
    }
  }

  v15 = 0;
  v16 = *a1;
  v17 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v15, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_15:
  v41 = a1;
  v18 = v5;
  v42[4] = v40;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_23;
    }
  }

  v21 = 0;
  v22 = *a1;
  v23 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v21, 1u, memory_order_acquire, memory_order_acquire);
  if (v21)
  {
    MEMORY[0x22AA683C0](v22);
  }

  ++*(v22 + 8);
  atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    WTF::Lock::unlockSlow(v22);
  }

LABEL_23:
  v43 = a1;
  v24 = v18;
  v44 = v24;
  [v12 addCompletedHandler:v42];

  if (v41)
  {
    do
    {
      v26 = *v41;
      if ((*v41 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v41, v25);
        goto LABEL_29;
      }

      v27 = *v41;
      atomic_compare_exchange_strong_explicit(v41, &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v27 != v26);
    if (v26 == 3)
    {
      WebGPU::Device::~Device(v41, v25);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

LABEL_29:

  if (!v45)
  {
    goto LABEL_32;
  }

  if (*(v45 + 4) != 1)
  {
    --*(v45 + 4);
LABEL_32:

    v31 = v43;
    v43 = 0;
    if (v31)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  WebGPU::CommandEncoder::~CommandEncoder(v45);
  bmalloc::api::tzoneFree(v36, v37);

  v31 = v43;
  v43 = 0;
  if (v31)
  {
    do
    {
LABEL_33:
      v32 = *v31;
      if ((*v31 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v31, v30);
        goto LABEL_39;
      }

      v33 = *v31;
      atomic_compare_exchange_strong_explicit(v31, &v33, v32 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v33 != v32);
    if (v32 == 3)
    {
      WebGPU::Device::~Device(v31, v30);
      bmalloc::api::tzoneFree(v34, v35);
    }
  }

LABEL_39:
}

void sub_2256D1B8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebGPU::checkForIndirectDrawDeviceLost(WebGPU::Device &,WebGPU::RenderPassEncoder &,objc_object  {objcproto9MTLBuffer}*)::$_0::~$_0(va);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_2256D1BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v3 - 72));
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);

  _Unwind_Resume(a1);
}

void WebGPU::RenderPassEncoder::clampIndirectBufferToValidValues(id *this@<X0>, WebGPU::Buffer *a2@<X1>, WebGPU::Device *a3@<X5>, WebGPU::RenderPassEncoder *a4@<X7>, unsigned int a5@<W2>, unsigned int a6@<W3>, WebGPU::Device *a7@<X4>, uint64_t a8@<X6>, void *a9@<X8>, BOOL *a10)
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a5 && a6 && *(this + 44) != 4)
  {
    if ((a6 & a5) == 0xFFFFFFFF)
    {
      *a9 = this[1];
      a9[1] = a2;
    }

    else if (this[29] == a2 && *(this + 62) == a5 && *(this + 63) == a6 && *(this + 66) == 1)
    {
      v17 = *(a8 + 184);
      ++*(v17 + 4);
      v32[0] = v17;
      WebGPU::Buffer::skippedDrawIndirectValidation(this, v17, a2, a5, a6);
      if (*(v17 + 4) == 1)
      {
        WebGPU::CommandEncoder::~CommandEncoder(v17);
        bmalloc::api::tzoneFree(v29, v30);
      }

      else
      {
        --*(v17 + 4);
      }

      *a9 = this[2];
      a9[1] = 0;
    }

    else
    {
      if (*(*(a8 + 184) + 172))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a8 + 16);
      }

      v20 = a3;
      v21 = v18;
      v31 = a7;
      v22 = WebGPU::Device::indirectBufferClampPipeline(a7, v20);
      if (v22)
      {
        [v21 setRenderPipelineState:v22];

        WebGPU::RenderPassEncoder::setVertexBuffer(a8, v21, this[1], a2, 0);
        v23 = this[2];
        WebGPU::RenderPassEncoder::setVertexBuffer(a8, v21, v23, 0, 1u);

        v32[0] = __PAIR64__(a6, a5);
        v24 = v21;
        [v24 setVertexBytes:v32 length:8 atIndex:2];
        *(a8 + 1184) = 0;
        *(a8 + 1192) = 0;

        [v24 drawPrimitives:0 vertexStart:0 vertexCount:1];
        v25 = v24;
        v26 = v25;
        v27 = *(a8 + 252) + 1;
        *(a8 + 252) = v27;
        if (v27 < *(*(a8 + 32) + 280))
        {
          [v25 memoryBarrierWithScope:1 afterStages:1 beforeStages:1];
        }

        *a4 = 1;
        this[29] = a2;
        *(this + 62) = a5;
        *(this + 63) = a6;
        *(this + 66) = 1;
        v28 = this[2];
        WebGPU::checkForIndirectDrawDeviceLost(v31, a8, v28);

        *a9 = this[2];
        a9[1] = 0;
      }

      else
      {
        *a9 = 0;
        a9[1] = 0;
      }
    }
  }

  else
  {
    *a9 = 0;
    a9[1] = 0;
  }
}

void WebGPU::verticesPerPrimitive(WebGPU *this, MTLPrimitiveType a2)
{
  if (this >= 5)
  {
    v2 = WTFCrashWithInfoImpl(949, "/Library/Caches/com.apple.xbs/Sources/WebGPU/Source/WebGPU/WebGPU/RenderPassEncoder.mm", "NSUInteger WebGPU::verticesPerPrimitive(MTLPrimitiveType)");
    WebGPU::RenderPassEncoder::setPipeline(v2, v3);
  }
}

void WebGPU::RenderPassEncoder::setPipeline(WebGPU::RenderPassEncoder *this, const WebGPU::RenderPipeline *a2)
{
  v3 = *(this + 23);
  if (*v3 != 1)
  {
    v11 = *(this + 4);
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
        goto LABEL_17;
      }
    }

    v14 = 0;
    v15 = *v11;
    v16 = 1;
    atomic_compare_exchange_strong_explicit(*v11, &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      MEMORY[0x22AA683C0](v15, a2);
      v53 = 1;
      ++*(v15 + 8);
      atomic_compare_exchange_strong_explicit(v15, &v53, 0, memory_order_release, memory_order_relaxed);
      if (v53 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      ++*(v15 + 8);
      atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 == 1)
      {
        goto LABEL_17;
      }
    }

    WTF::Lock::unlockSlow(v15);
LABEL_17:
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setPipeline(const RenderPipeline &)"];
    WebGPU::Device::generateAValidationError(v11, v17);

    v56 = 0;
    do
    {
      v19 = *v11;
      if ((*v11 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v11, v18);
        goto LABEL_23;
      }

      v20 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v20, v19 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v20 != v19);
    if (v19 == 3)
    {
      WebGPU::Device::~Device(v11, v18);
      bmalloc::api::tzoneFree(v21, v22);
    }

LABEL_23:
    v10 = *(this + 2);
    *(this + 2) = 0;

    goto LABEL_10;
  }

  v5 = *(this + 2);
  if (!v5 || !*(v3 + 24))
  {
    goto LABEL_29;
  }

  v6 = *(v3 + 16);
  *(v3 + 16) = v6 + 1;
  if (*(*(v3 + 192) + 8))
  {
    v7 = *(v3 + 32) == v5;
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
      *(v3 + 16) = v6;
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v3);
  bmalloc::api::tzoneFree(v23, v24);
  if (!v7)
  {
LABEL_28:
    v5 = *(this + 2);
LABEL_29:
    *(this + 2) = 0;

    return;
  }

LABEL_7:
  v8 = WebGPU::RenderPassEncoder::errorValidatingPipeline(this, a2);
  if (v8)
  {
    v54 = v8;
    WebGPU::RenderPassEncoder::makeInvalid(this, v8);
    v10 = v54;

LABEL_10:

    return;
  }

  v25 = *(this + 9);
  if (v25 != a2)
  {
    *(this + 11) = *(a2 + 4);
    ++*(a2 + 2);
    *(this + 9) = a2;
    if (v25)
    {
      if (*(v25 + 2) == 1)
      {
        WebGPU::RenderPipeline::~RenderPipeline(v25, v9);
        bmalloc::api::tzoneFree(v26, v27);
      }

      else
      {
        --*(v25 + 2);
      }
    }

    LOBYTE(v56) = 1;
    WTF::Vector<BOOL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(this + 2480, &v56, *(this + 623));
    *(this + 2248) = 0u;
    *(this + 2264) = 0u;
    *(this + 2216) = 0u;
    *(this + 2232) = 0u;
    *(this + 2184) = 0u;
    *(this + 2200) = 0u;
    *(this + 2152) = 0u;
    *(this + 2168) = 0u;
    v55 = 0;
    v28 = *(a2 + 17);
    ++*(v28 + 8);
    v56 = v28;
    v29 = *(v28 + 64);
    if (v29)
    {
      v30 = *(v29 - 1);
      v31 = &v29[4 * v30];
      if (*(v29 - 3))
      {
        if (!v30)
        {
          v34 = 0;
          v33 = *(v28 + 64);
          goto LABEL_49;
        }

        v32 = 16 * v30;
        v33 = *(v28 + 64);
        while (*v33 >= 0xFFFFFFFE)
        {
          v33 += 4;
          v32 -= 16;
          if (!v32)
          {
            v33 = v31;
            break;
          }
        }

LABEL_46:
        if (!v29)
        {
          goto LABEL_50;
        }

        v34 = *(v29 - 1);
LABEL_49:
        v29 += 4 * v34;
LABEL_50:
        if (v33 == v29)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          v36 = v33 + 4;
          if (v33 + 4 != v31)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v35 += *(v33 + 1);
            v33 = v36;
            if (v36 == v29)
            {
              break;
            }

            v36 += 4;
            if (v33 + 4 != v31)
            {
              do
              {
LABEL_54:
                if (*v36 < 0xFFFFFFFE)
                {
                  break;
                }

                v36 += 4;
              }

              while (v36 != v31);
            }
          }
        }

        WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(this + 120, &v55, v35);
        if (*(v28 + 8) == 1)
        {
          WebGPU::PipelineLayout::~PipelineLayout(v28, v37);
          bmalloc::api::tzoneFree(v38, v39);
        }

        else
        {
          --*(v28 + 8);
        }

        v55 = 0;
        v40 = *(a2 + 17);
        ++*(v40 + 8);
        v56 = v40;
        v41 = *(v40 + 72);
        if (v41)
        {
          v42 = *(v41 - 1);
          v43 = &v41[4 * v42];
          if (*(v41 - 3))
          {
            if (!v42)
            {
              v46 = 0;
              v45 = *(v40 + 72);
              goto LABEL_73;
            }

            v44 = 16 * v42;
            v45 = *(v40 + 72);
            while (*v45 >= 0xFFFFFFFE)
            {
              v45 += 4;
              v44 -= 16;
              if (!v44)
              {
                v45 = v43;
                break;
              }
            }

LABEL_70:
            if (!v41)
            {
LABEL_74:
              if (v45 == v41)
              {
                v49 = 3;
              }

              else
              {
                v47 = 0;
                v48 = v45 + 4;
                if (v45 + 4 != v43)
                {
                  goto LABEL_78;
                }

                while (1)
                {
                  v47 += *(v45 + 1);
                  v45 = v48;
                  if (v48 == v41)
                  {
                    break;
                  }

                  v48 += 4;
                  if (v45 + 4 != v43)
                  {
                    do
                    {
LABEL_78:
                      if (*v48 < 0xFFFFFFFE)
                      {
                        break;
                      }

                      v48 += 4;
                    }

                    while (v48 != v43);
                  }
                }

                v49 = v47 + 3;
              }

              WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(this + 152, &v55, v49);
              if (*(v40 + 8) == 1)
              {
                WebGPU::PipelineLayout::~PipelineLayout(v40, v50);
                bmalloc::api::tzoneFree(v51, v52);
              }

              else
              {
                --*(v40 + 8);
              }

              if (*(this + 41) < 3u && (WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(this + 38), *(this + 41) <= 2u))
              {
                __break(0xC471u);
              }

              else
              {
                *(*(this + 19) + 8) = *(a2 + 23);
              }

              return;
            }

            v46 = *(v41 - 1);
LABEL_73:
            v41 += 4 * v46;
            goto LABEL_74;
          }
        }

        else
        {
          v43 = 0;
          v42 = 0;
        }

        v45 = v43;
        v43 = &v41[4 * v42];
        goto LABEL_70;
      }
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v33 = v31;
    v31 = &v29[4 * v30];
    goto LABEL_46;
  }
}

void sub_2256D2454(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256D2468(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256D2490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v6);
  _Unwind_Resume(a1);
}

void sub_2256D24A8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c96_ZTSN3WTF3RefIN6WebGPU14CommandEncoderENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  ++*(v2 + 16);
  *(result + 40) = v2;
  return result;
}

WebGPU::CommandEncoder *__destroy_helper_block_ea8_40c96_ZTSN3WTF3RefIN6WebGPU14CommandEncoderENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (*(result + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(result);

      return bmalloc::api::tzoneFree(v4, v5);
    }

    else
    {
      --*(result + 4);
    }
  }

  return result;
}

void ___ZN6WebGPU17RenderPassEncoder14executeBundlesEON3WTF6VectorINS1_3RefINS_12RenderBundleENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] != 4)
  {
    v8 = *(*(a1 + 40) + 16);
    atomic_fetch_add(v8, 1u);
    v29 = v8;
    WebGPU::Queue::releaseCounterSampleBuffer(v8, *(a1 + 32));
    v29 = 0;
    if (!v8 || atomic_fetch_add(v8, 0xFFFFFFFF) != 1)
    {
      goto LABEL_25;
    }

    atomic_store(1u, v8);
    v9 = v8;
LABEL_27:
    WebGPU::Queue::~Queue(v9);
    bmalloc::api::tzoneFree(v26, v27);
    goto LABEL_25;
  }

  v4 = *(*(a1 + 40) + 16);
  atomic_fetch_add(v4, 1u);
  v36 = v4;
  v5 = *(a1 + 40);
  v29 = *(a1 + 32);
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
      goto LABEL_13;
    }
  }

  v10 = 0;
  v11 = *v5;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    v28 = v11;
    MEMORY[0x22AA683C0]();
    v11 = v28;
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

LABEL_13:
  v30 = v5;
  v31 = *(a1 + 96);
  v32 = *(a1 + 48);
  *v33 = *(a1 + 64);
  *&v33[8] = *(a1 + 72);
  v13 = *(a1 + 88);
  while (1)
  {
    v14 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v15 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_21;
    }
  }

  v16 = 0;
  v17 = *v13;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(*v13, &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    MEMORY[0x22AA683C0](v17);
  }

  ++*(v17 + 8);
  atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(v17);
  }

LABEL_21:
  v34 = v13;
  v19 = WTF::fastMalloc(0x50);
  *v19 = &unk_2838D34E0;
  *(v19 + 8) = v29;
  v20 = v30;
  v30 = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = v31;
  v21 = v32;
  v22 = *v33;
  *(v19 + 64) = *&v33[16];
  *(v19 + 32) = v21;
  *(v19 + 48) = v22;
  v23 = v34;
  v34 = 0;
  v35 = v19;
  *(v19 + 72) = v23;
  WebGPU::Queue::scheduleWork(v4, &v35);
  v25 = v35;
  v35 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1}::~objc_object(&v29, v24);
  v9 = v36;
  v36 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    goto LABEL_27;
  }

LABEL_25:
}

void sub_2256D27CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v13 + 8), v16);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v14 - 72));

  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
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

LABEL_17:
    WTF::Lock::unlockSlow(v8);
    goto LABEL_7;
  }

  ++*(v8 + 8);
  atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *(a1 + 8) = v4;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  v12 = *(a2 + 56);
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
      goto LABEL_15;
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

LABEL_15:
  *(a1 + 56) = v12;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t **WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::operator=(uint64_t **a1, uint64_t **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    do
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
        return a1;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      WebGPU::Buffer::~Buffer(v4);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return a1;
}

__CFString *WebGPU::RenderPassEncoder::errorValidatingPipeline(WebGPU::RenderPassEncoder *this, const WebGPU::RenderPipeline *a2)
{
  if (!*(a2 + 2))
  {
    return @"setPipeline: invalid RenderPipeline";
  }

  if (*(*(a2 + 17) + 128) != 1)
  {
    return @"setPipeline: invalid RenderPipeline";
  }

  v2 = *(a2 + 3);
  if (!*(v2 + 8) || v2 != *(this + 4))
  {
    return @"setPipeline: invalid RenderPipeline";
  }

  v4 = *(this + 113);
  if (*(this + 112) == 1)
  {
    v5 = this;
    v6 = a2;
    v7 = [*(a2 + 14) isDepthWriteEnabled];
    a2 = v6;
    v8 = v7;
    this = v5;
    if (v8)
    {
      return @"setPipeline: invalid depth stencil state";
    }
  }

  if (v4 && (*(a2 + 468) & 1) != 0)
  {
    return @"setPipeline: invalid depth stencil state";
  }

  v9 = a2;
  if (!WebGPU::RenderPipeline::colorDepthStencilTargetsMatch(a2, this + 34, this + 384, this + 50))
  {
    return @"setPipeline: color and depth targets from pass do not match pipeline";
  }

  v10 = *(v9 + 17);
  v11 = *(v10 + 2);
  *(v10 + 2) = v11 + 1;
  v13 = WebGPU::PipelineLayout::sizeOfFragmentDynamicOffsets(v10);
  if (v11)
  {
    *(v10 + 2) = v11;
  }

  else
  {
    WebGPU::PipelineLayout::~PipelineLayout(v10, v12);
    bmalloc::api::tzoneFree(v14, v15);
  }

  if (v13 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  else
  {
    return @"setPipeline: invalid size of fragmentDynamicOffsets";
  }
}

WebGPU::RenderPassEncoder *wgpuRenderPassEncoderRelease(WebGPU::RenderPassEncoder *result)
{
  if (*(result + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

void wgpuRenderPassEncoderBeginOcclusionQuery(WebGPU::RenderPassEncoder *this, unsigned int a2)
{
  ++*(this + 2);
  v3 = *(this + 23);
  if (*v3 != 1)
  {
    v7 = *(this + 4);
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::beginOcclusionQuery(uint32_t)", this, v7];
    WebGPU::Device::generateAValidationError(v7, v13);

    v35[0] = 0;
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

    goto LABEL_22;
  }

  v4 = *(this + 2);
  if (!v4 || !*(v3 + 24))
  {
    goto LABEL_23;
  }

  v5 = *(v3 + 16);
  *(v3 + 16) = v5 + 1;
  if (*(*(v3 + 192) + 8))
  {
    v6 = *(v3 + 32) == v4;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
LABEL_6:
      *(v3 + 16) = v5;
      if (v6)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  v21 = a2;
  WebGPU::CommandEncoder::~CommandEncoder(v3);
  bmalloc::api::tzoneFree(v22, v23);
  a2 = v21;
  if (!v6)
  {
LABEL_22:
    v4 = *(this + 2);
LABEL_23:
    *(this + 2) = 0;

    goto LABEL_24;
  }

LABEL_31:
  if (*(this + 2474))
  {
    goto LABEL_37;
  }

  v24 = 8 * a2;
  v25 = *(this + 27);
  if (!v25)
  {
    goto LABEL_38;
  }

  v26 = *(v25 - 8);
  v27 = (~(v24 << 32) + v24) ^ ((~(v24 << 32) + v24) >> 22);
  v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
  v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
  v30 = v26 & ((v29 >> 31) ^ v29);
  v31 = *(v25 + 8 * v30);
  if (v31 == v24)
  {
LABEL_37:
    WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_Beginocclusion.isa);
    goto LABEL_24;
  }

  v32 = 1;
  while (v31 != -1)
  {
    v30 = (v30 + v32) & v26;
    v31 = *(v25 + 8 * v30);
    ++v32;
    if (v31 == v24)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (a2 >= *(this + 13) >> 3)
  {
    goto LABEL_37;
  }

  *(this + 2474) = 1;
  *(this + 12) = v24;
  v36 = 8 * a2;
  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 27, &v36, v35);
  if (*(this + 13) != -1 && (WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::contains<(WTF::ShouldValidateKey)1>(*(this + 28), v24) & 1) == 0)
  {
    v33 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
    [v33 setVisibilityResultMode:2 offset:v24];

    v36 = v24;
    WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 28, &v36, v35);
  }

LABEL_24:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v19, v20);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D2F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D2F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D2F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v4);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D2F60(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WebGPU::RenderPassEncoder **WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(WebGPU::RenderPassEncoder **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 2) == 1)
    {
      v2 = result;
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 2);
    }
  }

  return result;
}

void wgpuRenderPassEncoderDraw(WebGPU::RenderPassEncoder *this, unsigned int a2, unsigned int a3, unint64_t a4, const WebGPU::Buffer *a5)
{
  ++*(this + 2);
  v6 = *(this + 23);
  if (*v6 != 1)
  {
    v10 = *(this + 4);
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
        goto LABEL_16;
      }
    }

    v13 = 0;
    v14 = *v10;
    v15 = 1;
    atomic_compare_exchange_strong_explicit(*v10, &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      MEMORY[0x22AA683C0](v14);
    }

    ++*(v14 + 8);
    atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      WTF::Lock::unlockSlow(v14);
    }

LABEL_16:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::draw(uint32_t, uint32_t, uint32_t, uint32_t)"];
    WebGPU::Device::generateAValidationError(v10, v16);

    do
    {
      v18 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v17);
        goto LABEL_22;
      }

      v19 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::Device::~Device(v10, v17);
      bmalloc::api::tzoneFree(v20, v21);
    }

    goto LABEL_22;
  }

  v7 = *(this + 2);
  if (!v7 || !*(v6 + 24))
  {
    goto LABEL_23;
  }

  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  if (*(*(v6 + 192) + 8))
  {
    v9 = *(v6 + 32) == v7;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_30:
    v24 = a5;
    v25 = a3;
    v26 = a2;
    v27 = a4;
    WebGPU::CommandEncoder::~CommandEncoder(v6);
    bmalloc::api::tzoneFree(v28, v29);
    a4 = v27;
    a2 = v26;
    a3 = v25;
    a5 = v24;
    if (v9)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v9 = 0;
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_6:
  *(v6 + 16) = v8;
  if (!v9)
  {
LABEL_22:
    v7 = *(this + 2);
LABEL_23:
    *(this + 2) = 0;

    goto LABEL_24;
  }

LABEL_31:
  v30 = a2 * a3;
  if ((v30 & 0xFFFFFFFF00000000) != 0)
  {
    v31 = *(this + 4);
    goto LABEL_34;
  }

  v31 = *(this + 4);
  if (v30 <= *(v31 + 552))
  {
    v42 = a4;
    v43 = a3;
    v44 = a5;
    v45 = a2;
    if (WebGPU::RenderPassEncoder::executePreDrawCommands(this, 0, 0, a2 == 1, a5))
    {
      WebGPU::RenderPassEncoder::runVertexBufferValidation(this, v45, v43, v42, v44);
      if (-v45 > v42 && -v43 > v44)
      {
        v46 = v43;
        v47 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
        [v47 drawPrimitives:*(this + 11) vertexStart:v42 vertexCount:v45 instanceCount:v46 baseInstance:v44];
      }
    }
  }

  else
  {
LABEL_34:
    while (1)
    {
      v32 = *v31;
      if ((*v31 & 1) == 0)
      {
        break;
      }

      v33 = *v31;
      atomic_compare_exchange_strong_explicit(v31, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v33 == v32)
      {
        goto LABEL_41;
      }
    }

    v34 = 0;
    v35 = *v31;
    v36 = 1;
    atomic_compare_exchange_strong_explicit(*v31, &v34, 1u, memory_order_acquire, memory_order_acquire);
    if (v34)
    {
      MEMORY[0x22AA683C0](v35);
    }

    ++*(v35 + 8);
    atomic_compare_exchange_strong_explicit(v35, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      WTF::Lock::unlockSlow(v35);
    }

LABEL_41:
    WebGPU::Device::loseTheDevice(v31, 0);
    do
    {
      v38 = *v31;
      if ((*v31 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v31, v37);
        goto LABEL_24;
      }

      v39 = *v31;
      atomic_compare_exchange_strong_explicit(v31, &v39, v38 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v39 != v38);
    if (v38 == 3)
    {
      WebGPU::Device::~Device(v31, v37);
      bmalloc::api::tzoneFree(v40, v41);
    }
  }

LABEL_24:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v22, v23);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D3348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D3360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D3374(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderDrawIndexed(WebGPU::RenderPassEncoder *this, WebGPU::RenderPassEncoder *a2, unsigned int a3, unsigned int a4, int a5, MTLIndexType a6)
{
  ++*(this + 2);
  v7 = *(this + 23);
  if (*v7 != 1)
  {
    v14 = *(this + 4);
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
        goto LABEL_16;
      }
    }

    v17 = 0;
    v18 = *v14;
    v19 = 1;
    atomic_compare_exchange_strong_explicit(*v14, &v17, 1u, memory_order_acquire, memory_order_acquire);
    if (v17)
    {
      MEMORY[0x22AA683C0](v18);
    }

    ++*(v18 + 8);
    atomic_compare_exchange_strong_explicit(v18, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != 1)
    {
      WTF::Lock::unlockSlow(v18);
    }

LABEL_16:
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::drawIndexed(uint32_t, uint32_t, uint32_t, int32_t, uint32_t)"];
    WebGPU::Device::generateAValidationError(v14, v20);

    v64 = 0;
    do
    {
      v22 = *v14;
      if ((*v14 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v14, v21);
        goto LABEL_22;
      }

      v23 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v23, v22 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v23 != v22);
    if (v22 == 3)
    {
      WebGPU::Device::~Device(v14, v21);
      bmalloc::api::tzoneFree(v24, v25);
    }

    goto LABEL_22;
  }

  v8 = *(this + 2);
  if (!v8 || !*(v7 + 24))
  {
    goto LABEL_23;
  }

  v12 = *(v7 + 16);
  *(v7 + 16) = v12 + 1;
  if (*(*(v7 + 192) + 8))
  {
    v13 = *(v7 + 32) == v8;
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_31:
    v28 = a6;
    v29 = a4;
    WebGPU::CommandEncoder::~CommandEncoder(v7);
    bmalloc::api::tzoneFree(v30, v31);
    a4 = v29;
    a6 = v28;
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v13 = 0;
  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_6:
  *(v7 + 16) = v12;
  if (!v13)
  {
LABEL_22:
    v8 = *(this + 2);
LABEL_23:
    *(this + 2) = 0;
LABEL_24:

    goto LABEL_25;
  }

LABEL_32:
  v32 = a2 * a3;
  if ((v32 & 0xFFFFFFFF00000000) != 0)
  {
    v33 = *(this + 4);
    goto LABEL_35;
  }

  v33 = *(this + 4);
  if (v32 <= *(v33 + 552))
  {
    v44 = a4;
    v45 = *(this + 7);
    if (*(this + 6))
    {
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

    v47 = (v45 + (a4 << v46));
    if (__CFADD__(v45, a4 << v46))
    {
      v48 = @"Invalid offset to drawIndexed";
LABEL_54:
      WebGPU::RenderPassEncoder::makeInvalid(this, &v48->isa);
      goto LABEL_25;
    }

    v49 = a6;
    v50 = WebGPU::RenderPassEncoder::errorValidatingDrawIndexed(this);
    if (v50)
    {
      v51 = v50;
      WebGPU::RenderPassEncoder::makeInvalid(this, v50);

      goto LABEL_25;
    }

    v52 = a2;
    if ((v44 + a2) << v46 > *(this + 8))
    {
      v48 = @"Values to drawIndexed are invalid";
      goto LABEL_54;
    }

    if (!WebGPU::RenderPassEncoder::runIndexBufferValidation(this, v49, a3))
    {
      goto LABEL_25;
    }

    v66 = 0;
    WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(&v64, this, a2, a3, a5, v49, *(this + 6), v47, &v66);
    v54 = v64;
    if (v64 == 1)
    {
      v55 = WebGPU::RenderPassEncoder::splitRenderPass(this);
    }

    else
    {
      v55 = 0;
    }

    if (!WebGPU::RenderPassEncoder::executePreDrawCommands(this, v55, 0, v66, v53))
    {
      goto LABEL_75;
    }

    if (!a2)
    {
      goto LABEL_75;
    }

    if (!a3)
    {
      goto LABEL_75;
    }

    v56 = *(this + 5);
    if (*(v56 + 44) == 4)
    {
      goto LABEL_75;
    }

    v57 = *(v56 + 8);
    v58 = v57;
    if (v54)
    {
      if (v54 != 3 && v54 != 1)
      {
        goto LABEL_74;
      }

      v59 = [v57 length];
      WebGPU::verticesPerPrimitive(*(this + 11), v60);
      if (v59 >> v46 < v61)
      {
        goto LABEL_74;
      }

      v62 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
      [v62 drawIndexedPrimitives:*(this + 11) indexType:*(this + 6) indexBuffer:v58 indexBufferOffset:0 indirectBuffer:v65 indirectBufferOffset:0];
    }

    else
    {
      v62 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
      [v62 drawIndexedPrimitives:*(this + 11) indexCount:v52 indexType:*(this + 6) indexBuffer:v58 indexBufferOffset:v47 instanceCount:a3 baseVertex:a5 baseInstance:{v49, this}];
    }

LABEL_74:
LABEL_75:
    v8 = v65;
    goto LABEL_24;
  }

LABEL_35:
  while (1)
  {
    v34 = *v33;
    if ((*v33 & 1) == 0)
    {
      break;
    }

    v35 = *v33;
    atomic_compare_exchange_strong_explicit(v33, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v35 == v34)
    {
      goto LABEL_42;
    }
  }

  v36 = 0;
  v37 = *v33;
  v38 = 1;
  atomic_compare_exchange_strong_explicit(*v33, &v36, 1u, memory_order_acquire, memory_order_acquire);
  if (v36)
  {
    MEMORY[0x22AA683C0](v37);
  }

  ++*(v37 + 8);
  atomic_compare_exchange_strong_explicit(v37, &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow(v37);
  }

LABEL_42:
  WebGPU::Device::loseTheDevice(v33, 0);
  v64 = 0;
  do
  {
    v40 = *v33;
    if ((*v33 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v33, v39);
      goto LABEL_25;
    }

    v41 = *v33;
    atomic_compare_exchange_strong_explicit(v33, &v41, v40 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v41 != v40);
  if (v40 == 3)
  {
    WebGPU::Device::~Device(v33, v39);
    bmalloc::api::tzoneFree(v42, v43);
  }

LABEL_25:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v26, v27);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D38C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D38F0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WebGPU::RenderPassEncoder *wgpuRenderPassEncoderDrawIndexedIndirect(WebGPU::RenderPassEncoder *this, atomic_ullong *a2, unint64_t a3)
{
  ++*(this + 2);
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
    v11 = *(this + 23);
    if (*v11 == 1)
    {
      goto LABEL_9;
    }

LABEL_46:
    v34 = *(this + 4);
    while (1)
    {
      v35 = *v34;
      if ((*v34 & 1) == 0)
      {
        break;
      }

      v36 = *v34;
      atomic_compare_exchange_strong_explicit(v34, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v36 == v35)
      {
        goto LABEL_54;
      }
    }

    v37 = 0;
    v38 = *v34;
    v39 = 1;
    atomic_compare_exchange_strong_explicit(*v34, &v37, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_54:
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::drawIndexedIndirect(Buffer &, uint64_t)"];
    WebGPU::Device::generateAValidationError(v34, v40);

    v56[0] = 0;
    do
    {
      v42 = *v34;
      if ((*v34 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v34, v41);
        goto LABEL_60;
      }

      v43 = *v34;
      atomic_compare_exchange_strong_explicit(v34, &v43, v42 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v43 != v42);
    if (v42 == 3)
    {
      WebGPU::Device::~Device(v34, v41);
      bmalloc::api::tzoneFree(v44, v45);
    }

    goto LABEL_60;
  }

LABEL_8:
  v11 = *(this + 23);
  if (*v11 != 1)
  {
    goto LABEL_46;
  }

LABEL_9:
  v12 = *(this + 2);
  if (!v12 || !*(v11 + 24))
  {
    goto LABEL_61;
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
  }

  else
  {
    v14 = 0;
    if (v13)
    {
LABEL_13:
      *(v11 + 16) = v13;
      if (!v14)
      {
        goto LABEL_60;
      }

LABEL_17:
      if ((*(a2 + 44) == 4 || a2[1]) && (v17 = a2[35], *(v17 + 8)) && v17 == *(this + 4))
      {
        WebGPU::Buffer::setCommandEncoder(a2, *(this + 23));
        if (*(a2 + 44) == 4)
        {
          goto LABEL_63;
        }

        v20 = *(this + 5);
        if (v20)
        {
          v12 = *(v20 + 8);
          if ([v12 length])
          {
            if ((a3 & 3) != 0 || (a2[5] & 0x100) == 0 || a3 >= 0xFFFFFFFFFFFFFFECLL || a2[4] < a3 + 20)
            {
              WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_Drawindexedind_0.isa);
            }

            else
            {
              v58 = 0;
              v21 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(this, &v58);
              v57 = 0;
              LODWORD(v53) = *(this + 62);
              WebGPU::RenderPassEncoder::clampIndirectIndexBufferToValidValues(*(this + 5), a2, *(this + 6), *(this + 7), a3, v21, SHIDWORD(v21), *(this + 11), v56, *(this + 4), v53, this, &v57, v54);
              v23 = v56[0];
              v24 = v56[1];
              if (v57 == 1)
              {
                v25 = WebGPU::RenderPassEncoder::splitRenderPass(this);
              }

              else
              {
                v25 = 0;
              }

              if (WebGPU::RenderPassEncoder::executePreDrawCommands(this, v25, a2, v58, v22))
              {
                if (*(*(this + 5) + 44) != 4 && [v23 length] >= 0x14)
                {
                  v27 = *(this + 6);
                  v26 = *(this + 7);
                  if (v26 <= [v12 length])
                  {
                    v28 = [v12 length];
                    v29 = *(this + 7);
                    WebGPU::verticesPerPrimitive(*(this + 11), v30);
                    v32 = 1;
                    if (v27)
                    {
                      v32 = 2;
                    }

                    if ((v28 - v29) >> v32 >= v31)
                    {
                      v33 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
                      [v33 drawIndexedPrimitives:*(this + 11) indexType:*(this + 6) indexBuffer:v12 indexBufferOffset:*(this + 7) indirectBuffer:v23 indirectBufferOffset:v24];
                    }
                  }
                }
              }
            }
          }

          goto LABEL_62;
        }

        v18 = @"drawIndexedIndirect: index buffer is nil";
      }

      else
      {
        v18 = @"drawIndexedIndirect: buffer was invalid";
      }

      WebGPU::RenderPassEncoder::makeInvalid(this, &v18->isa);
      goto LABEL_63;
    }
  }

  WebGPU::CommandEncoder::~CommandEncoder(v11);
  bmalloc::api::tzoneFree(v15, v16);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_60:
  v12 = *(this + 2);
LABEL_61:
  *(this + 2) = 0;
LABEL_62:

  do
  {
LABEL_63:
    v46 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v19);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_70;
    }

    v47 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v47, v46 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v47 != v46);
  if (v46 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v48, v49);
  }

  result = this;
  if (this)
  {
LABEL_70:
    if (*(result + 2) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(result);

      return bmalloc::api::tzoneFree(v51, v52);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_2256D3DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v11 = va_arg(va1, atomic_ullong *);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v10);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256D3E50(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, atomic_ullong *);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256D3E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v10 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v12 = va_arg(va2, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v8);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v9);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

WebGPU::RenderPassEncoder *wgpuRenderPassEncoderDrawIndirect(WebGPU::RenderPassEncoder *this, atomic_ullong *a2, WebGPU::Buffer *a3)
{
  ++*(this + 2);
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
    v46 = a2;
    v11 = *(this + 23);
    if (*v11 == 1)
    {
      goto LABEL_9;
    }

LABEL_37:
    v26 = *(this + 4);
    while (1)
    {
      v27 = *v26;
      if ((*v26 & 1) == 0)
      {
        break;
      }

      v28 = *v26;
      atomic_compare_exchange_strong_explicit(v26, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v28 == v27)
      {
        goto LABEL_45;
      }
    }

    v29 = 0;
    v30 = *v26;
    v31 = 1;
    atomic_compare_exchange_strong_explicit(*v26, &v29, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_45:
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::drawIndirect(Buffer &, uint64_t)", v46];
    WebGPU::Device::generateAValidationError(v26, v32);

    v48[0] = 0;
    do
    {
      v34 = *v26;
      if ((*v26 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v26, v33);
        goto LABEL_51;
      }

      v35 = *v26;
      atomic_compare_exchange_strong_explicit(v26, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v35 != v34);
    if (v34 == 3)
    {
      WebGPU::Device::~Device(v26, v33);
      bmalloc::api::tzoneFree(v36, v37);
    }

    goto LABEL_51;
  }

LABEL_8:
  v46 = a2;
  v11 = *(this + 23);
  if (*v11 != 1)
  {
    goto LABEL_37;
  }

LABEL_9:
  v12 = *(this + 2);
  if (!v12 || !*(v11 + 24))
  {
    goto LABEL_52;
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
      goto LABEL_51;
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
LABEL_51:
    v12 = *(this + 2);
LABEL_52:
    *(this + 2) = 0;

    goto LABEL_53;
  }

LABEL_17:
  if (*(a2 + 44) != 4 && !a2[1] || (v17 = a2[35], !*(v17 + 8)) || v17 != *(this + 4))
  {
    v18 = @"drawIndirect: buffer was invalid";
    goto LABEL_22;
  }

  WebGPU::Buffer::setCommandEncoder(a2, *(this + 23));
  if (*(a2 + 44) == 4)
  {
    goto LABEL_53;
  }

  v18 = @"drawIndirect: validation failed";
  if ((a3 & 3) != 0 || (a2[5] & 0x100) == 0 || a3 >= 0xFFFFFFFFFFFFFFF0 || a2[4] < a3 + 16)
  {
LABEL_22:
    WebGPU::RenderPassEncoder::makeInvalid(this, &v18->isa);
    goto LABEL_53;
  }

  v50 = 0;
  v20 = WebGPU::RenderPassEncoder::computeMininumVertexInstanceCount(this, &v50);
  v49 = 0;
  WebGPU::RenderPassEncoder::clampIndirectBufferToValidValues(a2, a3, *(this + 62), &v49, v20, HIDWORD(v20), *(this + 4), this, v48, v45);
  if (v49 == 1)
  {
    v22 = WebGPU::RenderPassEncoder::splitRenderPass(this);
  }

  else
  {
    v22 = 0;
  }

  v23 = WebGPU::RenderPassEncoder::executePreDrawCommands(this, v22, a2, v50, v21);
  v24 = v48[0];
  if (v23 && [v48[0] length] >= 0x10 && *(a2 + 44) != 4)
  {
    v25 = WebGPU::RenderPassEncoder::renderCommandEncoder(this);
    [v25 drawPrimitives:*(this + 11) indirectBuffer:v24 indirectBufferOffset:v48[1]];
  }

  do
  {
LABEL_53:
    v38 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v19);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_58;
    }

    v39 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v39, v38 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v39 != v38);
  if (v38 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v40, v41);
  }

  result = this;
  if (this)
  {
LABEL_58:
    if (*(result + 2) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(result);

      return bmalloc::api::tzoneFree(v43, v44);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_2256D42A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D42BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, atomic_ullong *);

  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256D42EC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, atomic_ullong *);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256D4308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v8 = va_arg(va2, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v4);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderEndOcclusionQuery(WebGPU::RenderPassEncoder *this)
{
  ++*(this + 2);
  v2 = *(this + 23);
  if (*v2 != 1)
  {
    v7 = *(this + 4);
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::endOcclusionQuery()"];
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
    v4 = (this + 16);
    goto LABEL_23;
  }

  v4 = (this + 16);
  v3 = *(this + 2);
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
  if (*(this + 2474))
  {
    *(this + 2474) = 0;
    if (*(this + 13) != -1)
    {
      if (*(*(this + 23) + 172))
      {
        v23 = 0;
      }

      else
      {
        v23 = *v4;
      }

      [v23 setVisibilityResultMode:0 offset:*(this + 12)];
    }
  }

  else
  {
    WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_Endocclusionqu.isa);
  }

LABEL_25:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v19, v20);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D4580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D45A0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderEnd(uint64_t a1)
{
  ++*(a1 + 8);
  if (*(a1 + 2475) == 1)
  {
    v2 = *(a1 + 32);
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

    v12 = 0;
    v13 = *v2;
    v14 = 1;
    atomic_compare_exchange_strong_explicit(*v2, &v12, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_20:
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as pass is already ended", "void WebGPU::RenderPassEncoder::endPass()"];
    WebGPU::Device::generateAValidationError(v2, v15);

    v53[0] = 0;
    do
    {
      v17 = *v2;
      if ((*v2 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v2, v16);
        goto LABEL_44;
      }

      v18 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v18, v17 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v18 != v17);
    if (v17 == 3)
    {
      WebGPU::Device::~Device(v2, v16);
      bmalloc::api::tzoneFree(v19, v20);
    }

    goto LABEL_44;
  }

  *(a1 + 2475) = 1;
  v5 = *(a1 + 184);
  if (*v5 == 1)
  {
    v6 = *(a1 + 16);
    if (!v6 || !*(v5 + 24))
    {
      goto LABEL_43;
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
    }

    else
    {
      v8 = 0;
      if (v7)
      {
LABEL_11:
        *(v5 + 16) = v7;
        if (v8)
        {
LABEL_12:
          v9 = *(a1 + 184);
          ++*(v9 + 4);
          v55 = v9;
          if (*(a1 + 24) || (*(a1 + 2474) & 1) != 0 || !v6)
          {
            WebGPU::CommandEncoder::endEncoding(v9, v6);
            v10 = *(a1 + 16);
            *(a1 + 16) = 0;

            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"RenderPassEncoder.endPass failure, m_debugGroupStackSize = %llu, m_occlusionQueryActive = %d, isValid = %d, error = %@", *(a1 + 24), *(a1 + 2474), v6 != 0, *(a1 + 2280), a1];
            WebGPU::CommandEncoder::makeInvalid(v9, v11);

            v55 = 0;
LABEL_14:
            if (*(v9 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v9);
              bmalloc::api::tzoneFree(v48, v49);
            }

            else
            {
              --*(v9 + 4);
            }

            goto LABEL_44;
          }

          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3321888768;
          v53[2] = ___ZN6WebGPU17RenderPassEncoder7endPassEv_block_invoke;
          v53[3] = &__block_descriptor_48_ea8_40c96_ZTSN3WTF3RefIN6WebGPU14CommandEncoderENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE_e5_v8__0l;
          v53[4] = a1;
          ++*(v9 + 4);
          v54 = v9;
          v38 = MEMORY[0x22AA68A80](v53);
          if ([*(a1 + 256) count] || *(a1 + 264) && ((*(a1 + 2472) & 1) != 0 || *(a1 + 2473) == 1))
          {
            v38[2](v38);
            WebGPU::CommandEncoder::runClearEncoder(v9, *(a1 + 256), *(a1 + 264), *(a1 + 2472), *(a1 + 2473), *(a1 + 2408), 0, *(a1 + 2384));
          }

          else
          {
            v38[2](v38);
          }

          v39 = *(a1 + 16);
          *(a1 + 16) = 0;

          if (*v9 != 2)
          {
            *v9 = 0;
            WebGPU::CommandEncoder::setExistingEncoder(v9, 0);
          }

          v40 = *(a1 + 216);
          if (!v40 || !*(v40 - 12) || *(a1 + 104) == -1)
          {
LABEL_88:

            WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&v54);
            v55 = 0;
            if (!v9)
            {
              goto LABEL_44;
            }

            goto LABEL_14;
          }

          v42 = WebGPU::CommandEncoder::ensureBlitCommandEncoder(v9);
          v43 = *(a1 + 216);
          if (v43)
          {
            v44 = *(v43 - 4);
            v45 = (v43 + 8 * v44);
            if (*(v43 - 12))
            {
              if (!v44)
              {
                v50 = 0;
                v47 = *(a1 + 216);
                goto LABEL_76;
              }

              v46 = 8 * v44;
              v47 = *(a1 + 216);
              while (*v47 >= 0xFFFFFFFFFFFFFFFELL)
              {
                ++v47;
                v46 -= 8;
                if (!v46)
                {
                  v47 = v45;
                  break;
                }
              }

LABEL_72:
              if (!v43)
              {
                v51 = 0;
LABEL_77:
                if (v51 != v47)
                {
                  do
                  {
                    [v42 fillBuffer:*(a1 + 232) range:*v47 value:{8, 0}];
                    do
                    {
                      ++v47;
                    }

                    while (v47 != v45 && *v47 >= 0xFFFFFFFFFFFFFFFELL);
                  }

                  while (v47 != v51);
                  v43 = *(a1 + 216);
                }

                if (v43)
                {
                  *(a1 + 216) = 0;
                  WTF::fastFree((v43 - 16), v41);
                  v9 = v55;
                }

                WebGPU::CommandEncoder::finalizeBlitCommandEncoder(v9);

                goto LABEL_88;
              }

              v50 = *(v43 - 4);
LABEL_76:
              v51 = (v43 + 8 * v50);
              goto LABEL_77;
            }
          }

          else
          {
            v45 = 0;
            v44 = 0;
          }

          v47 = v45;
          v45 = (v43 + 8 * v44);
          goto LABEL_72;
        }

LABEL_43:
        *(a1 + 16) = 0;

        goto LABEL_44;
      }
    }

    WebGPU::CommandEncoder::~CommandEncoder(v5);
    bmalloc::api::tzoneFree(v34, v35);
    v6 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

  v21 = *(a1 + 32);
  while (1)
  {
    v22 = *v21;
    if ((*v21 & 1) == 0)
    {
      break;
    }

    v23 = *v21;
    atomic_compare_exchange_strong_explicit(v21, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v23 == v22)
    {
      goto LABEL_34;
    }
  }

  v24 = 0;
  v25 = *v21;
  v26 = 1;
  atomic_compare_exchange_strong_explicit(*v21, &v24, 1u, memory_order_acquire, memory_order_acquire);
  if (v24)
  {
    MEMORY[0x22AA683C0](v25);
  }

  ++*(v25 + 8);
  atomic_compare_exchange_strong_explicit(v25, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    WTF::Lock::unlockSlow(v25);
  }

LABEL_34:
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::endPass()"];
  WebGPU::Device::generateAValidationError(v21, v27);

  v53[0] = 0;
  do
  {
    v29 = *v21;
    if ((*v21 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v21, v28);
      goto LABEL_40;
    }

    v30 = *v21;
    atomic_compare_exchange_strong_explicit(v21, &v30, v29 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v30 != v29);
  if (v29 == 3)
  {
    WebGPU::Device::~Device(v21, v28);
    bmalloc::api::tzoneFree(v31, v32);
  }

LABEL_40:
  v33 = *(a1 + 16);
  *(a1 + 16) = 0;

LABEL_44:
  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);

    bmalloc::api::tzoneFree(v36, v37);
  }

  else
  {
    --*(a1 + 8);
  }
}

void sub_2256D4B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D4B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v6 + 40));
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v7 - 72));
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D4BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref((v5 - 72));
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D4C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v7);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderExecuteBundles(uint64_t a1, uint64_t a2, WebGPU::RenderBundle **a3)
{
  v306[16] = *MEMORY[0x277D85DE8];
  v277 = 0;
  v278 = 0;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * a2;
    while (1)
    {
      v10 = *a3;
      *v10 = **a3 + 1;
      v306[0] = v10;
      if (v6 == v278)
      {
        v11 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v277, v6 + 1, v306);
        v12 = HIDWORD(v278);
        v5 = v277;
        v13 = *v11;
        *v11 = 0;
        *(v5 + v12) = v13;
        v6 = v12 + 1;
        HIDWORD(v278) = v6;
        v14 = v306[0];
        v306[0] = 0;
        if (v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v306[0] = 0;
        *(v5 + v6++) = v10;
        HIDWORD(v278) = v6;
        v14 = v306[0];
        v306[0] = 0;
        if (v14)
        {
LABEL_9:
          if (*v14 == 1)
          {
            WebGPU::RenderBundle::~RenderBundle(v14);
            bmalloc::api::tzoneFree(v8, v9);
          }

          else
          {
            --*v14;
          }
        }
      }

      ++a3;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_12:
  ++*(a1 + 8);
  v15 = *(a1 + 184);
  if (*v15 != 1)
  {
    v19 = *(a1 + 32);
    while (1)
    {
      v20 = *v19;
      if ((*v19 & 1) == 0)
      {
        break;
      }

      v21 = *v19;
      atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_27;
      }
    }

    v22 = 0;
    v23 = *v19;
    v24 = 1;
    atomic_compare_exchange_strong_explicit(*v19, &v22, 1u, memory_order_acquire, memory_order_acquire);
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
    v306[0] = v19;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::executeBundles(Vector<Ref<RenderBundle>> &&)"];
    WebGPU::Device::generateAValidationError(v19, v25);

    v306[0] = 0;
    do
    {
      v27 = *v19;
      if ((*v19 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v19, v26);
        goto LABEL_33;
      }

      v28 = *v19;
      atomic_compare_exchange_strong_explicit(v19, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v27);
    if (v27 == 3)
    {
      WebGPU::Device::~Device(v19, v26);
      bmalloc::api::tzoneFree(v29, v30);
    }

    goto LABEL_33;
  }

  v16 = *(a1 + 16);
  if (!v16 || !*(v15 + 24))
  {
    goto LABEL_34;
  }

  v17 = *(v15 + 16);
  *(v15 + 16) = v17 + 1;
  if (*(*(v15 + 192) + 8))
  {
    v18 = *(v15 + 32) == v16;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_49:
    WebGPU::CommandEncoder::~CommandEncoder(v15);
    bmalloc::api::tzoneFree(v41, v42);
    if (v18)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v18 = 0;
  if (!v17)
  {
    goto LABEL_49;
  }

LABEL_17:
  *(v15 + 16) = v17;
  if (!v18)
  {
LABEL_33:
    v16 = *(a1 + 16);
LABEL_34:
    *(a1 + 16) = 0;
    goto LABEL_35;
  }

LABEL_50:
  v306[0] = *(a1 + 96);
  WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((a1 + 216), v306);
  if (*(*(a1 + 184) + 172))
  {
    v43 = 0;
  }

  else
  {
    v43 = *(a1 + 16);
  }

  v44 = v43;
  WebGPU::RenderPassEncoder::setCachedRenderPassState(a1, v44);
  if (*(a1 + 2464) != 1)
  {
    v46 = 1.0;
    v45 = 0.0;
    if (v6)
    {
      goto LABEL_55;
    }

LABEL_281:
    v16 = v44;
    goto LABEL_283;
  }

  v45 = *(a1 + 2448);
  v46 = *(a1 + 2456);
  if (!v6)
  {
    goto LABEL_281;
  }

LABEL_55:
  v264 = (v5 + 8 * v6);
  do
  {
    v47 = *v5;
    *v47 = **v5 + 1;
    v290 = v47;
    if ((*(v47 + 2) || *(v47 + 3)) && (v48 = *(v47 + 1), *(v48 + 8)) && v48 == *(a1 + 32))
    {
      if (*(v47 + 144) == 1)
      {
        v55 = *(a1 + 184);
        ++*(v55 + 4);
        v291 = v55;
        WebGPU::CommandEncoder::makeSubmitInvalid(v55, 0);
        if (*(v55 + 4) == 1)
        {
          WebGPU::CommandEncoder::~CommandEncoder(v55);
          bmalloc::api::tzoneFree(v57, v58);
        }

        else
        {
          --*(v55 + 4);
        }

        goto LABEL_61;
      }

      WebGPU::RenderBundle::updateMinMaxDepths(v47, v45, v46);
      if (WebGPU::RenderBundle::validateRenderPass(v47, *(a1 + 112), *(a1 + 113), a1 + 272, a1 + 384, (a1 + 400)))
      {
        if (*(*(a1 + 184) + 172))
        {
          v56 = 0;
        }

        else
        {
          v56 = *(a1 + 16);
        }

        v263 = v56;

        v59 = *(a1 + 184);
        ++*(v59 + 16);
        v291 = v59;
        v47 = v290;
        ++*v290;
        v289 = v47;
        v60 = WTF::fastMalloc(0x10);
        *v60 = &unk_2838D3508;
        *(v60 + 1) = v47;
        v289 = 0;
        v304 = v60;
        v61 = *(v59 + 140);
        v44 = v263;
        if (v61 == *(v59 + 136))
        {
          v62 = WTF::Vector<WTF::Function<BOOL ()(WebGPU::CommandBuffer &,WebGPU::CommandEncoder &)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v59 + 128, v61 + 1, &v304);
          v61 = *(v59 + 140);
          v63 = (*(v59 + 128) + 8 * v61);
          v60 = *v62;
        }

        else
        {
          v63 = (*(v59 + 128) + 8 * v61);
          v62 = &v304;
        }

        *v62 = 0;
        *v63 = v60;
        *(v59 + 140) = v61 + 1;
        v64 = v304;
        v304 = 0;
        if (v64)
        {
          (*(*v64 + 8))(v64);
        }

        if (*(v59 + 16) == 1)
        {
          WebGPU::CommandEncoder::~CommandEncoder(v59);
          bmalloc::api::tzoneFree(v65, v66);
        }

        else
        {
          --*(v59 + 16);
        }

        if (*(v47 + 2))
        {
          goto LABEL_87;
        }

        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;
        obj = *(v47 + 3);
        v72 = [obj countByEnumeratingWithState:&v285 objects:v306 count:16];
        if (!v72)
        {

          v44 = v263;
LABEL_87:
          v67 = v47[32];
          v68 = *(a1 + 2392);
          v69 = __CFADD__(v68, v67);
          v70 = v68 + v67;
          if (v69 || v70 > *(a1 + 2400))
          {
            WebGPU::RenderPassEncoder::makeInvalid(a1, &cfstr_MDrawcountMMax.isa);
            v71 = v47[11];
            if (v71)
            {
              goto LABEL_220;
            }
          }

          else
          {
            *(a1 + 2392) = v70;
            v71 = v47[11];
            if (v71)
            {
LABEL_220:
              v161 = *(v47 + 4);
              v276 = v161 + 48 * v71;
              do
              {
                if ((*(v161 + 40) & 3) != 0 && *(v161 + 12))
                {
                  if (*(*(a1 + 184) + 172))
                  {
                    v162 = 0;
                  }

                  else
                  {
                    v162 = *(a1 + 16);
                  }

                  v163 = v162;
                  v164 = *(v161 + 12);
                  if (!v164)
                  {
                    goto LABEL_334;
                  }

                  v165 = v163;
                  [v163 useResources:*v161 count:v164 usage:*(v161 + 32) stages:*(v161 + 40)];
                }

                v166 = *(v161 + 12);
                if (v166)
                {
                  v167 = 0;
                  v168 = 0;
                  while (v168 < *(v161 + 28))
                  {
                    v169 = *(v161 + 16) + v167;
                    v170 = (v169 + 8);
                    WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, v169 + 8, *v169);
                    v172 = *(v169 + 16);
                    if (v172 == 255)
                    {
                      v173 = -1;
                    }

                    else
                    {
                      v173 = *(v169 + 16);
                    }

                    if (v173 == 2)
                    {
                      if (v172 != 2)
                      {
                        goto LABEL_333;
                      }

                      if (*v170)
                      {
                        WebGPU::ExternalTexture::setCommandEncoder(*v170, *(a1 + 184));
                      }
                    }

                    else if (v173 == 1)
                    {
                      if (v172 != 1)
                      {
                        goto LABEL_333;
                      }

                      v174 = *v170;
                      if (*v170)
                      {
                        v175 = *(a1 + 184);
                        v176 = *(v175 + 200);
                        v291 = v176;
                        v177 = *(v174 + 29);
                        if (v177 == *(v174 + 28))
                        {
                          v178 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v174 + 104, v177 + 1, &v291);
                          v177 = *(v174 + 29);
                          *(*(v174 + 13) + 8 * v177) = *v178;
                        }

                        else
                        {
                          *(*(v174 + 13) + 8 * v177) = v176;
                        }

                        *(v174 + 29) = v177 + 1;
                        WebGPU::CommandEncoder::addTexture(v175, *(v174 + 12));
                        v179 = *(v174 + 12);
                        if (*(v179 + 104) == 1 && (*(v179 + 105) & 1) == 0)
                        {
                          WebGPU::CommandEncoder::makeSubmitInvalid(v175, 0);
                        }
                      }
                    }

                    else
                    {
                      if (*(v169 + 16))
                      {
LABEL_333:
                        mpark::throw_bad_variant_access(v171);
                      }

                      if (*v170)
                      {
                        WebGPU::Buffer::setCommandEncoder(*v170, *(a1 + 184));
                      }
                    }

                    ++v168;
                    v167 += 40;
                    if (v166 == v168)
                    {
                      goto LABEL_221;
                    }
                  }

LABEL_334:
                  __break(0xC471u);
                  JUMPOUT(0x2256D6734);
                }

LABEL_221:
                v161 += 48;
              }

              while (v161 != v276);
            }
          }

          v281 = 0u;
          v282 = 0u;
          v279 = 0u;
          v280 = 0u;
          v180 = *(v47 + 3);
          v181 = [v180 countByEnumeratingWithState:&v279 objects:v305 count:16];
          if (v181)
          {
            v182 = *v280;
            do
            {
              v183 = 0;
              v184 = v44;
              do
              {
                if (*v280 != v182)
                {
                  objc_enumerationMutation(v180);
                }

                if (*(*(a1 + 184) + 172))
                {
                  v185 = 0;
                }

                else
                {
                  v185 = *(a1 + 16);
                }

                v186 = *(*(&v279 + 1) + 8 * v183);
                v44 = v185;

                v187 = [v186 depthStencilState];
                if (v187)
                {
                  [v44 setDepthStencilState:v187];
                }

                [v44 setCullMode:{objc_msgSend(v186, "cullMode")}];
                [v44 setFrontFacingWinding:{objc_msgSend(v186, "frontFace")}];
                [v44 setDepthClipMode:{objc_msgSend(v186, "depthClipMode")}];
                [v186 depthBias];
                v189 = v188;
                [v186 depthBiasSlopeScale];
                v191 = v190;
                [v186 depthBiasClamp];
                LODWORD(v193) = v192;
                LODWORD(v194) = v189;
                LODWORD(v195) = v191;
                [v44 setDepthBias:v194 slopeScale:v195 clamp:v193];
                v196 = [v186 indirectCommandBuffer];
                if (*(*(a1 + 184) + 172))
                {
                  v197 = 0;
                }

                else
                {
                  v197 = *(a1 + 16);
                }

                v198 = v197;
                [v198 executeCommandsInBuffer:v196 withRange:{0, objc_msgSend(v196, "size")}];

                ++v183;
                v184 = v44;
              }

              while (v181 != v183);
              v181 = [v180 countByEnumeratingWithState:&v279 objects:v305 count:16];
            }

            while (v181);
            v47 = v290;
          }

          *(a1 + 2476) = 1;
          v199 = *(v47 + 2);
          if (v199)
          {
            ++*v199;
            WebGPU::RenderBundleEncoder::replayCommands(v199, a1);
            if (*v199 == 1)
            {
              WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v199);
              bmalloc::api::tzoneFree(v200, v201);
            }

            else
            {
              --*v199;
            }
          }

          v52 = 0;
          *(a1 + 2476) = 0;
          v290 = 0;
          goto LABEL_62;
        }

        v262 = 0;
        v260 = *v286;
        while (2)
        {
          v259 = v72;
          v73 = 0;
LABEL_95:
          if (*v286 != v260)
          {
            objc_enumerationMutation(obj);
          }

          v275 = *(*(&v285 + 1) + 8 * v73);
          v74 = *[v275 minVertexCountForDrawCommand];
          v261 = v73;
          if (v74)
          {
            v75 = *(v74 - 4);
            v76 = v74 + 88 * v75;
            if (*(v74 - 12))
            {
              if (v75)
              {
                v77 = 88 * v75;
                v78 = v74;
                while (*v78 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  v78 += 88;
                  v77 -= 88;
                  if (!v77)
                  {
                    v78 = v76;
                    break;
                  }
                }

LABEL_106:
                if (v74)
                {
                  v79 = *(v74 - 4);
                  goto LABEL_109;
                }
              }

              else
              {
                v79 = 0;
                v78 = v74;
LABEL_109:
                v74 += 88 * v79;
              }

              v265 = v74;
              if (v78 == v74)
              {
LABEL_94:
                v73 = v261 + 1;
                if (v261 + 1 == v259)
                {
                  v72 = [obj countByEnumeratingWithState:&v285 objects:v306 count:16];
                  if (!v72)
                  {
                    v52 = 0;
LABEL_214:

                    if (((v52 == 0) & v262) == 1)
                    {
                      v157 = v263;
                      v158 = v157;
                      v159 = *(a1 + 252) + 1;
                      *(a1 + 252) = v159;
                      if (v159 < *(*(a1 + 32) + 280))
                      {
                        [v157 memoryBarrierWithScope:1 afterStages:1 beforeStages:1];
                      }

                      WebGPU::RenderPassEncoder::splitRenderPass(a1);
                      if (*(*(a1 + 184) + 172))
                      {
                        v160 = 0;
                      }

                      else
                      {
                        v160 = *(a1 + 16);
                      }

                      v44 = v160;

                      v47 = v290;
                    }

                    else
                    {
                      v47 = v290;
                      v16 = v263;
                      if (v52)
                      {
                        v290 = 0;
                        v44 = v263;
                        if (!v47)
                        {
                          goto LABEL_66;
                        }

                        goto LABEL_62;
                      }

                      v44 = v263;
                    }

                    goto LABEL_87;
                  }

                  continue;
                }

                goto LABEL_95;
              }

              while (2)
              {
                v80 = *(v78 + 8);
                if (!v80)
                {
                  goto LABEL_120;
                }

                while (1)
                {
                  v81 = *v80;
                  if ((*v80 & 1) == 0)
                  {
                    break;
                  }

                  v82 = *v80;
                  atomic_compare_exchange_strong_explicit(v80, &v82, v81 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v82 == v81)
                  {
                    goto LABEL_120;
                  }
                }

                v83 = 0;
                v84 = *v80;
                atomic_compare_exchange_strong_explicit(*v80, &v83, 1u, memory_order_acquire, memory_order_acquire);
                if (v83)
                {
                  MEMORY[0x22AA683C0](v84);
                }

                ++*(v84 + 8);
                v85 = 1;
                atomic_compare_exchange_strong_explicit(v84, &v85, 0, memory_order_release, memory_order_relaxed);
                if (v85 == 1)
                {
LABEL_120:
                  v86 = *(v78 + 80);
                  v88 = v86 == 2 || v86 == 4;
                  if (v80)
                  {
                    goto LABEL_127;
                  }

                  do
                  {
LABEL_202:
                    v78 += 88;
                  }

                  while (v78 != v76 && *v78 >= 0xFFFFFFFFFFFFFFFELL);
                  if (v78 == v265)
                  {
                    goto LABEL_94;
                  }

                  continue;
                }

                break;
              }

              WTF::Lock::unlockSlow(v84);
              v153 = *(v78 + 80);
              v88 = v153 == 2 || v153 == 4;
LABEL_127:
              v272 = *(v78 + 16);
              v271 = *(v78 + 76);
              v267 = *(v78 + 60);
              v268 = *(v78 + 64);
              v269 = *(v78 + 68);
              v89 = *(v78 + 40);
              v270 = *(v78 + 44);
              v273 = *(v78 + 72);
              v274 = v88;
              if (v89 == -1)
              {
                v90 = ~v88;
              }

              else
              {
                v90 = v89 + v273;
              }

              v266 = v90;
              v91 = [v275 indirectCommandBuffer];
              v92 = [v91 gpuResourceID];
              LODWORD(v291) = v269;
              LODWORD(v292) = v267;
              v293 = v266;
              v295 = v268;
              LODWORD(v297) = v271;
              v298 = v273;
              v300 = v270;
              LODWORD(v302) = v274 | (2 * v272);
              v303 = v92;
              if (!*(v80 + 272))
              {
LABEL_142:

                goto LABEL_143;
              }

              v93 = WTF::HashTable<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL>>,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>( (v80 + 272),  &v291);
              v94 = v93;
              v95 = *(v80 + 272);
              if (v93)
              {
                if (v95)
                {
                  if (v93 == v95 + 80 * *(v95 - 4))
                  {
                    goto LABEL_142;
                  }

LABEL_137:
                  if ((*(v93 + 72) & 1) == 0)
                  {
                    goto LABEL_142;
                  }

                  v96 = [v275 indirectCommandBuffer];
                  OOB = WebGPU::Buffer::didReadOOB(v80, v96);

                  if ((OOB & 1) == 0)
                  {
                    v98 = *(a1 + 184);
                    ++*(v98 + 16);
                    v289 = v98;
                    v304 = *(v98 + 200);
                    WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v80 + 312), &v304, &v291);
                    WebGPU::CommandEncoder::skippedDrawIndexedValidation(v98, [*(v80 + 8) gpuAddress], v94);
                    if (*(v98 + 16) == 1)
                    {
                      WebGPU::CommandEncoder::~CommandEncoder(v98);
                      bmalloc::api::tzoneFree(v151, v152);
                    }

                    else
                    {
                      --*(v98 + 16);
                    }

                    v52 = 7;
                    goto LABEL_194;
                  }

LABEL_143:
                  v100 = *(a1 + 32);
                  while (1)
                  {
                    v101 = *v100;
                    if ((*v100 & 1) == 0)
                    {
                      break;
                    }

                    v102 = *v100;
                    atomic_compare_exchange_strong_explicit(v100, &v102, v101 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v102 == v101)
                    {
                      goto LABEL_151;
                    }
                  }

                  v103 = 0;
                  v104 = *v100;
                  atomic_compare_exchange_strong_explicit(*v100, &v103, 1u, memory_order_acquire, memory_order_acquire);
                  if (v103)
                  {
                    MEMORY[0x22AA683C0](v104);
                  }

                  ++*(v104 + 8);
                  v105 = 1;
                  atomic_compare_exchange_strong_explicit(v104, &v105, 0, memory_order_release, memory_order_relaxed);
                  if (v105 != 1)
                  {
                    WTF::Lock::unlockSlow(v104);
                  }

LABEL_151:
                  v291 = v100;
                  v107 = WebGPU::Device::icbCommandClampPipeline(v100, *(v78 + 16), *(a1 + 248));
                  v291 = 0;
                  do
                  {
                    v108 = *v100;
                    if ((*v100 & 1) == 0)
                    {
                      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v100, v106);
                      goto LABEL_157;
                    }

                    v109 = *v100;
                    atomic_compare_exchange_strong_explicit(v100, &v109, v108 - 2, memory_order_relaxed, memory_order_relaxed);
                  }

                  while (v109 != v108);
                  if (v108 == 3)
                  {
                    WebGPU::Device::~Device(v100, v106);
                    bmalloc::api::tzoneFree(v110, v111);
                  }

LABEL_157:
                  v112 = [v275 indirectCommandBufferContainer];
                  v113 = v107;
                  if (!v113)
                  {

                    v52 = 1;
                    goto LABEL_194;
                  }

                  v114 = v113;
                  [v263 setRenderPipelineState:v113];

                  v115 = v263;
                  [v115 setVertexBytes:v78 + 32 length:56 atIndex:0];
                  *(a1 + 1152) = 0;
                  *(a1 + 1160) = 0;

                  v116 = *(a1 + 184);
                  v117 = v112;
                  if (v117)
                  {
                    [*(v116 + 104) addObject:v117];
                  }

                  WebGPU::RenderPassEncoder::setVertexBuffer(a1, v115, v117, 0, 1u);
                  v118 = *(a1 + 184);
                  v119 = *(v80 + 8);
                  if (v119)
                  {
                    [*(v118 + 104) addObject:v119];
                  }

                  v120 = *(v80 + 8);
                  [v115 useResource:v120 usage:1 stages:1];

                  v121 = *(a1 + 184);
                  v122 = [v275 indirectCommandBuffer];
                  if (v122)
                  {
                    [*(v121 + 88) addObject:v122];
                  }

                  v123 = [v275 indirectCommandBuffer];
                  [v115 useResource:v123 usage:3 stages:1];

                  v124 = *(a1 + 184);
                  v125 = [v275 outOfBoundsReadFlag];
                  if (v125)
                  {
                    [*(v124 + 104) addObject:v125];
                  }

                  v126 = [v275 outOfBoundsReadFlag];
                  [v115 useResource:v126 usage:2 stages:1];

                  [v115 drawPrimitives:0 vertexStart:0 vertexCount:*(v78 + 60)];
                  v127 = *(*(a1 + 32) + 16);
                  atomic_fetch_add(v127, 1u);
                  v291 = v127;
                  v128 = *(a1 + 184);
                  ++*(v128 + 4);
                  v304 = v128;
                  v129 = WebGPU::Queue::retainCounterSampleBuffer(v127, v128);
                  if (*(v128 + 4) == 1)
                  {
                    WebGPU::CommandEncoder::~CommandEncoder(v128);
                    bmalloc::api::tzoneFree(v130, v131);
                    v291 = 0;
                    if (!v127)
                    {
                      goto LABEL_173;
                    }
                  }

                  else
                  {
                    --*(v128 + 4);
                    v291 = 0;
                    if (!v127)
                    {
                      goto LABEL_173;
                    }
                  }

                  if (atomic_fetch_add(v127, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v127);
                    WebGPU::Queue::~Queue(v127);
                    bmalloc::api::tzoneFree(v155, v156);
                  }

LABEL_173:
                  v132 = *(a1 + 184);
                  ++*(v132 + 16);
                  v304 = v132;
                  v133 = *(v132 + 24);
                  v283[0] = MEMORY[0x277D85DD0];
                  v283[1] = 3321888768;
                  v283[2] = ___ZN6WebGPU17RenderPassEncoder14executeBundlesEON3WTF6VectorINS1_3RefINS_12RenderBundleENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke;
                  v283[3] = &__block_descriptor_104_ea8_32c205_ZTSKZN6WebGPU17RenderPassEncoder14executeBundlesEON3WTF6VectorINS1_3RefINS_12RenderBundleENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEE3__1_e28_v16__0___MTLCommandBuffer__8l;
                  v291 = v129;
                  v134 = *(a1 + 32);
                  while (1)
                  {
                    v135 = *v134;
                    if ((*v134 & 1) == 0)
                    {
                      break;
                    }

                    v136 = *v134;
                    atomic_compare_exchange_strong_explicit(v134, &v136, v135 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v136 == v135)
                    {
                      goto LABEL_181;
                    }
                  }

                  v137 = 0;
                  v138 = *v134;
                  atomic_compare_exchange_strong_explicit(*v134, &v137, 1u, memory_order_acquire, memory_order_acquire);
                  if (v137)
                  {
                    MEMORY[0x22AA683C0](v138);
                  }

                  ++*(v138 + 8);
                  v139 = 1;
                  atomic_compare_exchange_strong_explicit(v138, &v139, 0, memory_order_release, memory_order_relaxed);
                  if (v139 != 1)
                  {
                    WTF::Lock::unlockSlow(v138);
                  }

LABEL_181:
                  v292 = v134;
                  v293 = v269;
                  v294 = v267;
                  v295 = v266;
                  v296 = v268;
                  v297 = v272;
                  v298 = v271;
                  v299 = v273;
                  v300 = v270;
                  v301 = v274;
                  while (1)
                  {
                    v140 = *v80;
                    if ((*v80 & 1) == 0)
                    {
                      break;
                    }

                    v141 = *v80;
                    atomic_compare_exchange_strong_explicit(v80, &v141, v140 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v141 == v140)
                    {
                      goto LABEL_189;
                    }
                  }

                  v142 = 0;
                  v143 = *v80;
                  atomic_compare_exchange_strong_explicit(*v80, &v142, 1u, memory_order_acquire, memory_order_acquire);
                  if (v142)
                  {
                    MEMORY[0x22AA683C0](v143);
                  }

                  ++*(v143 + 8);
                  v144 = 1;
                  atomic_compare_exchange_strong_explicit(v143, &v144, 0, memory_order_release, memory_order_relaxed);
                  if (v144 != 1)
                  {
                    WTF::Lock::unlockSlow(v143);
                  }

LABEL_189:
                  v302 = v80;
                  v303 = v275;
                  WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::$_1(v284, &v291);
                  [v133 addCompletedHandler:v283];
                  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(&v291);

                  if (v304)
                  {
                    if (*(v304 + 4) == 1)
                    {
                      WebGPU::CommandEncoder::~CommandEncoder(v304);
                      bmalloc::api::tzoneFree(v145, v146);
                    }

                    else
                    {
                      --*(v304 + 4);
                    }
                  }

                  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(v284);

                  v52 = 0;
                  v262 = 1;
                  do
                  {
LABEL_194:
                    v147 = *v80;
                    if ((*v80 & 1) == 0)
                    {
                      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v80, v99);
                      if (v52 == 7)
                      {
                        goto LABEL_202;
                      }

                      goto LABEL_201;
                    }

                    v148 = *v80;
                    atomic_compare_exchange_strong_explicit(v80, &v148, v147 - 2, memory_order_relaxed, memory_order_relaxed);
                  }

                  while (v148 != v147);
                  if (v147 == 3)
                  {
                    WebGPU::Buffer::~Buffer(v80);
                    bmalloc::api::tzoneFree(v149, v150);
                  }

                  if (v52 == 7)
                  {
                    goto LABEL_202;
                  }

LABEL_201:
                  if (v52)
                  {
                    goto LABEL_214;
                  }

                  goto LABEL_202;
                }
              }

              else if (v95)
              {
                goto LABEL_142;
              }

              if (!v93)
              {
                goto LABEL_142;
              }

              goto LABEL_137;
            }
          }

          else
          {
            v76 = 0;
            v75 = 0;
          }

          break;
        }

        v78 = v76;
        v76 = v74 + 88 * v75;
        goto LABEL_106;
      }

      WebGPU::RenderPassEncoder::makeInvalid(a1, &cfstr_Executebundles_0.isa);
    }

    else
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = *(v47 + 15);
      v51 = [v49 stringWithFormat:@"executeBundles: render bundle is not valid, reason = %@", v50];
      WebGPU::RenderPassEncoder::makeInvalid(a1, v51);
    }

LABEL_61:
    v290 = 0;
    v52 = 1;
LABEL_62:
    if (*v47 == 1)
    {
      WebGPU::RenderBundle::~RenderBundle(v47);
      bmalloc::api::tzoneFree(v53, v54);
    }

    else
    {
      --*v47;
    }

    v16 = v44;
LABEL_66:
    if (v52)
    {
      goto LABEL_35;
    }

    v5 = (v5 + 8);
    v44 = v16;
  }

  while (v5 != v264);
LABEL_283:
  v202 = *(a1 + 408);
  *(a1 + 408) = 0;

  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  v203 = *(a1 + 432);
  *(a1 + 432) = 0;

  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  v204 = *(a1 + 456);
  *(a1 + 456) = 0;

  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  v205 = *(a1 + 480);
  *(a1 + 480) = 0;

  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  v206 = *(a1 + 504);
  *(a1 + 504) = 0;

  *(a1 + 512) = 0u;
  v207 = *(a1 + 528);
  *(a1 + 528) = 0;

  *(a1 + 536) = 0u;
  v208 = *(a1 + 552);
  *(a1 + 552) = 0;

  *(a1 + 560) = 0u;
  v209 = *(a1 + 576);
  *(a1 + 576) = 0;

  *(a1 + 584) = 0u;
  v210 = *(a1 + 600);
  *(a1 + 600) = 0;

  *(a1 + 608) = 0u;
  v211 = *(a1 + 624);
  *(a1 + 624) = 0;

  *(a1 + 632) = 0u;
  v212 = *(a1 + 648);
  *(a1 + 648) = 0;

  *(a1 + 656) = 0u;
  v213 = *(a1 + 672);
  *(a1 + 672) = 0;

  *(a1 + 680) = 0u;
  v214 = *(a1 + 696);
  *(a1 + 696) = 0;

  *(a1 + 704) = 0u;
  v215 = *(a1 + 720);
  *(a1 + 720) = 0;

  *(a1 + 728) = 0u;
  v216 = *(a1 + 744);
  *(a1 + 744) = 0;

  *(a1 + 752) = 0u;
  v217 = *(a1 + 768);
  *(a1 + 768) = 0;

  *(a1 + 776) = 0u;
  v218 = *(a1 + 792);
  *(a1 + 792) = 0;

  *(a1 + 800) = 0u;
  v219 = *(a1 + 816);
  *(a1 + 816) = 0;

  *(a1 + 824) = 0u;
  v220 = *(a1 + 840);
  *(a1 + 840) = 0;

  *(a1 + 848) = 0u;
  v221 = *(a1 + 864);
  *(a1 + 864) = 0;

  *(a1 + 872) = 0u;
  v222 = *(a1 + 888);
  *(a1 + 888) = 0;

  *(a1 + 896) = 0u;
  v223 = *(a1 + 912);
  *(a1 + 912) = 0;

  *(a1 + 920) = 0u;
  v224 = *(a1 + 936);
  *(a1 + 936) = 0;

  *(a1 + 944) = 0u;
  v225 = *(a1 + 960);
  *(a1 + 960) = 0;

  *(a1 + 968) = 0u;
  v226 = *(a1 + 984);
  *(a1 + 984) = 0;

  *(a1 + 992) = 0u;
  v227 = *(a1 + 1008);
  *(a1 + 1008) = 0;

  *(a1 + 1016) = 0u;
  v228 = *(a1 + 1032);
  *(a1 + 1032) = 0;

  *(a1 + 1040) = 0u;
  v229 = *(a1 + 1056);
  *(a1 + 1056) = 0;

  *(a1 + 1064) = 0u;
  v230 = *(a1 + 1080);
  *(a1 + 1080) = 0;

  *(a1 + 1088) = 0u;
  v231 = *(a1 + 1104);
  *(a1 + 1104) = 0;

  *(a1 + 1112) = 0u;
  v232 = *(a1 + 1128);
  *(a1 + 1128) = 0;

  *(a1 + 1136) = 0u;
  v235 = *(a1 + 2144);
  if (v235)
  {
    *(a1 + 2144) = 0;
    v236 = *(v235 - 4);
    if (v236)
    {
      v237 = (v235 + 8);
      do
      {
        if (*(v237 - 2) != -2)
        {
          v240 = *v237;
          *v237 = 0;
          if (v240)
          {
            if (*(v240 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v240, v233, v234);
              bmalloc::api::tzoneFree(v238, v239);
            }

            else
            {
              --*(v240 + 2);
            }
          }
        }

        v237 += 2;
        --v236;
      }

      while (v236);
    }

    WTF::fastFree((v235 - 16), v233);
  }

  v241 = *(a1 + 192);
  if (v241)
  {
    *(a1 + 192) = 0;
    v242 = *(v241 - 4);
    if (v242)
    {
      v243 = v241 + 8;
      do
      {
        if (*(v243 - 8) != -2)
        {
          v244 = *v243;
          if (*v243)
          {
            *v243 = 0;
            *(v243 + 8) = 0;
            WTF::fastFree(v244, v233);
          }
        }

        v243 += 24;
        --v242;
      }

      while (v242);
    }

    WTF::fastFree((v241 - 16), v233);
  }

  LOBYTE(v291) = 1;
  WTF::Vector<BOOL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(a1 + 2480, &v291, *(a1 + 2492));
  v246 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (!v246)
  {
LABEL_304:
    if (!*(a1 + 128))
    {
      goto LABEL_311;
    }

LABEL_307:
    if (*(a1 + 132))
    {
      *(a1 + 132) = 0;
    }

    v249 = *(a1 + 120);
    if (v249)
    {
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      WTF::fastFree(v249, v245);
    }

    goto LABEL_311;
  }

  if (*(v246 + 2) != 1)
  {
    --*(v246 + 2);
    goto LABEL_304;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v246, v245);
  bmalloc::api::tzoneFree(v247, v248);
  if (*(a1 + 128))
  {
    goto LABEL_307;
  }

LABEL_311:
  if (*(a1 + 144))
  {
    if (*(a1 + 148))
    {
      *(a1 + 148) = 0;
    }

    v250 = *(a1 + 136);
    if (v250)
    {
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      WTF::fastFree(v250, v245);
    }
  }

  if (*(a1 + 160))
  {
    if (*(a1 + 164))
    {
      *(a1 + 164) = 0;
    }

    v251 = *(a1 + 152);
    if (v251)
    {
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      WTF::fastFree(v251, v245);
    }
  }

  if (*(a1 + 176))
  {
    if (*(a1 + 180))
    {
      *(a1 + 180) = 0;
    }

    v252 = *(a1 + 168);
    if (v252)
    {
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      WTF::fastFree(v252, v245);
    }
  }

  v253 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v253)
  {
    do
    {
      v254 = *v253;
      if ((*v253 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v253, v245);
        goto LABEL_332;
      }

      v255 = *v253;
      atomic_compare_exchange_strong_explicit(v253, &v255, v254 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v255 != v254);
    if (v254 == 3)
    {
      WebGPU::Buffer::~Buffer(v253);
      bmalloc::api::tzoneFree(v256, v257);
    }
  }

LABEL_332:
  *(a1 + 80) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1760) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0;
  *(a1 + 1792) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2032) = 0;
  *(a1 + 2040) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
LABEL_35:

  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    bmalloc::api::tzoneFree(v34, v35);
    v32 = HIDWORD(v278);
    v33 = v277;
    if (!HIDWORD(v278))
    {
      goto LABEL_45;
    }
  }

  else
  {
    --*(a1 + 8);
    v32 = HIDWORD(v278);
    v33 = v277;
    if (!HIDWORD(v278))
    {
      goto LABEL_45;
    }
  }

  v36 = 8 * v32;
  v37 = v33;
  do
  {
    v40 = *v37;
    *v37 = 0;
    if (v40)
    {
      if (*v40 == 1)
      {
        WebGPU::RenderBundle::~RenderBundle(v40);
        bmalloc::api::tzoneFree(v38, v39);
      }

      else
      {
        --*v40;
      }
    }

    ++v37;
    v36 -= 8;
  }

  while (v36);
LABEL_45:
  if (v33)
  {
    WTF::fastFree(v33, v31);
  }
}

void sub_2256D6740(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WebGPU::RenderPassEncoder *a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id *a61, uint64_t a62, atomic_ullong *a63)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a63, a2);

  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a71);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v71, v74);

  WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>::~Ref(&a61);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a26);
  WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a27, v75);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderInsertDebugMarker(uint64_t a1, char *__s)
{
  ++*(a1 + 8);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v4 = v10;
  if (*(a1 + 12) - 3 <= 0xFFFFFFFD)
  {
    v5 = *(a1 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v11);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }
    }

    else
    {
      v11 = &stru_2838D6D18;
    }

    [v5 insertDebugSignpost:v11];
    v7 = v11;
    v11 = 0;

    v4 = v10;
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    bmalloc::api::tzoneFree(v8, v9);
  }

  else
  {
    --*(a1 + 8);
  }
}

void sub_2256D6B94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::RenderPassEncoder *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderPopDebugGroup(WebGPU::RenderPassEncoder *this)
{
  ++*(this + 2);
  if (*(this + 12) - 3 <= 0xFFFFFFFD)
  {
    if (**(this + 23) == 1 && (v2 = *(this + 3)) != 0)
    {
      *(this + 3) = v2 - 1;
      [*(this + 2) popDebugGroup];
    }

    else
    {
      WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_PopdebuggroupV.isa);
    }
  }

  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D6CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderPushDebugGroup(uint64_t a1, char *__s)
{
  ++*(a1 + 8);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v4 = v10;
  if (*(a1 + 12) - 3 <= 0xFFFFFFFD)
  {
    v5 = *(a1 + 16);
    ++*(a1 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v11);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }
    }

    else
    {
      v11 = &stru_2838D6D18;
    }

    [v5 pushDebugGroup:v11];
    v7 = v11;
    v11 = 0;

    v4 = v10;
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    bmalloc::api::tzoneFree(v8, v9);
  }

  else
  {
    --*(a1 + 8);
  }
}

void sub_2256D6E08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::RenderPassEncoder *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetBindGroup(WebGPU::RenderPassEncoder *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  ++*(this + 2);
  if (a3)
  {
    ++*(a3 + 8);
  }

  v81 = a2;
  v6 = *(this + 23);
  if (*v6 != 1)
  {
    v10 = *(this + 4);
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
        goto LABEL_18;
      }
    }

    v13 = 0;
    v14 = *v10;
    v15 = 1;
    atomic_compare_exchange_strong_explicit(*v10, &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      MEMORY[0x22AA683C0](v14);
    }

    ++*(v14 + 8);
    atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      WTF::Lock::unlockSlow(v14);
    }

LABEL_18:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setBindGroup(uint32_t, const BindGroup *, std::optional<Vector<uint32_t>> &&)"];
    WebGPU::Device::generateAValidationError(v10, v16);

    v82[0] = 0;
    do
    {
      v18 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v17);
        goto LABEL_24;
      }

      v19 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::Device::~Device(v10, v17);
      bmalloc::api::tzoneFree(v20, v21);
    }

LABEL_24:
    v7 = *(this + 2);
LABEL_25:
    *(this + 2) = 0;

    goto LABEL_26;
  }

  v7 = *(this + 2);
  if (!v7 || !*(v6 + 24))
  {
    goto LABEL_25;
  }

  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  if (*(*(v6 + 192) + 8))
  {
    v9 = *(v6 + 32) == v7;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v9 = 0;
  if (!v8)
  {
LABEL_36:
    v29 = a4;
    v30 = a2;
    WebGPU::CommandEncoder::~CommandEncoder(v6);
    bmalloc::api::tzoneFree(v31, v32);
    a2 = v30;
    a4 = v29;
    if (v9)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

LABEL_8:
  *(v6 + 16) = v8;
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_37:
  if (a3 && (v33 = *(a3 + 64)) != 0)
  {
    v34 = (*(v33 + 208) + *(v33 + 212));
    v35 = *(this + 4);
    if (*(v35 + 96) <= a2)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v34 = 0;
    v35 = *(this + 4);
    if (*(v35 + 96) <= a2)
    {
LABEL_44:
      WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_SetbindgroupGr.isa);
      goto LABEL_26;
    }
  }

  v36 = *(a4 + 16);
  if (v36 == 1 && v34 != *(a4 + 12))
  {
    goto LABEL_44;
  }

  if (!a3)
  {
    WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 268, &v81, a3);
    WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 24, &v81);
    v47 = v81;
    if (*(this + 623) <= v81)
    {
      __break(0xC471u);
      JUMPOUT(0x2256D7500);
    }

    *(*(this + 310) + v81) = 1;
    if (v47 < 0x20)
    {
      *(this + v47 + 538) = 0;
      v24 = *(this + 2) - 1;
      if (*(this + 2) != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    goto LABEL_114;
  }

  v37 = *(a3 + 64);
  if (!v37 || (v38 = *(a3 + 40), v38 != v35) || !*(v38 + 8))
  {
    WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_SetbindgroupIn.isa);
    goto LABEL_27;
  }

  ++*(v37 + 2);
  if (a2 >= 0x20)
  {
    goto LABEL_114;
  }

  v39 = this + 2152;
  v40 = v36 == 0;
  if (v36)
  {
    v41 = *a4;
  }

  else
  {
    v41 = 0;
  }

  v42 = a4;
  if (v40)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(a4 + 12);
  }

  v44 = WebGPU::BindGroupLayout::errorValidatingDynamicOffsets(v37, v41, v43, a3, &v39[4 * a2]);
  if (v44)
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPURenderPassEncoder.setBindGroup: %@", v44];
    WebGPU::RenderPassEncoder::makeInvalid(this, v45);

    goto LABEL_113;
  }

  v48 = v81;
  if (v81 <= *(this + 21))
  {
    v48 = *(this + 21);
  }

  *(this + 21) = v48;
  if (*(v42 + 16) == 1 && *(v42 + 12))
  {
    WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this + 24, &v81, v42, v82);
    v50 = v81;
    if (*(this + 623) <= v81)
    {
      goto LABEL_118;
    }

    goto LABEL_71;
  }

  if (WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 24, &v81))
  {
    v50 = v81;
    if (*(this + 623) <= v81)
    {
LABEL_118:
      __break(0xC471u);
      JUMPOUT(0x2256D727CLL);
    }

LABEL_71:
    *(*(this + 310) + v50) = 1;
    if (v50 < 0x20)
    {
      *&v39[4 * v50] = 0;
      goto LABEL_73;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_73:
  v51 = *(this + 23);
  ++*(v51 + 4);
  v80 = v51;
  v52 = *(a3 + 60);
  if (!v52)
  {
    goto LABEL_112;
  }

  v53 = *(a3 + 48);
  v54 = v53 + 48 * v52;
  do
  {
    if ((*(v53 + 40) & 3) != 0 && *(v53 + 12))
    {
      if (*(*(this + 23) + 172))
      {
        v55 = 0;
      }

      else
      {
        v55 = *(this + 2);
      }

      v56 = v55;
      v57 = *(v53 + 12);
      if (!v57)
      {
        __break(0xC471u);
        JUMPOUT(0x2256D74F8);
      }

      v58 = v56;
      [v56 useResources:*v53 count:v57 usage:*(v53 + 32) stages:*(v53 + 40)];
    }

    v59 = *(v53 + 12);
    if (v59)
    {
      v60 = 0;
      v61 = 0;
      while (v61 < *(v53 + 28))
      {
        v62 = *(v53 + 16);
        v63 = v62 + v60 + 8;
        WebGPU::RenderPassEncoder::addResourceToActiveResources(this, v63, *(v62 + v60));
        WebGPU::RenderPassEncoder::setCommandEncoder(this, v63);
        ++v61;
        v60 += 40;
        if (v59 == v61)
        {
          goto LABEL_86;
        }
      }

LABEL_115:
      __break(0xC471u);
      JUMPOUT(0x2256D74F0);
    }

LABEL_86:
    v64 = *(a3 + 104);
    if (!v64)
    {
      v66 = 0;
      v65 = 0;
LABEL_94:
      v68 = v66;
      v66 = (v64 + 32 * v65);
LABEL_95:
      if (!v64)
      {
        v70 = 0;
        goto LABEL_110;
      }

      v69 = *(v64 - 4);
      goto LABEL_99;
    }

    v65 = *(v64 - 4);
    v66 = (v64 + 32 * v65);
    if (!*(v64 - 12))
    {
      goto LABEL_94;
    }

    if (v65)
    {
      v67 = 32 * v65;
      v68 = *(a3 + 104);
      while (*v68 + 1 <= 1)
      {
        v68 += 4;
        v67 -= 32;
        if (!v67)
        {
          v68 = v66;
          goto LABEL_95;
        }
      }

      goto LABEL_95;
    }

    v69 = 0;
    v68 = *(a3 + 104);
LABEL_99:
    v70 = (v64 + 32 * v69);
LABEL_110:
    while (v68 != v70)
    {
      v71 = *v68;
      if (!*v68)
      {
        goto LABEL_108;
      }

      v72 = v80;
      *v71 += 2;
      v83 = v71;
      WTF::HashTable<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler const,WTF::RawPtrTraits<WebGPU::Sampler const>,WTF::DefaultRefDerefTraits<WebGPU::Sampler const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v72 + 14, &v83, v49, v82);
      v74 = v83;
      v83 = 0;
      if (!v74)
      {
        goto LABEL_104;
      }

      if (*v74 != 1)
      {
        --*v74;
LABEL_104:
        v75 = *v71 - 1;
        if (*v71 != 1)
        {
          goto LABEL_105;
        }

        goto LABEL_107;
      }

      WebGPU::Sampler::~Sampler(v74, v73, v49);
      bmalloc::api::tzoneFree(v76, v77);
      v75 = *v71 - 1;
      if (*v71 != 1)
      {
LABEL_105:
        *v71 = v75;
        goto LABEL_108;
      }

LABEL_107:
      WebGPU::Sampler::~Sampler(v71, v73, v49);
      bmalloc::api::tzoneFree(v78, v79);
      do
      {
LABEL_108:
        v68 += 4;
      }

      while (v68 != v66 && *v68 + 1 <= 1);
    }

    v53 += 48;
  }

  while (v53 != v54);
LABEL_112:
  v83 = a3;
  WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WebGPU::BindGroup const*>(this + 268, &v81, &v83, v82);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&v80);
LABEL_113:
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(v37, v46);
LABEL_26:
  if (!a3)
  {
LABEL_33:
    v24 = *(this + 2) - 1;
    if (*(this + 2) != 1)
    {
      goto LABEL_34;
    }

LABEL_29:
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v25, v26);
    return;
  }

LABEL_27:
  if (*(a3 + 8) == 1)
  {
    WebGPU::BindGroup::~BindGroup(a3, v22, v23);
    bmalloc::api::tzoneFree(v27, v28);
    goto LABEL_33;
  }

  --*(a3 + 8);
  v24 = *(this + 2) - 1;
  if (*(this + 2) == 1)
  {
    goto LABEL_29;
  }

LABEL_34:
  *(this + 2) = v24;
}

void sub_2256D750C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, WebGPU::BindGroup *);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(v5, a2);
  if (v4)
  {
    WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(va, v7, v8);
  }

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetBlendConstant(uint64_t a1, _OWORD *a2)
{
  ++*(a1 + 8);
  v3 = *(a1 + 184);
  if (*v3 != 1)
  {
    v7 = *(a1 + 32);
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setBlendConstant(const WGPUColor &)"];
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

    goto LABEL_22;
  }

  v4 = *(a1 + 16);
  if (!v4 || !*(v3 + 24))
  {
    goto LABEL_23;
  }

  v5 = *(v3 + 16);
  *(v3 + 16) = v5 + 1;
  if (*(*(v3 + 192) + 8))
  {
    v6 = *(v3 + 32) == v4;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_30:
    v21 = a2;
    WebGPU::CommandEncoder::~CommandEncoder(v3);
    bmalloc::api::tzoneFree(v22, v23);
    a2 = v21;
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_30;
  }

LABEL_6:
  *(v3 + 16) = v5;
  if (!v6)
  {
LABEL_22:
    v4 = *(a1 + 16);
LABEL_23:
    *(a1 + 16) = 0;

    goto LABEL_24;
  }

LABEL_31:
  v24 = *(a1 + 2328);
  v25 = a2[1];
  *(a1 + 2296) = *a2;
  *(a1 + 2312) = v25;
  if ((v24 & 1) == 0)
  {
    *(a1 + 2328) = 1;
  }

LABEL_24:
  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);

    bmalloc::api::tzoneFree(v19, v20);
  }

  else
  {
    --*(a1 + 8);
  }
}

void sub_2256D77C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D77D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D77F8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WebGPU::RenderPassEncoder *wgpuRenderPassEncoderSetIndexBuffer(WebGPU::RenderPassEncoder *this, atomic_ullong *a2, int a3, unint64_t a4, atomic_ullong a5)
{
  ++*(this + 2);
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
      goto LABEL_8;
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
    v48 = a2;
    v15 = *(this + 23);
    if (*v15 == 1)
    {
      goto LABEL_9;
    }

LABEL_33:
    v27 = *(this + 4);
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
        goto LABEL_41;
      }
    }

    v30 = 0;
    v31 = *v27;
    v32 = 1;
    atomic_compare_exchange_strong_explicit(*v27, &v30, 1u, memory_order_acquire, memory_order_acquire);
    if (v30)
    {
      MEMORY[0x22AA683C0](v31);
    }

    ++*(v31 + 8);
    atomic_compare_exchange_strong_explicit(v31, &v32, 0, memory_order_release, memory_order_relaxed);
    if (v32 != 1)
    {
      WTF::Lock::unlockSlow(v31);
    }

LABEL_41:
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setIndexBuffer(Buffer &, WGPUIndexFormat, uint64_t, uint64_t)", v48];
    WebGPU::Device::generateAValidationError(v27, v33);

    v50 = 0;
    do
    {
      v35 = *v27;
      if ((*v27 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v27, v34);
        goto LABEL_47;
      }

      v36 = *v27;
      atomic_compare_exchange_strong_explicit(v27, &v36, v35 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v36 != v35);
    if (v35 == 3)
    {
      WebGPU::Device::~Device(v27, v34);
      bmalloc::api::tzoneFree(v37, v38);
    }

LABEL_47:
    v17 = (this + 16);
    goto LABEL_48;
  }

LABEL_8:
  v48 = a2;
  v15 = *(this + 23);
  if (*v15 != 1)
  {
    goto LABEL_33;
  }

LABEL_9:
  v17 = (this + 16);
  v16 = *(this + 2);
  if (!v16 || !*(v15 + 24))
  {
    goto LABEL_49;
  }

  v18 = *(v15 + 16);
  *(v15 + 16) = v18 + 1;
  if (*(*(v15 + 192) + 8))
  {
    v19 = *(v15 + 32) == v16;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_16:
    WebGPU::CommandEncoder::~CommandEncoder(v15);
    bmalloc::api::tzoneFree(v20, v21);
    if (!v19)
    {
LABEL_48:
      v16 = *v17;
LABEL_49:
      *v17 = 0;

      goto LABEL_50;
    }

    goto LABEL_17;
  }

  v19 = 0;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_13:
  *(v15 + 16) = v18;
  if (!v19)
  {
    goto LABEL_48;
  }

LABEL_17:
  if (*(a2 + 44) != 4 && !a2[1] || (v22 = a2[35], !*(v22 + 8)) || v22 != *(this + 4))
  {
    v23 = @"setIndexBuffer: invalid buffer";
LABEL_22:
    WebGPU::RenderPassEncoder::makeInvalid(this, &v23->isa);
    goto LABEL_50;
  }

  WebGPU::Buffer::setCommandEncoder(a2, *(this + 23));
  if (*(a2 + 44) == 4)
  {
    goto LABEL_50;
  }

  if ((a2[5] & 0x10) == 0)
  {
    goto LABEL_28;
  }

  v25 = 3;
  if (a3 == 1)
  {
    v25 = 1;
  }

  if ((v25 & a4) != 0)
  {
LABEL_28:
    v23 = @"setIndexBuffer: validation failed";
    goto LABEL_22;
  }

  v26 = a2[4];
  if (a5 == -1)
  {
    if (v26 < a4)
    {
      v23 = @"setIndexBuffer: computed size overflows";
      goto LABEL_22;
    }

    a5 = v26 - a4;
  }

  v23 = @"setIndexBuffer: computed size overflows";
  if (__CFADD__(a4, a5) || a4 + a5 > v26)
  {
    goto LABEL_22;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::ref(a2);
  v50 = a2;
  WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::operator=(this + 5, &v50);
  if (v50)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v50, v46);
  }

  v47 = a2[4];
  if (a5 != -1)
  {
    v47 = a5;
  }

  *(this + 7) = a4;
  *(this + 8) = v47;
  *(this + 6) = a3 == 2;
  WebGPU::RenderPassEncoder::addResourceToActiveResources(this, a2, 1);
  do
  {
LABEL_50:
    v39 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v24);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_57;
    }

    v40 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v40, v39 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v40 != v39);
  if (v39 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v41, v42);
  }

  result = this;
  if (this)
  {
LABEL_57:
    if (*(result + 2) == 1)
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(result);

      return bmalloc::api::tzoneFree(v44, v45);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_2256D7BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D7C0C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, atomic_ullong *);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void sub_2256D7C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, atomic_ullong *);
  va_copy(va2, va1);
  v8 = va_arg(va2, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v4);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va1);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetPipeline(WebGPU::RenderPassEncoder *a1, const WebGPU::RenderPipeline *a2)
{
  ++*(a1 + 2);
  ++*(a2 + 2);
  WebGPU::RenderPassEncoder::setPipeline(a1, a2);
  if (*(a2 + 2) == 1)
  {
    WebGPU::RenderPipeline::~RenderPipeline(a2, v4);
    bmalloc::api::tzoneFree(v6, v7);
    v5 = *(a1 + 2) - 1;
    if (*(a1 + 2) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    --*(a2 + 2);
    v5 = *(a1 + 2) - 1;
    if (*(a1 + 2) != 1)
    {
LABEL_3:
      *(a1 + 2) = v5;
      return;
    }
  }

  WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);

  bmalloc::api::tzoneFree(v8, v9);
}

void sub_2256D7D04(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::RenderPipeline *a9, WebGPU::RenderPassEncoder *a10)
{
  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetScissorRect(WebGPU::RenderPassEncoder *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  ++*(this + 2);
  v6 = *(this + 23);
  if (*v6 != 1)
  {
    v10 = *(this + 4);
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
        goto LABEL_16;
      }
    }

    v13 = 0;
    v14 = *v10;
    v15 = 1;
    atomic_compare_exchange_strong_explicit(*v10, &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      MEMORY[0x22AA683C0](v14);
    }

    ++*(v14 + 8);
    atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      WTF::Lock::unlockSlow(v14);
    }

LABEL_16:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setScissorRect(uint32_t, uint32_t, uint32_t, uint32_t)"];
    WebGPU::Device::generateAValidationError(v10, v16);

    do
    {
      v18 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v10, v17);
        goto LABEL_22;
      }

      v19 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::Device::~Device(v10, v17);
      bmalloc::api::tzoneFree(v20, v21);
    }

    goto LABEL_22;
  }

  v7 = *(this + 2);
  if (!v7 || !*(v6 + 24))
  {
    goto LABEL_23;
  }

  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  if (*(*(v6 + 192) + 8))
  {
    v9 = *(v6 + 32) == v7;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v8)
    {
LABEL_6:
      *(v6 + 16) = v8;
      if (v9)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = a2;
  WebGPU::CommandEncoder::~CommandEncoder(v6);
  bmalloc::api::tzoneFree(v28, v29);
  a2 = v27;
  a3 = v26;
  a4 = v25;
  a5 = v24;
  if (!v9)
  {
LABEL_22:
    v7 = *(this + 2);
LABEL_23:
    *(this + 2) = 0;

    goto LABEL_24;
  }

LABEL_31:
  if (__CFADD__(a2, a4) || a4 + a2 > *(this + 60) || __CFADD__(a3, a5) || a5 + a3 > *(this + 61))
  {
    WebGPU::RenderPassEncoder::makeInvalid(this, 0);
  }

  else
  {
    v30 = *(this + 2368);
    *(this + 292) = a2;
    *(this + 293) = a3;
    *(this + 294) = a4;
    *(this + 295) = a5;
    if ((v30 & 1) == 0)
    {
      *(this + 2368) = 1;
    }
  }

LABEL_24:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v22, v23);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D7F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D7FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D7FCC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetStencilReference(uint64_t a1, unsigned __int8 a2)
{
  ++*(a1 + 8);
  v3 = *(a1 + 184);
  if (*v3 != 1)
  {
    v7 = *(a1 + 32);
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setStencilReference(uint32_t)"];
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

    goto LABEL_22;
  }

  v4 = *(a1 + 16);
  if (v4 && *(v3 + 24))
  {
    v5 = *(v3 + 16);
    *(v3 + 16) = v5 + 1;
    if (*(*(v3 + 192) + 8))
    {
      v6 = *(v3 + 32) == v4;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
      if (v5)
      {
LABEL_6:
        *(v3 + 16) = v5;
        if (v6)
        {
LABEL_27:
          *(a1 + 2376) = a2;
          *(a1 + 2380) = 1;
          v19 = *(a1 + 8) - 1;
          if (*(a1 + 8) == 1)
          {
            goto LABEL_28;
          }

LABEL_24:
          *(a1 + 8) = v19;
          return;
        }

        goto LABEL_22;
      }
    }

    v20 = a2;
    WebGPU::CommandEncoder::~CommandEncoder(v3);
    bmalloc::api::tzoneFree(v21, v22);
    a2 = v20;
    if (v6)
    {
      goto LABEL_27;
    }

LABEL_22:
    v4 = *(a1 + 16);
  }

  *(a1 + 16) = 0;

  v19 = *(a1 + 8) - 1;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_24;
  }

LABEL_28:
  WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);

  bmalloc::api::tzoneFree(v23, v24);
}

void sub_2256D81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D81F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D8218(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetVertexBuffer(uint64_t a1, void *a2, WebGPU::Buffer *this, unint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (this)
  {
    while (1)
    {
      v10 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v11 = *this;
      atomic_compare_exchange_strong_explicit(this, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    v12 = 0;
    v13 = *this;
    v14 = 1;
    atomic_compare_exchange_strong_explicit(*this, &v12, 1u, memory_order_acquire, memory_order_acquire);
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
    while (1)
    {
      v15 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v16 = *this;
      atomic_compare_exchange_strong_explicit(this, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_15;
      }
    }

    v17 = 0;
    v18 = *this;
    v19 = 1;
    atomic_compare_exchange_strong_explicit(*this, &v17, 1u, memory_order_acquire, memory_order_acquire);
    if (v17)
    {
      MEMORY[0x22AA683C0](v18);
    }

    ++*(v18 + 8);
    atomic_compare_exchange_strong_explicit(v18, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 == 1)
    {
LABEL_15:
      v20 = this;
      if (this)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    WTF::Lock::unlockSlow(v18);
    v20 = this;
    if (this)
    {
      do
      {
LABEL_16:
        v21 = *v20;
        if ((*v20 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v20, a2);
          goto LABEL_21;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v22 != v21);
      if (v21 == 3)
      {
        WebGPU::Buffer::~Buffer(v20);
        bmalloc::api::tzoneFree(v23, v24);
      }
    }
  }

LABEL_21:
  ++*(a1 + 8);
  v25 = *(a1 + 184);
  if (*v25 != 1)
  {
    v29 = *(a1 + 32);
    while (1)
    {
      v30 = *v29;
      if ((*v29 & 1) == 0)
      {
        break;
      }

      v31 = *v29;
      atomic_compare_exchange_strong_explicit(v29, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v31 == v30)
      {
        goto LABEL_36;
      }
    }

    v32 = 0;
    v33 = *v29;
    v34 = 1;
    atomic_compare_exchange_strong_explicit(*v29, &v32, 1u, memory_order_acquire, memory_order_acquire);
    if (v32)
    {
      MEMORY[0x22AA683C0](v33);
    }

    ++*(v33 + 8);
    atomic_compare_exchange_strong_explicit(v33, &v34, 0, memory_order_release, memory_order_relaxed);
    if (v34 != 1)
    {
      WTF::Lock::unlockSlow(v33);
    }

LABEL_36:
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setVertexBuffer(uint32_t, const Buffer *, uint64_t, uint64_t)"];
    WebGPU::Device::generateAValidationError(v29, v35);

    do
    {
      v37 = *v29;
      if ((*v29 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v29, v36);
        goto LABEL_42;
      }

      v38 = *v29;
      atomic_compare_exchange_strong_explicit(v29, &v38, v37 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v38 != v37);
    if (v37 == 3)
    {
      WebGPU::Device::~Device(v29, v36);
      bmalloc::api::tzoneFree(v39, v40);
    }

    goto LABEL_42;
  }

  v26 = *(a1 + 16);
  if (!v26 || !*(v25 + 24))
  {
    goto LABEL_43;
  }

  v27 = *(v25 + 16);
  *(v25 + 16) = v27 + 1;
  if (*(*(v25 + 192) + 8))
  {
    v28 = *(v25 + 32) == v26;
    if (v27)
    {
      goto LABEL_26;
    }

LABEL_59:
    WebGPU::CommandEncoder::~CommandEncoder(v25);
    bmalloc::api::tzoneFree(v48, v49);
    if (v28)
    {
      goto LABEL_60;
    }

    goto LABEL_42;
  }

  v28 = 0;
  if (!v27)
  {
    goto LABEL_59;
  }

LABEL_26:
  *(v25 + 16) = v27;
  if (!v28)
  {
LABEL_42:
    v26 = *(a1 + 16);
LABEL_43:
    *(a1 + 16) = 0;

    goto LABEL_44;
  }

LABEL_60:
  if (!this)
  {
    if (*(*(a1 + 32) + 100) < v8)
    {
      goto LABEL_44;
    }

    if (v8 < 0x1F)
    {
      v54 = (a1 + 24 * v8);
      v55 = v54[51];
      v54[51] = 0;

      v54[52] = 0;
      v54[53] = 0;
      goto LABEL_44;
    }

    goto LABEL_94;
  }

  WebGPU::Buffer::setCommandEncoder(this, *(a1 + 184));
  v50 = *(this + 44);
  if (v50 != 4 && !*(this + 1) || (v51 = *(this + 35), !*(v51 + 8)) || (v52 = *(a1 + 32), v51 != v52))
  {
    v53 = @"setVertexBuffer: invalid buffer";
LABEL_66:
    WebGPU::RenderPassEncoder::makeInvalid(a1, &v53->isa);
    goto LABEL_44;
  }

  if (v50 != 4)
  {
    if (a5 == -1)
    {
      v56 = *(this + 4);
      v57 = v56 >= a4;
      v58 = v56 - a4;
      if (!v57)
      {
LABEL_77:
        v53 = @"setVertexBuffer: size overflowed";
        goto LABEL_66;
      }

      a5 = v58;
    }

    if (__CFADD__(a4, a5) || a4 + a5 > *(this + 4))
    {
      goto LABEL_77;
    }

    v53 = @"setVertexBuffer: validation failed";
    if (*(v52 + 160) <= v8 || (a4 & 3) != 0 || (*(this + 10) & 0x20) == 0)
    {
      goto LABEL_66;
    }

    v59 = *(a1 + 80);
    if (v59 <= v8)
    {
      v59 = v8;
    }

    *(a1 + 80) = v59;
    v60 = *(this + 1);
    v61 = [v60 length];
    if (a5 == -1)
    {
      a5 = *(this + 4);
    }

    v62 = v60;
    if (v8 < 0x1F)
    {
      v63 = v62;
      v64 = (a1 + 24 * v8);
      v65 = v64[51];
      v64[51] = v62;

      v64[52] = a4;
      v64[53] = a5;
      if (v61 != a4 || a5)
      {
        if (v61 <= a4)
        {
          WebGPU::RenderPassEncoder::makeInvalid(a1, &cfstr_Setvertexbuffe_4.isa);
        }

        else
        {
          WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, this, 1);
        }
      }

      goto LABEL_44;
    }

LABEL_94:
    __break(1u);
    return;
  }

LABEL_44:
  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    bmalloc::api::tzoneFree(v41, v42);
    if (this)
    {
LABEL_48:
      while (1)
      {
        v43 = *this;
        if ((*this & 1) == 0)
        {
          break;
        }

        v44 = *this;
        atomic_compare_exchange_strong_explicit(this, &v44, v43 - 2, memory_order_relaxed, memory_order_relaxed);
        if (v44 == v43)
        {
          if (v43 == 3)
          {
            WebGPU::Buffer::~Buffer(this);

            bmalloc::api::tzoneFree(v45, v46);
          }

          return;
        }
      }

      v47 = *this;

      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v47, a2);
    }
  }

  else
  {
    --*(a1 + 8);
    if (this)
    {
      goto LABEL_48;
    }
  }
}

void sub_2256D8750(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256D8768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v3, v6);
  _Unwind_Resume(a1);
}

void wgpuRenderPassEncoderSetViewport(WebGPU::RenderPassEncoder *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  ++*(this + 2);
  v8 = *(this + 23);
  if (*v8 != 1)
  {
    v12 = *(this + 4);
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
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderPassEncoder::setViewport(float, float, float, float, float, float)"];
    WebGPU::Device::generateAValidationError(v12, v18);

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

  v9 = *(this + 2);
  if (!v9 || !*(v8 + 24))
  {
    goto LABEL_23;
  }

  v10 = *(v8 + 16);
  *(v8 + 16) = v10 + 1;
  if (*(*(v8 + 192) + 8))
  {
    v11 = *(v8 + 32) == v9;
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
      *(v8 + 16) = v10;
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  v26 = a7;
  v27 = a6;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v31 = a2;
  WebGPU::CommandEncoder::~CommandEncoder(v8);
  bmalloc::api::tzoneFree(v32, v33);
  a2 = v31;
  a3 = v30;
  a4 = v29;
  a5 = v28;
  a6 = v27;
  a7 = v26;
  if (!v11)
  {
LABEL_22:
    v9 = *(this + 2);
LABEL_23:
    *(this + 2) = 0;

    goto LABEL_24;
  }

LABEL_31:
  if (a2 < 0.0 || a3 < 0.0 || a4 < 0.0 || a5 < 0.0 || (a2 + a4) > *(this + 60) || a6 > a7 || a7 > 1.0 || a6 < 0.0 || (a3 + a5) > *(this + 61))
  {
    WebGPU::RenderPassEncoder::makeInvalid(this, 0);
  }

  else
  {
    v34 = *(this + 2464);
    *(this + 302) = a2;
    *(this + 303) = a3;
    *(this + 304) = a4;
    *(this + 305) = a5;
    *(this + 306) = a6;
    *(this + 307) = a7;
    if ((v34 & 1) == 0)
    {
      *(this + 2464) = 1;
    }
  }

LABEL_24:
  if (*(this + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(this);

    bmalloc::api::tzoneFree(v24, v25);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256D8A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D8AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, WebGPU::RenderPassEncoder *);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v5);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256D8AD0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, WebGPU::RenderPassEncoder *);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuRenderPassEncoderSetLabel(uint64_t a1, char *__s)
{
  ++*(a1 + 8);
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

  [*(a1 + 16) setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*(a1 + 8) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

void sub_2256D8BF4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::RenderPassEncoder *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderPassEncoder,WTF::RawPtrTraits<WebGPU::RenderPassEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderPassEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::ref(atomic_ullong *result)
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

void *WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_2838D3460;
  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_2838D3460;
  WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::~$_0(a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::clampIndexBufferToValidValues(unsigned int,unsigned int,int,unsigned int,MTLIndexType,unsigned long,WebGPU::Buffer *,unsigned int,unsigned int,WebGPU::RenderPassEncoder&,WebGPU::Device &,unsigned int,MTLPrimitiveType)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 16);
  atomic_fetch_add(v2, 1u);
  v23 = v2;
  WebGPU::Queue::releaseCounterSampleBuffer(v2, *(a1 + 8));
  v23 = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v19, v20);
    result = [*(a1 + 72) contents];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [*(a1 + 72) contents];
    if (!result)
    {
      return result;
    }
  }

  result = [*(a1 + 72) length];
  if (result == 24)
  {
    v4 = [*(a1 + 72) contents];
    v5 = *(a1 + 64);
    v6 = *(v4 + 20);
    v21[0] = [0 gpuResourceID];
    if (v6)
    {
      OOB = 1;
    }

    else
    {
      OOB = WebGPU::Buffer::didReadOOB(v5, 0);
    }

    LOBYTE(v22) = OOB;
    WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long,BOOL>((v5 + 328), v21, &v22, &v23);
    v8 = *(a1 + 64);
    v9 = *(a1 + 24);
    v10 = *(a1 + 28);
    v11 = *(a1 + 32);
    v12 = *(a1 + 36);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 52);
    v17 = *(a1 + 56);
    v16 = *(a1 + 60);
    v18 = [0 gpuResourceID];
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v30 = v17 | (2 * v13);
    v31 = v18;
    v22 = 1;
    LODWORD(v23) = v9;
    return WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,int>((v8 + 272), &v23, &v22, v21);
  }

  return result;
}

void sub_2256D9044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

void ___ZN6WebGPUL30checkForIndirectDrawDeviceLostERNS_6DeviceERNS_17RenderPassEncoderEPU19objcproto9MTLBuffer11objc_object_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] != 4)
  {
    v8 = *(*(a1 + 40) + 16);
    atomic_fetch_add(v8, 1u);
    WebGPU::Queue::releaseCounterSampleBuffer(v8, *(a1 + 32));
    if (!v8 || atomic_fetch_add(v8, 0xFFFFFFFF) != 1)
    {
      goto LABEL_17;
    }

    atomic_store(1u, v8);
    v9 = v8;
LABEL_19:
    WebGPU::Queue::~Queue(v9);
    bmalloc::api::tzoneFree(v15, v16);
    goto LABEL_17;
  }

  v4 = *(*(a1 + 40) + 16);
  atomic_fetch_add(v4, 1u);
  v20 = v4;
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v5 = *(a1 + 40);
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
      goto LABEL_13;
    }
  }

  v10 = 0;
  v11 = *v5;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v10, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_13:
  v13 = WTF::fastMalloc(0x20);
  *v13 = &unk_2838D34B8;
  v13[1] = v17;
  v13[2] = v18;
  v13[3] = v5;
  v19 = v13;
  WebGPU::Queue::scheduleWork(v4, &v19);
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v9 = v20;
  v20 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    goto LABEL_19;
  }

LABEL_17:
}

void sub_2256D9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c125_ZTSKZN6WebGPUL30checkForIndirectDrawDeviceLostERNS_6DeviceERNS_17RenderPassEncoderEPU19objcproto9MTLBuffer11objc_objectE3__0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
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
      goto LABEL_7;
    }
  }

  v6 = 0;
  v7 = *v3;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v12 = a2;
    MEMORY[0x22AA683C0](v7);
    a2 = v12;
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = v7;
    v11 = a2;
    WTF::Lock::unlockSlow(v10);
    a2 = v11;
    goto LABEL_7;
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    goto LABEL_9;
  }

LABEL_7:
  a1[5] = v3;
  result = *(a2 + 48);
  a1[6] = result;
  return result;
}

atomic_ullong *__destroy_helper_block_ea8_32c125_ZTSKZN6WebGPUL30checkForIndirectDrawDeviceLostERNS_6DeviceERNS_17RenderPassEncoderEPU19objcproto9MTLBuffer11objc_objectE3__0(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
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
          WebGPU::Device::~Device(result, v2);

          return bmalloc::api::tzoneFree(v6, v7);
        }

        return result;
      }
    }

    v8 = *result;

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v8, v2);
  }

  return result;
}

uint64_t WebGPU::checkForIndirectDrawDeviceLost(WebGPU::Device &,WebGPU::RenderPassEncoder &,objc_object  {objcproto9MTLBuffer}*)::$_0::~$_0(uint64_t a1)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, v2);
        return a1;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Device::~Device(v3, v2);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return a1;
}

uint64_t WebGPU::checkForIndirectDrawDeviceLost(WebGPU::Device &,WebGPU::RenderPassEncoder &,objc_object  {objcproto9MTLBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1}::~objc_object(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);

        return a1;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Device::~Device(v3, a2);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::checkForIndirectDrawDeviceLost(WebGPU::Device &,WebGPU::RenderPassEncoder &,objc_object  {objcproto9MTLBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D34B8;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);

        return a1;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Device::~Device(v3, a2);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

  return a1;
}

{
  *a1 = &unk_2838D34B8;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);
        goto LABEL_7;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Device::~Device(v3, a2);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

LABEL_7:

  return WTF::fastFree(a1, v8);
}

void WTF::Detail::CallableWrapper<WebGPU::checkForIndirectDrawDeviceLost(WebGPU::Device &,WebGPU::RenderPassEncoder &,objc_object  {objcproto9MTLBuffer}*)::$_0::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 16);
  atomic_fetch_add(v2, 1u);
  WebGPU::Queue::releaseCounterSampleBuffer(v2, *(a1 + 8));
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v4, v5);
    if (![*(a1 + 16) contents])
    {
      return;
    }
  }

  else if (![*(a1 + 16) contents])
  {
    return;
  }

  if ([*(a1 + 16) length] == 20 && *(objc_msgSend(*(a1 + 16), "contents") + 16))
  {
    v3 = *(a1 + 24);

    WebGPU::Device::loseTheDevice(v3, 0);
  }
}

void sub_2256D9740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1}::~objc_object(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v3, a2);
        goto LABEL_7;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

LABEL_7:

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v9)
  {
    do
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v9, v8);
        return a1;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v11 != v10);
    if (v10 == 3)
    {
      WebGPU::Device::~Device(v9, v8);
      bmalloc::api::tzoneFree(v12, v13);
    }
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_2838D34E0;
  WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1}::~objc_object((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D34E0;
  WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1}::~objc_object(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1::operator() const(objc_object  {objcproto16MTLCommandBuffer}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 16);
  atomic_fetch_add(v2, 1u);
  v25 = v2;
  WebGPU::Queue::releaseCounterSampleBuffer(v2, *(a1 + 8));
  v25 = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WebGPU::Queue::~Queue(v2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  v3 = [*(a1 + 24) outOfBoundsReadFlag];
  v4 = *(a1 + 72);
  v22 = v3;
  v5 = *[v22 contents];
  v6 = [*(a1 + 24) indirectCommandBuffer];
  v23[0] = [v6 gpuResourceID];
  if (v5)
  {
    OOB = 1;
  }

  else
  {
    OOB = WebGPU::Buffer::didReadOOB(v4, v6);
  }

  LOBYTE(v24) = OOB;
  WTF::HashMap<unsigned long long,BOOL,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long,BOOL>((v4 + 328), v23, &v24, &v25);

  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  v10 = *(a1 + 40);
  v11 = *(a1 + 44);
  v20 = *(a1 + 48);
  v21 = *(a1 + 72);
  v12 = *(a1 + 56);
  v13 = *(a1 + 60);
  v14 = *(a1 + 64);
  v15 = *(a1 + 68);
  v16 = [*(a1 + 24) indirectCommandBuffer];
  v17 = [v16 gpuResourceID];
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = v15;
  v32 = v14 | (2 * v20);
  v33 = v17;
  v24 = 1;
  LODWORD(v25) = v8;
  WTF::HashMap<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,BOOL,WTF::DefaultHash<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,std::pair<unsigned int,unsigned long long>>>>>>>>,int>((v21 + 272), &v25, &v24, v23);
}

uint64_t WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::contains<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256D9B4CLL);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = *(a1 + 8 * v6);
  if (v7 == a2)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    v10 = v7 != -1;
    if (v7 == -1)
    {
      break;
    }

    v6 = (v6 + v9) & v2;
    v7 = *(a1 + 8 * v6);
    ++v9;
  }

  while (v7 != a2);
  return v10;
}

_OWORD *WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(_OWORD *result, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256D9D6CLL);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = v8 + 16 * v14;
  v16 = *v15;
  if (*v15 == -1)
  {
LABEL_13:
    *v15 = v4;
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v23 = *(v8 - 4);
        *v7 = v15;
        *(v7 + 1) = v8 + 16 * v23;
        *(v7 + 16) = 0;
        *(v15 + 8) = *a4;
        return result;
      }

      if (v16 == -2)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = v8 + 16 * v14;
      v16 = *v15;
      ++v18;
    }

    while (*v15 != -1);
    if (!v17)
    {
      goto LABEL_13;
    }

    *v17 = -1;
    *(v17 + 2) = 0;
    v8 = *a2;
    --*(*a2 - 16);
    *v17 = *a3;
  }

  *(v17 + 2) = *a4;
  v19 = *(v8 - 16);
  v20 = *(v8 - 12) + 1;
  *(v8 - 12) = v20;
  v21 = (v19 + v20);
  v22 = *(v8 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (3 * v22 <= 4 * v21)
  {
    if (!v22)
    {
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, 8u, v17);
      v17 = result;
      v8 = *a2;
      if (!*a2)
      {
LABEL_18:
        v22 = 0;
        goto LABEL_22;
      }

LABEL_21:
      v22 = *(v8 - 4);
      goto LABEL_22;
    }

LABEL_20:
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, v22 << (6 * v20 >= (2 * v22)), v17);
    v17 = result;
    v8 = *a2;
    if (!*a2)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_22:
  *v7 = v17;
  *(v7 + 1) = v8 + 16 * v22;
  *(v7 + 16) = 1;
  return result;
}

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
    *(v13 - 1) = -1;
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

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(void *result, void *a2)
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
  v13 = v12 + 4;
  v14 = v12 + 6;
  v15 = v11;
  do
  {
    *(v14 - 1) = -1;
    *v14 = 0;
    v14 += 4;
    --v15;
  }

  while (v15);
  result = v10;
  *v10 = v13;
  v16 = v11 - 1;
  v12[2] = v11 - 1;
  v12[3] = v11;
  *v12 = 0;
  v12[1] = v3;
  v17 = *a2;
  if (!*a2)
  {
    v19 = 0;
    v18 = 0;
    goto LABEL_26;
  }

  v18 = *(v17 - 1);
  v19 = &v17[2 * v18];
  if (!*(v17 - 3))
  {
LABEL_26:
    v21 = v19;
    v19 = &v17[2 * v18];
    goto LABEL_27;
  }

  if (!v18)
  {
    v22 = 0;
    v21 = *a2;
    goto LABEL_32;
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

LABEL_27:
  if (!v17)
  {
    goto LABEL_33;
  }

  v22 = *(v17 - 1);
LABEL_32:
  v17 += 2 * v22;
LABEL_33:
  while (v21 != v17)
  {
    v23 = *v21 + ~(*v21 << 32);
    v24 = (v23 ^ (v23 >> 22)) + ~((v23 ^ (v23 >> 22)) << 13);
    v25 = (9 * (v24 ^ (v24 >> 8))) ^ ((9 * (v24 ^ (v24 >> 8))) >> 15);
    v26 = v16 & (((v25 + ~(v25 << 27)) >> 31) ^ (v25 + ~(v25 << 27)));
    v27 = 1;
    do
    {
      v28 = v26;
      v29 = *&v13[4 * v26];
      v26 = (v26 + v27++) & v16;
    }

    while (v29 != -1);
    v30 = &v13[4 * v28];
    v31 = v21[1];
    *v30 = *v21;
    v30[2] = v31;
    do
    {
      v21 += 2;
    }

    while (v21 != v19 && *v21 >= 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

void *WTF::Vector<BOOL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::fill(uint64_t a1, unsigned __int8 *a2, WTF *this)
{
  v6 = *(a1 + 12);
  if (v6 > this)
  {
    v7 = *a1;
    v8 = this;
    if (!this)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 8);
  if (v9 < this)
  {
    if (v9)
    {
      if (v6)
      {
        *(a1 + 12) = 0;
      }

      v10 = *a1;
      if (*a1)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v10, a2);
        LODWORD(v9) = *(a1 + 8);
      }
    }

    if (v9 < this)
    {
      v11 = *a1;
      v12 = *(a1 + 12);
      v13 = WTF::fastMalloc(this);
      *(a1 + 8) = this;
      *a1 = v13;
      memcpy(v13, v11, v12);
      if (v11)
      {
        if (*a1 == v11)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v11, v14);
      }
    }
  }

  v15 = *(a1 + 12);
  v7 = *a1;
  v8 = v15;
  if (v15)
  {
LABEL_16:
    memset(v7, *a2, v8);
  }

LABEL_17:
  result = memset(v7 + v8, *a2, this - v8);
  *(a1 + 12) = this;
  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_2838D3508;
  result[1] = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundle::~RenderBundle(v1);
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

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderPassEncoder::executeBundles(WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,BOOL,WebGPU::CommandBuffer &,WebGPU::CommandEncoder &>::~CallableWrapper(WTF *a1, void *a2)
{
  v2 = *(a1 + 1);
  *a1 = &unk_2838D3508;
  *(a1 + 1) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v4 = a1;
  WebGPU::RenderBundle::~RenderBundle(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

unsigned int *WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(unsigned int *result)
{
  v1 = result;
  if (result[2] <= 2)
  {
    v2 = *result;
    v3 = result[3];
    v4 = WTF::fastMalloc(0x40);
    v1[2] = 16;
    *v1 = v4;
    result = memcpy(v4, v2, 4 * v3);
    if (v2)
    {
      if (*v1 == v2)
      {
        *v1 = 0;
        v1[2] = 0;
      }

      result = WTF::fastFree(v2, v5);
    }
  }

  v1[3] = 3;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebGPU::RenderBundle,WTF::RawPtrTraits<WebGPU::RenderBundle>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v8 = *v4;
      *v4 = 0;
      if (v8)
      {
        if (*v8 == 1)
        {
          WebGPU::RenderBundle::~RenderBundle(v8);
          bmalloc::api::tzoneFree(v6, v7);
        }

        else
        {
          --*v8;
        }
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

__CFString *WebGPU::Device::addPipelineLayouts(uint64_t a1, _DWORD *a2, unsigned int **a3)
{
  if (*(a3 + 16) != 1 || (v4 = *(a3 + 3), !v4))
  {
LABEL_124:
    v29 = 0;
    goto LABEL_125;
  }

  v6 = 6 * v4;
  v7 = &(*a3)[v6];
  v8 = v6 * 4 - 24;
  v9 = 0;
  if (v8 <= 0x17)
  {
    v10 = *a3;
    v11 = *a3;
    do
    {
LABEL_14:
      v17 = *v11;
      v11 += 6;
      v16 = v17;
      if (v9 <= v17)
      {
        v9 = v16;
      }
    }

    while (v11 != v7);
    goto LABEL_17;
  }

  v12 = 0;
  v13 = v8 / 0x18 + 1;
  v11 = &(*a3)[6 * (v13 & 0x1FFFFFFFFFFFFFFELL)];
  v14 = *a3;
  v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    if (v9 <= *v14)
    {
      v9 = *v14;
    }

    if (v12 <= v14[6])
    {
      v12 = v14[6];
    }

    v14 += 12;
    v15 -= 2;
  }

  while (v15);
  v10 = *a3;
  if (v9 <= v12)
  {
    v9 = v12;
  }

  if (v13 != (v13 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_14;
  }

LABEL_17:
  v94 = v7;
  v18 = v9 + 1;
  if (v9 >= *(a1 + 96))
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"too many bind groups, limit %u, attempted %zu", *(a1 + 96), v18];
    goto LABEL_125;
  }

  v19 = a2[3];
  v97 = a1;
  if (v19 > v9)
  {
    goto LABEL_46;
  }

  v20 = a2[2];
  v21 = *a2;
  if (v9 >= v20)
  {
    if (v20 + (v20 >> 1) <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v20 + (v20 >> 1);
    }

    if (v22 <= v18)
    {
      v22 = v9 + 1;
    }

    if (v22 >> 28)
    {
      __break(0xC471u);
      goto LABEL_136;
    }

    if (v22 <= 0x10)
    {
      v23 = 16;
    }

    else
    {
      v23 = v22;
    }

    v24 = WTF::fastMalloc((16 * v23));
    a2[2] = v23;
    *a2 = v24;
    if (v19)
    {
      v25 = 16 * v19;
      v26 = (v21 + 8);
      do
      {
        *v24 = 0;
        *(v24 + 8) = 0;
        v27 = *(v26 - 1);
        *(v26 - 1) = 0;
        *v24 = v27;
        LODWORD(v27) = *v26;
        *v26 = 0;
        *(v24 + 8) = v27;
        LODWORD(v27) = v26[1];
        v26[1] = 0;
        *(v24 + 12) = v27;
        v28 = *(v26 - 1);
        if (v28)
        {
          *(v26 - 1) = 0;
          *v26 = 0;
          WTF::fastFree(v28, a2);
        }

        v24 += 16;
        v26 += 4;
        v25 -= 16;
      }

      while (v25);
      v24 = *a2;
    }

    if (v21)
    {
      if (v24 == v21)
      {
        *a2 = 0;
        a2[2] = 0;
      }

      WTF::fastFree(v21, a2);
      v21 = *a2;
    }

    else
    {
      v21 = v24;
    }
  }

  if (v21)
  {
    v30 = a2[3];
    if (v18 != v30)
    {
      bzero(v21 + 16 * v30, 16 * (v18 - v30));
    }
  }

  a2[3] = v18;
  v31 = *(a3 + 3);
  if (!v31)
  {
    goto LABEL_124;
  }

  v10 = *a3;
  v94 = &(*a3)[6 * v31];
  a1 = v97;
  while (1)
  {
LABEL_46:
    v32 = *v10;
    if (a2[3] <= v32)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DABD8);
    }

    v33 = *a2;
    v113[0] = 0;
    v34 = v10[5];
    v96 = v10;
    if (v34)
    {
      v35 = v33 + 16 * v32;
      v36 = *(v10 + 1);
      v99 = v36 + 120 * v34;
      do
      {
        v44 = *(v36 + 8);
        v45 = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        v47 = (v36 + 40);
        v46 = *(v36 + 40);
        v48 = *(v36 + 4);
        v104 = v48;
        if (v46 && *(v46 + 4) && (v98 = v98 & 0xFFFFFF0000000000 | 0x10000000CLL, WTF::StringImpl::endsWith()))
        {
          v48 += *(a1 + 104);
          v104 = v48;
          v49 = 1;
          v50 = v44 & 7;
          v51 = (v44 >> 1) & 3;
          v52 = *(v35 + 12);
          if (!v52)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v49 = 0;
          v50 = v44 & 7;
          v51 = (v44 >> 1) & 3;
          v52 = *(v35 + 12);
          if (!v52)
          {
LABEL_61:
            v56 = *v47;
            if (*v47 && *(v56 + 1))
            {
              if (v49)
              {
                v57 = v48 + *(a1 + 104);
                v104 = v57;
                WTF::StringImpl::substring(v56);
                v60 = v101[0];
                v61 = v113[0];
                if (v113[0])
                {
                  if (v101[0] == -1)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x2256DABF8);
                  }

                  if (!v101[0])
                  {
                    __break(0xC471u);
                    JUMPOUT(0x2256DAC18);
                  }

                  v62 = *(v113[0] - 8);
                  v63 = *(v101[0] + 4);
                  if (v63 < 0x100)
                  {
                    v64 = WTF::StringImpl::hashSlowCase(v101[0]);
                  }

                  else
                  {
                    v64 = v63 >> 8;
                  }

                  for (i = 0; ; v64 = i + v85)
                  {
                    v85 = v64 & v62;
                    v86 = *(v61 + 16 * v85);
                    if (v86 != -1)
                    {
                      if (!v86)
                      {
                        goto LABEL_100;
                      }

                      if (WTF::equal(v86, v60, v59))
                      {
                        break;
                      }
                    }

                    ++i;
                  }

                  if (v85 != *(v61 - 4))
                  {
                    v69 = *(v61 + 16 * v85 + 8);
                    goto LABEL_101;
                  }

LABEL_100:
                  v69 = 0;
LABEL_101:
                  a1 = v97;
                }

                else
                {
                  v69 = 0;
                }

                if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v87 = v69;
                  WTF::StringImpl::destroy(v60, v58);
                  v69 = v87;
                }

                v70 = 2147483644;
                DWORD2(v105) = v57;
                if (v51 == 3)
                {
                  goto LABEL_130;
                }

                goto LABEL_76;
              }

              WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,unsigned int &>(v101, v113, (v36 + 40), &v104);
            }

            v69 = 0;
            v70 = 0;
            DWORD2(v105) = v48;
            if (v51 == 3)
            {
              goto LABEL_130;
            }

LABEL_76:
            *(&v105 + v51 + 3) = *v36;
            DWORD2(v106) = v50;
            WebGPU::makeBindingLayout<mpark::variant<WGSL::BufferBindingLayout,WGSL::SamplerBindingLayout,WGSL::TextureBindingLayout,WGSL::StorageTextureBindingLayout,WGSL::ExternalTextureBindingLayout> const>(v101, &v105, (v36 + 16), v70, v69, v45);
            v71 = *(v35 + 12);
            if (v71 == *(v35 + 8))
            {
              v72 = WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v35, v71 + 1, &v105);
              v73 = (*v35 + (*(v35 + 12) << 7));
              v74 = v72[7];
              v76 = v72[4];
              v75 = v72[5];
              v73[6] = v72[6];
              v73[7] = v74;
              v73[4] = v76;
              v73[5] = v75;
              v77 = *v72;
              v78 = v72[1];
              v79 = v72[3];
              v73[2] = v72[2];
              v73[3] = v79;
              *v73 = v77;
              v73[1] = v78;
            }

            else
            {
              v37 = (*v35 + (v71 << 7));
              v38 = v105;
              v39 = v106;
              v40 = v108;
              v37[2] = v107;
              v37[3] = v40;
              *v37 = v38;
              v37[1] = v39;
              v41 = v109;
              v42 = v110;
              v43 = v112;
              v37[6] = v111;
              v37[7] = v43;
              v37[4] = v41;
              v37[5] = v42;
            }

            ++*(v35 + 12);
            goto LABEL_51;
          }
        }

        v53 = 0;
        v54 = 0;
        v55 = *v35;
        while (*(v55 + v53 + 8) != v48)
        {
          ++v54;
          v53 += 128;
          if (v52 << 7 == v53)
          {
            goto LABEL_61;
          }
        }

        if (v54 >= v52)
        {
          __break(0xC471u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(0xC471u);
LABEL_136:
          JUMPOUT(0x2256DABD0);
        }

        *(v55 + v53 + 24) |= v50;
        if (v51 == 3)
        {
          goto LABEL_130;
        }

        *(v55 + 4 * v51 + v53 + 12) = *v36;
        if (v54 >= *(v35 + 12))
        {
          goto LABEL_131;
        }

        v65 = *v35;
        v103 = 0;
        *&v66 = 0;
        *v101 = 0u;
        v102 = 0u;
        v67 = v65 + v53;
        if (*(v65 + v53 + 40))
        {
          v66 = *(v67 + 32);
          v68 = *(v67 + 48);
          *v101 = v66;
          v102 = v68;
        }

        else
        {
          if (*(v67 + 72))
          {
            v66 = *(v65 + v53 + 64);
            *v101 = v66;
            v80 = 1;
          }

          else
          {
            v81 = v65 + v53;
            if (*(v65 + v53 + 88))
            {
              v82 = *(v65 + v53 + 92) == 0;
            }

            else
            {
              v82 = 1;
            }

            if (v82)
            {
              if (*(v81 + 112))
              {
                v83 = *(v81 + 116) == 0;
              }

              else
              {
                v83 = 1;
              }

              if (v83 || !*(v65 + v53 + 120))
              {
                goto LABEL_108;
              }

              v66 = *(v81 + 104);
              *&v102 = *(v81 + 120);
              *v101 = v66;
              v80 = 3;
            }

            else
            {
              v66 = *(v81 + 80);
              *&v102 = *(v81 + 96);
              *v101 = v66;
              v80 = 2;
            }
          }

          v103 = v80;
        }

LABEL_108:
        WebGPU::makeBindingLayout<mpark::variant<WGSL::BufferBindingLayout,WGSL::SamplerBindingLayout,WGSL::TextureBindingLayout,WGSL::StorageTextureBindingLayout,WGSL::ExternalTextureBindingLayout> const>(v100, &v105, (v36 + 16), 0, 0, *&v66);
        if ((WebGPU::BindGroupLayout::equalBindingEntries(v101, v100) & 1) == 0)
        {
          v88 = 0;
          v89 = v113[0];
          if (!v113[0])
          {
            goto LABEL_119;
          }

          goto LABEL_111;
        }

        WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,unsigned int &>(v101, v113, (v36 + 40), &v104);
LABEL_51:
        v36 += 120;
      }

      while (v36 != v99);
    }

    v88 = 1;
    v89 = v113[0];
    if (!v113[0])
    {
      goto LABEL_119;
    }

LABEL_111:
    v90 = *(v89 - 4);
    if (v90)
    {
      v91 = v89;
      do
      {
        v92 = *v91;
        if (*v91 != -1)
        {
          *v91 = 0;
          if (v92)
          {
            if (atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v92, a2);
            }
          }
        }

        v91 += 2;
        --v90;
      }

      while (v90);
    }

    WTF::fastFree((v89 - 16), a2);
    a1 = v97;
LABEL_119:
    if ((v88 & 1) == 0)
    {
      break;
    }

    v10 = v96 + 6;
    if (v96 + 6 == v94)
    {
      goto LABEL_124;
    }
  }

  v29 = @"Binding mismatch in auto-generated layouts";
LABEL_125:

  return v29;
}