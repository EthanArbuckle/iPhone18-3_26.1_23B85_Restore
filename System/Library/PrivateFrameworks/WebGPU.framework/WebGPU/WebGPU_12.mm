void WebGPU::Sampler::SamplerStateWithReferences::~SamplerStateWithReferences(WebGPU::Sampler::SamplerStateWithReferences *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *this;
  *this = 0;
}

WebGPU::Sampler *wgpuSamplerRelease(WebGPU::Sampler *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
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

WTF::StringImpl *wgpuSamplerSetLabel(WebGPU::Sampler *a1, char *__s)
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
  }

  v5 = *(a1 + 4);
  *(a1 + 4) = v9;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v3);
  }

  if (*a1 == 1)
  {
    WebGPU::Sampler::~Sampler(a1, v3, v4);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256E4FF8(_Unwind_Exception *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Sampler,WTF::RawPtrTraits<WebGPU::Sampler>,WTF::DefaultRefDerefTraits<WebGPU::Sampler>>::~Ref(va, a2, a3);
  _Unwind_Resume(a1);
}

_DWORD *WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  v11 = v9 + 4;
  *a1 = (v9 + 4);
  v12 = a2 - 1;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 8 * v13);
      v16 = *v15;
      if ((*v15 + 1) >= 2)
      {
        v17 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
        v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
        v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
        v20 = v12 & ((v19 >> 31) ^ v19);
        v21 = 1;
        do
        {
          v22 = v20;
          v23 = *&v11[2 * v20];
          v20 = (v20 + v21++) & v12;
        }

        while (v23);
        *&v11[2 * v22] = v16;
        if (v15 == a3)
        {
          v14 = &v11[2 * v22];
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v10);
  }

  return v14;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::Sampler::SamplerStateWithReferences,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::Sampler::SamplerStateWithReferences>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    while (1)
    {
      v14 = v4 + 24 * v11;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
            v21 = *(v15 + 4);
            if (v21 >= 0x100)
            {
              goto LABEL_20;
            }

LABEL_22:
            v22 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v20 = 0;
            v21 = *(v15 + 4);
            if (v21 < 0x100)
            {
              goto LABEL_22;
            }

LABEL_20:
            v22 = v21 >> 8;
          }

          v23 = 0;
          do
          {
            v24 = v19 + 24 * (v22 & v20);
            v22 = ++v23 + (v22 & v20);
          }

          while (*v24);
          v25 = *(v24 + 16);
          if (v25)
          {
            WTF::fastFree((v25 - 16), v8);
          }

          v26 = *(v24 + 8);
          *(v24 + 8) = 0;

          v28 = *v24;
          *v24 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v27);
          }

          v29 = *v14;
          *v14 = 0;
          *v24 = v29;
          v30 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v24 + 8) = v30;
          *(v24 + 16) = 0;
          v31 = *(v14 + 16);
          *(v14 + 16) = 0;
          *(v24 + 16) = v31;
          v32 = *(v14 + 16);
          if (v32)
          {
            WTF::fastFree((v32 - 16), v27);
          }

          v33 = *(v14 + 8);
          *(v14 + 8) = 0;

          v34 = *v14;
          *v14 = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v8);
          }

          if (v14 == a3)
          {
            v12 = v24;
          }

          goto LABEL_10;
        }

        v16 = *(v14 + 16);
        if (v16)
        {
          WTF::fastFree((v16 - 16), v8);
        }

        v17 = *(v14 + 8);
        *(v14 + 8) = 0;

        v18 = *v14;
        *v14 = 0;
        if (v18)
        {
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v8);
          }
        }
      }

LABEL_10:
      if (++v11 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_36:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

uint64_t *WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E556CLL);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::rehash(a2, 8u, 0);
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
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v22 = v7 + 8 * *(v7 - 4);
        *v6 = v13;
        v6[1] = v22;
        *(v6 + 16) = 0;
        return result;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (!v15)
    {
      goto LABEL_15;
    }

    *v15 = 0;
    v7 = *a2;
    *v15 = *a3;
    v17 = vadd_s32(*(v7 - 16), 0x1FFFFFFFFLL);
    *(v7 - 16) = v17;
    v18 = v17.i32[1];
    v19 = (v17.i32[1] + v17.i32[0]);
    v20 = *(v7 - 4);
    if (v20 > 0x400)
    {
LABEL_13:
      if (v20 > 2 * v19)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  else
  {
LABEL_15:
    *v13 = v3;
    v21 = *(v7 - 16);
    v18 = *(v7 - 12) + 1;
    *(v7 - 12) = v18;
    v15 = v13;
    v19 = (v18 + v21);
    v20 = *(v7 - 4);
    if (v20 > 0x400)
    {
      goto LABEL_13;
    }
  }

  if (3 * v20 <= 4 * v19)
  {
    if (!v20)
    {
      result = WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::rehash(a2, 8u, v15);
      v15 = result;
      v7 = *a2;
      if (*a2)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

LABEL_18:
    result = WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::rehash(a2, v20 << (6 * v18 >= (2 * v20)), v15);
    v15 = result;
    v7 = *a2;
    if (*a2)
    {
LABEL_19:
      v20 = *(v7 - 4);
      goto LABEL_23;
    }

LABEL_22:
    v20 = 0;
  }

LABEL_23:
  *v6 = v15;
  v6[1] = v7 + 8 * v20;
  *(v6 + 16) = 1;
  return result;
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl ***a3)
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
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 + 1 >= 2)
      {
        break;
      }

LABEL_6:
      if (++v11 == v7)
      {
        goto LABEL_19;
      }
    }

    v15 = *a1;
    if (*a1)
    {
      v16 = *(v15 - 8);
      v17 = *v14;
      v18 = *(*v14 + 4);
      if (v18 >= 0x100)
      {
LABEL_10:
        v19 = v18 >> 8;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = *v14;
      v18 = *(*v14 + 4);
      if (v18 >= 0x100)
      {
        goto LABEL_10;
      }
    }

    v19 = WTF::StringImpl::hashSlowCase(v17);
LABEL_13:
    v20 = 0;
    do
    {
      v21 = v19 & v16;
      v19 = ++v20 + v21;
    }

    while (*(v15 + 8 * v21));
    *(v15 + 8 * v21) = *v13;
    if (v13 == a3)
    {
      v12 = v15 + 8 * v21;
    }

    goto LABEL_6;
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_19:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::KeyValuePairKeyExtractor<WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,objc_object  {objcproto15MTLSamplerState}* {__strong},WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_object  {objcproto15MTLSamplerState}* {__strong}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(uint64_t *a1, unsigned int a2)
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
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v10 = a2;
  v11 = result + 6;
  do
  {
    *(v11 - 1) = 0;
    *v11 = 0;
    v11 += 2;
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
    v12 = 0;
    while (1)
    {
      v13 = v4 + 16 * v12;
      v14 = *v13;
      if (*v13 != -1)
      {
        break;
      }

LABEL_9:
      if (++v12 == v5)
      {
        goto LABEL_29;
      }
    }

    if (!v14)
    {
      objc_destroyWeak((v13 + 8));
      v15 = *v13;
      *v13 = 0;
      if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    v16 = *a1;
    if (*a1)
    {
      v17 = *(v16 - 8);
      v18 = v14[4];
      if (v18 >= 0x100)
      {
LABEL_17:
        v19 = v18 >> 8;
LABEL_20:
        v20 = 0;
        do
        {
          v21 = v19 & v17;
          v19 = ++v20 + v21;
        }

        while (*(v16 + 16 * v21));
        v22 = v16 + 16 * v21;
        objc_destroyWeak((v22 + 8));
        v24 = *v22;
        *v22 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v23);
        }

        v25 = *v13;
        *v13 = 0;
        *v22 = v25;
        objc_moveWeak((v22 + 8), (v13 + 8));
        objc_destroyWeak((v13 + 8));
        v15 = *v13;
        *v13 = 0;
        if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_9;
        }

LABEL_14:
        WTF::StringImpl::destroy(v15, v8);
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
      v18 = v14[4];
      if (v18 >= 0x100)
      {
        goto LABEL_17;
      }
    }

    v19 = WTF::StringImpl::hashSlowCase(v14);
    goto LABEL_20;
  }

  if (v4)
  {
LABEL_29:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

id WebGPU::ShaderModule::createLibrary(void *a1, atomic_uint **a2, atomic_uint **a3, id *a4, unsigned int *a5)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_opt_new();
  v36 = @"__wgslMetalAppleGPUFamily";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", *a5];
  v37[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v10 setPreprocessorMacros:v12];

  if (atomic_load_explicit(&qword_28159C968, memory_order_acquire) != -1)
  {
    v33 = &v31;
    v32 = &v33;
    std::__call_once(&qword_28159C968, &v32, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::ShaderModule::createLibrary(objc_object  {objcproto9MTLDevice}*,WTF::String const&,WTF&&,NSError * {__autoreleasing}*,WGSL::DeviceState &&)::$_0 &&>>);
  }

  [v10 setMathMode:{WebGPU::ShaderModule::createLibrary(objc_object  {objcproto9MTLDevice}*, WTF::String const&, WTF&&, NSError * {__autoreleasing}*, WGSL::DeviceState &&)::mathMode}];
  [v10 setMathFloatingPointFunctions:qword_28159C960];
  v13 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v33, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v33 = &stru_2838D6D18;
  }

  v15 = [v9 newLibraryWithSource:v33 options:v10 error:a4];
  v16 = v33;
  v33 = 0;

  if (a4 && *a4)
  {
    v30 = [*a4 localizedDescription];
    WTFLogAlways();

    v17 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = *a2;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v32, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v32 = &stru_2838D6D18;
    }

    v21 = v32;
    v22 = [*a4 localizedDescription];
    v33 = [v18 initWithFormat:@"Failed to compile the shader source, generated metal:\n%@ - error %@", v21, v22];
    v23 = v33;
    v35 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *a4 = [v17 errorWithDomain:@"WebGPU" code:1 userInfo:v24];

    v25 = v32;
    v32 = 0;

    v15 = 0;
  }

  else
  {
    v26 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v33, v26);
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }
    }

    else
    {
      v33 = &stru_2838D6D18;
    }

    [v15 setLabel:v33];
    v28 = v33;
    v33 = 0;
  }

  return v15;
}

void sub_2256E5C70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  _Unwind_Resume(a1);
}

void WebGPU::Device::createShaderModule(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t *a3@<X8>)
{
  v276 = *MEMORY[0x277D85DE8];
  if (!*a2 || !*(a1 + 8))
  {
    v275 = 2;
    if (WebGPU::ShaderModule::s_heapRef)
    {
      goto LABEL_47;
    }

    goto LABEL_453;
  }

  v5 = 0;
  while (1)
  {
    a2 = *a2;
    if (!a2)
    {
      break;
    }

    if (!v5)
    {
      v5 = a2;
      if (*(a2 + 2) == 6)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

  if (!v5)
  {
LABEL_46:
    v275 = 2;
    if (WebGPU::ShaderModule::s_heapRef)
    {
LABEL_47:
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ShaderModule::s_heapRef, a2);
      goto LABEL_48;
    }

LABEL_453:
    NonCompact = WebGPU::ShaderModule::operatorNewSlow(0);
LABEL_48:
    v30 = NonCompact;
    WebGPU::ShaderModule::ShaderModule(NonCompact, a1, &v273);
    *a3 = v30;
    if (v275 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(&v273, v31);
    }

    return;
  }

  v6 = *(a1 + 240);
  v7 = *(a1 + 252);
  v262 = 0;
  if (v7)
  {
    v8 = &v6[v7];
    do
    {
      wgpuAdapterFeatureName(*v6, &v273);
      v11 = v273;
      if (v273 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256E77C0);
      }

      if (!v273)
      {
        __break(0xC471u);
        JUMPOUT(0x2256E77E0);
      }

      v12 = v262;
      if (v262 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v262, 8u, 0), (v12 = v262) != 0))
      {
        v13 = *(v12 - 8);
        v14 = *(v11 + 4);
        if (v14 < 0x100)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
        v14 = *(v11 + 4);
        if (v14 < 0x100)
        {
LABEL_21:
          v15 = WTF::StringImpl::hashSlowCase(v11);
          goto LABEL_22;
        }
      }

      v15 = v14 >> 8;
LABEL_22:
      v16 = 0;
      for (i = 1; ; ++i)
      {
        v18 = v15 & v13;
        v19 = (v12 + 8 * (v15 & v13));
        v20 = *v19;
        if (*v19 == -1)
        {
          v16 = (v12 + 8 * v18);
          goto LABEL_24;
        }

        if (!v20)
        {
          break;
        }

        if (WTF::equal(v20, v11, v10))
        {
          goto LABEL_43;
        }

LABEL_24:
        v15 = i + v18;
      }

      if (v16)
      {
        *v16 = 0;
        --*(v262 - 4);
        v11 = v273;
        v19 = v16;
      }

      *&v273 = 0;
      v21 = *v19;
      *v19 = v11;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v9);
      }

      v22 = v262;
      if (v262)
      {
        v23 = *(v262 - 4);
        v24 = *(v262 - 3) + 1;
        *(v262 - 3) = v24;
        v25 = (v23 + v24);
        v26 = *(v22 - 4);
        if (v26 <= 0x400)
        {
          goto LABEL_36;
        }

LABEL_40:
        if (v26 <= 2 * v25)
        {
LABEL_41:
          v27 = v26 << (6 * v24 >= (2 * v26));
          goto LABEL_42;
        }
      }

      else
      {
        v24 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v25 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v26 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
        {
          goto LABEL_40;
        }

LABEL_36:
        if (3 * v26 <= 4 * v25)
        {
          if (v26)
          {
            goto LABEL_41;
          }

          v27 = 8;
LABEL_42:
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v262, v27, v19);
        }
      }

LABEL_43:
      v28 = v273;
      if (v273 && atomic_fetch_add_explicit(v273, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v9);
      }

      ++v6;
    }

    while (v6 != v8);
  }

  if (v5[2])
  {
    strlen(v5[2]);
  }

  WTF::String::fromUTF8();
  v32 = a1;
  LOWORD(v271) = 0;
  v33 = *(a1 + 96);
  *&v273 = vrev64_s32(v33);
  DWORD2(v273) = v33.i32[0];
  HIDWORD(v273) = *(a1 + 200);
  v34 = v262;
  v262 = 0;
  v274 = v34;
  WGSL::staticCheck(&v263, &v271, &v273);
  v36 = v274;
  if (v274)
  {
    v37 = *(v274 - 1);
    if (v37)
    {
      v38 = v274;
      do
      {
        v39 = *v38;
        if (*v38 != -1)
        {
          *v38 = 0;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v35);
            }
          }
        }

        ++v38;
        --v37;
      }

      while (v37);
    }

    WTF::fastFree((v36 - 2), v35);
  }

  v40 = v263;
  v263 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v40 = WTF::StringImpl::destroy(v40, v35);
  }

  if (v261 != 1)
  {
    if (!v261)
    {
      v269 = 0;
      v270 = 0;
      if (WebGPU::ShaderModule::s_heapRef)
      {
        v40 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ShaderModule::s_heapRef, v35);
      }

      else
      {
        v40 = WebGPU::ShaderModule::operatorNewSlow(0);
      }

      v44 = v40;
      *v40 = 1;
      v45 = v261;
      if (v261 == 1)
      {
        *&v43 = 0;
        v66 = v259[0];
        v67 = v259[1];
        *v259 = v43;
        *(v40 + 8) = v66;
        *(v40 + 16) = v67;
        v68 = v260;
        v260 = v43;
        *(v40 + 24) = v68;
        goto LABEL_100;
      }

      if (!v261)
      {
        *(v40 + 8) = v259[0];
        *(v40 + 16) = 0;
        v46 = v259[1];
        v259[0] = 0;
        v259[1] = 0;
        *(v40 + 16) = v46;
        v47 = v260;
        *&v260 = 0;
        *(v40 + 24) = v47;
LABEL_100:
        *(v40 + 48) = 0;
        *(v40 + 40) = v45;
        v269 = 0;
        v270 = 0;
        *(v40 + 56) = 0;
        *(v40 + 64) = 0;
        while (1)
        {
          v69 = *a1;
          if ((*a1 & 1) == 0)
          {
            break;
          }

          v70 = *a1;
          atomic_compare_exchange_strong_explicit(a1, &v70, v69 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v70 == v69)
          {
            goto LABEL_108;
          }
        }

        v71 = 0;
        v72 = *a1;
        v73 = 1;
        atomic_compare_exchange_strong_explicit(*a1, &v71, 1u, memory_order_acquire, memory_order_acquire);
        if (v71)
        {
          MEMORY[0x22AA683C0](v72);
        }

        ++*(v72 + 8);
        atomic_compare_exchange_strong_explicit(v72, &v73, 0, memory_order_release, memory_order_relaxed);
        if (v73 != 1)
        {
          WTF::Lock::unlockSlow(v72);
        }

LABEL_108:
        *(v44 + 80) = 0u;
        *(v44 + 96) = 0u;
        *(v44 + 112) = 0u;
        v256 = (v44 + 112);
        *(v44 + 72) = a1;
        *(v44 + 144) = 0;
        *(v44 + 128) = 0u;
        if (!*(v44 + 40))
        {
          v94 = *(v44 + 24);
          if ((*(v94 + 352) & 1) == 0)
          {
            __break(1u);
          }

          v95 = *(v94 + 332);
          if (v95)
          {
            v96 = *(v94 + 320);
            v97 = &v96[3 * v95];
            v254 = 1;
            v252 = 1;
            v258 = 1;
            v253 = v97;
            while (1)
            {
              v98 = *(v96 + 8);
              if (v98 == 4)
              {
                if ((v258 & 1) == 0 || (v119 = *(v44 + 136)) != 0 && v119[1])
                {
                  v120 = *MEMORY[0x277CD4670];
                  if (*MEMORY[0x277CD4670])
                  {
                    atomic_fetch_add_explicit(v120, 2u, memory_order_relaxed);
                  }

                  v119 = *(v44 + 136);
                  *(v44 + 136) = v120;
                  if (v119)
                  {
                    v258 = 0;
                    if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v258 = 0;
                  }
                }

                else
                {
                  v169 = v96[2];
                  if (v169)
                  {
                    atomic_fetch_add_explicit(v169, 2u, memory_order_relaxed);
                    v119 = *(v44 + 136);
                  }

                  *(v44 + 136) = v169;
                  if (v119)
                  {
                    v258 = 1;
                    if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v258 = 1;
                  }
                }

                goto LABEL_152;
              }

              if (v98 == 2)
              {
                break;
              }

              if (v98 != 1)
              {
                goto LABEL_152;
              }

              v99 = v96 + 2;
              v100 = *(*v96 + 7);
              v101 = *(*v96 + 17);
              *&v273 = 0;
              if (v101)
              {
                v102 = &v100[v101];
                do
                {
                  v127 = *v100;
                  if (!*(*v100 + 24))
                  {
                    v128 = *(*(v127 + 64) + 24);
                    if (v128)
                    {
                      if (v128[48] == 4)
                      {
                        v129 = *(*v128 + 84);
                        if (v129)
                        {
                          v130 = *(*v128 + 72);
                          v131 = v130 + 8 * v129;
                          do
                          {
                            v134 = *(*v130 + 144);
                            if ((v134 & 0x100000000) != 0)
                            {
                              v135 = WebGPU::vertexFormatTypeForStructMember(*(*(*v130 + 104) + 24));
                              if (v134 == -2)
                              {
                                goto LABEL_473;
                              }

                              if (v134 == -1)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x2256E77A0);
                              }

                              v136 = v135;
                              v137 = v273;
                              if (!v273)
                              {
                                WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v273, 8u, 0);
                                v137 = v273;
                              }

                              v138 = *(v137 - 8);
                              v139 = 9 * ((~(v134 << 15) + v134) ^ ((~(v134 << 15) + v134) >> 10));
                              v140 = (v139 ^ (v139 >> 6)) + ~((v139 ^ (v139 >> 6)) << 11);
                              v141 = v138 & (v140 ^ HIWORD(v140));
                              v42 = (v137 + 8 * v141);
                              v142 = *v42;
                              if (*v42 != -1)
                              {
                                v143 = 0;
                                v144 = 1;
                                while (v142 != v134)
                                {
                                  if (v142 == -2)
                                  {
                                    v143 = v42;
                                  }

                                  v141 = (v141 + v144) & v138;
                                  v42 = (v137 + 8 * v141);
                                  v142 = *v42;
                                  ++v144;
                                  if (*v42 == -1)
                                  {
                                    if (v143)
                                    {
                                      *v143 = 0xFFFFFFFFLL;
                                      --*(v137 - 16);
                                      v42 = v143;
                                    }

                                    goto LABEL_235;
                                  }
                                }

                                goto LABEL_221;
                              }

LABEL_235:
                              *v42 = v134;
                              *(v42 + 1) = v136;
                              v145 = *(v137 - 16);
                              v146 = *(v137 - 12) + 1;
                              *(v137 - 12) = v146;
                              v147 = (v145 + v146);
                              v148 = *(v137 - 4);
                              if (v148 > 0x400)
                              {
                                if (v148 <= 2 * v147)
                                {
LABEL_217:
                                  v132 = v148 << (6 * v146 >= (2 * v148));
                                  if (v148)
                                  {
                                    v133 = v132;
                                  }

                                  else
                                  {
                                    v133 = 8;
                                  }

                                  WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v273, v133, v42);
                                }
                              }

                              else if (3 * v148 <= 4 * v147)
                              {
                                goto LABEL_217;
                              }
                            }

LABEL_221:
                            v130 += 8;
                          }

                          while (v130 != v131);
                        }
                      }

                      else
                      {
                        v149 = *(v127 + 96);
                        if ((v149 & 0x100000000) != 0)
                        {
                          v150 = WebGPU::vertexFormatTypeForStructMember(v128);
                          if (v149 == -2)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x2256E7800);
                          }

                          if (v149 == -1)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x2256E7820);
                          }

                          v151 = v150;
                          v152 = v273;
                          if (!v273)
                          {
                            WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v273, 8u, 0);
                            v152 = v273;
                          }

                          v153 = *(v152 - 8);
                          v154 = 9 * ((~(v149 << 15) + v149) ^ ((~(v149 << 15) + v149) >> 10));
                          v155 = (v154 ^ (v154 >> 6)) + ~((v154 ^ (v154 >> 6)) << 11);
                          v156 = v153 & (v155 ^ HIWORD(v155));
                          v42 = (v152 + 8 * v156);
                          v157 = *v42;
                          if (*v42 != -1)
                          {
                            v158 = 0;
                            v159 = 1;
                            while (v157 != v149)
                            {
                              if (v157 == -2)
                              {
                                v158 = v42;
                              }

                              v156 = (v156 + v159) & v153;
                              v42 = (v152 + 8 * v156);
                              v157 = *v42;
                              ++v159;
                              if (*v42 == -1)
                              {
                                if (v158)
                                {
                                  *v158 = 0xFFFFFFFFLL;
                                  --*(v152 - 16);
                                  v42 = v158;
                                }

                                goto LABEL_253;
                              }
                            }

                            goto LABEL_211;
                          }

LABEL_253:
                          *v42 = v149;
                          *(v42 + 1) = v151;
                          v160 = *(v152 - 16);
                          v161 = *(v152 - 12) + 1;
                          *(v152 - 12) = v161;
                          v162 = (v160 + v161);
                          v163 = *(v152 - 4);
                          if (v163 > 0x400)
                          {
                            if (v163 <= 2 * v162)
                            {
LABEL_207:
                              v125 = v163 << (6 * v161 >= (2 * v163));
                              if (v163)
                              {
                                v126 = v125;
                              }

                              else
                              {
                                v126 = 8;
                              }

                              WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v273, v126, v42);
                            }
                          }

                          else if (3 * v163 <= 4 * v162)
                          {
                            goto LABEL_207;
                          }
                        }
                      }
                    }
                  }

LABEL_211:
                  ++v100;
                }

                while (v100 != v102);
              }

              if (*v99 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x2256E7840);
              }

              if (!*v99)
              {
                __break(0xC471u);
                JUMPOUT(0x2256E7860);
              }

              v164 = *v256;
              if (*v256 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v256, 8u), (v164 = *v256) != 0))
              {
                v165 = *(v164 - 8);
                v166 = *v99;
                v167 = *(*v99 + 4);
                if (v167 < 0x100)
                {
                  goto LABEL_270;
                }
              }

              else
              {
                v165 = 0;
                v166 = *v99;
                v167 = *(*v99 + 4);
                if (v167 < 0x100)
                {
LABEL_270:
                  v168 = WTF::StringImpl::hashSlowCase(v166);
                  goto LABEL_271;
                }
              }

              v168 = v167 >> 8;
LABEL_271:
              v170 = 0;
              for (j = 1; ; ++j)
              {
                v172 = v168 & v165;
                v173 = (v164 + 16 * (v168 & v165));
                v174 = *v173;
                if (*v173 == -1)
                {
                  v170 = (v164 + 16 * v172);
                  goto LABEL_273;
                }

                if (!v174)
                {
                  break;
                }

                if (WTF::equal(v174, *v99, v42))
                {
                  goto LABEL_296;
                }

LABEL_273:
                v168 = j + v172;
              }

              if (v170)
              {
                v174 = 0;
                *v170 = 0;
                v170[1] = 0;
                --*(*v256 - 16);
                v173 = v170;
              }

              v175 = *v99;
              if (*v99)
              {
                atomic_fetch_add_explicit(v175, 2u, memory_order_relaxed);
                v174 = *v173;
              }

              *v173 = v175;
              if (v174 && atomic_fetch_add_explicit(v174, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v174, v41);
              }

              v176 = v273;
              *&v273 = 0;
              v177 = v173[1];
              v173[1] = v176;
              if (v177)
              {
                WTF::fastFree((v177 - 16), v41);
              }

              v178 = *v256;
              if (*v256)
              {
                v179 = *(v178 - 16);
                v180 = *(v178 - 12) + 1;
                *(v178 - 12) = v180;
                v181 = (v179 + v180);
                v182 = *(v178 - 4);
                if (v182 <= 0x400)
                {
                  goto LABEL_289;
                }

LABEL_293:
                if (v182 <= 2 * v181)
                {
LABEL_294:
                  v183 = v182 << (6 * v180 >= (2 * v182));
                  goto LABEL_295;
                }
              }

              else
              {
                v180 = 1;
                MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
                v181 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
                v182 = MEMORY[0xFFFFFFFFFFFFFFFC];
                if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
                {
                  goto LABEL_293;
                }

LABEL_289:
                if (3 * v182 <= 4 * v181)
                {
                  if (v182)
                  {
                    goto LABEL_294;
                  }

                  v183 = 8;
LABEL_295:
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v256, v183);
                }
              }

LABEL_296:
              if (v273)
              {
                WTF::fastFree((v273 - 16), v41);
              }

              v184 = *(*v96 + 13);
              if (!v184)
              {
                goto LABEL_431;
              }

              v185 = *(v184 + 24);
              if (!v185)
              {
                goto LABEL_431;
              }

              v271 = 0;
              v186 = v185[48];
              if (v186 == 4)
              {
                v220 = *v185;
                v221 = *(*v185 + 84);
                if (!v221)
                {
                  goto LABEL_429;
                }

                v222 = *(v220 + 72);
                v223 = 8 * v221;
                while (2)
                {
                  v226 = *v222;
                  if ((*(*v222 + 144) & 0x100000000) != 0 && (*(v226 + 140) & 0x100) == 0)
                  {
                    v272 = *(*v222 + 144);
                    v224 = *(*(v226 + 104) + 24);
                    if (v224)
                    {
                      if (v224[48])
                      {
                        if (v224[48] == 1 && *v224 && !*(*v224 + 48))
                        {
                          v227 = v224[8];
                          v224 = *v224;
                          goto LABEL_376;
                        }

                        v224 = 0;
                      }

                      else
                      {
                        v227 = 1;
LABEL_376:
                        v224 = WebGPU::metalDataTypeFromPrimitive(v224, v227);
                      }
                    }

                    v263 = v224;
                    v225 = *(v226 + 152);
                    BYTE2(v264) = *(v226 + 154);
                    LOWORD(v264) = v225;
                    WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::ShaderModule::VertexOutputFragmentInput>(&v273, &v271, &v272, &v263);
                  }

                  ++v222;
                  v223 -= 8;
                  if (!v223)
                  {
                    goto LABEL_429;
                  }

                  continue;
                }
              }

              if (v186 == 1)
              {
                v272 = 0;
                v219 = *v185;
                if (*v185)
                {
                  if (*(v219 + 48))
                  {
                    v219 = 0;
                  }

                  else
                  {
                    v219 = WebGPU::metalDataTypeFromPrimitive(v219, v185[8]);
                  }
                }

                v263 = v219;
                LOBYTE(v264) = 0;
                BYTE2(v264) = 0;
                WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::ShaderModule::VertexOutputFragmentInput>(&v273, &v271, &v272, &v263);
              }

              else if (!v185[48])
              {
                v272 = 0;
                v187 = *v185 - 1;
                if (v187 >= 7 || ((0x5Bu >> v187) & 1) == 0)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2256E7910);
                }

                v263 = qword_225881ED8[v187];
                LOBYTE(v264) = 0;
                BYTE2(v264) = 0;
                WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::ShaderModule::VertexOutputFragmentInput>(&v273, &v271, &v272, &v263);
              }

LABEL_429:
              WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v273, (v44 + 104), v96 + 2, &v271);
              if (v271)
              {
                WTF::fastFree((v271 - 16), v41);
              }

LABEL_431:
              if ((v254 & 1) == 0 || (v119 = *(v44 + 120)) != 0 && v119[1])
              {
                v248 = *MEMORY[0x277CD4670];
                v97 = v253;
                if (*MEMORY[0x277CD4670])
                {
                  atomic_fetch_add_explicit(v248, 2u, memory_order_relaxed);
                }

                v119 = *(v44 + 120);
                *(v44 + 120) = v248;
                if (v119)
                {
                  v254 = 0;
                  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    goto LABEL_151;
                  }
                }

                else
                {
                  v254 = 0;
                }
              }

              else
              {
                v249 = *v99;
                if (*v99)
                {
                  atomic_fetch_add_explicit(v249, 2u, memory_order_relaxed);
                  v119 = *(v44 + 120);
                }

                *(v44 + 120) = v249;
                v97 = v253;
                if (v119)
                {
                  v254 = 1;
                  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
LABEL_151:
                    WTF::StringImpl::destroy(v119, v41);
                  }
                }

                else
                {
                  v254 = 1;
                }
              }

LABEL_152:
              v96 += 3;
              if (v96 == v97)
              {
                goto LABEL_109;
              }
            }

            v104 = v96 + 2;
            v103 = *v96;
            v271 = 0;
            v105 = *(v103 + 17);
            if (v105)
            {
              v106 = *(v103 + 7);
              v107 = v106 + 8 * v105;
              while (1)
              {
                if (!*(*v106 + 24))
                {
                  v108 = *(*(*v106 + 64) + 24);
                  if (v108)
                  {
                    if (v108[48] == 4)
                    {
                      v109 = *v108;
                      v110 = *(*v108 + 84);
                      if (v110)
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_160:
                v106 += 8;
                if (v106 == v107)
                {
                  goto LABEL_197;
                }
              }

              v111 = *(v109 + 72);
              v112 = 8 * v110;
              while (2)
              {
                v115 = *v111;
                v116 = *(*v111 + 140);
                if ((v116 & 0x100) == 0)
                {
                  goto LABEL_180;
                }

                if (v116 > 7u)
                {
                  if (v116 == 8)
                  {
                    v117 = (WebGPU::ShaderModule::populateShaderModuleState(v44, v103 + 6, v42) + 1);
                  }

                  else
                  {
                    if (v116 != 9)
                    {
                      goto LABEL_180;
                    }

                    v117 = (WebGPU::ShaderModule::populateShaderModuleState(v44, v103 + 6, v42) + 2);
                  }
                }

                else
                {
                  if (v116)
                  {
                    if (v116 == 1)
                    {
                      v117 = WebGPU::ShaderModule::populateShaderModuleState(v44, v103 + 6, v42);
                      break;
                    }

LABEL_180:
                    if ((*(v115 + 144) & 0x100000000) != 0)
                    {
                      v272 = *(v115 + 144);
                      v113 = *(*(v115 + 104) + 24);
                      if (v113)
                      {
                        if (v113[48])
                        {
                          if (v113[48] == 1 && *v113 && !*(*v113 + 48))
                          {
                            v118 = v113[8];
                            v113 = *v113;
                            goto LABEL_188;
                          }

                          v113 = 0;
                        }

                        else
                        {
                          v118 = 1;
LABEL_188:
                          v113 = WebGPU::metalDataTypeFromPrimitive(v113, v118);
                        }
                      }

                      v263 = v113;
                      v114 = *(v115 + 152);
                      BYTE2(v264) = *(v115 + 154);
                      LOWORD(v264) = v114;
                      WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::ShaderModule::VertexOutputFragmentInput>(&v273, &v271, &v272, &v263);
                    }

                    ++v111;
                    v112 -= 8;
                    if (!v112)
                    {
                      goto LABEL_160;
                    }

                    continue;
                  }

                  v117 = (WebGPU::ShaderModule::populateShaderModuleState(v44, v103 + 6, v42) + 4);
                }

                break;
              }

              *v117 = 1;
              goto LABEL_180;
            }

LABEL_197:
            WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v273, (v44 + 96), v96 + 2, &v271);
            if (v271)
            {
              WTF::fastFree((v271 - 16), v41);
            }

            v121 = *(*v96 + 13);
            if (!v121 || (v122 = *(v121 + 24)) == 0)
            {
LABEL_414:
              if ((v252 & 1) == 0 || (v119 = *(v44 + 128)) != 0 && v119[1])
              {
                v246 = *MEMORY[0x277CD4670];
                v97 = v253;
                if (*MEMORY[0x277CD4670])
                {
                  atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
                }

                v119 = *(v44 + 128);
                *(v44 + 128) = v246;
                if (v119)
                {
                  v252 = 0;
                  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    goto LABEL_151;
                  }
                }

                else
                {
                  v252 = 0;
                }
              }

              else
              {
                v247 = *v104;
                if (*v104)
                {
                  atomic_fetch_add_explicit(v247, 2u, memory_order_relaxed);
                  v119 = *(v44 + 128);
                }

                *(v44 + 128) = v247;
                v97 = v253;
                if (v119)
                {
                  v252 = 1;
                  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    goto LABEL_151;
                  }
                }

                else
                {
                  v252 = 1;
                }
              }

              goto LABEL_152;
            }

            v271 = 0;
            v123 = v122[48];
            if (v123 != 4)
            {
              if (v123 == 1)
              {
                v272 = 0;
                v188 = *v122;
                if (*v122)
                {
                  if (*(v188 + 48))
                  {
                    v188 = 0;
                  }

                  else
                  {
                    v188 = WebGPU::metalDataTypeFromPrimitive(v188, v122[8]);
                  }
                }

                v263 = v188;
                WTF::HashMap<unsigned int,MTLDataType,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<MTLDataType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLDataType>(&v273, &v271, &v272, &v263);
              }

              else if (!v122[48])
              {
                v272 = 0;
                v124 = *v122 - 1;
                if (v124 >= 7 || ((0x5Bu >> v124) & 1) == 0)
                {
LABEL_473:
                  __break(0xC471u);
                  JUMPOUT(0x2256E7780);
                }

                v263 = qword_225881ED8[v124];
                WTF::HashMap<unsigned int,MTLDataType,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<MTLDataType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLDataType>(&v273, &v271, &v272, &v263);
              }

LABEL_379:
              if (*v104 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x2256E78C0);
              }

              if (!*v104)
              {
                __break(0xC471u);
                JUMPOUT(0x2256E78E0);
              }

              v228 = *(v44 + 88);
              if (v228 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v44 + 88), 8u), (v228 = *(v44 + 88)) != 0))
              {
                v229 = *(v228 - 8);
                v230 = *v104;
                v231 = *(*v104 + 4);
                if (v231 >= 0x100)
                {
                  goto LABEL_384;
                }

LABEL_386:
                v232 = WTF::StringImpl::hashSlowCase(v230);
              }

              else
              {
                v229 = 0;
                v230 = *v104;
                v231 = *(*v104 + 4);
                if (v231 < 0x100)
                {
                  goto LABEL_386;
                }

LABEL_384:
                v232 = v231 >> 8;
              }

              v233 = 0;
              for (k = 1; ; ++k)
              {
                v235 = v232 & v229;
                v236 = (v228 + 16 * (v232 & v229));
                v237 = *v236;
                if (*v236 == -1)
                {
                  v233 = (v228 + 16 * v235);
                }

                else
                {
                  if (!v237)
                  {
                    if (v233)
                    {
                      v237 = 0;
                      *v233 = 0;
                      v233[1] = 0;
                      --*(*(v44 + 88) - 16);
                      v236 = v233;
                    }

                    v238 = *v104;
                    if (*v104)
                    {
                      atomic_fetch_add_explicit(v238, 2u, memory_order_relaxed);
                      v237 = *v236;
                    }

                    *v236 = v238;
                    if (v237 && atomic_fetch_add_explicit(v237, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v237, v41);
                    }

                    v239 = v271;
                    v271 = 0;
                    v240 = v236[1];
                    v236[1] = v239;
                    if (v240)
                    {
                      WTF::fastFree((v240 - 16), v41);
                    }

                    v241 = *(v44 + 88);
                    if (v241)
                    {
                      v242 = *(v241 - 12) + 1;
                    }

                    else
                    {
                      v242 = 1;
                    }

                    *(v241 - 12) = v242;
                    v243 = (*(v241 - 16) + v242);
                    v244 = *(v241 - 4);
                    if (v244 > 0x400)
                    {
                      if (v244 > 2 * v243)
                      {
                        goto LABEL_414;
                      }
                    }

                    else
                    {
                      if (3 * v244 > 4 * v243)
                      {
                        goto LABEL_414;
                      }

                      if (!v244)
                      {
                        v245 = 8;
LABEL_413:
                        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v44 + 88), v245);
                        goto LABEL_414;
                      }
                    }

                    v245 = v244 << (6 * v242 >= (2 * v244));
                    goto LABEL_413;
                  }

                  if (WTF::equal(v237, *v104, v42))
                  {
                    if (v271)
                    {
                      WTF::fastFree((v271 - 16), v41);
                    }

                    goto LABEL_414;
                  }
                }

                v232 = k + v235;
              }
            }

            v189 = *v122;
            v190 = *(*v122 + 84);
            if (!v190)
            {
              goto LABEL_379;
            }

            v191 = *(v189 + 9);
            v192 = &v191[v190];
            while (2)
            {
              v195 = *v191;
              v196 = *(*v191 + 140);
              if ((v196 & 0x100) != 0)
              {
                if (v196 == 9)
                {
                  v197 = 3;
LABEL_321:
                  *(WebGPU::ShaderModule::populateShaderModuleState(v44, v96 + 2, v42) + v197) = 1;
                }

                else if (!v196)
                {
                  v197 = 4;
                  goto LABEL_321;
                }
              }

              v198 = *(v195 + 100);
              if (v198)
              {
                v199 = *(v195 + 88);
                for (m = 8 * v198; m; m -= 8)
                {
                  v201 = *v199;
                  if ((*(**v199 + 16))(*v199) == 3)
                  {
                    if (*(v201 + 24) == 9)
                    {
                      v202 = 3;
                      goto LABEL_330;
                    }

                    if (!*(v201 + 24))
                    {
                      v202 = 4;
LABEL_330:
                      *(WebGPU::ShaderModule::populateShaderModuleState(v44, v96 + 2, v42) + v202) = 1;
                    }
                  }

                  ++v199;
                }
              }

              v203 = *(v195 + 144);
              if ((v203 & 0x100000000) == 0 || (*(v195 + 140) & 0x100) != 0)
              {
                goto LABEL_315;
              }

              v204 = *(*(v195 + 104) + 24);
              if (!v204)
              {
                goto LABEL_338;
              }

              if (v204[48])
              {
                if (v204[48] != 1 || !*v204 || *(*v204 + 48))
                {
LABEL_338:
                  v205 = 0;
                  if (v203 == -2)
                  {
                    goto LABEL_466;
                  }

LABEL_342:
                  if (v203 == -1)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x2256E78A0);
                  }

                  v207 = v271;
                  if (!v271)
                  {
                    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v271, 8u, 0);
                    v207 = v271;
                  }

                  v208 = *(v207 - 2);
                  v209 = 9 * ((~(v203 << 15) + v203) ^ ((~(v203 << 15) + v203) >> 10));
                  v210 = (v209 ^ (v209 >> 6)) + ~((v209 ^ (v209 >> 6)) << 11);
                  v211 = v208 & (v210 ^ HIWORD(v210));
                  v42 = (v207 + 16 * v211);
                  v212 = *v42;
                  if (*v42 != -1)
                  {
                    v213 = 0;
                    v214 = 1;
                    do
                    {
                      if (v212 == v203)
                      {
                        goto LABEL_315;
                      }

                      if (v212 == -2)
                      {
                        v213 = v42;
                      }

                      v211 = (v211 + v214) & v208;
                      v42 = (v207 + 16 * v211);
                      v212 = *v42;
                      ++v214;
                    }

                    while (*v42 != -1);
                    if (v213)
                    {
                      *v213 = -1;
                      v213[1] = 0;
                      --*(v207 - 4);
                      v42 = v213;
                    }
                  }

                  *v42 = v203;
                  v42[1] = v205;
                  v215 = *(v207 - 4);
                  v216 = *(v207 - 3) + 1;
                  *(v207 - 3) = v216;
                  v217 = (v215 + v216);
                  v218 = *(v207 - 1);
                  if (v218 > 0x400)
                  {
                    if (v218 > 2 * v217)
                    {
                      goto LABEL_315;
                    }
                  }

                  else if (3 * v218 > 4 * v217)
                  {
                    goto LABEL_315;
                  }

                  v193 = v218 << (6 * v216 >= (2 * v218));
                  if (v218)
                  {
                    v194 = v193;
                  }

                  else
                  {
                    v194 = 8;
                  }

                  WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v271, v194, v42);
LABEL_315:
                  if (++v191 == v192)
                  {
                    goto LABEL_379;
                  }

                  continue;
                }

                v206 = v204[8];
                v204 = *v204;
              }

              else
              {
                v206 = 1;
              }

              break;
            }

            v205 = WebGPU::metalDataTypeFromPrimitive(v204, v206);
            if (v203 == -2)
            {
LABEL_466:
              __break(0xC471u);
              JUMPOUT(0x2256E7880);
            }

            goto LABEL_342;
          }
        }

LABEL_109:
        *a3 = v44;
        v74 = v269;
        if (v269)
        {
          v75 = *(v269 - 4);
          if (v75)
          {
            v76 = (v269 + 8);
            do
            {
              if (*(v76 - 1) != -1)
              {
                WGSL::Reflection::EntryPointInformation::~EntryPointInformation(v76, v41);
                v77 = *(v76 - 1);
                *(v76 - 1) = 0;
                if (v77)
                {
                  if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v77, v41);
                  }
                }
              }

              v76 = (v76 + 104);
              --v75;
            }

            while (v75);
          }

          WTF::fastFree((v74 - 16), v41);
        }

        v78 = v270;
        if (v270)
        {
          v79 = *(v270 - 1);
          if (v79)
          {
            v80 = v270;
            while (1)
            {
              v81 = *v80;
              if (*v80 == -1)
              {
                goto LABEL_121;
              }

              v82 = v80[1];
              v80[1] = 0;
              if (!v82)
              {
                goto LABEL_126;
              }

              if (*(v82 + 2) != 1)
              {
                break;
              }

              WebGPU::PipelineLayout::~PipelineLayout(v82, v41);
              bmalloc::api::tzoneFree(v83, v84);
              v81 = *v80;
              *v80 = 0;
              if (v81)
              {
LABEL_127:
                if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v81, v41);
                }
              }

LABEL_121:
              v80 += 2;
              if (!--v79)
              {
                goto LABEL_131;
              }
            }

            --*(v82 + 2);
LABEL_126:
            *v80 = 0;
            if (v81)
            {
              goto LABEL_127;
            }

            goto LABEL_121;
          }

LABEL_131:
          WTF::fastFree((v78 - 2), v41);
        }

        goto LABEL_132;
      }
    }

    mpark::throw_bad_variant_access(v40);
  }

  WTF::StringPrintStream::StringPrintStream(&v273);
  WTF::String::number(HIDWORD(v259[1]));
  v263 = " generated while compiling the shader:";
  v264 = 39;
  (*(v273 + 32))(&v273);
  WTF::printInternal();
  WTF::printInternal();
  WTF::printInternal();
  WTF::ASCIILiteral::dump();
  (*(v273 + 40))(&v273);
  v49 = v271;
  v271 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v48);
  }

  if (HIDWORD(v259[1]))
  {
    v50 = 24 * HIDWORD(v259[1]);
    v51 = v259[0];
    do
    {
      v263 = "\n";
      v264 = 2;
      v52 = (*(v273 + 32))(&v273);
      WTF::ASCIILiteral::dump();
      (*(*v52 + 32))(v52);
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      (*(*v52 + 40))(v52);
      (*(v273 + 40))(&v273);
      v51 = (v51 + 24);
      v50 -= 24;
      v32 = a1;
    }

    while (v50);
  }

  WTF::StringPrintStream::toString(&v263, &v273);
  if ((*(v32 + 548) & 1) == 0)
  {
    v89 = *(v32 + 32) + 32 * *(v32 + 44);
    v90 = (v89 + 16);
    v91 = -32 * *(v32 + 44);
    while (v91)
    {
      v92 = *(v89 - 8);
      v89 -= 32;
      v90 -= 32;
      v91 += 32;
      if (!v92)
      {
        if ((*v90 & 1) == 0)
        {
          v93 = v263;
          v263 = 0;
          *(v90 - 4) = 1;
          *(v90 - 1) = v93;
          *v90 = 1;
        }

        goto LABEL_79;
      }
    }

    v250 = *(v32 + 24);
    if (v250)
    {
      (*(*v250 + 16))(v250, 1, &v263);
      v251 = *(v32 + 24);
      *(v32 + 24) = 0;
      if (v251)
      {
        (*(*v251 + 8))(v251);
      }
    }
  }

LABEL_79:
  v54 = v263;
  v263 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v53);
  }

  v263 = 0;
  LODWORD(v264) = 0;
  HIDWORD(v264) = HIDWORD(v259[1]);
  if (HIDWORD(v259[1]))
  {
    if (HIDWORD(v259[1]) >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x2256E78E8);
    }

    v55 = WTF::fastMalloc((24 * HIDWORD(v259[1])));
    LODWORD(v264) = 24 * HIDWORD(v259[1]) / 0x18u;
    v263 = v55;
    v56 = v259[0];
    v57 = (v259[0] + 24 * HIDWORD(v259[1]));
    do
    {
      v58 = *v56;
      if (*v56)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      *v55 = v58;
      *(v55 + 8) = *(v56 + 8);
      v55 += 24;
      v56 = (v56 + 24);
    }

    while (v56 != v57);
  }

  v265 = 0;
  v266 = 0;
  v267 = HIDWORD(v260);
  if (HIDWORD(v260))
  {
    if (HIDWORD(v260) >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x2256E78F0);
    }

    v59 = WTF::fastMalloc((24 * HIDWORD(v260)));
    v266 = 24 * HIDWORD(v260) / 0x18u;
    v265 = v59;
    v60 = v260;
    v61 = v260 + 24 * HIDWORD(v260);
    do
    {
      v62 = *v60;
      if (*v60)
      {
        atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
      }

      *v59 = v62;
      *(v59 + 8) = *(v60 + 8);
      v59 += 24;
      v60 += 24;
    }

    while (v60 != v61);
  }

  v268 = 1;
  if (WebGPU::ShaderModule::s_heapRef)
  {
    v63 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ShaderModule::s_heapRef, v53);
  }

  else
  {
    v63 = WebGPU::ShaderModule::operatorNewSlow(0);
  }

  v64 = v63;
  WebGPU::ShaderModule::ShaderModule(v63, v32, &v263);
  *a3 = v64;
  if (v268 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(&v263, v65);
  }

  WTF::StringPrintStream::~StringPrintStream(&v273);
LABEL_132:
  if (v261 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck>,(mpark::detail::Trait)1> &>(v259, v41);
  }

  v85 = v262;
  if (v262)
  {
    v86 = *(v262 - 1);
    if (v86)
    {
      v87 = v262;
      do
      {
        v88 = *v87;
        if (*v87 != -1)
        {
          *v87 = 0;
          if (v88)
          {
            if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v88, v41);
            }
          }
        }

        ++v87;
        --v86;
      }

      while (v86);
    }

    WTF::fastFree((v85 - 16), v41);
  }
}

void sub_2256E7934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, int a27, WTF::StringImpl **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, uint64_t a35, uint64_t a36, WTF::StringImpl *a37, uint64_t a38, WTF::StringImpl *a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(a11, v45);
  WTF::HashMap<WTF::String,WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(a13, v46);
  if (*(v43 + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(a10, v47);
  }

  *(v43 + 40) = -1;
  if (*v43 == 1)
  {
    bmalloc::api::tzoneFree(v43, v47);
    WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a35, v48);
    WTF::HashMap<WTF::String,WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a36, v49);
    if (a26 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck>,(mpark::detail::Trait)1> &>(&a22, v50);
      WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(&a28, v51);
      _Unwind_Resume(a1);
    }

    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(&a28, v50);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x2256E7C30);
}

WTF::StringImpl ***WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(WTF::StringImpl ***result, WTF::StringImpl *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 1);
    if (v4)
    {
      v5 = *result;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        ++v5;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 2), a2);
    return v3;
  }

  return result;
}

uint64_t WebGPU::ShaderModule::populateShaderModuleState(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = (this + 144);
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256E7FD8);
    }

    if (!v6)
    {
LABEL_52:
      __break(0xC471u);
      JUMPOUT(0x2256E7F98);
    }

    v7 = *(v5 - 8);
    v8 = *(v6 + 4);
    if (v8 < 0x100)
    {
      v9 = WTF::StringImpl::hashSlowCase(v6);
    }

    else
    {
      v9 = v8 >> 8;
    }

    for (i = 0; ; v9 = i + v12)
    {
      v12 = v9 & v7;
      v13 = *(v5 + 16 * v12);
      if (v13 != -1)
      {
        if (!v13)
        {
          v10 = *v4;
          goto LABEL_17;
        }

        if (WTF::equal(v13, *a2, a3))
        {
          break;
        }
      }

      ++i;
    }

    v14 = v5 + 16 * v12;
    v10 = *v4;
    if (!*v4 || v14 != v10 + 16 * *(v10 - 4))
    {
      return v14 + 8;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  if (*a2 == -1)
  {
    goto LABEL_52;
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E7FB8);
  }

  if (!v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::ShaderModule::ShaderModuleState,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::ShaderModule::ShaderModuleState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v4, 8u, 0);
    v10 = *v4;
    if (!*v4)
    {
      v15 = 0;
      v16 = *a2;
      v17 = *(*a2 + 4);
      if (v17 >= 0x100)
      {
        goto LABEL_22;
      }

LABEL_24:
      v18 = WTF::StringImpl::hashSlowCase(v16);
      goto LABEL_25;
    }
  }

  v15 = *(v10 - 8);
  v16 = *a2;
  v17 = *(*a2 + 4);
  if (v17 < 0x100)
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = v17 >> 8;
LABEL_25:
  v19 = 0;
  for (j = 1; ; ++j)
  {
    v21 = v18 & v15;
    v14 = v10 + 16 * (v18 & v15);
    v22 = *v14;
    if (*v14 == -1)
    {
      v19 = v10 + 16 * v21;
      goto LABEL_27;
    }

    if (!v22)
    {
      break;
    }

    if (WTF::equal(v22, *a2, a3))
    {
      return v14 + 8;
    }

LABEL_27:
    v18 = j + v21;
  }

  if (v19)
  {
    v22 = 0;
    *v19 = 0;
    *(v19 + 12) = 0;
    *(v19 + 8) = 0;
    --*(*v4 - 16);
    v14 = v19;
  }

  v23 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    v22 = *v14;
  }

  *v14 = v23;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  *(v14 + 12) = 0;
  *(v14 + 8) = 0;
  v24 = *v4;
  if (*v4)
  {
    v25 = *(v24 - 16);
    v26 = *(v24 - 12) + 1;
    *(v24 - 12) = v26;
    v27 = (v25 + v26);
    v28 = *(v24 - 4);
    if (v28 <= 0x400)
    {
      goto LABEL_41;
    }

LABEL_45:
    if (v28 <= 2 * v27)
    {
LABEL_46:
      v29 = v28 << (6 * v26 >= (2 * v28));
      goto LABEL_47;
    }
  }

  else
  {
    v26 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v27 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v28 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_45;
    }

LABEL_41:
    if (3 * v28 <= 4 * v27)
    {
      if (v28)
      {
        goto LABEL_46;
      }

      v29 = 8;
LABEL_47:
      v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::ShaderModule::ShaderModuleState,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::ShaderModule::ShaderModuleState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v4, v29, v14);
    }
  }

  return v14 + 8;
}

_OWORD *WTF::HashMap<unsigned int,MTLDataType,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<MTLDataType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<MTLDataType>(_OWORD *result, uint64_t *a2, int *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E81CCLL);
  }

  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E81ECLL);
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

uint64_t WebGPU::metalDataTypeFromPrimitive(_BYTE *a1, int a2)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v2 = *a1 - 1;
      if (v2 < 7 && ((0x5Bu >> v2) & 1) != 0)
      {
        return qword_225881ED8[(*a1 - 1)];
      }

LABEL_22:
      __break(0xC471u);
      JUMPOUT(0x2256E82F4);
    }

    if (a2 == 2)
    {
      v5 = *a1 - 1;
      if (v5 >= 7 || ((0x5Bu >> v5) & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x2256E8354);
      }

      return qword_225881F10[(*a1 - 1)];
    }

LABEL_20:
    __break(0xC471u);
    JUMPOUT(0x2256E8334);
  }

  if (a2 == 3)
  {
    v4 = *a1 - 1;
    if (v4 >= 7 || ((0x5Bu >> v4) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x2256E8314);
    }

    return qword_225881F48[(*a1 - 1)];
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_20;
    }

    v6 = *a1 - 1;
    if (v6 >= 7 || ((0x5Bu >> v6) & 1) == 0)
    {
      goto LABEL_22;
    }

    return qword_225881F80[(*a1 - 1)];
  }
}

uint64_t WebGPU::ShaderModule::shaderModuleState(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E8478);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v13)
  {
    v13 = v9 & v7;
    v14 = *(v3 + 16 * v13);
    if (v14 == -1)
    {
      goto LABEL_9;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      v10 = v3 + 16 * v13;
      v11 = *(this + 18);
      if (!v11)
      {
        goto LABEL_19;
      }

      v15 = *(v11 - 4);
      goto LABEL_17;
    }

LABEL_9:
    ++i;
  }

  v11 = *(this + 18);
  if (v11)
  {
    v15 = *(v11 - 4);
    v10 = v11 + 16 * v15;
LABEL_17:
    v11 += 16 * v15;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return v10 + 8;
  }
}

uint64_t WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebGPU::ShaderModule::VertexOutputFragmentInput>(uint64_t result, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E86C4);
  }

  v7 = result;
  v8 = *a2;
  if (!*a2)
  {
    v9 = a4;
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a4 = v9;
    v8 = *a2;
    v4 = *a3;
  }

  v10 = *(v8 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = v8 + 24 * v13;
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = v8 + 24 * *(v8 - 4);
        *v7 = v14;
        *(v7 + 8) = v24;
        *(v7 + 16) = 0;
        return result;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = v8 + 24 * v13;
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 18) = 0;
      *(v16 + 16) = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = *(a4 + 8);
  *(v14 + 8) = *a4;
  *(v14 + 16) = v18;
  *(v14 + 18) = BYTE2(v18);
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
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, 8u, v14);
      v14 = result;
      v19 = *a2;
      if (!*a2)
      {
LABEL_18:
        LODWORD(v23) = 0;
        goto LABEL_24;
      }

LABEL_23:
      LODWORD(v23) = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v14);
    v14 = result;
    v19 = *a2;
    if (!*a2)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *v7 = v14;
  *(v7 + 8) = v19 + 24 * v23;
  *(v7 + 16) = 1;
  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, uint64_t *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E8938);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  v11 = *(*a3 + 4);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 16 * (v12 & v9));
    result = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 16 * v15);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v13)
      {
        result = 0;
        *v13 = 0;
        *(v13 + 1) = 0;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        result = *v16;
      }

      *v16 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v21 = *a4;
      *a4 = 0;
      v22 = *(v16 + 1);
      *(v16 + 1) = v21;
      if (v22)
      {
        result = WTF::fastFree((v22 - 16), a2);
      }

      v23 = *a2;
      if (*a2)
      {
        v24 = *(v23 - 16);
        v25 = *(v23 - 12) + 1;
        *(v23 - 12) = v25;
        v26 = (v24 + v25);
        v27 = *(v23 - 4);
        if (v27 <= 0x400)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v26 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v27 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_28:
          if (3 * v27 > 4 * v26)
          {
LABEL_36:
            v28 = v23 + 16 * v27;
            v29 = 1;
            goto LABEL_39;
          }

          if (!v27)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v23 = *a2;
            if (!*a2)
            {
LABEL_31:
              v27 = 0;
              goto LABEL_36;
            }

LABEL_35:
            v27 = *(v23 - 4);
            goto LABEL_36;
          }

LABEL_34:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v27 << (6 * v25 >= (2 * v27)), v16);
          v16 = result;
          v23 = *a2;
          if (!*a2)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      if (v27 > 2 * v26)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    result = WTF::equal(result, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  v29 = 0;
  v28 = v18 + 16 * v19;
LABEL_39:
  *a1 = v16;
  *(a1 + 8) = v28;
  *(a1 + 16) = v29;
  return result;
}

void *WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = *result;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            WTF::fastFree((v7 - 16), a2);
            v6 = *v5;
          }

          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 16;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void *WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, WTF::StringImpl *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = *result;
      do
      {
        if (*v5 != -1)
        {
          v6 = v5[1];
          v5[1] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
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

void *WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, WTF::StringImpl *a2)
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
          WGSL::Reflection::EntryPointInformation::~EntryPointInformation(v5, a2);
          v6 = *(v5 - 1);
          *(v5 - 1) = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 = (v5 + 104);
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void *WTF::HashMap<WTF::String,WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = *result;
      while (1)
      {
        v6 = *v5;
        if (*v5 == -1)
        {
          goto LABEL_4;
        }

        v7 = v5[1];
        v5[1] = 0;
        if (!v7)
        {
          goto LABEL_9;
        }

        if (*(v7 + 2) != 1)
        {
          break;
        }

        WebGPU::PipelineLayout::~PipelineLayout(v7, a2);
        bmalloc::api::tzoneFree(v8, v9);
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
LABEL_10:
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }
        }

LABEL_4:
        v5 += 2;
        if (!--v4)
        {
          goto LABEL_14;
        }
      }

      --*(v7 + 2);
LABEL_9:
      *v5 = 0;
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_4;
    }

LABEL_14:
    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

uint64_t WebGPU::ShaderModule::fragmentInputsForEntryPoint(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 12);
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E8D04);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v13)
  {
    v13 = v9 & v7;
    v14 = *(v3 + 16 * v13);
    if (v14 == -1)
    {
      goto LABEL_9;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      v10 = v3 + 16 * v13;
      v11 = *(this + 12);
      if (!v11)
      {
        goto LABEL_19;
      }

      v15 = *(v11 - 4);
      goto LABEL_17;
    }

LABEL_9:
    ++i;
  }

  v11 = *(this + 12);
  if (v11)
  {
    v15 = *(v11 - 4);
    v10 = v11 + 16 * v15;
LABEL_17:
    v11 += 16 * v15;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return v10 + 8;
  }
}

uint64_t WebGPU::ShaderModule::fragmentReturnTypeForEntryPoint(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 11);
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E8E28);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v13)
  {
    v13 = v9 & v7;
    v14 = *(v3 + 16 * v13);
    if (v14 == -1)
    {
      goto LABEL_9;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      v10 = v3 + 16 * v13;
      v11 = *(this + 11);
      if (!v11)
      {
        goto LABEL_19;
      }

      v15 = *(v11 - 4);
      goto LABEL_17;
    }

LABEL_9:
    ++i;
  }

  v11 = *(this + 11);
  if (v11)
  {
    v15 = *(v11 - 4);
    v10 = v11 + 16 * v15;
LABEL_17:
    v11 += 16 * v15;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return v10 + 8;
  }
}

uint64_t WebGPU::ShaderModule::vertexReturnTypeForEntryPoint(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E8F4CLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v13)
  {
    v13 = v9 & v7;
    v14 = *(v3 + 16 * v13);
    if (v14 == -1)
    {
      goto LABEL_9;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      v10 = v3 + 16 * v13;
      v11 = *(this + 13);
      if (!v11)
      {
        goto LABEL_19;
      }

      v15 = *(v11 - 4);
      goto LABEL_17;
    }

LABEL_9:
    ++i;
  }

  v11 = *(this + 13);
  if (v11)
  {
    v15 = *(v11 - 4);
    v10 = v11 + 16 * v15;
LABEL_17:
    v11 += 16 * v15;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return v10 + 8;
  }
}

const WTF::StringImpl *WebGPU::ShaderModule::stageInTypesForEntryPoint(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = *a2;
  if (!*a2)
  {
    return result;
  }

  if (!*(result + 1))
  {
    return 0;
  }

  v5 = *(this + 14);
  if (!v5)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E9094);
  }

  v7 = *(v5 - 8);
  v8 = *(result + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(result);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v13)
  {
    v13 = v9 & v7;
    v14 = *(v5 + 16 * v13);
    if (v14 == -1)
    {
      goto LABEL_13;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      v10 = v5 + 16 * v13;
      v11 = *(this + 14);
      if (!v11)
      {
        goto LABEL_23;
      }

      v15 = *(v11 - 4);
      goto LABEL_21;
    }

LABEL_13:
    ++i;
  }

  v11 = *(this + 14);
  if (v11)
  {
    v15 = *(v11 - 4);
    v10 = v11 + 16 * v15;
LABEL_21:
    v11 += 16 * v15;
    goto LABEL_23;
  }

  v10 = 0;
LABEL_23:
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return (v10 + 8);
  }
}

double WebGPU::ShaderModule::ShaderModule(uint64_t a1, atomic_ullong *a2, uint64_t *a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 40) = -1;
  v4 = *(a3 + 32);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v4)
    {
      v7 = *a3;
      *a3 = 0;
      *(a1 + 8) = v7;
      LODWORD(v7) = *(a3 + 2);
      *(a3 + 2) = 0;
      *(a1 + 16) = v7;
      LODWORD(v7) = *(a3 + 3);
      *(a3 + 3) = 0;
      *(a1 + 20) = v7;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v8 = a3[2];
      a3[2] = 0;
      *(a1 + 24) = v8;
      LODWORD(v8) = *(a3 + 6);
      *(a3 + 6) = 0;
      *(a1 + 32) = v8;
      LODWORD(v8) = *(a3 + 7);
      *(a3 + 7) = 0;
      *(a1 + 36) = v8;
    }

    else
    {
      v5 = *a3;
      *a3 = 0;
      *(a1 + 8) = v5;
      LODWORD(v5) = *(a3 + 2);
      *(a3 + 2) = 0;
      *(a1 + 16) = v5;
      LODWORD(v5) = *(a3 + 3);
      *(a3 + 3) = 0;
      *(a1 + 20) = v5;
      v6 = a3[2];
      a3[2] = 0;
      *(a1 + 24) = v6;
    }
  }

  *(a1 + 40) = *(a3 + 32);
LABEL_8:
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  while (1)
  {
    v9 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v10 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_16;
    }
  }

  v11 = a1;
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
  a1 = v11;
  if (v14 != 1)
  {
    WTF::Lock::unlockSlow(v13);
    a1 = v11;
  }

LABEL_16:
  *(a1 + 72) = a2;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

void sub_2256E9250(_Unwind_Exception *a1)
{
  WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v3, v6);
  WTF::HashMap<WTF::String,WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v2, v7);
  if (*(v4 + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(v1, v8);
  }

  *(v4 + 40) = -1;
  if (*v4 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::ShaderModule::~ShaderModule(WebGPU::ShaderModule *this, WTF::StringImpl *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 18);
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 14);
  if (v10)
  {
    v11 = *(v10 - 4);
    if (v11)
    {
      v12 = *(this + 14);
      do
      {
        v13 = *v12;
        if (*v12 != -1)
        {
          v14 = *(v12 + 8);
          if (v14)
          {
            WTF::fastFree((v14 - 16), a2);
            v13 = *v12;
          }

          *v12 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, a2);
          }
        }

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    WTF::fastFree((v10 - 16), a2);
  }

  v15 = *(this + 13);
  if (v15)
  {
    v16 = *(v15 - 4);
    if (v16)
    {
      v17 = *(this + 13);
      do
      {
        v18 = *v17;
        if (*v17 != -1)
        {
          v19 = *(v17 + 8);
          if (v19)
          {
            WTF::fastFree((v19 - 16), a2);
            v18 = *v17;
          }

          *v17 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }
        }

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    WTF::fastFree((v15 - 16), a2);
  }

  v20 = *(this + 12);
  if (v20)
  {
    v21 = *(v20 - 4);
    if (v21)
    {
      v22 = *(this + 12);
      do
      {
        v23 = *v22;
        if (*v22 != -1)
        {
          v24 = *(v22 + 8);
          if (v24)
          {
            WTF::fastFree((v24 - 16), a2);
            v23 = *v22;
          }

          *v22 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, a2);
          }
        }

        v22 += 16;
        --v21;
      }

      while (v21);
    }

    WTF::fastFree((v20 - 16), a2);
  }

  v25 = *(this + 11);
  if (v25)
  {
    v26 = *(v25 - 4);
    if (v26)
    {
      v27 = *(this + 11);
      do
      {
        v28 = *v27;
        if (*v27 != -1)
        {
          v29 = *(v27 + 8);
          if (v29)
          {
            WTF::fastFree((v29 - 16), a2);
            v28 = *v27;
          }

          *v27 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, a2);
          }
        }

        v27 += 16;
        --v26;
      }

      while (v26);
    }

    WTF::fastFree((v25 - 16), a2);
  }

  v30 = *(this + 10);
  if (v30)
  {
    v31 = *(v30 - 4);
    if (v31)
    {
      v32 = *(this + 10);
      do
      {
        if (*v32 != -1)
        {
          v33 = v32[1];
          v32[1] = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, a2);
          }

          v34 = *v32;
          *v32 = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, a2);
          }
        }

        v32 += 2;
        --v31;
      }

      while (v31);
    }

    WTF::fastFree((v30 - 16), a2);
  }

  v35 = *(this + 9);
  *(this + 9) = 0;
  if (v35)
  {
    do
    {
      v36 = *v35;
      if ((*v35 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v35, a2);
        goto LABEL_81;
      }

      v37 = *v35;
      atomic_compare_exchange_strong_explicit(v35, &v37, v36 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v37 != v36);
    if (v36 == 3)
    {
      WebGPU::Device::~Device(v35, a2);
      bmalloc::api::tzoneFree(v38, v39);
    }
  }

LABEL_81:

  v41 = *(this + 7);
  if (v41)
  {
    v42 = *(v41 - 4);
    if (v42)
    {
      v43 = (v41 + 8);
      do
      {
        if (*(v43 - 1) != -1)
        {
          WGSL::Reflection::EntryPointInformation::~EntryPointInformation(v43, v40);
          v44 = *(v43 - 1);
          *(v43 - 1) = 0;
          if (v44)
          {
            if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v40);
            }
          }
        }

        v43 = (v43 + 104);
        --v42;
      }

      while (v42);
    }

    WTF::fastFree((v41 - 16), v40);
  }

  v45 = *(this + 6);
  if (v45)
  {
    v46 = *(v45 - 4);
    if (v46)
    {
      v47 = *(this + 6);
      while (1)
      {
        v48 = *v47;
        if (*v47 == -1)
        {
          goto LABEL_93;
        }

        v49 = v47[1];
        v47[1] = 0;
        if (!v49)
        {
          goto LABEL_98;
        }

        if (*(v49 + 2) != 1)
        {
          break;
        }

        WebGPU::PipelineLayout::~PipelineLayout(v49, v40);
        bmalloc::api::tzoneFree(v50, v51);
        v48 = *v47;
        *v47 = 0;
        if (v48)
        {
LABEL_99:
          if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v40);
          }
        }

LABEL_93:
        v47 += 2;
        if (!--v46)
        {
          goto LABEL_103;
        }
      }

      --*(v49 + 2);
LABEL_98:
      *v47 = 0;
      if (v48)
      {
        goto LABEL_99;
      }

      goto LABEL_93;
    }

LABEL_103:
    WTF::fastFree((v45 - 16), v40);
  }

  if (*(this + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(this + 8, v40);
  }

  *(this + 40) = -1;
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

WTF *WebGPU::ShaderModule::convertPipelineLayout@<X0>(WebGPU::ShaderModule *this@<X0>, uint64_t a2@<X8>)
{
  v111 = 0;
  v112 = 0;
  if (*(this + 32) == 1 && *(this + 7) != 0)
  {
    v15 = this;
    v97 = 0;
    v96 = 0;
    v16 = 0;
    do
    {
      v19 = WebGPU::PipelineLayout::bindGroupLayout(v15, v16);
      ++*(v19 + 2);
      v110 = v19;
      v108 = 0;
      v109 = 0;
      v21 = *(v19 + 6);
      v94 = v19;
      v95 = v16;
      if (v21)
      {
        v22 = *(v21 - 4);
        v23 = v21 + 136 * v22;
        if (*(v21 - 12))
        {
          if (!v22)
          {
            goto LABEL_138;
          }

          v24 = 136 * v22;
          v25 = *(v19 + 6);
          while (*v25 >= 0xFFFFFFFE)
          {
            v25 += 136;
            v24 -= 136;
            if (!v24)
            {
              v25 = v23;
              goto LABEL_31;
            }
          }

          goto LABEL_31;
        }
      }

      else
      {
        v23 = 0;
        LODWORD(v22) = 0;
      }

      v25 = v23;
      v23 = v21 + 136 * v22;
      if (!v21)
      {
        v26 = 0;
        if (!v25)
        {
          goto LABEL_138;
        }

LABEL_32:
        v27 = HIDWORD(v97);
        v28 = v97;
        v29 = v96;
        while (2)
        {
          BYTE8(v99) = 0;
          v100 = 0uLL;
          LOBYTE(v101) = 0;
          v102 = 0;
          LOBYTE(v103) = 0;
          BYTE4(v103) = 0;
          BYTE8(v103) = 0;
          BYTE12(v103) = 0;
          LOBYTE(v104) = 0;
          BYTE4(v104) = 0;
          BYTE8(v104) = 0;
          BYTE12(v104) = 0;
          LOBYTE(v105) = 0;
          BYTE4(v105) = 0;
          BYTE8(v105) = 0;
          BYTE12(v105) = 0;
          v106[0] = 0;
          v106[4] = 0;
          v106[8] = 0;
          v106[12] = 0;
          v106[16] = 0;
          v30 = *(v25 + 12);
          LODWORD(v99) = *(v25 + 8);
          BYTE8(v99) = v30;
          v31 = *(v25 + 48);
          if (v31 == 255)
          {
            v32 = -1;
          }

          else
          {
            v32 = *(v25 + 48);
          }

          v106[20] = 0;
          if (v32 <= 1)
          {
            if (v32)
            {
              if (v31 != 1)
              {
LABEL_171:
                mpark::throw_bad_variant_access(v19);
              }

              v37 = *(v25 + 24);
              if (v37 == 2)
              {
                v3 = 1;
              }

              else
              {
                v3 = 2 * (v37 == 3);
              }

              LOBYTE(v31) = 1;
            }

            else
            {
              if (v31)
              {
                goto LABEL_171;
              }

              v34 = *(v25 + 24);
              if (v34 == 3)
              {
                v3 = 2;
              }

              else
              {
                v3 = v34 == 2;
              }

              v4 = *(v25 + 28) != 0;
              v98 = *(v25 + 32);
            }

            goto LABEL_105;
          }

          if (v32 != 2)
          {
            if (v32 == 3)
            {
              if (v31 != 3)
              {
                goto LABEL_171;
              }

              v3 = 0;
              v33 = *(v25 + 24);
              if (v33 > 2)
              {
                if (v33 == 3)
                {
                  v3 = 2;
                }

                else if (v33 == 0x7FFFFFFF)
                {
LABEL_175:
                  __break(0xC471u);
                  JUMPOUT(0x2256EA224);
                }
              }

              else if (v33 == 2)
              {
                v3 = 1;
              }

              else if (!v33)
              {
                goto LABEL_175;
              }

              v38 = *(v25 + 28) - 12;
              if (v38 <= 0x19)
              {
                v4 = byte_225881FB8[v38];
                v31 = *(v25 + 32);
                v5 = 3;
                if (v31 > 2)
                {
                  goto LABEL_84;
                }

LABEL_89:
                if (v31)
                {
                  if (v31 == 1)
                  {
                    v5 = 0;
                    goto LABEL_133;
                  }

                  if (v31 != 2)
                  {
LABEL_133:
                    LOBYTE(v31) = 3;
                    goto LABEL_105;
                  }
                }

LABEL_95:
                LOBYTE(v31) = 3;
                v5 = 1;
                goto LABEL_105;
              }

              v4 = 0;
              v31 = *(v25 + 32);
              v5 = 3;
              if (v31 <= 2)
              {
                goto LABEL_89;
              }

LABEL_84:
              if (v31 > 5)
              {
                if (v31 == 6)
                {
                  LOBYTE(v31) = 3;
                  v5 = 5;
                  goto LABEL_105;
                }

                if (v31 != 0x7FFFFFFF)
                {
                  goto LABEL_133;
                }

                goto LABEL_95;
              }

              if (v31 == 3)
              {
                v5 = 2;
              }

              else
              {
                if (v31 != 5)
                {
                  goto LABEL_133;
                }

                LOBYTE(v31) = 3;
                v5 = 4;
              }
            }

            else if (v31 != 4)
            {
              goto LABEL_171;
            }

LABEL_105:
            LOBYTE(v100) = v3;
            BYTE1(v100) = v4;
            BYTE2(v100) = v5;
            *(&v100 + 1) = v98;
            LOBYTE(v101) = v31;
            LODWORD(v103) = *(v25 + 56);
            BYTE4(v103) = *(v25 + 60);
            DWORD2(v103) = *(v25 + 80);
            BYTE12(v103) = *(v25 + 84);
            if (*(v25 + 108) == 1)
            {
              v39 = *(v25 + 104);
              if ((v39 & 3) != 0)
              {
                goto LABEL_177;
              }

              BYTE4(v104) = 1;
              LODWORD(v104) = (v39 + HIDWORD(v97)) >> 2;
              v40 = HIDWORD(v97) + 4 + v39;
              if (v40 > v27)
              {
                v27 = v40;
              }
            }

            v41 = *(v25 + 64);
            BYTE12(v104) = *(v25 + 68);
            DWORD2(v104) = v41;
            LODWORD(v105) = *(v25 + 88);
            BYTE4(v105) = *(v25 + 92);
            if (*(v25 + 116) == 1)
            {
              v42 = *(v25 + 112);
              if ((v42 & 3) != 0)
              {
                __break(0xC471u);
                JUMPOUT(0x2256EA1E4);
              }

              BYTE12(v105) = 1;
              DWORD2(v105) = ((v42 + v97) >> 2) + 3;
              v43 = v97 + 4 + v42;
              if (v43 > v28)
              {
                v28 = v43;
              }
            }

            v44 = *(v25 + 72);
            v106[4] = *(v25 + 76);
            *v106 = v44;
            v45 = *(v25 + 96);
            v106[12] = *(v25 + 100);
            *&v106[8] = v45;
            if (*(v25 + 124) == 1)
            {
              v46 = *(v25 + 120);
              if ((v46 & 3) != 0)
              {
                __break(0xC471u);
                JUMPOUT(0x2256EA204);
              }

              v106[20] = 1;
              *&v106[16] = (v46 + v96) >> 2;
              v47 = v96 + 4 + v46;
              if (v47 > v29)
              {
                v29 = v47;
              }
            }

            v48 = HIDWORD(v109);
            if (HIDWORD(v109) == v109)
            {
              v49 = WTF::Vector<WGSL::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v108, HIDWORD(v109) + 1, &v99);
              v48 = HIDWORD(v109);
              v50 = v108 + 120 * HIDWORD(v109);
              v51 = *v49;
              v52 = *(v49 + 16);
              *(v50 + 32) = *(v49 + 32);
              *v50 = v51;
              *(v50 + 16) = v52;
              v53 = *(v49 + 40);
              if (v53)
              {
                atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
                v48 = HIDWORD(v109);
              }

              *(v50 + 40) = v53;
              *(v50 + 48) = *(v49 + 48);
              v54 = *(v49 + 64);
              v55 = *(v49 + 80);
              v56 = *(v49 + 96);
              v57 = *(v49 + 109);
            }

            else
            {
              v50 = v108 + 120 * HIDWORD(v109);
              v58 = v99;
              v59 = v100;
              *(v50 + 32) = v101;
              *v50 = v58;
              *(v50 + 16) = v59;
              v60 = v102;
              if (v102)
              {
                atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
                v48 = HIDWORD(v109);
              }

              *(v50 + 40) = v60;
              *(v50 + 48) = v103;
              v54 = v104;
              v55 = v105;
              v56 = *v106;
              v57 = *&v106[13];
            }

            *(v50 + 109) = v57;
            *(v50 + 80) = v55;
            *(v50 + 96) = v56;
            *(v50 + 64) = v54;
            HIDWORD(v109) = v48 + 1;
            v19 = v102;
            v102 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v19 = WTF::StringImpl::destroy(v19, v20);
            }

            do
            {
              v25 += 136;
            }

            while (v25 != v23 && *v25 >= 0xFFFFFFFE);
            if (v25 == v26)
            {
              goto LABEL_139;
            }

            continue;
          }

          break;
        }

        if (v31 != 2)
        {
          goto LABEL_171;
        }

        v35 = *(v25 + 24);
        v3 = 3;
        if (v35 > 2)
        {
          if (v35 == 3)
          {
            v3 = 2;
            v36 = *(v25 + 28);
            v4 = 3;
            if (v36 <= 2)
            {
              goto LABEL_97;
            }

            goto LABEL_72;
          }

          if (v35 != 0x7FFFFFFF)
          {
            if (v35 == 5)
            {
              v3 = 4;
              v36 = *(v25 + 28);
              v4 = 3;
              if (v36 > 2)
              {
                goto LABEL_72;
              }

LABEL_97:
              switch(v36)
              {
                case 0:
                  goto LABEL_100;
                case 1:
                  v4 = 0;
                  break;
                case 2:
                  goto LABEL_100;
              }

LABEL_104:
              v5 = *(v25 + 32) != 0;
              LOBYTE(v31) = 2;
              goto LABEL_105;
            }

LABEL_71:
            v36 = *(v25 + 28);
            v4 = 3;
            if (v36 <= 2)
            {
              goto LABEL_97;
            }

            goto LABEL_72;
          }
        }

        else if (v35 >= 2)
        {
          if (v35 == 2)
          {
            v3 = 1;
            v36 = *(v25 + 28);
            v4 = 3;
            if (v36 <= 2)
            {
              goto LABEL_97;
            }

LABEL_72:
            if (v36 <= 5)
            {
              if (v36 == 3)
              {
                v4 = 2;
              }

              else if (v36 == 5)
              {
                v4 = 4;
              }

              goto LABEL_104;
            }

            if (v36 == 6)
            {
              v4 = 5;
            }

            else
            {
              if (v36 != 0x7FFFFFFF)
              {
                goto LABEL_104;
              }

LABEL_100:
              v4 = 1;
            }

            goto LABEL_104;
          }

          goto LABEL_71;
        }

        v3 = 0;
        goto LABEL_71;
      }

LABEL_31:
      v26 = v21 + 136 * *(v21 - 4);
      if (v25 != v26)
      {
        goto LABEL_32;
      }

LABEL_138:
      v29 = v96;
      v28 = v97;
      v27 = HIDWORD(v97);
LABEL_139:
      if (HIDWORD(v112) == v112)
      {
        v61 = WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v111, HIDWORD(v112) + 1, &v107);
        v62 = v111 + 24 * HIDWORD(v112);
        *v62 = *v61;
        v63 = *(v61 + 20);
        *(v62 + 8) = 0;
        *(v62 + 16) = 0;
        *(v62 + 20) = v63;
        if (v63)
        {
          if (v63 >= 0x2222223)
          {
            __break(0xC471u);
            JUMPOUT(0x2256EA22CLL);
          }

          v64 = 120 * v63;
          v65 = WTF::fastMalloc((120 * v63));
          *(v62 + 16) = v64 / 0x78;
          *(v62 + 8) = v65;
          v66 = *(v61 + 20);
          if (v66)
          {
            v67 = *(v61 + 8);
            v68 = (v67 + 120 * v66);
            do
            {
              v69 = *v67;
              v70 = v67[1];
              *(v65 + 32) = *(v67 + 4);
              *v65 = v69;
              *(v65 + 16) = v70;
              v71 = *(v67 + 5);
              if (v71)
              {
                atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
              }

              *(v65 + 40) = v71;
              *(v65 + 48) = v67[3];
              v72 = v67[4];
              v73 = v67[5];
              v74 = v67[6];
              *(v65 + 109) = *(v67 + 109);
              *(v65 + 80) = v73;
              *(v65 + 96) = v74;
              *(v65 + 64) = v72;
              v65 += 120;
              v67 = (v67 + 120);
            }

            while (v67 != v68);
          }
        }
      }

      else
      {
        v75 = v111 + 24 * HIDWORD(v112);
        v76 = HIDWORD(v109);
        *v75 = v107;
        *(v75 + 8) = 0;
        *(v75 + 16) = 0;
        *(v75 + 20) = v76;
        if (v76)
        {
          if (v76 >= 0x2222223)
          {
LABEL_177:
            __break(0xC471u);
            JUMPOUT(0x2256EA1C4);
          }

          v77 = 120 * v76;
          v78 = WTF::fastMalloc((120 * v76));
          *(v75 + 16) = v77 / 0x78;
          *(v75 + 8) = v78;
          v79 = v108;
          if (!HIDWORD(v109))
          {
            ++HIDWORD(v112);
            v15 = this;
            v89 = v94;
            v91 = v95;
            if (v108)
            {
              goto LABEL_162;
            }

            goto LABEL_163;
          }

          v80 = (v108 + 120 * HIDWORD(v109));
          do
          {
            v81 = *v79;
            v82 = v79[1];
            *(v78 + 32) = *(v79 + 4);
            *v78 = v81;
            *(v78 + 16) = v82;
            v83 = *(v79 + 5);
            if (v83)
            {
              atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
            }

            *(v78 + 40) = v83;
            *(v78 + 48) = v79[3];
            v84 = v79[4];
            v85 = v79[5];
            v86 = v79[6];
            *(v78 + 109) = *(v79 + 109);
            *(v78 + 80) = v85;
            *(v78 + 96) = v86;
            *(v78 + 64) = v84;
            v78 += 120;
            v79 = (v79 + 120);
          }

          while (v79 != v80);
        }
      }

      ++HIDWORD(v112);
      v79 = v108;
      if (HIDWORD(v109))
      {
        v87 = 120 * HIDWORD(v109);
        v88 = v108 + 5;
        v89 = v94;
        do
        {
          v90 = *v88;
          *v88 = 0;
          if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v90, v20);
          }

          v88 += 15;
          v87 -= 120;
        }

        while (v87);
        v79 = v108;
        v15 = this;
        v91 = v95;
        if (v108)
        {
LABEL_162:
          v108 = 0;
          LODWORD(v109) = 0;
          WTF::fastFree(v79, v20);
        }
      }

      else
      {
        v15 = this;
        v89 = v94;
        v91 = v95;
        if (v108)
        {
          goto LABEL_162;
        }
      }

LABEL_163:
      if (*(v89 + 2) == 1)
      {
        WebGPU::BindGroupLayout::~BindGroupLayout(v89, v20);
        bmalloc::api::tzoneFree(v17, v18);
        if (*(v15 + 32) != 1)
        {
          break;
        }
      }

      else
      {
        --*(v89 + 2);
        if (*(v15 + 32) != 1)
        {
          break;
        }
      }

      v16 = v91 + 1;
      v97 = __PAIR64__(v27, v28);
      v96 = v29;
    }

    while (v16 < *(v15 + 7));
  }

  result = WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v111);
  v9 = v111;
  if (HIDWORD(v112))
  {
    v10 = v111 + 24 * HIDWORD(v112);
    do
    {
      v11 = *(v9 + 20);
      result = *(v9 + 8);
      if (v11)
      {
        v12 = 120 * v11;
        v13 = (result + 40);
        do
        {
          v14 = *v13;
          *v13 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v8);
          }

          v13 += 15;
          v12 -= 120;
        }

        while (v12);
        result = *(v9 + 8);
      }

      if (result)
      {
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        result = WTF::fastFree(result, v8);
      }

      v9 += 24;
    }

    while (v9 != v10);
    v9 = v111;
  }

  if (v9)
  {
    v111 = 0;
    LODWORD(v112) = 0;
    return WTF::fastFree(v9, v8);
  }

  return result;
}

void sub_2256EA260(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24)
{
  WGSL::BindGroupLayout::~BindGroupLayout((v24 - 136), a2);
  WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>::~Ref((v24 - 112), v26);
  WGSL::PipelineLayout::~PipelineLayout((v24 - 104), v27);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::ShaderModule::ast(WebGPU::ShaderModule *this)
{
  v1 = *(this + 40);
  if (v1 == 255)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(this + 40);
  }

  if (v2 == 2)
  {
    if (v1 != 2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v1 != 1)
    {
LABEL_12:
      mpark::throw_bad_variant_access(this);
    }

    return 0;
  }

  if (*(this + 40))
  {
    goto LABEL_12;
  }

  return *(this + 3);
}

uint64_t WebGPU::ShaderModule::pipelineLayoutHint(WebGPU::ShaderModule *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *(this + 6);
  if (!v3)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x2256EA418);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 16 * v11);
    if (v12 != -1)
    {
      if (!v12)
      {
        return 0;
      }

      if (WTF::equal(v12, *a2, a3))
      {
        break;
      }
    }
  }

  v13 = v3 + 16 * v11;
  v14 = *(this + 6);
  if (v14 && v13 == v14 + 16 * *(v14 - 4))
  {
    return 0;
  }

  else
  {
    return *(v13 + 8);
  }
}

WebGPU::ShaderModule *wgpuShaderModuleRelease(WebGPU::ShaderModule *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebGPU::ShaderModule::~ShaderModule(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *wgpuShaderModuleGetCompilationInfo(unsigned __int8 *a1, void (*a2)(uint64_t, WTF **, uint64_t), uint64_t a3)
{
  ++*a1;
  v6 = WTF::fastMalloc(0x18);
  v7 = v6;
  *v6 = &unk_2838D3558;
  *(v6 + 1) = a2;
  *(v6 + 2) = a3;
  v8 = a1[40];
  if (v8 == 255)
  {
    v9 = -1;
  }

  else
  {
    v9 = a1[40];
  }

  if (v9 == 2)
  {
    if (v8 == 2)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      a2(1, &v34, a3);
      result = (*(*v7 + 8))(v7);
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  if (v9 != 1)
  {
    if (!a1[40])
    {
      v32 = a1 + 8;
      v33 = 1;
      LOBYTE(v29) = 0;
      LOBYTE(v31) = 0;
      v18 = WebGPU::convertMessages(&v34, &v32, &v29);
      v19 = HIDWORD(v35);
      v29 = 0;
      v30 = HIDWORD(v35);
      v12 = v34;
      v31 = v34;
      (*(*v7 + 16))(v7, 0, &v29, v18);
      result = (*(*v7 + 8))(v7);
      v20 = v36;
      if (v37)
      {
        v21 = 8 * v37;
        v22 = v36;
        do
        {
          result = *v22;
          *v22 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v14);
          }

          v22 = (v22 + 8);
          v21 -= 8;
        }

        while (v21);
      }

      if (v20)
      {
        result = WTF::fastFree(v20, v14);
      }

      if (v19)
      {
        v25 = 80 * v19;
        v26 = (v12 + 8);
        do
        {
          result = *v26;
          *v26 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v14);
          }

          v26 += 10;
          v25 -= 80;
        }

        while (v25);
      }

      goto LABEL_38;
    }

LABEL_45:
    mpark::throw_bad_variant_access(v6);
  }

  if (v8 != 1)
  {
    goto LABEL_45;
  }

  v32 = a1 + 8;
  v33 = 0;
  v29 = a1 + 24;
  LODWORD(v30) = 1;
  LOBYTE(v31) = 1;
  v10 = WebGPU::convertMessages(&v34, &v32, &v29);
  v11 = HIDWORD(v35);
  v29 = 0;
  v30 = HIDWORD(v35);
  v12 = v34;
  v31 = v34;
  (*(*v7 + 16))(v7, 1, &v29, v10);
  result = (*(*v7 + 8))(v7);
  v15 = v36;
  if (v37)
  {
    v16 = 8 * v37;
    v17 = v36;
    do
    {
      result = *v17;
      *v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }

      v17 = (v17 + 8);
      v16 -= 8;
    }

    while (v16);
  }

  if (v15)
  {
    result = WTF::fastFree(v15, v14);
  }

  if (v11)
  {
    v23 = 80 * v11;
    v24 = (v12 + 8);
    do
    {
      result = *v24;
      *v24 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }

      v24 += 10;
      v23 -= 80;
    }

    while (v23);
  }

LABEL_38:
  if (v12)
  {
    result = WTF::fastFree(v12, v14);
  }

LABEL_40:
  if (*a1 == 1)
  {
    WebGPU::ShaderModule::~ShaderModule(a1, v14);

    return bmalloc::api::tzoneFree(v27, v28);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256EA828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::ShaderModule *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  (*(*v15 + 8))(v15);
  WebGPU::CompilationMessageData::~CompilationMessageData(&a15, v17);
  WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(&a9, v18);
  _Unwind_Resume(a1);
}

void sub_2256EA870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::ShaderModule *a9)
{
  (*(*v9 + 8))(v9);
  WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(&a9, v11);
  _Unwind_Resume(a1);
}

void wgpuShaderModuleSetLabel(id *a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v4 = v9;
  if (a1[8])
  {
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x22AA68130](&v10);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    else
    {
      v10 = &stru_2838D6D18;
    }

    [a1[8] setLabel:v10];
    v6 = v10;
    v10 = 0;

    v4 = v9;
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  if (*a1 == 1)
  {
    WebGPU::ShaderModule::~ShaderModule(a1, v3);
    bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }
}

void sub_2256EA9D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::ShaderModule *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuAdapterFeatureName@<X0>(uint64_t result@<X0>, atomic_uint **a2@<X8>)
{
  switch(result)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      result = WTF::StringImpl::createWithoutCopyingNonEmpty();
      break;
    default:
      v2 = *MEMORY[0x277CD4670];
      if (*MEMORY[0x277CD4670])
      {
        atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
      }

      *a2 = v2;
      break;
  }

  return result;
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck,std::monostate>,(mpark::detail::Trait)1> &>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 32);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2 != 2)
  {
    v3 = result;
    if (v2 == 1)
    {
      v4 = *(result + 28);
      v5 = *(result + 16);
      if (v4)
      {
        v6 = 24 * v4;
        do
        {
          result = *v5;
          *v5 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          v5 = (v5 + 24);
          v6 -= 24;
        }

        while (v6);
        v5 = *(v3 + 16);
      }

      if (v5)
      {
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        result = WTF::fastFree(v5, a2);
      }

      v12 = *(v3 + 12);
      v10 = *v3;
      if (v12)
      {
        v13 = 24 * v12;
        do
        {
          result = *v10;
          *v10 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          v10 = (v10 + 24);
          v13 -= 24;
        }

        while (v13);
        v10 = *v3;
      }

      if (v10)
      {
LABEL_30:
        *v3 = 0;
        *(v3 + 8) = 0;

        return WTF::fastFree(v10, a2);
      }
    }

    else
    {
      result = *(result + 16);
      *(v3 + 16) = 0;
      if (result)
      {
        WGSL::ShaderModule::~ShaderModule(result, a2);
        result = bmalloc::api::tzoneFree(v7, v8);
      }

      v9 = *(v3 + 12);
      v10 = *v3;
      if (v9)
      {
        v11 = 24 * v9;
        do
        {
          result = *v10;
          *v10 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          v10 = (v10 + 24);
          v11 -= 24;
        }

        while (v11);
        v10 = *v3;
      }

      if (v10)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 24 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 24);
      v5 -= 24;
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

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
            v17 = *(v14 + 4);
            if (v17 >= 0x100)
            {
              goto LABEL_14;
            }

LABEL_16:
            v18 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v16 = 0;
            v17 = *(v14 + 4);
            if (v17 < 0x100)
            {
              goto LABEL_16;
            }

LABEL_14:
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v18 & v16;
            v18 = ++v19 + v20;
          }

          while (*(v15 + 8 * v20));
          v21 = (v15 + 8 * v20);
          v22 = *v13;
          *v13 = 0;
          *v21 = v22;
          v23 = *v13;
          *v13 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v10);
          }

          if (v13 == a3)
          {
            v12 = v21;
          }

          goto LABEL_8;
        }

        *v13 = 0;
      }

LABEL_8:
      if (++v11 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_23:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

void WGSL::Configuration::~Configuration(WGSL::Configuration *this, WTF::StringImpl *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 - 4);
    if (v3)
    {
      v4 = *(this + 2);
      do
      {
        v5 = *v4;
        if (*v4 != -1)
        {
          *v4 = 0;
          if (v5)
          {
            if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v5, a2);
            }
          }
        }

        ++v4;
        --v3;
      }

      while (v3);
    }

    WTF::fastFree((v2 - 16), a2);
  }
}

uint64_t mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::SuccessfulCheck,WGSL::FailedCheck>,(mpark::detail::Trait)1> &>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (*(result + 32))
  {
    v3 = *(result + 28);
    v4 = *(result + 16);
    if (v3)
    {
      v5 = 24 * v3;
      do
      {
        result = *v4;
        *v4 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        v4 = (v4 + 24);
        v5 -= 24;
      }

      while (v5);
      v4 = *(v2 + 16);
    }

    if (v4)
    {
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      result = WTF::fastFree(v4, a2);
    }

    v6 = *(v2 + 12);
    v7 = *v2;
    if (v6)
    {
      v8 = 24 * v6;
      do
      {
        result = *v7;
        *v7 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        v7 = (v7 + 24);
        v8 -= 24;
      }

      while (v8);
      v7 = *v2;
    }

    if (v7)
    {
LABEL_19:
      *v2 = 0;
      *(v2 + 8) = 0;

      return WTF::fastFree(v7, a2);
    }
  }

  else
  {
    result = *(result + 16);
    *(v2 + 16) = 0;
    if (result)
    {
      WGSL::ShaderModule::~ShaderModule(result, a2);
      result = bmalloc::api::tzoneFree(v9, v10);
    }

    v11 = *(v2 + 12);
    v7 = *v2;
    if (v11)
    {
      v12 = 24 * v11;
      do
      {
        result = *v7;
        *v7 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        v7 = (v7 + 24);
        v12 -= 24;
      }

      while (v12);
      v7 = *v2;
    }

    if (v7)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t WebGPU::vertexFormatTypeForStructMember(unsigned __int8 *a1)
{
  if (!a1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256EB2FCLL);
  }

  if (!a1[48])
  {
    v1 = *a1 - 1;
    if (v1 >= 5)
    {
      goto LABEL_30;
    }

    goto LABEL_4;
  }

  if (a1[48] != 1 || (v3 = *a1) == 0 || v3[48])
  {
    __break(0xC471u);
    JUMPOUT(0x2256EB2DCLL);
  }

  v4 = a1[8];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v1 = *v3 - 1;
      if (v1 >= 5)
      {
        goto LABEL_30;
      }

LABEL_4:
      if ((0x1Bu >> v1))
      {
        return dword_225881FD4[v1];
      }

LABEL_30:
      __break(0xC471u);
      JUMPOUT(0x2256EB214);
    }

    if (v4 == 2)
    {
      v6 = *v3 - 1;
      if (v6 >= 5 || ((0x1Bu >> v6) & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x2256EB33CLL);
      }

      return dword_225881FE8[(*v3 - 1)];
    }

LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x2256EB35CLL);
  }

  if (v4 == 3)
  {
    v5 = *v3 - 1;
    if (v5 >= 5 || ((0x1Bu >> v5) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x2256EB31CLL);
    }

    return dword_225881FFC[(*v3 - 1)];
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_29;
    }

    v7 = *v3 - 1;
    if (v7 >= 5 || ((0x1Bu >> v7) & 1) == 0)
    {
      goto LABEL_30;
    }

    return dword_225882010[(*v3 - 1)];
  }
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((24 * a2 + 16));
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
    v9 = WTF::fastMalloc((24 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v12 = a2;
  v13 = v9 + 8;
  do
  {
    *(v13 - 4) = -1;
    *(v13 - 1) = 0;
    *(v13 + 2) = 0;
    *v13 = 0;
    v13 += 6;
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
      v16 = (v6 + 24 * v14);
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
          v24 = v17 + 24 * v23;
          v22 = ++v19 + v23;
        }

        while (*v24 != -1);
        v25 = *v16;
        *(v24 + 16) = *(v16 + 2);
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

void WGSL::BindGroupLayout::~BindGroupLayout(WGSL::BindGroupLayout *this, WTF::StringImpl *a2)
{
  v3 = *(this + 5);
  v4 = *(this + 1);
  if (v3)
  {
    v5 = 120 * v3;
    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v6 += 15;
      v5 -= 120;
    }

    while (v5);
    v4 = *(this + 1);
  }

  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::ShaderModule::createLibrary(objc_object  {objcproto9MTLDevice}*,WTF::String const&,WTF&&,NSError * {__autoreleasing}*,WGSL::DeviceState &&)::$_0 &&>>()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _MergedGlobals_4 = [v0 BOOLForKey:@"WebKitWebGPUEnableSafeMath"];

  if (_MergedGlobals_4 == 1)
  {
    WebGPU::ShaderModule::createLibrary(objc_object  {objcproto9MTLDevice}*,WTF::String const&,WTF&&,NSError * {__autoreleasing}*,WGSL::DeviceState &&)::mathMode = 0;
LABEL_4:
    qword_28159C960 = 1;
    return;
  }

  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  WebGPU::ShaderModule::createLibrary(objc_object  {objcproto9MTLDevice}*,WTF::String const&,WTF&&,NSError * {__autoreleasing}*,WGSL::DeviceState &&)::mathMode = [v1 BOOLForKey:@"WebKitWebGPUEnableSafeMathMode"] ^ 1;

  if (_MergedGlobals_4)
  {
    goto LABEL_4;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  qword_28159C960 = [v2 BOOLForKey:@"WebKitWebGPUEnablePrecisionMathFunctions"];
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::ShaderModule::ShaderModuleState>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::ShaderModule::ShaderModuleState,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::ShaderModule::ShaderModuleState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
    *(v13 + 4) = 0;
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
    while (1)
    {
      v16 = v6 + 16 * v14;
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
            v20 = *(v17 + 4);
            if (v20 >= 0x100)
            {
              goto LABEL_17;
            }

LABEL_19:
            v21 = WTF::StringImpl::hashSlowCase(v17);
          }

          else
          {
            v19 = 0;
            v20 = *(v17 + 4);
            if (v20 < 0x100)
            {
              goto LABEL_19;
            }

LABEL_17:
            v21 = v20 >> 8;
          }

          v22 = 0;
          do
          {
            v23 = v21 & v19;
            v21 = ++v22 + v23;
          }

          while (*(v18 + 16 * v23));
          v24 = v18 + 16 * v23;
          v25 = *v16;
          *v16 = 0;
          *v24 = v25;
          LODWORD(v25) = *(v16 + 8);
          *(v24 + 12) = *(v16 + 12);
          *(v24 + 8) = v25;
          v26 = *v16;
          *v16 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          if (v16 == a3)
          {
            v15 = v24;
          }

          goto LABEL_11;
        }

        *v16 = 0;
      }

LABEL_11:
      if (++v14 == v7)
      {
        goto LABEL_26;
      }
    }
  }

  v15 = 0;
  result = 0;
  if (v6)
  {
LABEL_26:
    WTF::fastFree((v6 - 16), v10);
    return v15;
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WGPUVertexFormat,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WGPUVertexFormat>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
        break;
      }

LABEL_6:
      if (++v11 == v12)
      {
        goto LABEL_35;
      }
    }

    if (!v14)
    {
      v15 = *(v13 + 1);
      if (v15)
      {
        WTF::fastFree((v15 - 16), v8);
        v14 = *v13;
      }

      *v13 = 0;
      if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_6;
      }

LABEL_13:
      WTF::StringImpl::destroy(v14, v8);
      goto LABEL_6;
    }

    v16 = *a1;
    if (*a1)
    {
      v17 = *(v16 - 8);
      v18 = v14[4];
      if (v18 >= 0x100)
      {
LABEL_16:
        v19 = v18 >> 8;
LABEL_19:
        v20 = 0;
        do
        {
          v21 = v19 & v17;
          v19 = ++v20 + v21;
        }

        while (*(v16 + 16 * v21));
        v22 = v16 + 16 * v21;
        v23 = *(v22 + 8);
        if (v23)
        {
          WTF::fastFree((v23 - 16), v8);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v8);
          }

          *(v22 + 8) = 0;
          v25 = *v13;
          *v13 = 0;
          *(v13 + 1) = 0;
          *v22 = v25;
          v26 = *(v13 + 1);
          if (!v26)
          {
LABEL_27:
            v14 = *v13;
            *v13 = 0;
            if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        else
        {
          *v22 = 0;
          *(v22 + 8) = 0;
          v27 = *v13;
          *v13 = 0;
          *(v13 + 1) = 0;
          *v22 = v27;
          v26 = *(v13 + 1);
          if (!v26)
          {
            goto LABEL_27;
          }
        }

        WTF::fastFree((v26 - 16), v8);
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0;
      v18 = v14[4];
      if (v18 >= 0x100)
      {
        goto LABEL_16;
      }
    }

    v19 = WTF::StringImpl::hashSlowCase(v14);
    goto LABEL_19;
  }

  if (v4)
  {
LABEL_35:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::HashMap<unsigned int,WebGPU::ShaderModule::VertexOutputFragmentInput,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::ShaderModule::VertexOutputFragmentInput>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, __int128 *a3)
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
    while (1)
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
            v21 = *(v17 + 4);
            if (v21 >= 0x100)
            {
              goto LABEL_18;
            }

LABEL_20:
            v22 = WTF::StringImpl::hashSlowCase(v17);
          }

          else
          {
            v20 = 0;
            v21 = *(v17 + 4);
            if (v21 < 0x100)
            {
              goto LABEL_20;
            }

LABEL_18:
            v22 = v21 >> 8;
          }

          v23 = 0;
          do
          {
            v24 = v22 & v20;
            v22 = ++v23 + v24;
          }

          while (*(v19 + 16 * v24));
          v25 = v19 + 16 * v24;
          v26 = *(v25 + 8);
          if (v26)
          {
            WTF::fastFree((v26 - 16), v10);
            v27 = *v25;
            *v25 = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v10);
            }

            *(v25 + 8) = 0;
            v28 = *v16;
            *v16 = 0;
            *(v16 + 1) = 0;
            *v25 = v28;
            v29 = *(v16 + 1);
            if (v29)
            {
LABEL_28:
              WTF::fastFree((v29 - 16), v10);
            }
          }

          else
          {
            *v25 = 0;
            *(v25 + 8) = 0;
            v31 = *v16;
            *v16 = 0;
            *(v16 + 1) = 0;
            *v25 = v31;
            v29 = *(v16 + 1);
            if (v29)
            {
              goto LABEL_28;
            }
          }

          v30 = *v16;
          *v16 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v10);
          }

          if (v16 == a3)
          {
            v14 = v25;
          }

          goto LABEL_8;
        }

        v18 = *(v16 + 1);
        if (v18)
        {
          WTF::fastFree((v18 - 16), v10);
          v17 = *v16;
        }

        *v16 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }
        }
      }

LABEL_8:
      if (++v13 == v15)
      {
        goto LABEL_37;
      }
    }
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_37:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

double WebGPU::convertMessages(double *a1, WTF::StringImpl *a2, WTF::StringImpl *a3)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0.0;
  v6 = *(*a2 + 12);
  if (v6)
  {
    v7 = 0;
    v8 = **a2;
    v9 = 24 * v6;
    do
    {
      while (1)
      {
        v10 = v7;
        if (v7 != LODWORD(v32))
        {
          break;
        }

        v11 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v31, v7 + 1, v8);
        v12 = HIDWORD(v32);
        v13 = v31;
        v14 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v15 = HIDWORD(v32);
        *(v13 + 8 * v12) = v14;
        v7 = v15 + 1;
        HIDWORD(v32) = v7;
        v8 += 3;
        v9 -= 24;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v16 = v31;
      v17 = *v8;
      if (*v8)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        v7 = HIDWORD(v32);
      }

      *(v16 + 8 * v10) = v17;
      HIDWORD(v32) = ++v7;
      v8 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  if (*(a3 + 16) == 1)
  {
    v18 = *(*a3 + 12);
    if (v18)
    {
      v19 = **a3;
      v20 = 24 * v18;
      do
      {
        while (1)
        {
          v21 = v7;
          if (v7 != LODWORD(v32))
          {
            break;
          }

          v22 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v31, v7 + 1, v19);
          v23 = HIDWORD(v32);
          v24 = v31;
          v25 = *v22;
          if (*v22)
          {
            atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          }

          v26 = HIDWORD(v32);
          *(v24 + 8 * v23) = v25;
          v7 = v26 + 1;
          HIDWORD(v32) = v7;
          v19 += 3;
          v20 -= 24;
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        v27 = v31;
        v28 = *v19;
        if (*v19)
        {
          atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
          v7 = HIDWORD(v32);
        }

        *(v27 + 8 * v21) = v28;
        HIDWORD(v32) = ++v7;
        v19 += 3;
        v20 -= 24;
      }

      while (v20);
    }
  }

LABEL_25:
  v30[0] = &v33;
  v30[1] = &v31;
  WebGPU::convertMessages(WebGPU::Messages const&,std::optional<WebGPU::Messages> const&)::$_1::operator()(v30, a2, 0);
  if (*(a3 + 16) == 1)
  {
    WebGPU::convertMessages(WebGPU::Messages const&,std::optional<WebGPU::Messages> const&)::$_1::operator()(v30, a3, *(*a2 + 12));
  }

  *a1 = v33;
  *(a1 + 1) = v34;
  *(a1 + 2) = v31;
  result = v32;
  a1[3] = v32;
  return result;
}

void sub_2256EBEB8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v5);
  _Unwind_Resume(a1);
}

void WebGPU::CompilationMessageData::~CompilationMessageData(WebGPU::CompilationMessageData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 2);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
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
  v8 = *this;
  if (v7)
  {
    v9 = 80 * v7;
    v10 = (v8 + 8);
    do
    {
      v11 = *v10;
      *v10 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v10 += 10;
      v9 -= 80;
    }

    while (v9);
    v8 = *this;
  }

  if (v8)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v8, a2);
  }
}

WTF::StringImpl *WebGPU::convertMessages(WebGPU::Messages const&,std::optional<WebGPU::Messages> const&)::$_1::operator()(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  v3 = *a2;
  if (*(*a2 + 12))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = 8 * a3;
    while (1)
    {
      v10 = *v3;
      v29 = 0;
      v12 = *v6;
      v11 = *(v6 + 1);
      if (a3 + v8 >= *(v11 + 12))
      {
        break;
      }

      v13 = *(*v11 + v9 + 8 * v8);
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v30 = v13;
      LODWORD(v31) = *(a2 + 2);
      v14 = (v10 + v7);
      v15 = v14[3];
      *(&v31 + 1) = v14[2];
      *&v32 = v15;
      v17 = v14[4];
      v16 = v14[5];
      *(&v32 + 1) = v17;
      *&v33 = v16;
      *(&v33 + 1) = v15;
      *&v34 = v17;
      *(&v34 + 1) = v16;
      v18 = v12[3];
      if (v18 == v12[2])
      {
        v19 = WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v12, v18 + 1, &v29);
        v20 = (*v12 + 80 * v12[3]);
        v21 = *v19;
        *(v19 + 8) = 0;
        *v20 = v21;
        v22 = *(v19 + 16);
        v23 = *(v19 + 32);
        v24 = *(v19 + 64);
        v20[3] = *(v19 + 48);
        v20[4] = v24;
        v20[1] = v22;
        v20[2] = v23;
      }

      else
      {
        v25 = *v12 + 80 * v18;
        v30 = 0;
        *v25 = v29;
        *(v25 + 8) = v13;
        v26 = v31;
        v27 = v32;
        v28 = v34;
        *(v25 + 48) = v33;
        *(v25 + 64) = v28;
        *(v25 + 16) = v26;
        *(v25 + 32) = v27;
      }

      ++v12[3];
      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      ++v8;
      v3 = *a2;
      v7 += 24;
      if (v8 >= *(*a2 + 12))
      {
        return result;
      }
    }

    __break(0xC471u);
  }

  return result;
}

void sub_2256EC154(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 80 * v3;
    v6 = (v4 + 8);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v6 += 10;
      v5 -= 80;
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

unint64_t WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 80 * a1[3] <= a3)
  {
    v11 = a1[2];
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

    WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = a1[2];
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

    WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGPUCompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 80 * a2;
      result = WTF::fastMalloc((80 * a2));
      v2[2] = v5 / 0x50;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = v3;
        do
        {
          v9 = *v8;
          *(v8 + 1) = 0;
          *v7 = v9;
          v10 = *(v8 + 1);
          v11 = *(v8 + 2);
          v12 = *(v8 + 4);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = v12;
          *(v7 + 1) = v10;
          *(v7 + 2) = v11;
          result = *(v8 + 1);
          *(v8 + 1) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }

          v7 += 20;
          v8 = (v8 + 80);
        }

        while (v8 != (v3 + 80 * v4));
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
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
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
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

unint64_t WTF::Vector<WGSL::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 120 * *(a1 + 12) <= a3)
  {
    WTF::Vector<WGSL::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WGSL::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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

  if (v3 >= 0x2222223)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    v6 = *(result + 12);
    if (v3 <= 0x10)
    {
      v3 = 16;
    }

    v7 = 120 * v3;
    v8 = WTF::fastMalloc((120 * v3));
    *(v4 + 8) = v7 / 0x78;
    *v4 = v8;
    if (v6)
    {
      v10 = v8;
      v11 = v5;
      do
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        *(v10 + 32) = *(v11 + 4);
        *v10 = v12;
        *(v10 + 16) = v13;
        v14 = *(v11 + 5);
        *(v11 + 5) = 0;
        *(v10 + 40) = v14;
        *(v10 + 48) = *(v11 + 3);
        v15 = *(v11 + 4);
        v16 = *(v11 + 5);
        v17 = *(v11 + 6);
        *(v10 + 109) = *(v11 + 109);
        *(v10 + 80) = v16;
        *(v10 + 96) = v17;
        *(v10 + 64) = v15;
        v18 = *(v11 + 5);
        *(v11 + 5) = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v9);
        }

        v10 += 120;
        v11 = (v11 + 120);
      }

      while (v11 != (v5 + 120 * v6));
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      WTF::fastFree(v5, v9);
    }

    return 1;
  }

  return result;
}

unint64_t WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 24 * *(a1 + 12) <= a3)
  {
    WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WGSL::BindGroupLayout,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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

  if (v3 >= 0xAAAAAAB)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v3 = 16;
    }

    v6 = *(result + 12);
    v7 = 24 * v3;
    v8 = WTF::fastMalloc((24 * v3));
    *(v4 + 8) = v7 / 0x18;
    *v4 = v8;
    if (v6)
    {
      v10 = v8;
      v11 = v5;
      do
      {
        *v10 = *v11;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        v12 = *(v11 + 1);
        *(v11 + 1) = 0;
        *(v10 + 8) = v12;
        LODWORD(v12) = *(v11 + 4);
        *(v11 + 4) = 0;
        *(v10 + 16) = v12;
        LODWORD(v12) = *(v11 + 5);
        *(v11 + 5) = 0;
        *(v10 + 20) = v12;
        v13 = *(v11 + 5);
        v14 = *(v11 + 1);
        if (v13)
        {
          v15 = 120 * v13;
          v16 = (v14 + 40);
          do
          {
            v17 = *v16;
            *v16 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v9);
            }

            v16 += 15;
            v15 -= 120;
          }

          while (v15);
          v14 = *(v11 + 1);
        }

        if (v14)
        {
          *(v11 + 1) = 0;
          *(v11 + 4) = 0;
          WTF::fastFree(v14, v9);
        }

        v10 += 24;
        v11 = (v11 + 24);
      }

      while (v11 != (v5 + 24 * v6));
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      WTF::fastFree(v5, v9);
    }

    return 1;
  }

  return result;
}

uint64_t WebGPU::Texture::compressedFormatType(int a1)
{
  v1 = 0x100000000;
  v2 = 1;
  v3 = a1 - 68;
  v4 = a1 - 58;
  if (a1 == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x100000000;
  }

  v6 = v4 >= 0xA;
  if (v4 >= 0xA)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x100000000;
  }

  if (v6)
  {
    v8 = a1 != 0x7FFFFFFF;
  }

  else
  {
    v8 = 2;
  }

  v9 = v3 >= 0x1C;
  if (v3 >= 0x1C)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x100000000;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (!a1)
  {
    v1 = 0;
    v2 = 0;
  }

  if ((a1 - 1) < 0x2B)
  {
    v1 = 0;
    v2 = 0;
  }

  if (a1 > 57)
  {
    v1 = v10;
    v2 = v11;
  }

  return v2 | v1;
}

uint64_t WebGPU::Texture::texelBlockWidth(int a1)
{
  v1 = a1 - 78;
  if (a1 == 0x7FFFFFFF)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
  }

  if ((a1 - 74) >= 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (((1 << v1) & 0x3F) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  if (((1 << v1) & 0x3FC0) != 0)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  if (v1 <= 0x11)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if ((a1 - 70) < 4)
  {
    v7 = 5;
  }

  if ((a1 - 1) < 0x2B)
  {
    v7 = 1;
  }

  if (a1 <= 73)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t WebGPU::Texture::texelBlockHeight(int a1)
{
  if (a1 > 75)
  {
    v3 = a1 - 88;
    if (a1 == 0x7FFFFFFF)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    if ((a1 - 86) >= 2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 6;
    }

    if (((1 << v3) & 3) != 0)
    {
      v6 = 8;
    }

    else
    {
      v6 = 12;
    }

    if (((1 << v3) & 0x3C) != 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
    }

    if (v3 <= 7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if ((a1 - 84) >= 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    if ((a1 - 82) >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 8;
    }

    if ((a1 - 80) >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 6;
    }

    if ((a1 - 78) >= 2)
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    if ((a1 - 76) < 2)
    {
      v12 = 6;
    }

    if (a1 > 79)
    {
      v12 = v11;
    }

    if (a1 <= 85)
    {
      return v12;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (a1)
    {
      v1 = 4;
    }

    else
    {
      v1 = 0;
    }

    if ((a1 - 72) < 4)
    {
      v1 = 5;
    }

    if ((a1 - 1) >= 0x2B)
    {
      return v1;
    }

    else
    {
      return 1;
    }
  }
}

BOOL WebGPU::Texture::isColorRenderableFormat(unsigned int a1, uint64_t a2)
{
  if (a1 - 44 < 0x34)
  {
    return 0;
  }

  if (a1 > 0x2B)
  {
    return a1 && a1 != 0x7FFFFFFF;
  }

  if (((1 << a1) & 0xFC000000000) != 0 || ((1 << a1) & 0x10100204) != 0)
  {
    return 0;
  }

  if (a1 != 27)
  {
    return a1 && a1 != 0x7FFFFFFF;
  }

  v3 = *(a2 + 252);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 240);
  v5 = v3 - 1;
  do
  {
    v6 = *v4++;
    result = v6 == 11;
  }

  while (v6 != 11 && v5-- != 0);
  return result;
}

BOOL WebGPU::Texture::isRenderableFormat(_BOOL8 result, uint64_t a2)
{
  if ((result - 44) < 0x34)
  {
    return 0;
  }

  if (result > 0x1C)
  {
    return result != 0x7FFFFFFF;
  }

  if (((1 << result) & 0x10100204) != 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if (result != 27)
  {
    return result != 0x7FFFFFFF;
  }

  v2 = *(a2 + 252);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 240);
  v4 = v2 - 1;
  do
  {
    v5 = *v3++;
    result = v5 == 11;
  }

  while (v5 != 11 && v4-- != 0);
  return result;
}

uint64_t WebGPU::Texture::renderTargetPixelByteCost(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
    case 2:
    case 9:
    case 20:
    case 28:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
      result = 0;
      break;
    case 1:
    case 3:
    case 4:
      return result;
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
      result = 2;
      break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 21:
    case 22:
      result = 4;
      break;
    case 18:
    case 19:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      result = 8;
      break;
    case 35:
    case 36:
    case 37:
      result = 16;
      break;
    default:
      result = a1 != 0x7FFFFFFF;
      break;
  }

  return result;
}

uint64_t WebGPU::Texture::renderTargetPixelByteAlignment(unsigned int a1)
{
  if (a1 - 38 < 0x3A)
  {
    return 0;
  }

  if (a1 <= 0x25)
  {
    if (((1 << a1) & 0x38EE007000) != 0)
    {
      return 4;
    }

    if (((1 << a1) & 0x7000380E0) != 0)
    {
      return 2;
    }

    if (((1 << a1) & 0x10100204) != 0)
    {
      return 0;
    }
  }

  return a1 && a1 != 0x7FFFFFFF;
}

BOOL WebGPU::Texture::supportsMultisampling(unsigned int a1, int *a2, unsigned int a3)
{
  if (a1 - 44 < 0x34)
  {
    return 0;
  }

  if (a1 > 0x25)
  {
    return a1 != 0x7FFFFFFF;
  }

  if (((1 << a1) & 0x38F0006000) != 0 || !a1)
  {
    return 0;
  }

  if (a1 != 27)
  {
    return a1 != 0x7FFFFFFF;
  }

  if (!a3)
  {
    return 0;
  }

  v4 = a3 - 1;
  do
  {
    v5 = *a2++;
    result = v5 == 11;
  }

  while (v5 != 11 && v4-- != 0);
  return result;
}

uint64_t WebGPU::Texture::supportsResolve(unsigned int a1, uint64_t a2)
{
  if (a1 - 35 < 0x3D)
  {
    return 0;
  }

  if (a1 > 0x21)
  {
    goto LABEL_15;
  }

  if (((1 << a1) & 0x3F271FE7CLL) != 0 || !a1)
  {
    return 0;
  }

  if (a1 != 27)
  {
LABEL_15:
    if (a1 != 0x7FFFFFFF)
    {
      return 1;
    }

    result = 1415;
    __break(0xC471u);
    return result;
  }

  v3 = *(a2 + 252);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 240);
  v5 = v3 - 1;
  do
  {
    v6 = *v4++;
    result = v6 == 11;
  }

  while (v6 != 11 && v5-- != 0);
  return result;
}

BOOL WebGPU::Texture::supportsBlending(unsigned int a1, uint64_t a2)
{
  if (a1 - 36 < 0x3C)
  {
    return 0;
  }

  if (a1 > 0x23)
  {
    return a1 && a1 != 0x7FFFFFFF;
  }

  if (((1 << a1) & 0x3D271EE7CLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x820001000) == 0)
  {
    if (a1 == 27)
    {
      v8 = *(a2 + 252);
      if (!v8)
      {
        return 0;
      }

      v9 = *(a2 + 240);
      v10 = v8 - 1;
      do
      {
        v11 = *v9++;
        result = v11 == 11;
      }

      while (v11 != 11 && v10-- != 0);
      return result;
    }

    return a1 && a1 != 0x7FFFFFFF;
  }

  v3 = *(a2 + 252);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 240);
  v5 = v3 - 1;
  do
  {
    v6 = *v4++;
    result = v6 == 14;
  }

  while (v6 != 14 && v5-- != 0);
  return result;
}

BOOL WebGPU::Texture::hasStorageBindingCapability(int a1, uint64_t a2, int a3)
{
  if (a1 > 37)
  {
    if ((a1 - 38) >= 0x3A)
    {
      return a1 != 0x7FFFFFFF;
    }

    return 0;
  }

  if (a1 > 0x25)
  {
    return a1 != 0;
  }

  if (((1 << a1) & 0x1F0B8FFE) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x3FE0740000) != 0)
  {
    return a3 != 3;
  }

  if (a1 != 23)
  {
    return a1 != 0;
  }

  if (a3 == 3)
  {
    return 0;
  }

  v4 = *(a2 + 252);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 240);
  v6 = v4 - 1;
  do
  {
    v7 = *v5++;
    result = v7 == 12;
  }

  while (v7 != 12 && v6-- != 0);
  return result;
}

uint64_t WebGPU::Texture::removeSRGBSuffix(uint64_t result)
{
  switch(result)
  {
    case 18:
    case 19:
      result = 18;
      break;
    case 20:
    case 21:
    case 22:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 64:
    case 65:
    case 66:
    case 67:
      return result;
    case 23:
    case 24:
      result = 23;
      break;
    case 44:
    case 45:
      result = 44;
      break;
    case 46:
    case 47:
      result = 46;
      break;
    case 48:
    case 49:
      result = 48;
      break;
    case 56:
    case 57:
      result = 56;
      break;
    case 58:
    case 59:
      result = 58;
      break;
    case 60:
    case 61:
      result = 60;
      break;
    case 62:
    case 63:
      result = 62;
      break;
    case 68:
    case 69:
      result = 68;
      break;
    case 70:
    case 71:
      result = 70;
      break;
    case 72:
    case 73:
      result = 72;
      break;
    case 74:
    case 75:
      result = 74;
      break;
    case 76:
    case 77:
      result = 76;
      break;
    case 78:
    case 79:
      result = 78;
      break;
    case 80:
    case 81:
      result = 80;
      break;
    case 82:
    case 83:
      result = 82;
      break;
    case 84:
    case 85:
      result = 84;
      break;
    case 86:
    case 87:
      result = 86;
      break;
    case 88:
    case 89:
      result = 88;
      break;
    case 90:
    case 91:
      result = 90;
      break;
    case 92:
    case 93:
      result = 92;
      break;
    case 94:
    case 95:
      result = 94;
      break;
    default:
      if (result == 0x7FFFFFFF)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      break;
  }

  return result;
}

__CFString *WebGPU::Device::errorValidatingTextureCreation(uint64_t a1, _DWORD *a2, unsigned int **a3)
{
  if (!*(a1 + 8))
  {
    return @"createTexture: Device is not valid";
  }

  v3 = a2[4];
  if (!v3)
  {
    return @"createTexture: descriptor.usage is zero";
  }

  v4 = a2[6];
  if (!v4)
  {
    return @"createTexture: descriptor.size.width/height/depth is zero";
  }

  v5 = a2[7];
  if (!v5)
  {
    return @"createTexture: descriptor.size.width/height/depth is zero";
  }

  v6 = a2[8];
  if (!v6)
  {
    return @"createTexture: descriptor.size.width/height/depth is zero";
  }

  v7 = a2[10];
  if (!v7)
  {
    return @"createTexture: descriptor.mipLevelCount is zero";
  }

  v8 = a2[11];
  if (v8 != 4 && v8 != 1)
  {
    return @"createTexture: descriptor.sampleCount is neither 1 nor 4";
  }

  v9 = a2[5];
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = a1;
      if (v9 == 1)
      {
        v11 = *(a1 + 84);
        if (v4 > v11)
        {
          return @"createTexture: descriptor.size.width is greater than limits().maxTextureDimension2D";
        }

        if (v5 > v11)
        {
          return @"createTexture: descriptor.size.height is greater than limits().maxTextureDimension2D";
        }

        if (v6 > *(a1 + 92))
        {
          return @"createTexture: descriptor.size.depthOrArrayLayers > limits().maxTextureArrayLayers";
        }
      }

      goto LABEL_47;
    }

    if (v4 > *(a1 + 80))
    {
      return @"createTexture: descriptor.size.width is greater than limits().maxTextureDimension1D";
    }

    if (v5 != 1)
    {
      return @"createTexture: descriptor.size.height != 1";
    }

    if (v6 != 1)
    {
      return @"createTexture: descriptor.size.depthOrArrayLayers != 1";
    }

    if (v8 == 1)
    {
      v14 = a3;
      v15 = a2;
      v16 = a2[9];
      v17 = WebGPU::Texture::compressedFormatType(v16);
      result = @"createTexture: descriptor.format is compressed or a depth stencil format";
      if ((v16 - 38) < 6)
      {
        return result;
      }

      a3 = v14;
      v10 = a1;
      a2 = v15;
      if (HIDWORD(v17))
      {
        return result;
      }

      goto LABEL_47;
    }

    return @"createTexture: descriptor.sampleCount != 1";
  }

  if (v9 == 2)
  {
    v13 = *(a1 + 88);
    if (v4 > v13)
    {
      return @"createTexture: descriptor.size.width > limits().maxTextureDimension3D";
    }

    if (v5 > v13)
    {
      return @"createTexture: descriptor.size.height > limits().maxTextureDimension3D";
    }

    if (v6 > v13)
    {
      return @"createTexture: descriptor.size.depthOrArrayLayers > limits().maxTextureDimension3D";
    }

    if (v8 == 1)
    {
      v32 = a2[9];
      v19 = a3;
      v34 = a2;
      v20 = WebGPU::Texture::compressedFormatType(v32);
      a2 = v34;
      a3 = v19;
      v10 = a1;
      if (HIDWORD(v20))
      {
        if (v20)
        {
          if (v20 == 2)
          {
            return @"createTexture: descriptor.format is a ETC compressed format which is not supported for 3D textures";
          }

          if (v20 == 1)
          {
            v26 = *(a1 + 252);
            if (!v26)
            {
              return @"createTexture: descriptor.format is a compressed format but BC sliced 3D extension is not enabled";
            }

            v10 = a1;
            v27 = *(a1 + 240);
            result = @"createTexture: descriptor.format is a compressed format but BC sliced 3D extension is not enabled";
            a3 = v19;
            a2 = v34;
            while (1)
            {
              v28 = *v27++;
              if (v28 == 5)
              {
                break;
              }

              if (!--v26)
              {
                return result;
              }
            }
          }
        }

        else
        {
          v29 = *(a1 + 252);
          if (!v29)
          {
            return @"createTexture: descriptor.format is a compressed format but ASTC sliced 3D extension is not enabled";
          }

          v10 = a1;
          v30 = *(a1 + 240);
          result = @"createTexture: descriptor.format is a compressed format but ASTC sliced 3D extension is not enabled";
          a3 = v19;
          a2 = v34;
          while (1)
          {
            v31 = *v30++;
            if (v31 == 8)
            {
              break;
            }

            if (!--v29)
            {
              return result;
            }
          }
        }
      }

      if ((v32 - 38) < 6)
      {
        return @"createTexture: descriptor.format is a depth stencil format, this is not allowed for 3D textures";
      }

      goto LABEL_47;
    }

    return @"createTexture: descriptor.sampleCount != 1";
  }

  v10 = a1;
  if (v9 == 0x7FFFFFFF)
  {
    return @"createTexture: descriptor.dimension is WGPUTextureDimension_Force32";
  }

LABEL_47:
  v35 = a3;
  v21 = a2;
  v22 = a2[9];
  if (v4 % WebGPU::Texture::texelBlockWidth(a2[9]))
  {
    return @"createTexture: descriptor.size.width % Texture::texelBlockWidth(descriptor.format)";
  }

  if (v5 % WebGPU::Texture::texelBlockHeight(v22))
  {
    return @"createTexture: descriptor.size.height % Texture::texelBlockHeight(descriptor.format)";
  }

  if (v8 < 2)
  {
    goto LABEL_57;
  }

  if (v7 != 1)
  {
    return @"createTexture: descriptor.sampleCount > 1 and descriptor.mipLevelCount != 1";
  }

  if (v6 != 1)
  {
    return @"createTexture: descriptor.sampleCount > 1 and descriptor.size.depthOrArrayLayers != 1";
  }

  if ((v3 & 0x18) != 0x10)
  {
    return @"createTexture: descriptor.sampleCount > 1 and (descriptor.usage & WGPUTextureUsage_StorageBinding) || !(descriptor.usage & WGPUTextureUsage_RenderAttachment)";
  }

  if (!WebGPU::Texture::isRenderableFormat(v22, v10))
  {
    return @"createTexture: descriptor.sampleCount > 1 and !isRenderableFormat(descriptor.format, *this)";
  }

  if (!WebGPU::Texture::supportsMultisampling(v22, *(v10 + 240), *(v10 + 252)))
  {
    return @"createTexture: descriptor.sampleCount > 1 and !supportsMultisampling(descriptor.format, *this)";
  }

LABEL_57:
  if (v7 > WebGPU::maximumMiplevelCount(v9, *(v21 + 3), v6))
  {
    return @"createTexture: descriptor.mipLevelCount > maximumMiplevelCount(descriptor.dimension, descriptor.size)";
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_64;
  }

  if (!WebGPU::Texture::isRenderableFormat(v22, v10))
  {
    return @"createTexture: descriptor.usage & WGPUTextureUsage_RenderAttachment && !isRenderableFormat(descriptor.format, *this)";
  }

  if (!v9)
  {
    return @"createTexture: descriptor.usage & WGPUTextureUsage_RenderAttachment && descriptor.dimension == WGPUTextureDimension_1D";
  }

LABEL_64:
  if ((v3 & 8) != 0 && !WebGPU::Texture::hasStorageBindingCapability(v22, v10, 0))
  {
    return @"createTexture: descriptor.usage & WGPUTextureUsage_StorageBinding && !hasStorageBindingCapability(descriptor.format)";
  }

  v23 = *(v35 + 3);
  if (!v23)
  {
    return 0;
  }

  v24 = *v35;
  v25 = 4 * v23;
  while (WebGPU::areCopyCompatible(v22, *v24))
  {
    result = 0;
    ++v24;
    v25 -= 4;
    if (!v25)
    {
      return result;
    }
  }

  return @"createTexture: !textureViewFormatCompatible(descriptor.format, viewFormat)";
}

uint64_t WebGPU::maximumMiplevelCount(int a1, unint64_t a2, unsigned int a3)
{
  v3 = HIDWORD(a2);
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      return 0;
    }

    if (a2 > HIDWORD(a2))
    {
      LODWORD(v3) = a2;
    }

    if (v3 <= a3)
    {
      LODWORD(v3) = a3;
    }

    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1)
    {
      return 0;
    }

    if (a2 > HIDWORD(a2))
    {
      LODWORD(v3) = a2;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return 32 - __clz(v3);
}

uint64_t WebGPU::Texture::pixelFormat(int a1)
{
  result = 10;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 12;
      break;
    case 3:
      result = 13;
      break;
    case 4:
      result = 14;
      break;
    case 5:
      result = 23;
      break;
    case 6:
      result = 24;
      break;
    case 7:
      result = 25;
      break;
    case 8:
      result = 30;
      break;
    case 9:
      result = 32;
      break;
    case 10:
      result = 33;
      break;
    case 11:
      result = 34;
      break;
    case 12:
      result = 55;
      break;
    case 13:
      result = 53;
      break;
    case 14:
      result = 54;
      break;
    case 15:
      result = 63;
      break;
    case 16:
      result = 64;
      break;
    case 17:
      result = 65;
      break;
    case 18:
      result = 70;
      break;
    case 19:
      result = 71;
      break;
    case 20:
      result = 72;
      break;
    case 21:
      result = 73;
      break;
    case 22:
      result = 74;
      break;
    case 23:
      result = 80;
      break;
    case 24:
      result = 81;
      break;
    case 25:
      result = 91;
      break;
    case 26:
      result = 90;
      break;
    case 27:
      result = 92;
      break;
    case 28:
      result = 93;
      break;
    case 29:
      result = 105;
      break;
    case 30:
      result = 103;
      break;
    case 31:
      result = 104;
      break;
    case 32:
      result = 113;
      break;
    case 33:
      result = 114;
      break;
    case 34:
      result = 115;
      break;
    case 35:
      result = 125;
      break;
    case 36:
      result = 123;
      break;
    case 37:
      result = 124;
      break;
    case 38:
      result = 253;
      break;
    case 39:
      result = 250;
      break;
    case 40:
    case 42:
      result = 252;
      break;
    case 41:
    case 43:
      result = 260;
      break;
    case 44:
      result = 130;
      break;
    case 45:
      result = 131;
      break;
    case 46:
      result = 132;
      break;
    case 47:
      result = 133;
      break;
    case 48:
      result = 134;
      break;
    case 49:
      result = 135;
      break;
    case 50:
      result = 140;
      break;
    case 51:
      result = 141;
      break;
    case 52:
      result = 142;
      break;
    case 53:
      result = 143;
      break;
    case 54:
      result = 151;
      break;
    case 55:
      result = 150;
      break;
    case 56:
      result = 152;
      break;
    case 57:
      result = 153;
      break;
    case 58:
      result = 180;
      break;
    case 59:
      result = 181;
      break;
    case 60:
      result = 182;
      break;
    case 61:
      result = 183;
      break;
    case 62:
      result = 178;
      break;
    case 63:
      result = 179;
      break;
    case 64:
      result = 170;
      break;
    case 65:
      result = 172;
      break;
    case 66:
      result = 174;
      break;
    case 67:
      result = 176;
      break;
    case 68:
      result = 204;
      break;
    case 69:
      result = 186;
      break;
    case 70:
      result = 205;
      break;
    case 71:
      result = 187;
      break;
    case 72:
      result = 206;
      break;
    case 73:
      result = 188;
      break;
    case 74:
      result = 207;
      break;
    case 75:
      result = 189;
      break;
    case 76:
      result = 208;
      break;
    case 77:
      result = 190;
      break;
    case 78:
      result = 210;
      break;
    case 79:
      result = 192;
      break;
    case 80:
      result = 211;
      break;
    case 81:
      result = 193;
      break;
    case 82:
      result = 212;
      break;
    case 83:
      result = 194;
      break;
    case 84:
      result = 213;
      break;
    case 85:
      result = 195;
      break;
    case 86:
      result = 214;
      break;
    case 87:
      result = 196;
      break;
    case 88:
      result = 215;
      break;
    case 89:
      result = 197;
      break;
    case 90:
      result = 216;
      break;
    case 91:
      result = 198;
      break;
    case 92:
      result = 217;
      break;
    case 93:
      result = 199;
      break;
    case 94:
      result = 218;
      break;
    case 95:
      result = 200;
      break;
    default:
      if (a1 == 0x7FFFFFFF)
      {
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t WebGPU::Texture::bytesPerRow(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = WebGPU::Texture::texelBlockWidth(a1);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  WebGPU::Texture::texelBlockSize(a1, &v11);
  v8 = a2 / v7;
  if (a2 % v7)
  {
    ++v8;
  }

  v9 = v8 * a3;
  if (is_mul_ok(v11, v9))
  {
    return v11 * v9;
  }

  else
  {
    return -1;
  }
}

uint64_t WebGPU::Texture::texelBlockSize@<X0>(uint64_t result@<X0>, int *a2@<X8>)
{
  v2 = 1;
  switch(result)
  {
    case 0:
    case 41:
    case 43:
      goto LABEL_7;
    case 1:
    case 2:
    case 3:
    case 4:
    case 38:
      goto LABEL_8;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 39:
      v2 = 2;
      goto LABEL_8;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 40:
    case 42:
      v2 = 4;
      goto LABEL_8;
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 44:
    case 45:
    case 50:
    case 51:
    case 58:
    case 59:
    case 60:
    case 61:
    case 64:
    case 65:
      v2 = 8;
      goto LABEL_8;
    case 35:
    case 36:
    case 37:
    case 46:
    case 47:
    case 48:
    case 49:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 62:
    case 63:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
      v2 = 16;
      goto LABEL_8;
    default:
      if (result != 0x7FFFFFFF)
      {
        return result;
      }

LABEL_7:
      v2 = 0;
LABEL_8:
      *a2 = v2;
      return result;
  }
}

uint64_t WebGPU::Texture::aspectSpecificFormat(uint64_t result, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v2 = result - 39;
    if ((result - 39) < 5)
    {
      v3 = &unk_225882040;
      return v3[v2];
    }

    return 0;
  }

  if (a2 != 1)
  {
    return result;
  }

  v2 = result - 38;
  if ((result - 38) >= 6)
  {
    return 0;
  }

  v3 = &unk_225882028;
  return v3[v2];
}

void WebGPU::Device::createTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*a2 && *(a1 + 8))
  {
    v9 = *(a2 + 48);
    v8 = *(a2 + 56);
    v58 = 0;
    v59 = 0;
    v60 = v9;
    if (!v9)
    {
      goto LABEL_17;
    }

    if (v9 >> 30)
    {
      __break(0xC471u);
      return;
    }

    v10 = WTF::fastMalloc((4 * v9));
    v59 = v9;
    v58 = v10;
    v11 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v11 < 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8;
      if (v10 - v8 >= 0x20)
      {
        v13 = v11 + 1;
        v14 = 4 * (v13 & 0x7FFFFFFFFFFFFFF8);
        v15 = (v10 + v14);
        v12 = (v8 + v14);
        v16 = (v8 + 16);
        v17 = (v10 + 16);
        v18 = v13 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v19 = *v16;
          *(v17 - 1) = *(v16 - 1);
          *v17 = v19;
          v16 += 2;
          v17 += 2;
          v18 -= 8;
        }

        while (v18);
        v10 = v15;
        if (v13 == (v13 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_17:
          v21 = WebGPU::Device::errorValidatingTextureCreation(a1, a2, &v58);
          if (v21)
          {
            v22 = v21;
            WebGPU::Device::generateAValidationError(a1, v21);
            if (WebGPU::Texture::s_heapRef)
            {
LABEL_19:
              NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v23);
LABEL_20:
              v25 = NonCompact;
              WebGPU::Texture::Texture(NonCompact, a1);
              goto LABEL_21;
            }

LABEL_84:
            NonCompact = WebGPU::Texture::operatorNewSlow(0x90);
            goto LABEL_20;
          }

          v22 = objc_opt_new();
          v27 = *(a2 + 36);
          v28 = (*(a2 + 16) >> 2) & 7;
          if ((v27 - 38) < 6 || WebGPU::Texture::compressedFormatType(v27) >> 32)
          {
            v28 |= 0x10uLL;
          }

          [v22 setUsage:v28];
          v29 = *(a2 + 20);
          if (v29 > 1)
          {
            if (v29 != 2)
            {
              if (v29 == 0x7FFFFFFF)
              {
                if (WebGPU::Texture::s_heapRef)
                {
                  goto LABEL_19;
                }

                goto LABEL_84;
              }

              goto LABEL_45;
            }

            [v22 setWidth:*(a2 + 24)];
            [v22 setHeight:*(a2 + 28)];
            [v22 setDepth:*(a2 + 32)];
            v33 = 7;
          }

          else
          {
            if (v29)
            {
              if (v29 == 1)
              {
                [v22 setWidth:*(a2 + 24)];
                [v22 setHeight:*(a2 + 28)];
                if (*(a2 + 32) < 2u)
                {
                  v30 = *(a2 + 44) > 1u;
                  v31 = 2;
                  v32 = 4;
                }

                else
                {
                  [v22 setArrayLength:?];
                  v30 = *(a2 + 44) > 1u;
                  v31 = 3;
                  v32 = 8;
                }

                if (v30)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = v31;
                }

                goto LABEL_44;
              }

LABEL_45:
              [v22 setPixelFormat:WebGPU::Texture::pixelFormat(*(a2 + 36))];
              if ([v22 pixelFormat])
              {
                [v22 setMipmapLevelCount:*(a2 + 40)];
                [v22 setSampleCount:*(a2 + 44)];
                if (([*(a1 + 8) hasUnifiedMemory] & *(a1 + 284)) != 0)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = 2;
                }

                [v22 setStorageMode:v34];
                v35 = [*(a1 + 8) newTextureWithDescriptor:v22];
                if (v35)
                {
                  WebGPU::Device::setOwnerWithIdentity(a1, v35);
                  if (*(a2 + 8))
                  {
                    strlen(*(a2 + 8));
                  }

                  WTF::String::fromUTF8();
                  if (v57)
                  {
                    atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
                    MEMORY[0x22AA68130](&v61, v57);
                    if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v57, v46);
                    }
                  }

                  else
                  {
                    v61 = &stru_2838D6D18;
                  }

                  [v35 setLabel:v61];
                  v47 = v61;
                  v61 = 0;

                  v49 = v57;
                  v57 = 0;
                  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v49, v48);
                  }

                  v51 = v35;
                  if (WebGPU::Texture::s_heapRef)
                  {
                    v52 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v50);
                  }

                  else
                  {
                    v52 = WebGPU::Texture::operatorNewSlow(0x90);
                  }

                  v53 = v52;
                  WebGPU::Texture::Texture(v52, v51, a2, &v58, a1);
                  *a3 = v53;
                }

                else
                {
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v57 = v61;
                  WebGPU::Device::generateAnOutOfMemoryError(a1, &v57);
                  v43 = v57;
                  v57 = 0;
                  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v43, v42);
                  }

                  if (WebGPU::Texture::s_heapRef)
                  {
                    v44 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v42);
                  }

                  else
                  {
                    v44 = WebGPU::Texture::operatorNewSlow(0x90);
                  }

                  v45 = v44;
                  WebGPU::Texture::Texture(v44, a1);
                  *a3 = v45;
                }

                goto LABEL_22;
              }

              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v37 = v61;
              v57 = v61;
              if ((*(a1 + 548) & 1) == 0)
              {
                v38 = *(a1 + 32) + 32 * *(a1 + 44);
                v39 = (v38 + 16);
                v40 = -32 * *(a1 + 44);
                while (v40)
                {
                  v41 = *(v38 - 8);
                  v38 -= 32;
                  v39 -= 32;
                  v40 += 32;
                  if (!v41)
                  {
                    if ((*v39 & 1) == 0)
                    {
                      v57 = 0;
                      *(v39 - 4) = 1;
                      *(v39 - 1) = v37;
                      *v39 = 1;
                    }

                    goto LABEL_76;
                  }
                }

                v54 = *(a1 + 24);
                if (v54)
                {
                  (*(*v54 + 16))(v54, 1, &v57);
                  v55 = *(a1 + 24);
                  *(a1 + 24) = 0;
                  if (v55)
                  {
                    (*(*v55 + 8))(v55);
                  }
                }

LABEL_76:
                v37 = v57;
              }

              v57 = 0;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v36);
              }

              if (WebGPU::Texture::s_heapRef)
              {
                v56 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v36);
              }

              else
              {
                v56 = WebGPU::Texture::operatorNewSlow(0x90);
              }

              v25 = v56;
              WebGPU::Texture::Texture(v56, a1);
LABEL_21:
              *a3 = v25;
LABEL_22:

              if (v58)
              {
                WTF::fastFree(v58, v26);
              }

              return;
            }

            [v22 setWidth:*(a2 + 24)];
            if (*(a2 + 32) >= 2u)
            {
              [v22 setTextureType:1];
              [v22 setArrayLength:*(a2 + 32)];
              goto LABEL_45;
            }

            v33 = 0;
          }

LABEL_44:
          [v22 setTextureType:v33];
          goto LABEL_45;
        }
      }
    }

    do
    {
      v20 = *v12++;
      *v10 = v20;
      v10 = (v10 + 4);
    }

    while (v12 != (v8 + 4 * v9));
    goto LABEL_17;
  }

  if (WebGPU::Texture::s_heapRef)
  {
    v5 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, a2);
  }

  else
  {
    v5 = WebGPU::Texture::operatorNewSlow(0x90);
  }

  v6 = v5;
  WebGPU::Texture::Texture(v5, a1);
  *a3 = v6;
}