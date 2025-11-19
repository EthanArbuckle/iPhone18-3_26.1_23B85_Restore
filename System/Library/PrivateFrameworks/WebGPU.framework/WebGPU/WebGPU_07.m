uint64_t std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(uint64_t result, WTF::StringImpl *a2)
{
  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = *(result + 12);
    v5 = *result;
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
            WebGPU::BindGroupLayout::~BindGroupLayout(v9, a2);
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
      v5 = *v3;
    }

    if (v5)
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      WTF::fastFree(v5, a2);
    }

    v11 = *a2;
    *a2 = 0;
    *v3 = v11;
    LODWORD(v11) = *(a2 + 2);
    *(a2 + 2) = 0;
    *(v3 + 8) = v11;
    LODWORD(v11) = *(a2 + 3);
    *(a2 + 3) = 0;
    *(v3 + 12) = v11;
    return v3;
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    v10 = *a2;
    *a2 = 0;
    *result = v10;
    LODWORD(v10) = *(a2 + 2);
    *(a2 + 2) = 0;
    *(result + 8) = v10;
    LODWORD(v10) = *(a2 + 3);
    *(a2 + 3) = 0;
    *(result + 12) = v10;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
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
          if (*(v8 + 2) == 1)
          {
            WebGPU::BindGroupLayout::~BindGroupLayout(v8, a2);
            bmalloc::api::tzoneFree(v6, v7);
          }

          else
          {
            --*(v8 + 2);
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
  }

  return a1;
}

double WebGPU::PipelineLayout::PipelineLayout(WebGPU::PipelineLayout *this, atomic_ullong *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
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
  *(this + 11) = a2;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 64) = 0;
  return result;
}

void sub_2256ADE30(_Unwind_Exception *a1, void *a2)
{
  v6 = v3[10];
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
    v7 = v3[9];
    if (!v7)
    {
LABEL_3:
      v8 = v3[8];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = v3[9];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree((v7 - 16), a2);
  v8 = v3[8];
  if (!v8)
  {
LABEL_4:
    v9 = v3[7];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  WTF::fastFree((v8 - 16), a2);
  v9 = v3[7];
  if (!v9)
  {
LABEL_5:
    v10 = v3[6];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  WTF::fastFree((v9 - 16), a2);
  v10 = v3[6];
  if (!v10)
  {
LABEL_6:
    v11 = *v4;
    if (!*v4)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  WTF::fastFree((v10 - 16), a2);
  v11 = *v4;
  if (!*v4)
  {
LABEL_7:
    std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v2, a2);
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v3, v12);
    _Unwind_Resume(a1);
  }

LABEL_13:
  WTF::fastFree((v11 - 16), a2);
  std::optional<WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v2, v13);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v3, v14);
  _Unwind_Resume(a1);
}

void WebGPU::PipelineLayout::~PipelineLayout(WebGPU::PipelineLayout *this, void *a2)
{
  v3 = *(this + 15);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 14);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 13);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      if ((*v6 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v6, a2);
        goto LABEL_13;
      }

      v8 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v8 != v7);
    if (v7 == 3)
    {
      WebGPU::Device::~Device(v6, a2);
      bmalloc::api::tzoneFree(v9, v10);
    }
  }

LABEL_13:
  v11 = *(this + 10);
  if (v11)
  {
    WTF::fastFree((v11 - 16), a2);
  }

  v12 = *(this + 9);
  if (v12)
  {
    WTF::fastFree((v12 - 16), a2);
  }

  v13 = *(this + 8);
  if (v13)
  {
    WTF::fastFree((v13 - 16), a2);
  }

  v14 = *(this + 7);
  if (v14)
  {
    WTF::fastFree((v14 - 16), a2);
  }

  v15 = *(this + 6);
  if (v15)
  {
    WTF::fastFree((v15 - 16), a2);
  }

  v16 = *(this + 5);
  if (v16)
  {
    WTF::fastFree((v16 - 16), a2);
  }

  if (*(this + 32) == 1)
  {
    v17 = *(this + 7);
    v18 = *(this + 2);
    if (v17)
    {
      v19 = 8 * v17;
      do
      {
        v22 = *v18;
        *v18 = 0;
        if (v22)
        {
          if (*(v22 + 2) == 1)
          {
            WebGPU::BindGroupLayout::~BindGroupLayout(v22, a2);
            bmalloc::api::tzoneFree(v20, v21);
          }

          else
          {
            --*(v22 + 2);
          }
        }

        v18 = (v18 + 8);
        v19 -= 8;
      }

      while (v19);
      v18 = *(this + 2);
    }

    if (v18)
    {
      *(this + 2) = 0;
      *(this + 6) = 0;
      WTF::fastFree(v18, a2);
    }
  }

  if (*(this + 2) == 1)
  {
    v23 = *this;
    if (*this)
    {
      *(v23 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, a2);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::PipelineLayout::bindGroupLayout(WebGPU::PipelineLayout *this, unint64_t a2)
{
  if ((*(this + 32) & 1) == 0 || *(this + 7) <= a2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AE0FCLL);
  }

  return *(*(this + 2) + 8 * a2);
}

uint64_t WebGPU::PipelineLayout::sizeOfFragmentDynamicOffsets(WebGPU::PipelineLayout *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_9;
  }

  v2 = *(v1 - 1);
  v3 = &v1[4 * v2];
  if (!*(v1 - 3))
  {
LABEL_9:
    v5 = v3;
    v3 = &v1[4 * v2];
    goto LABEL_10;
  }

  if (!v2)
  {
    v6 = 0;
    v5 = *(this + 9);
    goto LABEL_13;
  }

  v4 = 16 * v2;
  v5 = *(this + 9);
  while (*v5 >= 0xFFFFFFFE)
  {
    v5 += 4;
    v4 -= 16;
    if (!v4)
    {
      v5 = v3;
      break;
    }
  }

LABEL_10:
  if (!v1)
  {
    goto LABEL_14;
  }

  v6 = *(v1 - 1);
LABEL_13:
  v1 += 4 * v6;
LABEL_14:
  if (v5 == v1)
  {
    return 0;
  }

  result = 0;
  v8 = v5 + 4;
  if (v5 + 4 != v3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    result += *(v5 + 1);
    v5 = v8;
    if (v8 == v1)
    {
      break;
    }

    v8 += 4;
    if (v5 + 4 != v3)
    {
      do
      {
LABEL_18:
        if (*v8 < 0xFFFFFFFE)
        {
          break;
        }

        v8 += 4;
      }

      while (v8 != v3);
    }
  }

  return result;
}

uint64_t WebGPU::PipelineLayout::sizeOfComputeDynamicOffsets(WebGPU::PipelineLayout *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_9;
  }

  v2 = *(v1 - 1);
  v3 = &v1[4 * v2];
  if (!*(v1 - 3))
  {
LABEL_9:
    v5 = v3;
    v3 = &v1[4 * v2];
    goto LABEL_10;
  }

  if (!v2)
  {
    v6 = 0;
    v5 = *(this + 10);
    goto LABEL_13;
  }

  v4 = 16 * v2;
  v5 = *(this + 10);
  while (*v5 >= 0xFFFFFFFE)
  {
    v5 += 4;
    v4 -= 16;
    if (!v4)
    {
      v5 = v3;
      break;
    }
  }

LABEL_10:
  if (!v1)
  {
    goto LABEL_14;
  }

  v6 = *(v1 - 1);
LABEL_13:
  v1 += 4 * v6;
LABEL_14:
  if (v5 == v1)
  {
    return 0;
  }

  result = 0;
  v8 = v5 + 4;
  if (v5 + 4 != v3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    result += *(v5 + 1);
    v5 = v8;
    if (v8 == v1)
    {
      break;
    }

    v8 += 4;
    if (v5 + 4 != v3)
    {
      do
      {
LABEL_18:
        if (*v8 < 0xFFFFFFFE)
        {
          break;
        }

        v8 += 4;
      }

      while (v8 != v3);
    }
  }

  return result;
}

uint64_t WebGPU::PipelineLayout::offsetVectorForBindGroup(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, int a5, void *__dst, unint64_t a7)
{
  if (*(a1 + 32) != 1)
  {
    return 1;
  }

  v7 = a5 == 2;
  if (a5 == 4)
  {
    v7 = 2;
  }

  v8 = *(a1 + 8 * v7 + 104);
  if (!v8)
  {
    goto LABEL_17;
  }

  if (a2 == -2)
  {
    goto LABEL_50;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AE600);
  }

  v9 = *(v8 - 8);
  v10 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v11 = (v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11);
  v12 = v9 & (v11 ^ HIWORD(v11));
  v13 = (v8 + 12 * v12);
  v14 = *v13;
  if (*v13 == a2)
  {
LABEL_11:
    if (v13 == (v8 + 12 * *(v8 - 4)))
    {
      goto LABEL_17;
    }

    v16 = v13[1];
    v17 = *(a4 + 3);
    if (v17 < v16 || (v18 = v13[2], v17 - v16 < v18))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (a7 < v18)
    {
      __break(0xC471u);
      JUMPOUT(0x2256AE620);
    }

    memcpy(__dst, (*a4 + 4 * v16), 4 * v18);
    return 1;
  }

  v15 = 1;
  while (v14 != -1)
  {
    v12 = (v12 + v15) & v9;
    v13 = (v8 + 12 * v12);
    v14 = *v13;
    ++v15;
    if (*v13 == a2)
    {
      goto LABEL_11;
    }
  }

LABEL_17:
  if (!a3)
  {
    return 1;
  }

  if (a2 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AE640);
  }

  if (a2 == -1)
  {
LABEL_50:
    __break(0xC471u);
    JUMPOUT(0x2256AE5E0);
  }

  v20 = *(a3 - 8);
  v21 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v22 = (v21 ^ (v21 >> 6)) + ~((v21 ^ (v21 >> 6)) << 11);
  v23 = v20 & (v22 ^ HIWORD(v22));
  v24 = *(a3 + 16 * v23);
  if (v24 != a2)
  {
    v25 = 1;
    while (v24 != -1)
    {
      v23 = (v23 + v25) & v20;
      v24 = *(a3 + 16 * v23);
      ++v25;
      if (v24 == a2)
      {
        goto LABEL_24;
      }
    }

    return 1;
  }

LABEL_24:
  if (v23 == *(a3 - 4))
  {
    return 1;
  }

  if (*(a1 + 28) <= a2 || *(a3 + 16 * v23 + 8) > a7)
  {
    return 0;
  }

  WebGPU::BindGroupLayout::sortedEntries(*(*(a1 + 16) + 8 * a2), &v39);
  v31 = v39;
  if (!v41)
  {
LABEL_40:
    v38 = 1;
    goto LABEL_42;
  }

  v32 = 0;
  v33 = *a4;
  v34 = 8 * v41;
  v35 = v39;
  while (1)
  {
    v36 = *v35;
    if ((*(*v35 + 100) & 1) == 0 && (*(v36 + 108) & 1) == 0 && *(v36 + 116) != 1 || (*(v36 + 4) & a5) == 0)
    {
      goto LABEL_32;
    }

    if (a7 <= v32)
    {
      break;
    }

    v37 = *(v36 + 120);
    v30 = *(a4 + 3);
    if (v30 <= v37)
    {
      break;
    }

    *(__dst + v32++) = *(v33 + 4 * v37);
LABEL_32:
    v35 = (v35 + 8);
    v34 -= 8;
    if (!v34)
    {
      goto LABEL_40;
    }
  }

  v38 = 0;
LABEL_42:
  if (v31)
  {
    v39 = 0;
    v40 = 0;
    WTF::fastFree(v31, v30);
  }

  return v38;
}

uint64_t WebGPU::PipelineLayout::updateVertexOffsets(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    return 1;
  }

  if (a2 == -2 || a2 == -1)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x2256AE79CLL);
  }

  v6 = *(v5 - 8);
  v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = v6 & (v8 ^ HIWORD(v8));
  v10 = (v5 + 12 * v9);
  v11 = *v10;
  if (*v10 != a2)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v9 = (v9 + v12) & v6;
      v10 = (v5 + 12 * v9);
      v11 = *v10;
      ++v12;
      if (*v10 == a2)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if ((v5 + 12 * *(v5 - 4)) == v10)
  {
    return 1;
  }

  v13 = *(v10 + 1);
  if ((v13 & 0x100000000) == 0)
  {
    return 1;
  }

  if (a5 < v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  return WebGPU::PipelineLayout::offsetVectorForBindGroup(a1, a2, *(a1 + 64), a3, 1, (a4 + 4 * v13), a5 - v13) & 1;
}

uint64_t WebGPU::PipelineLayout::updateFragmentOffsets(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 1;
  }

  if (a2 == -2 || a2 == -1)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x2256AE8F8);
  }

  v6 = *(v5 - 8);
  v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = v6 & (v8 ^ HIWORD(v8));
  v10 = (v5 + 12 * v9);
  v11 = *v10;
  if (*v10 != a2)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v9 = (v9 + v12) & v6;
      v10 = (v5 + 12 * v9);
      v11 = *v10;
      ++v12;
      if (*v10 == a2)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if ((v5 + 12 * *(v5 - 4)) == v10)
  {
    return 1;
  }

  v13 = *(v10 + 1);
  if ((v13 & 0x100000000) == 0)
  {
    return 1;
  }

  if (a5 < v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  return WebGPU::PipelineLayout::offsetVectorForBindGroup(a1, a2, *(a1 + 72), a3, 2, (a4 + 4 * v13), a5 - v13) & 1;
}

uint64_t WebGPU::PipelineLayout::updateComputeOffsets(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    return 1;
  }

  if (a2 == -2 || a2 == -1)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x2256AEA54);
  }

  v6 = *(v5 - 8);
  v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = v6 & (v8 ^ HIWORD(v8));
  v10 = (v5 + 12 * v9);
  v11 = *v10;
  if (*v10 != a2)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v9 = (v9 + v12) & v6;
      v10 = (v5 + 12 * v9);
      v11 = *v10;
      ++v12;
      if (*v10 == a2)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if ((v5 + 12 * *(v5 - 4)) == v10)
  {
    return 1;
  }

  v13 = *(v10 + 1);
  if ((v13 & 0x100000000) == 0)
  {
    return 1;
  }

  if (a5 < v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  return WebGPU::PipelineLayout::offsetVectorForBindGroup(a1, a2, *(a1 + 80), a3, 4, (a4 + 4 * v13), a5 - v13) & 1;
}

id WebGPU::PipelineLayout::errorValidatingBindGroupCompatibility(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 32) != 1)
  {
    goto LABEL_56;
  }

  v5 = *a2;
  if (!*a2)
  {
    v7 = 0;
    v6 = 0;
LABEL_32:
    v9 = v7;
    v7 = &v5[4 * v6];
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v6 = *(v5 - 1);
  v7 = &v5[4 * v6];
  if (!*(v5 - 3))
  {
    goto LABEL_32;
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  v8 = 16 * v6;
  v9 = *a2;
  while (*v9 >= 0xFFFFFFFE)
  {
    v9 += 4;
    v8 -= 16;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

  if (!v5)
  {
LABEL_33:
    v10 = 0;
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_34:
    v17 = 1;
    v18 = *(a1 + 28);
    if (v18 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_10:
  v10 = &v5[4 * *(v5 - 1)];
  if (v9 == v10)
  {
    goto LABEL_34;
  }

LABEL_11:
  v11 = 0;
  do
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    if (v13)
    {
      v14 = *(v13 + 2);
      *(v13 + 2) = v14 + 1;
      if (v12 > v11)
      {
        v11 = v12;
      }

      if (v14)
      {
        *(v13 + 2) = v14;
      }

      else
      {
        WebGPU::BindGroup::~BindGroup(v13, a2, a3);
        bmalloc::api::tzoneFree(v15, v16);
      }
    }

    else if (v12 > v11)
    {
      v11 = *v9;
    }

    do
    {
      v9 += 4;
    }

    while (v9 != v7 && *v9 >= 0xFFFFFFFE);
  }

  while (v9 != v10);
  if ((*(a1 + 32) & 1) == 0)
  {
    __break(1u);
LABEL_65:
    __break(0xC471u);
    JUMPOUT(0x2256AED9CLL);
  }

  v17 = v11 + 1;
  v18 = *(a1 + 28);
  if (v18 > v17)
  {
LABEL_27:
    if (v18 != 1 || (v19 = *(**(a1 + 16) + 48)) != 0 && *(v19 - 12))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"number of bind groups set(%u) is less than the pipeline uses(%zu)", v17, v18];
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_35:
  if (!v18)
  {
LABEL_56:
    v24 = 0;
    goto LABEL_60;
  }

  v20 = 0;
  while (1)
  {
    if (v20 >= *(a1 + 28))
    {
      goto LABEL_65;
    }

    v25 = *(*(a1 + 16) + 8 * v20);
    v26 = *(v25 + 6);
    if (v26)
    {
      if (*(v26 - 12))
      {
        break;
      }
    }

LABEL_38:
    if (++v20 == v18)
    {
      goto LABEL_56;
    }
  }

  v27 = *a2;
  if (!*a2)
  {
    goto LABEL_58;
  }

  if (v20 == 4294967294)
  {
    goto LABEL_65;
  }

  v28 = *(v27 - 2);
  v29 = 9 * ((~(v20 << 15) + v20) ^ ((~(v20 << 15) + v20) >> 10));
  v30 = (v29 ^ (v29 >> 6)) + ~((v29 ^ (v29 >> 6)) << 11);
  v31 = v28 & (v30 ^ HIWORD(v30));
  v32 = v27[4 * v31];
  if (v32 != v20)
  {
    v33 = 1;
    while (v32 != -1)
    {
      v31 = (v31 + v33) & v28;
      v32 = v27[4 * v31];
      ++v33;
      if (v32 == v20)
      {
        goto LABEL_50;
      }
    }

    v31 = *(v27 - 1);
  }

LABEL_50:
  if (v31 == *(v27 - 1) || (v34 = *&v27[4 * v31 + 2]) == 0)
  {
LABEL_58:
    [MEMORY[0x277CCACA8] stringWithFormat:@"can not find bind group in pipeline for bindGroup index %zu", v20, v38];
    goto LABEL_59;
  }

  v35 = *(v34 + 64);
  if (v35)
  {
    ++*(v35 + 2);
    v24 = WebGPU::BindGroupLayout::errorValidatingBindGroupCompatibility(v25, v35);
    if (*(v35 + 2) == 1)
    {
      v21 = v24;
      WebGPU::BindGroupLayout::~BindGroupLayout(v35, v36);
      bmalloc::api::tzoneFree(v22, v23);
      v24 = v21;
      if (v21)
      {
        goto LABEL_60;
      }
    }

    else
    {
      --*(v35 + 2);
      if (v24)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_38;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"can not find bind group in set bind groups for bindGroup index %zu", v20, v38];
  v24 = LABEL_59:;
LABEL_60:

  return v24;
}

WebGPU::PipelineLayout *wgpuPipelineLayoutRelease(WebGPU::PipelineLayout *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

WTF::StringImpl *wgpuPipelineLayoutSetLabel(WebGPU::PipelineLayout *a1, char *__s)
{
  ++*(a1 + 2);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  result = v7;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v7, v3);
  }

  if (*(a1 + 2) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(a1, v3);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(a1 + 2);
  }

  return result;
}

void sub_2256AEEC4(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
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
        if (*(v8 + 2) == 1)
        {
          WebGPU::BindGroupLayout::~BindGroupLayout(v8, a2);
          bmalloc::api::tzoneFree(v6, v7);
        }

        else
        {
          --*(v8 + 2);
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

_OWORD *WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(_OWORD *result, uint64_t *a2, int *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AF134);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v23 = v8 + 16 * *(v8 - 4);
        *v7 = v14;
        *(v7 + 1) = v23;
        *(v7 + 16) = 0;
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v8 + 16 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = -1;
      *(v16 + 1) = 0;
      --*(v8 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  *(v14 + 1) = *a4;
  v18 = *(v8 - 16);
  v19 = *(v8 - 12) + 1;
  *(v8 - 12) = v19;
  v20 = (v18 + v19);
  v21 = *(v8 - 4);
  if (v21 <= 0x400)
  {
    if (3 * v21 > 4 * v20)
    {
      goto LABEL_24;
    }

LABEL_17:
    if (v21)
    {
      v22 = v21 << (6 * v19 >= (2 * v21));
    }

    else
    {
      v22 = 8;
    }

    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, v22, v14);
    v14 = result;
    v8 = *a2;
    if (*a2)
    {
      v21 = *(v8 - 4);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_24;
  }

  if (v21 <= 2 * v20)
  {
    goto LABEL_17;
  }

LABEL_24:
  *v7 = v14;
  *(v7 + 1) = v8 + 16 * v21;
  *(v7 + 16) = 1;
  return result;
}

_DWORD *WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long>(_DWORD *result, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256AF354);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v8 + 12 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v23 = v8 + 12 * *(v8 - 4);
        *v7 = v14;
        *(v7 + 1) = v23;
        *(v7 + 16) = 0;
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v8 + 12 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = 0xFFFFFFFFLL;
      *(v16 + 8) = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  v18 = *a4;
  v19 = 1;
  *(v14 + 8) = 1;
  *v14 = v4;
  v14[1] = v18;
  v20 = *a2;
  if (*a2)
  {
    v19 = *(v20 - 12) + 1;
  }

  *(v20 - 12) = v19;
  v21 = (*(v20 - 16) + v19);
  v22 = *(v20 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (3 * v22 <= 4 * v21)
  {
    if (!v22)
    {
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, v14);
      v14 = result;
      v20 = *a2;
      if (!*a2)
      {
LABEL_19:
        LODWORD(v22) = 0;
        goto LABEL_23;
      }

LABEL_22:
      LODWORD(v22) = *(v20 - 4);
      goto LABEL_23;
    }

LABEL_21:
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, v22 << (6 * v19 >= (2 * v22)), v14);
    v14 = result;
    v20 = *a2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  *v7 = v14;
  *(v7 + 1) = v20 + 12 * v22;
  *(v7 + 16) = 1;
  return result;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::optional<unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::optional<unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::optional<unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((12 * a2 + 16));
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
    v9 = WTF::fastMalloc((12 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v12 = a2;
  v13 = v9 + 5;
  do
  {
    *(v13 - 1) = 0xFFFFFFFFLL;
    *(v13 + 4) = 0;
    v13 += 3;
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
      v16 = (v6 + 12 * v14);
      if (*v16 <= 0xFFFFFFFD)
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

        v19 = 0;
        v20 = 9 * ((*v16 + ~(*v16 << 15)) ^ ((*v16 + ~(*v16 << 15)) >> 10));
        v21 = (v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11);
        v22 = v21 ^ HIWORD(v21);
        do
        {
          v23 = v22 & v18;
          v24 = (v17 + 12 * v23);
          v22 = ++v19 + v23;
        }

        while (*v24 != -1);
        v25 = *v16;
        v24[2] = v16[2];
        *v24 = v25;
        if (v16 == a3)
        {
          v15 = v24;
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

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,std::pair<unsigned int,unsigned int>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,std::pair<unsigned int,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<unsigned int,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    result = WTF::fastMalloc((12 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = WTF::fastMalloc((12 * a2 + 16));
    v9 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v10 = a2;
  v11 = result + 5;
  do
  {
    *(v11 - 1) = -1;
    *v11 = 0;
    v11 = (v11 + 12);
    --v10;
  }

  while (v10);
LABEL_7:
  *a1 = v9;
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v13 = (v4 + 12 * i);
      if (*v13 <= 0xFFFFFFFD)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = 9 * ((*v13 + ~(*v13 << 15)) ^ ((*v13 + ~(*v13 << 15)) >> 10));
        v18 = (v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11);
        v19 = v18 ^ HIWORD(v18);
        do
        {
          v20 = v19 & v15;
          v21 = (v14 + 12 * v20);
          v8 = *v21;
          v19 = ++v16 + v20;
        }

        while (v8 != -1);
        v22 = *v13;
        v21[2] = v13[2];
        *v21 = v22;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

_DWORD *WebGPU::PresentationContext::create@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (!*a1 || *v4)
  {
LABEL_3:
    if (WebGPU::PresentationContext::s_heapRef)
    {
      result = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PresentationContext::s_heapRef, a2);
    }

    else
    {
      result = WebGPU::PresentationContext::operatorNewSlow(0x10);
    }

    result[2] = 1;
    *result = &unk_2838D2EE0;
    *a3 = result;
    return result;
  }

  v6 = *(v4 + 8);
  if (v6 == 1)
  {
    if (WebGPU::PresentationContextCoreAnimation::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PresentationContextCoreAnimation::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::PresentationContextCoreAnimation::operatorNewSlow(0x68);
    }

    v9 = NonCompact;
    *(NonCompact + 8) = 1;
    *NonCompact = &unk_2838D2F48;
    result = *(*a1 + 16);
    *(v9 + 16) = result;
    *(v9 + 24) = 0;
    *(v9 + 96) = 0;
    *a3 = v9;
  }

  else
  {
    if (v6 != 25073424)
    {
      goto LABEL_3;
    }

    return WebGPU::PresentationContextIOSurface::create(a1, a2, a3);
  }

  return result;
}

void WebGPU::PresentationContext::~PresentationContext(WebGPU::PresentationContext *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebGPU::PresentationContext::~PresentationContext(WebGPU::PresentationContext *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD *wgpuSurfaceRelease(_DWORD *result)
{
  if (result[2] == 1)
  {
    return (*(*result + 8))();
  }

  --result[2];
  return result;
}

_DWORD *wgpuSwapChainRelease(_DWORD *result)
{
  if (result[2] == 1)
  {
    return (*(*result + 8))();
  }

  --result[2];
  return result;
}

uint64_t wgpuSurfaceGetPreferredFormat(_DWORD *a1, id *this)
{
  ++a1[2];
  v2 = (*this)++;
  if (v2)
  {
    *this = v2;
    v3 = a1[2] - 1;
    if (a1[2] != 1)
    {
LABEL_3:
      a1[2] = v3;
      return 23;
    }
  }

  else
  {
    v5 = a1;
    WebGPU::Adapter::~Adapter(this);
    bmalloc::api::tzoneFree(this, v7);
    a1 = v5;
    v3 = v5[2] - 1;
    if (v5[2] != 1)
    {
      goto LABEL_3;
    }
  }

  (*(*a1 + 8))(a1);
  return 23;
}

uint64_t wgpuSwapChainGetCurrentTexture(_DWORD *a1)
{
  ++a1[2];
  result = (*(*a1 + 40))(a1);
  if (a1[2] == 1)
  {
    v3 = result;
    (*(*a1 + 8))(a1);
    return v3;
  }

  else
  {
    --a1[2];
  }

  return result;
}

void sub_2256AFA00(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[2];
  _Unwind_Resume(exception_object);
}

uint64_t wgpuSwapChainGetCurrentTextureView(_DWORD *a1)
{
  ++a1[2];
  result = (*(*a1 + 48))(a1);
  if (a1[2] == 1)
  {
    v3 = result;
    (*(*a1 + 8))(a1);
    return v3;
  }

  else
  {
    --a1[2];
  }

  return result;
}

void sub_2256AFAE8(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[2];
  _Unwind_Resume(exception_object);
}

uint64_t wgpuSwapChainPresent(_DWORD *a1)
{
  ++a1[2];
  result = (*(*a1 + 32))(a1);
  if (a1[2] == 1)
  {
    v3 = *(*a1 + 8);

    return v3(a1);
  }

  else
  {
    --a1[2];
  }

  return result;
}

void sub_2256AFBD4(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[2];
  _Unwind_Resume(exception_object);
}

uint64_t wgpuSwapChainGetTextureAsNativeImage(_DWORD *a1)
{
  ++a1[2];
  result = (*(*a1 + 72))(a1);
  if (a1[2] == 1)
  {
    v3 = *(*a1 + 8);

    return v3(a1);
  }

  else
  {
    --a1[2];
  }

  return result;
}

void sub_2256AFCC0(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[2];
  _Unwind_Resume(exception_object);
}

void WebGPU::PresentationContextCoreAnimation::~PresentationContextCoreAnimation(id *this, WTF::StringImpl *a2)
{
  *this = &unk_2838D2F48;
  std::__optional_storage_base<WebGPU::PresentationContextCoreAnimation::Configuration,false>::~__optional_storage_base((this + 3), a2);

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  *this = &unk_2838D2F48;
  std::__optional_storage_base<WebGPU::PresentationContextCoreAnimation::Configuration,false>::~__optional_storage_base((this + 3), a2);

  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::PresentationContextCoreAnimation::configure(uint64_t a1, WTF::StringImpl *a2, uint64_t a3)
{
  result = std::optional<WebGPU::PresentationContextCoreAnimation::Configuration>::operator=[abi:sn200100](a1 + 24, a2);
  if (*a3)
  {
    return result;
  }

  v7 = *(a3 + 20);
  if ((v7 - 23) >= 2 && v7 != 34 && (v7 != 26 || *(a2 + 285) != 1))
  {
    return result;
  }

  v8 = *(a3 + 24);
  v9 = *(a3 + 16);
  if (*(a3 + 8))
  {
    strlen(*(a3 + 8));
  }

  WTF::String::fromUTF8();
  v25 = v9;
  v26 = *(a3 + 20);
  while (1)
  {
    v11 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v12 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v12, (v11 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_15;
    }
  }

  v13 = 0;
  v14 = *a2;
  v15 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    MEMORY[0x22AA683C0](v14);
  }

  ++*(v14 + 1);
  atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(v14);
    if (*(a1 + 96) == 1)
    {
      goto LABEL_16;
    }

LABEL_29:
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = v8;
    *(a1 + 64) = v25;
    *(a1 + 72) = v24;
    *(a1 + 80) = v26;
    *(a1 + 88) = a2;
    *(a1 + 96) = 1;
    goto LABEL_30;
  }

LABEL_15:
  if (*(a1 + 96) != 1)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (*(a1 + 48))
  {
    std::__optional_destruct_base<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,false>::reset[abi:sn200100](a1 + 24, v10);
  }

  *(a1 + 56) = v8;
  *(a1 + 64) = v25;
  v16 = *(a1 + 72);
  *(a1 + 72) = v24;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  *(a1 + 80) = v26;
  v17 = *(a1 + 88);
  *(a1 + 88) = a2;
  if (v17)
  {
    do
    {
      v18 = *v17;
      if ((*v17 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v17, v10);
        goto LABEL_30;
      }

      v19 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::Device::~Device(v17, v10);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

LABEL_30:
  [*(a1 + 16) setPixelFormat:WebGPU::Texture::pixelFormat(*(a3 + 20))];
  if (*(a3 + 16) == 16)
  {
    [*(a1 + 16) setFramebufferOnly:1];
  }

  LODWORD(v22) = *(a3 + 24);
  LODWORD(v23) = *(a3 + 28);
  [*(a1 + 16) setDrawableSize:{v22, v23}];
  return [*(a1 + 16) setDevice:*(a2 + 1)];
}

void sub_2256B0204(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v18 = a17;
  a17 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::~optional(&a11, a2);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v19);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<WebGPU::PresentationContextCoreAnimation::Configuration>::operator=[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 72) == 1)
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
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);
          goto LABEL_8;
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

LABEL_8:
    v8 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    if (*(a1 + 24) != 1)
    {
      goto LABEL_22;
    }

    v9 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v9)
    {
      if (*(v9 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v9, a2);
        bmalloc::api::tzoneFree(v11, v12);
        v10 = *(a1 + 8);
        *(a1 + 8) = 0;
        if (!v10)
        {
LABEL_21:

LABEL_22:
          *(a1 + 72) = 0;
          return a1;
        }

LABEL_18:
        if (*(v10 + 8) == 1)
        {
          WebGPU::Texture::~Texture(v10);
          bmalloc::api::tzoneFree(v13, v14);
        }

        else
        {
          --*(v10 + 8);
        }

        goto LABEL_21;
      }

      --*(v9 + 2);
    }

    v10 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  return a1;
}

void WebGPU::PresentationContextCoreAnimation::Configuration::generateCurrentFrameState(WebGPU::PresentationContextCoreAnimation::Configuration *this, CAMetalLayer *a2, void *a3)
{
  v5 = a3;
  WTF::String::utf8();
  v6 = [v5 nextDrawable];
  v7 = [v6 texture];
  if (v46)
  {
    v8 = v46 + 16;
  }

  else
  {
    v8 = 0;
  }

  v37[0] = 0;
  v37[1] = v8;
  priv = a2[2]._priv;
  v39 = 1;
  isa = a2[2].super.super.isa;
  v9 = a2[3]._priv;
  v41 = 1;
  v42 = v9;
  v43 = 0x100000001;
  v44 = 0;
  v45 = 0;
  v33[0] = WTF::fastMalloc(4);
  *v33[0] = v9;
  v33[1] = 0x100000001;
  v10 = a2[4].super.super.isa;
  v12 = v7;
  if (WebGPU::Texture::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v11);
  }

  else
  {
    NonCompact = WebGPU::Texture::operatorNewSlow(0x90);
  }

  v14 = NonCompact;
  WebGPU::Texture::Texture(NonCompact, v12, v37, v33, v10);
  v36 = v14;

  if (v33[0])
  {
    WTF::fastFree(v33[0], v15);
  }

  *v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (v46)
  {
    v16 = (v46 + 16);
  }

  else
  {
    v16 = 0;
  }

  v33[1] = v16;
  LODWORD(v34) = a2[3]._priv;
  DWORD1(v34) = 2;
  HIDWORD(v34) = 1;
  DWORD1(v35) = 1;
  *&v32 = a2[2].super.super.isa;
  DWORD2(v32) = 1;
  BYTE12(v32) = 1;
  v17 = a2[4].super.super.isa;
  v19 = v12;
  if (WebGPU::TextureView::s_heapRef)
  {
    v20 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, v18);
  }

  else
  {
    v20 = WebGPU::TextureView::operatorNewSlow(0x78);
  }

  v21 = v20;
  WebGPU::TextureView::TextureView(v20, v19, v33, &v32, v14, v17);

  v23 = v6;
  ++*(v14 + 8);
  *this = v23;
  *(this + 1) = v14;
  v24 = *(v21 + 2);
  *(v21 + 2) = v24 + 1;
  *(this + 2) = v21;
  if (v24)
  {
    *(v21 + 2) = v24;
    v25 = *(v14 + 8) - 1;
    if (*(v14 + 8) != 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    WebGPU::Texture::~Texture(v14);
    bmalloc::api::tzoneFree(v30, v31);

    v27 = v46;
    v46 = 0;
    if (!v27)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  WebGPU::TextureView::~TextureView(v21, v22);
  bmalloc::api::tzoneFree(v28, v29);
  v25 = *(v14 + 8) - 1;
  if (*(v14 + 8) == 1)
  {
    goto LABEL_18;
  }

LABEL_15:
  *(v14 + 8) = v25;

  v27 = v46;
  v46 = 0;
  if (!v27)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (*v27 == 1)
  {
    WTF::fastFree(v27, v26);
  }

  else
  {
    --*v27;
  }

LABEL_22:
}

void sub_2256B05D4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  bmalloc::api::tzoneFree(v21, a2);

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a17);
  v25 = *(v22 - 104);
  *(v22 - 104) = 0;
  if (v25)
  {
    if (*v25 == 1)
    {
      WTF::fastFree(v25, v24);

      _Unwind_Resume(a1);
    }

    --*v25;

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void WebGPU::PresentationContextCoreAnimation::present(WebGPU::PresentationContextCoreAnimation *this)
{
  if (*(this + 96) != 1)
  {
    return;
  }

  if ((*(this + 48) & 1) == 0)
  {
    WebGPU::PresentationContextCoreAnimation::Configuration::generateCurrentFrameState(&v9, (this + 24), *(this + 2));
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_21;
    }

    std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::operator=[abi:sn200100]<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,void>(this + 24, &v9);
    if (v11)
    {
      if (*(v11 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v11, v2);
        bmalloc::api::tzoneFree(v4, v5);
        v3 = v10;
        if (!v10)
        {
          goto LABEL_13;
        }

LABEL_11:
        if (*(v3 + 2) == 1)
        {
          WebGPU::Texture::~Texture(v3);
          bmalloc::api::tzoneFree(v6, v7);

          if ((*(this + 96) & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        --*(v3 + 2);
LABEL_13:

        if ((*(this + 96) & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_16:
        if (*(this + 48))
        {
          goto LABEL_17;
        }

LABEL_21:
        __break(1u);
        return;
      }

      --*(v11 + 2);
    }

    v3 = v10;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_17:
  [*(this + 3) present];
  if ((*(this + 96) & 1) == 0)
  {
    goto LABEL_21;
  }

  std::__optional_destruct_base<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,false>::reset[abi:sn200100](this + 24, v8);
}

uint64_t std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::operator=[abi:sn200100]<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  v5 = *a2;
  *a2 = 0;
  if (v4 != 1)
  {
    *a1 = v5;
    v12 = *(a2 + 1);
    a2[1] = 0;
    a2[2] = 0;
    *(a1 + 8) = v12;
    *(a1 + 24) = 1;
    return a1;
  }

  v6 = *a1;
  *a1 = v5;

  v8 = a2[1];
  a2[1] = 0;
  v9 = *(a1 + 8);
  *(a1 + 8) = v8;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (*(v9 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v9);
    bmalloc::api::tzoneFree(v14, v15);
    v16 = a2[2];
    a2[2] = 0;
    v11 = *(a1 + 16);
    *(a1 + 16) = v16;
    if (v11)
    {
      goto LABEL_10;
    }

    return a1;
  }

  --*(v9 + 8);
LABEL_5:
  v10 = a2[2];
  a2[2] = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (!v11)
  {
    return a1;
  }

LABEL_10:
  if (*(v11 + 2) == 1)
  {
    WebGPU::TextureView::~TextureView(v11, v7);
    bmalloc::api::tzoneFree(v17, v18);
  }

  else
  {
    --*(v11 + 2);
  }

  return a1;
}

void WebGPU::PresentationContextCoreAnimation::getCurrentTexture(WebGPU::PresentationContextCoreAnimation *this)
{
  if (*(this + 96) == 1 && (*(this + 48) & 1) == 0)
  {
    WebGPU::PresentationContextCoreAnimation::Configuration::generateCurrentFrameState(&v8, (this + 24), *(this + 2));
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_18;
    }

    std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::operator=[abi:sn200100]<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,void>(this + 24, &v8);
    if (v10)
    {
      if (*(v10 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v10, v2);
        bmalloc::api::tzoneFree(v4, v5);
        v3 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }

LABEL_11:
        if (*(v3 + 2) == 1)
        {
          WebGPU::Texture::~Texture(v3);
          bmalloc::api::tzoneFree(v6, v7);

          if ((*(this + 96) & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        --*(v3 + 2);
LABEL_13:

        if ((*(this + 96) & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (*(this + 48))
        {
          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

      --*(v10 + 2);
    }

    v3 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }
}

void WebGPU::PresentationContextCoreAnimation::getCurrentTextureView(WebGPU::PresentationContextCoreAnimation *this)
{
  if (*(this + 96) == 1 && (*(this + 48) & 1) == 0)
  {
    WebGPU::PresentationContextCoreAnimation::Configuration::generateCurrentFrameState(&v8, (this + 24), *(this + 2));
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_18;
    }

    std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::operator=[abi:sn200100]<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,void>(this + 24, &v8);
    if (v10)
    {
      if (*(v10 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v10, v2);
        bmalloc::api::tzoneFree(v4, v5);
        v3 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }

LABEL_11:
        if (*(v3 + 2) == 1)
        {
          WebGPU::Texture::~Texture(v3);
          bmalloc::api::tzoneFree(v6, v7);

          if ((*(this + 96) & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        --*(v3 + 2);
LABEL_13:

        if ((*(this + 96) & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        if (*(this + 48))
        {
          return;
        }

LABEL_18:
        __break(1u);
        return;
      }

      --*(v10 + 2);
    }

    v3 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }
}

uint64_t std::__optional_storage_base<WebGPU::PresentationContextCoreAnimation::Configuration,false>::~__optional_storage_base(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 72) == 1)
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
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);
          goto LABEL_8;
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

LABEL_8:
    v8 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    if (*(a1 + 24) == 1)
    {
      v9 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (v9)
      {
        if (*(v9 + 2) == 1)
        {
          WebGPU::TextureView::~TextureView(v9, a2);
          bmalloc::api::tzoneFree(v11, v12);
          v10 = *(a1 + 8);
          *(a1 + 8) = 0;
          if (!v10)
          {
LABEL_21:

            return a1;
          }

LABEL_18:
          if (*(v10 + 8) == 1)
          {
            WebGPU::Texture::~Texture(v10);
            bmalloc::api::tzoneFree(v13, v14);
          }

          else
          {
            --*(v10 + 8);
          }

          goto LABEL_21;
        }

        --*(v9 + 2);
      }

      v10 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  return a1;
}

uint64_t std::optional<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
      if (*(v3 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v3, a2);
        bmalloc::api::tzoneFree(v5, v6);
        v4 = *(a1 + 8);
        *(a1 + 8) = 0;
        if (!v4)
        {
LABEL_11:

          return a1;
        }

LABEL_8:
        if (*(v4 + 8) == 1)
        {
          WebGPU::Texture::~Texture(v4);
          bmalloc::api::tzoneFree(v7, v8);
        }

        else
        {
          --*(v4 + 8);
        }

        goto LABEL_11;
      }

      --*(v3 + 2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  return a1;
}

void std::__optional_destruct_base<WebGPU::PresentationContextCoreAnimation::Configuration::FrameState,false>::reset[abi:sn200100](uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
      if (*(v3 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v3, a2);
        bmalloc::api::tzoneFree(v5, v6);
        v4 = *(a1 + 8);
        *(a1 + 8) = 0;
        if (!v4)
        {
LABEL_11:

          *(a1 + 24) = 0;
          return;
        }

LABEL_8:
        if (*(v4 + 8) == 1)
        {
          WebGPU::Texture::~Texture(v4);
          bmalloc::api::tzoneFree(v7, v8);
        }

        else
        {
          --*(v4 + 8);
        }

        goto LABEL_11;
      }

      --*(v3 + 2);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }
}

_DWORD *WebGPU::PresentationContextIOSurface::create@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (WebGPU::PresentationContextIOSurface::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PresentationContextIOSurface::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::PresentationContextIOSurface::operatorNewSlow(0);
  }

  v8 = NonCompact;
  *(NonCompact + 8) = 1;
  *NonCompact = &unk_2838D3010;
  *(NonCompact + 76) = 0;
  *(NonCompact + 16) = 0u;
  *(NonCompact + 32) = 0u;
  *(NonCompact + 48) = 0u;
  *(NonCompact + 57) = 0u;
  if (a2[60] == 1)
  {
    WTF::MachSendRight::MachSendRight();
    *(v8 + 76) = 1;
  }

  *(v8 + 80) = 0;
  *(v8 + 88) = 2;
  *a3 = v8;
  v9 = *(*a1 + 16);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3321888768;
  v16[2] = ___ZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceE_block_invoke;
  v16[3] = &__block_descriptor_40_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__0_e20_v16__0____CFArray__8l;
  *(v8 + 8) += 2;
  v17 = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = ___ZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceE_block_invoke_1;
  v14[3] = &__block_descriptor_40_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__1_e14_v16__0___v___8l;
  *(v8 + 8) += 2;
  v15 = v8;
  (*(v9 + 16))(v9, v16, v14, v7);
  v10 = *(v8 + 8) - 1;
  if (*(v8 + 8) == 1)
  {
    (*(*v8 + 8))(v8);
    v11 = *(v8 + 8) - 1;
    if (*(v8 + 8) != 1)
    {
LABEL_7:
      *(v8 + 8) = v11;
      v12 = v15;
      v15 = 0;
      if (!v12)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *(v8 + 8) = v10;
    v11 = v10 - 1;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  (*(*v8 + 8))(v8);
  v12 = v15;
  v15 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v12[2] == 1)
  {
    (*(*v12 + 8))(v12);
    result = v17;
    v17 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  --v12[2];
LABEL_13:
  result = v17;
  v17 = 0;
  if (!result)
  {
    return result;
  }

LABEL_14:
  if (result[2] == 1)
  {
    return (*(*result + 8))(result);
  }

  --result[2];
  return result;
}

void sub_2256B0FAC(_Unwind_Exception *a1)
{
  if (*(v1 + 76) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v1 + 72));
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::Texture>::deref(v4);
  }

  v5 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v5, v3);
  }

  WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1 + 24, v3);

  if (*(v1 + 8) == 1)
  {
    bmalloc::api::tzoneFree(v1, v6);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_2256B1040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  if (a13)
  {
    if (a13[2] == 1)
    {
      (*(*a13 + 8))(a13);
    }

    else
    {
      --a13[2];
    }
  }

  if (v18[2] == 1)
  {
    (*(*v18 + 8))(v18);
  }

  else
  {
    --v18[2];
  }

  if (a18)
  {
    if (a18[2] == 1)
    {
      (*(*a18 + 8))(a18);
    }

    else
    {
      --a18[2];
    }
  }

  if (v18[2] == 1)
  {
    (*(*v18 + 8))(v18);
    WTF::Ref<WebGPU::PresentationContextIOSurface,WTF::RawPtrTraits<WebGPU::PresentationContextIOSurface>,WTF::DefaultRefDerefTraits<WebGPU::PresentationContextIOSurface>>::~Ref(v19);
    _Unwind_Resume(a1);
  }

  --v18[2];
  WTF::Ref<WebGPU::PresentationContextIOSurface,WTF::RawPtrTraits<WebGPU::PresentationContextIOSurface>,WTF::DefaultRefDerefTraits<WebGPU::PresentationContextIOSurface>>::~Ref(v19);
  _Unwind_Resume(a1);
}

void ___ZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceE_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  objc_storeStrong((v3 + 16), a2);
  if (*(v3 + 76) == 1 && *(v3 + 72))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          IOSurfaceSetOwnershipIdentity();
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear((v3 + 24), v5);
}

uint64_t __copy_helper_block_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  ++*(v2 + 8);
  *(result + 32) = v2;
  return result;
}

_DWORD *__destroy_helper_block_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__0(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

void ___ZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceE_block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA68A80]();
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_2838D3098;
  v6[1] = v5;
  v14 = v6;
  v8 = *(v4 + 40);
  if (!v8)
  {
    v11 = v6;
    (*(v5 + 16))(v5);
    v14 = 0;
    v10 = v11;
    goto LABEL_7;
  }

  v9 = *(v8 + 16);
  atomic_fetch_add(v9, 1u);
  v15 = v9;
  WebGPU::Queue::onSubmittedWorkScheduled(v9, &v14, v7);
  v15 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WebGPU::Queue::~Queue(v9);
    bmalloc::api::tzoneFree(v12, v13);
    v10 = v14;
    v14 = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
LABEL_7:
    (*(*v10 + 8))(v10);
  }

LABEL_8:
}

void sub_2256B1458(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  ++*(v2 + 8);
  *(result + 32) = v2;
  return result;
}

_DWORD *__destroy_helper_block_ea8_32c97_ZTSKZN6WebGPU28PresentationContextIOSurface6createERK21WGPUSurfaceDescriptorRKNS_8InstanceEE3__1(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

_DWORD **WTF::Ref<WebGPU::PresentationContextIOSurface,WTF::RawPtrTraits<WebGPU::PresentationContextIOSurface>,WTF::DefaultRefDerefTraits<WebGPU::PresentationContextIOSurface>>::~Ref(_DWORD **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (v1[2] == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      return v2;
    }

    else
    {
      --v1[2];
    }
  }

  return result;
}

void WebGPU::PresentationContextIOSurface::~PresentationContextIOSurface(WebGPU::PresentationContextIOSurface *this)
{
  *this = &unk_2838D3010;
  if (*(this + 76) == 1)
  {
    WTF::MachSendRight::~MachSendRight((this + 72));
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    if (*(v3 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v3);
      bmalloc::api::tzoneFree(v5, v6);
      v4 = *(this + 5);
      *(this + 5) = 0;
      if (v4)
      {
        do
        {
LABEL_9:
          v7 = *v4;
          if ((*v4 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, v2);
            goto LABEL_14;
          }

          v8 = *v4;
          atomic_compare_exchange_strong_explicit(v4, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v8 != v7);
        if (v7 == 3)
        {
          WebGPU::Device::~Device(v4, v2);
          bmalloc::api::tzoneFree(v9, v10);
        }
      }

      goto LABEL_14;
    }

    --*(v3 + 8);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_14:
  v11 = *(this + 9);
  v12 = *(this + 3);
  if (!v11)
  {
    goto LABEL_27;
  }

  v13 = 16 * v11;
  v14 = (v12 + 8);
  do
  {
    v17 = *v14;
    *v14 = 0;
    if (!v17)
    {
      goto LABEL_21;
    }

    if (*(v17 + 8) != 1)
    {
      --*(v17 + 8);
LABEL_21:
      v18 = *(v14 - 1);
      *(v14 - 1) = 0;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    WebGPU::Texture::~Texture(v17);
    bmalloc::api::tzoneFree(v19, v20);
    v18 = *(v14 - 1);
    *(v14 - 1) = 0;
    if (!v18)
    {
      goto LABEL_17;
    }

LABEL_24:
    if (*(v18 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v18);
      bmalloc::api::tzoneFree(v15, v16);
    }

    else
    {
      --*(v18 + 8);
    }

LABEL_17:
    v14 += 2;
    v13 -= 16;
  }

  while (v13);
  v12 = *(this + 3);
LABEL_27:
  if (v12)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v12, v2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebGPU::PresentationContextIOSurface::~PresentationContextIOSurface(this);

  bmalloc::api::tzoneFree(v1, v2);
}

_DWORD *WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear(_DWORD *result, void *a2)
{
  if (result[2])
  {
    v2 = result;
    v3 = result[3];
    result = *result;
    if (v3)
    {
      v4 = 16 * v3;
      v5 = (result + 2);
      while (1)
      {
        v8 = *v5;
        *v5 = 0;
        if (!v8)
        {
          goto LABEL_9;
        }

        if (*(v8 + 8) != 1)
        {
          break;
        }

        WebGPU::Texture::~Texture(v8);
        bmalloc::api::tzoneFree(v10, v11);
        v9 = *(v5 - 1);
        *(v5 - 1) = 0;
        if (v9)
        {
LABEL_12:
          if (*(v9 + 8) == 1)
          {
            WebGPU::Texture::~Texture(v9);
            bmalloc::api::tzoneFree(v6, v7);
          }

          else
          {
            --*(v9 + 8);
          }
        }

LABEL_5:
        v5 += 2;
        v4 -= 16;
        if (!v4)
        {
          v2[3] = 0;
          result = *v2;
          goto LABEL_15;
        }
      }

      --*(v8 + 8);
LABEL_9:
      v9 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

LABEL_15:
    if (result)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebGPU::PresentationContextIOSurface::getTextureAsNativeImage(WebGPU::PresentationContextIOSurface *this@<X0>, BOOL *a2@<X2>, void *a3@<X1>, CGImageRef *a4@<X8>)
{
  *a2 = 0;
  v5 = *(this + 5);
  if (!v5)
  {
    *a4 = 0;
    return;
  }

  while (1)
  {
    v8 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v9 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
  v11 = *v5;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (!v10)
  {
    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_7;
    }

LABEL_48:
    v38 = v11;
    v39 = a3;
    WTF::Lock::unlockSlow(v38);
    a3 = v39;
    if (*(this + 9) <= v39)
    {
      goto LABEL_49;
    }

    goto LABEL_8;
  }

  v37 = a3;
  MEMORY[0x22AA683C0](v11);
  a3 = v37;
  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_48;
  }

LABEL_7:
  if (*(this + 9) <= a3)
  {
    goto LABEL_49;
  }

LABEL_8:
  v13 = *(this + 3) + 16 * a3;
  v14 = *(v13 + 8);
  if (!v14)
  {
    v14 = *v13;
    if (!*v13)
    {
      goto LABEL_49;
    }
  }

  v15 = *v14;
  if (*v14)
  {
    goto LABEL_14;
  }

  v15 = WTF::fastCompactMalloc(0x10);
  *v15 = 1;
  *(v15 + 8) = v14;
  v16 = *v14;
  *v14 = v15;
  if (!v16)
  {
    goto LABEL_14;
  }

  if (atomic_fetch_add(v16, 0xFFFFFFFF) != 1)
  {
    v15 = *v14;
    if (*v14)
    {
      goto LABEL_14;
    }

LABEL_49:
    *a4 = 0;
    goto LABEL_50;
  }

  atomic_store(1u, v16);
  WTF::fastFree(v16, a3);
  v15 = *v14;
  if (!*v14)
  {
    goto LABEL_49;
  }

LABEL_14:
  atomic_fetch_add(v15, 1u);
  v17 = *(v15 + 8);
  if (!v17 || (WebGPU::Texture::waitForCommandBufferCompletion(v17) & 1) == 0 || (v18 = *(v15 + 8)) == 0)
  {
    *a4 = 0;
    if (atomic_fetch_add(v15, 0xFFFFFFFF) != 1)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  v19 = *(v18 + 16);
  v20 = v19;
  if (!v19 || [v19 pixelFormat] == 80 || objc_msgSend(v20, "pixelFormat") == 81 || objc_msgSend(v20, "pixelFormat") == 115)
  {
    *a2 = 1;
    *a4 = 0;

    if (atomic_fetch_add(v15, 0xFFFFFFFF) != 1)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  v21 = [v20 pixelFormat];
  v22 = MEMORY[0x277CBF4B8];
  if (*(this + 20) == 1)
  {
    v22 = MEMORY[0x277CBF3E0];
  }

  space = CGColorSpaceCreateWithName(*v22);
  v23 = [v20 width];
  v24 = [v20 height];
  v25 = v24;
  if (*(this + 22) == 1)
  {
    v26 = 5;
  }

  else
  {
    v26 = 1;
  }

  v27 = v21 == 115;
  v28 = 2;
  if (v21 == 115)
  {
    v28 = 3;
  }

  v29 = v23 << v28;
  if (v21 == 115)
  {
    v30 = 16;
  }

  else
  {
    v30 = 8;
  }

  if (v27)
  {
    v31 = 4352;
  }

  else
  {
    v31 = 0x4000;
  }

  v44 = v31;
  v45 = v26;
  v32 = v24 * v29;
  WTF::tryFastMalloc((v24 * v29));
  v33 = v47[0];
  if (v47[0])
  {
    memset(v47, 0, 24);
    v47[3] = v23;
    v47[4] = v25;
    v47[5] = 1;
    [v20 getBytes:v33 bytesPerRow:v29 fromRegion:v47 mipmapLevel:0];
    v34 = CGDataProviderCreateWithData(v33, v33, v32, WebGPU::PresentationContextIOSurface::getTextureAsNativeImage(unsigned int,BOOL &)::$_0::__invoke);
    v35 = v29;
    v36 = space;
    *a4 = CGImageCreate(v23, v25, v30, (4 * v30), v35, space, v45 | v44, v34, 0, 0, kCGRenderingIntentDefault);
    if (v34)
    {
      CFRelease(v34);
    }
  }

  else
  {
    *a4 = 0;
    v36 = space;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
LABEL_24:
    atomic_store(1u, v15);
    WTF::fastFree(v15, a3);
    goto LABEL_50;
  }

  do
  {
LABEL_50:
    v40 = *v5;
    if ((*v5 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, a3);
      return;
    }

    v41 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v41, v40 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v41 != v40);
  if (v40 == 3)
  {
    WebGPU::Device::~Device(v5, a3);
    bmalloc::api::tzoneFree(v42, v43);
  }
}

void sub_2256B1C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v12, v17);
    _Unwind_Resume(a1);
  }

  atomic_store(1u, v13);
  WTF::fastFree(v13, v17);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v12, v18);
  _Unwind_Resume(a1);
}

void WebGPU::PresentationContextIOSurface::configure(uint64_t a1, float *a2, uint32x2_t *a3)
{
  v154 = *MEMORY[0x277D85DE8];
  WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear((a1 + 24), a2);
  if (WebGPU::Texture::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v6);
  }

  else
  {
    NonCompact = WebGPU::Texture::operatorNewSlow(0x90);
  }

  v8 = NonCompact;
  v10.n128_f64[0] = WebGPU::Texture::Texture(NonCompact, a2);
  v11 = *(a1 + 48);
  *(a1 + 48) = v8;
  if (!v11)
  {
LABEL_6:
    if (*a3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (*(v11 + 8) != 1)
  {
    --*(v11 + 8);
    goto LABEL_6;
  }

  WebGPU::Texture::~Texture(v11);
  bmalloc::api::tzoneFree(v12, v13);
  if (*a3)
  {
    return;
  }

LABEL_9:
  v120 = a3[8].i32[1];
  while (1)
  {
    v14 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v15 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v15, (v14 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_15;
    }
  }

  v16 = 0;
  v17 = *a2;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    MEMORY[0x22AA683C0](v17, v10);
    ++*(v17 + 1);
    atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 == 1)
    {
LABEL_15:
      v19 = *(a1 + 40);
      *(a1 + 40) = a2;
      if (v19)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else
  {
    ++*(v17 + 1);
    atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 == 1)
    {
      goto LABEL_15;
    }
  }

  WTF::Lock::unlockSlow(v17);
  v19 = *(a1 + 40);
  *(a1 + 40) = a2;
  if (v19)
  {
    do
    {
LABEL_16:
      v20 = *v19;
      if ((*v19 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v19, v9);
        goto LABEL_21;
      }

      v21 = *v19;
      atomic_compare_exchange_strong_explicit(v19, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v20);
    if (v20 == 3)
    {
      WebGPU::Device::~Device(v19, v9);
      bmalloc::api::tzoneFree(v22, v23);
    }
  }

LABEL_21:
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = ___ZN6WebGPU28PresentationContextIOSurface9configureERNS_6DeviceERK23WGPUSwapChainDescriptor_block_invoke_2;
  v150[3] = &unk_278566408;
  v151 = &__block_literal_global_1;
  v115 = MEMORY[0x22AA68A80](v150);
  v24 = a2 + 21;
  v25 = vld1_dup_f32(v24);
  v26 = vmin_u32(a3[3], v25);
  v28 = a3[2].i32[0];
  v27 = a3[2].u32[1];
  if (((1 << v27) & 0x400840000) != 0)
  {
    v29 = a3[2].i32[1];
  }

  else
  {
    v29 = 23;
  }

  if (v27 <= 0x22)
  {
    v30 = v29;
  }

  else
  {
    v30 = 23;
  }

  v149 = v30;
  v31 = a3[1];
  v140[0] = 0;
  v140[1] = v31;
  v141 = v28;
  v142 = 1;
  v143 = v26;
  v144 = 1;
  v145 = v30;
  v146 = 0x100000001;
  v32 = a3[6].u32[1];
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v32 == 0;
  v35 = &v149;
  if (!v34)
  {
    v35 = a3[5];
  }

  v147 = v33;
  v148 = v35;
  *(a1 + 80) = a3[7];
  *(a1 + 88) = a3[8].i32[0];
  v36 = v26.u32[0];
  v37 = v26.u32[1];
  v122 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:WebGPU::Texture::pixelFormat(v30) width:v26.u32[0] height:v26.u32[1] mipmapped:0];
  v38 = (a3[2].u32[0] >> 2) & 7;
  if ((v149 - 38) < 6 || (WebGPU::Texture::compressedFormatType(v149) & 0x100000000) != 0)
  {
    v38 |= 0x10uLL;
  }

  [(MTLTextureDescriptor *)v122 setUsage:v38];
  [(MTLTextureDescriptor *)v122 setStorageMode:0];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v39 = *(a1 + 16);
  v40 = [v39 countByEnumeratingWithState:&v136 objects:v153 count:16];
  if (v40)
  {
    v41 = *v137;
LABEL_37:
    v42 = 0;
    while (1)
    {
      if (*v137 != v41)
      {
        objc_enumerationMutation(v39);
      }

      v43 = *(*(&v136 + 1) + 8 * v42);
      if ([v43 height] != v37 || objc_msgSend(v43, "width") != v36)
      {
        break;
      }

      if (v40 == ++v42)
      {
        v40 = [v39 countByEnumeratingWithState:&v136 objects:v153 count:16];
        if (!v40)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }
    }

    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid surface size. Backing surface has size (%d, %d) but attempting to configure a size of (%u, %u)", objc_msgSend(v43, "width"), objc_msgSend(v43, "height"), v36, v37];
    if (v120)
    {
      WebGPU::Device::generateAValidationError(a2, v52);
    }

    goto LABEL_62;
  }

LABEL_44:

  v44 = a3[2].u32[1];
  if (v44 > 0x22 || ((1 << v44) & 0x400840000) == 0)
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested texture format %s is not a valid context format", WebGPU::Texture::formatToString()];
    if (v120)
    {
      WebGPU::Device::generateAValidationError(a2, v53);
    }

    goto LABEL_62;
  }

  if (!v36 || !v37)
  {
    if (v120)
    {
      WebGPU::Device::generateAValidationError(a2, &cfstr_WidthOrHeightI.isa);
    }

    goto LABEL_62;
  }

  v45 = *(a2 + 21);
  if (a3[3].i32[0] > v45 || a3[3].i32[1] > v45)
  {
    if (v120)
    {
      WebGPU::Device::generateAValidationError(a2, &cfstr_RequestedCanva.isa);
    }

    goto LABEL_62;
  }

  v46 = a3[6].u32[1];
  if (v46)
  {
    v47 = a3[5];
    v48 = 4 * v46;
    while ((v115[2](v115, *v47) & 1) != 0)
    {
      ++v47;
      v48 -= 4;
      if (!v48)
      {
        goto LABEL_54;
      }
    }

    if (v120)
    {
      WebGPU::Device::generateAValidationError(a2, &cfstr_RequestedTextu_0.isa);
    }

    goto LABEL_62;
  }

LABEL_54:
  WTF::Vector<WGPUTextureFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WGPUTextureFormat const,18446744073709551615ul>(&v134, v148, v147);
  v49 = WebGPU::Device::errorValidatingTextureCreation(a2, v140, &v134);
  if (v49)
  {
    WebGPU::generateAValidationError(a2, v49, (v120 != 0));
LABEL_56:

    goto LABEL_57;
  }

  if (a3[2].i32[1] == 23 && (a3[2].i8[0] & 8) != 0)
  {
    v107 = *(a2 + 63);
    if (!v107)
    {
LABEL_150:
      WebGPU::generateAValidationError(a2, @"Requested storage format but BGRA8UnormStorage is not enabled", (v120 != 0));
      goto LABEL_57;
    }

    v108 = *(a2 + 30);
    while (1)
    {
      v109 = *v108++;
      if (v109 == 12)
      {
        break;
      }

      if (!--v107)
      {
        goto LABEL_150;
      }
    }
  }

  [(MTLTextureDescriptor *)v122 setUsage:[(MTLTextureDescriptor *)v122 usage]| 4];
  v119 = [(MTLTextureDescriptor *)v122 pixelFormat]== MTLPixelFormatRGBA16Float && *(a1 + 84) == 0;
  v118 = [(MTLTextureDescriptor *)v122 usage];
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = *(a1 + 16);
  v54 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v54)
  {
    v117 = *v131;
    do
    {
      v121 = v54;
      for (i = 0; i != v121; ++i)
      {
        if (*v131 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v130 + 1) + 8 * i);
        if (v119)
        {
          [(MTLTextureDescriptor *)v122 setPixelFormat:115];
          v145 = 34;
          [(MTLTextureDescriptor *)v122 setUsage:v118];
          [(MTLTextureDescriptor *)v122 setUsage:[(MTLTextureDescriptor *)v122 usage]| 1];
          v59 = v122;
          v60 = [*(a2 + 1) newTextureWithDescriptor:v59];
          WebGPU::Device::setOwnerWithIdentity(a2, v60);

          if (a3[1])
          {
            strlen(*&a3[1]);
          }

          WTF::String::fromUTF8();
          v62 = v125;
          if (v125)
          {
            atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
            MEMORY[0x22AA68130](&v127, v62);
            if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v62, v63);
            }
          }

          else
          {
            v127 = &stru_2838D6D18;
          }

          v64 = v127;
          [v60 setLabel:v64];

          v65 = v127;
          v127 = 0;

          v67 = v125;
          v125 = 0;
          if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v67, v66);
          }

          v68 = a3[6].u32[1];
          v127 = 0;
          v128 = 0;
          v129 = v68;
          if (v68)
          {
            if (v68 >> 30)
            {
              goto LABEL_157;
            }

            v69 = WTF::fastMalloc((4 * v68));
            v128 = v68;
            v127 = v69;
            memcpy(v69, *&a3[5], 4 * a3[6].u32[1]);
          }

          v71 = v60;
          if (WebGPU::Texture::s_heapRef)
          {
            v72 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v70);
          }

          else
          {
            v72 = WebGPU::Texture::operatorNewSlow(0x90);
          }

          v61 = v72;
          WebGPU::Texture::Texture(v72, v71, v140, &v127, a2);

          *(v61 + 105) = 1;
          [(MTLTextureDescriptor *)v59 setPixelFormat:80];
          v145 = 23;
          [(MTLTextureDescriptor *)v59 setUsage:v118 | 2];
          if (v127)
          {
            WTF::fastFree(v127, v73);
          }
        }

        else
        {
          v61 = 0;
        }

        v74 = WebGPU::Device::newTextureWithDescriptor(a2, v122, v58, 0);
        if (a3[1])
        {
          strlen(*&a3[1]);
        }

        WTF::String::fromUTF8();
        v75 = v125;
        if (v125)
        {
          atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
          MEMORY[0x22AA68130](&v127, v75);
          if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v76);
          }
        }

        else
        {
          v127 = &stru_2838D6D18;
        }

        v77 = v127;
        [v74 setLabel:v77];

        v78 = v127;
        v127 = 0;

        v80 = v125;
        v125 = 0;
        if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v80, v79);
        }

        v81 = a3[6].u32[1];
        v127 = 0;
        v128 = 0;
        v129 = v81;
        if (v81)
        {
          if (v81 >> 30)
          {
LABEL_157:
            __break(0xC471u);
            JUMPOUT(0x2256B2920);
          }

          v82 = WTF::fastMalloc((4 * v81));
          v128 = v81;
          v127 = v82;
          memcpy(v82, *&a3[5], 4 * a3[6].u32[1]);
        }

        v84 = v74;
        if (WebGPU::Texture::s_heapRef)
        {
          v85 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v83);
        }

        else
        {
          v85 = WebGPU::Texture::operatorNewSlow(0x90);
        }

        v86 = v85;
        WebGPU::Texture::Texture(v85, v84, v140, &v127, a2);
        v126[1] = v86;

        *(v86 + 105) = 1;
        ++*(v86 + 8);
        v125 = v86;
        if (v61)
        {
          ++*(v61 + 8);
        }

        v126[0] = v61;
        v88 = *(a1 + 36);
        if (v88 == *(a1 + 32))
        {
          v89 = WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 24, v88 + 1, &v125);
          v88 = *(a1 + 36);
          v90 = (*(a1 + 24) + 16 * v88);
          v91 = *v89;
          *v89 = 0;
          v92 = (v89 + 1);
          *v90 = v91;
        }

        else
        {
          v90 = (*(a1 + 24) + 16 * v88);
          v125 = 0;
          *v90 = v86;
          v92 = v126;
        }

        v93 = *v92;
        *v92 = 0;
        v90[1] = v93;
        *(a1 + 36) = v88 + 1;
        v94 = v126[0];
        v126[0] = 0;
        if (!v94)
        {
          goto LABEL_124;
        }

        if (*(v94 + 2) != 1)
        {
          --*(v94 + 2);
LABEL_124:
          v95 = v125;
          v125 = 0;
          if (!v95)
          {
            goto LABEL_125;
          }

          goto LABEL_132;
        }

        WebGPU::Texture::~Texture(v94);
        bmalloc::api::tzoneFree(v98, v99);
        v95 = v125;
        v125 = 0;
        if (!v95)
        {
LABEL_125:
          v96 = *(v86 + 8) - 1;
          if (*(v86 + 8) != 1)
          {
            goto LABEL_126;
          }

          goto LABEL_134;
        }

LABEL_132:
        if (*(v95 + 2) == 1)
        {
          WebGPU::Texture::~Texture(v95);
          bmalloc::api::tzoneFree(v102, v103);
          v96 = *(v86 + 8) - 1;
          if (*(v86 + 8) != 1)
          {
LABEL_126:
            *(v86 + 8) = v96;
            v97 = v127;
            if (!v127)
            {
              goto LABEL_128;
            }

LABEL_127:
            WTF::fastFree(v97, v87);
            goto LABEL_128;
          }
        }

        else
        {
          --*(v95 + 2);
          v96 = *(v86 + 8) - 1;
          if (*(v86 + 8) != 1)
          {
            goto LABEL_126;
          }
        }

LABEL_134:
        WebGPU::Texture::~Texture(v86);
        bmalloc::api::tzoneFree(v100, v101);
        v97 = v127;
        if (v127)
        {
          goto LABEL_127;
        }

LABEL_128:

        if (v61)
        {
          if (*(v61 + 8) == 1)
          {
            WebGPU::Texture::~Texture(v61);
            bmalloc::api::tzoneFree(v56, v57);
          }

          else
          {
            --*(v61 + 8);
          }
        }
      }

      v54 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
    }

    while (v54);
  }

  if (v119)
  {
    v104 = objc_opt_new();
    [v104 setFastMathEnabled:1];
    v105 = *(*(a1 + 40) + 8);
    v124 = 0;
    v106 = [v105 newLibraryWithSource:@"\n    using namespace metal;\n    constant float3x3 rgbToYCbCr = float3x3(\n        float3(0.2126 options:0.7152 error:{0.0722), \n        float3(-0.1146, -0.3854, 0.5), \n        float3(0.5, -0.4542, -0.0458));\n    constant float3x3 yCbCrToRGB = float3x3(\n        float3(1, 0, 1.5748), \n        float3(1, -0.1873, -0.4681), \n        float3(1, 1.8556, 0));\n    kernel void luminanceClamp(texture2d<float, access::read>  inTexture  [[texture(0)]], \n        texture2d<float, access::write> outTexture [[texture(1)]], \n        uint2 gid [[thread_position_in_grid]])\n    {\n        if (gid.x >= outTexture.get_width() || gid.y >= outTexture.get_height())\n            return;\n\n        float4 inColor  = inTexture.read(gid);\n        float3 yCbCr = rgbToYCbCr * inColor.rgb;\n        yCbCr.x = clamp(yCbCr.x, 0., 1.);\n        float3 outColor = yCbCrToRGB * yCbCr;\n        outTexture.write(float4(outColor, 1), gid);\n    }", v104, &v124}];
    v49 = v124;
    if (v49)
    {
      WTFLogAlways();
    }

    else
    {
      v110 = [v106 newFunctionWithName:@"luminanceClamp"];
      v111 = *(a1 + 56);
      *(a1 + 56) = v110;

      v112 = *(a1 + 56);
      v123 = 0;
      v113 = [v105 newComputePipelineStateWithFunction:v112 error:&v123];
      v49 = v123;
      v114 = *(a1 + 64);
      *(a1 + 64) = v113;
    }

    goto LABEL_56;
  }

LABEL_57:
  v51 = v134;
  if (v134)
  {
    v134 = 0;
    v135 = 0;
    WTF::fastFree(v51, v50);
  }

LABEL_62:
}

void sub_2256B292C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, char a28, WTF *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, WTF *a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a39)
  {
    WTF::fastFree(a39, v66);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebGPU28PresentationContextIOSurface9configureERNS_6DeviceERK23WGPUSwapChainDescriptor_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = WebGPU::Texture::removeSRGBSuffix(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void WebGPU::generateAValidationError(WebGPU *this, WebGPU::Device *a2, NSString *a3)
{
  v3 = a3;
  v5 = a2;
  if (v3)
  {
    WebGPU::Device::generateAValidationError(this, v5);
  }
}

atomic_ullong *WebGPU::PresentationContextIOSurface::unconfigure(WebGPU::PresentationContextIOSurface *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;

  WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear(this + 6, v3);
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    while (1)
    {
      v6 = *result;
      if ((*result & 1) == 0)
      {
        break;
      }

      v7 = *result;
      atomic_compare_exchange_strong_explicit(result, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        if (v6 == 3)
        {
          WebGPU::Device::~Device(result, v4);

          return bmalloc::api::tzoneFree(v8, v9);
        }

        return result;
      }
    }

    v10 = *result;

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v10, v4);
  }

  return result;
}

void WebGPU::PresentationContextIOSurface::present(WebGPU::PresentationContextIOSurface *this, unsigned int a2)
{
  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_7;
  }

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
  v10 = [*(this + 2) count];
  v12 = *(this + 9);
  if (v10 != v12 || v12 <= a2)
  {
    if (v4)
    {
      goto LABEL_12;
    }

    return;
  }

  if (!v4)
  {
    return;
  }

  v18 = v4[2];
  atomic_fetch_add(v18, 1u);
  v33 = v18;
  if (*(this + 9) <= a2)
  {
    goto LABEL_33;
  }

  v19 = *(*(this + 3) + 16 * a2 + 8);
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = *(v19 + 8);
  *(v19 + 8) = v20 + 1;
  if (*(this + 8))
  {
    v29 = objc_opt_new();
    v21 = WebGPU::Queue::commandBufferWithDescriptor(v18, v29);
    v22 = objc_opt_new();
    [v22 setDispatchType:0];
    v23 = [v21 computeCommandEncoderWithDescriptor:v22];
    WebGPU::Queue::setEncoderForBuffer(v18, v21, v23);
    [v23 setComputePipelineState:*(this + 8)];
    v24 = *(v19 + 16);
    [v23 setTexture:v24 atIndex:0];
    if (*(this + 9) > a2)
    {
      [v23 setTexture:*(*(*(this + 3) + 16 * a2) + 16) atIndex:1];
      v32[0] = ([v24 width] + 15) >> 4;
      v32[1] = ([v24 height] + 15) >> 4;
      v32[2] = 1;
      v30 = vdupq_n_s64(0x10uLL);
      v31 = 1;
      [v23 dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
      WebGPU::Queue::endEncoding(v18, v23, v21);
      WebGPU::Queue::commitMTLCommandBuffer(v18, v21);

      v20 = *(v19 + 8) - 1;
      goto LABEL_24;
    }

LABEL_33:
    __break(0xC471u);
    JUMPOUT(0x2256B3048);
  }

LABEL_24:
  if (!v20)
  {
    WebGPU::Texture::~Texture(v19);
    bmalloc::api::tzoneFree(v25, v26);
    v33 = 0;
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  *(v19 + 8) = v20;
LABEL_26:
  v33 = 0;
  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_29:
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18);
    WebGPU::Queue::~Queue(v18);
    bmalloc::api::tzoneFree(v27, v28);
  }

  do
  {
LABEL_12:
    v14 = *v4;
    if ((*v4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, v11);
      return;
    }

    v15 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v15 != v14);
  if (v14 == 3)
  {
    WebGPU::Device::~Device(v4, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }
}

void sub_2256B3054(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::Texture>::deref(v11);
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(va);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v10, v17);
  _Unwind_Resume(a1);
}

id WebGPU::PresentationContextIOSurface::getCurrentTexture(id *this, unsigned int a2)
{
  v4 = [this[2] count];
  v5 = *(this + 9);
  if (v5 > a2 && v4 == v5)
  {
    v10 = this[3] + 16 * a2;
    v11 = v10[1];
    if (v11)
    {
      if (*(v11 + 105) == 1)
      {
        *(v11 + 104) = 0;
      }

      return v10[1];
    }

    else
    {
      v22 = *v10;
      if (*(*v10 + 105) == 1)
      {
        *(v22 + 104) = 0;
      }

      WebGPU::Texture::setPreviouslyCleared(v22, 0, 0, 0);
      return *v10;
    }
  }

  v7 = this[5];
  if (!v7)
  {
    return this[6];
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
      goto LABEL_15;
    }
  }

  v13 = 0;
  v14 = *v7;
  v15 = 1;
  atomic_compare_exchange_strong_explicit(*v7, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    v30 = v14;
    MEMORY[0x22AA683C0]();
    v29 = 1;
    v14 = v30;
    ++*(v30 + 1);
    atomic_compare_exchange_strong_explicit(v30, &v29, 0, memory_order_release, memory_order_relaxed);
    if (v29 == 1)
    {
      goto LABEL_15;
    }

LABEL_39:
    WTF::Lock::unlockSlow(v14);
    goto LABEL_15;
  }

  ++*(v14 + 1);
  atomic_compare_exchange_strong_explicit(v14, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    goto LABEL_39;
  }

LABEL_15:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v17 = v32;
  v31 = v32;
  if ((*(v7 + 548) & 1) == 0)
  {
    v18 = v7[4] + 32 * *(v7 + 11);
    v19 = (v18 + 16);
    v20 = -32 * *(v7 + 11);
    while (v20)
    {
      v21 = *(v18 - 8);
      v18 -= 32;
      v19 -= 32;
      v20 += 32;
      if (!v21)
      {
        if ((*v19 & 1) == 0)
        {
          v31 = 0;
          *(v19 - 4) = 1;
          *(v19 - 1) = v17;
          *v19 = 1;
        }

        goto LABEL_28;
      }
    }

    v23 = v7[3];
    if (v23)
    {
      (*(*v23 + 16))(v23, 1, &v31);
      v24 = v7[3];
      v7[3] = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }
    }

LABEL_28:
    v17 = v31;
  }

  v31 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }

  do
  {
    v25 = *v7;
    if ((*v7 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, v16);
      return this[6];
    }

    v26 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v26 != v25);
  if (v25 != 3)
  {
    return this[6];
  }

  WebGPU::Device::~Device(v7, v16);
  bmalloc::api::tzoneFree(v27, v28);
  return this[6];
}

void sub_2256B3374(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v11, v13);
      _Unwind_Resume(a1);
    }
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v11, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtrArc<void ()(void)>,void>::~CallableWrapper(id *a1)
{

  return WTF::fastFree(a1, v2);
}

void WebGPU::PresentationContextIOSurface::RenderBuffer::~RenderBuffer(WebGPU::PresentationContextIOSurface::RenderBuffer *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v1);
      bmalloc::api::tzoneFree(v4, v5);
      v2 = *this;
      *this = 0;
      if (!v2)
      {
        return;
      }

      goto LABEL_7;
    }

    --*(v1 + 8);
  }

  v2 = *this;
  *this = 0;
  if (!v2)
  {
    return;
  }

LABEL_7:
  if (*(v2 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v2);
    bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*(v2 + 8);
  }
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::Texture>::deref(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    WebGPU::Texture::~Texture(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

uint64_t WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 16 * v3;
    v6 = (v4 + 8);
    while (1)
    {
      v9 = *v6;
      *v6 = 0;
      if (!v9)
      {
        goto LABEL_8;
      }

      if (*(v9 + 8) != 1)
      {
        break;
      }

      WebGPU::Texture::~Texture(v9);
      bmalloc::api::tzoneFree(v11, v12);
      v10 = *(v6 - 1);
      *(v6 - 1) = 0;
      if (v10)
      {
LABEL_11:
        if (*(v10 + 8) == 1)
        {
          WebGPU::Texture::~Texture(v10);
          bmalloc::api::tzoneFree(v7, v8);
        }

        else
        {
          --*(v10 + 8);
        }
      }

LABEL_4:
      v6 += 2;
      v5 -= 16;
      if (!v5)
      {
        v4 = *a1;
        goto LABEL_14;
      }
    }

    --*(v9 + 8);
LABEL_8:
    v10 = *(v6 - 1);
    *(v6 - 1) = 0;
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WGPUTextureFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WGPUTextureFormat const,18446744073709551615ul>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  if (a3)
  {
    if (a3 >> 30)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = result;
      v5 = a2;
      v6 = 4 * a3;
      v8 = WTF::fastMalloc((4 * a3));
      result = v4;
      *(v4 + 8) = a3;
      *v4 = v8;
      v9 = (a3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v9 < 7)
      {
        goto LABEL_13;
      }

      if (v8 - a2 < 0x20)
      {
        goto LABEL_13;
      }

      v10 = v9 + 1;
      v11 = v10 & 0x7FFFFFFFFFFFFFF8;
      v12 = &v8[v11];
      v5 = (a2 + v11 * 4);
      v13 = (a2 + 16);
      v14 = v8 + 4;
      v15 = v10 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      v8 = v12;
      if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        do
        {
          v17 = *v5++;
          *v8++ = v17;
        }

        while (v5 != (a2 + v6));
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 16 * *(a1 + 12) <= a3)
  {
    WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WebGPU::PresentationContextIOSurface::RenderBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >> 28)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v3;
    }

    v7 = *(result + 12);
    result = WTF::fastMalloc((16 * v6));
    *(v4 + 8) = v6;
    *v4 = result;
    if (v7)
    {
      v9 = result;
      v10 = (v5 + 16 * v7);
      v11 = v5;
      while (1)
      {
        v14 = *v11;
        *v11 = 0;
        *v9 = v14;
        v15 = v11[1];
        v11[1] = 0;
        v9[1] = v15;
        v16 = v11[1];
        v11[1] = 0;
        if (!v16)
        {
          goto LABEL_17;
        }

        if (*(v16 + 8) != 1)
        {
          break;
        }

        WebGPU::Texture::~Texture(v16);
        bmalloc::api::tzoneFree(v17, v18);
        result = *v11;
        *v11 = 0;
        if (result)
        {
LABEL_20:
          if (*(result + 8) == 1)
          {
            WebGPU::Texture::~Texture(result);
            result = bmalloc::api::tzoneFree(v12, v13);
          }

          else
          {
            --*(result + 8);
          }
        }

LABEL_13:
        v9 += 2;
        v11 += 2;
        if (v11 == v10)
        {
          goto LABEL_22;
        }
      }

      --*(v16 + 8);
LABEL_17:
      result = *v11;
      *v11 = 0;
      if (result)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

LABEL_22:
    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

void WebGPU::Device::createQuerySet(WebGPU::Device *a1@<X0>, uint64_t a2@<X1>, WebGPU::QuerySet *a3@<X8>)
{
  if (*a2 || (v5 = *(a2 + 20), v5 > 0x1000) || (v6 = *(a1 + 1)) == 0)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    if ((*(a1 + 548) & 1) == 0)
    {
      v10 = *(a1 + 4) + 32 * *(a1 + 11);
      v11 = (v10 + 16);
      v12 = -32 * *(a1 + 11);
      while (v12)
      {
        v13 = *(v10 - 8);
        v10 -= 32;
        v11 -= 32;
        v12 += 32;
        if (!v13)
        {
          if ((*v11 & 1) == 0)
          {
            v14 = v52;
            v52 = 0;
            *(v11 - 4) = 1;
            *(v11 - 1) = v14;
            *v11 = 1;
          }

          goto LABEL_10;
        }
      }

      v15 = *(a1 + 3);
      if (v15)
      {
        (*(*v15 + 16))(v15, 1, &v52);
        v16 = *(a1 + 3);
        *(a1 + 3) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }
    }

LABEL_10:
    v9 = v52;
    v52 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    WebGPU::QuerySet::createInvalid(a3, a1);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (v7 == 0x7FFFFFFF)
      {

        WebGPU::QuerySet::createInvalid(a3, a1);
      }

      else
      {
        v20 = objc_opt_new();
        [v20 setSampleCount:v5];
        [v20 setStorageMode:0];
        [v20 setCounterSet:*(a1 + 33)];
        v21 = *(a1 + 1);
        v51 = 0;
        v22 = [v21 newCounterSampleBufferWithDescriptor:v20 error:&v51];
        v23 = v51;
        if (v23)
        {
          WebGPU::QuerySet::createInvalid(a3, a1);
        }

        else
        {
          v39 = v22;
          if (WebGPU::QuerySet::s_heapRef)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::QuerySet::s_heapRef, v38);
          }

          else
          {
            NonCompact = WebGPU::QuerySet::operatorNewSlow(0);
          }

          v41 = NonCompact;
          v42 = v39;
          *v41 = 1;
          while (1)
          {
            v43 = *a1;
            if ((*a1 & 1) == 0)
            {
              break;
            }

            v44 = *a1;
            atomic_compare_exchange_strong_explicit(a1, &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v44 == v43)
            {
              goto LABEL_56;
            }
          }

          v45 = 0;
          v46 = *a1;
          v47 = 1;
          atomic_compare_exchange_strong_explicit(*a1, &v45, 1u, memory_order_acquire, memory_order_acquire);
          if (v45)
          {
            v49 = v46;
            MEMORY[0x22AA683C0]();
            v46 = v49;
          }

          ++*(v46 + 8);
          atomic_compare_exchange_strong_explicit(v46, &v47, 0, memory_order_release, memory_order_relaxed);
          if (v47 != 1)
          {
            WTF::Lock::unlockSlow(v46);
          }

LABEL_56:
          *(v41 + 8) = a1;
          *(v41 + 16) = 0;
          v48 = v42;
          *(v41 + 24) = v48;
          *(v41 + 32) = v5;
          *(v41 + 36) = 1;
          *(v41 + 40) = 0;
          *(v41 + 48) = 0;
          *(v41 + 56) = 0;

          *a3 = v41;
        }
      }
    }

    else
    {
      v17 = *(a2 + 8);
      if ((8 * v5) <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = (8 * v5);
      }

      v19 = [v6 newBufferWithLength:v18 options:32];
      WebGPU::Device::setOwnerWithIdentity(a1, v19);
      if (v17)
      {
        strlen(v17);
      }

      WTF::String::fromUTF8();
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
        MEMORY[0x22AA68130](&v52);
        if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v24);
        }
      }

      else
      {
        v52 = &stru_2838D6D18;
      }

      [v19 setLabel:v52];
      v25 = v52;
      v52 = 0;

      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v26);
      }

      v28 = v19;
      if (WebGPU::QuerySet::s_heapRef)
      {
        v29 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::QuerySet::s_heapRef, v27);
      }

      else
      {
        v29 = WebGPU::QuerySet::operatorNewSlow(0);
      }

      v30 = v29;
      v31 = v28;
      *v30 = 1;
      while (1)
      {
        v32 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v33 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v33 == v32)
        {
          goto LABEL_45;
        }
      }

      v34 = 0;
      v35 = *a1;
      v36 = 1;
      atomic_compare_exchange_strong_explicit(*a1, &v34, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_45:
      *(v30 + 8) = a1;
      v37 = v31;
      *(v30 + 16) = v37;
      *(v30 + 24) = 0;
      *(v30 + 32) = v5;
      *(v30 + 44) = 0;
      *(v30 + 36) = 0;
      *(v30 + 49) = 0;

      *a3 = v30;
    }
  }
}

_DWORD *WebGPU::QuerySet::createInvalid(WebGPU::QuerySet *this, WebGPU::Device *a2)
{
  if (WebGPU::QuerySet::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebGPU::QuerySet::s_heapRef, a2);
  }

  else
  {
    result = WebGPU::QuerySet::operatorNewSlow(0);
  }

  v5 = result;
  *result = 1;
  while (1)
  {
    v6 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v7 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v7, (v6 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_11;
    }
  }

  v8 = 0;
  v9 = *a2;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    result = MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    result = WTF::Lock::unlockSlow(v9);
  }

LABEL_11:
  *(v5 + 1) = a2;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0x7FFFFFFF00000000;
  *(v5 + 5) = 0;
  *(v5 + 6) = 0;
  *(v5 + 56) = 0;
  *this = v5;
  return result;
}

void WebGPU::QuerySet::~QuerySet(WebGPU::QuerySet *this, void *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v3, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    do
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v4);
        goto LABEL_9;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    if (v6 == 3)
    {
      WebGPU::Device::~Device(v5, v4);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }

LABEL_9:
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void WebGPU::QuerySet::setCommandEncoder(WebGPU::QuerySet *this, WebGPU::CommandEncoder *a2)
{
  v4 = *(a2 + 25);
  v10 = v4;
  v5 = *(this + 13);
  if (v5 != *(this + 12))
  {
    *(*(this + 5) + 8 * v5) = v4;
    *(this + 13) = v5 + 1;
    v8 = *(this + 2);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 40, v5 + 1, &v10);
  v7 = *(this + 13);
  *(*(this + 5) + 8 * v7) = *v6;
  *(this + 13) = v7 + 1;
  v8 = *(this + 2);
  if (v8)
  {
LABEL_5:
    [*(a2 + 13) addObject:v8];
  }

LABEL_6:

  v9 = *(this + 3);
  if (v9)
  {
    [*(a2 + 15) addObject:v9];
  }

  if (*(this + 56) == 1)
  {

    WebGPU::CommandEncoder::makeSubmitInvalid(a2, 0);
  }
}

WebGPU::QuerySet *wgpuQuerySetRelease(WebGPU::QuerySet *result, void *a2)
{
  if (*result == 1)
  {
    WebGPU::QuerySet::~QuerySet(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void wgpuQuerySetDestroy(uint64_t a1)
{
  ++*a1;
  *(a1 + 56) = 1;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  v5 = *(a1 + 52);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = &v6[v5];
    do
    {
      v10 = *v6;
      if (*v6 == -2 || v10 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256B43CCLL);
      }

      v11 = *(*(a1 + 8) + 480);
      if (v11)
      {
        v12 = *(v11 - 8);
        v13 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        v16 = v12 & ((v15 >> 31) ^ v15);
        v17 = *(v11 + 16 * v16);
        if (v17 == v10)
        {
LABEL_12:
          v19 = *(v11 + 16 * v16 + 8);
          if (v19)
          {
            ++*(v19 + 4);
            WebGPU::CommandEncoder::makeSubmitInvalid(v19, 0);
            if (*(v19 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v19);
              bmalloc::api::tzoneFree(v8, v9);
            }

            else
            {
              --*(v19 + 4);
            }
          }
        }

        else
        {
          v18 = 1;
          while (v17 != -1)
          {
            v16 = (v16 + v18) & v12;
            v17 = *(v11 + 16 * v16);
            ++v18;
            if (v17 == v10)
            {
              goto LABEL_12;
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 52))
    {
      *(a1 + 52) = 0;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      WTF::fastFree(v20, v4);
    }
  }

  if (*a1 == 1)
  {
    WebGPU::QuerySet::~QuerySet(a1, v4);

    bmalloc::api::tzoneFree(v21, v22);
  }

  else
  {
    --*a1;
  }
}

void sub_2256B43F0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256B4404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::RefCounted<WebGPU::CommandEncoder>::deref(v2);
  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuQuerySetSetLabel(id *a1, char *__s)
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

  [a1[2] setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*a1 == 1)
  {
    WebGPU::QuerySet::~QuerySet(a1, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256B4528(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::QuerySet *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::QuerySet,WTF::RawPtrTraits<WebGPU::QuerySet>,WTF::DefaultRefDerefTraits<WebGPU::QuerySet>>::~Ref(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuQuerySetGetCount(unsigned int *a1, void *a2)
{
  v2 = (*a1)++;
  v3 = a1[8];
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    WebGPU::QuerySet::~QuerySet(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3;
}

uint64_t wgpuQuerySetGetType(unsigned int *a1, void *a2)
{
  v2 = (*a1)++;
  v3 = a1[9];
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    WebGPU::QuerySet::~QuerySet(a1, a2);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3;
}

uint64_t WebGPU::Queue::Queue(uint64_t a1, void *a2, uint64_t a3, atomic_ullong *a4)
{
  v7 = a2;
  *a1 = 1;
  v8 = v7;
  *(a1 + 32) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v8;
  v9 = *a4;
  if ((*a4 & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  v22 = WTF::fastMalloc(0x20);
  v9 = v22;
  *v22 = 0;
  *(v22 + 8) = xmmword_225881A50;
  *(v22 + 24) = a4;
  while (1)
  {
    v24 = *a4;
    if ((*a4 & 1) == 0)
    {
      break;
    }

    *(v22 + 8) = v24 >> 1;
    v25 = v24;
    atomic_compare_exchange_strong_explicit(a4, &v25, v22, memory_order_release, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree(v22, v23);
  v9 = *a4;
  if (*a4)
  {
LABEL_3:
    v10 = 0;
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v9, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      MEMORY[0x22AA683C0](v9);
    }

    ++*(v9 + 16);
    atomic_compare_exchange_strong_explicit(v9, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      WTF::Lock::unlockSlow(v9);
    }
  }

LABEL_7:
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 128) = *(a3 + 16);
  *(a1 + 40) = v9;
  *(a1 + 120) = 0;
  v12 = *(a3 + 24);
  if (v12)
  {
    v13 = 0;
    v14 = 1;
    atomic_compare_exchange_strong_explicit(v12, &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      MEMORY[0x22AA683C0](v12);
    }

    ++*(v12 + 16);
    atomic_compare_exchange_strong_explicit(v12, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      WTF::Lock::unlockSlow(v12);
    }
  }

  *(a1 + 136) = v12;
  *(a1 + 144) = 0;
  v15 = [MEMORY[0x277CBEB40] orderedSet];
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;

  v17 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = *(a1 + 120);
  *(a1 + 120) = v17;

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = *(a1 + 88);
  *(a1 + 88) = v19;

  return a1;
}

void sub_2256B4828(_Unwind_Exception *a1)
{
  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v4, v7);
  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v5 - 56), v8);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v3, v9);

  _Unwind_Resume(a1);
}

void *WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
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
        v6 = v2 + 24 * i;
        if (*v6 != -2)
        {
          v7 = *(v6 + 20);
          v8 = *(v6 + 8);
          if (v7)
          {
            v9 = 8 * v7;
            do
            {
              v10 = *v8;
              *v8 = 0;
              if (v10)
              {
                (*(*v10 + 8))(v10);
              }

              v8 = (v8 + 8);
              v9 -= 8;
            }

            while (v9);
            v8 = *(v6 + 8);
          }

          if (v8)
          {
            *(v6 + 8) = 0;
            *(v6 + 16) = 0;
            WTF::fastFree(v8, a2);
          }
        }
      }
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void *WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
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
        v6 = v2 + 24 * i;
        if (*v6 != -2)
        {
          v7 = *(v6 + 20);
          v8 = *(v6 + 8);
          if (v7)
          {
            v9 = 8 * v7;
            do
            {
              v10 = *v8;
              *v8 = 0;
              if (v10)
              {
                (*(*v10 + 8))(v10);
              }

              v8 = (v8 + 8);
              v9 -= 8;
            }

            while (v9);
            v8 = *(v6 + 8);
          }

          if (v8)
          {
            *(v6 + 8) = 0;
            *(v6 + 16) = 0;
            WTF::fastFree(v8, a2);
          }
        }
      }
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

WebGPU::Queue *WebGPU::Queue::Queue(WebGPU::Queue *this, WebGPU::Adapter *a2, atomic_ullong *a3)
{
  *this = 1;
  *(this + 4) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v5 = *a3;
  if ((*a3 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  v14 = WTF::fastMalloc(0x20);
  v5 = v14;
  *v14 = 0;
  *(v14 + 8) = xmmword_225881A50;
  *(v14 + 24) = a3;
  while (1)
  {
    v16 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    *(v14 + 8) = v16 >> 1;
    v17 = v16;
    atomic_compare_exchange_strong_explicit(a3, &v17, v14, memory_order_release, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree(v14, v15);
  v5 = *a3;
  if (*a3)
  {
LABEL_3:
    v6 = 0;
    v7 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x22AA683C0](v5);
    }

    ++*(v5 + 16);
    atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(v5);
    }
  }

LABEL_7:
  *(this + 5) = 0u;
  *(this + 5) = v5;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = 0;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(this + 15) = 0;
  *(this + 16) = v8;
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v9, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      MEMORY[0x22AA683C0](v9);
    }

    ++*(v9 + 16);
    atomic_compare_exchange_strong_explicit(v9, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      WTF::Lock::unlockSlow(v9);
    }
  }

  *(this + 17) = v9;
  *(this + 18) = 0;
  return this;
}

void sub_2256B4BF4(_Unwind_Exception *a1)
{
  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v4, v6);
  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v3, v7);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v2, v8);

  _Unwind_Resume(a1);
}

void WebGPU::Queue::~Queue(WebGPU::Queue *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    WebGPU::Queue::endEncoding(this, v2, *(this + 2));
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      v8 = v4;
      MEMORY[0x22AA683C0]();
      v4 = v8;
      v9 = *(v8 + 16) - 1;
      *(v8 + 16) = v9;
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
      v6 = *(v4 + 16) - 1;
      *(v4 + 16) = v6;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    v10 = *(v4 + 8);
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
      v37 = v4;
      WTF::Lock::unlockSlow(v4);
      v4 = v37;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    WTF::fastFree(v4, v3);
  }

LABEL_12:

  v13 = *(this + 10);
  if (v13)
  {
    v14 = *(v13 - 4);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = v13 + 24 * i;
        if (*v16 != -2)
        {
          v17 = *(v16 + 20);
          v18 = *(v16 + 8);
          if (v17)
          {
            v19 = 8 * v17;
            do
            {
              v20 = *v18;
              *v18 = 0;
              if (v20)
              {
                (*(*v20 + 8))(v20);
              }

              v18 = (v18 + 8);
              v19 -= 8;
            }

            while (v19);
            v18 = *(v16 + 8);
          }

          if (v18)
          {
            *(v16 + 8) = 0;
            *(v16 + 16) = 0;
            WTF::fastFree(v18, v12);
          }
        }
      }
    }

    WTF::fastFree((v13 - 16), v12);
  }

  v21 = *(this + 9);
  if (v21)
  {
    v22 = *(v21 - 4);
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        v24 = v21 + 24 * j;
        if (*v24 != -2)
        {
          v25 = *(v24 + 20);
          v26 = *(v24 + 8);
          if (v25)
          {
            v27 = 8 * v25;
            do
            {
              v28 = *v26;
              *v26 = 0;
              if (v28)
              {
                (*(*v28 + 8))(v28);
              }

              v26 = (v26 + 8);
              v27 -= 8;
            }

            while (v27);
            v26 = *(v24 + 8);
          }

          if (v26)
          {
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            WTF::fastFree(v26, v12);
          }
        }
      }
    }

    WTF::fastFree((v21 - 16), v12);
  }

  v29 = *(this + 5);
  *(this + 5) = 0;
  if (v29)
  {
    v30 = 0;
    atomic_compare_exchange_strong_explicit(v29, &v30, 1u, memory_order_acquire, memory_order_acquire);
    if (v30)
    {
      v33 = v29;
      MEMORY[0x22AA683C0]();
      v29 = v33;
      v34 = *(v33 + 16) - 1;
      *(v33 + 16) = v34;
      if (v34)
      {
LABEL_43:
        v32 = 1;
        atomic_compare_exchange_strong_explicit(v29, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != 1)
        {
          WTF::Lock::unlockSlow(v29);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v31 = *(v29 + 16) - 1;
      *(v29 + 16) = v31;
      if (v31)
      {
        goto LABEL_43;
      }
    }

    v35 = *(v29 + 8);
    v36 = 1;
    atomic_compare_exchange_strong_explicit(v29, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 == 1)
    {
      if (v35)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v38 = v29;
      WTF::Lock::unlockSlow(v29);
      v29 = v38;
      if (v35)
      {
        goto LABEL_49;
      }
    }

    WTF::fastFree(v29, v12);
  }

LABEL_49:
}

void sub_2256B4F70(_Unwind_Exception *a1)
{
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v1 + 128, v3);

  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v1 + 80), v4);
  WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v1 + 72), v5);
  WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v1 + 32, v6);

  _Unwind_Resume(a1);
}

void WebGPU::Queue::endEncoding(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = 0;

    goto LABEL_22;
  }

  v6 = [*(a1 + 120) objectForKey:v5];

  if (v6 && v6 == v17)
  {
    [v6 endEncoding];
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = 0;
    v9 = *(a1 + 32);
    atomic_compare_exchange_strong_explicit(v7, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x22AA683C0](v7);
    }

    if (*(v7 + 24))
    {
      ++*(v7 + 8);
      v10 = 1;
      atomic_compare_exchange_strong_explicit(v7, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
      v16 = 1;
      atomic_compare_exchange_strong_explicit(v7, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 == 1)
      {
LABEL_11:
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    WTF::Lock::unlockSlow(v7);
    if (v9)
    {
LABEL_12:
      WebGPU::Device::resolveTimestampsForBuffer(v9, v5);
      do
      {
        v12 = *v9;
        if ((*v9 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v9, v11);
          goto LABEL_21;
        }

        v13 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v13 != v12);
      if (v12 == 3)
      {
        WebGPU::Device::~Device(v9, v11);
        bmalloc::api::tzoneFree(v14, v15);
      }
    }

LABEL_21:
    [*(a1 + 120) removeObjectForKey:v5];
  }

LABEL_22:
}

id WebGPU::Queue::ensureBlitCommandEncoder(WebGPU::Queue *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
LABEL_4:
    v5 = objc_opt_new();
    v6 = WebGPU::Queue::commandBufferWithDescriptor(this, v5);
    objc_storeStrong(this + 2, v6);
    v7 = [*(this + 2) blitCommandEncoder];
    v8 = *(this + 3);
    *(this + 3) = v7;

    WebGPU::Queue::setEncoderForBuffer(this, *(this + 2), *(this + 3));
    v9 = *(this + 3);

    v10 = v9;

    return v10;
  }

  v3 = *(this + 2);
  if (!v3)
  {

    goto LABEL_4;
  }

  v4 = [*(this + 15) objectForKey:v3];

  if (v2 != v4)
  {
    goto LABEL_4;
  }

  v10 = *(this + 3);

  return v10;
}

id WebGPU::Queue::commandBufferWithDescriptor(WebGPU::Queue *this, MTLCommandBufferDescriptor *a2)
{
  v3 = a2;
  if (!*(this + 1))
  {
LABEL_13:
    v10 = 0;
    goto LABEL_50;
  }

  v4 = *(this + 5);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  v6 = *(this + 4);
  atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v4);
  }

  if (*(v4 + 24))
  {
    ++*(v4 + 8);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_10;
    }
  }

  WTF::Lock::unlockSlow(v4);
LABEL_10:
  if ([*(this + 12) count] >= 0x3E8)
  {
    if (v6)
    {
      WebGPU::Device::loseTheDevice(v6, 1);
      v10 = 0;
      goto LABEL_45;
    }

    goto LABEL_13;
  }

  v10 = [*(this + 1) commandBufferWithDescriptor:v3];
  if (v10)
  {
    [*(this + 12) addObject:v10];
  }

  v11 = *(this + 17);
  if (!v11)
  {
    goto LABEL_44;
  }

  v12 = 0;
  v13 = *(this + 16);
  atomic_compare_exchange_strong_explicit(v11, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x22AA683C0](v11);
  }

  if (*(v11 + 24))
  {
    ++*(v11 + 8);
    v14 = 1;
    atomic_compare_exchange_strong_explicit(v11, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 == 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = 0;
    v18 = 1;
    atomic_compare_exchange_strong_explicit(v11, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 == 1)
    {
LABEL_21:
      if (v13)
      {
        goto LABEL_22;
      }

      goto LABEL_44;
    }
  }

  WTF::Lock::unlockSlow(v11);
  if (v13)
  {
LABEL_22:
    v15 = *(this + 5);
    if (!v15)
    {
      goto LABEL_39;
    }

    v16 = 0;
    v17 = *(this + 4);
    atomic_compare_exchange_strong_explicit(v15, &v16, 1u, memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      MEMORY[0x22AA683C0](v15);
    }

    if (*(v15 + 24))
    {
      ++*(v15 + 8);
    }

    else
    {
      v17 = 0;
    }

    v19 = 1;
    atomic_compare_exchange_strong_explicit(v15, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 == 1)
    {
      if (!v17)
      {
        goto LABEL_39;
      }
    }

    else
    {
      WTF::Lock::unlockSlow(v15);
      if (!v17)
      {
        goto LABEL_39;
      }
    }

    WebGPU::Instance::retainDevice(v13, v17, v10);
    do
    {
      v20 = *v17;
      if ((*v17 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v17, v9);
        goto LABEL_39;
      }

      v21 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v21 != v20);
    if (v20 == 3)
    {
      WebGPU::Device::~Device(v17, v9);
      bmalloc::api::tzoneFree(v22, v23);
    }

    do
    {
LABEL_39:
      v24 = v13[1];
      if ((v24 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v13[1], v9);
        goto LABEL_44;
      }

      v25 = v13[1];
      atomic_compare_exchange_strong_explicit(v13 + 1, &v25, v24 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v25 != v24);
    if (v24 == 3)
    {
      (*(*v13 + 8))(v13);
    }
  }

LABEL_44:
  if (v6)
  {
    do
    {
LABEL_45:
      v26 = *v6;
      if ((*v6 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v6, v9);
        goto LABEL_50;
      }

      v27 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v27 != v26);
    if (v26 == 3)
    {
      WebGPU::Device::~Device(v6, v9);
      bmalloc::api::tzoneFree(v28, v29);
    }
  }

LABEL_50:

  return v10;
}

void sub_2256B55F4(_Unwind_Exception *a1, void *a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Instance,(WTF::DestructionThread)0>::deref((v5 + 8), a2);

  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v3, v7);
  }

  _Unwind_Resume(a1);
}

void WebGPU::Queue::setEncoderForBuffer(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [*(a1 + 120) objectForKey:v8];
    WebGPU::Queue::endEncoding(a1, v6, v8);

    v7 = *(a1 + 120);
    if (v5)
    {
      [v7 setObject:v5 forKey:v8];
    }

    else
    {
      [v7 removeObjectForKey:v8];
    }
  }
}

void WebGPU::Queue::finalizeBlitCommandEncoder(WebGPU::Queue *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    WebGPU::Queue::endEncoding(this, v1, *(this + 2));
    WebGPU::Queue::commitMTLCommandBuffer(this, *(this + 2));
    v3 = *(this + 3);
    *(this + 3) = 0;

    v4 = *(this + 2);
    *(this + 2) = 0;
  }
}

void WebGPU::Queue::commitMTLCommandBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 status] > 1 || !*(a1 + 8))
  {
    WebGPU::Queue::removeMTLCommandBuffer(a1, v4);
    goto LABEL_20;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3321888768;
  v22[2] = ___ZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v22[3] = &__block_descriptor_40_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__0_e28_v16__0___MTLCommandBuffer__8l;
  atomic_fetch_add(a1, 1u);
  atomic_fetch_add(a1, 1u);
  v23 = a1;
  [v4 addScheduledHandler:v22];
  v21 = 0;
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1);
    WebGPU::Queue::~Queue(a1);
    bmalloc::api::tzoneFree(v13, v14);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = ___ZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke_32;
  v19[3] = &__block_descriptor_40_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__1_e28_v16__0___MTLCommandBuffer__8l;
  atomic_fetch_add(a1, 1u);
  v20 = a1;
  v21 = a1;
  atomic_fetch_add(a1, 1u);
  [v4 addCompletedHandler:v19];
  v5 = v21;
  v21 = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WebGPU::Queue::~Queue(v5);
    bmalloc::api::tzoneFree(v15, v16);
  }

  [v4 commit];
  v6 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 112), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](a1 + 112);
  }

  [*(a1 + 104) addObject:v4];
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 112), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 112));
  }

  v8 = v4;
  [*(a1 + 120) removeObjectForKey:v8];
  [*(a1 + 96) removeObject:v8];

  ++*(a1 + 48);
  v9 = v20;
  v20 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WebGPU::Queue::~Queue(v9);
    bmalloc::api::tzoneFree(v17, v18);
    v10 = v23;
    v23 = 0;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = v23;
    v23 = 0;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WebGPU::Queue::~Queue(v10);
    bmalloc::api::tzoneFree(v11, v12);
  }

LABEL_20:
}

void sub_2256B5A20(_Unwind_Exception *a1)
{
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v3 + 32));
  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v2 + 32));

  _Unwind_Resume(a1);
}

void WebGPU::Queue::makeInvalid(WebGPU::Queue *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;

  v4 = *(this + 9);
  if (!v4)
  {
    v6 = 0;
    LODWORD(v5) = 0;
LABEL_10:
    v8 = v6;
    v6 = v4 + 24 * v5;
    if (!v4)
    {
      v10 = 0;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v5 = *(v4 - 4);
  v6 = v4 + 24 * v5;
  if (!*(v4 - 12))
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    v9 = 0;
    v8 = *(this + 9);
    goto LABEL_13;
  }

  v7 = 24 * v5;
  v8 = *(this + 9);
  while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 += 24;
    v7 -= 24;
    if (!v7)
    {
      v8 = v6;
      break;
    }
  }

LABEL_8:
  v9 = *(v4 - 4);
LABEL_13:
  v10 = v4 + 24 * v9;
LABEL_19:
  while (v8 != v10)
  {
    v11 = *(v8 + 20);
    if (v11)
    {
      v12 = *(v8 + 8);
      v13 = 8 * v11;
      do
      {
        v14 = *v12++;
        (*(*v14 + 16))(v14);
        v13 -= 8;
      }

      while (v13);
    }

    do
    {
      v8 += 24;
    }

    while (v8 != v6 && *v8 >= 0xFFFFFFFFFFFFFFFELL);
  }

  v15 = *(this + 10);
  if (!v15)
  {
    v17 = 0;
    LODWORD(v16) = 0;
LABEL_29:
    v19 = v17;
    v17 = v15 + 24 * v16;
    if (!v15)
    {
      v21 = 0;
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v16 = *(v15 - 4);
  v17 = v15 + 24 * v16;
  if (!*(v15 - 12))
  {
    goto LABEL_29;
  }

  if (!v16)
  {
    v20 = 0;
    v19 = *(this + 10);
    goto LABEL_32;
  }

  v18 = 24 * v16;
  v19 = *(this + 10);
  while (*v19 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v19 += 24;
    v18 -= 24;
    if (!v18)
    {
      v19 = v17;
      break;
    }
  }

LABEL_27:
  v20 = *(v15 - 4);
LABEL_32:
  v21 = v15 + 24 * v20;
LABEL_38:
  while (v19 != v21)
  {
    v22 = *(v19 + 20);
    if (v22)
    {
      v23 = *(v19 + 8);
      v24 = 8 * v22;
      do
      {
        v25 = *v23++;
        (*(*v25 + 16))(v25, 3);
        v24 -= 8;
      }

      while (v24);
    }

    do
    {
      v19 += 24;
    }

    while (v19 != v17 && *v19 >= 0xFFFFFFFFFFFFFFFELL);
  }

  v26 = *(this + 9);
  if (v26)
  {
    *(this + 9) = 0;
    v27 = *(v26 - 4);
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        v29 = v26 + 24 * i;
        if (*v29 != -2)
        {
          v30 = *(v29 + 20);
          v31 = *(v29 + 8);
          if (v30)
          {
            v32 = 8 * v30;
            do
            {
              v33 = *v31;
              *v31 = 0;
              if (v33)
              {
                (*(*v33 + 8))(v33);
              }

              v31 = (v31 + 8);
              v32 -= 8;
            }

            while (v32);
            v31 = *(v29 + 8);
          }

          if (v31)
          {
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            WTF::fastFree(v31, v3);
          }
        }
      }
    }

    WTF::fastFree((v26 - 16), v3);
  }

  v34 = *(this + 10);
  if (v34)
  {
    *(this + 10) = 0;
    v35 = *(v34 - 4);
    if (v35)
    {
      for (j = 0; j != v35; ++j)
      {
        v37 = v34 + 24 * j;
        if (*v37 != -2)
        {
          v38 = *(v37 + 20);
          v39 = *(v37 + 8);
          if (v38)
          {
            v40 = 8 * v38;
            do
            {
              v41 = *v39;
              *v39 = 0;
              if (v41)
              {
                (*(*v41 + 8))(v41);
              }

              v39 = (v39 + 8);
              v40 -= 8;
            }

            while (v40);
            v39 = *(v37 + 8);
          }

          if (v39)
          {
            *(v37 + 8) = 0;
            *(v37 + 16) = 0;
            WTF::fastFree(v39, v3);
          }
        }
      }
    }

    WTF::fastFree((v34 - 16), v3);
  }

  while ([*(this + 12) count])
  {
    v42 = [*(this + 12) firstObject];
    WebGPU::Queue::removeMTLCommandBuffer(this, v42);
  }

  v43 = *(this + 12);
  *(this + 12) = 0;

  v44 = *(this + 15);
  *(this + 15) = 0;
}

void WebGPU::Queue::removeMTLCommandBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 120) objectForKey:v3];
    WebGPU::Queue::endEncoding(a1, v4, v6);
    v5 = v6;
    [*(a1 + 120) removeObjectForKey:v5];
    [*(a1 + 96) removeObject:v5];

    v3 = v6;
  }
}

void *WebGPU::Queue::onSubmittedWorkDone(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *(a1 + 40);
  v5 = 1;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *(a1 + 32);
  atomic_compare_exchange_strong_explicit(v4, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v4);
    if (*(v4 + 24))
    {
LABEL_4:
      ++*(v4 + 8);
      v9 = 1;
      atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_80;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_4;
  }

  v8 = 0;
  v60 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v60, 0, memory_order_release, memory_order_relaxed);
  if (v60 != 1)
  {
LABEL_80:
    WTF::Lock::unlockSlow(v4);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    v10 = *a2;
    *a2 = 0;
    (*(*v10 + 16))(v10, 3);
    result = (*(*v10 + 8))(v10);
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    return result;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!*(v8 + 8) || *(v8 + 64) == 1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    WebGPU::Queue::endEncoding(a1, v18, *(a1 + 16));
    WebGPU::Queue::commitMTLCommandBuffer(a1, *(a1 + 16));
    v19 = *(a1 + 24);
    *(a1 + 24) = 0;

    v20 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  v21 = *(a1 + 48);
  if (v21 != *(a1 + 56) || *(a1 + 24))
  {
    if (v21 == -2)
    {
      goto LABEL_86;
    }

    if (v21 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256B6578);
    }

    v22 = *(a1 + 80);
    if (!v22)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 80), 8u, 0);
      v22 = *(a1 + 80);
      v21 = *(a1 + 48);
    }

    v23 = *(v22 - 8);
    v24 = (v21 + ~(v21 << 32)) ^ ((v21 + ~(v21 << 32)) >> 22);
    v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
    v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
    v27 = v23 & ((v26 >> 31) ^ v26);
    v28 = v22 + 24 * v27;
    v29 = *v28;
    if (*v28 != -1)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        if (v29 == v21)
        {
          goto LABEL_54;
        }

        if (v29 == -2)
        {
          v30 = v28;
        }

        v27 = (v27 + v31) & v23;
        v28 = v22 + 24 * v27;
        v29 = *v28;
        ++v31;
      }

      while (*v28 != -1);
      if (v30)
      {
        v30[1] = 0;
        v30[2] = 0;
        *v30 = -1;
        --*(*(a1 + 80) - 16);
        v21 = *(a1 + 48);
        v28 = v30;
      }
    }

    a3.n128_u64[0] = 0;
    *v28 = v21;
    v33 = (v28 + 8);
    v32 = *(v28 + 8);
    v61 = a3;
    v34 = *(v28 + 20);
    if (v34)
    {
      v35 = 8 * v34;
      do
      {
        v36 = *v32;
        *v32 = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }

        v32 = (v32 + 8);
        v35 -= 8;
      }

      while (v35);
      v32 = *v33;
    }

    if (v32)
    {
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      WTF::fastFree(v32, v18);
    }

    *v33 = 0;
    *(v28 + 16) = 0;
    v37 = *(a1 + 80);
    if (v37)
    {
      v38 = *(v37 - 16);
      v39 = *(v37 - 12) + 1;
      *(v37 - 12) = v39;
      v40 = (v38 + v39);
      v41 = *(v37 - 4);
      if (v41 <= 0x400)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v39 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v40 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v41 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_47:
        if (3 * v41 <= 4 * v40)
        {
          if (!v41)
          {
            v42 = 8;
LABEL_53:
            v28 = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 80), v42, v28);
            goto LABEL_54;
          }

LABEL_52:
          v42 = v41 << (6 * v39 >= (2 * v41));
          goto LABEL_53;
        }

LABEL_54:
        v44 = *(v28 + 16);
        v43 = *(v28 + 20);
        if (v43 != v44)
        {
          v54 = *(v28 + 8);
          result = WTF::fastMalloc(0x10);
          *result = &unk_2838D3198;
          v55 = *a2;
          *a2 = 0;
          result[1] = v55;
          if (!v55)
          {
            __break(0xC471u);
            JUMPOUT(0x2256B65A0);
          }

          *(v54 + 8 * v43) = result;
          goto LABEL_75;
        }

        v45 = v43 + (v43 >> 1);
        if (v45 <= v43 + 1)
        {
          v45 = v43 + 1;
        }

        if (v45 >> 29)
        {
          __break(0xC471u);
          JUMPOUT(0x2256B6580);
        }

        v46 = *(v28 + 8);
        if (v45 <= 0x10)
        {
          v47 = 16;
        }

        else
        {
          v47 = v45;
        }

        v49 = WTF::fastMalloc((8 * v47));
        *(v28 + 16) = v47;
        *(v28 + 8) = v49;
        if (v44)
        {
          v50 = 8 * v43;
          v51 = v46;
          do
          {
            v52 = *v51;
            *v51 = 0;
            *v49 = v52;
            v53 = *v51;
            *v51 = 0;
            if (v53)
            {
              (*(*v53 + 8))(v53);
            }

            v49 = (v49 + 8);
            v51 = (v51 + 8);
            v50 -= 8;
          }

          while (v50);
          v49 = *(v28 + 8);
        }

        if (v46)
        {
          if (v49 == v46)
          {
            *(v28 + 8) = 0;
            *(v28 + 16) = 0;
          }

          WTF::fastFree(v46, v48);
          v49 = *(v28 + 8);
        }

        v56 = *(v28 + 20);
        result = WTF::fastMalloc(0x10);
        *result = &unk_2838D3198;
        v57 = *a2;
        *a2 = 0;
        result[1] = v57;
        if (v57)
        {
          *(v49 + v56) = result;
LABEL_75:
          ++*(v28 + 20);
          goto LABEL_11;
        }

LABEL_86:
        __break(0xC471u);
        JUMPOUT(0x2256B6558);
      }
    }

    if (v41 <= 2 * v40)
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v58 = *a2;
  *a2 = 0;
  v59 = WTF::fastMalloc(0x10);
  *v59 = &unk_2838D3170;
  v59[1] = v58;
  v61.n128_u64[0] = v59;
  WebGPU::Queue::scheduleWork(a1, &v61);
  result = v61.n128_u64[0];
  if (v61.n128_u64[0])
  {
    result = (*(*v61.n128_u64[0] + 8))(v61.n128_u64[0]);
  }

LABEL_11:
  while (1)
  {
    v13 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v14 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      if (v13 == 3)
      {
        WebGPU::Device::~Device(v8, v12);

        return bmalloc::api::tzoneFree(v15, v16);
      }

      return result;
    }
  }

  v17 = *v8;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v17, v12);
}

void sub_2256B65C4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v11, a2);
  _Unwind_Resume(a1);
}

void WebGPU::Queue::scheduleWork(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = *(a1 + 128);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v11 = a2;
    MEMORY[0x22AA683C0](v2);
    a2 = v11;
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
      v13 = v2;
      v14 = a2;
      WTF::Lock::unlockSlow(v13);
      a2 = v14;
      if (!v4)
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
    return;
  }

LABEL_6:
  WebGPU::Instance::scheduleWork(v4, a2);
  while (1)
  {
    v7 = v4[1];
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = v4[1];
    atomic_compare_exchange_strong_explicit(v4 + 1, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      if (v7 == 3)
      {
        v9 = *(*v4 + 8);

        v9(v4);
      }

      return;
    }
  }

  v10 = v4[1];

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v10, v6);
}

uint64_t WTF::Vector<WTF::Function<void ()(WGPUQueueWorkDoneStatus)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

void WebGPU::Queue::onSubmittedWorkScheduled(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = *(a1 + 40);
  v5 = 1;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *(a1 + 32);
  atomic_compare_exchange_strong_explicit(v4, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v4);
    if (*(v4 + 24))
    {
LABEL_4:
      ++*(v4 + 8);
      v9 = 1;
      atomic_compare_exchange_strong_explicit(v4, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_61;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_4;
  }

  v8 = 0;
  v47 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v47, 0, memory_order_release, memory_order_relaxed);
  if (v47 != 1)
  {
LABEL_61:
    WTF::Lock::unlockSlow(v4);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    (*(**a2 + 16))();
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    return;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!*(v8 + 8) || *(v8 + 64) == 1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    WebGPU::Queue::endEncoding(a1, v10, *(a1 + 16));
    WebGPU::Queue::commitMTLCommandBuffer(a1, *(a1 + 16));
    v16 = *(a1 + 24);
    *(a1 + 24) = 0;

    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  v18 = *(a1 + 48);
  if (v18 != *(a1 + 64))
  {
    if (v18 == -2 || v18 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256B6D28);
    }

    v21 = *(a1 + 72);
    if (!v21)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 72), 8u, 0);
      v21 = *(a1 + 72);
      v18 = *(a1 + 48);
    }

    v22 = *(v21 - 8);
    v23 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
    v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
    v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
    v26 = v22 & ((v25 >> 31) ^ v25);
    v27 = v21 + 24 * v26;
    v28 = *v27;
    if (*v27 != -1)
    {
      v29 = 0;
      v30 = 1;
      do
      {
        if (v28 == v18)
        {
          goto LABEL_55;
        }

        if (v28 == -2)
        {
          v29 = v27;
        }

        v26 = (v26 + v30) & v22;
        v27 = v21 + 24 * v26;
        v28 = *v27;
        ++v30;
      }

      while (*v27 != -1);
      if (v29)
      {
        v29[1] = 0;
        v29[2] = 0;
        *v29 = -1;
        --*(*(a1 + 72) - 16);
        v18 = *(a1 + 48);
        v27 = v29;
      }
    }

    a3.n128_u64[0] = 0;
    *v27 = v18;
    v32 = (v27 + 8);
    v31 = *(v27 + 8);
    v48 = a3;
    v33 = *(v27 + 20);
    if (v33)
    {
      v34 = 8 * v33;
      do
      {
        v35 = *v31;
        *v31 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        v31 = (v31 + 8);
        v34 -= 8;
      }

      while (v34);
      v31 = *v32;
    }

    if (v31)
    {
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      WTF::fastFree(v31, v10);
    }

    *v32 = 0;
    *(v27 + 16) = 0;
    v36 = *(a1 + 72);
    if (v36)
    {
      v37 = *(v36 - 16);
      v38 = *(v36 - 12) + 1;
      *(v36 - 12) = v38;
      v39 = (v37 + v38);
      v40 = *(v36 - 4);
      if (v40 <= 0x400)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v38 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v39 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v40 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_48:
        if (3 * v40 <= 4 * v39)
        {
          if (!v40)
          {
            v41 = 8;
LABEL_54:
            v27 = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((a1 + 72), v41, v27);
            goto LABEL_55;
          }

LABEL_53:
          v41 = v40 << (6 * v38 >= (2 * v40));
          goto LABEL_54;
        }

LABEL_55:
        v42 = *(v27 + 20);
        if (v42 == *(v27 + 16))
        {
          v43 = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v27 + 8, v42 + 1, a2);
          v42 = *(v27 + 20);
          v44 = v42 + 1;
          v45 = *(v27 + 8);
          v46 = *v43;
          *v43 = 0;
        }

        else
        {
          v44 = v42 + 1;
          v45 = *(v27 + 8);
          v46 = *a2;
          *a2 = 0;
        }

        *(v45 + 8 * v42) = v46;
        *(v27 + 20) = v44;
        goto LABEL_11;
      }
    }

    if (v40 <= 2 * v39)
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v19 = *a2;
  *a2 = 0;
  v20 = WTF::fastMalloc(0x10);
  *v20 = &unk_2838D31C0;
  v20[1] = v19;
  v48.n128_u64[0] = v20;
  WebGPU::Queue::scheduleWork(a1, &v48);
  if (v48.n128_u64[0])
  {
    (*(*v48.n128_u64[0] + 8))(v48.n128_u64[0]);
  }

LABEL_11:
  while (1)
  {
    v11 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v12 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      if (v11 == 3)
      {
        WebGPU::Device::~Device(v8, v10);

        bmalloc::api::tzoneFree(v13, v14);
      }

      return;
    }
  }

  v15 = *v8;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v15, v10);
}

void sub_2256B6D4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v13);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v11, v14);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t WebGPU::Queue::waitForAllCommitedWorkToComplete(id *this)
{
  v2 = 0;
  v3 = (this + 14);
  do
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      MEMORY[0x22AA683C0](v3);
    }

    v5 = [this[13] firstObject];

    v6 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {
      WTF::Lock::unlockSlow(v3);
    }

    result = [v5 waitUntilCompleted];
    v2 = v5;
  }

  while (v5);
  return result;
}

void sub_2256B6F18(_Unwind_Exception *a1)
{
  v4 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v1);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  atomic_fetch_add(v4, 1u);
  v6 = v3;
  v5 = WTF::fastMalloc(0x10);
  v7 = v5;
  *v5 = &unk_2838D3120;
  v5[1] = v4;
  WebGPU::Queue::scheduleWork(v4, &v7);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

void sub_2256B7010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, atomic_uint *a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a11);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  atomic_fetch_add(v2, 1u);
  *(result + 32) = v2;
  return result;
}

atomic_uint *__destroy_helper_block_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__0(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    add = atomic_fetch_add(result, 0xFFFFFFFF);
    if (add == 1)
    {
      v7 = v1;
      atomic_store(add, result);
      WebGPU::Queue::~Queue(result);

      return bmalloc::api::tzoneFree(v5, v6);
    }
  }

  return result;
}

void ___ZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke_32(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 status];
  v4 = [v17 error];
  v5 = v4;
  if (v3 == 4 || v4 && [v4 code] == 7)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if ([v8 code] == 266 || objc_msgSend(v8, "code") == 5)
    {
      v6 = 0;
    }

    else
    {
      v9 = [v8 code];
      if (v9 <= 10)
      {
        if (v9 == 9)
        {
          WebGPU::crashGPUProcess<9u>(v5, v8);
        }

        if (v9 == 10)
        {
          WebGPU::crashGPUProcess<10u>(v5, v8);
        }
      }

      else
      {
        switch(v9)
        {
          case 11:
            WebGPU::crashGPUProcess<11u>(v5, v8);
          case 16:
            WebGPU::crashGPUProcess<16u>(v5, v8);
          case 17:
            WebGPU::crashGPUProcess<17u>(v5, v8);
        }
      }

      v15 = v5;
      v16 = v8;
      WTFLogAlways();
      v6 = 1;
    }
  }

  v10 = 0;
  v11 = (*(a1 + 32) + 112);
  atomic_compare_exchange_strong_explicit(v11, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
  }

  [*(*(a1 + 32) + 104) removeObject:{v17, v15, v16}];
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

  v13 = *(a1 + 32);
  atomic_fetch_add(v13, 1u);
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_2838D3148;
  *(v14 + 8) = v6;
  v18 = v14;
  *(v14 + 16) = v13;
  WebGPU::Queue::scheduleWork(v13, &v18);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }
}

uint64_t __copy_helper_block_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  atomic_fetch_add(v2, 1u);
  *(result + 32) = v2;
  return result;
}

atomic_uint *__destroy_helper_block_ea8_32c94_ZTSKZN6WebGPU5Queue22commitMTLCommandBufferEPU27objcproto16MTLCommandBuffer11objc_objectE3__1(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    add = atomic_fetch_add(result, 0xFFFFFFFF);
    if (add == 1)
    {
      v7 = v1;
      atomic_store(add, result);
      WebGPU::Queue::~Queue(result);

      return bmalloc::api::tzoneFree(v5, v6);
    }
  }

  return result;
}

void ___ZN6WebGPU5Queue6submitEON3WTF6VectorINS1_3RefINS_13CommandBufferENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke(uint64_t a1, id *a2)
{
  v4 = a2[5];
  v5 = v4;
  if (!v4)
  {
    v4 = *(a1 + 32);
  }

  WebGPU::CommandBuffer::makeInvalid(a2, v4);
}

void ___ZN6WebGPU5Queue6submitEON3WTF6VectorINS1_3RefINS_13CommandBufferENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEE_block_invoke_2(uint64_t a1, id *this)
{
  if (*(a1 + 32))
  {
    v4 = this[5];
    v5 = v4;
    if (!v4)
    {
      v4 = *(a1 + 32);
    }

    WebGPU::CommandBuffer::makeInvalid(this, v4);
  }

  else
  {

    WebGPU::CommandBuffer::makeInvalidDueToCommit(this, &cfstr_CommandBufferW.isa);
  }
}

uint64_t WebGPU::Queue::retainCounterSampleBuffer(WebGPU::Queue *this, WebGPU::CommandEncoder *a2)
{
  v2 = *(a2 + 25);
  v3 = *(this + 11);
  v4 = *(a2 + 15);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  [v3 setObject:v4 forKey:v5];

  return v2;
}

void *WebGPU::Queue::releaseCounterSampleBuffer(atomic_uint *this, uint64_t a2)
{
  atomic_fetch_add(this, 1u);
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_2838D31E8;
  v4[1] = this;
  v4[2] = a2;
  v7 = v4;
  WebGPU::Queue::scheduleWork(this, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void sub_2256B76FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
    WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

void WebGPU::Queue::retainTimestampsForOneUpdate(atomic_uint *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    atomic_fetch_add(a1, 1u);
    v6 = v3;
    v4 = v3;
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_2838D3210;
    v5[1] = a1;
    v5[2] = v4;
    v7 = v5;
    WebGPU::Queue::scheduleWork(a1, &v7);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v3 = v6;
  }
}

void sub_2256B7814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v4 - 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
    WebGPU::Queue::retainTimestampsForOneUpdate(NSMutableSet<objc_object  {objcproto22MTLCounterSampleBuffer}*> *)::$_0::~$_0(va);

    _Unwind_Resume(a1);
  }

  WebGPU::Queue::retainTimestampsForOneUpdate(NSMutableSet<objc_object  {objcproto22MTLCounterSampleBuffer}*> *)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Queue::retainTimestampsForOneUpdate(NSMutableSet<objc_object  {objcproto22MTLCounterSampleBuffer}*> *)::$_0::~$_0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2 || atomic_fetch_add(v2, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v2);
  WebGPU::Queue::~Queue(v2);
  bmalloc::api::tzoneFree(v4, v5);
  return a1;
}

id WebGPU::Queue::trimICB(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = WebGPU::Queue::ensureBlitCommandEncoder(a1);
  [a1[3] copyIndirectCommandBuffer:v8 sourceRange:0 destination:a4 destinationIndex:{v7, 0}];

  return v7;
}

void WebGPU::Queue::writeBuffer(WebGPU::Queue *a1, uint64_t a2, unint64_t a3, _OWORD *a4, unint64_t a5)
{
  v5 = *(a1 + 5);
  if (!v5)
  {
    return;
  }

  v11 = 0;
  v12 = *(a1 + 4);
  atomic_compare_exchange_strong_explicit(v5, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x22AA683C0](v5);
    if (*(v5 + 24))
    {
LABEL_4:
      ++*(v5 + 8);
      v13 = 1;
      atomic_compare_exchange_strong_explicit(v5, &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }
  }

  else if (*(v5 + 24))
  {
    goto LABEL_4;
  }

  v12 = 0;
  v29 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 == 1)
  {
LABEL_5:
    if (!v12)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_43:
  WTF::Lock::unlockSlow(v5);
  if (!v12)
  {
    return;
  }

LABEL_6:
  if (*(a2 + 44) == 4 || *(a2 + 8))
  {
    v14 = *(a2 + 280);
    if (*(v14 + 8) && v14 == WebGPU::Queue::device(a1, a2) && *(a2 + 44) == 3 && ((a5 | a3) & 3) == 0 && (*(a2 + 40) & 8) != 0 && !__CFADD__(a3, a5) && a3 + a5 <= [*(a2 + 8) length] && (*(a2 + 44) == 4 || *(a2 + 8)))
    {
      v16 = *(a2 + 280);
      if (*(v16 + 8))
      {
        if (v16 == WebGPU::Queue::device(a1, v15))
        {
          if (!a5)
          {
            goto LABEL_32;
          }

          if (*(a2 + 44) == 4)
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v37 = v38;
            WebGPU::Device::generateAValidationError(v12, &v37);
            goto LABEL_28;
          }

          if (a5 >> 14 || (*(a2 + 40) & 0x110) != 0x10)
          {
            goto LABEL_52;
          }

          v30 = WebGPU::maxIndexValue(a4, a5);
          if (*(a2 + 220) >= v30)
          {
            v31 = (a2 + 224);
            if (*(a2 + 224) <= WORD2(v30))
            {
LABEL_53:
              if (*(a1 + 6) != *(a1 + 7) || *(a1 + 3))
              {
                goto LABEL_55;
              }

              v33 = [*(a2 + 8) storageMode];
              if (v33)
              {
                if (v33 != 2)
                {
                  goto LABEL_32;
                }

LABEL_55:
                WebGPU::Queue::writeBuffer(a1, *(a2 + 8), a3, a4, a5);
                goto LABEL_32;
              }

              BufferContents = WebGPU::Buffer::getBufferContents(a2);
              if (v35 >= a3)
              {
                v36 = v35 - a3;
                if (a5 == -1)
                {
                  goto LABEL_63;
                }

                if (v36 >= a5)
                {
                  goto LABEL_64;
                }
              }

              __break(1u);
LABEL_63:
              if (v36 != -1)
              {
                __break(0xC471u);
                return;
              }

LABEL_64:
              memcpy((BufferContents + a3), a4, a5);
              goto LABEL_32;
            }
          }

          else
          {
            v31 = (a2 + 224);
            v32 = *(a2 + 224);
            *(a2 + 220) = v30;
            if (v32 <= WORD2(v30))
            {
              goto LABEL_52;
            }
          }

          *v31 = WORD2(v30);
LABEL_52:
          WebGPU::Buffer::indirectBufferInvalidated(a2, 0);
          goto LABEL_53;
        }
      }
    }
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v18 = v38;
  v37 = v38;
  if (*(v12 + 548))
  {
    goto LABEL_29;
  }

  v19 = *(v12 + 32) + 32 * *(v12 + 44);
  v20 = (v19 + 16);
  v21 = -32 * *(v12 + 44);
  while (v21)
  {
    v22 = *(v19 - 8);
    v19 -= 32;
    v20 -= 32;
    v21 += 32;
    if (!v22)
    {
      if ((*v20 & 1) == 0)
      {
        v37 = 0;
        *(v20 - 4) = 1;
        *(v20 - 1) = v18;
        *v20 = 1;
      }

      goto LABEL_28;
    }
  }

  v23 = *(v12 + 24);
  if (v23)
  {
    (*(*v23 + 16))(v23, 1, &v37);
    v24 = *(v12 + 24);
    *(v12 + 24) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

LABEL_28:
  v18 = v37;
LABEL_29:
  v37 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  do
  {
LABEL_32:
    v25 = *v12;
    if ((*v12 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v12, v17);
      return;
    }

    v26 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v26 != v25);
  if (v25 == 3)
  {
    WebGPU::Device::~Device(v12, v17);
    bmalloc::api::tzoneFree(v27, v28);
  }
}

unint64_t WebGPU::maxIndexValue(_OWORD *a1, unint64_t __x)
{
  result = div(__x, 64).quot;
  if (!result || (a1 & 0x3F) != 0)
  {
    v32 = __x - 4;
    if (__x < 4)
    {
      v25 = 0;
      goto LABEL_22;
    }

    if (v32 > 0x1B)
    {
      v34 = (v32 >> 2) + 1;
      v33 = a1 + (v34 & 0x7FFFFFFFFFFFFFF8);
      v35 = (a1 + 1);
      v36 = 0uLL;
      v37 = v34 & 0x7FFFFFFFFFFFFFF8;
      v38 = 0uLL;
      do
      {
        v36 = vmaxq_u32(v36, v35[-1]);
        v38 = vmaxq_u32(v38, *v35);
        v35 += 2;
        v37 -= 8;
      }

      while (v37);
      v25 = vmaxvq_u32(vmaxq_u32(v36, v38));
      if (v34 == (v34 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
      v33 = a1;
    }

    do
    {
      v40 = *v33++;
      v39 = v40;
      if (v25 <= v40)
      {
        v25 = v39;
      }
    }

    while (v33 != (a1 + (__x & 0xFFFFFFFFFFFFFFFCLL)));
LABEL_22:
    v41 = __x & 0xFFFFFFFFFFFFFFFCLL;
    if ((__x & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      LOWORD(v26) = 0;
      return v25 | (v26 << 32);
    }

    v42 = v41 - 2;
    if (v41 - 2 < 6)
    {
      LOWORD(v26) = 0;
      v43 = a1;
      goto LABEL_60;
    }

    v44 = (v42 >> 1) + 1;
    if (v42 >= 0x1E)
    {
      v45 = v44 & 0xFFFFFFFFFFFFFFF0;
      v47 = (a1 + 1);
      v48 = 0uLL;
      v49 = v44 & 0xFFFFFFFFFFFFFFF0;
      v50 = 0uLL;
      do
      {
        v48 = vmaxq_u16(v48, v47[-1]);
        v50 = vmaxq_u16(v50, *v47);
        v47 += 2;
        v49 -= 16;
      }

      while (v49);
      v51 = vmaxq_u16(v48, v50);
      v51.i16[0] = vmaxvq_u16(v51);
      v26 = v51.i32[0];
      if (v44 == v45)
      {
        return v25 | (v26 << 32);
      }

      if ((v44 & 0xC) == 0)
      {
        v43 = a1 + v45;
        goto LABEL_60;
      }
    }

    else
    {
      v26 = 0;
      v45 = 0;
    }

    v43 = a1 + (v44 & 0xFFFFFFFFFFFFFFFCLL);
    v52 = vdup_n_s16(v26);
    v53 = (a1 + 2 * v45);
    v54 = v45 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v55 = *v53++;
      v52 = vmax_u16(v52, v55);
      v54 += 4;
    }

    while (v54);
    LOWORD(v26) = vmaxv_u16(v52);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v25 | (v26 << 32);
    }

LABEL_60:
    v78 = (a1 + v41);
    do
    {
      v80 = *v43++;
      v79 = v80;
      if (v26 <= v80)
      {
        LOWORD(v26) = v79;
      }
    }

    while (v43 != v78);
    return v25 | (v26 << 32);
  }

  if (!(result << 32))
  {
LABEL_75:
    __break(1u);
    return result;
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = result << 6;
  v8 = v7;
  v9 = *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = v5;
  v13 = v11;
  v14 = v10;
  v15 = a1;
  do
  {
    v17 = v15[2];
    v16 = v15[3];
    v18 = *v15;
    v19 = v15[1];
    v15 += 4;
    v12 = vmaxq_u32(v12, v19);
    v9 = vmaxq_u32(v9, v18);
    v13 = vmaxq_u32(v13, v17);
    v14 = vmaxq_u32(v14, v16);
    v8 -= 64;
  }

  while (v8);
  v20 = a1;
  do
  {
    v22 = v20[2];
    v21 = v20[3];
    v23 = *v20;
    v24 = v20[1];
    v20 += 4;
    v5 = vmaxq_u16(v5, v24);
    v6 = vmaxq_u16(v6, v23);
    v11 = vmaxq_u16(v11, v22);
    v10 = vmaxq_u16(v10, v21);
    v7 -= 64;
  }

  while (v7);
  v25 = vmaxvq_u32(vmaxq_u32(vmaxq_u32(v9, v13), vmaxq_u32(v12, v14)));
  LOWORD(v26) = vmaxvq_u16(vmaxq_u16(vmaxq_u16(v6, v11), vmaxq_u16(v5, v10)));
  if (!HIDWORD(result))
  {
    return v25 | (v26 << 32);
  }

  v27 = (result << 6);
  v28 = __x - v27;
  if (__x < v27)
  {
    goto LABEL_75;
  }

  v29 = a1 + v27;
  v30 = v28 - 4;
  if (v28 < 4)
  {
    v31 = 0;
    goto LABEL_45;
  }

  if (v30 > 0x1B)
  {
    v56 = (v30 >> 2) + 1;
    v46 = &v29[4 * (v56 & 0x7FFFFFFFFFFFFFF8)];
    v57 = (a1 + v27 + 16);
    v58 = 0uLL;
    v59 = v56 & 0x7FFFFFFFFFFFFFF8;
    v60 = 0uLL;
    do
    {
      v58 = vmaxq_u32(v58, v57[-1]);
      v60 = vmaxq_u32(v60, *v57);
      v57 += 2;
      v59 -= 8;
    }

    while (v59);
    v31 = vmaxvq_u32(vmaxq_u32(v58, v60));
    if (v56 == (v56 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_45;
    }
  }

  else
  {
    v31 = 0;
    v46 = (a1 + v27);
  }

  do
  {
    v62 = *v46++;
    v61 = v62;
    if (v31 <= v62)
    {
      v31 = v61;
    }
  }

  while (v46 != &v29[v28 & 0xFFFFFFFFFFFFFFFCLL]);
LABEL_45:
  v63 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  if (v63)
  {
    v64 = v63 - 2;
    if (v63 - 2 < 6)
    {
      LOWORD(v65) = 0;
      v66 = (a1 + v27);
      goto LABEL_66;
    }

    v67 = (v64 >> 1) + 1;
    if (v64 >= 0x1E)
    {
      v68 = v67 & 0xFFFFFFFFFFFFFFF0;
      v69 = (a1 + v27 + 16);
      v70 = 0uLL;
      v71 = v67 & 0xFFFFFFFFFFFFFFF0;
      v72 = 0uLL;
      do
      {
        v70 = vmaxq_u16(v70, v69[-1]);
        v72 = vmaxq_u16(v72, *v69);
        v69 += 2;
        v71 -= 16;
      }

      while (v71);
      v73 = vmaxq_u16(v70, v72);
      v73.i16[0] = vmaxvq_u16(v73);
      v65 = v73.i32[0];
      if (v67 == v68)
      {
        goto LABEL_70;
      }

      if ((v67 & 0xC) == 0)
      {
        v66 = &v29[2 * v68];
        goto LABEL_66;
      }
    }

    else
    {
      v65 = 0;
      v68 = 0;
    }

    v66 = &v29[2 * (v67 & 0xFFFFFFFFFFFFFFFCLL)];
    v74 = vdup_n_s16(v65);
    v75 = (a1 + 2 * v68 + v27);
    v76 = v68 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v77 = *v75++;
      v74 = vmax_u16(v74, v77);
      v76 += 4;
    }

    while (v76);
    LOWORD(v65) = vmaxv_u16(v74);
    if (v67 == (v67 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_70;
    }

LABEL_66:
    v81 = &v29[v63];
    do
    {
      v83 = *v66++;
      v82 = v83;
      if (v65 <= v83)
      {
        LOWORD(v65) = v82;
      }
    }

    while (v66 != v81);
    goto LABEL_70;
  }

  LOWORD(v65) = 0;
LABEL_70:
  if (v25 <= v31)
  {
    v25 = v31;
  }

  if (v65 > v26)
  {
    LOWORD(v26) = v65;
  }

  return v25 | (v26 << 32);
}

void WebGPU::Queue::writeBuffer(uint64_t a1, void *a2, uint64_t a3, const void *a4, size_t a5)
{
  v24 = a2;
  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = 0;
  v11 = *(a1 + 32);
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
      goto LABEL_6;
    }

LABEL_17:
    WTF::Lock::unlockSlow(v9);
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v23 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  v13 = WebGPU::Queue::ensureBlitCommandEncoder(a1);
  WebGPU::Queue::newTemporaryBufferWithBytes(v25, a1, a4, a5, (a5 & 0xFFFFFFFFFE000000) != 0);
  v14 = v25[0];
  if (v14)
  {
    [*(a1 + 24) copyFromBuffer:v14 sourceOffset:v25[1] toBuffer:v24 destinationOffset:a3 size:a5];
    if (a5 >> 25)
    {
      v15 = *(a1 + 24);
      if (v15)
      {
        WebGPU::Queue::endEncoding(a1, v15, *(a1 + 16));
        WebGPU::Queue::commitMTLCommandBuffer(a1, *(a1 + 16));
        v16 = *(a1 + 24);
        *(a1 + 24) = 0;

        v17 = *(a1 + 16);
        *(a1 + 16) = 0;
      }
    }
  }

  do
  {
    v19 = *v11;
    if ((*v11 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v11, v18);
      goto LABEL_20;
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

LABEL_20:
}

void sub_2256B83B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v10, a2);

  _Unwind_Resume(a1);
}

void sub_2256B83D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v10, v13);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Queue::newTemporaryBufferWithBytes(uint64_t result, uint64_t a2, const void *a3, size_t a4, int a5)
{
  v5 = result;
  v6 = *(a2 + 40);
  if (!v6)
  {
    goto LABEL_31;
  }

  v9 = 0;
  v10 = *(a2 + 32);
  atomic_compare_exchange_strong_explicit(v6, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    v28 = a3;
    v29 = a5;
    result = MEMORY[0x22AA683C0](v6);
    a5 = v29;
    a3 = v28;
    if (*(v6 + 24))
    {
LABEL_4:
      ++*(v6 + 8);
      v11 = 1;
      atomic_compare_exchange_strong_explicit(v6, &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }
  }

  else if (*(v6 + 24))
  {
    goto LABEL_4;
  }

  v10 = 0;
  v30 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 == 1)
  {
LABEL_5:
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_31:
    *v5 = 0;
    v5[1] = 0;
    return result;
  }

LABEL_30:
  v31 = v6;
  v32 = a3;
  v33 = a5;
  result = WTF::Lock::unlockSlow(v31);
  a5 = v33;
  a3 = v32;
  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_6:
  if (a5)
  {
    result = [*(v10 + 8) newBufferWithBytesNoCopy:a3 length:a4 options:0 deallocator:0];
    v13 = 0;
    goto LABEL_18;
  }

  v14 = a3;
  v15 = *(a2 + 144);
  if (v15 && (v16 = *(a2 + 152), v16 + a4 <= [v15 length]))
  {
    v13 = *(a2 + 152);
  }

  else
  {
    if (a4 <= 0x10000)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = a4;
    }

    v18 = [*(v10 + 8) newBufferWithLength:v17 options:0];
    v19 = *(a2 + 144);
    *(a2 + 144) = v18;

    v13 = 0;
    *(a2 + 152) = 0;
  }

  *(a2 + 152) = v13 + ((a4 + 63) & 0xFFFFFFFFFFFFFFC0);
  v20 = *(a2 + 144);
  v21 = [v20 contents];
  v22 = [v20 length];

  if (v22 < v13)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v22 - v13 < a4)
  {
LABEL_34:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  memcpy((v21 + v13), v14, a4);
  result = *(a2 + 144);
LABEL_18:
  *v5 = result;
  v5[1] = v13;
  while (1)
  {
    v23 = *v10;
    if ((*v10 & 1) == 0)
    {
      break;
    }

    v24 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v24, v23 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      if (v23 == 3)
      {
        WebGPU::Device::~Device(v10, v12);

        return bmalloc::api::tzoneFree(v25, v26);
      }

      return result;
    }
  }

  v27 = *v10;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v27, v12);
}

uint64_t WebGPU::Queue::device(WebGPU::Queue *this, WTF::StringImpl *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = *(this + 4);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x22AA683C0](v2);
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

      goto LABEL_14;
    }
  }

  else if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v4 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 == 1)
  {
LABEL_5:
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  WTF::Lock::unlockSlow(v2);
  if (!v4)
  {
LABEL_15:
    result = 690;
    __break(0xC471u);
    return result;
  }

  do
  {
LABEL_6:
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, a2);
      return v4;
    }

    v7 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v6);
  if (v6 == 3)
  {
    WebGPU::Device::~Device(v4, a2);
    bmalloc::api::tzoneFree(v8, v9);
  }

  return v4;
}

void WebGPU::Queue::clearTextureIfNeeded(WebGPU::Queue *a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 5);
  if (!v3)
  {
    return;
  }

  v6 = 0;
  v7 = *(a1 + 4);
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v30 = a1;
    MEMORY[0x22AA683C0](v3);
    a1 = v30;
    if (*(v3 + 24))
    {
LABEL_4:
      ++*(v3 + 8);
      v8 = 1;
      atomic_compare_exchange_strong_explicit(v3, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }
  }

  else if (*(v3 + 24))
  {
    goto LABEL_4;
  }

  v7 = 0;
  v31 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
LABEL_5:
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_34:
  v32 = a1;
  WTF::Lock::unlockSlow(v3);
  a1 = v32;
  if (!v7)
  {
    return;
  }

LABEL_6:
  v9 = *(a2 + 8);
  ++*(v9 + 2);
  v33[1] = v9;
  if (*(v9 + 104) == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v11 = v34;
    v33[0] = v34;
    if ((*(v7 + 548) & 1) == 0)
    {
      v12 = v7[4] + 32 * *(v7 + 11);
      v13 = (v12 + 16);
      v14 = -32 * *(v7 + 11);
      while (v14)
      {
        v15 = *(v12 - 8);
        v12 -= 32;
        v13 -= 32;
        v14 += 32;
        if (!v15)
        {
          if ((*v13 & 1) == 0)
          {
            v33[0] = 0;
            *(v13 - 4) = 1;
            *(v13 - 1) = v11;
            *v13 = 1;
          }

          goto LABEL_19;
        }
      }

      v22 = v7[3];
      if (v22)
      {
        (*(*v22 + 16))(v22, 1, v33);
        v23 = v7[3];
        v7[3] = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

LABEL_19:
      v11 = v33[0];
    }

    v33[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v16 = a1;
    v17 = WebGPU::Queue::ensureBlitCommandEncoder(a1);
    v18 = *(v16 + 3);
    v19 = *(a2 + 8);
    ++*(v19 + 2);
    v34 = v19;
    WebGPU::CommandEncoder::clearTextureIfNeeded(v19, *(a2 + 16), a3, v7, v18);
    if (*(v19 + 2) == 1)
    {
      WebGPU::Texture::~Texture(v19);
      bmalloc::api::tzoneFree(v20, v21);
    }

    else
    {
      --*(v19 + 2);
    }
  }

  if (*(v9 + 2) == 1)
  {
    WebGPU::Texture::~Texture(v9);
    bmalloc::api::tzoneFree(v24, v25);
  }

  else
  {
    --*(v9 + 2);
  }

  do
  {
    v26 = *v7;
    if ((*v7 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, v10);
      return;
    }

    v27 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v27, v26 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v27 != v26);
  if (v26 == 3)
  {
    WebGPU::Device::~Device(v7, v10);
    bmalloc::api::tzoneFree(v28, v29);
  }
}

void sub_2256B8A40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a11);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v14, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a11);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v14, v17);
  _Unwind_Resume(a1);
}

id *WebGPU::Queue::writeTexture(id *result, WTF::StringImpl *a2, char *a3, unint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = result[5];
  if (!v6)
  {
    return result;
  }

  v11 = a2;
  v12 = result;
  v13 = 0;
  v14 = result[4];
  atomic_compare_exchange_strong_explicit(v6, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    result = MEMORY[0x22AA683C0](v6);
    if (*(v6 + 3))
    {
LABEL_4:
      ++*(v6 + 1);
      v15 = 1;
      atomic_compare_exchange_strong_explicit(v6, &v15, 0, memory_order_release, memory_order_relaxed);
      if (v15 == 1)
      {
        goto LABEL_5;
      }

LABEL_135:
      result = WTF::Lock::unlockSlow(v6);
      if (*v11 | *a5)
      {
        goto LABEL_40;
      }

      goto LABEL_6;
    }
  }

  else if (*(v6 + 3))
  {
    goto LABEL_4;
  }

  v14 = 0;
  v69 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v69, 0, memory_order_release, memory_order_relaxed);
  if (v69 != 1)
  {
    goto LABEL_135;
  }

LABEL_5:
  if (*v11 | *a5)
  {
    goto LABEL_40;
  }

LABEL_6:
  if (!v14)
  {
    return result;
  }

  v16 = *(v11 + 8);
  ++v16[1].i32[0];
  v230 = v16;
  if (v16[13].i8[0] == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v17 = *v226;
    *&v228 = *v226;
    if ((*(v14 + 548) & 1) == 0)
    {
      v18 = *(v14 + 32) + 32 * *(v14 + 44);
      v19 = (v18 + 16);
      v20 = -32 * *(v14 + 44);
      while (v20)
      {
        v21 = *(v18 - 8);
        v18 -= 32;
        v19 -= 32;
        v20 += 32;
        if (!v21)
        {
          if ((*v19 & 1) == 0)
          {
            *&v228 = 0;
            *(v19 - 4) = 1;
            *(v19 - 1) = v17;
            *v19 = 1;
          }

          goto LABEL_24;
        }
      }

      v24 = *(v14 + 24);
      if (v24)
      {
        (*(*v24 + 16))(v24, 1, &v228);
        v25 = *(v14 + 24);
        *(v14 + 24) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

LABEL_24:
      v17 = v228;
    }

    *&v228 = 0;
    if (!v17 || atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v22 = v16[6].u32[0];
  if ((v22 - 38) > 5)
  {
    goto LABEL_30;
  }

  v23 = *(v11 + 32);
  if (v23 == 0x7FFFFFFF)
  {
    goto LABEL_47;
  }

  if (v23 == 2)
  {
    if ((v22 - 39) < 5)
    {
      v22 = dword_225881E14[(v22 - 39)];
      goto LABEL_30;
    }

    goto LABEL_47;
  }

  if (v23 != 1)
  {
LABEL_30:
    v218 = v22;
    if (!*&v16[2] || (v26 = v16[9], !*(*&v26 + 8)) || *&v26 != WebGPU::Queue::device(v12, a2))
    {
      v27 = @"destination texture is not valid";
      goto LABEL_34;
    }

    v35 = WebGPU::Texture::errorValidatingImageCopyTexture(v11, a6);
    if (v35)
    {
LABEL_51:
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUQueue.writeTexture: %@", v35];

      if (v28)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

    if ((v16[6].i8[4] & 2) == 0)
    {
      v27 = @"texture usage does not contain CopyDst";
      goto LABEL_34;
    }

    if (v16[5].i32[0] == 1)
    {
      v35 = WebGPU::Texture::errorValidatingTextureCopyRange(v11, a6);
      if (v35)
      {
        goto LABEL_51;
      }

      v53 = v16[6].u32[0];
      v54 = *(v11 + 32);
      if (WebGPU::Texture::refersToSingleAspect(v16[6].u32[0], v54))
      {
        if ((v53 - 38) > 5)
        {
          goto LABEL_94;
        }

        if ((v53 - 38) < 2 || (v53 == 41 || v53 == 43) && v54 == 1)
        {
          v53 = WebGPU::Texture::aspectSpecificFormat(v53, v54);
LABEL_94:
          v35 = WebGPU::Texture::errorValidatingLinearTextureData(a5, a4, v53, *a6, a6[2]);
          if (!v35)
          {

            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v27 = @"isValidDepthStencilCopyDestination failed";
      }

      else
      {
        v27 = @"refersToSingleAspect failed";
      }
    }

    else
    {
      v27 = @"destinationTexture sampleCount is not 1";
    }

LABEL_34:
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUQueue.writeTexture: %@", v27];
    if (v28)
    {
LABEL_35:
      WebGPU::Device::generateAValidationError(v14, v28);

      goto LABEL_36;
    }

LABEL_52:
    if (!a4)
    {
      goto LABEL_36;
    }

    if (a4 <= *(a5 + 8))
    {
      goto LABEL_36;
    }

    WebGPU::Texture::texelBlockSize(v218, v226);
    v36 = *v226;
    v37 = WebGPU::Texture::logicalMiplevelSpecificTextureExtent(v16, *(v11 + 16));
    LODWORD(v38) = *(v11 + 20);
    v211 = v37;
    v65 = v37 >= v38;
    LODWORD(v38) = v37 - v38;
    if (!v65)
    {
      goto LABEL_36;
    }

    v38 = v38 >= *a6 ? *a6 : v38;
    v207 = v38;
    if (!v38)
    {
      goto LABEL_36;
    }

    v39 = *(v11 + 24);
    v40 = *(a6 + 1);
    v41 = *(a5 + 16);
    if (v41 == -1)
    {
      v200 = a2;
      v42 = v36;
      v214 = *(a6 + 1);
      LODWORD(v36) = a4;
      if (v40.i32[0])
      {
        v36 = a4 / v40.u32[0];
      }

      v43 = WebGPU::Texture::bytesPerRow(v218, v38, v16[5].u32[0]);
      if (v36 <= v43)
      {
        v41 = v43;
      }

      else
      {
        v41 = v36;
      }

      v36 = v42;
      a2 = v200;
      v40 = v214;
    }

    v44 = v16[5].i32[1];
    if ((v44 - 1) >= 2)
    {
      if (v44)
      {
        goto LABEL_79;
      }

      v45 = *(v14 + 80);
    }

    else
    {
      v45 = *(v14 + 84);
    }

    v46 = v36 * v45;
    if ((v46 & 0xFFFFFFFF00000000) == 0 && v46 < v41)
    {
      v41 = v46;
    }

LABEL_79:
    v47 = *(a5 + 20);
    if (v47 == -1)
    {
      v47 = v40.i32[0];
    }

    v203 = v41;
    v48 = v41 * v47;
    if ((v48 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_36;
    }

    v49 = *(v11 + 32);
    if (v49 == 0x7FFFFFFF)
    {
      goto LABEL_36;
    }

    v188 = HIDWORD(v211);
    LODWORD(v189) = v48;
    v50 = vcgt_u32(v39, __PAIR64__(a2, HIDWORD(v211)));
    v51 = vmin_u32(vsub_s32(__PAIR64__(a2, HIDWORD(v211)), v39), v40);
    v201 = a2;
    v193 = __PAIR64__(a2, HIDWORD(v211));
    if (v49 == 2)
    {
      v186 = 1;
      v52 = 1;
    }

    else
    {
      if (v49 != 1)
      {
        v186 = 0;
        v187 = 0;
LABEL_99:
        v199 = v36;
        v198 = vbic_s8(v51, v50);
        v197 = *&v16[2];
        v55 = a6[2];
        v215 = v16[5].i32[1];
        if (v215 == 2)
        {
          v55 = 1;
        }

        v208 = v55;
        if (v55)
        {
          v206 = 0;
          v56 = 0;
          v57 = vceq_s32(v198, v193);
          v194 = (v207 == v211) & v57.i8[0];
          v190 = v194 & v57.i32[1];
          while (1)
          {
            v58 = *(v11 + 28);
            v65 = __CFADD__(v58, v56);
            v59 = v58 + v56;
            if (v65)
            {
              goto LABEL_121;
            }

            if (v215 == 2)
            {
              v60 = 0;
            }

            else
            {
              v60 = v59;
            }

            if (WebGPU::Texture::previouslyCleared(v16, *(v11 + 16), v60))
            {
              goto LABEL_104;
            }

            if (v215 == 2)
            {
              if (!v190)
              {
                goto LABEL_118;
              }
            }

            else if (v215 == 1)
            {
              if ((v194 & 1) == 0)
              {
                goto LABEL_118;
              }
            }

            else if (v215 || v207 != v211)
            {
LABEL_118:
              WebGPU::Queue::clearTextureIfNeeded(v12, v11, v60);
              v206 = 1;
              goto LABEL_104;
            }

            WebGPU::Texture::setPreviouslyCleared(v16, *(v11 + 16), v60, 1);
LABEL_104:
            if (v208 == ++v56)
            {
              goto LABEL_120;
            }
          }
        }

        v206 = 0;
LABEL_120:
        if (v199 >> 21)
        {
          goto LABEL_121;
        }

        v61 = v203;
        v62 = v199 << 11;
        if (v215 != 2)
        {
          v62 = v203;
        }

        v195 = v62;
        v209 = WebGPU::Texture::compressedFormatType(v218);
        v204 = WebGPU::Texture::texelBlockHeight(v218);
        v63 = WebGPU::Texture::texelBlockWidth(v218);
        if ((v209 & 0x100000000) != 0 || (v61 == (v61 / v199) * v199 ? (v65 = v195 >= v61) : (v65 = 0), v65))
        {
          v66 = v198;
          v67 = v215;
        }

        else
        {
          v191 = v61;
          LODWORD(v224) = *a6;
          HIDWORD(v224) = v204;
          LODWORD(v225) = 1;
          v66 = v198;
          v67 = v215;
          if (v215)
          {
            v68 = v198.i32[1];
            if (v198.i32[0] > v204 || v198.i32[1] >= 2u)
            {
              v228 = 0uLL;
              if (*(a5 + 16) >= v195)
              {
                v94 = v195;
              }

              else
              {
                v94 = *(a5 + 16);
              }

              v229 = __PAIR64__(v204, v94);
              if (v63)
              {
                v95 = v207 / v63;
              }

              else
              {
                v95 = 0;
              }

              v99 = 0;
              v212 = v95 * v199;
              if (v198.i32[1] <= 1u)
              {
                v68 = 1;
              }

              v216 = v68;
              while (1)
              {
                v100 = *(v11 + 16);
                *v226 = *v11;
                *&v226[16] = v100;
                v227.i64[0] = *(v11 + 32);
                v101 = *(v11 + 28);
                v65 = __CFADD__(v101, v99);
                v102 = v101 + v99;
                if (v65)
                {
                  goto LABEL_121;
                }

                *&v226[28] = v102;
                v220 = v99 * v189;
                if ((v220 & 0xFFFFFFFF00000000) != 0)
                {
                  if (v198.i32[0])
                  {
                    *&v226[24] = *(v11 + 24);
                    if (!__CFADD__(*&v226[24], v204))
                    {
                      goto LABEL_121;
                    }

LABEL_354:
                    __break(0xC471u);
                    JUMPOUT(0x2256B9E0CLL);
                  }
                }

                else
                {
                  v103 = 0;
                  while (v103 < v198.i32[0])
                  {
                    v104 = *(v11 + 24);
                    v65 = __CFADD__(v104, v103);
                    v105 = v104 + v103;
                    if (v65)
                    {
                      goto LABEL_121;
                    }

                    *&v226[24] = v105;
                    v65 = __CFADD__(v105, v204);
                    v106 = v105 + v204;
                    if (v65)
                    {
                      goto LABEL_354;
                    }

                    v65 = v106 >= v188;
                    v107 = v106 - v188;
                    if (v107 != 0 && v65)
                    {
                      HIDWORD(v224) = v107;
                      v204 = v107;
                    }

                    v108 = v191 * v204;
                    if ((v108 & 0xFFFFFFFF00000000) == 0)
                    {
                      v109 = v103 + 1 == v198.i32[0] ? v212 : v108;
                      v110 = v103 * v191;
                      v111 = (v110 & 0xFFFFFFFF00000000) != 0;
                      v112 = v110 + v220;
                      v113 = __CFADD__(v110, v220);
                      if (!v111 && !v113 && !HIDWORD(v109))
                      {
                        v114 = 0;
                        do
                        {
                          v115 = *(v11 + 20);
                          v65 = __CFADD__(v115, v114);
                          v116 = v115 + v114;
                          if (v65)
                          {
                            goto LABEL_121;
                          }

                          *&v226[20] = v116;
                          v117 = v114 + v112;
                          if (__CFADD__(v114, v112) || __CFADD__(v117, v109) || a4 < v117 + v109)
                          {
                            goto LABEL_121;
                          }

                          if (a4 < v117 || a4 - v117 < v109)
                          {
                            goto LABEL_353;
                          }

                          WebGPU::Queue::writeTexture(v12, v226, &a3[v117], v109, &v228, &v224);
                          v118 = v114 + v195;
                          if (__CFADD__(v114, v195))
                          {
                            goto LABEL_121;
                          }

                          v114 += v195;
                        }

                        while (v118 < v207);
                        v204 = HIDWORD(v224);
                        v65 = __CFADD__(v103, HIDWORD(v224));
                        v103 += HIDWORD(v224);
                        if (!v65)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_121;
                  }
                }

                if (++v99 == v216)
                {
                  goto LABEL_121;
                }
              }
            }
          }

          LODWORD(v189) = 0;
          v61 = 0;
        }

        if (v67 == 0x7FFFFFFF)
        {
          goto LABEL_121;
        }

        if (v215 == 2)
        {
          if (!v66.i32[0] || !v66.i32[1])
          {
            goto LABEL_121;
          }
        }

        else if (v215 == 1 && !v66.i32[0])
        {
LABEL_121:

          goto LABEL_36;
        }

        v70 = v207 / v63;
        if (v207 % v63)
        {
          ++v70;
        }

        v71 = v199 * v70;
        if ((v71 & 0xFFFFFFFF00000000) != 0)
        {
          v72 = 0;
        }

        else
        {
          v72 = v199 * v70;
        }

        if ((v71 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_121;
        }

        v181 = v72;
        v196 = 0;
        v189 = v189;
        v183 = *(a5 + 8);
        v182 = v66.u32[0];
        v73 = v207 == v211 && v66.i32[0] == HIDWORD(v211);
        __n = v71;
        v74 = !v73 || v61 == v71;
        v192 = v61;
        v76 = !v74 || v61 != (v61 / v199) * v199;
        if ((v209 & 0x100000000) != 0 && v76)
        {
          if (v204 <= v66.i32[0])
          {
            v77 = v66.i32[0];
          }

          else
          {
            v77 = v204;
          }

          v78 = HIDWORD(v211) / v204;
          if (HIDWORD(v211) % v204)
          {
            ++v78;
          }

          if (v204 > v78)
          {
            v78 = v204;
          }

          v180 = v71 * v78;
          if ((v180 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_121;
          }

          v79 = a6[2];
          v80 = v79 <= 1 ? 1 : v79;
          v184 = v80;
          v81 = v180 * v80;
          if ((v81 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_121;
          }

          v210 = v81;
          if (v81)
          {
            v196 = WTF::fastMalloc(v81);
            bzero(v196, v210);
          }

          else
          {
            v196 = 0;
          }

          v132 = v77 / v204;
          v133 = v132 - 1;
          if (!is_mul_ok(v132 - 1, v192))
          {
            goto LABEL_354;
          }

          v134 = v184 - 1;
          if (__CFADD__(v133 * v192, v71 + (v184 - 1) * v189))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            *&v228 = *v226;
            WebGPU::Device::generateAValidationError(v14, &v228);
            v135 = v228;
            *&v228 = 0;
            if (v135 && atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v135, v64);
            }

            goto LABEL_264;
          }

          v136 = v133 * v71;
          v137 = v134 * v180;
          v138 = v133 * v192;
          v139 = (v138 & 0xFFFFFFFF00000000) != 0;
          if (HIDWORD(v133) != 0 || (v138 & 0xFFFFFFFF00000000) != 0)
          {
            v140 = 0;
          }

          else
          {
            v140 = v133 * v192;
          }

          v141 = v134 * v189;
          if ((v141 & 0xFFFFFFFF00000000) != 0 || HIDWORD(v133) || (v136 & 0xFFFFFFFF00000000) != 0 || (v137 & 0xFFFFFFFF00000000) != 0 || v139)
          {
            goto LABEL_264;
          }

          v65 = __CFADD__(v137, v71);
          v142 = v137 + v71;
          v143 = v65;
          v65 = __CFADD__(v136, v142);
          v144 = v136 + v142;
          v145 = v65;
          v146 = *(a5 + 8);
          if (HIDWORD(v146))
          {
            goto LABEL_264;
          }

          v147 = v146 + v71;
          if (__CFADD__(v146, v71))
          {
            goto LABEL_264;
          }

          v65 = __CFADD__(v141, v147);
          v148 = v141 + v147;
          if (v65)
          {
            goto LABEL_264;
          }

          v65 = __CFADD__(v140, v148);
          v149 = (v140 + v148);
          v150 = v65;
          if (v150 || v143 || v145)
          {
            goto LABEL_264;
          }

          if (((v144 > v210) & ~(v143 || v145)) != 0 || a4 < v149)
          {
            v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"y(%zu) * newBytesPerRow(%u) + z(%zu) * newBytesPerImage(%u) + newBytesPerRow(%u) > newData.size()(%zu) || y(%zu) * bytesPerRow(%lu) + z(%zu) * bytesPerImage(%lu) + newBytesPerRow(%u) > dataSize(%zu), copySize %u, %u, %u, textureSize %u, %u, %u, offset %llu", v132 - 1, v71, v184 - 1, v180, v71, v210, v132 - 1, v192, v184 - 1, v189, v71, a4, v207, v182, v198.u32[1], v211, v188, v201, *(a5 + 8)];
            WebGPU::Device::generateAValidationError(v14, v86);
            goto LABEL_263;
          }

          for (i = 0; i != v184; ++i)
          {
            v151 = i * v189;
            v152 = (v151 & 0xFFFFFFFF00000000) != 0;
            if ((v151 & 0xFFFFFFFF00000000) != 0)
            {
              LODWORD(v151) = 0;
            }

            v213 = v151;
            v153 = i * v180;
            v154 = (v153 & 0xFFFFFFFF00000000) != 0;
            if ((v153 & 0xFFFFFFFF00000000) != 0)
            {
              LODWORD(v153) = 0;
            }

            v205 = v153;
            if (v154 || v152)
            {
              goto LABEL_264;
            }

            v155 = 0;
            do
            {
              v156 = v155 * v192;
              v157 = (v156 & 0xFFFFFFFF00000000) != 0;
              if ((v156 & 0xFFFFFFFF00000000) != 0)
              {
                LODWORD(v156) = 0;
              }

              v158 = v155 * v181;
              v159 = (v158 & 0xFFFFFFFF00000000) != 0;
              if ((v158 & 0xFFFFFFFF00000000) != 0)
              {
                LODWORD(v158) = 0;
              }

              if (v157)
              {
                goto LABEL_264;
              }

              if (v159)
              {
                goto LABEL_264;
              }

              v160 = *(a5 + 8);
              if (HIDWORD(v160))
              {
                goto LABEL_264;
              }

              v65 = __CFADD__(v213, v160);
              v161 = v213 + v160;
              if (v65)
              {
                goto LABEL_264;
              }

              v65 = __CFADD__(v156, v161);
              v162 = (v156 + v161);
              if (v65)
              {
                goto LABEL_264;
              }

              v65 = __CFADD__(v158, v205);
              v163 = (v158 + v205);
              if (v65)
              {
                goto LABEL_264;
              }

              if (a4 < v162 || a4 - v162 < __n || v210 < v163 || v210 - v163 < __n)
              {
                goto LABEL_353;
              }

              memcpy(&v196[v163], &a3[v162], __n);
              ++v155;
            }

            while (v155 < v132);
          }

          v183 = 0;
          v189 = v180;
          a3 = v196;
          if (v12[6] != v12[7])
          {
LABEL_188:
            v84 = WebGPU::Queue::ensureBlitCommandEncoder(v12);
            v85 = v210 - v183;
            if (v210 >= v183)
            {
              WebGPU::Queue::newTemporaryBufferWithBytes(&v224, v12, &a3[v183], v210 - v183, (v85 & 0xFFFFFFFFFE000000) != 0);
              v86 = v224;
              if (!v86)
              {
                goto LABEL_262;
              }

              v87 = v225;
              v88 = v16[5].i32[1];
              if (v88 > 1)
              {
                if (v88 == 2)
                {
                  if (!v182)
                  {
                    goto LABEL_262;
                  }

                  if (!v198.i32[1])
                  {
                    goto LABEL_262;
                  }

                  v126 = *(v11 + 20);
                  v127 = *(v11 + 28);
                  if (__n)
                  {
                    if (__n < WebGPU::Texture::bytesPerRow(v218, v207, v16[5].u32[0]))
                    {
                      goto LABEL_262;
                    }
                  }

                  *&v128 = v126;
                  *(&v128 + 1) = HIDWORD(v126);
                  v129 = v128;
                  v130 = v12[3];
                  *v226 = v207;
                  *&v128 = v198.u32[0];
                  *(&v128 + 1) = v198.u32[1];
                  *&v226[8] = v128;
                  v131 = *(v11 + 16);
                  v228 = v129;
                  v229 = v127;
                  [v130 copyFromBuffer:v86 sourceOffset:v87 sourceBytesPerRow:__n sourceBytesPerImage:v189 sourceSize:v226 toTexture:v197 destinationSlice:0 destinationLevel:v131 destinationOrigin:&v228 options:v187];
                }

                else if (v88 == 0x7FFFFFFF)
                {
                  goto LABEL_262;
                }
              }

              else
              {
                if (!v88)
                {
                  v119 = a6[2];
                  if (v119)
                  {
                    v120 = 0;
                    v121 = 0;
                    v221 = *(v11 + 20);
                    v122 = v207 * v199;
                    v217 = vdupq_n_s64(1uLL);
                    while (!__CFADD__(v120, v122))
                    {
                      if (v120 + v122 <= v85 && !(v120 % v199))
                      {
                        v123 = v121 + *(v11 + 28);
                        v124 = v12[3];
                        *v226 = v207;
                        *&v226[8] = v217;
                        v125 = *(v11 + 16);
                        v228 = v221;
                        v229 = 0;
                        [v124 copyFromBuffer:v86 sourceOffset:v87 + v120 sourceBytesPerRow:__n sourceBytesPerImage:0 sourceSize:v226 toTexture:v197 destinationSlice:v123 destinationLevel:v125 destinationOrigin:&v228 options:v187];
                        v119 = a6[2];
                      }

                      ++v121;
                      v120 += v189;
                      if (v121 >= v119)
                      {
                        goto LABEL_260;
                      }
                    }

                    goto LABEL_262;
                  }

                  goto LABEL_260;
                }

                if (v88 == 1)
                {
                  if (v182 && (!__n || __n >= WebGPU::Texture::bytesPerRow(v218, v207, v16[5].u32[0])))
                  {
                    v89 = a6[2];
                    if (v89)
                    {
                      v90 = 0;
                      v91 = 0;
                      v92 = *(v11 + 20);
                      *&v93 = v92;
                      *(&v93 + 1) = HIDWORD(v92);
                      v219 = v93;
                      do
                      {
                        if (!(v90 % v199))
                        {
                          v96 = v91 + *(v11 + 28);
                          v97 = v12[3];
                          *v226 = v207;
                          *&v226[8] = v182;
                          *&v226[16] = 1;
                          v98 = *(v11 + 16);
                          v228 = v219;
                          v229 = 0;
                          [v97 copyFromBuffer:v86 sourceOffset:v87 + v90 sourceBytesPerRow:__n sourceBytesPerImage:0 sourceSize:v226 toTexture:v197 destinationSlice:v96 destinationLevel:v98 destinationOrigin:&v228 options:v187];
                          v89 = a6[2];
                        }

                        ++v91;
                        v90 += v189;
                      }

                      while (v91 < v89);
                    }

                    goto LABEL_260;
                  }

LABEL_262:

LABEL_263:
                  goto LABEL_264;
                }
              }

LABEL_260:
              if (v85 >> 25)
              {
                WebGPU::Queue::finalizeBlitCommandEncoder(v12);
              }

              goto LABEL_262;
            }

LABEL_353:
            __break(1u);
            goto LABEL_354;
          }
        }

        else
        {
          v210 = a4;
          __n = v61;
          if (v12[6] != v12[7])
          {
            goto LABEL_188;
          }
        }

        if (v12[3])
        {
          v82 = 1;
        }

        else
        {
          v82 = v186;
        }

        if ((v82 | v206))
        {
          goto LABEL_188;
        }

        v83 = [v197 storageMode];
        if (v83)
        {
          if (v83 != 2)
          {
            goto LABEL_264;
          }

          goto LABEL_188;
        }

        if (v215 != 2)
        {
          if (v215 == 1)
          {
            if (v182)
            {
              v170 = a6[2];
              if (v170)
              {
                v171 = 0;
                v172 = *(v11 + 20);
                *&v173 = v172;
                *(&v173 + 1) = HIDWORD(v172);
                v223 = v173;
                while (1)
                {
                  v174 = v171 * v189;
                  if ((v174 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v65 = __CFADD__(v183, v174);
                  v175 = v183 + v174;
                  if (v65)
                  {
                    break;
                  }

                  if (!(v175 % v199))
                  {
                    v176 = *(v11 + 28);
                    *v226 = v223;
                    *&v226[16] = 0;
                    *&v226[24] = v207;
                    v227.i64[0] = v182;
                    v227.i64[1] = 1;
                    if (v210 < v175)
                    {
                      goto LABEL_353;
                    }

                    [v197 replaceRegion:v226 mipmapLevel:*(v11 + 16) slice:v171 + v176 withBytes:&a3[v175] bytesPerRow:__n bytesPerImage:0];
                    v170 = a6[2];
                  }

                  if (++v171 >= v170)
                  {
                    goto LABEL_264;
                  }
                }
              }
            }
          }

          else if (!v215)
          {
            v164 = *(v11 + 20);
            v228 = 0uLL;
            v165 = a6[2];
            if (v165)
            {
              if (!HIDWORD(v183))
              {
                v166 = 0;
                v222 = vdupq_n_s64(1uLL);
                do
                {
                  v167 = v166 * v189;
                  if ((v167 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v65 = __CFADD__(v183, v167);
                  v168 = (v183 + v167);
                  if (v65)
                  {
                    break;
                  }

                  if (v168 == (v168 / v199) * v199)
                  {
                    v169 = *(v11 + 28);
                    *&v226[8] = v228;
                    *v226 = v164;
                    *&v226[24] = v207;
                    v227 = v222;
                    if (v210 < v168)
                    {
                      goto LABEL_353;
                    }

                    [v197 replaceRegion:v226 mipmapLevel:*(v11 + 16) slice:v166 + v169 withBytes:&a3[v168] bytesPerRow:0 bytesPerImage:0];
                    v165 = a6[2];
                  }

                  ++v166;
                }

                while (v166 < v165);
              }
            }
          }

          goto LABEL_264;
        }

        if (v182 && v198.i32[1] && !(v183 % v199))
        {
          v177 = *(v11 + 28);
          v178 = *(v11 + 20);
          v179.i64[0] = v178;
          v179.i64[1] = HIDWORD(v178);
          *v226 = v179;
          *&v226[16] = v177;
          *&v226[24] = v207;
          v179.i64[0] = v198.u32[0];
          v179.i64[1] = v198.u32[1];
          v227 = v179;
          if (v210 < v183)
          {
            goto LABEL_353;
          }

          [v197 replaceRegion:v226 mipmapLevel:*(v11 + 16) slice:0 withBytes:&a3[v183] bytesPerRow:__n bytesPerImage:v189];
        }

LABEL_264:
        if (v196)
        {
          WTF::fastFree(v196, v64);
        }

        goto LABEL_121;
      }

      v186 = 1;
      v52 = 2;
    }

    v187 = v52;
    goto LABEL_99;
  }

  if (v22 <= 0x2B && ((1 << v22) & 0xA4000000000) != 0)
  {
    v22 = 38;
    goto LABEL_30;
  }

LABEL_47:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *&v228 = *v226;
  WebGPU::Device::generateAValidationError(v14, &v228);
  v17 = v228;
  *&v228 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_27:
    WTF::StringImpl::destroy(v17, a2);
  }

LABEL_36:
  result = v230;
  if (v230)
  {
    if (v230[1].i32[0] == 1)
    {
      WebGPU::Texture::~Texture(v230);
      result = bmalloc::api::tzoneFree(v29, v30);
    }

    else
    {
      --v230[1].i32[0];
    }
  }

LABEL_40:
  if (v14)
  {
    do
    {
      v31 = *v14;
      if ((*v14 & 1) == 0)
      {
        return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v14, a2);
      }

      v32 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v32, v31 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v32 != v31);
    if (v31 == 3)
    {
      WebGPU::Device::~Device(v14, a2);
      return bmalloc::api::tzoneFree(v33, v34);
    }
  }

  return result;
}