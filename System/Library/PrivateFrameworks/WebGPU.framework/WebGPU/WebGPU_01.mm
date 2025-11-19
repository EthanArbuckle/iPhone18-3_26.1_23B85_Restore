uint64_t mpark::variant<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>::variant<WebGPU::Buffer*,WebGPU::Buffer*,0,0,0,0ul,WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,0>(uint64_t result, atomic_ullong *a2)
{
  if (a2)
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
        goto LABEL_7;
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
      if (v6 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      ++*(v5 + 8);
      atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_7;
      }
    }

    v7 = result;
    v8 = v5;
    v9 = a2;
    WTF::Lock::unlockSlow(v8);
    a2 = v9;
    result = v7;
  }

LABEL_7:
  *result = a2;
  *(result + 8) = 0;
  return result;
}

__n128 WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebGPU::BindGroupEntryUsageData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v5 = *(v3 + 16);
  if (v5 != 255)
  {
    v6 = *(v3 + 8);
    *(v3 + 8) = 0;
    *(v4 + 8) = v6;
    *(v4 + 16) = v5;
  }

  result = *(v3 + 24);
  *(v4 + 24) = result;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 40 * *(a1 + 12) <= a3)
  {
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    if (v4)
    {
      v8 = v6;
      v9 = 0;
      v10 = v3 + 40 * v4;
      do
      {
        v11 = v8 + v9;
        v12 = v3 + v9;
        *v11 = *(v3 + v9);
        *(v11 + 8) = 0;
        *(v11 + 16) = -1;
        v13 = *(v3 + v9 + 16);
        if (v13 != 255)
        {
          v14 = *(v12 + 1);
          *(v12 + 1) = 0;
          *(v11 + 8) = v14;
          *(v11 + 16) = v13;
        }

        *(v11 + 24) = *(v12 + 24);
        if (v12[16] != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v15, v3 + v9 + 8);
        }

        v12[16] = -1;
        v9 += 40;
      }

      while (v12 + 40 != v10);
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::HashTable<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashMap<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>,WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>,WTF::DefaultHash<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::HashTraits<WTF::EnumeratedArray<WebGPU::ShaderStage,std::optional<unsigned int>,(WebGPU::ShaderStage)2>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc(((32 * a2) | 0x10));
  v12 = v9;
  v13 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 32 * a2);
  }

  *a1 = v13;
  v12[2] = a2 - 1;
  v12[3] = a2;
  *v12 = 0;
  v12[1] = v8;
  if (v7)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v6 + 32 * v14;
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
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

          v20 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v23;
            v26 = *(v18 + 32 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (v26);
          v27 = v18 + 32 * v25;
          *v16 = 0;
          *v27 = v17;
          v28 = *(v16 + 8);
          *(v27 + 24) = *(v16 + 24);
          *(v27 + 8) = v28;
          v29 = *v16;
          *v16 = 0;
          if (v29)
          {
            if (*v29 == 1)
            {
              WebGPU::Sampler::~Sampler(v29, v10, v11);
              bmalloc::api::tzoneFree(v30, v31);
            }

            else
            {
              --*v29;
            }
          }

          if (v16 == a3)
          {
            v15 = v27;
          }
        }

        else
        {
          *v16 = 0;
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

unint64_t WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 48 * *(a1 + 12) <= a3)
  {
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 >= 0x5555556)
  {
    __break(0xC471u);
    return result;
  }

  v2 = result;
  v3 = *result;
  v4 = *(result + 12);
  v5 = 48 * a2;
  v6 = WTF::fastMalloc((48 * a2));
  *(v2 + 8) = v5 / 0x30;
  *v2 = v6;
  if (!v4)
  {
    goto LABEL_34;
  }

  v8 = v6;
  v9 = (v3 + 48 * v4);
  v10 = v3;
  while (2)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    v11 = *v10;
    *v10 = 0;
    *v8 = v11;
    LODWORD(v11) = *(v10 + 2);
    *(v10 + 2) = 0;
    *(v8 + 8) = v11;
    LODWORD(v11) = *(v10 + 3);
    *(v10 + 3) = 0;
    *(v8 + 12) = v11;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v12 = *(v10 + 2);
    *(v10 + 2) = 0;
    *(v8 + 16) = v12;
    LODWORD(v12) = *(v10 + 6);
    *(v10 + 6) = 0;
    *(v8 + 24) = v12;
    LODWORD(v12) = *(v10 + 7);
    *(v10 + 7) = 0;
    *(v8 + 28) = v12;
    *(v8 + 32) = *(v10 + 2);
    v13 = *(v10 + 7);
    v14 = *(v10 + 2);
    if (!v13)
    {
      goto LABEL_27;
    }

    v15 = v14 + 40 * v13;
    do
    {
      v16 = *(v14 + 16);
      if (v16 == 255)
      {
        goto LABEL_9;
      }

      v17 = *(v14 + 8);
      *(v14 + 8) = 0;
      if (v16 == 2)
      {
        if (!v17)
        {
          goto LABEL_9;
        }

        v18 = *(v17 + 2) - 1;
        if (*(v17 + 2) != 1)
        {
LABEL_8:
          *(v17 + 2) = v18;
          goto LABEL_9;
        }

        WebGPU::ExternalTexture::~ExternalTexture(v17, v7);
      }

      else if (v16 == 1)
      {
        if (!v17)
        {
          goto LABEL_9;
        }

        v18 = *(v17 + 2) - 1;
        if (*(v17 + 2) != 1)
        {
          goto LABEL_8;
        }

        WebGPU::TextureView::~TextureView(v17, v7);
      }

      else
      {
        if (!v17)
        {
          goto LABEL_9;
        }

        do
        {
          v21 = *v17;
          if ((*v17 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v17, v7);
            goto LABEL_9;
          }

          v22 = *v17;
          atomic_compare_exchange_strong_explicit(v17, &v22, v21 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v22 != v21);
        if (v21 != 3)
        {
          goto LABEL_9;
        }

        WebGPU::Buffer::~Buffer(v17);
      }

      bmalloc::api::tzoneFree(v19, v20);
LABEL_9:
      *(v14 + 16) = -1;
      v14 += 40;
    }

    while (v14 != v15);
    v14 = *(v10 + 2);
LABEL_27:
    if (v14)
    {
      *(v10 + 2) = 0;
      *(v10 + 6) = 0;
      WTF::fastFree(v14, v7);
    }

    v23 = *(v10 + 3);
    if (v23)
    {
      v24 = *v10;
      v25 = 8 * v23;
      do
      {
        v26 = *v24++;

        v25 -= 8;
      }

      while (v25);
    }

    v27 = *v10;
    if (*v10)
    {
      *v10 = 0;
      *(v10 + 2) = 0;
      WTF::fastFree(v27, v7);
    }

    v8 += 48;
    v10 = (v10 + 48);
    if (v10 != v9)
    {
      continue;
    }

    break;
  }

LABEL_34:
  if (v3)
  {
    if (*v2 == v3)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
    }

    WTF::fastFree(v3, v7);
  }

  return 1;
}

void *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((8 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((8 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 < 8)
  {
    v12 = 0;
LABEL_10:
    v16 = a2 - v12;
    v17 = &v9[2 * v12 + 4];
    do
    {
      *v17++ = 0xFFFFFFFFLL;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFF8;
  v13 = v9 + 12;
  *&v14 = 0xFFFFFFFFLL;
  *(&v14 + 1) = 0xFFFFFFFFLL;
  v15 = v12;
  do
  {
    *(v13 - 2) = v14;
    *(v13 - 1) = v14;
    *v13 = v14;
    v13[1] = v14;
    v13 += 4;
    v15 -= 8;
  }

  while (v15);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
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
      v20 = (v6 + 8 * v18);
      if (*v20 <= 0xFFFFFFFD)
      {
        v21 = *a1;
        if (*a1)
        {
          v22 = *(v21 - 8);
        }

        else
        {
          v22 = 0;
        }

        v23 = 0;
        v24 = 9 * ((*v20 + ~(*v20 << 15)) ^ ((*v20 + ~(*v20 << 15)) >> 10));
        v25 = ((v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11)) ^ (((v24 ^ (v24 >> 6)) + ~((v24 ^ (v24 >> 6)) << 11)) >> 16);
        do
        {
          v26 = v25 & v22;
          v25 = ++v23 + v26;
        }

        while (*(v21 + 8 * v26) != -1);
        v27 = (v21 + 8 * v26);
        *v27 = *v20;
        if (v20 == a3)
        {
          v19 = v27;
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

_OWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,unsigned int>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 1) = -1;
      *v16 = 0;
      v16 += 4;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFE;
  v13 = v9 + 10;
  v14 = v12;
  do
  {
    *(v13 - 3) = -1;
    *(v13 - 1) = -1;
    *(v13 - 4) = 0;
    *v13 = 0;
    v13 += 8;
    v14 -= 2;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v6 + 16 * v17);
      if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v19 + ~(*v19 << 32)) ^ ((*v19 + ~(*v19 << 32)) >> 22);
        v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
        v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
        v25 = v21 & ((v24 >> 31) ^ v24);
        v26 = 1;
        do
        {
          v27 = v25;
          v28 = *(v20 + 16 * v25);
          v25 = (v25 + v26++) & v21;
        }

        while (v28 != -1);
        v29 = (v20 + 16 * v27);
        *v29 = *v19;
        if (v19 == a3)
        {
          v18 = v29;
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

void WebGPU::Device::createBindGroupLayout(WebGPU::Device *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, WebGPU::BindGroupLayout *a4@<X8>)
{
  v4 = a1;
  v307 = *MEMORY[0x277D85DE8];
  if (*a2 || !*(a1 + 1))
  {
    if (WebGPU::BindGroupLayout::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
    }

    v6 = NonCompact;
    WebGPU::BindGroupLayout::BindGroupLayout(NonCompact, v4);
    *a4 = v6;
    return;
  }

  v297 = 0;
  v295 = 0;
  v294 = 0;
  v296 = 0;
  v294 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2[2]];

  v292 = 0;
  v290 = 0;
  v288 = 0;
  v286 = 0;
  v284 = 0;
  v283[0] = 0;
  v295 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2[2]];

  v283[1] = 0;
  v296 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2[2]];

  v293 = 0;
  v291 = 0;
  v289 = 0;
  v287 = 0;
  v285 = 0;
  v283[2] = 0;
  v241 = a2;
  v11 = a2[2];
  if (v11)
  {
    if (v11 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x225672288);
    }

    v12 = a2[3];
    v13 = WTF::fastMalloc((v11 << 7));
    v14 = 0;
    do
    {
      v15 = &v13[v14 / 0x10];
      v16 = *(v12 + v14);
      v17 = *(v12 + v14 + 16);
      v18 = *(v12 + v14 + 48);
      v15[2] = *(v12 + v14 + 32);
      v15[3] = v18;
      *v15 = v16;
      v15[1] = v17;
      v10 = *(v12 + v14 + 64);
      v19 = *(v12 + v14 + 80);
      v20 = *(v12 + v14 + 112);
      v15[6] = *(v12 + v14 + 96);
      v15[7] = v20;
      v15[4] = v10;
      v15[5] = v19;
      v14 += 128;
    }

    while (v11 << 7 != v14);
    v243 = v13;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v21 = 126 - 2 * __clz(v11);
    v11 = v11;
    location[0] = 8;
    *&v298 = &v279;
    *(&v298 + 1) = location;
    if (v11)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v10.n128_u64[0] = std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,false>(v13, &v13[8 * v11], &v298, v22, 1).n128_u64[0];
    goto LABEL_18;
  }

  v13 = 0;
  v243 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_12:
  v11 = v11;
LABEL_18:
  v282 = 0;
  v280 = 0;
  v279 = 0;
  v281 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v272 = 0;
  v273 = 0;
  v244 = *(v4 + 26);
  v271 = 0;
  v250 = v4;
  if (!v11)
  {
    LODWORD(v242) = 0;
    LODWORD(v240) = 0;
    v135 = v241;
    goto LABEL_211;
  }

  LODWORD(v242) = 0;
  LODWORD(v240) = 0;
  v245 = (v243 + 128 * v11);
  v23 = v243;
  do
  {
    v252 = v23;
    v24 = *v23;
    if (!*v23)
    {
      goto LABEL_24;
    }

    if (v24[2] != 1683766698)
    {
      if (WebGPU::BindGroupLayout::s_heapRef)
      {
LABEL_350:
        v229 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v8);
LABEL_351:
        v147 = v229;
        WebGPU::BindGroupLayout::BindGroupLayout(v229, v4);
        goto LABEL_227;
      }

LABEL_376:
      v229 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
      goto LABEL_351;
    }

    if (*v24)
    {
      if (WebGPU::BindGroupLayout::s_heapRef)
      {
        goto LABEL_350;
      }

      goto LABEL_376;
    }

LABEL_24:
    v25 = v23;
    if (*(v23 + 10) == 2147483644)
    {
      goto LABEL_34;
    }

    v26 = *(v23 + 2);
    if (*(v23 + 2) >= v244)
    {
      v136 = MEMORY[0x277CCACA8];
      if (!v271)
      {
        v142 = "is not";
        goto LABEL_222;
      }

LABEL_214:
      if (v26 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256722E8);
      }

      if (v26 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225672308);
      }

      v137 = *(v271 - 8);
      v138 = 9 * ((v26 + ~(v26 << 15)) ^ ((v26 + ~(v26 << 15)) >> 10));
      v139 = (v138 ^ (v138 >> 6)) + ~((v138 ^ (v138 >> 6)) << 11);
      v140 = v137 & (v139 ^ HIWORD(v139));
      v141 = *(v271 + 4 * v140);
      if (v141 == v26)
      {
        v142 = "is";
      }

      else
      {
        v143 = 1;
        v142 = "is not";
        while (v141 != -1)
        {
          v140 = (v140 + v143) & v137;
          v141 = *(v271 + 4 * v140);
          ++v143;
          if (v141 == v26)
          {
            v142 = "is";
            break;
          }
        }
      }

LABEL_222:
      v144 = [v136 stringWithFormat:@"Binding index is invalid: entry.binding(%u) >= maxBindingIndex(%u) || entry binding %s duplicated", v10.n128_f64[0], v26, v244, v142];
      if ((a3 & 1) == 0)
      {
        WebGPU::Device::generateAValidationError(v4, v144);
      }

      if (WebGPU::BindGroupLayout::s_heapRef)
      {
LABEL_225:
        v146 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v145);
LABEL_226:
        v147 = v146;
        WebGPU::BindGroupLayout::BindGroupLayout(v146, v250);
LABEL_227:
        *a4 = v147;
        goto LABEL_228;
      }

LABEL_380:
      v146 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
      goto LABEL_226;
    }

    if (v271)
    {
      if (v26 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x225672240);
      }

      v27 = *(v271 - 8);
      v28 = 9 * ((v26 + ~(v26 << 15)) ^ ((v26 + ~(v26 << 15)) >> 10));
      v29 = v27 & (((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) ^ (((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) >> 16));
      v30 = *(v271 + 4 * v29);
      if (v30 == v26)
      {
LABEL_213:
        v136 = MEMORY[0x277CCACA8];
        goto LABEL_214;
      }

      v31 = 1;
      while (v30 != -1)
      {
        v29 = (v29 + v31) & v27;
        v30 = *(v271 + 4 * v29);
        ++v31;
        if (v30 == v26)
        {
          goto LABEL_213;
        }
      }
    }

    WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v271, v23 + 2, &v298);
    v25 = v252;
LABEL_34:
    if (*(v25 + 11))
    {
      v32 = *(v25 + 10);
      if (v32 == 1)
      {
        v33 = *(v4 + 27);
        v242 = (v242 + 1);
        if (v242 > v33)
        {
          v230 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many dynamic uniform buffers: used(%u), limit(%u)", v242, v33];
          v231 = v230;
          if ((a3 & 1) == 0)
          {
            WebGPU::Device::generateAValidationError(v4, v230);
          }

          if (WebGPU::BindGroupLayout::s_heapRef)
          {
            goto LABEL_225;
          }

          goto LABEL_380;
        }
      }

      else if ((v32 & 0xFFFFFFFE) == 2)
      {
        v34 = *(v4 + 28);
        v240 = (v240 + 1);
        if (v240 > v34)
        {
          v235 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many dynamic storage buffers: used(%u), limit(%u)", v240, v34];
          if ((a3 & 1) == 0)
          {
            WebGPU::Device::generateAValidationError(v4, v235);
          }

          if (WebGPU::BindGroupLayout::s_heapRef)
          {
            goto LABEL_225;
          }

          goto LABEL_380;
        }
      }
    }

    *location = 0u;
    *v270 = 0u;
    while (1)
    {
      v35 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v36 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v36 == v35)
      {
        goto LABEL_48;
      }
    }

    v37 = 0;
    v38 = *v4;
    atomic_compare_exchange_strong_explicit(*v4, &v37, 1u, memory_order_acquire, memory_order_acquire);
    if (v37)
    {
      MEMORY[0x22AA683C0](v38);
    }

    ++*(v38 + 8);
    v39 = 1;
    atomic_compare_exchange_strong_explicit(v38, &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != 1)
    {
      WTF::Lock::unlockSlow(v38);
    }

LABEL_48:
    v268 = v4;
    v246 = *(v252 + 22);
    if (v246 == 2147483646)
    {
      if (v252[10] || *(v252 + 24) && *(v252 + 23) != 2)
      {
        v40 = 0;
      }

      else
      {
        v40 = objc_opt_new();
        [v40 setDataType:58];
        [v40 setAccess:0];
      }

      v46 = v40;
      objc_storeStrong(location, v40);

      if (v252[10])
      {
        v47 = 0;
      }

      else if (!*(v252 + 24) || (v47 = 0, *(v252 + 23) == 2) && *(v252 + 22) != 1)
      {
        v47 = objc_opt_new();
        [v47 setDataType:58];
        [v47 setAccess:0];
      }

      objc_storeStrong(&location[1], v47);

      v298 = xmmword_225881D20;
      v299 = *algn_225881D30;
      v48 = WebGPU::createArgumentDescriptor(&v298, *(v252 + 6));
      objc_storeStrong(v270, v48);

      DWORD2(v298) = 2147483645;
      v49 = WebGPU::createArgumentDescriptor(&v298, *(v252 + 6));
      objc_storeStrong(&v270[1], v49);

      v50 = 0;
      v51 = 0;
      v239 = 0u;
      v52 = 4;
      v4 = v250;
LABEL_74:
      if (!v46)
      {
        if (WebGPU::BindGroupLayout::s_heapRef)
        {
          goto LABEL_161;
        }

        goto LABEL_205;
      }

LABEL_75:
      LOBYTE(v265) = 0;
      BYTE4(v265) = 0;
      LOBYTE(v266) = 0;
      BYTE4(v266) = 0;
      LOBYTE(v267) = 0;
      BYTE4(v267) = 0;
      LOBYTE(v263) = 0;
      BYTE4(v263) = 0;
      BYTE8(v263) = 0;
      BYTE12(v263) = 0;
      LOBYTE(v264) = 0;
      BYTE4(v264) = 0;
      LOBYTE(v261) = 0;
      BYTE4(v261) = 0;
      BYTE8(v261) = 0;
      BYTE12(v261) = 0;
      LOBYTE(v262) = 0;
      BYTE4(v262) = 0;
      if (*(v252 + 6))
      {
        v237 = v52;
        v249 = v46;
        v236 = v50;
        v238 = v51;
        v53 = 0;
        v54 = 0;
        v55 = &v265 + 4;
        while (1)
        {
          if ((*(v252 + 6) >> v54))
          {
            v56 = dword_225881D10[v54];
            if (*(v252 + 10) != 2147483644)
            {
              v258[0] = (v53 + *(v252 + 2));
              v57 = v249;
              v260 = [v57 access];
              WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLBindingAccess>(&v298, &v297, v258, &v260);

              v4 = v250;
            }

            if (a3)
            {
              v58 = *(v252 + v54 + 3);
            }

            else
            {
              v58 = (*(&v277 + v54) + *(v252 + 2));
            }

            if (v56 >= 3)
            {
LABEL_326:
              __break(1u);
LABEL_327:
              if (WebGPU::BindGroupLayout::s_heapRef)
              {
                v215 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v25);
              }

              else
              {
                v215 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
              }

              v216 = v215;
              WebGPU::BindGroupLayout::BindGroupLayout(v215, v250);
              *a4 = v216;

              goto LABEL_330;
            }

            v59 = &v263 + 8 * v56;
            *v59 = v58;
            v59[4] = 1;
            if (*(v252 + 11))
            {
              v60 = *v55;
              v61 = *(&v279 + v54);
              if (!*v55)
              {
                v60 = 1;
              }

              *v55 = v60;
              *(v55 - 1) = v61;
              *(&v279 + v54) = v61 + 4;
            }

            v62 = *(v252 + 10);
            if (v62)
            {
              v63 = *(&v275 + v54) + 1;
              *(&v275 + v54) = v63;
              v64 = &v261 + 8 * v56;
              *v64 = v63;
              v64[4] = 1;
              if (v62 == 1)
              {
                v65 = (*(&v292 + v56) + 1);
                *(&v292 + v56) = v65;
                v66 = *(v4 + 33);
                if (v65 > v66)
                {
                  v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Uniform buffers count(%u) exceeded max count per stage(%u)", v65, v66];
                  WebGPU::reportErrorInCreateBindGroupLayout(v122, a3, v4, v123);
                  goto LABEL_175;
                }
              }

              else if ((v62 & 0xFFFFFFFE) == 2)
              {
                v67 = (*(&v290 + v56) + 1);
                *(&v290 + v56) = v67;
                v68 = *(v4 + 31);
                if (v67 > v68)
                {
                  v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Storage buffers count(%u) exceeded max count per stage(%u)", v67, v68];
                  WebGPU::reportErrorInCreateBindGroupLayout(v122, a3, v4, v125);
LABEL_175:

                  if (WebGPU::BindGroupLayout::s_heapRef)
                  {
                    v127 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v126);
                  }

                  else
                  {
                    v127 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
                  }

                  v119 = v127;
                  WebGPU::BindGroupLayout::BindGroupLayout(v127, v250);
LABEL_178:
                  *a4 = v119;
                  v91 = 1;
                  v92 = v268;
                  v268 = 0;
                  if (v92)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_184;
                }
              }
            }

            if (*(v252 + 18))
            {
              v69 = (*(&v288 + v56) + 1);
              *(&v288 + v56) = v69;
              v70 = *(v4 + 30);
              if (v69 > v70)
              {
                v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler count(%u) exceeded max count per stage(%u)", v69, v70];
                WebGPU::reportErrorInCreateBindGroupLayout(v122, a3, v4, v120);
                goto LABEL_175;
              }
            }

            if (*(v252 + 28))
            {
              if (*(v252 + 29))
              {
                if (*(v252 + 30))
                {
                  v71 = (*(&v284 + v56) + 1);
                  *(&v284 + v56) = v71;
                  v72 = *(v4 + 32);
                  if (v71 > v72)
                  {
                    v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Storage texture count(%u) exceeded max count per stage(%u)", v71, v72];
                    WebGPU::reportErrorInCreateBindGroupLayout(v122, a3, v4, v124);
                    goto LABEL_175;
                  }
                }
              }
            }

            if (*(v252 + 22))
            {
              if (*(v252 + 23))
              {
                v73 = (*(&v286 + v56) + 1);
                *(&v286 + v56) = v73;
                v74 = *(v4 + 29);
                if (v73 > v74)
                {
                  v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture count(%u) exceeded max count per stage(%u)", v73, v74];
                  WebGPU::reportErrorInCreateBindGroupLayout(v122, a3, v4, v121);
                  goto LABEL_175;
                }
              }
            }

            v249 = location[0];
            if (v249)
            {
              v75 = v283[v56] <= v58 ? v58 : v283[v56];
              v283[v56] = v75;
              v248 = *(&v294 + v54);
              v76 = [v249 copy];
              [v76 setIndex:v58];
              [v248 addObject:v76];

              v77 = location[1];
              if (v77)
              {
                v78 = v77;
                if (v75 <= v58 + 1)
                {
                  v75 = v58 + 1;
                }

                v283[v56] = v75;
                v79 = v248;
                v80 = [v78 copy];
                [v80 setIndex:(v58 + 1)];
                [v79 addObject:v80];

                v81 = v270[0];
                if (v81)
                {
                  v82 = v81;
                  if (v75 <= v58 + 2)
                  {
                    v75 = v58 + 2;
                  }

                  v283[v56] = v75;
                  v83 = v79;
                  v84 = [v82 copy];
                  [v84 setIndex:(v58 + 2)];
                  [v83 addObject:v84];

                  v85 = v270[1];
                  if (v85)
                  {
                    v86 = v85;
                    if (v75 <= v58 + 3)
                    {
                      v87 = v58 + 3;
                    }

                    else
                    {
                      v87 = v75;
                    }

                    v283[v56] = v87;
                    v88 = v83;
                    v89 = [v86 copy];
                    [v89 setIndex:(v58 + 3)];
                    [v88 addObject:v89];
                  }
                }
              }
            }

            if (v246 == 2147483646)
            {
              *(&v277 + v54) += 3;
            }

            v4 = v250;
          }

          ++v54;
          v55 += 8;
          v53 += 0x100000000;
          if (v54 == 3)
          {
            goto LABEL_126;
          }
        }
      }

      if (*(v252 + 10) == 2147483644)
      {
        goto LABEL_127;
      }

      v258[0] = (*(v252 + 2) | 0x300000000);
      v90 = v46;
      v237 = v52;
      v236 = v50;
      v238 = v51;
      v260 = [v90 access];
      WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLBindingAccess>(&v298, &v297, v258, &v260);

LABEL_126:
      if (*(v252 + 10) == 2147483644)
      {
LABEL_127:
        v91 = 6;
        v92 = v268;
        v268 = 0;
        if (v92)
        {
          goto LABEL_179;
        }

        goto LABEL_184;
      }

      v93 = *(v252 + 2);
      v94 = *(v252 + 6);
      LODWORD(v258[0]) = v265;
      BYTE4(v258[0]) = BYTE4(v265);
      LODWORD(v258[1]) = v266;
      BYTE4(v258[1]) = BYTE4(v266);
      LODWORD(v259) = v267;
      BYTE4(v259) = BYTE4(v267);
      if (v93 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x225672260);
      }

      if (v93 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225672280);
      }

      v95 = v282;
      v96 = v93;
      if (!v282)
      {
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::BindGroupLayout::Entry,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::BindGroupLayout::Entry>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v282, 8u);
        v95 = v282;
        v96 = *(v252 + 2);
      }

      v97 = *(v95 - 8);
      v98 = 9 * ((v96 + ~(v96 << 15)) ^ ((v96 + ~(v96 << 15)) >> 10));
      v99 = (v98 ^ (v98 >> 6)) + ~((v98 ^ (v98 >> 6)) << 11);
      v100 = (v99 ^ HIWORD(v99)) & v97;
      v101 = v95 + 136 * v100;
      v102 = *v101;
      if (*v101 != -1)
      {
        v103 = 0;
        v104 = 1;
        while (v102 != v96)
        {
          if (v102 == -2)
          {
            v103 = v101;
          }

          v100 = (v100 + v104) & v97;
          v101 = v95 + 136 * v100;
          v102 = *v101;
          ++v104;
          if (*v101 == -1)
          {
            if (v103)
            {
              *v103 = -1;
              *(v103 + 8) = 0u;
              *(v103 + 24) = 0u;
              *(v103 + 40) = 0u;
              *(v103 + 56) = 0u;
              *(v103 + 72) = 0u;
              *(v103 + 88) = 0u;
              *(v103 + 104) = 0u;
              *(v103 + 120) = 0u;
              --*(v95 - 16);
              v96 = *(v252 + 2);
              v101 = v103;
            }

            goto LABEL_147;
          }
        }

        goto LABEL_168;
      }

LABEL_147:
      *v101 = v96;
      v300 = v263;
      v301 = v264;
      v303 = v262;
      v302 = v261;
      v304 = *v258;
      v305 = v259;
      *(v101 + 8) = v93;
      *(v101 + 12) = v94;
      *(v101 + 16) = v239;
      *(v101 + 32) = v236;
      *(v101 + 40) = v238;
      *(v101 + 48) = v237;
      v105 = v301;
      *(v101 + 56) = v300;
      *(v101 + 72) = v105;
      v106 = v302;
      *(v101 + 96) = v303;
      *(v101 + 80) = v106;
      v107 = v304;
      *(v101 + 120) = v305;
      *(v101 + 104) = v107;
      *(v101 + 128) = -1;
      v108 = *(v95 - 16);
      v109 = *(v95 - 12) + 1;
      *(v95 - 12) = v109;
      v110 = (v108 + v109);
      v111 = *(v95 - 4);
      if (v111 > 0x400)
      {
        if (v111 <= 2 * v110)
        {
          goto LABEL_166;
        }
      }

      else if (3 * v111 <= 4 * v110)
      {
        if (!v111)
        {
          v112 = 8;
          goto LABEL_167;
        }

LABEL_166:
        v112 = v111 << (6 * v109 >= (2 * v111));
LABEL_167:
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::BindGroupLayout::Entry>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::BindGroupLayout::Entry,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::BindGroupLayout::Entry>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v282, v112);
      }

LABEL_168:
      v91 = 0;
      v92 = v268;
      v268 = 0;
      if (v92)
      {
        goto LABEL_179;
      }

      goto LABEL_184;
    }

    v41 = *(v252 + 10);
    if (v41 == 2147483644)
    {
      v42 = *(v252 + 6);
      if (v42)
      {
        LODWORD(v258[0]) = v252[7];
        v43 = *(v252 + 5) | (v42 << 32);
        v265 = *(v252 + 12);
        v266 = v43;
        WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>(&v298, &v272, v258, &v265);
        v42 = *(v252 + 6);
      }

      if ((v42 & 2) != 0)
      {
        LODWORD(v258[0]) = v252[7];
        v44 = *(v252 + 5);
        v265 = *(v252 + 12);
        v266 = v44 | (v42 << 32);
        WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>(&v298, &v273, v258, &v265);
        v42 = *(v252 + 6);
      }

      if ((v42 & 4) != 0)
      {
        LODWORD(v258[0]) = v252[7];
        v45 = *(v252 + 5);
        v265 = *(v252 + 12);
        v266 = v45 | (v42 << 32);
        WTF::HashMap<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<std::pair<std::array<unsigned int,3ul>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int,std::pair<std::array<unsigned int,3ul>,unsigned int>>(&v298, &v274, v258, &v265);
      }

      goto LABEL_127;
    }

    v46 = location[0];
    if (v41)
    {
      if (location[0] || (WebGPU::createArgumentDescriptor((v252 + 4), *(v252 + 6)), v113 = objc_claimAutoreleasedReturnValue(), v114 = location[0], v46 = v113, location[0] = v113, v114, v4 = v250, !v46))
      {
        if ((a3 & 1) == 0)
        {
          WebGPU::Device::generateAValidationError(v4, &cfstr_BufferLayoutIs.isa);
        }

        if (WebGPU::BindGroupLayout::s_heapRef)
        {
          goto LABEL_161;
        }

        goto LABEL_205;
      }

      v239 = *(v252 + 2);
      v50 = v252[6];
      v51 = v252[7];
      if (*(v252 + 18))
      {
LABEL_130:
        if (v46)
        {
          goto LABEL_133;
        }

        if (v252[8])
        {
          location[0] = 0;
LABEL_133:
          if (WebGPU::BindGroupLayout::s_heapRef)
          {
            goto LABEL_161;
          }

          goto LABEL_205;
        }

        v46 = objc_opt_new();
        [v46 setDataType:59];
        [v46 setAccess:0];
        location[0] = v46;
        if (!v46)
        {
          goto LABEL_133;
        }

        v239 = *(v252 + 4);
        v52 = 1;
        v115 = v252;
        v116 = *(v252 + 22);
        if (!v116)
        {
          goto LABEL_192;
        }

        goto LABEL_154;
      }
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v239 = 0u;
      if (*(v252 + 18))
      {
        goto LABEL_130;
      }
    }

    v52 = 0;
    v115 = v252;
    v116 = *(v252 + 22);
    if (!v116)
    {
      goto LABEL_192;
    }

LABEL_154:
    v117 = *(v115 + 23);
    if (v117)
    {
      if (v46)
      {
        goto LABEL_158;
      }

      if (v252[10] || *(v252 + 24) && (v116 == 1 || v117 != 2))
      {
        location[0] = 0;
LABEL_158:
        if ((a3 & 1) == 0)
        {
          WebGPU::Device::generateAValidationError(v4, &cfstr_TextureLayoutN.isa);
        }

        if (WebGPU::BindGroupLayout::s_heapRef)
        {
LABEL_161:
          v118 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v25);
LABEL_162:
          v119 = v118;
          WebGPU::BindGroupLayout::BindGroupLayout(v118, v4);
          goto LABEL_178;
        }

LABEL_205:
        v118 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
        goto LABEL_162;
      }

      v46 = objc_opt_new();
      [v46 setDataType:58];
      [v46 setAccess:0];
      location[0] = v46;
      if (!v46)
      {
        goto LABEL_158;
      }

      v239 = *(v252 + 5);
      v50 = v252[12];
      v52 = 2;
    }

LABEL_192:
    v132 = *(v252 + 28);
    if (!v132)
    {
      goto LABEL_74;
    }

    v133 = *(v252 + 29);
    if (!v133)
    {
      goto LABEL_74;
    }

    v134 = *(v252 + 30);
    if (!v134)
    {
      goto LABEL_74;
    }

    if (!v46)
    {
      if (v252[13] || ((v132 != 2) & v252[3]) != 0 || (v134 & 0xFFFFFFFE) == 4 || !WebGPU::Texture::hasStorageBindingCapability(v133, v268, v132))
      {
        location[0] = 0;
      }

      else
      {
        v46 = objc_opt_new();
        [v46 setDataType:58];
        [v46 setAccess:1];
        location[0] = v46;
        if (v46)
        {
          v239 = *(v252 + 13);
          v50 = v252[15];
          v52 = 3;
          goto LABEL_75;
        }
      }
    }

    WebGPU::reportErrorInCreateBindGroupLayout(@"Storage texture layout not valid", a3, v4, v9);
    WebGPU::BindGroupLayout::createInvalid(a4, v4);
    v91 = 1;
    v92 = v268;
    v268 = 0;
    if (!v92)
    {
      goto LABEL_184;
    }

    do
    {
LABEL_179:
      v128 = *v92;
      if ((*v92 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v92, v25);
        goto LABEL_184;
      }

      v129 = *v92;
      atomic_compare_exchange_strong_explicit(v92, &v129, v128 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v129 != v128);
    if (v128 == 3)
    {
      WebGPU::Device::~Device(v92, v25);
      bmalloc::api::tzoneFree(v130, v131);
    }

LABEL_184:

    if (v91 != 6 && v91)
    {
      goto LABEL_228;
    }

    v23 = (v252 + 16);
    v4 = v250;
  }

  while (v252 + 16 != v245);
  v135 = v241;
  if (v279 || v280 || v281)
  {
    if (a3)
    {
      __break(0xC471u);
LABEL_394:
      JUMPOUT(0x2256721C0);
    }

    v218 = 0;
    v219 = v282;
    v220 = v243;
    do
    {
      if (*(v220 + 11))
      {
        v222 = *(v220 + 2);
        if (v222 == -2)
        {
          __break(0xC471u);
          JUMPOUT(0x2256722A8);
        }

        if (v222 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x2256722C8);
        }

        v223 = *(v219 - 8);
        v224 = 9 * ((v222 + ~(v222 << 15)) ^ ((v222 + ~(v222 << 15)) >> 10));
        v225 = (v224 ^ (v224 >> 6)) + ~((v224 ^ (v224 >> 6)) << 11);
        v226 = v223 & (v225 ^ HIWORD(v225));
        v221 = (v219 + 136 * v226);
        v227 = *v221;
        if (*v221 != v222)
        {
          v228 = 1;
          while (v227 != -1)
          {
            v226 = (v226 + v228) & v223;
            v221 = (v219 + 136 * v226);
            v227 = *v221;
            ++v228;
            if (*v221 == v222)
            {
              goto LABEL_339;
            }
          }

          v221 = (v219 + 136 * *(v219 - 4));
        }

LABEL_339:
        v221[32] = v218++;
      }

      v220 = (v220 + 128);
    }

    while (v220 != v245);
  }

LABEL_211:
  if (v135[1])
  {
    strlen(v135[1]);
  }

  WTF::String::fromUTF8();
  v149 = 0;
  v298 = 0uLL;
  *&v299 = 0;
  location[0] = 0;
  location[1] = 0;
  v270[0] = 0;
  while (2)
  {
    if (!*(&v275 + v149))
    {
      goto LABEL_282;
    }

    v150 = dword_225881D10[v149];
    v58 = objc_opt_new();
    [v58 setDataType:29];
    [v58 setAccess:0];
    if (v150 >= 3)
    {
      goto LABEL_326;
    }

    if (!v282)
    {
      v152 = 0;
      LODWORD(v151) = 0;
      goto LABEL_255;
    }

    v151 = *(v282 - 1);
    v152 = &v282[34 * v151];
    if (!*(v282 - 3))
    {
LABEL_255:
      v154 = v152;
      v152 = &v282[34 * v151];
      if (v282)
      {
LABEL_252:
        v155 = &v282[34 * *(v282 - 1)];
        if (v154 != v155)
        {
          goto LABEL_259;
        }

        goto LABEL_281;
      }

      v155 = 0;
      if (!v154)
      {
        goto LABEL_281;
      }

LABEL_259:
      v253 = v283[v150];
      while (1)
      {
        v156 = &v154[2 * v150];
        if (*(v156 + 84) != 1)
        {
          goto LABEL_278;
        }

        if (!a3)
        {
          break;
        }

        v157 = *(&v272 + v149);
        if (v157)
        {
          v158 = v154[2];
          if (v158 == -2)
          {
            __break(0xC471u);
            JUMPOUT(0x225672200);
          }

          if (v158 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x225672220);
          }

          v159 = *(v157 - 8);
          v160 = 9 * ((v158 + ~(v158 << 15)) ^ ((v158 + ~(v158 << 15)) >> 10));
          v161 = (v160 ^ (v160 >> 6)) + ~((v160 ^ (v160 >> 6)) << 11);
          v162 = v159 & (v161 ^ HIWORD(v161));
          v163 = (v157 + 20 * v162);
          v164 = *v163;
          if (*v163 == v158)
          {
LABEL_270:
            if (v163 != (v157 + 20 * *(v157 - 4)) && (v163[4] & (1 << v149)) != 0)
            {
              v166 = v163[v149 + 1];
              v156[20] = v166;
              *(v156 + 84) = 1;
              goto LABEL_273;
            }
          }

          else
          {
            v165 = 1;
            while (v164 != -1)
            {
              v162 = (v162 + v165) & v159;
              v163 = (v157 + 20 * v162);
              v164 = *v163;
              ++v165;
              if (*v163 == v158)
              {
                goto LABEL_270;
              }
            }
          }
        }

        *(v156 + 84) = 0;
        do
        {
LABEL_278:
          v154 += 34;
        }

        while (v154 != v152 && *v154 >= 0xFFFFFFFE);
        if (v154 == v155)
        {
          goto LABEL_281;
        }
      }

      v166 = v156[20] + v253;
      v156[20] = v166;
LABEL_273:
      v167 = *(&v294 + v149);
      v168 = [v58 copy];
      [v168 setIndex:v166];
      [v167 addObject:v168];

      goto LABEL_278;
    }

    if (v151)
    {
      v153 = 136 * v151;
      v154 = v282;
      while (*v154 >= 0xFFFFFFFE)
      {
        v154 += 34;
        v153 -= 136;
        if (!v153)
        {
          v154 = v152;
          goto LABEL_252;
        }
      }

      goto LABEL_252;
    }

LABEL_281:

LABEL_282:
    v169 = *(&v294 + v149);
    v58 = [v169 sortedArrayUsingComparator:&__block_literal_global_39];

    objc_storeStrong(&v298 + v149, v58);
    v170 = v169;
    if ([v170 count])
    {
      v171 = [*(v250 + 1) newArgumentEncoderWithArguments:v58];
      v172 = &location[v149];
      objc_storeStrong(v172, v171);
    }

    else
    {
      v172 = &location[v149];
      v171 = *v172;
      *v172 = 0;
    }

    v173 = v258[0];
    if (v258[0])
    {
      atomic_fetch_add_explicit(v258[0], 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v265, v173);
      if (atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v173, v174);
      }
    }

    else
    {
      v265 = &stru_2838D6D18;
    }

    v175 = v265;
    [*v172 setLabel:v175];

    v176 = v265;
    v265 = 0;

    v177 = v170;
    if ([v177 count])
    {
      v178 = *v172 == 0;

      if (v178)
      {
        goto LABEL_327;
      }
    }

    else
    {
    }

    if (++v149 != 3)
    {
      continue;
    }

    break;
  }

  v179 = 0;
  v265 = 0;
  v266 = 0;
  v267 = 0;
  while (2)
  {
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v180 = *(&v298 + v179);
    v58 = [v180 countByEnumeratingWithState:&v254 objects:v306 count:16];
    if (!v58)
    {
      goto LABEL_323;
    }

    v181 = *v255;
    while (2)
    {
      v182 = 0;
      while (2)
      {
        if (*v255 != v181)
        {
          objc_enumerationMutation(v180);
        }

        v183 = *(*(&v254 + 1) + 8 * v182);
        v184 = dword_225881D10[v179];
        if (v184 >= 3)
        {
          goto LABEL_326;
        }

        v185 = v183;
        v186 = [v183 index];
        v187 = v186;
        if (v186 == -2)
        {
          __break(0xC471u);
          JUMPOUT(0x2256721E0);
        }

        if (v186 == -1)
        {
          __break(0xC471u);
          goto LABEL_394;
        }

        v188 = (&v265 + v184);
        v189 = *v188;
        if (!*v188)
        {
          v190 = WTF::fastMalloc(0x30);
          *&v191 = -1;
          *(&v191 + 1) = -1;
          v190[1] = v191;
          v189 = (v190 + 1);
          v190[2] = v191;
          *v188 = (v190 + 1);
          *v190 = xmmword_225881CF0;
        }

        v192 = *(v189 - 8);
        v193 = 9 * ((~(v187 << 15) + v187) ^ ((~(v187 << 15) + v187) >> 10));
        v194 = (v193 ^ (v193 >> 6)) + ~((v193 ^ (v193 >> 6)) << 11);
        v195 = v192 & (v194 ^ HIWORD(v194));
        v196 = (v189 + 4 * v195);
        v197 = *v196;
        if (*v196 == -1)
        {
LABEL_313:
          *v196 = v187;
          v200 = *(v189 - 16);
          v201 = *(v189 - 12) + 1;
          *(v189 - 12) = v201;
          v202 = (v200 + v201);
          v203 = *(v189 - 4);
          if (v203 > 0x400)
          {
            if (v203 > 2 * v202)
            {
              goto LABEL_321;
            }
          }

          else if (3 * v203 > 4 * v202)
          {
            goto LABEL_321;
          }

          v204 = v203 << (6 * v201 >= (2 * v203));
          if (v203)
          {
            v205 = v204;
          }

          else
          {
            v205 = 8;
          }

          WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v188, v205, v196);
        }

        else
        {
          v198 = 0;
          v199 = 1;
          while (v197 != v187)
          {
            if (v197 == -2)
            {
              v198 = v196;
            }

            v195 = (v195 + v199) & v192;
            v196 = (v189 + 4 * v195);
            v197 = *v196;
            ++v199;
            if (*v196 == -1)
            {
              if (v198)
              {
                *v198 = -1;
                --*(v189 - 16);
                v196 = v198;
              }

              goto LABEL_313;
            }
          }
        }

LABEL_321:

        if (++v182 != v58)
        {
          continue;
        }

        break;
      }

      v58 = [v180 countByEnumeratingWithState:&v254 objects:v306 count:16];
      if (v58)
      {
        continue;
      }

      break;
    }

LABEL_323:

    if (++v179 != 3)
    {
      continue;
    }

    break;
  }

  v206 = *(v250 + 134);
  if (v206 == -1)
  {
    WebGPU::Device::loseTheDevice(v250, 0);
    if (WebGPU::BindGroupLayout::s_heapRef)
    {
      v233 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v232);
    }

    else
    {
      v233 = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
    }

    v234 = v233;
    WebGPU::BindGroupLayout::BindGroupLayout(v233, v250);
    *a4 = v234;
  }

  else
  {
    v207 = location[0];
    v208 = location[1];
    v209 = v270[0];
    v210 = v279;
    v211 = v280;
    v212 = v281;
    v213 = v206 + 1;
    *(v250 + 134) = v213;
    WebGPU::BindGroupLayout::create(a4, &v297, v207, v208, v209, &v282, v210, v211, v212, a3, &v292, &v290, &v288, &v286, &v284, v242, v240, &v265, v213, v250);
  }

  if (v267)
  {
    WTF::fastFree((v267 - 16), v214);
  }

  if (v266)
  {
    WTF::fastFree((v266 - 16), v214);
  }

  if (v265)
  {
    WTF::fastFree(&v265[-1].data, v214);
  }

LABEL_330:

  v217 = v258[0];
  v258[0] = 0;
  if (v217 && atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v217, v8);
  }

LABEL_228:
  if (v271)
  {
    WTF::fastFree((v271 - 16), v8);
  }

  if (v274)
  {
    WTF::fastFree((v274 - 16), v8);
  }

  if (v273)
  {
    WTF::fastFree((v273 - 16), v8);
  }

  if (v272)
  {
    WTF::fastFree((v272 - 16), v8);
  }

  if (v282)
  {
    WTF::fastFree((v282 - 4), v8);
  }

  if (v243)
  {
    WTF::fastFree(v243, v8);
  }

  if (v297)
  {
    WTF::fastFree((v297 - 16), v148);
  }
}

void sub_22567232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, WTF::StringImpl *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  std::array<WTF::RetainPtrArc<MTLArgumentDescriptor>,4ul>::~array(&a63);
  if (a68)
  {
    WTF::fastFree((a68 - 16), v70);
    WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray(&a69, v76);
    v72 = STACK[0x230];
    if (!STACK[0x230])
    {
LABEL_3:
      v73 = a30;
      if (!a30)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray(&a69, v70);
    v72 = STACK[0x230];
    if (!STACK[0x230])
    {
      goto LABEL_3;
    }
  }

  WTF::fastFree((v72 - 16), v71);
  v73 = a30;
  if (!a30)
  {
LABEL_4:
    std::array<WTF::RetainPtrArc<NSArray<MTLArgumentDescriptor *>>,3ul>::~array(&STACK[0x280]);
    v75 = STACK[0x298];
    if (!STACK[0x298])
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    WTF::fastFree((v75 - 16), v74);
    _Unwind_Resume(a1);
  }

LABEL_8:
  WTF::fastFree(v73, v71);
  std::array<WTF::RetainPtrArc<NSArray<MTLArgumentDescriptor *>>,3ul>::~array(&STACK[0x280]);
  v75 = STACK[0x298];
  if (!STACK[0x298])
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void WebGPU::BindGroupLayout::createInvalid(WebGPU::BindGroupLayout *this, const WebGPU::Device *a2)
{
  if (WebGPU::BindGroupLayout::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
  }

  v5 = NonCompact;
  WebGPU::BindGroupLayout::BindGroupLayout(NonCompact, a2);
  *this = v5;
}

void WebGPU::reportErrorInCreateBindGroupLayout(WebGPU *this, NSString *a2, WebGPU::Device *a3, WebGPU::Device *a4)
{
  v5 = a2;
  v6 = this;
  if ((v5 & 1) == 0)
  {
    WebGPU::Device::generateAValidationError(a3, v6);
  }
}

id WebGPU::createArgumentDescriptor(uint64_t a1, char a2)
{
  if (*a1)
  {
    v2 = 0;

    return v2;
  }

  v6 = objc_opt_new();
  v7 = v6;
  v8 = *(a1 + 8);
  if (v8 == 2147483645)
  {
    v9 = 14;
    goto LABEL_9;
  }

  if (v8 == 2147483646)
  {
    v9 = 10;
LABEL_9:
    [v6 setDataType:v9];
    v10 = 0;
LABEL_10:
    [v7 setAccess:v10];
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  [v6 setDataType:60];
  v10 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (v8 == 0x7FFFFFFF)
  {
LABEL_24:
    v11 = v7;
    v7 = 0;
    goto LABEL_12;
  }

  if (v8 == 3)
  {
    goto LABEL_10;
  }

  if (v8 != 2)
  {
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    v10 = 1;
    goto LABEL_10;
  }

  v11 = v7;
  v7 = 0;
LABEL_12:

  v2 = v7;

  return v2;
}

_OWORD *WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLBindingAccess>(_OWORD *result, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225672A8CLL);
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
  if (*v15 == -1)
  {
LABEL_13:
    v19 = *(v8 - 16);
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
        v25 = v8 + 16 * *(v8 - 4);
        *v7 = v15;
        *(v7 + 1) = v25;
        *(v7 + 16) = 0;
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
    if (!v17)
    {
      goto LABEL_13;
    }

    *v17 = xmmword_225881D00;
    v19 = *(v8 - 16) - 1;
    *(v8 - 16) = v19;
    v4 = *a3;
  }

  v20 = *a4;
  *v17 = v4;
  v17[1] = v20;
  v21 = *(v8 - 12) + 1;
  *(v8 - 12) = v21;
  v22 = (v21 + v19);
  v23 = *(v8 - 4);
  if (v23 <= 0x400)
  {
    if (3 * v23 > 4 * v22)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v23)
    {
      v24 = v23 << (6 * v21 >= (2 * v23));
    }

    else
    {
      v24 = 8;
    }

    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,MTLBindingAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,MTLBindingAccess>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,MTLBindingAccess,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<MTLBindingAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a2, v24, v17);
    v17 = result;
    v8 = *a2;
    if (*a2)
    {
      v23 = *(v8 - 4);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_25;
  }

  if (v23 <= 2 * v22)
  {
    goto LABEL_18;
  }

LABEL_25:
  *v7 = v17;
  *(v7 + 1) = v8 + 16 * v23;
  *(v7 + 16) = 1;
  return result;
}

uint64_t ___ZN6WebGPU6Device21createBindGroupLayoutERK29WGPUBindGroupLayoutDescriptorb_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 index];
  if (v6 >= [v5 index])
  {
    v8 = [v4 index];
    v7 = v8 != [v5 index];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void WebGPU::BindGroupLayout::create(uint64_t *a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, int a16, int a17, uint64_t *a18, int a19, atomic_ullong *a20)
{
  v25 = a3;
  v26 = a4;
  v28 = a5;
  v69 = a1;
  if (WebGPU::BindGroupLayout::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, v27);
  }

  else
  {
    NonCompact = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
  }

  v30 = NonCompact;
  v31 = v25;
  v32 = v26;
  v33 = v28;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v30 + 16) = 0;
  v34 = *a2;
  *a2 = 0;
  *(v30 + 16) = v34;
  v72 = v31;
  *(v30 + 24) = v72;
  v35 = v32;
  *(v30 + 32) = v35;
  v36 = v33;
  *(v30 + 48) = 0;
  v37 = *a6;
  *a6 = 0;
  *(v30 + 56) = 0;
  v38 = (v30 + 56);
  *(v30 + 40) = v36;
  *(v30 + 48) = v37;
  *(v30 + 64) = 0;
  *(v30 + 72) = 1;
  *(v30 + 80) = a7;
  *(v30 + 88) = a8;
  *(v30 + 96) = a9;
  while (1)
  {
    v39 = *a20;
    if ((*a20 & 1) == 0)
    {
      break;
    }

    v40 = *a20;
    atomic_compare_exchange_strong_explicit(a20, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v40 == v39)
    {
      goto LABEL_11;
    }
  }

  v41 = 0;
  v42 = *a20;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(*a20, &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    MEMORY[0x22AA683C0](v42);
  }

  ++*(v42 + 8);
  atomic_compare_exchange_strong_explicit(v42, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 != 1)
  {
    WTF::Lock::unlockSlow(v42);
  }

LABEL_11:
  *(v30 + 104) = a20;
  *(v30 + 112) = 0;
  *(v30 + 120) = a10;
  v44 = *a11;
  *(v30 + 132) = *(a11 + 2);
  *(v30 + 124) = v44;
  v45 = *a12;
  *(v30 + 144) = *(a12 + 2);
  *(v30 + 136) = v45;
  v46 = *a13;
  *(v30 + 156) = *(a13 + 2);
  *(v30 + 148) = v46;
  v47 = *a14;
  *(v30 + 168) = *(a14 + 2);
  *(v30 + 160) = v47;
  v48 = *a15;
  v49 = *(a15 + 2);
  *(v30 + 184) = 0;
  *(v30 + 180) = v49;
  *(v30 + 172) = v48;
  v50 = *a18;
  *a18 = 0;
  *(v30 + 184) = v50;
  *(v30 + 192) = 0;
  v51 = a18[1];
  a18[1] = 0;
  *(v30 + 192) = v51;
  *(v30 + 200) = 0;
  v52 = a18[2];
  a18[2] = 0;
  *(v30 + 200) = v52;
  *(v30 + 208) = a16;
  *(v30 + 212) = a17;
  *(v30 + 216) = a19;
  v53 = *(v30 + 48);
  if (!v53)
  {
    goto LABEL_36;
  }

  v54 = *(v53 - 12);
  if (*(v30 + 64) < v54)
  {
    if (v54 >> 29)
    {
      __break(0xC471u);
      return;
    }

    v55 = *v38;
    v56 = *(v30 + 68);
    v57 = WTF::fastMalloc((8 * v54));
    *(v30 + 64) = v54;
    *(v30 + 56) = v57;
    memcpy(v57, v55, 8 * v56);
    if (v55)
    {
      if (*v38 == v55)
      {
        *(v30 + 56) = 0;
        *(v30 + 64) = 0;
      }

      WTF::fastFree(v55, v58);
    }
  }

  v59 = *(v30 + 48);
  if (!v59 || !*(v59 - 12))
  {
    goto LABEL_36;
  }

  v60 = *(v59 - 4);
  if (v60)
  {
    v61 = 136 * v60;
    v62 = *(v30 + 48);
    while (*v62 >= 0xFFFFFFFE)
    {
      v62 += 34;
      v61 -= 136;
      if (!v61)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v62 = *(v30 + 48);
  }

  v63 = (v59 + 136 * v60);
  if (v62 != v63)
  {
    LODWORD(v64) = *(v30 + 68);
LABEL_28:
    v75[0] = v62 + 2;
    if (v64 == *(v30 + 64))
    {
      v65 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v30 + 56, v64 + 1, v75);
      v64 = *(v30 + 68);
      v66 = *(v30 + 56);
      *(v66 + 8 * v64) = *v65;
    }

    else
    {
      v66 = *v38;
      *(*v38 + v64) = v62 + 2;
    }

    LODWORD(v64) = v64 + 1;
    *(v30 + 68) = v64;
    while (1)
    {
      v62 += 34;
      if (v62 == v63)
      {
        break;
      }

      if (*v62 < 0xFFFFFFFE)
      {
        if (v62 != v63)
        {
          goto LABEL_28;
        }

        break;
      }
    }
  }

  else
  {
LABEL_36:
    v66 = *(v30 + 56);
    LODWORD(v64) = *(v30 + 68);
  }

  v73 = 0;
  v75[0] = &v74;
  v75[1] = &v73;
  v67 = 126 - 2 * __clz(v64);
  if (v64)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,false>(v66, (v66 + 8 * v64), v75, v68, 1);

  *v69 = v30;
}

void sub_225672F80(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  v28 = *v26;
  if (*v26)
  {
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    WTF::fastFree(v28, a2);
  }

  v29 = *(v23 + 48);
  if (v29)
  {
    WTF::fastFree((v29 - 16), a2);
  }

  v31 = *(v23 + 16);
  if (v31)
  {
    WTF::fastFree((v31 - 16), v30);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v23, v30);

  bmalloc::api::tzoneFree(v23, v32);
  _Unwind_Resume(a1);
}

id WebGPU::BindGroupLayout::errorValidatingDynamicOffsets(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = (*(a1 + 208) + *(a1 + 212));
  if (a3 == v5)
  {
    if (a3)
    {
      v6 = *(a4 + 72);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 104);
        v9 = *(v8 + 152);
        v10 = *(v8 + 156);
        v11 = *a5;
        while (1)
        {
          v12 = a2[v7];
          if (v11 <= v12)
          {
            v11 = a2[v7];
          }

          *a5 = v11;
          if (*(a4 + 84) <= v7)
          {
            break;
          }

          v13 = v6 + 32 * v7;
          v14 = *(v13 + 8);
          if (__CFADD__(v12, v14))
          {
            v15 = *(v13 + 16);
LABEL_28:
            v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamicBuffer(%zu): dynamicOffset(%u) + buffer->bindingSize(%llu) > buffer->bufferSize(%llu)", v7, v12, *(v13 + 8), v15];

            return v17;
          }

          v15 = *(v13 + 16);
          if (v12 + v14 > v15)
          {
            goto LABEL_28;
          }

          if (*v13 == 1)
          {
            v16 = v9;
          }

          else
          {
            v16 = v10;
          }

          if (v12 % v16)
          {
            v20 = "storage";
            if (*v13 == 1)
            {
              v20 = "uniform";
            }

            v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamicBuffer(%zu): dynamicOffset(%u) is not divisible by the %s buffer alignment(%u)", v7, v12, v20, v16];

            return v17;
          }

          if (a3 == ++v7)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0;
        v19 = *a2;
        if (*a5 > *a2)
        {
          v19 = *a5;
        }

        *a5 = v19;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamicBuffer(%zu) is nil", v7];
    }

    else
    {
LABEL_15:
      v17 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamicOffsetCount(%zu) in setBindGroupCall does not equal the dynamicBufferCount(%u) in bind group layout", a3, v5];
  }

  return v17;
}

uint64_t WebGPU::BindGroupLayout::equalBindingEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 255)
  {
    v3 = -1;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 == 2)
      {
        if (*(a2 + 32) == 2 && *(a2 + 16) == *(a1 + 16) && *(a2 + 8) == *(a1 + 8))
        {
          return *(a2 + 12) == *(a1 + 12);
        }

        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 == 3)
      {
        if (*(a2 + 32) == 3 && *(a2 + 12) == *(a1 + 12) && *(a2 + 8) == *(a1 + 8))
        {
          return *(a2 + 16) == *(a1 + 16);
        }

        return 0;
      }
    }

    else if (v2 == 4)
    {
      return *(a2 + 32) == 4;
    }

LABEL_34:
    mpark::throw_bad_variant_access(a1);
  }

  if (v3)
  {
    if (v2 == 1)
    {
      if (*(a2 + 32) == 1)
      {
        return *(a2 + 8) == *(a1 + 8);
      }

      return 0;
    }

    goto LABEL_34;
  }

  if (*(a1 + 32))
  {
    goto LABEL_34;
  }

  if (!*(a2 + 32))
  {
    v5 = *(a2 + 8);
    if (v5 > 3)
    {
      return 1;
    }

    v6 = *(a1 + 8);
    if (v6 > 3)
    {
      return 1;
    }

    if (v5 == v6 && *(a2 + 12) == *(a1 + 12) && *(a2 + 16) == *(a1 + 16))
    {
      return *(a2 + 24) == *(a1 + 24);
    }
  }

  return 0;
}

__CFString *WebGPU::BindGroupLayout::errorValidatingBindGroupCompatibility(WebGPU::BindGroupLayout *this, const WebGPU::BindGroupLayout *a2)
{
  v4 = *(this + 13);
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
LABEL_7:
      v10 = *(this + 54);
      v11 = *(a2 + 54);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
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
  v10 = *(this + 54);
  v11 = *(a2 + 54);
  if (v10)
  {
    v23 = v11 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    goto LABEL_25;
  }

LABEL_11:
  v13 = v4[62];
  if (v13)
  {
    v14 = v10 | (v11 << 32);
    if (v14 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x225673728);
    }

    if (v14 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x225673748);
    }

    v15 = *(v13 - 8);
    v16 = (v14 + ~(v10 << 32)) ^ ((v14 + ~(v10 << 32)) >> 22);
    v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
    v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
    v19 = v15 & ((v18 >> 31) ^ v18);
    v20 = *(v13 + 8 * v19);
    if (v20 == v14)
    {
LABEL_18:
      v22 = 0;
      goto LABEL_48;
    }

    v21 = 1;
    while (v20 != -1)
    {
      v19 = (v19 + v21) & v15;
      v20 = *(v13 + 8 * v19);
      ++v21;
      if (v20 == v14)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v24 = *(this + 14);
  if (v24)
  {
    v24 = *(v24 + 8);
  }

  v25 = *(a2 + 14);
  if (v25)
  {
    v25 = *(v25 + 8);
  }

  if (v24 != v25)
  {
    v22 = @"Auto-generated layouts mismatch";
    goto LABEL_48;
  }

  v26 = *(a2 + 17);
  if (!v26)
  {
    v27 = 0;
    v28 = *(this + 17);
    if (!v28)
    {
      goto LABEL_56;
    }

LABEL_46:
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"entries.size()(%zu) > otherEntries.size()(%zu)", v28, v26];
    if (!v27)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v26 >> 29)
  {
LABEL_62:
    __break(0xC471u);
    JUMPOUT(0x225673700);
  }

  v27 = WTF::fastMalloc((8 * v26));
  memcpy(v27, *(a2 + 7), 8 * *(a2 + 17));
  v28 = *(this + 17);
  if (v28 != v26)
  {
    goto LABEL_46;
  }

  v29 = 0;
  v22 = @"entries are not equal";
  do
  {
    if (v29 >= *(this + 17))
    {
      __break(0xC471u);
      JUMPOUT(0x225673708);
    }

    v30 = *(*(this + 7) + 8 * v29);
    v31 = *(v27 + v29);
    if (v30)
    {
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_62;
    }

    if (*v30 != *v31 || v30[1] != v31[1] || (WebGPU::BindGroupLayout::equalBindingEntries((v30 + 2), (v31 + 2)) & 1) == 0)
    {
      goto LABEL_47;
    }

    ++v29;
  }

  while (v28 != v29);
  LODWORD(v10) = *(this + 54);
  v11 = *(a2 + 54);
LABEL_56:
  v39 = v10 | (v11 << 32);
  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v4 + 62, &v39, v38);
  v22 = 0;
  if (v27)
  {
LABEL_47:
    WTF::fastFree(v27, a2);
    goto LABEL_48;
  }

  do
  {
LABEL_48:
    v33 = *v4;
    if ((*v4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, a2);
      goto LABEL_53;
    }

    v34 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v34, v33 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v34 != v33);
  if (v33 == 3)
  {
    WebGPU::Device::~Device(v4, a2);
    bmalloc::api::tzoneFree(v35, v36);
  }

LABEL_53:

  return v22;
}

void sub_225673754(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12)
{
  if (v12)
  {
    WTF::fastFree(v12, a2);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a12, v14);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a12, a2);
  _Unwind_Resume(a1);
}

unsigned int *WebGPU::BindGroupLayout::sortedEntries@<X0>(unsigned int *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[17];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  if (v2)
  {
    if (v2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = this;
      v5 = WTF::fastMalloc((8 * v2));
      *(a2 + 8) = v2;
      *a2 = v5;
      v6 = 8 * *(v4 + 68);
      v7 = *(v4 + 56);

      return memcpy(v5, v7, v6);
    }
  }

  return this;
}

double WebGPU::BindGroupLayout::BindGroupLayout(WebGPU::BindGroupLayout *this, atomic_ullong *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
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
  *(this + 13) = a2;
  *(this + 14) = 0;
  *(this + 120) = 0;
  result = 0.0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  return result;
}

void sub_2256738EC(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    WTF::fastFree((v7 - 16), v6);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v6);
  _Unwind_Resume(a1);
}

void WebGPU::BindGroupLayout::~BindGroupLayout(WebGPU::BindGroupLayout *this, WTF::StringImpl *a2)
{
  v3 = (this + 104);
  v4 = *(this + 13);
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
      goto LABEL_8;
    }
  }

  v7 = 0;
  v8 = *v4;
  v9 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v8);
  }

  ++*(v8 + 8);
  atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 == 1)
  {
LABEL_8:
    v10 = *(this + 54);
    if (!v10)
    {
      goto LABEL_40;
    }

    goto LABEL_9;
  }

  WTF::Lock::unlockSlow(v8);
  v10 = *(this + 54);
  if (!v10)
  {
    goto LABEL_40;
  }

LABEL_9:
  v11 = v4[62];
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = *(v11 - 4);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 8 * v12;
  v15 = v11 - 8;
  do
  {
    v16 = *(v15 + v14);
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && (v10 == v16 || HIDWORD(v16) == v10))
    {
      *(v15 + v14) = -2;
      ++v13;
    }

    v14 -= 8;
  }

  while (v14);
  if (v13)
  {
    v18 = *(v11 - 12) - v13;
    *(v11 - 16) += v13;
    *(v11 - 12) = v18;
    if (v12 < 9)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_23:
    v18 = *(v11 - 12);
    if (v12 < 9)
    {
      goto LABEL_40;
    }
  }

  if (6 * v18 >= v12)
  {
    goto LABEL_40;
  }

  if (v18 <= 1)
  {
    v19 = v18;
    v20 = 1;
    goto LABEL_29;
  }

  v21 = __clz(v18 - 1);
  if (!v21)
  {
    __break(1u);
LABEL_77:
    __break(0xC471u);
    return;
  }

  v20 = (1 << -v21);
  v19 = v18;
  if (v18 <= 0x400)
  {
LABEL_29:
    if (3 * v20 > 4 * v19)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v20 <= 2 * v18)
  {
LABEL_30:
    LODWORD(v20) = 2 * v20;
  }

LABEL_31:
  v22 = v18;
  v23 = v20;
  if (v20 <= 0x400)
  {
    if (v23 * 0.604166667 > v22)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 * 0.416666667 <= v22)
  {
LABEL_35:
    LODWORD(v20) = 2 * v20;
  }

LABEL_36:
  if (v20 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v20;
  }

  WTF::HashTable<unsigned long long,unsigned long long,WTF::IdentityExtractor,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v4 + 62, v24, 0);
  do
  {
LABEL_40:
    v25 = *v4;
    if ((*v4 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, a2);
      goto LABEL_45;
    }

    v26 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v26, v25 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v26 != v25);
  if (v25 == 3)
  {
    WebGPU::Device::~Device(v4, a2);
    bmalloc::api::tzoneFree(v27, v28);
  }

LABEL_45:
  v29 = *(this + 25);
  if (v29)
  {
    WTF::fastFree((v29 - 16), a2);
  }

  v30 = *(this + 24);
  if (v30)
  {
    WTF::fastFree((v30 - 16), a2);
  }

  v31 = *(this + 23);
  if (v31)
  {
    WTF::fastFree((v31 - 16), a2);
  }

  v32 = *(this + 14);
  *(this + 14) = 0;
  if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v32);
    WTF::fastFree(v32, a2);
    v33 = *v3;
    *v3 = 0;
    if (v33)
    {
      do
      {
LABEL_54:
        v34 = *v33;
        if ((*v33 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v33, a2);
          goto LABEL_59;
        }

        v35 = *v33;
        atomic_compare_exchange_strong_explicit(v33, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v35 != v34);
      if (v34 == 3)
      {
        WebGPU::Device::~Device(v33, a2);
        bmalloc::api::tzoneFree(v36, v37);
      }
    }
  }

  else
  {
    v33 = *v3;
    *v3 = 0;
    if (v33)
    {
      goto LABEL_54;
    }
  }

LABEL_59:
  v38 = *(this + 7);
  if (v38)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v38, a2);
  }

  v39 = *(this + 6);
  if (v39)
  {
    WTF::fastFree((v39 - 16), a2);
  }

  v41 = *(this + 2);
  if (v41)
  {
    WTF::fastFree((v41 - 16), v40);
  }

  if (*(this + 2) != 1)
  {
    goto LABEL_77;
  }

  v42 = *this;
  if (*this)
  {
    *(v42 + 8) = 0;
    *this = 0;
    if (atomic_fetch_add(v42, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v42);
      WTF::fastFree(v42, v40);
    }
  }
}

void sub_225673CE0(_Unwind_Exception *a1, void *a2)
{
  WTF::EnumeratedArray<WebGPU::ShaderStage,WTF::HashSet<unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,(WebGPU::ShaderStage)2>::~EnumeratedArray((v2 + 184), a2);
  v6 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(v3, v12);
    v8 = *(v2 + 56);
    if (!v8)
    {
LABEL_5:
      v9 = *(v2 + 48);
      if (v9)
      {
        WTF::fastFree((v9 - 16), v7);
      }

      v11 = *(v2 + 16);
      if (v11)
      {
        WTF::fastFree((v11 - 16), v10);
      }

      WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v10);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(v3, v5);
    v8 = *(v2 + 56);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  WTF::fastFree(v8, v7);
  goto LABEL_5;
}

uint64_t WebGPU::BindGroupLayout::bindingAccessForBindingIndex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 | (a3 << 32);
  if (v4 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225673E80);
  }

  v5 = *(v3 - 8);
  v6 = (v4 + ~(a2 << 32)) ^ ((v4 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != v4)
  {
    v11 = 1;
    while (v10 != -1)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v3 + 16 * v9);
      ++v11;
      if (v10 == v4)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v9 == *(v3 - 4))
  {
    return 0;
  }

  return *(v3 + 16 * v9 + 8);
}

uint64_t WebGPU::BindGroupLayout::argumentBufferIndexForEntryIndex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a3 == 3)
  {
    WebGPU::BindGroupLayout::bindingAccessForBindingIndex(a1, a2, a3);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 == -2)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x225673FD8);
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225673FF8);
  }

  v6 = *(v5 - 8);
  v7 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = v6 & (v8 ^ HIWORD(v8));
  v10 = (v5 + 136 * v9);
  v11 = *v10;
  if (*v10 != a2)
  {
    v12 = 1;
    while (v11 != -1)
    {
      v9 = (v9 + v12) & v6;
      v10 = (v5 + 136 * v9);
      v11 = *v10;
      ++v12;
      if (*v10 == a2)
      {
        goto LABEL_12;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  if (v10 == (v5 + 136 * *(v5 - 4)))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 >= 3)
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = *&v10[2 * a3 + 14];
  if ((v13 & 0x100000000) != 0)
  {
    return v13;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t WebGPU::BindGroupLayout::bufferSizeIndexForEntryIndex(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 == 3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x225674148);
  }

  v5 = *(v4 - 8);
  v6 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
  v8 = v5 & (v7 ^ HIWORD(v7));
  v9 = (v4 + 136 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10 != -1)
    {
      v8 = (v8 + v11) & v5;
      v9 = (v4 + 136 * v8);
      v10 = *v9;
      ++v11;
      if (*v9 == a2)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  if (v9 == (v4 + 136 * *(v4 - 4)))
  {
    return 0;
  }

  if (a3 >= 3)
  {
    __break(1u);
    goto LABEL_17;
  }

  return *&v9[2 * a3 + 20];
}

WebGPU::BindGroupLayout *wgpuBindGroupLayoutRelease(WebGPU::BindGroupLayout *result, WTF::StringImpl *a2)
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

WTF::StringImpl *wgpuBindGroupLayoutSetLabel(uint64_t a1, char *__s)
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

  [*(a1 + 24) setLabel:v10];
  [*(a1 + 32) setLabel:v10];
  [*(a1 + 40) setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*(a1 + 8) == 1)
  {
    WebGPU::BindGroupLayout::~BindGroupLayout(a1, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

void sub_2256742D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::BindGroupLayout *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>::~Ref(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>::~Ref(&a11, a2);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
LABEL_1:
  v8 = a2 - 8;
  v9 = a2 - 16;
  v10 = a2 - 24;
  for (i = a1; ; i[-3] = v560)
  {
LABEL_2:
    v880 = a5;
LABEL_3:
    a1 = i;
    v12 = (a2 - i) >> 7;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(v8->n128_u32 + **(a3 + 8)) >= *(i->n128_u32 + **(a3 + 8)))
        {
          return result;
        }

        goto LABEL_136;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v461 = i + 8;
      v576 = **(a3 + 8);
      v577 = *(i[8].n128_u32 + v576);
      v578 = *(i->n128_u32 + v576);
      v579 = *(v8->n128_u32 + v576);
      if (v577 < v578)
      {
        if (v579 >= v577)
        {
          v855 = *i;
          v856 = i[1];
          v857 = i[3];
          v892 = i[2];
          v893 = v857;
          v890 = v855;
          v891 = v856;
          v858 = i[4];
          v859 = i[5];
          v860 = i[7];
          v896 = i[6];
          v897 = v860;
          v894 = v858;
          v895 = v859;
          v861 = i[13];
          i[4] = i[12];
          i[5] = v861;
          v862 = i[15];
          i[6] = i[14];
          i[7] = v862;
          v863 = i[9];
          *i = *v461;
          i[1] = v863;
          v864 = i[11];
          i[2] = i[10];
          i[3] = v864;
          v865 = v890;
          v866 = v891;
          v867 = v893;
          i[10] = v892;
          i[11] = v867;
          *v461 = v865;
          i[9] = v866;
          result = v894;
          v868 = v895;
          v869 = v897;
          i[14] = v896;
          i[15] = v869;
          i[12] = result;
          i[13] = v868;
          if (*(v8->n128_u32 + **(a3 + 8)) >= *(v461->n128_u32 + **(a3 + 8)))
          {
            return result;
          }

          v870 = i[13];
          v894 = i[12];
          v895 = v870;
          v871 = i[15];
          v896 = i[14];
          v897 = v871;
          v872 = i[9];
          v890 = *v461;
          v891 = v872;
          v873 = i[11];
          v892 = i[10];
          v893 = v873;
          v874 = *v8;
          v875 = a2[-7];
          v876 = a2[-5];
          i[10] = a2[-6];
          i[11] = v876;
          *v461 = v874;
          i[9] = v875;
          v878 = a2[-2];
          v877 = a2[-1];
          v879 = a2[-3];
          i[12] = a2[-4];
          i[13] = v879;
          i[14] = v878;
          i[15] = v877;
LABEL_137:
          v592 = v890;
          v593 = v891;
          v594 = v893;
          a2[-6] = v892;
          a2[-5] = v594;
          *v8 = v592;
          a2[-7] = v593;
          result = v894;
          v595 = v895;
          v596 = v897;
          a2[-2] = v896;
          a2[-1] = v596;
          a2[-4] = result;
          a2[-3] = v595;
          return result;
        }

LABEL_136:
        v580 = *i;
        v581 = i[1];
        v582 = i[3];
        v892 = i[2];
        v893 = v582;
        v890 = v580;
        v891 = v581;
        v583 = i[4];
        v584 = i[5];
        v585 = i[7];
        v896 = i[6];
        v897 = v585;
        v894 = v583;
        v895 = v584;
        v586 = a2[-1];
        v588 = a2[-4];
        v587 = a2[-3];
        i[6] = a2[-2];
        i[7] = v586;
        i[4] = v588;
        i[5] = v587;
        v589 = *v8;
        v590 = a2[-7];
        v591 = a2[-5];
        i[2] = a2[-6];
        i[3] = v591;
        *i = v589;
        i[1] = v590;
        goto LABEL_137;
      }

      if (v579 >= v577)
      {
        return result;
      }

      v743 = i[13];
      v894 = i[12];
      v895 = v743;
      v744 = i[15];
      v896 = i[14];
      v897 = v744;
      v745 = i[9];
      v890 = *v461;
      v891 = v745;
      v746 = i[11];
      v892 = i[10];
      v893 = v746;
      v747 = *v8;
      v748 = a2[-7];
      v749 = a2[-5];
      i[10] = a2[-6];
      i[11] = v749;
      *v461 = v747;
      i[9] = v748;
      v751 = a2[-2];
      v750 = a2[-1];
      v752 = a2[-3];
      i[12] = a2[-4];
      i[13] = v752;
      i[14] = v751;
      i[15] = v750;
      v753 = v890;
      v754 = v891;
      v755 = v893;
      a2[-6] = v892;
      a2[-5] = v755;
      *v8 = v753;
      a2[-7] = v754;
      result = v894;
      v756 = v895;
      v757 = v897;
      a2[-2] = v896;
      a2[-1] = v757;
      a2[-4] = result;
      a2[-3] = v756;
LABEL_209:
      if (*(v461->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
      {
        v840 = *a1;
        v841 = a1[1];
        v842 = a1[3];
        v892 = a1[2];
        v893 = v842;
        v890 = v840;
        v891 = v841;
        v843 = a1[4];
        v844 = a1[5];
        v845 = a1[7];
        v896 = a1[6];
        v897 = v845;
        v894 = v843;
        v895 = v844;
        v846 = v461[5];
        a1[4] = v461[4];
        a1[5] = v846;
        v847 = v461[7];
        a1[6] = v461[6];
        a1[7] = v847;
        v848 = v461[1];
        *a1 = *v461;
        a1[1] = v848;
        v849 = v461[3];
        a1[2] = v461[2];
        a1[3] = v849;
        v850 = v890;
        v851 = v891;
        v852 = v893;
        v461[2] = v892;
        v461[3] = v852;
        *v461 = v850;
        v461[1] = v851;
        result = v894;
        v853 = v895;
        v854 = v897;
        v461[6] = v896;
        v461[7] = v854;
        v461[4] = result;
        v461[5] = v853;
      }

      return result;
    }

    if (v12 == 4)
    {
      v461 = i + 8;
      v562 = **(a3 + 8);
      v563 = *(i[8].n128_u32 + v562);
      n128_u64 = i[16].n128_u64;
      v564 = *(i->n128_u32 + v562);
      v565 = *(i[16].n128_u32 + v562);
      if (v563 >= v564)
      {
        if (v565 < v563)
        {
          v713 = i[13];
          v894 = i[12];
          v895 = v713;
          v714 = i[15];
          v896 = i[14];
          v897 = v714;
          v715 = i[9];
          v890 = *v461;
          v891 = v715;
          v716 = i[11];
          v892 = i[10];
          v893 = v716;
          v717 = *n128_u64;
          v718 = i[17];
          v719 = i[19];
          i[10] = i[18];
          i[11] = v719;
          *v461 = v717;
          i[9] = v718;
          v720 = i[20];
          v721 = i[21];
          v722 = i[23];
          i[14] = i[22];
          i[15] = v722;
          i[12] = v720;
          i[13] = v721;
          v723 = v890;
          v724 = v891;
          v725 = v893;
          i[18] = v892;
          i[19] = v725;
          *n128_u64 = v723;
          i[17] = v724;
          result = v894;
          v726 = v895;
          v727 = v897;
          i[22] = v896;
          i[23] = v727;
          i[20] = result;
          i[21] = v726;
          if (*(v461->n128_u32 + **(a3 + 8)) < *(i->n128_u32 + **(a3 + 8)))
          {
            v728 = *i;
            v729 = i[1];
            v730 = i[3];
            v892 = i[2];
            v893 = v730;
            v890 = v728;
            v891 = v729;
            v731 = i[4];
            v732 = i[5];
            v733 = i[7];
            v896 = i[6];
            v897 = v733;
            v894 = v731;
            v895 = v732;
            v734 = i[13];
            i[4] = i[12];
            i[5] = v734;
            v735 = i[15];
            i[6] = i[14];
            i[7] = v735;
            v736 = i[9];
            *i = *v461;
            i[1] = v736;
            v737 = i[11];
            i[2] = i[10];
            i[3] = v737;
            v738 = v890;
            v739 = v891;
            v740 = v893;
            i[10] = v892;
            i[11] = v740;
            *v461 = v738;
            i[9] = v739;
            result = v894;
            v741 = v895;
            v742 = v897;
            i[14] = v896;
            i[15] = v742;
            i[12] = result;
            i[13] = v741;
          }
        }
      }

      else
      {
        if (v565 < v563)
        {
          v566 = *i;
          v567 = i[1];
          v568 = i[3];
          v892 = i[2];
          v893 = v568;
          v890 = v566;
          v891 = v567;
          v569 = i[4];
          v570 = i[5];
          v571 = i[7];
          v896 = i[6];
          v897 = v571;
          v894 = v569;
          v895 = v570;
          v572 = i[21];
          i[4] = i[20];
          i[5] = v572;
          v573 = i[23];
          i[6] = i[22];
          i[7] = v573;
          v574 = i[17];
          *i = *n128_u64;
          i[1] = v574;
          v575 = i[19];
          i[2] = i[18];
          i[3] = v575;
          goto LABEL_205;
        }

LABEL_203:
        v780 = *a1;
        v781 = a1[1];
        v782 = a1[3];
        v892 = a1[2];
        v893 = v782;
        v890 = v780;
        v891 = v781;
        v783 = a1[4];
        v784 = a1[5];
        v785 = a1[7];
        v896 = a1[6];
        v897 = v785;
        v894 = v783;
        v895 = v784;
        v786 = v461[5];
        a1[4] = v461[4];
        a1[5] = v786;
        v787 = v461[7];
        a1[6] = v461[6];
        a1[7] = v787;
        v788 = v461[1];
        *a1 = *v461;
        a1[1] = v788;
        v789 = v461[3];
        a1[2] = v461[2];
        a1[3] = v789;
        v790 = v890;
        v791 = v891;
        v792 = v893;
        v461[2] = v892;
        v461[3] = v792;
        *v461 = v790;
        v461[1] = v791;
        result = v894;
        v793 = v895;
        v794 = v897;
        v461[6] = v896;
        v461[7] = v794;
        v461[4] = result;
        v461[5] = v793;
        if (*(n128_u64 + **(a3 + 8)) < *(v461->n128_u32 + **(a3 + 8)))
        {
          v795 = v461[5];
          v894 = v461[4];
          v895 = v795;
          v796 = v461[7];
          v896 = v461[6];
          v897 = v796;
          v797 = v461[1];
          v890 = *v461;
          v891 = v797;
          v798 = v461[3];
          v892 = v461[2];
          v893 = v798;
          v799 = *n128_u64;
          v800 = *(n128_u64 + 16);
          v801 = *(n128_u64 + 48);
          v461[2] = *(n128_u64 + 32);
          v461[3] = v801;
          *v461 = v799;
          v461[1] = v800;
          v802 = *(n128_u64 + 64);
          v803 = *(n128_u64 + 80);
          v804 = *(n128_u64 + 112);
          v461[6] = *(n128_u64 + 96);
          v461[7] = v804;
          v461[4] = v802;
          v461[5] = v803;
LABEL_205:
          v805 = v890;
          v806 = v891;
          v807 = v893;
          *(n128_u64 + 32) = v892;
          *(n128_u64 + 48) = v807;
          *n128_u64 = v805;
          *(n128_u64 + 16) = v806;
          result = v894;
          v808 = v895;
          v809 = v897;
          *(n128_u64 + 96) = v896;
          *(n128_u64 + 112) = v809;
          *(n128_u64 + 64) = result;
          *(n128_u64 + 80) = v808;
        }
      }

      if (*(v8->n128_u32 + **(a3 + 8)) >= *(n128_u64 + **(a3 + 8)))
      {
        return result;
      }

      v810 = *(n128_u64 + 80);
      v894 = *(n128_u64 + 64);
      v895 = v810;
      v811 = *(n128_u64 + 112);
      v896 = *(n128_u64 + 96);
      v897 = v811;
      v812 = *(n128_u64 + 16);
      v890 = *n128_u64;
      v891 = v812;
      v813 = *(n128_u64 + 48);
      v892 = *(n128_u64 + 32);
      v893 = v813;
      v814 = *v8;
      v815 = a2[-7];
      v816 = a2[-5];
      *(n128_u64 + 32) = a2[-6];
      *(n128_u64 + 48) = v816;
      *n128_u64 = v814;
      *(n128_u64 + 16) = v815;
      v818 = a2[-2];
      v817 = a2[-1];
      v819 = a2[-3];
      *(n128_u64 + 64) = a2[-4];
      *(n128_u64 + 80) = v819;
      *(n128_u64 + 96) = v818;
      *(n128_u64 + 112) = v817;
      v820 = v890;
      v821 = v891;
      v822 = v893;
      a2[-6] = v892;
      a2[-5] = v822;
      *v8 = v820;
      a2[-7] = v821;
      result = v894;
      v823 = v895;
      v824 = v897;
      a2[-2] = v896;
      a2[-1] = v824;
      a2[-4] = result;
      a2[-3] = v823;
      if (*(n128_u64 + **(a3 + 8)) >= *(v461->n128_u32 + **(a3 + 8)))
      {
        return result;
      }

      v825 = v461[5];
      v894 = v461[4];
      v895 = v825;
      v826 = v461[7];
      v896 = v461[6];
      v897 = v826;
      v827 = v461[1];
      v890 = *v461;
      v891 = v827;
      v828 = v461[3];
      v892 = v461[2];
      v893 = v828;
      v829 = *n128_u64;
      v830 = *(n128_u64 + 16);
      v831 = *(n128_u64 + 48);
      v461[2] = *(n128_u64 + 32);
      v461[3] = v831;
      *v461 = v829;
      v461[1] = v830;
      v832 = *(n128_u64 + 64);
      v833 = *(n128_u64 + 80);
      v834 = *(n128_u64 + 112);
      v461[6] = *(n128_u64 + 96);
      v461[7] = v834;
      v461[4] = v832;
      v461[5] = v833;
      v835 = v890;
      v836 = v891;
      v837 = v893;
      *(n128_u64 + 32) = v892;
      *(n128_u64 + 48) = v837;
      *n128_u64 = v835;
      *(n128_u64 + 16) = v836;
      result = v894;
      v838 = v895;
      v839 = v897;
      *(n128_u64 + 96) = v896;
      *(n128_u64 + 112) = v839;
      *(n128_u64 + 64) = result;
      *(n128_u64 + 80) = v838;
      goto LABEL_209;
    }

    if (v12 == 5)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v597 = i + 8;
      v599 = i == a2 || v597 == a2;
      if (a5)
      {
        if (v599)
        {
          return result;
        }

        v600 = 0;
        v601 = i;
        while (1)
        {
          v608 = **(a3 + 8);
          v609 = *(v601->n128_u32 + v608);
          v601 = v597;
          if (*(v597->n128_u32 + v608) < v609)
          {
            v610 = *v597;
            v611 = v597[1];
            v612 = v597[3];
            v892 = v597[2];
            v893 = v612;
            v890 = v610;
            v891 = v611;
            v613 = v597[4];
            v614 = v597[5];
            v615 = v597[7];
            v896 = v597[6];
            v897 = v615;
            v894 = v613;
            v895 = v614;
            v616 = v600;
            do
            {
              v617 = (i->n128_u64 + v616);
              v618 = *(&i[5] + v616);
              v617[12] = *(&i[4] + v616);
              v617[13] = v618;
              v619 = *(&i[7] + v616);
              v617[14] = *(&i[6] + v616);
              v617[15] = v619;
              v620 = *(&i[1] + v616);
              v617[8] = *(i + v616);
              v617[9] = v620;
              v621 = *(&i[3] + v616);
              v617[10] = *(&i[2] + v616);
              v617[11] = v621;
              if (!v616)
              {
                v602 = i;
                goto LABEL_148;
              }

              v616 -= 128;
            }

            while (*(v890.n128_u32 + **(a3 + 8)) < *(v617 + **(a3 + 8) - 128));
            v602 = &i[8] + v616;
LABEL_148:
            v603 = v890;
            v604 = v891;
            v605 = v893;
            *(v602 + 32) = v892;
            *(v602 + 48) = v605;
            *v602 = v603;
            *(v602 + 16) = v604;
            result = v894;
            v606 = v895;
            v607 = v897;
            *(v602 + 96) = v896;
            *(v602 + 112) = v607;
            *(v602 + 64) = result;
            *(v602 + 80) = v606;
          }

          v597 = v601 + 8;
          v600 += 128;
          if (&v601[8] == a2)
          {
            return result;
          }
        }
      }

      if (v599)
      {
        return result;
      }

      v758 = 0;
      v461 = i - 8;
      n128_u64 = -128;
      v759 = 128;
      while (1)
      {
        v765 = i + v758;
        v758 = v759;
        if (*(v597->n128_u32 + **(a3 + 8)) < *&v765[**(a3 + 8)])
        {
          v766 = *v597;
          v767 = v597[1];
          v768 = v597[3];
          v892 = v597[2];
          v893 = v768;
          v890 = v766;
          v891 = v767;
          v769 = v597[4];
          v770 = v597[5];
          v771 = v597[7];
          v896 = v597[6];
          v897 = v771;
          v894 = v769;
          v895 = v770;
          v772 = n128_u64;
          v773 = v461;
          do
          {
            v774 = v773[13];
            v773[20] = v773[12];
            v773[21] = v774;
            v775 = v773[15];
            v773[22] = v773[14];
            v773[23] = v775;
            v776 = v773[9];
            v773[16] = v773[8];
            v773[17] = v776;
            v777 = v773[11];
            v773[18] = v773[10];
            v773[19] = v777;
            if (!v772)
            {
              goto LABEL_202;
            }

            v778 = **(a3 + 8);
            v779 = *(v890.n128_u32 + v778);
            LODWORD(v778) = *(v773->n128_u32 + v778);
            v773 -= 8;
            v772 += 128;
          }

          while (v779 < v778);
          v760 = v890;
          v761 = v891;
          v762 = v893;
          v773[18] = v892;
          v773[19] = v762;
          v773[16] = v760;
          v773[17] = v761;
          result = v894;
          v763 = v895;
          v764 = v897;
          v773[22] = v896;
          v773[23] = v764;
          v773[20] = result;
          v773[21] = v763;
        }

        v759 = v758 + 128;
        v597 = (i + v758 + 128);
        v461 += 8;
        n128_u64 -= 128;
        if (v597 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (i == a2)
      {
        return result;
      }

      v622 = (v12 - 2) >> 1;
      v623 = v622;
      while (1)
      {
        if (v622 >= v623)
        {
          v631 = (2 * (v623 & 0x1FFFFFFFFFFFFFFLL)) | 1;
          v632 = &i[8 * v631];
          if (2 * (v623 & 0x1FFFFFFFFFFFFFFLL) + 2 < v12)
          {
            v633 = **(a3 + 8);
            if (*(v632->n128_u32 + v633) < *(v632[8].n128_u32 + v633))
            {
              v632 += 8;
              v631 = 2 * (v623 & 0x1FFFFFFFFFFFFFFLL) + 2;
            }

            v634 = &i[8 * v623];
            if (*(v632->n128_u32 + v633) < *(v634->n128_u32 + v633))
            {
              goto LABEL_158;
            }

LABEL_166:
            v635 = *v634;
            v636 = v634[1];
            v637 = v634[3];
            v892 = v634[2];
            v893 = v637;
            v890 = v635;
            v891 = v636;
            v638 = v634[4];
            v639 = v634[5];
            v640 = v634[7];
            v896 = v634[6];
            v897 = v640;
            v894 = v638;
            v895 = v639;
            do
            {
              v643 = v632;
              v644 = *v632;
              v645 = v632[1];
              v646 = v632[3];
              v634[2] = v632[2];
              v634[3] = v646;
              *v634 = v644;
              v634[1] = v645;
              v647 = v632[4];
              v648 = v632[5];
              v649 = v632[7];
              v634[6] = v632[6];
              v634[7] = v649;
              v634[4] = v647;
              v634[5] = v648;
              if (v622 < v631)
              {
                break;
              }

              v650 = (2 * (v631 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v632 = &i[8 * v650];
              v651 = 2 * v631 + 2;
              v652 = **(a3 + 8);
              if (v651 < v12 && *(v632->n128_u32 + v652) < *(v632[8].n128_u32 + v652))
              {
                v632 += 8;
                v650 = v651;
              }

              v641 = *(v632->n128_u32 + v652);
              v642 = *(v890.n128_u32 + v652);
              v634 = v643;
              v631 = v650;
            }

            while (v641 >= v642);
            v624 = v890;
            v625 = v891;
            v626 = v893;
            v643[2] = v892;
            v643[3] = v626;
            *v643 = v624;
            v643[1] = v625;
            v627 = v894;
            v628 = v895;
            v629 = v897;
            v643[6] = v896;
            v643[7] = v629;
            v643[4] = v627;
            v643[5] = v628;
            goto LABEL_158;
          }

          v634 = &i[8 * v623];
          if (*(v632->n128_u32 + **(a3 + 8)) >= *(v634->n128_u32 + **(a3 + 8)))
          {
            goto LABEL_166;
          }
        }

LABEL_158:
        v630 = v623-- <= 0;
        if (v630)
        {
          do
          {
            v658 = 0;
            v659 = *i;
            v660 = i[1];
            v661 = i[3];
            v884 = i[2];
            v885 = v661;
            v882 = v659;
            v883 = v660;
            v662 = i[4];
            v663 = i[5];
            v664 = i[7];
            v888 = i[6];
            v889 = v664;
            v886 = v662;
            v887 = v663;
            v665 = i;
            do
            {
              v672 = &v665[8 * v658];
              v673 = v672 + 8;
              v674 = (2 * v658) | 1;
              v675 = 2 * v658 + 2;
              if (v675 < v12)
              {
                v676 = v672 + 16;
                if (*(v673->n128_u32 + **(a3 + 8)) < *(v676->n128_u32 + **(a3 + 8)))
                {
                  v673 = v676;
                  v674 = v675;
                }
              }

              v666 = *v673;
              v667 = v673[1];
              v668 = v673[3];
              v665[2] = v673[2];
              v665[3] = v668;
              *v665 = v666;
              v665[1] = v667;
              v669 = v673[4];
              v670 = v673[5];
              v671 = v673[7];
              v665[6] = v673[6];
              v665[7] = v671;
              v665[4] = v669;
              v665[5] = v670;
              v665 = v673;
              v658 = v674;
            }

            while (v674 <= ((v12 - 2) >> 1));
            a2 -= 8;
            if (v673 == a2)
            {
              v653 = v882;
              v654 = v883;
              v655 = v885;
              v673[2] = v884;
              v673[3] = v655;
              *v673 = v653;
              v673[1] = v654;
              result = v886;
              v656 = v887;
              v657 = v889;
              v673[6] = v888;
              v673[7] = v657;
              v673[4] = result;
              v673[5] = v656;
            }

            else
            {
              v677 = *a2;
              v678 = a2[1];
              v679 = a2[3];
              v673[2] = a2[2];
              v673[3] = v679;
              *v673 = v677;
              v673[1] = v678;
              v680 = a2[4];
              v681 = a2[5];
              v682 = a2[7];
              v673[6] = a2[6];
              v673[7] = v682;
              v673[4] = v680;
              v673[5] = v681;
              v683 = v889;
              v685 = v886;
              v684 = v887;
              a2[6] = v888;
              a2[7] = v683;
              a2[4] = v685;
              a2[5] = v684;
              result = v882;
              v686 = v883;
              v687 = v885;
              a2[2] = v884;
              a2[3] = v687;
              *a2 = result;
              a2[1] = v686;
              v688 = (v673 - i + 128) >> 7;
              v630 = v688 < 2;
              v689 = v688 - 2;
              if (!v630)
              {
                v690 = v689 >> 1;
                v691 = &i[8 * v690];
                if (*(v691->n128_u32 + **(a3 + 8)) < *(v673->n128_u32 + **(a3 + 8)))
                {
                  v692 = *v673;
                  v693 = v673[1];
                  v694 = v673[3];
                  v892 = v673[2];
                  v893 = v694;
                  v890 = v692;
                  v891 = v693;
                  v695 = v673[4];
                  v696 = v673[5];
                  v697 = v673[7];
                  v896 = v673[6];
                  v897 = v697;
                  v894 = v695;
                  v895 = v696;
                  do
                  {
                    v698 = v691;
                    v699 = *v691;
                    v700 = v691[1];
                    v701 = v691[3];
                    v673[2] = v691[2];
                    v673[3] = v701;
                    *v673 = v699;
                    v673[1] = v700;
                    v702 = v691[4];
                    v703 = v691[5];
                    v704 = v691[7];
                    v673[6] = v691[6];
                    v673[7] = v704;
                    v673[4] = v702;
                    v673[5] = v703;
                    if (!v690)
                    {
                      break;
                    }

                    v690 = (v690 - 1) >> 1;
                    v691 = &i[8 * v690];
                    v705 = **(a3 + 8);
                    v706 = *(v691->n128_u32 + v705);
                    v707 = *(v890.n128_u32 + v705);
                    v673 = v698;
                  }

                  while (v706 < v707);
                  v708 = v890;
                  v709 = v891;
                  v710 = v893;
                  v698[2] = v892;
                  v698[3] = v710;
                  *v698 = v708;
                  v698[1] = v709;
                  result = v894;
                  v711 = v895;
                  v712 = v897;
                  v698[6] = v896;
                  v698[7] = v712;
                  v698[4] = result;
                  v698[5] = v711;
                }
              }
            }

            v630 = v12-- <= 2;
          }

          while (!v630);
          return result;
        }
      }
    }

    v13 = &i[8 * (v12 >> 1)];
    v14 = **(a3 + 8);
    v15 = *(v8->n128_u32 + v14);
    if (v12 < 0x81)
    {
      n128_u64 = *(i->n128_u32 + v14);
      if (n128_u64 >= *(v13->n128_u32 + v14))
      {
        if (v15 < n128_u64)
        {
          v78 = *i;
          v79 = i[1];
          v80 = i[3];
          v892 = i[2];
          v893 = v80;
          v890 = v78;
          v891 = v79;
          v81 = i[4];
          v82 = i[5];
          v83 = i[7];
          v896 = i[6];
          v897 = v83;
          v894 = v81;
          v895 = v82;
          v84 = a2[-1];
          v86 = a2[-4];
          v85 = a2[-3];
          i[6] = a2[-2];
          i[7] = v84;
          i[4] = v86;
          i[5] = v85;
          v87 = *v8;
          v88 = a2[-7];
          v89 = a2[-5];
          i[2] = a2[-6];
          i[3] = v89;
          *i = v87;
          i[1] = v88;
          v90 = v890;
          v91 = v891;
          v92 = v893;
          a2[-6] = v892;
          a2[-5] = v92;
          *v8 = v90;
          a2[-7] = v91;
          v93 = v894;
          v94 = v895;
          v95 = v897;
          a2[-2] = v896;
          a2[-1] = v95;
          a2[-4] = v93;
          a2[-3] = v94;
          v96 = **(a3 + 8);
          v97 = *(i->n128_u32 + v96);
          n128_u64 = *(v13->n128_u32 + v96);
          if (v97 < n128_u64)
          {
            v98 = *v13;
            v99 = v13[1];
            v100 = v13[3];
            v892 = v13[2];
            v893 = v100;
            v890 = v98;
            v891 = v99;
            v101 = v13[4];
            v102 = v13[5];
            v103 = v13[7];
            v896 = v13[6];
            v897 = v103;
            v894 = v101;
            v895 = v102;
            v104 = i[7];
            v106 = i[4];
            v105 = i[5];
            v13[6] = i[6];
            v13[7] = v104;
            v13[4] = v106;
            v13[5] = v105;
            v107 = *i;
            v108 = i[1];
            v109 = i[3];
            v13[2] = i[2];
            v13[3] = v109;
            *v13 = v107;
            v13[1] = v108;
            v110 = v890;
            v111 = v891;
            v112 = v893;
            i[2] = v892;
            i[3] = v112;
            *i = v110;
            i[1] = v111;
            v113 = v894;
            v114 = v895;
            v115 = v897;
            i[6] = v896;
            i[7] = v115;
            i[4] = v113;
            i[5] = v114;
            --a4;
            if (a5)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        goto LABEL_38;
      }

      if (v15 >= n128_u64)
      {
        v201 = *v13;
        v202 = v13[1];
        v203 = v13[3];
        v892 = v13[2];
        v893 = v203;
        v890 = v201;
        v891 = v202;
        v204 = v13[4];
        v205 = v13[5];
        v206 = v13[7];
        v896 = v13[6];
        v897 = v206;
        v894 = v204;
        v895 = v205;
        v207 = i[7];
        v209 = i[4];
        v208 = i[5];
        v13[6] = i[6];
        v13[7] = v207;
        v13[4] = v209;
        v13[5] = v208;
        v210 = *i;
        v211 = i[1];
        v212 = i[3];
        v13[2] = i[2];
        v13[3] = v212;
        *v13 = v210;
        v13[1] = v211;
        v213 = v890;
        v214 = v891;
        v215 = v893;
        i[2] = v892;
        i[3] = v215;
        *i = v213;
        i[1] = v214;
        v216 = v894;
        v217 = v895;
        v218 = v897;
        i[6] = v896;
        i[7] = v218;
        i[4] = v216;
        i[5] = v217;
        v219 = **(a3 + 8);
        n128_u64 = *(v8->n128_u32 + v219);
        if (n128_u64 >= *(i->n128_u32 + v219))
        {
          goto LABEL_38;
        }

        v220 = *i;
        v221 = i[1];
        v222 = i[3];
        v892 = i[2];
        v893 = v222;
        v890 = v220;
        v891 = v221;
        v223 = i[4];
        v224 = i[5];
        v225 = i[7];
        v896 = i[6];
        v897 = v225;
        v894 = v223;
        v895 = v224;
        v226 = a2[-1];
        v228 = a2[-4];
        v227 = a2[-3];
        i[6] = a2[-2];
        i[7] = v226;
        i[4] = v228;
        i[5] = v227;
        v229 = *v8;
        v230 = a2[-7];
        v231 = a2[-5];
        i[2] = a2[-6];
        i[3] = v231;
        *i = v229;
        i[1] = v230;
      }

      else
      {
        v30 = *v13;
        v31 = v13[1];
        v32 = v13[3];
        v892 = v13[2];
        v893 = v32;
        v890 = v30;
        v891 = v31;
        v33 = v13[4];
        v34 = v13[5];
        v35 = v13[7];
        v896 = v13[6];
        v897 = v35;
        v894 = v33;
        v895 = v34;
        v36 = a2[-1];
        v38 = a2[-4];
        v37 = a2[-3];
        v13[6] = a2[-2];
        v13[7] = v36;
        v13[4] = v38;
        v13[5] = v37;
        v39 = *v8;
        v40 = a2[-7];
        v41 = a2[-5];
        v13[2] = a2[-6];
        v13[3] = v41;
        *v13 = v39;
        v13[1] = v40;
      }

      v232 = v890;
      v233 = v891;
      v234 = v893;
      a2[-6] = v892;
      a2[-5] = v234;
      *v8 = v232;
      a2[-7] = v233;
      v235 = v894;
      v236 = v895;
      v237 = v897;
      a2[-2] = v896;
      a2[-1] = v237;
      a2[-4] = v235;
      a2[-3] = v236;
LABEL_38:
      --a4;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v16 = *(v13->n128_u32 + v14);
    if (v16 >= *(i->n128_u32 + v14))
    {
      if (v15 < v16)
      {
        v42 = *v13;
        v43 = v13[1];
        v44 = v13[3];
        v892 = v13[2];
        v893 = v44;
        v890 = v42;
        v891 = v43;
        v45 = v13[4];
        v46 = v13[5];
        v47 = v13[7];
        v896 = v13[6];
        v897 = v47;
        v894 = v45;
        v895 = v46;
        v48 = a2[-1];
        v50 = a2[-4];
        v49 = a2[-3];
        v13[6] = a2[-2];
        v13[7] = v48;
        v13[4] = v50;
        v13[5] = v49;
        v51 = *v8;
        v52 = a2[-7];
        v53 = a2[-5];
        v13[2] = a2[-6];
        v13[3] = v53;
        *v13 = v51;
        v13[1] = v52;
        v54 = v890;
        v55 = v891;
        v56 = v893;
        a2[-6] = v892;
        a2[-5] = v56;
        *v8 = v54;
        a2[-7] = v55;
        v57 = v894;
        v58 = v895;
        v59 = v897;
        a2[-2] = v896;
        a2[-1] = v59;
        a2[-4] = v57;
        a2[-3] = v58;
        if (*(v13->n128_u32 + **(a3 + 8)) < *(i->n128_u32 + **(a3 + 8)))
        {
          v60 = *i;
          v61 = i[1];
          v62 = i[3];
          v892 = i[2];
          v893 = v62;
          v890 = v60;
          v891 = v61;
          v63 = i[4];
          v64 = i[5];
          v65 = i[7];
          v896 = i[6];
          v897 = v65;
          v894 = v63;
          v895 = v64;
          v66 = v13[7];
          v68 = v13[4];
          v67 = v13[5];
          i[6] = v13[6];
          i[7] = v66;
          i[4] = v68;
          i[5] = v67;
          v69 = *v13;
          v70 = v13[1];
          v71 = v13[3];
          i[2] = v13[2];
          i[3] = v71;
          *i = v69;
          i[1] = v70;
          v72 = v890;
          v73 = v891;
          v74 = v893;
          v13[2] = v892;
          v13[3] = v74;
          *v13 = v72;
          v13[1] = v73;
          v75 = v894;
          v76 = v895;
          v77 = v897;
          v13[6] = v896;
          v13[7] = v77;
          v13[4] = v75;
          v13[5] = v76;
        }
      }
    }

    else
    {
      if (v15 >= v16)
      {
        v116 = *i;
        v117 = i[1];
        v118 = i[3];
        v892 = i[2];
        v893 = v118;
        v890 = v116;
        v891 = v117;
        v119 = i[4];
        v120 = i[5];
        v121 = i[7];
        v896 = i[6];
        v897 = v121;
        v894 = v119;
        v895 = v120;
        v122 = v13[7];
        v124 = v13[4];
        v123 = v13[5];
        i[6] = v13[6];
        i[7] = v122;
        i[4] = v124;
        i[5] = v123;
        v125 = *v13;
        v126 = v13[1];
        v127 = v13[3];
        i[2] = v13[2];
        i[3] = v127;
        *i = v125;
        i[1] = v126;
        v128 = v890;
        v129 = v891;
        v130 = v893;
        v13[2] = v892;
        v13[3] = v130;
        *v13 = v128;
        v13[1] = v129;
        v131 = v894;
        v132 = v895;
        v133 = v897;
        v13[6] = v896;
        v13[7] = v133;
        v13[4] = v131;
        v13[5] = v132;
        if (*(v8->n128_u32 + **(a3 + 8)) >= *(v13->n128_u32 + **(a3 + 8)))
        {
          goto LABEL_29;
        }

        v134 = *v13;
        v135 = v13[1];
        v136 = v13[3];
        v892 = v13[2];
        v893 = v136;
        v890 = v134;
        v891 = v135;
        v137 = v13[4];
        v138 = v13[5];
        v139 = v13[7];
        v896 = v13[6];
        v897 = v139;
        v894 = v137;
        v895 = v138;
        v140 = a2[-1];
        v142 = a2[-4];
        v141 = a2[-3];
        v13[6] = a2[-2];
        v13[7] = v140;
        v13[4] = v142;
        v13[5] = v141;
        v143 = *v8;
        v144 = a2[-7];
        v145 = a2[-5];
        v13[2] = a2[-6];
        v13[3] = v145;
        *v13 = v143;
        v13[1] = v144;
      }

      else
      {
        v17 = *i;
        v18 = i[1];
        v19 = i[3];
        v892 = i[2];
        v893 = v19;
        v890 = v17;
        v891 = v18;
        v20 = i[4];
        v21 = i[5];
        v22 = i[7];
        v896 = i[6];
        v897 = v22;
        v894 = v20;
        v895 = v21;
        v23 = a2[-1];
        v25 = a2[-4];
        v24 = a2[-3];
        i[6] = a2[-2];
        i[7] = v23;
        i[4] = v25;
        i[5] = v24;
        v26 = *v8;
        v27 = a2[-7];
        v28 = a2[-5];
        i[2] = a2[-6];
        i[3] = v28;
        *i = v26;
        i[1] = v27;
      }

      v146 = v890;
      v147 = v891;
      v148 = v893;
      a2[-6] = v892;
      a2[-5] = v148;
      *v8 = v146;
      a2[-7] = v147;
      v149 = v894;
      v150 = v895;
      v151 = v897;
      a2[-2] = v896;
      a2[-1] = v151;
      a2[-4] = v149;
      a2[-3] = v150;
    }

LABEL_29:
    n128_u64 = v13[-8].n128_u64;
    v152 = **(a3 + 8);
    v153 = *(v13[-8].n128_u32 + v152);
    v154 = i + 8;
    v155 = *(i[8].n128_u32 + v152);
    v156 = *(v9->n128_u32 + v152);
    if (v153 >= v155)
    {
      if (v156 < v153)
      {
        v167 = *n128_u64;
        v168 = v13[-7];
        v169 = v13[-5];
        v892 = v13[-6];
        v893 = v169;
        v890 = v167;
        v891 = v168;
        v170 = v13[-4];
        v171 = v13[-3];
        v172 = v13[-1];
        v896 = v13[-2];
        v897 = v172;
        v894 = v170;
        v895 = v171;
        v173 = a2[-9];
        v175 = a2[-12];
        v174 = a2[-11];
        v13[-2] = a2[-10];
        v13[-1] = v173;
        v13[-4] = v175;
        v13[-3] = v174;
        v176 = *v9;
        v177 = a2[-15];
        v178 = a2[-13];
        v13[-6] = a2[-14];
        v13[-5] = v178;
        *n128_u64 = v176;
        v13[-7] = v177;
        v179 = v890;
        v180 = v891;
        v181 = v893;
        a2[-14] = v892;
        a2[-13] = v181;
        *v9 = v179;
        a2[-15] = v180;
        v182 = v894;
        v183 = v895;
        v184 = v897;
        a2[-10] = v896;
        a2[-9] = v184;
        a2[-12] = v182;
        a2[-11] = v183;
        if (*(n128_u64 + **(a3 + 8)) < *(v154->n128_u32 + **(a3 + 8)))
        {
          v185 = i[13];
          v894 = i[12];
          v895 = v185;
          v186 = i[15];
          v896 = i[14];
          v897 = v186;
          v187 = i[9];
          v890 = *v154;
          v891 = v187;
          v188 = i[11];
          v892 = i[10];
          v893 = v188;
          v189 = *n128_u64;
          v190 = v13[-7];
          v191 = v13[-5];
          i[10] = v13[-6];
          i[11] = v191;
          *v154 = v189;
          i[9] = v190;
          v193 = v13[-2];
          v192 = v13[-1];
          v194 = v13[-3];
          i[12] = v13[-4];
          i[13] = v194;
          i[14] = v193;
          i[15] = v192;
          v195 = v890;
          v196 = v891;
          v197 = v893;
          v13[-6] = v892;
          v13[-5] = v197;
          *n128_u64 = v195;
          v13[-7] = v196;
          v198 = v894;
          v199 = v895;
          v200 = v897;
          v13[-2] = v896;
          v13[-1] = v200;
          v13[-4] = v198;
          v13[-3] = v199;
        }
      }
    }

    else
    {
      if (v156 >= v153)
      {
        v238 = i[13];
        v894 = i[12];
        v895 = v238;
        v239 = i[15];
        v896 = i[14];
        v897 = v239;
        v240 = i[9];
        v890 = *v154;
        v891 = v240;
        v241 = i[11];
        v892 = i[10];
        v893 = v241;
        v242 = *n128_u64;
        v243 = v13[-7];
        v244 = v13[-5];
        i[10] = v13[-6];
        i[11] = v244;
        *v154 = v242;
        i[9] = v243;
        v246 = v13[-2];
        v245 = v13[-1];
        v247 = v13[-3];
        i[12] = v13[-4];
        i[13] = v247;
        i[14] = v246;
        i[15] = v245;
        v248 = v890;
        v249 = v891;
        v250 = v893;
        v13[-6] = v892;
        v13[-5] = v250;
        *n128_u64 = v248;
        v13[-7] = v249;
        v251 = v894;
        v252 = v895;
        v253 = v897;
        v13[-2] = v896;
        v13[-1] = v253;
        v13[-4] = v251;
        v13[-3] = v252;
        if (*(v9->n128_u32 + **(a3 + 8)) >= *(n128_u64 + **(a3 + 8)))
        {
          goto LABEL_43;
        }

        v254 = *n128_u64;
        v255 = v13[-7];
        v256 = v13[-5];
        v892 = v13[-6];
        v893 = v256;
        v890 = v254;
        v891 = v255;
        v257 = v13[-4];
        v258 = v13[-3];
        v259 = v13[-1];
        v896 = v13[-2];
        v897 = v259;
        v894 = v257;
        v895 = v258;
        v260 = a2[-9];
        v262 = a2[-12];
        v261 = a2[-11];
        v13[-2] = a2[-10];
        v13[-1] = v260;
        v13[-4] = v262;
        v13[-3] = v261;
        v263 = *v9;
        v264 = a2[-15];
        v265 = a2[-13];
        v13[-6] = a2[-14];
        v13[-5] = v265;
        *n128_u64 = v263;
        v13[-7] = v264;
      }

      else
      {
        v157 = i[13];
        v894 = i[12];
        v895 = v157;
        v158 = i[15];
        v896 = i[14];
        v897 = v158;
        v159 = i[9];
        v890 = *v154;
        v891 = v159;
        v160 = i[11];
        v892 = i[10];
        v893 = v160;
        v161 = *v9;
        v162 = a2[-15];
        v163 = a2[-13];
        i[10] = a2[-14];
        i[11] = v163;
        *v154 = v161;
        i[9] = v162;
        v165 = a2[-10];
        v164 = a2[-9];
        v166 = a2[-11];
        i[12] = a2[-12];
        i[13] = v166;
        i[14] = v165;
        i[15] = v164;
      }

      v266 = v890;
      v267 = v891;
      v268 = v893;
      a2[-14] = v892;
      a2[-13] = v268;
      *v9 = v266;
      a2[-15] = v267;
      v269 = v894;
      v270 = v895;
      v271 = v897;
      a2[-10] = v896;
      a2[-9] = v271;
      a2[-12] = v269;
      a2[-11] = v270;
    }

LABEL_43:
    v272 = v13 + 8;
    v273 = **(a3 + 8);
    v274 = *(v13[8].n128_u32 + v273);
    v275 = i + 16;
    v276 = *(i[16].n128_u32 + v273);
    v277 = *(v10->n128_u32 + v273);
    if (v274 >= v276)
    {
      if (v277 < v274)
      {
        v288 = *v272;
        v289 = v13[9];
        v290 = v13[11];
        v892 = v13[10];
        v893 = v290;
        v890 = v288;
        v891 = v289;
        v291 = v13[12];
        v292 = v13[13];
        v293 = v13[15];
        v896 = v13[14];
        v897 = v293;
        v894 = v291;
        v895 = v292;
        v294 = a2[-17];
        v296 = a2[-20];
        v295 = a2[-19];
        v13[14] = a2[-18];
        v13[15] = v294;
        v13[12] = v296;
        v13[13] = v295;
        v297 = *v10;
        v298 = a2[-23];
        v299 = a2[-21];
        v13[10] = a2[-22];
        v13[11] = v299;
        *v272 = v297;
        v13[9] = v298;
        v300 = v890;
        v301 = v891;
        v302 = v893;
        a2[-22] = v892;
        a2[-21] = v302;
        *v10 = v300;
        a2[-23] = v301;
        v303 = v894;
        v304 = v895;
        v305 = v897;
        a2[-18] = v896;
        a2[-17] = v305;
        a2[-20] = v303;
        a2[-19] = v304;
        if (*(v272->n128_u32 + **(a3 + 8)) < *(v275->n128_u32 + **(a3 + 8)))
        {
          v306 = i[21];
          v894 = i[20];
          v895 = v306;
          v307 = i[23];
          v896 = i[22];
          v897 = v307;
          v308 = i[17];
          v890 = *v275;
          v891 = v308;
          v309 = i[19];
          v892 = i[18];
          v893 = v309;
          v310 = *v272;
          v311 = v13[9];
          v312 = v13[11];
          i[18] = v13[10];
          i[19] = v312;
          *v275 = v310;
          i[17] = v311;
          v314 = v13[14];
          v313 = v13[15];
          v315 = v13[13];
          i[20] = v13[12];
          i[21] = v315;
          i[22] = v314;
          i[23] = v313;
          v316 = v890;
          v317 = v891;
          v318 = v893;
          v13[10] = v892;
          v13[11] = v318;
          *v272 = v316;
          v13[9] = v317;
          v319 = v894;
          v320 = v895;
          v321 = v897;
          v13[14] = v896;
          v13[15] = v321;
          v13[12] = v319;
          v13[13] = v320;
        }
      }
    }

    else
    {
      if (v277 >= v274)
      {
        v322 = i[21];
        v894 = i[20];
        v895 = v322;
        v323 = i[23];
        v896 = i[22];
        v897 = v323;
        v324 = i[17];
        v890 = *v275;
        v891 = v324;
        v325 = i[19];
        v892 = i[18];
        v893 = v325;
        v326 = *v272;
        v327 = v13[9];
        v328 = v13[11];
        i[18] = v13[10];
        i[19] = v328;
        *v275 = v326;
        i[17] = v327;
        v330 = v13[14];
        v329 = v13[15];
        v331 = v13[13];
        i[20] = v13[12];
        i[21] = v331;
        i[22] = v330;
        i[23] = v329;
        v332 = v890;
        v333 = v891;
        v334 = v893;
        v13[10] = v892;
        v13[11] = v334;
        *v272 = v332;
        v13[9] = v333;
        v335 = v894;
        v336 = v895;
        v337 = v897;
        v13[14] = v896;
        v13[15] = v337;
        v13[12] = v335;
        v13[13] = v336;
        if (*(v10->n128_u32 + **(a3 + 8)) >= *(v272->n128_u32 + **(a3 + 8)))
        {
          goto LABEL_52;
        }

        v338 = *v272;
        v339 = v13[9];
        v340 = v13[11];
        v892 = v13[10];
        v893 = v340;
        v890 = v338;
        v891 = v339;
        v341 = v13[12];
        v342 = v13[13];
        v343 = v13[15];
        v896 = v13[14];
        v897 = v343;
        v894 = v341;
        v895 = v342;
        v344 = a2[-17];
        v346 = a2[-20];
        v345 = a2[-19];
        v13[14] = a2[-18];
        v13[15] = v344;
        v13[12] = v346;
        v13[13] = v345;
        v347 = *v10;
        v348 = a2[-23];
        v349 = a2[-21];
        v13[10] = a2[-22];
        v13[11] = v349;
        *v272 = v347;
        v13[9] = v348;
      }

      else
      {
        v278 = i[21];
        v894 = i[20];
        v895 = v278;
        v279 = i[23];
        v896 = i[22];
        v897 = v279;
        v280 = i[17];
        v890 = *v275;
        v891 = v280;
        v281 = i[19];
        v892 = i[18];
        v893 = v281;
        v282 = *v10;
        v283 = a2[-23];
        v284 = a2[-21];
        i[18] = a2[-22];
        i[19] = v284;
        *v275 = v282;
        i[17] = v283;
        v286 = a2[-18];
        v285 = a2[-17];
        v287 = a2[-19];
        i[20] = a2[-20];
        i[21] = v287;
        i[22] = v286;
        i[23] = v285;
      }

      v350 = v890;
      v351 = v891;
      v352 = v893;
      a2[-22] = v892;
      a2[-21] = v352;
      *v10 = v350;
      a2[-23] = v351;
      v353 = v894;
      v354 = v895;
      v355 = v897;
      a2[-18] = v896;
      a2[-17] = v355;
      a2[-20] = v353;
      a2[-19] = v354;
    }

LABEL_52:
    v356 = **(a3 + 8);
    v357 = *(v13->n128_u32 + v356);
    v358 = *(n128_u64 + v356);
    v359 = *(v272->n128_u32 + v356);
    if (v357 >= v358)
    {
      if (v359 < v357)
      {
        v370 = *v13;
        v371 = v13[1];
        v372 = v13[3];
        v892 = v13[2];
        v893 = v372;
        v890 = v370;
        v891 = v371;
        v373 = v13[4];
        v374 = v13[5];
        v375 = v13[7];
        v896 = v13[6];
        v897 = v375;
        v894 = v373;
        v895 = v374;
        v376 = v13[13];
        v13[4] = v13[12];
        v13[5] = v376;
        v377 = v13[15];
        v13[6] = v13[14];
        v13[7] = v377;
        v378 = v13[9];
        *v13 = *v272;
        v13[1] = v378;
        v379 = v13[11];
        v13[2] = v13[10];
        v13[3] = v379;
        v380 = v890;
        v381 = v891;
        v382 = v893;
        v13[10] = v892;
        v13[11] = v382;
        *v272 = v380;
        v13[9] = v381;
        v383 = v894;
        v384 = v895;
        v385 = v897;
        v13[14] = v896;
        v13[15] = v385;
        v13[12] = v383;
        v13[13] = v384;
        if (*(v13->n128_u32 + **(a3 + 8)) < *(n128_u64 + **(a3 + 8)))
        {
          v386 = *n128_u64;
          v387 = v13[-7];
          v388 = v13[-5];
          v892 = v13[-6];
          v893 = v388;
          v890 = v386;
          v891 = v387;
          v389 = v13[-4];
          v390 = v13[-3];
          v391 = v13[-1];
          v896 = v13[-2];
          v897 = v391;
          v894 = v389;
          v895 = v390;
          v392 = v13[5];
          v13[-4] = v13[4];
          v13[-3] = v392;
          v393 = v13[7];
          v13[-2] = v13[6];
          v13[-1] = v393;
          v394 = v13[1];
          *n128_u64 = *v13;
          v13[-7] = v394;
          v395 = v13[3];
          v13[-6] = v13[2];
          v13[-5] = v395;
          v396 = v890;
          v397 = v891;
          v398 = v893;
          v13[2] = v892;
          v13[3] = v398;
          *v13 = v396;
          v13[1] = v397;
          v399 = v894;
          v400 = v895;
          v401 = v897;
          v13[6] = v896;
          v13[7] = v401;
          v13[4] = v399;
          v13[5] = v400;
        }
      }
    }

    else
    {
      if (v359 >= v357)
      {
        v402 = *n128_u64;
        v403 = v13[-7];
        v404 = v13[-5];
        v892 = v13[-6];
        v893 = v404;
        v890 = v402;
        v891 = v403;
        v405 = v13[-4];
        v406 = v13[-3];
        v407 = v13[-1];
        v896 = v13[-2];
        v897 = v407;
        v894 = v405;
        v895 = v406;
        v408 = v13[5];
        v13[-4] = v13[4];
        v13[-3] = v408;
        v409 = v13[7];
        v13[-2] = v13[6];
        v13[-1] = v409;
        v410 = v13[1];
        *n128_u64 = *v13;
        v13[-7] = v410;
        v411 = v13[3];
        v13[-6] = v13[2];
        v13[-5] = v411;
        v412 = v890;
        v413 = v891;
        v414 = v893;
        v13[2] = v892;
        v13[3] = v414;
        *v13 = v412;
        v13[1] = v413;
        v415 = v894;
        v416 = v895;
        v417 = v897;
        v13[6] = v896;
        v13[7] = v417;
        v13[4] = v415;
        v13[5] = v416;
        v418 = **(a3 + 8);
        v419 = *(v272->n128_u32 + v418);
        n128_u64 = *(v13->n128_u32 + v418);
        if (v419 >= n128_u64)
        {
          goto LABEL_61;
        }

        v420 = *v13;
        v421 = v13[1];
        v422 = v13[3];
        v892 = v13[2];
        v893 = v422;
        v890 = v420;
        v891 = v421;
        v423 = v13[4];
        v424 = v13[5];
        v425 = v13[7];
        v896 = v13[6];
        v897 = v425;
        v894 = v423;
        v895 = v424;
        v426 = v13[13];
        v13[4] = v13[12];
        v13[5] = v426;
        v427 = v13[15];
        v13[6] = v13[14];
        v13[7] = v427;
        v428 = v13[9];
        *v13 = *v272;
        v13[1] = v428;
        v429 = v13[11];
        v13[2] = v13[10];
        v13[3] = v429;
      }

      else
      {
        v360 = *n128_u64;
        v361 = v13[-7];
        v362 = v13[-5];
        v892 = v13[-6];
        v893 = v362;
        v890 = v360;
        v891 = v361;
        v363 = v13[-4];
        v364 = v13[-3];
        v365 = v13[-1];
        v896 = v13[-2];
        v897 = v365;
        v894 = v363;
        v895 = v364;
        v366 = v13[13];
        v13[-4] = v13[12];
        v13[-3] = v366;
        v367 = v13[15];
        v13[-2] = v13[14];
        v13[-1] = v367;
        v368 = v13[9];
        *n128_u64 = *v272;
        v13[-7] = v368;
        v369 = v13[11];
        v13[-6] = v13[10];
        v13[-5] = v369;
      }

      v430 = v890;
      v431 = v891;
      v432 = v893;
      v13[10] = v892;
      v13[11] = v432;
      *v272 = v430;
      v13[9] = v431;
      v433 = v894;
      v434 = v895;
      v435 = v897;
      v13[14] = v896;
      v13[15] = v435;
      v13[12] = v433;
      v13[13] = v434;
    }

LABEL_61:
    v436 = *i;
    v437 = i[1];
    v438 = i[3];
    v892 = i[2];
    v893 = v438;
    v890 = v436;
    v891 = v437;
    v439 = i[4];
    v440 = i[5];
    v441 = i[7];
    v896 = i[6];
    v897 = v441;
    v894 = v439;
    v895 = v440;
    v442 = v13[7];
    v444 = v13[4];
    v443 = v13[5];
    i[6] = v13[6];
    i[7] = v442;
    i[4] = v444;
    i[5] = v443;
    v445 = *v13;
    v446 = v13[1];
    v447 = v13[3];
    i[2] = v13[2];
    i[3] = v447;
    *i = v445;
    i[1] = v446;
    v448 = v890;
    v449 = v891;
    v450 = v893;
    v13[2] = v892;
    v13[3] = v450;
    *v13 = v448;
    v13[1] = v449;
    v451 = v894;
    v452 = v895;
    v453 = v897;
    v13[6] = v896;
    v13[7] = v453;
    v13[4] = v451;
    v13[5] = v452;
    --a4;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    v454 = **(a3 + 8);
    n128_u64 = *(i[-8].n128_u32 + v454);
    if (n128_u64 < *(i->n128_u32 + v454))
    {
LABEL_63:
      v455 = *i;
      v456 = i[1];
      v457 = i[3];
      v884 = i[2];
      v885 = v457;
      v882 = v455;
      v883 = v456;
      v458 = i[4];
      v459 = i[5];
      v460 = i[7];
      v888 = i[6];
      v889 = v460;
      v886 = v458;
      v887 = v459;
      v461 = i + 8;
      if (&i[8] == a2)
      {
        goto LABEL_202;
      }

      n128_u64 = **(a3 + 8);
      v462 = *(v882.n128_u32 + n128_u64);
      if (*(v461->n128_u32 + n128_u64) < v462)
      {
        v461 = (n128_u64 + 256);
        v463 = i;
        while (&v463[16] != a2)
        {
          v464 = *(v461->n128_u32 + v463);
          v463 += 8;
          if (v464 >= v462)
          {
            v461 = v463 + 8;
            v465 = n128_u64 - 128;
            v466 = a2;
            while (v466 != i)
            {
              n128_u64 = v466[-8].n128_u64;
              v467 = *(v466->n128_u32 + v465);
              v466 -= 8;
              if (v467 < v462)
              {
                goto LABEL_76;
              }
            }

            goto LABEL_202;
          }
        }

        goto LABEL_202;
      }

      v468 = n128_u64 - 128;
      n128_u64 = a2;
      do
      {
        if (v461 >= n128_u64)
        {
          v463 = i;
          goto LABEL_90;
        }

        v469 = n128_u64 - 128;
        v470 = *(n128_u64 + v468);
        n128_u64 -= 128;
      }

      while (v470 >= v462);
      v463 = i;
      n128_u64 = v469;
LABEL_76:
      if (v461 < n128_u64)
      {
        v471 = v461;
        v472 = n128_u64;
LABEL_80:
        v473 = *v471;
        v474 = v471[1];
        v475 = v471[3];
        v892 = v471[2];
        v893 = v475;
        v890 = v473;
        v891 = v474;
        v476 = v471[4];
        v477 = v471[5];
        v478 = v471[7];
        v896 = v471[6];
        v897 = v478;
        v894 = v476;
        v895 = v477;
        v479 = v472[7];
        v481 = v472[4];
        v480 = v472[5];
        v471[6] = v472[6];
        v471[7] = v479;
        v471[4] = v481;
        v471[5] = v480;
        v482 = *v472;
        v483 = v472[1];
        v484 = v472[3];
        v471[2] = v472[2];
        v471[3] = v484;
        *v471 = v482;
        v471[1] = v483;
        v485 = v890;
        v486 = v891;
        v487 = v893;
        v472[2] = v892;
        v472[3] = v487;
        *v472 = v485;
        v472[1] = v486;
        v488 = v894;
        v489 = v895;
        v490 = v897;
        v472[6] = v896;
        v472[7] = v490;
        v472[4] = v488;
        v472[5] = v489;
        if (&v471[8] != a2)
        {
          v491 = **(a3 + 8);
          v492 = *(v882.n128_u32 + v491);
          if (*(v471[8].n128_u32 + v491) >= v492)
          {
            v463 = v471;
            v471 += 8;
LABEL_86:
            v494 = v491 - 128;
            while (v472 != i)
            {
              v495 = v472 - 8;
              v496 = *(v472->n128_u32 + v494);
              v472 -= 8;
              if (v496 < v492)
              {
                v472 = v495;
                if (v471 < v495)
                {
                  goto LABEL_80;
                }

                goto LABEL_90;
              }
            }
          }

          else
          {
            while (&v471[16] != a2)
            {
              v493 = *(v471[16].n128_u32 + v491);
              v471 += 8;
              if (v493 >= v492)
              {
                v463 = v471;
                v471 += 8;
                goto LABEL_86;
              }
            }
          }
        }

        goto LABEL_202;
      }

LABEL_90:
      if (v463 != i)
      {
        v497 = *v463;
        v498 = v463[1];
        v499 = v463[3];
        i[2] = v463[2];
        i[3] = v499;
        *i = v497;
        i[1] = v498;
        v500 = v463[4];
        v501 = v463[5];
        v502 = v463[7];
        i[6] = v463[6];
        i[7] = v502;
        i[4] = v500;
        i[5] = v501;
      }

      v503 = v882;
      v504 = v883;
      v505 = v885;
      v463[2] = v884;
      v463[3] = v505;
      *v463 = v503;
      v463[1] = v504;
      v506 = v886;
      v507 = v887;
      v508 = v889;
      v463[6] = v888;
      v463[7] = v508;
      v463[4] = v506;
      v463[5] = v507;
      if (v461 < n128_u64)
      {
        goto LABEL_95;
      }

      v881 = a4;
      v509 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*>(i, v463, a3);
      i = v463 + 8;
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*>(v463 + 8, a2, a3))
      {
        a4 = v881;
        LOBYTE(a5) = v880;
        if (v509)
        {
          goto LABEL_3;
        }

LABEL_95:
        v511 = a1;
        v512 = a4;
        std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,false>(v511, v463, a3);
        a4 = v512;
        a5 = 0;
        i = v463 + 8;
        goto LABEL_2;
      }

      a2 = v463;
      a4 = v881;
      a5 = v880;
      if (v509)
      {
        return result;
      }

      goto LABEL_1;
    }

    v513 = *i;
    v514 = i[1];
    v515 = i[3];
    v884 = i[2];
    v885 = v515;
    v882 = v513;
    v883 = v514;
    v516 = i[4];
    v517 = i[5];
    v518 = i[7];
    v888 = i[6];
    v889 = v518;
    v886 = v516;
    v887 = v517;
    v519 = *(v882.n128_u32 + v454);
    if (v519 < *(v8->n128_u32 + v454))
    {
      n128_u64 = v454 + 128;
      v520 = i;
      while (1)
      {
        v461 = v520 + 8;
        if (&v520[8] == a2)
        {
          goto LABEL_202;
        }

        v521 = *(v520->n128_u32 + n128_u64);
        v520 += 8;
        if (v519 < v521)
        {
          goto LABEL_104;
        }
      }
    }

    v522 = i + 8;
    do
    {
      v461 = v522;
      if (v522 >= a2)
      {
        break;
      }

      v523 = *(v522->n128_u32 + v454);
      v522 += 8;
    }

    while (v519 >= v523);
LABEL_104:
    n128_u64 = a2;
    if (v461 < a2)
    {
      v524 = v454 - 128;
      v525 = a2;
      while (v525 != i)
      {
        n128_u64 = v525[-8].n128_u64;
        v526 = *(v525->n128_u32 + v524);
        v525 -= 8;
        if (v519 >= v526)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_202;
    }

LABEL_108:
    if (v461 < n128_u64)
    {
      while (1)
      {
        v527 = *v461;
        v528 = v461[1];
        v529 = v461[3];
        v892 = v461[2];
        v893 = v529;
        v890 = v527;
        v891 = v528;
        v530 = v461[4];
        v531 = v461[5];
        v532 = v461[7];
        v896 = v461[6];
        v897 = v532;
        v894 = v530;
        v895 = v531;
        v533 = *(n128_u64 + 112);
        v535 = *(n128_u64 + 64);
        v534 = *(n128_u64 + 80);
        v461[6] = *(n128_u64 + 96);
        v461[7] = v533;
        v461[4] = v535;
        v461[5] = v534;
        v536 = *n128_u64;
        v537 = *(n128_u64 + 16);
        v538 = *(n128_u64 + 48);
        v461[2] = *(n128_u64 + 32);
        v461[3] = v538;
        *v461 = v536;
        v461[1] = v537;
        v539 = v890;
        v540 = v891;
        v541 = v893;
        *(n128_u64 + 32) = v892;
        *(n128_u64 + 48) = v541;
        *n128_u64 = v539;
        *(n128_u64 + 16) = v540;
        v542 = v894;
        v543 = v895;
        v544 = v897;
        *(n128_u64 + 96) = v896;
        *(n128_u64 + 112) = v544;
        *(n128_u64 + 64) = v542;
        *(n128_u64 + 80) = v543;
        i = v461 + 8;
        if (&v461[8] == a2)
        {
          break;
        }

        v545 = **(a3 + 8);
        v546 = *(v882.n128_u32 + v545);
        if (v546 >= *(i->n128_u32 + v545))
        {
          v461 += 16;
          do
          {
            if (v461 == a2)
            {
              goto LABEL_202;
            }

            v547 = *(v461->n128_u32 + v545);
            v461 += 8;
          }

          while (v546 >= v547);
          i = v461 - 8;
        }

        v461 = (v545 - 128);
        do
        {
          if (n128_u64 == a1)
          {
            goto LABEL_202;
          }

          v548 = n128_u64 - 128;
          v549 = *(v461->n128_u32 + n128_u64);
          n128_u64 -= 128;
        }

        while (v546 < v549);
        v461 = i;
        n128_u64 = v548;
        if (i >= v548)
        {
          goto LABEL_121;
        }
      }

LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    i = v461;
LABEL_121:
    v550 = i - 8;
    if (&i[-8] != a1)
    {
      v551 = *v550;
      v552 = i[-7];
      v553 = i[-5];
      a1[2] = i[-6];
      a1[3] = v553;
      *a1 = v551;
      a1[1] = v552;
      v554 = i[-4];
      v555 = i[-3];
      v556 = i[-1];
      a1[6] = i[-2];
      a1[7] = v556;
      a1[4] = v554;
      a1[5] = v555;
    }

    a5 = 0;
    v557 = v882;
    v558 = v883;
    v559 = v885;
    i[-6] = v884;
    i[-5] = v559;
    *v550 = v557;
    i[-7] = v558;
    result = v886;
    v560 = v887;
    v561 = v889;
    i[-2] = v888;
    i[-1] = v561;
    i[-4] = result;
  }

  result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,0>(i, i + 8, i + 16, i + 24, a2 - 8, a3).n128_u64[0];
  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6)
{
  v6 = **(a6 + 8);
  v7 = *(a2->n128_u32 + v6);
  v8 = *(a1->n128_u32 + v6);
  v9 = *(a3->n128_u32 + v6);
  if (v7 >= v8)
  {
    if (v9 < v7)
    {
      v129 = a2[4];
      v140 = a2[5];
      v151 = a2[6];
      v162 = a2[7];
      v85 = *a2;
      v96 = a2[1];
      v107 = a2[2];
      v118 = a2[3];
      v16 = a3[4];
      v17 = a3[5];
      v18 = a3[7];
      a2[6] = a3[6];
      a2[7] = v18;
      a2[4] = v16;
      a2[5] = v17;
      v19 = *a3;
      v20 = a3[1];
      v21 = a3[3];
      a2[2] = a3[2];
      a2[3] = v21;
      *a2 = v19;
      a2[1] = v20;
      a3[2] = v107;
      a3[3] = v118;
      *a3 = v85;
      a3[1] = v96;
      a3[6] = v151;
      a3[7] = v162;
      result = v140;
      a3[4] = v129;
      a3[5] = v140;
      if (*(a2->n128_u32 + **(a6 + 8)) < *(a1->n128_u32 + **(a6 + 8)))
      {
        v130 = a1[4];
        v141 = a1[5];
        v152 = a1[6];
        v163 = a1[7];
        v86 = *a1;
        v97 = a1[1];
        v108 = a1[2];
        v119 = a1[3];
        v23 = a2[4];
        v24 = a2[5];
        v25 = a2[7];
        a1[6] = a2[6];
        a1[7] = v25;
        a1[4] = v23;
        a1[5] = v24;
        v26 = *a2;
        v27 = a2[1];
        v28 = a2[3];
        a1[2] = a2[2];
        a1[3] = v28;
        *a1 = v26;
        a1[1] = v27;
        a2[2] = v108;
        a2[3] = v119;
        *a2 = v86;
        a2[1] = v97;
        a2[6] = v152;
        a2[7] = v163;
        result = v141;
        a2[4] = v130;
        a2[5] = v141;
      }
    }
  }

  else
  {
    if (v9 < v7)
    {
      v128 = a1[4];
      v139 = a1[5];
      v150 = a1[6];
      v161 = a1[7];
      v84 = *a1;
      v95 = a1[1];
      v106 = a1[2];
      v117 = a1[3];
      v10 = a3[4];
      v11 = a3[5];
      v12 = a3[7];
      a1[6] = a3[6];
      a1[7] = v12;
      a1[4] = v10;
      a1[5] = v11;
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[3];
      a1[2] = a3[2];
      a1[3] = v15;
      *a1 = v13;
      a1[1] = v14;
LABEL_9:
      a3[2] = v106;
      a3[3] = v117;
      *a3 = v84;
      a3[1] = v95;
      a3[6] = v150;
      a3[7] = v161;
      result = v139;
      a3[4] = v128;
      a3[5] = v139;
      goto LABEL_10;
    }

    v131 = a1[4];
    v142 = a1[5];
    v153 = a1[6];
    v164 = a1[7];
    v87 = *a1;
    v98 = a1[1];
    v109 = a1[2];
    v120 = a1[3];
    v29 = a2[4];
    v30 = a2[5];
    v31 = a2[7];
    a1[6] = a2[6];
    a1[7] = v31;
    a1[4] = v29;
    a1[5] = v30;
    v32 = *a2;
    v33 = a2[1];
    v34 = a2[3];
    a1[2] = a2[2];
    a1[3] = v34;
    *a1 = v32;
    a1[1] = v33;
    a2[2] = v109;
    a2[3] = v120;
    *a2 = v87;
    a2[1] = v98;
    a2[6] = v153;
    a2[7] = v164;
    result = v142;
    a2[4] = v131;
    a2[5] = v142;
    if (*(a3->n128_u32 + **(a6 + 8)) < *(a2->n128_u32 + **(a6 + 8)))
    {
      v128 = a2[4];
      v139 = a2[5];
      v150 = a2[6];
      v161 = a2[7];
      v84 = *a2;
      v95 = a2[1];
      v106 = a2[2];
      v117 = a2[3];
      v35 = a3[4];
      v36 = a3[5];
      v37 = a3[7];
      a2[6] = a3[6];
      a2[7] = v37;
      a2[4] = v35;
      a2[5] = v36;
      v38 = *a3;
      v39 = a3[1];
      v40 = a3[3];
      a2[2] = a3[2];
      a2[3] = v40;
      *a2 = v38;
      a2[1] = v39;
      goto LABEL_9;
    }
  }

LABEL_10:
  v41 = **(a6 + 8);
  if (*(a4->n128_u32 + v41) < *(a3->n128_u32 + v41))
  {
    v132 = a3[4];
    v143 = a3[5];
    v154 = a3[6];
    v165 = a3[7];
    v88 = *a3;
    v99 = a3[1];
    v110 = a3[2];
    v121 = a3[3];
    v42 = a4[4];
    v43 = a4[5];
    v44 = a4[7];
    a3[6] = a4[6];
    a3[7] = v44;
    a3[4] = v42;
    a3[5] = v43;
    v45 = *a4;
    v46 = a4[1];
    v47 = a4[3];
    a3[2] = a4[2];
    a3[3] = v47;
    *a3 = v45;
    a3[1] = v46;
    a4[2] = v110;
    a4[3] = v121;
    *a4 = v88;
    a4[1] = v99;
    a4[6] = v154;
    a4[7] = v165;
    result = v143;
    a4[4] = v132;
    a4[5] = v143;
    v41 = **(a6 + 8);
    if (*(a3->n128_u32 + v41) < *(a2->n128_u32 + v41))
    {
      v133 = a2[4];
      v144 = a2[5];
      v155 = a2[6];
      v166 = a2[7];
      v89 = *a2;
      v100 = a2[1];
      v111 = a2[2];
      v122 = a2[3];
      v48 = a3[4];
      v49 = a3[5];
      v50 = a3[7];
      a2[6] = a3[6];
      a2[7] = v50;
      a2[4] = v48;
      a2[5] = v49;
      v51 = *a3;
      v52 = a3[1];
      v53 = a3[3];
      a2[2] = a3[2];
      a2[3] = v53;
      *a2 = v51;
      a2[1] = v52;
      a3[2] = v111;
      a3[3] = v122;
      *a3 = v89;
      a3[1] = v100;
      a3[6] = v155;
      a3[7] = v166;
      result = v144;
      a3[4] = v133;
      a3[5] = v144;
      v41 = **(a6 + 8);
      if (*(a2->n128_u32 + v41) < *(a1->n128_u32 + v41))
      {
        v134 = a1[4];
        v145 = a1[5];
        v156 = a1[6];
        v167 = a1[7];
        v90 = *a1;
        v101 = a1[1];
        v112 = a1[2];
        v123 = a1[3];
        v54 = a2[4];
        v55 = a2[5];
        v56 = a2[7];
        a1[6] = a2[6];
        a1[7] = v56;
        a1[4] = v54;
        a1[5] = v55;
        v57 = *a2;
        v58 = a2[1];
        v59 = a2[3];
        a1[2] = a2[2];
        a1[3] = v59;
        *a1 = v57;
        a1[1] = v58;
        a2[2] = v112;
        a2[3] = v123;
        *a2 = v90;
        a2[1] = v101;
        a2[6] = v156;
        a2[7] = v167;
        result = v145;
        a2[4] = v134;
        a2[5] = v145;
        v41 = **(a6 + 8);
      }
    }
  }

  if (*(a5->n128_u32 + v41) < *(a4->n128_u32 + v41))
  {
    v135 = a4[4];
    v146 = a4[5];
    v157 = a4[6];
    v168 = a4[7];
    v91 = *a4;
    v102 = a4[1];
    v113 = a4[2];
    v124 = a4[3];
    v60 = a5[4];
    v61 = a5[5];
    v62 = a5[7];
    a4[6] = a5[6];
    a4[7] = v62;
    a4[4] = v60;
    a4[5] = v61;
    v63 = *a5;
    v64 = a5[1];
    v65 = a5[3];
    a4[2] = a5[2];
    a4[3] = v65;
    *a4 = v63;
    a4[1] = v64;
    a5[2] = v113;
    a5[3] = v124;
    *a5 = v91;
    a5[1] = v102;
    a5[6] = v157;
    a5[7] = v168;
    result = v146;
    a5[4] = v135;
    a5[5] = v146;
    if (*(a4->n128_u32 + **(a6 + 8)) < *(a3->n128_u32 + **(a6 + 8)))
    {
      v136 = a3[4];
      v147 = a3[5];
      v158 = a3[6];
      v169 = a3[7];
      v92 = *a3;
      v103 = a3[1];
      v114 = a3[2];
      v125 = a3[3];
      v66 = a4[4];
      v67 = a4[5];
      v68 = a4[7];
      a3[6] = a4[6];
      a3[7] = v68;
      a3[4] = v66;
      a3[5] = v67;
      v69 = *a4;
      v70 = a4[1];
      v71 = a4[3];
      a3[2] = a4[2];
      a3[3] = v71;
      *a3 = v69;
      a3[1] = v70;
      a4[2] = v114;
      a4[3] = v125;
      *a4 = v92;
      a4[1] = v103;
      a4[6] = v158;
      a4[7] = v169;
      result = v147;
      a4[4] = v136;
      a4[5] = v147;
      if (*(a3->n128_u32 + **(a6 + 8)) < *(a2->n128_u32 + **(a6 + 8)))
      {
        v137 = a2[4];
        v148 = a2[5];
        v159 = a2[6];
        v170 = a2[7];
        v93 = *a2;
        v104 = a2[1];
        v115 = a2[2];
        v126 = a2[3];
        v72 = a3[4];
        v73 = a3[5];
        v74 = a3[7];
        a2[6] = a3[6];
        a2[7] = v74;
        a2[4] = v72;
        a2[5] = v73;
        v75 = *a3;
        v76 = a3[1];
        v77 = a3[3];
        a2[2] = a3[2];
        a2[3] = v77;
        *a2 = v75;
        a2[1] = v76;
        a3[2] = v115;
        a3[3] = v126;
        *a3 = v93;
        a3[1] = v104;
        a3[6] = v159;
        a3[7] = v170;
        result = v148;
        a3[4] = v137;
        a3[5] = v148;
        if (*(a2->n128_u32 + **(a6 + 8)) < *(a1->n128_u32 + **(a6 + 8)))
        {
          v138 = a1[4];
          v149 = a1[5];
          v160 = a1[6];
          v171 = a1[7];
          v94 = *a1;
          v105 = a1[1];
          v116 = a1[2];
          v127 = a1[3];
          v78 = a2[4];
          v79 = a2[5];
          v80 = a2[7];
          a1[6] = a2[6];
          a1[7] = v80;
          a1[4] = v78;
          a1[5] = v79;
          v81 = *a2;
          v82 = a2[1];
          v83 = a2[3];
          a1[2] = a2[2];
          a1[3] = v83;
          *a1 = v81;
          a1[1] = v82;
          a2[2] = v116;
          a2[3] = v127;
          *a2 = v94;
          a2[1] = v105;
          a2[6] = v160;
          a2[7] = v171;
          result = v149;
          a2[4] = v138;
          a2[5] = v149;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v3 = (a2 - a1) >> 7;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a1 + 8;
      v6 = **(a3 + 8);
      v7 = *(a1[8].n128_u32 + v6);
      v4 = a2 - 8;
      v8 = *(a1->n128_u32 + v6);
      v9 = *(a2[-8].n128_u32 + v6);
      if (v7 >= v8)
      {
        if (v9 < v7)
        {
          v58 = a1[13];
          v310 = a1[12];
          v311 = v58;
          v59 = a1[15];
          v312 = a1[14];
          v313 = v59;
          v60 = a1[9];
          v306 = *v5;
          v307 = v60;
          v61 = a1[11];
          v308 = a1[10];
          v309 = v61;
          v62 = a2[-4];
          v63 = a2[-3];
          v64 = a2[-1];
          a1[14] = a2[-2];
          a1[15] = v64;
          a1[12] = v62;
          a1[13] = v63;
          v65 = *v4;
          v66 = a2[-7];
          v67 = a2[-5];
          a1[10] = a2[-6];
          a1[11] = v67;
          *v5 = v65;
          a1[9] = v66;
          v68 = v309;
          a2[-6] = v308;
          a2[-5] = v68;
          v69 = v307;
          *v4 = v306;
          a2[-7] = v69;
          v70 = v313;
          a2[-2] = v312;
          a2[-1] = v70;
          v71 = v311;
          a2[-4] = v310;
          a2[-3] = v71;
          if (*(v5->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
          {
            v72 = a1[5];
            v310 = a1[4];
            v311 = v72;
            v73 = a1[7];
            v312 = a1[6];
            v313 = v73;
            v74 = a1[1];
            v306 = *a1;
            v307 = v74;
            v75 = a1[3];
            v308 = a1[2];
            v309 = v75;
            v76 = *v5;
            v77 = a1[9];
            v78 = a1[11];
            a1[2] = a1[10];
            a1[3] = v78;
            *a1 = v76;
            a1[1] = v77;
            v79 = a1[12];
            v80 = a1[13];
            v81 = a1[15];
            a1[6] = a1[14];
            a1[7] = v81;
            a1[4] = v79;
            a1[5] = v80;
            v82 = v306;
            v83 = v307;
            v84 = v309;
            a1[10] = v308;
            a1[11] = v84;
            *v5 = v82;
            a1[9] = v83;
            v85 = v310;
            v86 = v311;
            v87 = v313;
            a1[14] = v312;
            a1[15] = v87;
            result = 1;
            v5[4] = v85;
            v5[5] = v86;
            return result;
          }
        }

        return 1;
      }

      if (v9 < v7)
      {
LABEL_12:
        v10 = a1[5];
        v310 = a1[4];
        v311 = v10;
        v11 = a1[7];
        v312 = a1[6];
        v313 = v11;
        v12 = a1[1];
        v306 = *a1;
        v307 = v12;
        v13 = a1[3];
        v308 = a1[2];
        v309 = v13;
        v14 = v4[4];
        v15 = v4[5];
        v16 = v4[7];
        a1[6] = v4[6];
        a1[7] = v16;
        a1[4] = v14;
        a1[5] = v15;
        v17 = *v4;
        v18 = v4[1];
        v19 = v4[3];
        a1[2] = v4[2];
        a1[3] = v19;
        *a1 = v17;
        a1[1] = v18;
LABEL_13:
        v20 = v309;
        v4[2] = v308;
        v4[3] = v20;
        v21 = v307;
        *v4 = v306;
        v4[1] = v21;
        v22 = v313;
        v4[6] = v312;
        v4[7] = v22;
        v23 = v311;
        result = 1;
        v4[4] = v310;
        v4[5] = v23;
        return result;
      }

      v152 = a1[5];
      v310 = a1[4];
      v311 = v152;
      v153 = a1[7];
      v312 = a1[6];
      v313 = v153;
      v154 = a1[1];
      v306 = *a1;
      v307 = v154;
      v155 = a1[3];
      v308 = a1[2];
      v309 = v155;
      v156 = *v5;
      v157 = a1[9];
      v158 = a1[11];
      a1[2] = a1[10];
      a1[3] = v158;
      *a1 = v156;
      a1[1] = v157;
      v159 = a1[12];
      v160 = a1[13];
      v161 = a1[15];
      a1[6] = a1[14];
      a1[7] = v161;
      a1[4] = v159;
      a1[5] = v160;
      v162 = v306;
      v163 = v307;
      v164 = v309;
      a1[10] = v308;
      a1[11] = v164;
      *v5 = v162;
      a1[9] = v163;
      v165 = v310;
      v166 = v311;
      v167 = v313;
      a1[14] = v312;
      a1[15] = v167;
      a1[12] = v165;
      a1[13] = v166;
      if (*(v4->n128_u32 + **(a3 + 8)) < *(v5->n128_u32 + **(a3 + 8)))
      {
        v168 = a1[13];
        v310 = a1[12];
        v311 = v168;
        v169 = a1[15];
        v312 = a1[14];
        v313 = v169;
        v170 = a1[9];
        v306 = *v5;
        v307 = v170;
        v171 = a1[11];
        v308 = a1[10];
        v309 = v171;
        v172 = a2[-4];
        v173 = a2[-3];
        v174 = a2[-1];
        a1[14] = a2[-2];
        a1[15] = v174;
        a1[12] = v172;
        a1[13] = v173;
        v175 = *v4;
        v176 = a2[-7];
        v177 = a2[-5];
        a1[10] = a2[-6];
        a1[11] = v177;
        *v5 = v175;
        a1[9] = v176;
        goto LABEL_13;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WGPUBindGroupLayoutEntry::*> &,WGPUBindGroupLayoutEntry*,0>(a1, a1 + 8, a1 + 16, a1 + 24, a2 - 8, a3);
      return 1;
    }

    v41 = a1 + 8;
    v42 = a1 + 16;
    v43 = **(a3 + 8);
    v44 = *(a1[8].n128_u32 + v43);
    v45 = a2 - 8;
    v46 = *(a1->n128_u32 + v43);
    v47 = *(a1[16].n128_u32 + v43);
    if (v44 >= v46)
    {
      if (v47 < v44)
      {
        v120 = a1[13];
        v310 = a1[12];
        v311 = v120;
        v121 = a1[15];
        v312 = a1[14];
        v313 = v121;
        v122 = a1[9];
        v306 = *v41;
        v307 = v122;
        v123 = a1[11];
        v308 = a1[10];
        v309 = v123;
        v124 = *v42;
        v125 = a1[17];
        v126 = a1[19];
        a1[10] = a1[18];
        a1[11] = v126;
        *v41 = v124;
        a1[9] = v125;
        v127 = a1[20];
        v128 = a1[21];
        v129 = a1[23];
        a1[14] = a1[22];
        a1[15] = v129;
        a1[12] = v127;
        a1[13] = v128;
        v130 = v306;
        v131 = v307;
        v132 = v309;
        a1[18] = v308;
        a1[19] = v132;
        *v42 = v130;
        a1[17] = v131;
        v133 = v310;
        v134 = v311;
        v135 = v313;
        a1[22] = v312;
        a1[23] = v135;
        a1[20] = v133;
        a1[21] = v134;
        if (*(v41->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
        {
          v136 = a1[5];
          v310 = a1[4];
          v311 = v136;
          v137 = a1[7];
          v312 = a1[6];
          v313 = v137;
          v138 = a1[1];
          v306 = *a1;
          v307 = v138;
          v139 = a1[3];
          v308 = a1[2];
          v309 = v139;
          v140 = *v41;
          v141 = a1[9];
          v142 = a1[11];
          a1[2] = a1[10];
          a1[3] = v142;
          *a1 = v140;
          a1[1] = v141;
          v143 = a1[12];
          v144 = a1[13];
          v145 = a1[15];
          a1[6] = a1[14];
          a1[7] = v145;
          a1[4] = v143;
          a1[5] = v144;
          v146 = v306;
          v147 = v307;
          v148 = v309;
          a1[10] = v308;
          a1[11] = v148;
          *v41 = v146;
          a1[9] = v147;
          v149 = v310;
          v150 = v311;
          v151 = v313;
          a1[14] = v312;
          a1[15] = v151;
          a1[12] = v149;
          a1[13] = v150;
        }
      }
    }

    else
    {
      if (v47 < v44)
      {
        v48 = a1[5];
        v310 = a1[4];
        v311 = v48;
        v49 = a1[7];
        v312 = a1[6];
        v313 = v49;
        v50 = a1[1];
        v306 = *a1;
        v307 = v50;
        v51 = a1[3];
        v308 = a1[2];
        v309 = v51;
        v52 = *v42;
        v53 = a1[17];
        v54 = a1[19];
        a1[2] = a1[18];
        a1[3] = v54;
        *a1 = v52;
        a1[1] = v53;
        v55 = a1[20];
        v56 = a1[21];
        v57 = a1[23];
        a1[6] = a1[22];
        a1[7] = v57;
        a1[4] = v55;
        a1[5] = v56;
LABEL_46:
        v254 = v306;
        v255 = v307;
        v256 = v309;
        a1[18] = v308;
        a1[19] = v256;
        *v42 = v254;
        a1[17] = v255;
        v257 = v310;
        v258 = v311;
        v259 = v313;
        a1[22] = v312;
        a1[23] = v259;
        a1[20] = v257;
        a1[21] = v258;
        goto LABEL_47;
      }

      v228 = a1[5];
      v310 = a1[4];
      v311 = v228;
      v229 = a1[7];
      v312 = a1[6];
      v313 = v229;
      v230 = a1[1];
      v306 = *a1;
      v307 = v230;
      v231 = a1[3];
      v308 = a1[2];
      v309 = v231;
      v232 = *v41;
      v233 = a1[9];
      v234 = a1[11];
      a1[2] = a1[10];
      a1[3] = v234;
      *a1 = v232;
      a1[1] = v233;
      v235 = a1[12];
      v236 = a1[13];
      v237 = a1[15];
      a1[6] = a1[14];
      a1[7] = v237;
      a1[4] = v235;
      a1[5] = v236;
      v238 = v306;
      v239 = v307;
      v240 = v309;
      a1[10] = v308;
      a1[11] = v240;
      *v41 = v238;
      a1[9] = v239;
      v241 = v310;
      v242 = v311;
      v243 = v313;
      a1[14] = v312;
      a1[15] = v243;
      a1[12] = v241;
      a1[13] = v242;
      if (*(v42->n128_u32 + **(a3 + 8)) < *(v41->n128_u32 + **(a3 + 8)))
      {
        v244 = a1[13];
        v310 = a1[12];
        v311 = v244;
        v245 = a1[15];
        v312 = a1[14];
        v313 = v245;
        v246 = a1[9];
        v306 = *v41;
        v307 = v246;
        v247 = a1[11];
        v308 = a1[10];
        v309 = v247;
        v248 = *v42;
        v249 = a1[17];
        v250 = a1[19];
        a1[10] = a1[18];
        a1[11] = v250;
        *v41 = v248;
        a1[9] = v249;
        v251 = a1[20];
        v252 = a1[21];
        v253 = a1[23];
        a1[14] = a1[22];
        a1[15] = v253;
        a1[12] = v251;
        a1[13] = v252;
        goto LABEL_46;
      }
    }

LABEL_47:
    if (*(v45->n128_u32 + **(a3 + 8)) < *(v42->n128_u32 + **(a3 + 8)))
    {
      v260 = a1[21];
      v310 = a1[20];
      v311 = v260;
      v261 = a1[23];
      v312 = a1[22];
      v313 = v261;
      v262 = a1[17];
      v306 = *v42;
      v307 = v262;
      v263 = a1[19];
      v308 = a1[18];
      v309 = v263;
      v264 = a2[-4];
      v265 = a2[-3];
      v266 = a2[-1];
      a1[22] = a2[-2];
      a1[23] = v266;
      a1[20] = v264;
      a1[21] = v265;
      v267 = *v45;
      v268 = a2[-7];
      v269 = a2[-5];
      a1[18] = a2[-6];
      a1[19] = v269;
      *v42 = v267;
      a1[17] = v268;
      v270 = v309;
      a2[-6] = v308;
      a2[-5] = v270;
      v271 = v307;
      *v45 = v306;
      a2[-7] = v271;
      v272 = v313;
      a2[-2] = v312;
      a2[-1] = v272;
      v273 = v311;
      a2[-4] = v310;
      a2[-3] = v273;
      if (*(v42->n128_u32 + **(a3 + 8)) < *(v41->n128_u32 + **(a3 + 8)))
      {
        v274 = a1[13];
        v310 = a1[12];
        v311 = v274;
        v275 = a1[15];
        v312 = a1[14];
        v313 = v275;
        v276 = a1[9];
        v306 = *v41;
        v307 = v276;
        v277 = a1[11];
        v308 = a1[10];
        v309 = v277;
        v278 = *v42;
        v279 = a1[17];
        v280 = a1[19];
        a1[10] = a1[18];
        a1[11] = v280;
        *v41 = v278;
        a1[9] = v279;
        v281 = a1[20];
        v282 = a1[21];
        v283 = a1[23];
        a1[14] = a1[22];
        a1[15] = v283;
        a1[12] = v281;
        a1[13] = v282;
        v284 = v306;
        v285 = v307;
        v286 = v309;
        a1[18] = v308;
        a1[19] = v286;
        *v42 = v284;
        a1[17] = v285;
        v287 = v310;
        v288 = v311;
        v289 = v313;
        a1[22] = v312;
        a1[23] = v289;
        a1[20] = v287;
        a1[21] = v288;
        if (*(v41->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
        {
          v290 = a1[5];
          v310 = a1[4];
          v311 = v290;
          v291 = a1[7];
          v312 = a1[6];
          v313 = v291;
          v292 = a1[1];
          v306 = *a1;
          v307 = v292;
          v293 = a1[3];
          v308 = a1[2];
          v309 = v293;
          v294 = *v41;
          v295 = a1[9];
          v296 = a1[11];
          a1[2] = a1[10];
          a1[3] = v296;
          *a1 = v294;
          a1[1] = v295;
          v297 = a1[12];
          v298 = a1[13];
          v299 = a1[15];
          a1[6] = a1[14];
          a1[7] = v299;
          a1[4] = v297;
          a1[5] = v298;
          v300 = v306;
          v301 = v307;
          v302 = v309;
          a1[10] = v308;
          a1[11] = v302;
          *v41 = v300;
          a1[9] = v301;
          v303 = v310;
          v304 = v311;
          v305 = v313;
          a1[14] = v312;
          a1[15] = v305;
          result = 1;
          v41[4] = v303;
          v41[5] = v304;
          return result;
        }
      }
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = a2 - 8;
    if (*(a2[-8].n128_u32 + **(a3 + 8)) >= *(a1->n128_u32 + **(a3 + 8)))
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v25 = a1 + 8;
  v26 = **(a3 + 8);
  v27 = *(a1[8].n128_u32 + v26);
  v28 = a1 + 16;
  v29 = *(a1->n128_u32 + v26);
  v30 = *(a1[16].n128_u32 + v26);
  if (v27 >= v29)
  {
    if (v30 < v27)
    {
      v88 = a1[13];
      v310 = a1[12];
      v311 = v88;
      v89 = a1[15];
      v312 = a1[14];
      v313 = v89;
      v90 = a1[9];
      v306 = *v25;
      v307 = v90;
      v91 = a1[11];
      v308 = a1[10];
      v309 = v91;
      v92 = *v28;
      v93 = a1[17];
      v94 = a1[19];
      a1[10] = a1[18];
      a1[11] = v94;
      *v25 = v92;
      a1[9] = v93;
      v95 = a1[20];
      v96 = a1[21];
      v97 = a1[23];
      a1[14] = a1[22];
      a1[15] = v97;
      a1[12] = v95;
      a1[13] = v96;
      v98 = v306;
      v99 = v307;
      v100 = v309;
      a1[18] = v308;
      a1[19] = v100;
      *v28 = v98;
      a1[17] = v99;
      v101 = v310;
      v102 = v311;
      v103 = v313;
      a1[22] = v312;
      a1[23] = v103;
      a1[20] = v101;
      a1[21] = v102;
      if (*(v25->n128_u32 + **(a3 + 8)) < *(a1->n128_u32 + **(a3 + 8)))
      {
        v104 = a1[5];
        v310 = a1[4];
        v311 = v104;
        v105 = a1[7];
        v312 = a1[6];
        v313 = v105;
        v106 = a1[1];
        v306 = *a1;
        v307 = v106;
        v107 = a1[3];
        v308 = a1[2];
        v309 = v107;
        v108 = *v25;
        v109 = a1[9];
        v110 = a1[11];
        a1[2] = a1[10];
        a1[3] = v110;
        *a1 = v108;
        a1[1] = v109;
        v111 = a1[12];
        v112 = a1[13];
        v113 = a1[15];
        a1[6] = a1[14];
        a1[7] = v113;
        a1[4] = v111;
        a1[5] = v112;
        v114 = v306;
        v115 = v307;
        v116 = v309;
        a1[10] = v308;
        a1[11] = v116;
        *v25 = v114;
        a1[9] = v115;
        v117 = v310;
        v118 = v311;
        v119 = v313;
        a1[14] = v312;
        a1[15] = v119;
        a1[12] = v117;
        a1[13] = v118;
      }
    }
  }

  else
  {
    if (v30 >= v27)
    {
      v178 = a1[5];
      v310 = a1[4];
      v311 = v178;
      v179 = a1[7];
      v312 = a1[6];
      v313 = v179;
      v180 = a1[1];
      v306 = *a1;
      v307 = v180;
      v181 = a1[3];
      v308 = a1[2];
      v309 = v181;
      v182 = *v25;
      v183 = a1[9];
      v184 = a1[11];
      a1[2] = a1[10];
      a1[3] = v184;
      *a1 = v182;
      a1[1] = v183;
      v185 = a1[12];
      v186 = a1[13];
      v187 = a1[15];
      a1[6] = a1[14];
      a1[7] = v187;
      a1[4] = v185;
      a1[5] = v186;
      v188 = v306;
      v189 = v307;
      v190 = v309;
      a1[10] = v308;
      a1[11] = v190;
      *v25 = v188;
      a1[9] = v189;
      v191 = v310;
      v192 = v311;
      v193 = v313;
      a1[14] = v312;
      a1[15] = v193;
      a1[12] = v191;
      a1[13] = v192;
      if (*(v28->n128_u32 + **(a3 + 8)) >= *(v25->n128_u32 + **(a3 + 8)))
      {
        goto LABEL_34;
      }

      v194 = a1[13];
      v310 = a1[12];
      v311 = v194;
      v195 = a1[15];
      v312 = a1[14];
      v313 = v195;
      v196 = a1[9];
      v306 = *v25;
      v307 = v196;
      v197 = a1[11];
      v308 = a1[10];
      v309 = v197;
      v198 = *v28;
      v199 = a1[17];
      v200 = a1[19];
      a1[10] = a1[18];
      a1[11] = v200;
      *v25 = v198;
      a1[9] = v199;
      v201 = a1[20];
      v202 = a1[21];
      v203 = a1[23];
      a1[14] = a1[22];
      a1[15] = v203;
      a1[12] = v201;
      a1[13] = v202;
    }

    else
    {
      v31 = a1[5];
      v310 = a1[4];
      v311 = v31;
      v32 = a1[7];
      v312 = a1[6];
      v313 = v32;
      v33 = a1[1];
      v306 = *a1;
      v307 = v33;
      v34 = a1[3];
      v308 = a1[2];
      v309 = v34;
      v35 = *v28;
      v36 = a1[17];
      v37 = a1[19];
      a1[2] = a1[18];
      a1[3] = v37;
      *a1 = v35;
      a1[1] = v36;
      v38 = a1[20];
      v39 = a1[21];
      v40 = a1[23];
      a1[6] = a1[22];
      a1[7] = v40;
      a1[4] = v38;
      a1[5] = v39;
    }

    v204 = v306;
    v205 = v307;
    v206 = v309;
    a1[18] = v308;
    a1[19] = v206;
    *v28 = v204;
    a1[17] = v205;
    v207 = v310;
    v208 = v311;
    v209 = v313;
    a1[22] = v312;
    a1[23] = v209;
    a1[20] = v207;
    a1[21] = v208;
  }

LABEL_34:
  v210 = a1 + 24;
  if (&a1[24] == a2)
  {
    return 1;
  }

  v211 = 0;
  v212 = 0;
  while (1)
  {
    if (*(v210->n128_u32 + **(a3 + 8)) < *(v28->n128_u32 + **(a3 + 8)))
    {
      v218 = v210[5];
      v310 = v210[4];
      v311 = v218;
      v219 = v210[7];
      v312 = v210[6];
      v313 = v219;
      v220 = v210[1];
      v306 = *v210;
      v307 = v220;
      v221 = v210[3];
      v222 = v211;
      v308 = v210[2];
      v309 = v221;
      do
      {
        v223 = (a1->n128_u64 + v222);
        v224 = *(&a1[21] + v222);
        v223[28] = *(&a1[20] + v222);
        v223[29] = v224;
        v225 = *(&a1[23] + v222);
        v223[30] = *(&a1[22] + v222);
        v223[31] = v225;
        v226 = *(&a1[17] + v222);
        v223[24] = *(&a1[16] + v222);
        v223[25] = v226;
        v227 = *(&a1[19] + v222);
        v223[26] = *(&a1[18] + v222);
        v223[27] = v227;
        if (v222 == -256)
        {
          v213 = a1;
          goto LABEL_37;
        }

        v222 -= 128;
      }

      while (*(v306.n128_u32 + **(a3 + 8)) < *(v223 + **(a3 + 8) + 128));
      v213 = (a1 + v222 + 384);
LABEL_37:
      v214 = v311;
      v213[4] = v310;
      v213[5] = v214;
      v215 = v313;
      v213[6] = v312;
      v213[7] = v215;
      v216 = v307;
      *v213 = v306;
      v213[1] = v216;
      v217 = v309;
      ++v212;
      v213[2] = v308;
      v213[3] = v217;
      if (v212 == 8)
      {
        return &v210[8] == a2;
      }
    }

    v28 = v210;
    v211 += 128;
    v210 += 8;
    if (v210 == a2)
    {
      return 1;
    }
  }
}

id *std::array<WTF::RetainPtrArc<MTLArgumentDescriptor>,4ul>::~array(id *a1)
{
  v2 = a1[3];
  a1[3] = 0;

  v3 = a1[2];
  a1[2] = 0;

  v4 = a1[1];
  a1[1] = 0;

  v5 = *a1;
  *a1 = 0;

  return a1;
}

id *std::array<WTF::RetainPtrArc<NSArray<MTLArgumentDescriptor *>>,3ul>::~array(id *a1)
{
  v2 = a1[2];
  a1[2] = 0;

  v3 = a1[1];
  a1[1] = 0;

  v4 = *a1;
  *a1 = 0;

  return a1;
}

unint64_t std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v10;
        if (*(v76 + **(a3 + 8)) < *(*v10 + **(a3 + 8)))
        {
          *v10 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v25 = v10 + 1;
      v79 = v10[1];
      v51 = v10 + 2;
      v21 = v10[2];
      v14 = *(a3 + 8);
      v17 = *v14;
      v80 = *(v79 + *v14);
      v81 = *v10;
      v82 = *(v21 + *v14);
      if (v80 < *(*v10 + *v14))
      {
        v83 = v10;
        v84 = (v10 + 2);
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v79;
          v10[1] = v81;
          v17 = *v14;
          v83 = v10 + 1;
          v84 = (v10 + 2);
          result = v81;
          if (*(v21 + *v14) >= *(v81 + *v14))
          {
            goto LABEL_206;
          }
        }

        goto LABEL_190;
      }

      if (v82 >= v80)
      {
        goto LABEL_206;
      }

      *v25 = v21;
      *v51 = v79;
      v134 = *v14;
      v83 = v10;
      v84 = (v10 + 1);
      result = v79;
      if (*(v21 + *v14) < *(v81 + *v14))
      {
LABEL_190:
        *v83 = v21;
        *v84 = v81;
        v134 = *v14;
        v79 = result;
      }

      v135 = *(a2 - 1);
      if (*(v134 + v135) >= *(v134 + v79))
      {
        return result;
      }

      goto LABEL_207;
    }

    if (v11 == 5)
    {
      v78 = *(a3 + 8);

      return std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v91 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v92 = *(a3 + 8);
            v93 = 8;
            v94 = v10;
            do
            {
              v97 = *v94;
              v96 = v94[1];
              v94 = v91;
              if (*(v96 + *v92) < *(v97 + *v92))
              {
                v98 = v93;
                do
                {
                  *(v10 + v98) = v97;
                  v99 = v98 - 8;
                  if (v98 == 8)
                  {
                    v95 = v10;
                    goto LABEL_141;
                  }

                  v97 = *(v10 + v98 - 16);
                  v98 -= 8;
                }

                while (*(v96 + *v92) < *(v97 + *v92));
                v95 = (v10 + v99);
LABEL_141:
                *v95 = v96;
              }

              v91 = v94 + 1;
              v93 += 8;
            }

            while (v94 + 1 != a2);
          }
        }

        return result;
      }

      if (v10 == a2)
      {
        return result;
      }

      v14 = (v10 + 1);
      if (v10 + 1 == a2)
      {
        return result;
      }

      v51 = 0;
      v25 = *(a3 + 8);
      v139 = 8;
      while (1)
      {
        v140 = *(v51 + v10);
        v51 = v139;
        v21 = *v14;
        if (*(*v14 + *v25) < *(v140 + *v25))
        {
          break;
        }

LABEL_199:
        v139 = (v51 + 1);
        if (++v14 == a2)
        {
          return result;
        }
      }

      v17 = 0;
      while (1)
      {
        *(v17 + v14) = v140;
        if (!(v17 + v51))
        {
          break;
        }

        v140 = *(v17-- + v14 - 16);
        if (*(v21 + *v25) >= *(v140 + *v25))
        {
          *(v17 + v14) = v21;
          goto LABEL_199;
        }
      }

LABEL_205:
      __break(1u);
LABEL_206:
      v79 = v21;
      v135 = *(a2 - 1);
      if (*(v17 + v135) >= *(v17 + v79))
      {
        return result;
      }

LABEL_207:
      *v51 = v135;
      *(a2 - 1) = v79;
      v141 = *v51;
      v142 = *v25;
      if (*(v141 + *v14) < *(v142 + *v14))
      {
        v9[1] = v141;
        v9[2] = v142;
        v143 = *v14;
        v144 = *v9;
        if (*(v141 + v143) < *(*v9 + v143))
        {
          *v9 = v141;
          v9[1] = v144;
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v100 = (v11 - 2) >> 1;
        v101 = *(a3 + 8);
        v102 = v100;
        do
        {
          if (v100 >= v102)
          {
            v104 = (2 * (v102 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v105 = &v10[v104];
            if (2 * (v102 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v11)
            {
              v107 = *v105;
              v110 = &v10[v102];
              v111 = *v110;
              result = *(*v105 + *v101);
              if (result >= *(*v110 + *v101))
              {
                goto LABEL_167;
              }
            }

            else
            {
              v106 = *v101;
              v107 = v105[1];
              v108 = *(*v105 + *v101);
              v109 = *(v107 + *v101);
              if (v108 < v109)
              {
                ++v105;
              }

              else
              {
                v107 = *v105;
              }

              if (v108 < v109)
              {
                v104 = 2 * (v102 & 0x1FFFFFFFFFFFFFFFLL) + 2;
              }

              v110 = &v10[v102];
              v111 = *v110;
              result = *(v107 + v106);
              if (result >= *(*v110 + v106))
              {
LABEL_167:
                while (1)
                {
                  *v110 = v107;
                  v110 = v105;
                  if (v100 < v104)
                  {
                    break;
                  }

                  v114 = (2 * (v104 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                  v105 = &v10[v114];
                  v104 = 2 * v104 + 2;
                  if (v104 < v11)
                  {
                    v107 = *v105;
                    v112 = *v101;
                    if (*(*v105 + *v101) >= *(v105[1] + *v101))
                    {
                      v104 = v114;
                    }

                    else
                    {
                      v107 = v105[1];
                      ++v105;
                    }

                    v113 = *(v107 + v112);
                    result = *(v111 + v112);
                    if (v113 < result)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v107 = *v105;
                    v104 = v114;
                    result = *(v111 + *v101);
                    if (*(*v105 + *v101) < result)
                    {
                      break;
                    }
                  }
                }

                *v110 = v111;
              }
            }
          }

          v103 = v102-- <= 0;
        }

        while (!v103);
        do
        {
          v115 = 0;
          v116 = *v10;
          v117 = (v11 - 2) >> 1;
          v118 = *(a3 + 8);
          v119 = v10;
          do
          {
            while (1)
            {
              v126 = &v119[v115];
              v125 = v126 + 1;
              v127 = (2 * v115) | 1;
              v115 = 2 * v115 + 2;
              if (v115 < v11)
              {
                break;
              }

              v115 = v127;
              *v119 = *v125;
              v119 = v126 + 1;
              if (v127 > v117)
              {
                goto LABEL_182;
              }
            }

            v122 = v126[2];
            v120 = v126 + 2;
            v121 = v122;
            result = *(v120 - 1);
            v123 = *(result + *v118);
            v124 = *(v122 + *v118);
            if (v123 < v124)
            {
              v125 = v120;
            }

            else
            {
              v121 = *(v120 - 1);
            }

            if (v123 >= v124)
            {
              v115 = v127;
            }

            *v119 = v121;
            v119 = v125;
          }

          while (v115 <= v117);
LABEL_182:
          if (v125 == --a2)
          {
            *v125 = v116;
          }

          else
          {
            *v125 = *a2;
            *a2 = v116;
            v128 = (v125 - v10 + 8) >> 3;
            v103 = v128 < 2;
            v129 = v128 - 2;
            if (!v103)
            {
              v130 = v129 >> 1;
              v131 = &v10[v130];
              v132 = *v131;
              v133 = *v125;
              if (*(*v131 + *v118) < *(*v125 + *v118))
              {
                do
                {
                  *v125 = v132;
                  v125 = v131;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = &v10[v130];
                  v132 = *v131;
                }

                while (*(*v131 + *v118) < *(v133 + *v118));
                *v125 = v133;
              }
            }
          }

          v103 = v11-- <= 2;
        }

        while (!v103);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a3 + 8);
    v15 = *v14;
    v16 = *(a2 - 1);
    v17 = *(v16 + *v14);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(*v10 + v15);
      if (v23 >= *(*v13 + v15))
      {
        if (v17 < v23)
        {
          *v10 = v16;
          *(a2 - 1) = v21;
          v21 = *v13;
          v17 = *(*v10 + *v14);
          if (v17 < *(*v13 + *v14))
          {
            *v13 = *v10;
            *v10 = v21;
            --a4;
            v25 = v21;
            if ((a5 & 1) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          }
        }
      }

      else
      {
        if (v17 < v23)
        {
          *v13 = v16;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v34 = *(a2 - 1);
        v21 = *(v22 + *v14);
        if (*(v34 + *v14) < v21)
        {
          *v10 = v34;
LABEL_37:
          *(a2 - 1) = v22;
        }
      }

      --a4;
      v25 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v18 = *v12;
    v19 = *v10;
    v20 = *(*v12 + v15);
    if (v20 >= *(*v10 + v15))
    {
      if (v17 < v20)
      {
        *v12 = v16;
        *(a2 - 1) = v18;
        v24 = *v10;
        if (*(*v12 + *v14) < *(*v10 + *v14))
        {
          *v10 = *v12;
          *v12 = v24;
        }
      }
    }

    else
    {
      if (v17 >= v20)
      {
        *v10 = v18;
        *v12 = v19;
        v26 = *(a2 - 1);
        if (*(v26 + *v14) >= *(v19 + *v14))
        {
          goto LABEL_29;
        }

        *v12 = v26;
      }

      else
      {
        *v10 = v16;
      }

      *(a2 - 1) = v19;
    }

LABEL_29:
    v27 = v12 - 1;
    v28 = *(v12 - 1);
    v29 = v10[1];
    v30 = *(v28 + *v14);
    v31 = *(a2 - 2);
    v32 = *(v31 + *v14);
    if (v30 >= *(v29 + *v14))
    {
      if (v32 < v30)
      {
        *v27 = v31;
        *(a2 - 2) = v28;
        v33 = v10[1];
        if (*(*v27 + *v14) < *(v33 + *v14))
        {
          v10[1] = *v27;
          *v27 = v33;
        }
      }
    }

    else
    {
      if (v32 >= v30)
      {
        v10[1] = v28;
        *v27 = v29;
        v35 = *(a2 - 2);
        if (*(v35 + *v14) >= *(v29 + *v14))
        {
          goto LABEL_43;
        }

        *v27 = v35;
      }

      else
      {
        v10[1] = v31;
      }

      *(a2 - 2) = v29;
    }

LABEL_43:
    v37 = v12[1];
    v21 = (v12 + 1);
    v36 = v37;
    v38 = v10[2];
    v39 = *(v37 + *v14);
    v40 = *(a2 - 3);
    v41 = *(v40 + *v14);
    if (v39 >= *(v38 + *v14))
    {
      if (v41 < v39)
      {
        *v21 = v40;
        *(a2 - 3) = v36;
        v42 = v10[2];
        if (*(*v21 + *v14) < *(v42 + *v14))
        {
          v10[2] = *v21;
          *v21 = v42;
        }
      }

      goto LABEL_52;
    }

    if (v41 < v39)
    {
      v10[2] = v40;
LABEL_51:
      *(a2 - 3) = v38;
      goto LABEL_52;
    }

    v10[2] = v36;
    *v21 = v38;
    v43 = *(a2 - 3);
    if (*(v43 + *v14) < *(v38 + *v14))
    {
      *v21 = v43;
      goto LABEL_51;
    }

LABEL_52:
    v17 = *v13;
    v44 = *v27;
    v45 = *(*v13 + *v14);
    v46 = *v21;
    v47 = *(*v21 + *v14);
    if (v45 < *(*v27 + *v14))
    {
      if (v47 >= v45)
      {
        *v27 = v17;
        *v13 = v44;
        v27 = v13;
        v17 = v46;
        if (*(v46 + *v14) >= *(v44 + *v14))
        {
          v48 = *v10;
          *v10 = v44;
          *v13 = v48;
          --a4;
          v25 = *v10;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    if (v47 >= v45)
    {
      goto LABEL_60;
    }

    *v13 = v46;
    *v21 = v17;
    v21 = v13;
    v17 = v44;
    if (*(v46 + *v14) >= *(v44 + *v14))
    {
      v66 = *v10;
      *v10 = v46;
      *v13 = v66;
      --a4;
      v25 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v51 = v10 + 1;
      if (v10 + 1 == a2)
      {
        goto LABEL_205;
      }

      v14 = *(a3 + 8);
      v52 = *v51;
      v17 = *v14;
      v53 = *(v25 + *v14);
      v21 = a2;
      if (*(*v51 + *v14) < v53)
      {
        v51 = v10 + 2;
        while (v51 != a2)
        {
          v54 = *v51++;
          v52 = v54;
          v21 = *(v17 + v54);
          if (v21 >= v53)
          {
            v55 = v51 - 2;
            --v51;
            v21 = a2;
            while (v21 != v10)
            {
              v56 = *(v21 - 8);
              v21 -= 8;
              if (*(v17 + v56) < v53)
              {
                if (v51 < v21)
                {
                  goto LABEL_75;
                }

                goto LABEL_86;
              }
            }

            goto LABEL_205;
          }
        }

        goto LABEL_205;
      }

      do
      {
        if (v51 >= v21)
        {
          break;
        }

        v57 = *(v21 - 8);
        v21 -= 8;
      }

      while (*(v17 + v57) >= v53);
      v55 = v10;
      if (v51 < v21)
      {
LABEL_75:
        v58 = *v21;
        v59 = v51;
        v17 = v21;
LABEL_76:
        *v59 = v58;
        result = (v59 + 1);
        *v17 = v52;
        if (v59 + 1 != a2)
        {
          v52 = *result;
          v60 = *v14;
          v61 = *(v25 + *v14);
          if (*(*result + *v14) >= v61)
          {
            v55 = v59++;
LABEL_83:
            while (v17 != v10)
            {
              v64 = *--v17;
              v58 = v64;
              result = *(v64 + v60);
              if (result < v61)
              {
                if (v59 < v17)
                {
                  goto LABEL_76;
                }

                goto LABEL_86;
              }
            }
          }

          else
          {
            v62 = v59 + 2;
            while (v62 != a2)
            {
              v63 = *v62++;
              v52 = v63;
              if (*(v63 + v60) >= v61)
              {
                v55 = v62 - 2;
                v59 = v62 - 1;
                goto LABEL_83;
              }
            }
          }
        }

        goto LABEL_205;
      }

LABEL_86:
      if (v55 != v10)
      {
        *v10 = *v55;
      }

      *v55 = v25;
      if (v51 < v21)
      {
        goto LABEL_91;
      }

      v65 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**>(v10, v55, *(a3 + 8));
      v10 = v55 + 1;
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**>(v55 + 1, a2, *(a3 + 8));
      if (result)
      {
        a2 = v55;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_91:
        result = std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,false>(v9, v55, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v55 + 1;
      }
    }

    else
    {
LABEL_59:
      *v27 = v46;
      *v21 = v44;
LABEL_60:
      v49 = *v10;
      *v10 = v17;
      *v13 = v49;
      --a4;
      v25 = *v10;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v50 = *v14;
      v17 = *(v25 + *v14);
      if (*(*(v10 - 1) + *v14) < v17)
      {
        goto LABEL_62;
      }

      if (v17 < *(*(a2 - 1) + v50))
      {
        v51 = v10 + 1;
        while (v51 != a2)
        {
          v67 = *v51++;
          v21 = *(v67 + v50);
          if (v17 < v21)
          {
            v21 = (v51 - 1);
            goto LABEL_102;
          }
        }

        goto LABEL_205;
      }

      v68 = v10 + 1;
      do
      {
        v21 = v68;
        if (v68 >= a2)
        {
          break;
        }

        ++v68;
      }

      while (v17 >= *(*v21 + v50));
LABEL_102:
      v51 = a2;
      if (v21 < a2)
      {
        v51 = a2;
        while (v51 != v10)
        {
          v69 = *--v51;
          if (v17 >= *(v69 + v50))
          {
            goto LABEL_106;
          }
        }

        goto LABEL_205;
      }

LABEL_106:
      if (v21 < v51)
      {
        v70 = *v21;
        v71 = *v51;
        v10 = v21;
LABEL_108:
        *v10++ = v71;
        *v51 = v70;
        if (v10 != a2)
        {
          v17 = *v14;
          v70 = *v10;
          v72 = *(v25 + *v14);
          if (v72 < *(*v10 + *v14))
          {
            goto LABEL_114;
          }

          v21 += 16;
          while (v21 != a2)
          {
            v73 = *v21;
            v21 += 8;
            v70 = v73;
            if (v72 < *(v17 + v73))
            {
              v10 = (v21 - 8);
LABEL_114:
              while (v51 != v9)
              {
                v74 = *--v51;
                v71 = v74;
                v21 = *(v17 + v74);
                if (v72 >= v21)
                {
                  v21 = v10;
                  if (v10 < v51)
                  {
                    goto LABEL_108;
                  }

                  goto LABEL_119;
                }
              }

              goto LABEL_205;
            }
          }
        }

        goto LABEL_205;
      }

      v10 = v21;
LABEL_119:
      v75 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v75;
      }

      a5 = 0;
      *v75 = v25;
    }
  }

  v85 = *(a3 + 8);
  v86 = *v10;
  v87 = v10[1];
  v88 = *(v87 + *v85);
  v89 = *(a2 - 1);
  v90 = *(v89 + *v85);
  if (v88 >= *(*v10 + *v85))
  {
    if (v90 < v88)
    {
      v10[1] = v89;
      *(a2 - 1) = v87;
      v136 = *v85;
      v138 = *v10;
      v137 = v10[1];
      if (*(v137 + v136) < *(*v10 + v136))
      {
        *v10 = v137;
        v10[1] = v138;
      }
    }
  }

  else
  {
    if (v90 >= v88)
    {
      *v10 = v87;
      v10[1] = v86;
      v145 = *(a2 - 1);
      if (*(v145 + *v85) >= *(v86 + *v85))
      {
        return result;
      }

      v10[1] = v145;
    }

    else
    {
      *v10 = v89;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

uint64_t *std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(*a2 + *a6);
  v9 = *a3;
  v10 = *(*a3 + *a6);
  if (v8 < *(*result + *a6))
  {
    if (v10 >= v8)
    {
      *result = v6;
      *a2 = v7;
      v6 = *a3;
      if (*(*a3 + *a6) >= *(v7 + *a6))
      {
        goto LABEL_11;
      }

      *a2 = v6;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v6 = v7;
LABEL_11:
    v12 = *a4;
    v13 = *a6;
    if (*(*a4 + *a6) >= *(v6 + *a6))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v8)
  {
    v6 = *a3;
    v12 = *a4;
    v13 = *a6;
    if (*(*a4 + *a6) >= *(*a3 + *a6))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v6;
    v11 = *result;
    if (*(*a2 + *a6) >= *(*result + *a6))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v6 = *a3;
    v12 = *a4;
    v13 = *a6;
    if (*(*a4 + *a6) >= *(*a3 + *a6))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v6;
  v13 = *a6;
  v14 = *a2;
  if (*(*a3 + *a6) < *(*a2 + *a6))
  {
    *a2 = *a3;
    *a3 = v14;
    v13 = *a6;
    v15 = *result;
    if (*(*a2 + *a6) < *(*result + *a6))
    {
      *result = *a2;
      *a2 = v15;
      v13 = *a6;
    }
  }

LABEL_16:
  v16 = *a4;
  if (*(*a5 + v13) < *(*a4 + v13))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (*(*a4 + *a6) < *(*a3 + *a6))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (*(*a3 + *a6) < *(*a2 + *a6))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (*(*a2 + *a6) < *(*result + *a6))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = *(v9 + *a3);
      v11 = *(a2 - 1);
      v12 = *(v11 + *a3);
      if (v10 >= *(*a1 + *a3))
      {
        if (v12 >= v10)
        {
          return 1;
        }

        a1[1] = v11;
        *(a2 - 1) = v9;
        v35 = *a1;
        v34 = a1[1];
        if (*(v34 + *a3) >= *(*a1 + *a3))
        {
          return 1;
        }

        *a1 = v34;
        a1[1] = v35;
        return 1;
      }

      else if (v12 >= v10)
      {
        *a1 = v9;
        a1[1] = v8;
        v50 = *(a2 - 1);
        if (*(v50 + *a3) >= *(v8 + *a3))
        {
          return 1;
        }

        a1[1] = v50;
        *(a2 - 1) = v8;
        return 1;
      }

      else
      {
        *a1 = v11;
        *(a2 - 1) = v8;
        return 1;
      }
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int WebGPU::BindGroupLayout::Entry::*> &,WebGPU::BindGroupLayout::Entry const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v14 = a1 + 2;
      v13 = a1[2];
      v15 = a1[1];
      v16 = *(v15 + *a3);
      v17 = *a1;
      v18 = *(v13 + *a3);
      if (v16 >= *(*a1 + *a3))
      {
        if (v18 >= v16)
        {
          goto LABEL_28;
        }

        a1[1] = v13;
        *v14 = v15;
        v21 = *(v13 + *a3);
        v22 = *(v17 + *a3);
        v19 = a1;
        v20 = a1 + 1;
      }

      else
      {
        v19 = a1;
        v20 = a1 + 2;
        if (v18 < v16)
        {
LABEL_27:
          *v19 = v13;
          *v20 = v17;
          goto LABEL_28;
        }

        *a1 = v15;
        a1[1] = v17;
        v21 = *(v13 + *a3);
        v22 = *(v17 + *a3);
        v19 = a1 + 1;
        v20 = a1 + 2;
      }

      if (v21 < v22)
      {
        goto LABEL_27;
      }

LABEL_28:
      v36 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v37 = 0;
      for (i = 24; ; i += 8)
      {
        v39 = *v36;
        v40 = *v14;
        if (*(*v36 + *a3) < *(v40 + *a3))
        {
          break;
        }

LABEL_31:
        v14 = v36++;
        if (v36 == a2)
        {
          return 1;
        }
      }

      v41 = i;
      do
      {
        *(a1 + v41) = v40;
        v42 = v41 - 8;
        if (v41 == 8)
        {
          *a1 = v39;
          if (++v37 != 8)
          {
            goto LABEL_31;
          }

          return v36 + 1 == a2;
        }

        v40 = *(a1 + v41 - 16);
        v41 -= 8;
      }

      while (*(v39 + *a3) < *(v40 + *a3));
      *(a1 + v42) = v39;
      if (++v37 != 8)
      {
        goto LABEL_31;
      }

      return v36 + 1 == a2;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(v24 + *a3);
    v29 = *a1;
    v30 = *(v26 + *a3);
    if (v28 >= *(*a1 + *a3))
    {
      if (v30 >= v28)
      {
        goto LABEL_43;
      }

      *v23 = v26;
      *v25 = v24;
      v43 = *a3;
      v44 = *(v26 + *a3);
      v45 = *(v29 + *a3);
      v31 = a1;
      v32 = a1 + 1;
      v33 = v24;
      if (v44 >= v45)
      {
LABEL_41:
        v46 = *(a2 - 1);
        if (*(v46 + v43) >= *(v24 + v43))
        {
          return 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v31 = a1;
      v32 = a1 + 2;
      v33 = *a1;
      if (v30 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v27 = *a3;
        v31 = a1 + 1;
        v32 = a1 + 2;
        v33 = v29;
        if (*(v26 + *a3) >= *(v29 + *a3))
        {
LABEL_43:
          v24 = v26;
          v46 = *(a2 - 1);
          if (*(v46 + v27) >= *(v24 + v27))
          {
            return 1;
          }

LABEL_44:
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          if (*(v47 + *a3) >= *(v48 + *a3))
          {
            return 1;
          }

          a1[1] = v47;
          a1[2] = v48;
          v49 = *a1;
          if (*(v47 + *a3) >= *(*a1 + *a3))
          {
            return 1;
          }

          *a1 = v47;
          a1[1] = v49;
          return 1;
        }
      }
    }

    *v31 = v26;
    *v32 = v29;
    v43 = *a3;
    v24 = v33;
    goto LABEL_41;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  v6 = *(a2 - 1);
  v7 = *a1;
  if (*(v6 + *a3) >= *(*a1 + *a3))
  {
    return 1;
  }

  *a1 = v6;
  *(a2 - 1) = v7;
  return 1;
}