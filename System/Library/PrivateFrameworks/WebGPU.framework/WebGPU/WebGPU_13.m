void sub_2256EE578(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF *a10, uint64_t a11, char a12)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    WTF::fastFree(a10, v14);
  }

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Texture::Texture(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, atomic_ullong *a5)
{
  v9 = a2;
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = *(a3 + 24);
  v11 = *(a3 + 28);
  *(&v11 + 1) = *(a3 + 40);
  *(a1 + 28) = v11;
  v12 = *(a3 + 36);
  v14 = *(a3 + 16);
  v13 = *(a3 + 20);
  *(a1 + 56) = 0;
  *(a1 + 44) = v13;
  *(a1 + 48) = v12;
  *(a1 + 52) = v14;
  *(a1 + 64) = 0;
  v15 = *a4;
  *a4 = 0;
  *(a1 + 56) = v15;
  LODWORD(v15) = *(a4 + 2);
  *(a4 + 2) = 0;
  *(a1 + 64) = v15;
  LODWORD(v15) = *(a4 + 3);
  *(a4 + 3) = 0;
  *(a1 + 68) = v15;
  while (1)
  {
    v16 = *a5;
    if ((*a5 & 1) == 0)
    {
      break;
    }

    v17 = *a5;
    atomic_compare_exchange_strong_explicit(a5, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
  v19 = *a5;
  v20 = 1;
  atomic_compare_exchange_strong_explicit(*a5, &v18, 1u, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    MEMORY[0x22AA683C0](v19);
  }

  ++*(v19 + 8);
  atomic_compare_exchange_strong_explicit(v19, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(v19);
  }

LABEL_9:
  *(a1 + 72) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;

  return a1;
}

void sub_2256EE808(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v7);
  _Unwind_Resume(a1);
}

double WebGPU::Texture::Texture(WebGPU::Texture *this, atomic_ullong *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0x100000000;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
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
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 52) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return result;
}

void sub_2256EE90C(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 56);
  if (v4)
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    WTF::fastFree(v4, a2);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v5);
  _Unwind_Resume(a1);
}

void WebGPU::Texture::~Texture(id *this)
{
  v3 = this[14];
  if (v3)
  {
    this[14] = 0;
    *(this + 30) = 0;
    WTF::fastFree(v3, v2);
  }

  v4 = *(this + 25);
  v5 = this[11];
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      while (1)
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
          {
            break;
          }
        }

        v5 = (v5 + 8);
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      atomic_store(1u, v7);
      v8 = v5;
      WTF::fastFree(v7, v2);
      v5 = (v8 + 8);
      v6 -= 8;
    }

    while (v6);
LABEL_10:
    v5 = this[11];
  }

  if (v5)
  {
    this[11] = 0;
    *(this + 24) = 0;
    WTF::fastFree(v5, v2);
  }

  v9 = this[10];
  if (v9)
  {
    v10 = *(v9 - 1);
    if (v10)
    {
      v11 = v9 + 2;
      do
      {
        if (*(v11 - 2) != -2 && *v11)
        {
          WTF::fastFree((*v11 - 16), v2);
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    WTF::fastFree((v9 - 4), v2);
  }

  v12 = this[9];
  this[9] = 0;
  if (v12)
  {
    do
    {
      v13 = *v12;
      if ((*v12 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v12);
        goto LABEL_27;
      }

      v14 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v14 != v13);
    if (v13 == 3)
    {
      WebGPU::Device::~Device(v12);
      bmalloc::api::tzoneFree(v15, v16);
    }
  }

LABEL_27:
  v17 = this[7];
  if (v17)
  {
    this[7] = 0;
    *(this + 16) = 0;
    WTF::fastFree(v17, v2);
  }

  if (*(this + 2) == 1)
  {
    v19 = *this;
    if (*this)
    {
      *(v19 + 1) = 0;
      *this = 0;
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v18);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::TextureView::createInvalid(WebGPU::TextureView *this, WebGPU::Texture *a2, atomic_ullong *a3)
{
  if (WebGPU::TextureView::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, a2);
  }

  else
  {
    result = WebGPU::TextureView::operatorNewSlow(0x78);
  }

  v7 = result;
  *result = 0;
  *(result + 8) = 1;
  *(result + 84) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 57) = 0u;
  while (1)
  {
    v8 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v9 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
  v11 = *a3;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    result = MEMORY[0x22AA683C0](v11);
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    result = WTF::Lock::unlockSlow(v11);
  }

LABEL_11:
  ++*(a2 + 2);
  v7[11] = a3;
  v7[12] = a2;
  v7[13] = 0;
  v7[14] = 0;
  *this = v7;
  return result;
}

void sub_2256EEC0C(_Unwind_Exception *a1)
{
  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::~RefCountedAndCanMakeWeakPtr(v1, v3);
  bmalloc::api::tzoneFree(WeakPtr, v5);
  _Unwind_Resume(a1);
}

void WebGPU::TextureView::create(uint64_t *a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5, atomic_ullong *a6)
{
  v14 = a2;
  if (WebGPU::TextureView::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, v11);
  }

  else
  {
    NonCompact = WebGPU::TextureView::operatorNewSlow(0x78);
  }

  v13 = NonCompact;
  WebGPU::TextureView::TextureView(NonCompact, v14, a3, a4, a5, a6);
  *a1 = v13;
}

void sub_2256EECCC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  bmalloc::api::tzoneFree(v10, a2);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Texture::waitForCommandBufferCompletion(WebGPU::Texture *this)
{
  v1 = *(this + 31);
  if (v1)
  {
    v3 = *(this + 14);
    v4 = &v3[v1];
    v5 = 1;
    do
    {
      v8 = *v3;
      if (*v3 == -2 || v8 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256EEE4CLL);
      }

      v9 = *(*(this + 9) + 480);
      if (v9)
      {
        v10 = *(v9 - 8);
        v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = *(v9 + 16 * v14);
        if (v15 == v8)
        {
LABEL_12:
          v17 = *(v9 + 16 * v14 + 8);
          if (v17)
          {
            ++*(v17 + 4);
            v5 &= WebGPU::CommandEncoder::waitForCommandBufferCompletion(v17);
            if (*(v17 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v17);
              bmalloc::api::tzoneFree(v6, v7);
            }

            else
            {
              --*(v17 + 4);
            }
          }
        }

        else
        {
          v16 = 1;
          while (v15 != -1)
          {
            v14 = (v14 + v16) & v10;
            v15 = *(v9 + 16 * v14);
            ++v16;
            if (v15 == v8)
            {
              goto LABEL_12;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

const char *WebGPU::Texture::formatToString()
{
  result = "undefined";
  switch("undefined")
  {
    case 0u:
      return result;
    case 1u:
      result = "r8unorm";
      break;
    case 2u:
      result = "r8snorm";
      break;
    case 3u:
      result = "r8uint";
      break;
    case 4u:
      result = "r8sint";
      break;
    case 5u:
      result = "r16uint";
      break;
    case 6u:
      result = "r16sint";
      break;
    case 7u:
      result = "r16float";
      break;
    case 8u:
      result = "rg8unorm";
      break;
    case 9u:
      result = "rg8snorm";
      break;
    case 0xAu:
      result = "rg8uint";
      break;
    case 0xBu:
      result = "rg8sint";
      break;
    case 0xCu:
      result = "r32float";
      break;
    case 0xDu:
      result = "r32uint";
      break;
    case 0xEu:
      result = "r32sint";
      break;
    case 0xFu:
      result = "rg16uint";
      break;
    case 0x10u:
      result = "rg16sint";
      break;
    case 0x11u:
      result = "rg16float";
      break;
    case 0x12u:
      result = "rgba8unorm";
      break;
    case 0x13u:
      result = "rgba8unorm-srgb";
      break;
    case 0x14u:
      result = "rgba8snorm";
      break;
    case 0x15u:
      result = "rgba8uint";
      break;
    case 0x16u:
      result = "rgba8sint";
      break;
    case 0x17u:
      result = "bgra8unorm";
      break;
    case 0x18u:
      result = "bgra8unorm-srgb";
      break;
    case 0x19u:
      result = "rgb10a2uint";
      break;
    case 0x1Au:
      result = "rgb10a2unorm";
      break;
    case 0x1Bu:
      result = "rg11b10ufloat";
      break;
    case 0x1Cu:
      result = "rgb9e5ufloat";
      break;
    case 0x1Du:
      result = "rg32float";
      break;
    case 0x1Eu:
      result = "rg32uint";
      break;
    case 0x1Fu:
      result = "rg32sint";
      break;
    case 0x20u:
      result = "rgba16uint";
      break;
    case 0x21u:
      result = "rgba16sint";
      break;
    case 0x22u:
      result = "rgba16float";
      break;
    case 0x23u:
      result = "rgba32float";
      break;
    case 0x24u:
      result = "rgba32uint";
      break;
    case 0x25u:
      result = "rgba32sint";
      break;
    case 0x26u:
      result = "stencil8";
      break;
    case 0x27u:
      result = "depth16unorm";
      break;
    case 0x28u:
      result = "depth24plus";
      break;
    case 0x29u:
      result = "depth24plus-stencil8";
      break;
    case 0x2Au:
      result = "depth32float";
      break;
    case 0x2Bu:
      result = "depth32float-stencil8";
      break;
    case 0x2Cu:
      result = "bc1-rgba-unorm";
      break;
    case 0x2Du:
      result = "bc1-rgba-unorm-srgb";
      break;
    case 0x2Eu:
      result = "bc2-rgba-unorm";
      break;
    case 0x2Fu:
      result = "bc2-rgba-unorm-srgb";
      break;
    case 0x30u:
      result = "bc3-rgba-unorm";
      break;
    case 0x31u:
      result = "bc3-rgba-unorm-srgb";
      break;
    case 0x32u:
      result = "bc4-r-unorm";
      break;
    case 0x33u:
      result = "bc4-r-snorm";
      break;
    case 0x34u:
      result = "bc5-rg-unorm";
      break;
    case 0x35u:
      result = "bc5-rg-snorm";
      break;
    case 0x36u:
      result = "bc6h-rgb-ufloat";
      break;
    case 0x37u:
      result = "bc6h-rgb-float";
      break;
    case 0x38u:
      result = "bc7-rgba-unorm";
      break;
    case 0x39u:
      result = "bc7-rgba-unorm-srgb";
      break;
    case 0x3Au:
      result = "etc2-rgb8unorm";
      break;
    case 0x3Bu:
      result = "etc2-rgb8unorm-srgb";
      break;
    case 0x3Cu:
      result = "etc2-rgb8a1unorm";
      break;
    case 0x3Du:
      result = "etc2-rgb8a1unorm-srgb";
      break;
    case 0x3Eu:
      result = "etc2-rgba8unorm";
      break;
    case 0x3Fu:
      result = "etc2-rgba8unorm-srgb";
      break;
    case 0x40u:
      result = "eac-r11unorm";
      break;
    case 0x41u:
      result = "eac-r11snorm";
      break;
    case 0x42u:
      result = "eac-rg11unorm";
      break;
    case 0x43u:
      result = "eac-rg11snorm";
      break;
    case 0x44u:
      result = "astc-4x4-unorm";
      break;
    case 0x45u:
      result = "astc-4x4-unorm-srgb";
      break;
    case 0x46u:
      result = "astc-5x4-unorm";
      break;
    case 0x47u:
      result = "astc-5x4-unorm-srgb";
      break;
    case 0x48u:
      result = "astc-5x5-unorm";
      break;
    case 0x49u:
      result = "astc-5x5-unorm-srgb";
      break;
    case 0x4Au:
      result = "astc-6x5-unorm";
      break;
    case 0x4Bu:
      result = "astc-6x5-unorm-srgb";
      break;
    case 0x4Cu:
      result = "astc-6x6-unorm";
      break;
    case 0x4Du:
      result = "astc-6x6-unorm-srgb";
      break;
    case 0x4Eu:
      result = "astc-8x5-unorm";
      break;
    case 0x4Fu:
      result = "astc-8x5-unorm-srgb";
      break;
    case 0x50u:
      result = "astc-8x6-unorm";
      break;
    case 0x51u:
      result = "astc-8x6-unorm-srgb";
      break;
    case 0x52u:
      result = "astc-8x8-unorm";
      break;
    case 0x53u:
      result = "astc-8x8-unorm-srgb";
      break;
    case 0x54u:
      result = "astc-10x5-unorm";
      break;
    case 0x55u:
      result = "astc-10x5-unorm-srgb";
      break;
    case 0x56u:
      result = "astc-10x6-unorm";
      break;
    case 0x57u:
      result = "astc-10x6-unorm-srgb";
      break;
    case 0x58u:
      result = "astc-10x8-unorm";
      break;
    case 0x59u:
      result = "astc-10x8-unorm-srgb";
      break;
    case 0x5Au:
      result = "astc-10x10-unorm";
      break;
    case 0x5Bu:
      result = "astc-10x10-unorm-srgb";
      break;
    case 0x5Cu:
      result = "astc-12x10-unorm";
      break;
    case 0x5Du:
      result = "astc-12x10-unorm-srgb";
      break;
    case 0x5Eu:
      result = "astc-12x12-unorm";
      break;
    case 0x5Fu:
      result = "astc-12x12-unorm-srgb";
      break;
    default:
      result = "invalid format";
      break;
  }

  return result;
}

uint64_t WebGPU::Texture::logicalMiplevelSpecificTextureExtent(uint32x2_t *this, char a2)
{
  v2 = this[5].i32[1];
  if (v2 == 2 || v2 == 1)
  {
    return vmax_u32(vshl_u32(this[3], vneg_s32(vdup_n_s32(a2))), 0x100000001);
  }

  if (v2)
  {
    return 0;
  }

  if (this[3].i32[0] >> a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = this[3].i32[0] >> a2;
  }

  return v3 | 0x100000000;
}

unint64_t WebGPU::Texture::physicalTextureExtent(int a1, int a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIDWORD(a3);
  if (a1 == 2 || a1 == 1)
  {
    v10 = WebGPU::Texture::texelBlockWidth(a2);
    if (v3 % v10)
    {
      v11 = v10 - v3 % v10;
    }

    else
    {
      v11 = 0;
    }

    v8 = v11 + v3;
    v12 = WebGPU::Texture::texelBlockHeight(a2);
    if (v5 % v12)
    {
      v13 = v12 - v5 % v12;
    }

    else
    {
      v13 = 0;
    }

    v9 = (v13 + v5);
  }

  else if (a1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v6 = WebGPU::Texture::texelBlockWidth(a2);
    if (v3 % v6)
    {
      v7 = v6 - v3 % v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + v3;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

__CFString *WebGPU::Texture::errorValidatingImageCopyTexture(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  *(v4 + 8) = v5 + 1;
  v6 = *(v4 + 48);
  v7 = WebGPU::Texture::texelBlockWidth(v6);
  if (!v5)
  {
    WebGPU::Texture::~Texture(v4);
    bmalloc::api::tzoneFree(v12, v13);
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    v14 = *(v4 + 48);
    *(v4 + 8) = v5 + 1;
    v8 = WebGPU::Texture::texelBlockHeight(v14);
    if (v5)
    {
      *(v4 + 8) = v5;
      *(v4 + 8) = v5 + 1;
      if ((*(v4 + 104) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      WebGPU::Texture::~Texture(v4);
      bmalloc::api::tzoneFree(v18, v19);
      v4 = *(a1 + 8);
      v5 = *(v4 + 8);
      *(v4 + 8) = v5 + 1;
      if ((*(v4 + 104) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v9 = 1;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v8 = WebGPU::Texture::texelBlockHeight(v6);
  *(v4 + 8) = v5;
  *(v4 + 8) = v5 + 1;
  if (*(v4 + 104))
  {
    goto LABEL_3;
  }

LABEL_10:
  v9 = *(v4 + 16) != 0;
  if (v5)
  {
LABEL_4:
    *(v4 + 8) = v5;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_12:
    v11 = @"imageCopyTexture is not valid";
    goto LABEL_14;
  }

LABEL_11:
  WebGPU::Texture::~Texture(v4);
  bmalloc::api::tzoneFree(v15, v16);
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_5:
  v10 = *(a1 + 8);
  if (*(a1 + 16) >= *(v10 + 36))
  {
    v11 = @"imageCopyTexture mip level is greater than or equal to the mipLevelCount in the texture";
    goto LABEL_14;
  }

  if (*(a1 + 20) % v7)
  {
    v11 = @"imageCopyTexture.origin.x is not a multiple of the texture blockWidth";
    goto LABEL_14;
  }

  if (*(a1 + 24) % v8)
  {
    v11 = @"imageCopyTexture.origin.y is not a multiple of the texture blockHeight";
    goto LABEL_14;
  }

  v20 = *(v10 + 8);
  *(v10 + 8) = v20 + 1;
  if ((*(v10 + 48) - 38) < 6)
  {
    if (v20)
    {
      *(v10 + 8) = v20;
    }

    else
    {
      WebGPU::Texture::~Texture(v10);
      bmalloc::api::tzoneFree(v22, v23);
    }

    goto LABEL_29;
  }

  *(v10 + 8) = v20 + 2;
  v40 = v10;
  v21 = *(v10 + 40);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&v40);
  if (*(v10 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v10);
    bmalloc::api::tzoneFree(v24, v25);
    if (v21 <= 1)
    {
LABEL_35:
      v11 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    --*(v10 + 8);
    if (v21 <= 1)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  v26 = *(a1 + 8);
  v27 = *(a1 + 16);
  v28 = v26[1].i32[0];
  v26[1].i32[0] = v28 + 1;
  v29 = v26[5].i32[1];
  v30 = v26[6].i32[0];
  if (v29 == 2 || v29 == 1)
  {
    v32 = vmax_u32(vshl_u32(v26[3], vneg_s32(vdup_n_s32(v27))), 0x100000001);
  }

  else if (v29)
  {
    v32 = 0;
  }

  else
  {
    v31 = v26[3].i32[0] >> v27;
    if (v31 <= 1)
    {
      v31 = 1;
    }

    v32 = v31 | 0x100000000;
  }

  if (v28)
  {
    v26[1].i32[0] = v28;
  }

  else
  {
    v39 = v32;
    WebGPU::Texture::~Texture(v26);
    bmalloc::api::tzoneFree(v33, v34);
    v32 = v39;
  }

  v35 = WebGPU::Texture::physicalTextureExtent(v29, v30, v32);
  v37 = *a2;
  v38 = a2[1];
  if (v37 != v35 || (v11 = 0, v38 >= 2) && v38 != HIDWORD(v35))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"subresourceSize.width(%u) != copySize.width(%u) || subresourceSize.height(%u) != copySize.height(%u) || subresourceSize.depthOrArrayLayers(%u) != copySize.depthOrArrayLayers(%u)", v35, v37, HIDWORD(v35), v38, v36, a2[2]];
  }

LABEL_14:

  return v11;
}

BOOL WebGPU::Texture::refersToSingleAspect(unsigned int a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a1 - 39 > 4)
      {
        return 0;
      }
    }

    else if (a2 == 0x7FFFFFFF)
    {
      return 0;
    }

    return 1;
  }

  if (!a2)
  {
    return ((a1 - 41) & 0xFFFFFFFD) != 0;
  }

  if (a2 != 1)
  {
    return 1;
  }

  v2 = 0xA4000000000uLL >> a1;
  if (a1 >= 0x2C)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

id WebGPU::Texture::errorValidatingTextureCopyRange(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v5 = v4[1].i32[0];
  v4[1].i32[0] = v5 + 1;
  v6 = v4[6].i32[0];
  v7 = WebGPU::Texture::texelBlockWidth(v6);
  if (!v5)
  {
    WebGPU::Texture::~Texture(v4);
    bmalloc::api::tzoneFree(v11, v12);
    v4 = *(a1 + 8);
    v5 = v4[1].i32[0];
    v6 = v4[6].i32[0];
    v4[1].i32[0] = v5 + 1;
    v8 = WebGPU::Texture::texelBlockHeight(v6);
    if (v5)
    {
      v4[1].i32[0] = v5;
      v9 = *(a1 + 16);
      v4[1].i32[0] = v5 + 1;
      v10 = v4[5].i32[1];
      if (v10 != 2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      WebGPU::Texture::~Texture(v4);
      bmalloc::api::tzoneFree(v16, v17);
      v4 = *(a1 + 8);
      v5 = v4[1].i32[0];
      v10 = v4[5].i32[1];
      v6 = v4[6].i32[0];
      v9 = *(a1 + 16);
      v4[1].i32[0] = v5 + 1;
      if (v10 != 2)
      {
        goto LABEL_6;
      }
    }

LABEL_15:
    v15 = vmax_u32(vshl_u32(v4[3], vneg_s32(vdup_n_s32(v9))), 0x100000001);
    goto LABEL_16;
  }

  v8 = WebGPU::Texture::texelBlockHeight(v6);
  v4[1].i32[0] = v5;
  v9 = *(a1 + 16);
  v4[1].i32[0] = v5 + 1;
  v10 = v4[5].i32[1];
  if (v10 == 2)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v10 == 1)
  {
    goto LABEL_15;
  }

  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v13 = v4[3].i32[0] >> v9;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 | 0x100000000;
  }

LABEL_16:
  v18 = WebGPU::Texture::physicalTextureExtent(v10, v6, v15);
  v20 = v19;
  if (!v5)
  {
    WebGPU::Texture::~Texture(v4);
    bmalloc::api::tzoneFree(v25, v26);
    v27 = *(a1 + 20);
    v22 = *a2;
    v23 = __CFADD__(v27, v22);
    v24 = (v27 + v22);
    if (!v23)
    {
      goto LABEL_21;
    }

LABEL_19:
    v24 = 0xFFFFFFFFLL;
LABEL_22:
    [MEMORY[0x277CCACA8] stringWithFormat:@"endX(%u) > subresourceSize.width(%u)", v24, v18];
    v28 = LABEL_23:;
    goto LABEL_24;
  }

  v4[1].i32[0] = v5;
  v21 = *(a1 + 20);
  v22 = *a2;
  v23 = __CFADD__(v21, v22);
  v24 = (v21 + v22);
  if (v23)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v24 > v18)
  {
    goto LABEL_22;
  }

  v30 = *(a1 + 24);
  v31 = a2[1];
  v23 = __CFADD__(v30, v31);
  v32 = v30 + v31;
  if (v23)
  {
    v32 = 0xFFFFFFFFLL;
LABEL_31:
    [MEMORY[0x277CCACA8] stringWithFormat:@"endY(%u) > subresourceSize.height(%u)", v32, HIDWORD(v18)];
    goto LABEL_23;
  }

  if (v32 > HIDWORD(v18))
  {
    goto LABEL_31;
  }

  v33 = *(a1 + 28);
  v34 = a2[2];
  v23 = __CFADD__(v33, v34);
  v35 = v33 + v34;
  if (v23)
  {
    v35 = 0xFFFFFFFFLL;
LABEL_36:
    [MEMORY[0x277CCACA8] stringWithFormat:@"endZ(%u) > subresourceSize.depthOrArrayLayers(%u)", v35, v20];
    goto LABEL_23;
  }

  if (v35 > v20)
  {
    goto LABEL_36;
  }

  if (v22 % v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"copySize.width(%u) is not divisible by blockWidth(%u)", v22, v7];
    goto LABEL_23;
  }

  if (v31 % v8)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"copySize.height(%u) is not divisible by blockHeight(%u)", a2[1], v8];
    goto LABEL_23;
  }

  v28 = 0;
LABEL_24:

  return v28;
}

id WebGPU::Texture::errorValidatingLinearTextureData(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = WebGPU::Texture::texelBlockWidth(a3);
  v11 = WebGPU::Texture::texelBlockHeight(a3);
  WebGPU::Texture::texelBlockSize(a3, &v40);
  if (a4 % v10)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"copyExtent.width(%u) is not divisible by blockWidth(%u)", a4, v10];
    v14 = [v12 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
LABEL_44:
    v38 = v14;

    goto LABEL_45;
  }

  v15 = HIDWORD(a4) / v11;
  if (HIDWORD(a4) % v11)
  {
    v16 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"copyExtent.height(%u) is not divisible by blockHeight(%u)", HIDWORD(a4), v11];
    v14 = [v16 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
    goto LABEL_44;
  }

  v17 = *(a1 + 16);
  if (v15 >= 2 && v17 == -1)
  {
    v18 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytesPerRow is undefined, but heightInBlocks(%u) > 1, this is not allowed", HIDWORD(a4) / v11];
    v14 = [v18 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
    goto LABEL_44;
  }

  v19 = v40 * (a4 / v10);
  if (a5 < 2)
  {
    if (v17 == -1)
    {
      v24 = *(a1 + 20);
      if (v24 == -1 || v24 >= v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      v30 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"layout.rowsPerImage(%u) is less than heightInBlocks(%u)", v24, HIDWORD(a4) / v11];
      v14 = [v30 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
      goto LABEL_44;
    }
  }

  else
  {
    v20 = *(a1 + 20);
    if (v17 == -1 || v20 == -1)
    {
      v21 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"depthOrArrayLayers(%u) > 1 but bytesPerRow(%u) or rowsPerImage(%u) is undefined, this is not allowed", a5, v17, v20];
      v14 = [v21 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
      goto LABEL_44;
    }
  }

  if (v19 > v17)
  {
    v22 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytesPerRow(%u) is less than bytesInLastRow(%llu)", v17, v19];
    v14 = [v22 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
    goto LABEL_44;
  }

  v23 = *(a1 + 20);
  if (v23 != -1)
  {
    v24 = *(a1 + 20);
    if (v23 < v15)
    {
      goto LABEL_23;
    }
  }

  if (a5 >= 2)
  {
    v25 = a5 - 1;
    v26 = v23 * v17;
    v27 = (v26 * v25) >> 64 == 0;
    v28 = !is_mul_ok(v26, v25);
    v29 = v26 * v25;
    if (!v27)
    {
      v29 = 0;
    }

    goto LABEL_26;
  }

LABEL_24:
  v29 = 0;
  if (!a5)
  {
    v34 = *(a1 + 8);
    goto LABEL_39;
  }

  v28 = 0;
LABEL_26:
  if (v15 >= 2)
  {
    v31 = (v15 - 1) * v17;
    v32 = __CFADD__(v29, v31);
    v33 = v29 + v31;
    if (v32)
    {
      v28 = 1;
    }

    if (!v32)
    {
      v29 = v33;
    }
  }

  if (v11 <= HIDWORD(a4))
  {
    v32 = __CFADD__(v29, v19);
    v29 += v19;
    if (v32)
    {
      v34 = *(a1 + 8);
      v29 = -1;
LABEL_41:
      v36 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"layout.offset(%llu) + requiredBytesInCopy(%llu) overflows", v34, v29];
      v14 = [v36 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
      goto LABEL_44;
    }
  }

  v34 = *(a1 + 8);
  if (v28)
  {
    v29 = -1;
    goto LABEL_41;
  }

LABEL_39:
  v35 = v34 + v29;
  if (__CFADD__(v34, v29))
  {
    goto LABEL_41;
  }

  if (v35 > a2)
  {
    v37 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(layout.offset + requiredBytesInCopy)(%llu) is less than byteSize(%llu)", v35, a2];
    v14 = [v37 stringWithFormat:@"GPUTexture.validateLinearTextureData: %@", v13];
    goto LABEL_44;
  }

  v38 = 0;
LABEL_45:

  return v38;
}

BOOL WebGPU::Texture::previouslyCleared(WebGPU::Texture *this, int a2, int a3)
{
  if (*(this + 104))
  {
    return 1;
  }

  v4 = *(this + 10);
  if (!v4)
  {
    return 0;
  }

  if (a2 == -2)
  {
    goto LABEL_27;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F040CLL);
  }

  v5 = *(v4 - 8);
  v6 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
  v8 = v5 & (v7 ^ HIWORD(v7));
  v9 = *(v4 + 16 * v8);
  if (v9 != a2)
  {
    v10 = 1;
    while (v9 != -1)
    {
      v8 = (v8 + v10) & v5;
      v9 = *(v4 + 16 * v8);
      ++v10;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  if (v8 == *(v4 - 4))
  {
    return 0;
  }

  v11 = *(v4 + 16 * v8 + 8);
  if (!v11)
  {
    return 0;
  }

  if (a3 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F042CLL);
  }

  if (a3 == -1)
  {
LABEL_27:
    __break(0xC471u);
    JUMPOUT(0x2256F03ECLL);
  }

  v12 = *(v11 - 8);
  v13 = 9 * ((~(a3 << 15) + a3) ^ ((~(a3 << 15) + a3) >> 10));
  v14 = (v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11);
  v15 = v12 & (v14 ^ HIWORD(v14));
  v16 = *(v11 + 4 * v15);
  if (v16 == a3)
  {
    return 1;
  }

  v17 = 1;
  do
  {
    v18 = v16 != -1;
    if (v16 == -1)
    {
      break;
    }

    v15 = (v15 + v17) & v12;
    v16 = *(v11 + 4 * v15);
    ++v17;
  }

  while (v16 != a3);
  return v18;
}

uint64_t *WebGPU::Texture::setPreviouslyCleared(uint64_t *this, int a2, int a3, char a4)
{
  v70 = a3;
  v6 = this + 10;
  v5 = this[10];
  if (a4)
  {
    if (v5)
    {
      if (a2 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256F0A8CLL);
      }

      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256F0AACLL);
      }

      v7 = *(v5 - 8);
      v8 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
      v10 = v7 & (v9 ^ HIWORD(v9));
      v11 = *(v5 + 16 * v10);
      if (v11 == a2)
      {
LABEL_9:
        if (v10 != *(v5 - 4))
        {
          return WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v5 + 16 * v10 + 8), &v70, v69);
        }
      }

      else
      {
        v12 = 1;
        while (v11 != -1)
        {
          v10 = (v10 + v12) & v7;
          v11 = *(v5 + 16 * v10);
          ++v12;
          if (v11 == a2)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v68 = 0;
    this = WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v68, &v70, v69);
    if (a2 != -2)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256F0A6CLL);
      }

      v14 = *v6;
      if (!*v6)
      {
        this = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v6, 8u);
        v14 = *v6;
      }

      v15 = *(v14 - 8);
      v16 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v17 = (v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11);
      v18 = v15 & (v17 ^ HIWORD(v17));
      v19 = v14 + 16 * v18;
      v20 = *v19;
      if (*v19 != -1)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          if (v20 == a2)
          {
            goto LABEL_100;
          }

          if (v20 == -2)
          {
            v21 = v19;
          }

          v18 = (v18 + v22) & v15;
          v19 = v14 + 16 * v18;
          v20 = *v19;
          ++v22;
        }

        while (*v19 != -1);
        if (v21)
        {
          *v21 = -1;
          *(v21 + 8) = 0;
          --*(v14 - 16);
          v19 = v21;
        }
      }

      *v19 = a2;
      if (!v68 || (v23 = *(v68 - 3), !v23))
      {
        v35 = 0;
        goto LABEL_89;
      }

      v24 = *(v68 - 3);
      v25 = *(v68 - 3);
      if (v23 == 1)
      {
        goto LABEL_27;
      }

      v26 = __clz(v23 - 1);
      if (v26)
      {
        v24 = (1 << -v26);
        v25 = 1 << -v26;
        if (v23 > 0x400)
        {
          if (v24 > 2 * v23)
          {
LABEL_29:
            v27 = v23;
            v28 = v25;
            if (v25 > 0x400)
            {
              if (v28 * 0.416666667 > v27)
              {
                goto LABEL_56;
              }
            }

            else if (v28 * 0.604166667 > v27)
            {
LABEL_56:
              if (v25 <= 8)
              {
                v45 = 8;
              }

              else
              {
                v45 = v25;
              }

              v46 = WTF::fastMalloc((4 * v45 + 16));
              v35 = v46 + 4;
              this = memset(v46 + 4, 255, 4 * v45);
              v47 = v45 - 1;
              v46[2] = v45 - 1;
              v46[3] = v45;
              *v46 = 0;
              v46[1] = v23;
              v48 = v68;
              if (v68)
              {
                v49 = *(v68 - 1);
                v50 = &v68[v49];
                if (*(v68 - 3))
                {
                  if (!v49)
                  {
                    v53 = 0;
                    v52 = v68;
                    goto LABEL_79;
                  }

                  v51 = 4 * v49;
                  v52 = v68;
                  while (*v52 >= 0xFFFFFFFE)
                  {
                    ++v52;
                    v51 -= 4;
                    if (!v51)
                    {
                      v52 = v50;
                      break;
                    }
                  }

LABEL_68:
                  if (!v68)
                  {
                    goto LABEL_80;
                  }

                  v53 = *(v68 - 1);
LABEL_79:
                  v48 = &v68[v53];
LABEL_80:
                  while (v52 != v48)
                  {
                    v55 = 0;
                    v56 = *v52;
                    v57 = 9 * ((v56 + ~(v56 << 15)) ^ ((v56 + ~(v56 << 15)) >> 10));
                    v58 = ((v57 ^ (v57 >> 6)) + ~((v57 ^ (v57 >> 6)) << 11)) ^ (((v57 ^ (v57 >> 6)) + ~((v57 ^ (v57 >> 6)) << 11)) >> 16);
                    do
                    {
                      v59 = v58 & v47;
                      v60 = v35[v58 & v47];
                      v58 = ++v55 + (v58 & v47);
                    }

                    while (v60 != -1);
                    v35[v59] = v56;
                    do
                    {
                      ++v52;
                    }

                    while (v52 != v50 && *v52 >= 0xFFFFFFFE);
                  }

LABEL_89:
                  v61 = *(v19 + 8);
                  *(v19 + 8) = v35;
                  if (v61)
                  {
                    this = WTF::fastFree((v61 - 16), v13);
                  }

                  v62 = *v6;
                  if (*v6)
                  {
                    v63 = *(v62 - 16);
                    v64 = *(v62 - 12) + 1;
                    *(v62 - 12) = v64;
                    v65 = (v63 + v64);
                    v66 = *(v62 - 4);
                    if (v66 <= 0x400)
                    {
                      goto LABEL_93;
                    }
                  }

                  else
                  {
                    v64 = 1;
                    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
                    v65 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
                    v66 = MEMORY[0xFFFFFFFFFFFFFFFC];
                    if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
                    {
LABEL_93:
                      if (3 * v66 > 4 * v65)
                      {
                        goto LABEL_100;
                      }

                      if (!v66)
                      {
                        v67 = 8;
LABEL_99:
                        this = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(v6, v67);
LABEL_100:
                        if (v68)
                        {
                          return WTF::fastFree((v68 - 4), v13);
                        }

                        return this;
                      }

LABEL_98:
                      v67 = v66 << (6 * v64 >= (2 * v66));
                      goto LABEL_99;
                    }
                  }

                  if (v66 > 2 * v65)
                  {
                    goto LABEL_100;
                  }

                  goto LABEL_98;
                }
              }

              else
              {
                v50 = 0;
                v49 = 0;
              }

              v52 = v50;
              v50 = &v68[v49];
              goto LABEL_68;
            }

            v25 *= 2;
            goto LABEL_56;
          }

LABEL_28:
          v25 *= 2;
          goto LABEL_29;
        }

LABEL_27:
        if (3 * v24 > 4 * v23)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      __break(1u);
    }

    __break(0xC471u);
LABEL_112:
    JUMPOUT(0x2256F0A4CLL);
  }

  if (!v5)
  {
    return this;
  }

  if (a2 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F0ACCLL);
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F0AECLL);
  }

  v29 = *(v5 - 8);
  v30 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v31 = (v30 ^ (v30 >> 6)) + ~((v30 ^ (v30 >> 6)) << 11);
  v32 = v29 & (v31 ^ HIWORD(v31));
  v33 = *(v5 + 16 * v32);
  if (v33 == a2)
  {
LABEL_39:
    if (v32 != *(v5 - 4))
    {
      v36 = v5 + 16 * v32;
      v38 = *(v36 + 8);
      this = (v36 + 8);
      v37 = v38;
      if (v38)
      {
        if (a3 == -2)
        {
          __break(0xC471u);
          JUMPOUT(0x2256F0B0CLL);
        }

        if (a3 == -1)
        {
          __break(0xC471u);
          goto LABEL_112;
        }

        v39 = *(v37 - 8);
        v40 = 9 * ((~(a3 << 15) + a3) ^ ((~(a3 << 15) + a3) >> 10));
        v41 = v39 & (((v40 ^ (v40 >> 6)) + ~((v40 ^ (v40 >> 6)) << 11)) ^ (((v40 ^ (v40 >> 6)) + ~((v40 ^ (v40 >> 6)) << 11)) >> 16));
        v42 = *(v37 + 4 * v41);
        if (v42 == a3)
        {
LABEL_52:
          v44 = *(v37 - 4);
          if (v41 != v44)
          {
            *(v37 + 4 * v41) = -2;
            v54 = vadd_s32(*(v37 - 16), 0xFFFFFFFF00000001);
            *(v37 - 16) = v54;
            if (v44 >= 9 && 6 * v54.i32[1] < v44)
            {

              return WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(this, v44 >> 1, 0);
            }
          }
        }

        else
        {
          v43 = 1;
          while (v42 != -1)
          {
            v41 = (v41 + v43) & v39;
            v42 = *(v37 + 4 * v41);
            ++v43;
            if (v42 == a3)
            {
              goto LABEL_52;
            }
          }
        }
      }
    }
  }

  else
  {
    v34 = 1;
    while (v33 != -1)
    {
      v32 = (v32 + v34) & v29;
      v33 = *(v5 + 16 * v32);
      ++v34;
      if (v33 == a2)
      {
        goto LABEL_39;
      }
    }
  }

  return this;
}

void sub_2256F0B30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::fastFree((a10 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wgpuTextureRelease(uint64_t result)
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

atomic_uint *volatile *wgpuTextureCreateView(uint64_t a1, void *a2)
{
  ++*(a1 + 8);
  v4 = *(a1 + 72);
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
    v119 = v4;
    if (*a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v8);
    v119 = v4;
    if (*a2)
    {
LABEL_10:
      if (WebGPU::TextureView::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, a2);
      }

      else
      {
        NonCompact = WebGPU::TextureView::operatorNewSlow(0x78);
      }

      v12 = NonCompact;
      *NonCompact = 0;
      *(NonCompact + 8) = 1;
      *(NonCompact + 84) = 0;
      *(NonCompact + 16) = 0u;
      *(NonCompact + 32) = 0u;
      *(NonCompact + 48) = 0u;
      *(NonCompact + 57) = 0u;
      while (1)
      {
        v13 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v14 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_20;
        }
      }

      v15 = 0;
      v16 = *v4;
      v17 = 1;
      atomic_compare_exchange_strong_explicit(*v4, &v15, 1u, memory_order_acquire, memory_order_acquire);
      if (v15)
      {
        MEMORY[0x22AA683C0](v16);
      }

      goto LABEL_18;
    }
  }

  if (*(a1 + 104) == 1)
  {
    goto LABEL_10;
  }

  v120 = *a2;
  v27 = *(a2 + 4);
  v28 = *(a2 + 5);
  v29 = *(a2 + 6);
  v30 = *(a2 + 7);
  v31 = *(a2 + 8);
  v32 = *(a2 + 9);
  v33 = a2[5];
  if (!v27)
  {
    v34 = (a1 + 48);
    v35 = *(a1 + 48);
    switch(v33)
    {
      case 2:
        v37 = 0;
        if (v35 <= 40)
        {
          if (v35 != 39)
          {
            v36 = 0;
            if (v35 != 40)
            {
LABEL_53:
              LODWORD(v109) = v36 | v37;
              v27 = *v34;
              if (v30 != -1)
              {
                goto LABEL_64;
              }

              goto LABEL_54;
            }
          }
        }

        else
        {
          if (v35 == 41)
          {
            v36 = 0;
            v37 = 40;
            goto LABEL_52;
          }

          if (v35 != 42)
          {
            v36 = 0;
            if (v35 != 43)
            {
              goto LABEL_53;
            }

            v36 = 0;
            v37 = 42;
            goto LABEL_52;
          }
        }

        break;
      case 1:
        if (v35 == 43 || v35 == 41)
        {
          v36 = 0;
          v37 = 38;
          goto LABEL_52;
        }

        if (v35 != 38)
        {
LABEL_41:
          v37 = 0;
          v36 = 0;
          goto LABEL_53;
        }

        break;
      case 0:
        v36 = v35 & 0xFFFFFF00;
        v37 = *(a1 + 48);
LABEL_52:
        v34 = &v109;
        goto LABEL_53;
      default:
        goto LABEL_41;
    }

    v36 = 0;
    v34 = &v109;
    v37 = *(a1 + 48);
    goto LABEL_53;
  }

  if (v30 != -1)
  {
    goto LABEL_64;
  }

LABEL_54:
  v38 = *(a1 + 36);
  v39 = v38 >= v29;
  v40 = v38 - v29;
  if (v39)
  {
    v30 = v40;
  }

  else
  {
    v30 = 0;
  }

  if (!v39)
  {
LABEL_58:
    LOBYTE(v110[0]) = 0;
    v118 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v42 = v120;
    v109 = v120;
    if ((*(v4 + 548) & 1) == 0)
    {
      v43 = *(v4 + 32) + 32 * *(v4 + 44);
      v44 = (v43 + 16);
      v45 = -32 * *(v4 + 44);
      while (v45)
      {
        v46 = *(v43 - 8);
        v43 -= 32;
        v44 -= 32;
        v45 += 32;
        if (!v46)
        {
          if ((*v44 & 1) == 0)
          {
            v109 = 0;
            *(v44 - 4) = 1;
            *(v44 - 1) = v42;
            *v44 = 1;
          }

          goto LABEL_119;
        }
      }

      v56 = *(v4 + 24);
      if (v56)
      {
        (*(*v56 + 16))(v56, 1, &v109);
        v57 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v57)
        {
          (*(*v57 + 8))(v57);
        }
      }

LABEL_119:
      v42 = v109;
    }

    v109 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v41);
    }

    if (WebGPU::TextureView::s_heapRef)
    {
      v58 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, v41);
    }

    else
    {
      v58 = WebGPU::TextureView::operatorNewSlow(0x78);
    }

    v12 = v58;
    *v58 = 0;
    *(v58 + 8) = 1;
    *(v58 + 84) = 0;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0u;
    *(v58 + 57) = 0u;
    while (1)
    {
      v59 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v60 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v60, v59 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v60 == v59)
      {
        goto LABEL_20;
      }
    }

    v61 = 0;
    v16 = *v4;
    v17 = 1;
    atomic_compare_exchange_strong_explicit(*v4, &v61, 1u, memory_order_acquire, memory_order_acquire);
    if (!v61)
    {
LABEL_18:
      ++*(v16 + 8);
      atomic_compare_exchange_strong_explicit(v16, &v17, 0, memory_order_release, memory_order_relaxed);
      if (v17 != 1)
      {
        WTF::Lock::unlockSlow(v16);
      }

LABEL_20:
      *(v12 + 88) = v4;
      ++*(a1 + 8);
      *(v12 + 104) = 0;
      *(v12 + 112) = 0;
      *(v12 + 96) = a1;
      v108 = v12;
      goto LABEL_21;
    }

LABEL_130:
    MEMORY[0x22AA683C0](v16);
    goto LABEL_18;
  }

LABEL_64:
  if (v28)
  {
    goto LABEL_65;
  }

  v50 = [*(a1 + 16) textureType];
  v28 = 0;
  if (v50 <= 4)
  {
    if (v50 <= 2)
    {
      if (!v50)
      {
        v28 = 1;
        goto LABEL_65;
      }

      if (v50 != 2)
      {
        if (v50 == 1)
        {
          goto LABEL_270;
        }

        goto LABEL_65;
      }

LABEL_86:
      v28 = 2;
      goto LABEL_65;
    }

    if (v50 != 3)
    {
      goto LABEL_86;
    }

LABEL_89:
    v28 = 3;
    goto LABEL_65;
  }

  if (v50 <= 6)
  {
    if (v50 == 5)
    {
      v28 = 4;
    }

    else
    {
      v28 = 5;
    }

    goto LABEL_65;
  }

  if (v50 == 7)
  {
    v28 = 6;
    goto LABEL_65;
  }

  if (v50 == 8)
  {
    goto LABEL_89;
  }

LABEL_65:
  if (v32 == -1 && v28 <= 6)
  {
    if (((1 << v28) & 0x46) != 0)
    {
      v32 = 1;
    }

    else if (((1 << v28) & 0x28) != 0)
    {
      v47 = *(a1 + 32);
      v48 = v47 >= v31;
      v49 = v47 - v31;
      if (v48)
      {
        v32 = v49;
      }

      else
      {
        v32 = 0;
      }

      if (!v48)
      {
        goto LABEL_58;
      }
    }

    else if (v28 == 4)
    {
      v32 = 6;
    }
  }

  *v110 = v120;
  v111 = v27;
  v112 = v28;
  v113 = v29;
  v114 = v30;
  v115 = v31;
  v116 = v32;
  v117 = v33;
  v118 = 1;
  if ((*(a1 + 104) & 1) == 0 && !*(a1 + 16))
  {
    v54 = @"texture is not valid";
    goto LABEL_147;
  }

  v51 = *(a1 + 48);
  if (v33 == 2)
  {
    if (v51 - 39 < 5 && v27 == dword_225882040[v51 - 39])
    {
      goto LABEL_109;
    }

    goto LABEL_113;
  }

  if (v33 == 1)
  {
    v54 = @"aspect == All and (format != resolveTextureFormat(format, aspect))";
    if (v51 > 0x2B || ((1 << v51) & 0xA4000000000) == 0)
    {
      goto LABEL_147;
    }

    if (v27 == 38)
    {
      goto LABEL_109;
    }

LABEL_113:
    v54 = @"aspect == All and (format != resolveTextureFormat(format, aspect))";
    goto LABEL_147;
  }

  if (v33)
  {
    goto LABEL_113;
  }

  if (v27 != v51)
  {
    v52 = *(a1 + 68);
    if (!v52)
    {
      v54 = @"aspect == all and (format != parentTexture's format and !viewFormats.contains(parentTexture's format))";
      goto LABEL_147;
    }

    v53 = *(a1 + 56);
    v54 = @"aspect == all and (format != parentTexture's format and !viewFormats.contains(parentTexture's format))";
    while (1)
    {
      v55 = *v53++;
      if (v55 == v27)
      {
        break;
      }

      if (!--v52)
      {
        goto LABEL_147;
      }
    }
  }

LABEL_109:
  if (!v30)
  {
    v54 = @"!mipLevelCount";
    goto LABEL_147;
  }

  if (!__CFADD__(v29, v30) && v29 + v30 <= *(a1 + 36))
  {
    if (!v32)
    {
      v54 = @"!arrayLayerCount";
      goto LABEL_147;
    }

    v62 = v31 + v32;
    if (!__CFADD__(v31, v32))
    {
      v63 = *(a1 + 44);
      if (v63 == 1)
      {
        v64 = *(a1 + 32);
        if (v62 <= v64)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v62 <= 1)
        {
LABEL_144:
          if (*(a1 + 40) < 2u || v28 == 2)
          {
            if (v28 > 3)
            {
              if (v28 > 5)
              {
                if (v28 == 6)
                {
                  if (v63 == 2)
                  {
                    if (v32 == 1)
                    {
                      goto LABEL_201;
                    }

                    v54 = @"attempting to create 3D texture view with array layers";
                  }

                  else
                  {
                    v54 = @"attempting to create 3D texture view from non-3D parent texture";
                  }
                }

                else
                {
                  if (v28 != 0x7FFFFFFF)
                  {
                    goto LABEL_201;
                  }

                  v54 = @"descriptor.dimension is invalid value";
                }
              }

              else if (v28 == 4)
              {
                if (v63 == 1)
                {
                  if (v32 == 6)
                  {
                    if (*(a1 + 24) == *(a1 + 28))
                    {
                      goto LABEL_201;
                    }

                    v54 = @"attempting to create cube texture view from non-square parent texture";
                  }

                  else
                  {
                    v54 = @"attempting to create cube texture view with arrayLayerCount != 6";
                  }
                }

                else
                {
                  v54 = @"attempting to create cube texture view from non-2D parent texture";
                }
              }

              else if (v63 == 1)
              {
                HIDWORD(v76) = -1431655765 * v32;
                LODWORD(v76) = -1431655765 * v32;
                if ((v76 >> 1) <= 0x2AAAAAAA)
                {
                  if (*(a1 + 24) == *(a1 + 28))
                  {
                    goto LABEL_201;
                  }

                  v54 = @"attempting to create cube array texture view from non-square parent texture";
                }

                else
                {
                  v54 = @"attempting to create cube array texture view with (arrayLayerCount % 6) != 0";
                }
              }

              else
              {
                v54 = @"attempting to create cube array texture view from non-2D parent texture";
              }
            }

            else if (v28 > 1)
            {
              if (v28 == 2)
              {
                if (v63 == 1)
                {
                  if (v32 == 1)
                  {
                    goto LABEL_201;
                  }

                  v54 = @"attempting to create 2D texture view with array layers";
                }

                else
                {
                  v54 = @"attempting to create 2D texture view from non-2D base texture";
                }
              }

              else
              {
                if (v63 == 1)
                {
                  goto LABEL_201;
                }

                v54 = @"attempting to create 2D texture array view from non-2D parent texture";
              }
            }

            else if (v28)
            {
              if (v28 != 1)
              {
                goto LABEL_201;
              }

              if (v63)
              {
                v54 = @"attempting to create 1D texture view from non-1D base texture";
              }

              else
              {
                if (v32 == 1)
                {
                  goto LABEL_201;
                }

                v54 = @"attempting to create 1D texture view with array layers";
              }
            }

            else
            {
              v54 = @"dimension is undefined";
            }
          }

          else
          {
            v54 = @"sampleCount > 1 and dimension != 2D";
          }

          goto LABEL_147;
        }

        v64 = 1;
      }

      v65 = MEMORY[0x277CCACA8];
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"endArrayLayer(%u) is not valid. Base texture array count is %u", v31 + v32, v64];
      v67 = [v65 stringWithFormat:@"GPUTexture.createView: %@", v66];

      goto LABEL_148;
    }

LABEL_270:
    __break(0xC471u);
    JUMPOUT(0x2256F0F90);
  }

  v54 = @"endMipLevel is not valid";
LABEL_147:
  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUTexture.createView: %@", v54];
LABEL_148:
  if (v67)
  {
    WebGPU::Device::generateAValidationError(v4, v67);
    if (WebGPU::TextureView::s_heapRef)
    {
      v69 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, v68);
    }

    else
    {
      v69 = WebGPU::TextureView::operatorNewSlow(0x78);
    }

    v70 = v69;
    *v69 = 0;
    *(v69 + 8) = 1;
    *(v69 + 84) = 0;
    *(v69 + 16) = 0u;
    *(v69 + 32) = 0u;
    *(v69 + 48) = 0u;
    *(v69 + 57) = 0u;
    while (1)
    {
      v71 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v72 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v72, v71 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v72 == v71)
      {
        goto LABEL_159;
      }
    }

    v73 = 0;
    v74 = *v4;
    v75 = 1;
    atomic_compare_exchange_strong_explicit(*v4, &v73, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_159:
    *(v70 + 88) = v4;
    ++*(a1 + 8);
    *(v70 + 104) = 0;
    *(v70 + 112) = 0;
    *(v70 + 96) = a1;
    v108 = v70;

    goto LABEL_21;
  }

LABEL_201:
  v77 = WebGPU::Texture::pixelFormat(v27);
  if (!v77)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v81 = v120;
    v109 = v120;
    if ((*(v4 + 548) & 1) == 0)
    {
      v82 = *(v4 + 32) + 32 * *(v4 + 44);
      v83 = (v82 + 16);
      v84 = -32 * *(v4 + 44);
      while (v84)
      {
        v85 = *(v82 - 8);
        v82 -= 32;
        v83 -= 32;
        v84 += 32;
        if (!v85)
        {
          if ((*v83 & 1) == 0)
          {
            v109 = 0;
            *(v83 - 4) = 1;
            *(v83 - 1) = v81;
            *v83 = 1;
          }

          goto LABEL_224;
        }
      }

      v88 = *(v4 + 24);
      if (v88)
      {
        (*(*v88 + 16))(v88, 1, &v109);
        v89 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v89)
        {
          (*(*v89 + 8))(v89);
        }
      }

LABEL_224:
      v81 = v109;
    }

    v109 = 0;
    if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v81, v80);
    }

    if (WebGPU::TextureView::s_heapRef)
    {
      v90 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::TextureView::s_heapRef, v80);
    }

    else
    {
      v90 = WebGPU::TextureView::operatorNewSlow(0x78);
    }

    v12 = v90;
    *v90 = 0;
    *(v90 + 8) = 1;
    *(v90 + 84) = 0;
    *(v90 + 16) = 0u;
    *(v90 + 32) = 0u;
    *(v90 + 48) = 0u;
    *(v90 + 57) = 0u;
    while (1)
    {
      v91 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v92 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v92, v91 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v92 == v91)
      {
        goto LABEL_20;
      }
    }

    v93 = 0;
    v16 = *v4;
    v17 = 1;
    atomic_compare_exchange_strong_explicit(*v4, &v93, 1u, memory_order_acquire, memory_order_acquire);
    if (!v93)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

  v78 = v77;
  v79 = 0;
  if (v28 > 3)
  {
    if (v28 > 5)
    {
      if (v28 == 6)
      {
        v79 = 7;
      }

      else if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_220;
      }
    }

    else if (v28 == 4)
    {
      v79 = 5;
    }

    else
    {
      v79 = 6;
    }
  }

  else
  {
    if (v28 <= 1)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v79 = v32 != 1;
        }

        goto LABEL_242;
      }

LABEL_220:
      WebGPU::TextureView::createInvalid(&v108, a1, v4);
      goto LABEL_21;
    }

    if (v28 == 2)
    {
      v86 = 2;
      v87 = 4;
    }

    else
    {
      v86 = 3;
      v87 = 8;
    }

    if (*(a1 + 40) <= 1u)
    {
      v79 = v86;
    }

    else
    {
      v79 = v87;
    }
  }

LABEL_242:
  v94 = *(a1 + 16);
  v95 = [v94 pixelFormat];
  v96 = 261;
  if (v95 != 260)
  {
    v96 = v95;
  }

  if (v78 != 253)
  {
    v96 = v78;
  }

  if (v78 == 252)
  {
    v97 = v95;
  }

  else
  {
    v97 = v96;
  }

  v99 = [v94 newTextureViewWithPixelFormat:v97 textureType:v79 levels:v29 slices:v30, v31, v32];
  if (v99)
  {
    WTF::String::fromUTF8(&v109, v110[1], v98);
    WTF::String::createNSString(&v109, &v120);
    [v99 setLabel:v120];
    WTF::RetainPtrArc<NSString>::~RetainPtrArc(&v120);
    v101 = v109;
    v109 = 0;
    if (v101 && atomic_fetch_add_explicit(v101, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v101, v100);
    }

    v102 = [v99 label];
    v103 = [v102 length];

    if (!v103)
    {
      v104 = [*(a1 + 16) label];
      [v99 setLabel:v104];
    }

    LOBYTE(v120) = 0;
    BYTE12(v120) = 0;
    if ((*(a1 + 52) & 0x10) != 0)
    {
      LODWORD(v105) = *(a1 + 24) >> v29;
      if (v105 <= 1)
      {
        v105 = 1;
      }

      else
      {
        v105 = v105;
      }

      LODWORD(v106) = *(a1 + 28) >> v29;
      if (v106 <= 1)
      {
        v106 = 1;
      }

      else
      {
        v106 = v106;
      }

      *&v120 = v105 | (v106 << 32);
      DWORD2(v120) = 1;
      BYTE12(v120) = 1;
    }

    WebGPU::TextureView::create(&v108, v99, v110, &v120, a1, v4);
    v107 = *(a1 + 100);
    if (v107 != *(a1 + 96))
    {
      WTF::WeakPtr<WebGPU::TextureView,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>((*(a1 + 88) + 8 * v107), v108);
      ++*(a1 + 100);

      goto LABEL_21;
    }

    WTF::Vector<WTF::WeakPtr<WebGPU::TextureView,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>> &>((a1 + 88), &v108);
  }

  else
  {
    WebGPU::TextureView::createInvalid(&v108, a1, v4);
  }

LABEL_21:
  v119 = 0;
  while (1)
  {
    v18 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v19 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      if (v18 == 3)
      {
        WebGPU::Device::~Device(v4, v11);
        bmalloc::api::tzoneFree(v20, v21);
      }

      v22 = v108;
      v23 = *(a1 + 8) - 1;
      if (*(a1 + 8) != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, v11);
  v22 = v108;
  v23 = *(a1 + 8) - 1;
  if (*(a1 + 8) != 1)
  {
LABEL_27:
    *(a1 + 8) = v23;
    return v22;
  }

LABEL_29:
  WebGPU::Texture::~Texture(a1);
  bmalloc::api::tzoneFree(v24, v25);
  return v22;
}

void sub_2256F1990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::~RefCountedAndCanMakeWeakPtr(v4, v6);
  bmalloc::api::tzoneFree(WeakPtr, v8);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v9);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F19E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F19F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va1, v6);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F1A18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_ullong *a22)
{
  v23 = a14;
  a14 = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
      WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a22, v24);
      WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a12);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a22, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a12);
  _Unwind_Resume(a1);
}

void sub_2256F1A70(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, WebGPU::TextureView *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(va1, a2);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va2, v7);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F1A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_ullong *a22)
{
  WTF::RetainPtrArc<NSString>::~RetainPtrArc((v23 - 96));
  v26 = a14;
  a14 = 0;
  if (v26)
  {
    if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a22, v27);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a12);
  _Unwind_Resume(a1);
}

void wgpuTextureDestroy(WebGPU::Texture *this, WTF::StringImpl *a2)
{
  ++*(this + 2);
  if (*(this + 105))
  {
    *(this + 104) = 1;
  }

  else
  {
    v3 = *(this + 9);
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
        goto LABEL_11;
      }
    }

    v6 = 0;
    v7 = *v3;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(*v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      v43 = v7;
      MEMORY[0x22AA683C0]();
      v7 = v43;
    }

    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      WTF::Lock::unlockSlow(v7);
    }

LABEL_11:
    v9 = 37;
    if ((*(this + 12) - 38) < 6)
    {
      v9 = 38;
    }

    objc_storeStrong(this + 2, v3[v9]);
    do
    {
      v10 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, a2);
        v15 = *(this + 105);
        *(this + 104) = 1;
        if (v15)
        {
          goto LABEL_42;
        }

        goto LABEL_21;
      }

      v11 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v11 != v10);
    if (v10 == 3)
    {
      WebGPU::Device::~Device(v3, a2);
      bmalloc::api::tzoneFree(v12, v13);
    }

    v14 = *(this + 105);
    *(this + 104) = 1;
    if (v14)
    {
      goto LABEL_42;
    }

LABEL_21:
    v16 = *(this + 25);
    if (!v16)
    {
      goto LABEL_67;
    }

    v17 = *(this + 11);
    v18 = 8 * v16;
    do
    {
      if (*v17)
      {
        v19 = *(*v17 + 8);
        if (v19)
        {
          WebGPU::TextureView::destroy(v19);
        }
      }

      v17 += 8;
      v18 -= 8;
    }

    while (v18);
    if ((*(this + 105) & 1) == 0)
    {
LABEL_67:
      v20 = *(this + 31);
      if (v20)
      {
        v21 = *(this + 14);
        v22 = &v21[v20];
        do
        {
          v25 = *v21;
          if (*v21 == -2 || v25 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x2256F1EC0);
          }

          v26 = *(*(this + 9) + 480);
          if (v26)
          {
            v27 = *(v26 - 8);
            v28 = (v25 + ~(v25 << 32)) ^ ((v25 + ~(v25 << 32)) >> 22);
            v29 = 9 * ((v28 + ~(v28 << 13)) ^ ((v28 + ~(v28 << 13)) >> 8));
            v30 = (v29 ^ (v29 >> 15)) + ~((v29 ^ (v29 >> 15)) << 27);
            v31 = v27 & ((v30 >> 31) ^ v30);
            v32 = *(v26 + 16 * v31);
            if (v32 == v25)
            {
LABEL_39:
              v34 = *(v26 + 16 * v31 + 8);
              if (v34)
              {
                ++*(v34 + 4);
                WebGPU::CommandEncoder::makeSubmitInvalid(v34, 0);
                if (*(v34 + 4) == 1)
                {
                  WebGPU::CommandEncoder::~CommandEncoder(v34);
                  bmalloc::api::tzoneFree(v23, v24);
                }

                else
                {
                  --*(v34 + 4);
                }
              }
            }

            else
            {
              v33 = 1;
              while (v32 != -1)
              {
                v31 = (v31 + v33) & v27;
                v32 = *(v26 + 16 * v31);
                ++v33;
                if (v32 == v25)
                {
                  goto LABEL_39;
                }
              }
            }
          }

          ++v21;
        }

        while (v21 != v22);
      }
    }
  }

LABEL_42:
  if (*(this + 30))
  {
    if (*(this + 31))
    {
      *(this + 31) = 0;
    }

    v35 = *(this + 14);
    if (v35)
    {
      *(this + 14) = 0;
      *(this + 30) = 0;
      WTF::fastFree(v35, a2);
    }
  }

  if (*(this + 24))
  {
    v36 = *(this + 25);
    v37 = *(this + 11);
    if (v36)
    {
      v38 = 8 * v36;
      do
      {
        while (1)
        {
          v39 = *v37;
          *v37 = 0;
          if (v39)
          {
            if (atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
            {
              break;
            }
          }

          v37 = (v37 + 8);
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_55;
          }
        }

        atomic_store(1u, v39);
        v40 = v37;
        WTF::fastFree(v39, a2);
        v37 = (v40 + 8);
        v38 -= 8;
      }

      while (v38);
LABEL_55:
      *(this + 25) = 0;
      v37 = *(this + 11);
    }

    if (v37)
    {
      *(this + 11) = 0;
      *(this + 24) = 0;
      WTF::fastFree(v37, a2);
    }
  }

  if (*(this + 2) == 1)
  {
    WebGPU::Texture::~Texture(this);

    bmalloc::api::tzoneFree(v41, v42);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256F1EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F1EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::CommandEncoder>::deref(v2 + 8);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256F1F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t wgpuTextureUndestroy(uint64_t result)
{
  if (*(result + 105) == 1)
  {
    *(result + 104) = 0;
  }

  return result;
}

WTF::StringImpl *wgpuTextureSetLabel(uint64_t a1, char *__s)
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
    WebGPU::Texture::~Texture(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

void sub_2256F2044(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

uint64_t wgpuTextureGetDepthOrArrayLayers(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 32);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetDimension(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 44);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetFormat(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 48);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetHeight(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 28);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetWidth(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 24);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetMipLevelCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetSampleCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 40);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

uint64_t wgpuTextureGetUsage(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 + 1;
  v2 = *(a1 + 52);
  if (v1)
  {
    *(a1 + 8) = v1;
  }

  else
  {
    WebGPU::Texture::~Texture(a1);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return v2;
}

atomic_uint *WTF::Vector<WTF::WeakPtr<WebGPU::TextureView,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>> &>(atomic_uint *volatile result, atomic_uint *volatile **a2)
{
  v2 = result[2];
  v3 = result[3];
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

    result = WTF::fastMalloc((8 * v8));
    v10 = result;
    v6[2] = v8;
    *v6 = result;
    if (v3)
    {
      v11 = 8 * v3;
      v12 = v7;
      do
      {
        while (1)
        {
          v13 = *v12;
          *v12 = 0;
          *v10 = v13;
          result = *v12;
          *v12 = 0;
          if (result)
          {
            if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
            {
              break;
            }
          }

          v10 = (v10 + 8);
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        atomic_store(1u, result);
        result = WTF::fastFree(result, v9);
        v10 = (v10 + 8);
        ++v12;
        v11 -= 8;
      }

      while (v11);
LABEL_17:
      v10 = *v6;
    }

    if (v7)
    {
      if (v10 == v7)
      {
        *v6 = 0;
        v6[2] = 0;
      }

      result = WTF::fastFree(v7, v9);
      v10 = *v6;
    }

    v14 = v6[3];
    v15 = *a2;
    if (!*v15)
    {
      v17 = WTF::fastCompactMalloc(0x10);
      *v17 = 1;
      *(v17 + 8) = v15;
      result = *v15;
      *v15 = v17;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v16);
        }
      }
    }

    v18 = *v15;
    atomic_fetch_add(*v15, 1u);
    *(v10 + v14) = v18;
    ++v6[3];
  }

  return result;
}

atomic_uint *volatile *WTF::WeakPtr<WebGPU::TextureView,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(atomic_uint *volatile *result, atomic_uint *volatile *a2)
{
  if (!*a2)
  {
    v3 = result;
    v5 = WTF::fastCompactMalloc(0x10);
    result = v3;
    *v5 = 1;
    *(v5 + 8) = a2;
    v6 = *a2;
    *a2 = v5;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v4);
        result = v3;
      }
    }
  }

  v7 = *a2;
  atomic_fetch_add(*a2, 1u);
  *result = v7;
  return result;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashSet<unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  if (a2 == 1)
  {
    v10 = 0;
LABEL_10:
    v13 = a2 - v10;
    v14 = &result[4 * v10 + 6];
    do
    {
      *(v14 - 2) = -1;
      *v14 = 0;
      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  v10 = a2 & 0xFFFFFFFE;
  v11 = result + 10;
  v12 = v10;
  do
  {
    *(v11 - 6) = -1;
    *(v11 - 2) = -1;
    *(v11 - 2) = 0;
    *v11 = 0;
    v11 += 4;
    v12 -= 2;
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
    v15 = 0;
    while (1)
    {
      v16 = (v4 + 16 * v15);
      v17 = *v16;
      if (*v16 != -2)
      {
        if (v17 != -1)
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

          v21 = 0;
          v22 = 9 * ((v17 + ~(v17 << 15)) ^ ((v17 + ~(v17 << 15)) >> 10));
          v23 = ((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) ^ (((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) >> 16);
          do
          {
            v24 = v23 & v20;
            v23 = ++v21 + v24;
          }

          while (*(v19 + 16 * v24) != -1);
          v25 = v19 + 16 * v24;
          v26 = *(v25 + 8);
          if (v26)
          {
            WTF::fastFree((v26 - 16), v8);
            v17 = *v16;
          }

          *v25 = v17;
          *(v25 + 8) = 0;
          v27 = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v25 + 8) = v27;
          v18 = *(v16 + 1);
          if (!v18)
          {
            goto LABEL_14;
          }

LABEL_18:
          WTF::fastFree((v18 - 16), v8);
          goto LABEL_14;
        }

        v18 = *(v16 + 1);
        if (v18)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      if (++v15 == v5)
      {
        goto LABEL_29;
      }
    }
  }

  if (v4)
  {
LABEL_29:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WebGPU::TextureView::TextureView(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5, atomic_ullong *a6)
{
  v11 = a2;
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = v11;
  *(a1 + 16) = v12;
  v14 = a3[1];
  v13 = a3[2];
  *(a1 + 24) = *a3;
  *(a1 + 40) = v14;
  *(a1 + 56) = v13;
  *(a1 + 72) = *a4;
  while (1)
  {
    v15 = *a6;
    if ((*a6 & 1) == 0)
    {
      break;
    }

    v16 = *a6;
    atomic_compare_exchange_strong_explicit(a6, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = *a6;
  v19 = 1;
  atomic_compare_exchange_strong_explicit(*a6, &v17, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_9:
  ++*(a5 + 8);
  *(a1 + 88) = a6;
  *(a1 + 96) = a5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;

  return a1;
}

void sub_2256F2868(_Unwind_Exception *a1)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::~RefCountedAndCanMakeWeakPtr(v1, v4);

  _Unwind_Resume(a1);
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::~RefCountedAndCanMakeWeakPtr(uint64_t result, void *a2)
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

void WebGPU::TextureView::~TextureView(WebGPU::TextureView *this, void *a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 13) = 0;
    *(this + 28) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (!v4)
  {
LABEL_6:
    v5 = *(this + 11);
    *(this + 11) = 0;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (*(v4 + 8) != 1)
  {
    --*(v4 + 8);
    goto LABEL_6;
  }

  WebGPU::Texture::~Texture(v4);
  bmalloc::api::tzoneFree(v10, v11);
  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    do
    {
LABEL_7:
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, a2);
        goto LABEL_13;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    if (v6 == 3)
    {
      WebGPU::Device::~Device(v5, a2);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }

LABEL_13:

  if (*(this + 2) == 1)
  {
    v13 = *this;
    if (*this)
    {
      *(v13 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v12);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebGPU::TextureView::previouslyCleared(WebGPU::TextureView *this)
{
  v1 = *(this + 12);
  ++*(v1 + 2);
  result = WebGPU::Texture::previouslyCleared(v1, [*(this + 2) parentRelativeLevel], objc_msgSend(*(this + 2), "parentRelativeSlice"));
  if (*(v1 + 2) == 1)
  {
    v3 = result;
    WebGPU::Texture::~Texture(v1);
    bmalloc::api::tzoneFree(v4, v5);
    return v3;
  }

  else
  {
    --*(v1 + 2);
  }

  return result;
}

void sub_2256F2AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t *WebGPU::TextureView::setPreviouslyCleared(WebGPU::TextureView *this, int a2, int a3)
{
  v3 = *(this + 12);
  ++*(v3 + 8);
  result = WebGPU::Texture::setPreviouslyCleared(v3, [*(this + 2) parentRelativeLevel] + a2, objc_msgSend(*(this + 2), "parentRelativeSlice") + a3, 1);
  if (*(v3 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v3);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(v3 + 8);
  }

  return result;
}

void sub_2256F2BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(va);
  _Unwind_Resume(a1);
}

unint64_t WebGPU::TextureView::width(WebGPU::TextureView *this)
{
  v2 = *(this + 12);
  v3 = v2[1].i32[0];
  v2[1].i32[0] = v3 + 1;
  v4 = *(this + 12);
  v5 = v2[5].i32[1];
  v6 = v2[6].i32[0];
  if (v5 == 2)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = v8;
    WebGPU::Texture::~Texture(v2);
    bmalloc::api::tzoneFree(v9, v10);
    v8 = v12;
    return WebGPU::Texture::physicalTextureExtent(v5, v6, v8);
  }

  if (v5)
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = v2[3].i32[0] >> v4;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 | 0x100000000;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v2[1].i32[0] = v3;
  return WebGPU::Texture::physicalTextureExtent(v5, v6, v8);
}

unint64_t WebGPU::TextureView::height(WebGPU::TextureView *this)
{
  v2 = *(this + 12);
  v3 = v2[1].i32[0];
  v2[1].i32[0] = v3 + 1;
  v4 = *(this + 12);
  v5 = v2[5].i32[1];
  v6 = v2[6].i32[0];
  if (v5 == 2)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = v8;
    WebGPU::Texture::~Texture(v2);
    bmalloc::api::tzoneFree(v9, v10);
    v8 = v12;
    return WebGPU::Texture::physicalTextureExtent(v5, v6, v8) >> 32;
  }

  if (v5)
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = v2[3].i32[0] >> v4;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 | 0x100000000;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v2[1].i32[0] = v3;
  return WebGPU::Texture::physicalTextureExtent(v5, v6, v8) >> 32;
}

uint64_t WebGPU::TextureView::depthOrArrayLayers(WebGPU::TextureView *this)
{
  v2 = *(this + 12);
  v3 = v2[1].i32[0];
  v2[1].i32[0] = v3 + 1;
  v4 = *(this + 12);
  v5 = v2[5].i32[1];
  v6 = v2[6].i32[0];
  if (v5 == 2)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v8 = vmax_u32(vshl_u32(v2[3], vneg_s32(vdup_n_s32(v4))), 0x100000001);
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = v8;
    WebGPU::Texture::~Texture(v2);
    bmalloc::api::tzoneFree(v9, v10);
    v8 = v13;
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = v2[3].i32[0] >> v4;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 | 0x100000000;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v2[1].i32[0] = v3;
LABEL_14:
  WebGPU::Texture::physicalTextureExtent(v5, v6, v8);
  return v11;
}

id WebGPU::TextureView::texture(WebGPU::TextureView *this)
{
  v1 = *(this + 12);
  if (!*(v1 + 104))
  {
    v1 = this;
  }

  v2 = *(v1 + 2);

  return v2;
}

void WebGPU::TextureView::destroy(WebGPU::TextureView *this)
{
  v2 = *(this + 11);
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
    MEMORY[0x22AA683C0](v6);
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_7;
    }

LABEL_40:
    WTF::Lock::unlockSlow(v6);
    goto LABEL_7;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_40;
  }

LABEL_7:
  v8 = 37;
  if ((*(this + 10) - 38) < 6)
  {
    v8 = 38;
  }

  objc_storeStrong(this + 2, v2[v8]);
  do
  {
    v10 = *v2;
    if ((*v2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v2, v9);
      if (*(*(this + 12) + 105))
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    v11 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(v2, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  if (*(*(this + 12) + 105))
  {
    goto LABEL_31;
  }

LABEL_17:
  v14 = *(this + 29);
  if (v14)
  {
    v15 = *(this + 13);
    v16 = &v15[v14];
    do
    {
      v19 = *v15;
      if (*v15 == -2 || v19 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256F31B4);
      }

      v20 = *(*(this + 11) + 480);
      if (v20)
      {
        v21 = *(v20 - 8);
        v22 = (v19 + ~(v19 << 32)) ^ ((v19 + ~(v19 << 32)) >> 22);
        v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
        v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
        v25 = v21 & ((v24 >> 31) ^ v24);
        v26 = *(v20 + 16 * v25);
        if (v26 == v19)
        {
LABEL_28:
          v28 = *(v20 + 16 * v25 + 8);
          if (v28)
          {
            ++*(v28 + 4);
            WebGPU::CommandEncoder::makeSubmitInvalid(v28, 0);
            if (*(v28 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v28);
              bmalloc::api::tzoneFree(v17, v18);
            }

            else
            {
              --*(v28 + 4);
            }
          }
        }

        else
        {
          v27 = 1;
          while (v26 != -1)
          {
            v25 = (v25 + v27) & v21;
            v26 = *(v20 + 16 * v25);
            ++v27;
            if (v26 == v19)
            {
              goto LABEL_28;
            }
          }
        }
      }

      ++v15;
    }

    while (v15 != v16);
  }

LABEL_31:
  if (*(this + 28))
  {
    if (*(this + 29))
    {
      *(this + 29) = 0;
    }

    v29 = *(this + 13);
    if (v29)
    {
      *(this + 13) = 0;
      *(this + 28) = 0;

      WTF::fastFree(v29, v9);
    }
  }
}

void WebGPU::TextureView::setCommandEncoder(WebGPU::TextureView *this, WebGPU::CommandEncoder *a2)
{
  v4 = *(a2 + 25);
  v8 = v4;
  v5 = *(this + 29);
  if (v5 == *(this + 28))
  {
    v6 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 104, v5 + 1, &v8);
    v5 = *(this + 29);
    *(*(this + 13) + 8 * v5) = *v6;
  }

  else
  {
    *(*(this + 13) + 8 * v5) = v4;
  }

  *(this + 29) = v5 + 1;
  WebGPU::CommandEncoder::addTexture(a2, *(this + 12));
  v7 = *(this + 12);
  if (*(v7 + 104) == 1 && (*(v7 + 105) & 1) == 0)
  {

    WebGPU::CommandEncoder::makeSubmitInvalid(a2, 0);
  }
}

WebGPU::TextureView *wgpuTextureViewRelease(WebGPU::TextureView *result, void *a2)
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

WTF::StringImpl *wgpuTextureViewSetLabel(uint64_t a1, char *__s)
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
    WebGPU::TextureView::~TextureView(a1, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*(a1 + 8);
  }

  return result;
}

void sub_2256F3400(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebGPU::TextureView *a11, __int16 a12, char a13, char a14)
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
      WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(&a11, v16);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>::~Ref(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRBinding>::~RefCountedAndCanMakeWeakPtr(uint64_t result, void *a2)
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

void WebGPU::XRBinding::~XRBinding(WebGPU::XRBinding *this, WTF::StringImpl *a2)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = this;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v8, a2);
        this = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = this;
      WebGPU::Device::~Device(v2, a2);
      bmalloc::api::tzoneFree(v6, v7);
      this = v5;
    }
  }

LABEL_7:
  if (*(this + 2) == 1)
  {
    v10 = *this;
    if (*this)
    {
      *(v10 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::Device::createXRBinding@<X0>(WebGPU::Device *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 1);
  result = WTF::fastMalloc(0x18);
  v6 = result;
  *result = 0;
  *(result + 8) = 1;
  if (v4)
  {
    while (1)
    {
      v7 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v8 = *this;
      atomic_compare_exchange_strong_explicit(this, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    v14 = 0;
    v12 = *this;
    v13 = 1;
    atomic_compare_exchange_strong_explicit(*this, &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  while (1)
  {
    v10 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v9 = *this;
    atomic_compare_exchange_strong_explicit(this, &v9, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = *this;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
LABEL_8:
    result = MEMORY[0x22AA683C0](v12);
  }

LABEL_10:
  ++*(v12 + 8);
  atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    result = WTF::Lock::unlockSlow(v12);
  }

LABEL_12:
  *(v6 + 16) = this;
  *a2 = v6;
  return result;
}

void sub_2256F36DC(_Unwind_Exception *a1, void *a2)
{
  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRBinding>::~RefCountedAndCanMakeWeakPtr(v2, a2);
  WTF::fastFree(WeakPtr, v5);
  _Unwind_Resume(a1);
}

void sub_2256F36F4(_Unwind_Exception *a1, void *a2)
{
  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRBinding>::~RefCountedAndCanMakeWeakPtr(v2, a2);
  WTF::fastFree(WeakPtr, v5);
  _Unwind_Resume(a1);
}

WebGPU::XRBinding *wgpuXRBindingRelease(WebGPU::XRBinding *result, WTF::StringImpl *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::XRBinding::~XRBinding(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

WebGPU::XRProjectionLayer *wgpuBindingCreateXRProjectionLayer(WebGPU::XRBinding *a1)
{
  ++*(a1 + 2);
  WebGPU::XRBinding::createXRProjectionLayer(a1, &v7);
  v3 = v7;
  if (*(a1 + 2) == 1)
  {
    WebGPU::XRBinding::~XRBinding(a1, v2);
    WTF::fastFree(v5, v6);
  }

  else
  {
    --*(a1 + 2);
  }

  return v3;
}

WebGPU::XRBinding **WTF::Ref<WebGPU::XRBinding,WTF::RawPtrTraits<WebGPU::XRBinding>,WTF::DefaultRefDerefTraits<WebGPU::XRBinding>>::~Ref(WebGPU::XRBinding **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::XRBinding::~XRBinding(v2, a2);
      WTF::fastFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

uint64_t wgpuBindingGetViewSubImage(WebGPU::XRBinding *a1, WebGPU::XRProjectionLayer *a2)
{
  ++*(a1 + 2);
  ++*(a2 + 2);
  WebGPU::XRBinding::getViewSubImage(a1, a2, &v12);
  v5 = v12;
  v12 = 0;
  if (*(a2 + 2) == 1)
  {
    WebGPU::XRProjectionLayer::~XRProjectionLayer(a2, v4);
    WTF::fastFree(v8, v9);
    v6 = *(a1 + 2) - 1;
    if (*(a1 + 2) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    --*(a2 + 2);
    v6 = *(a1 + 2) - 1;
    if (*(a1 + 2) != 1)
    {
LABEL_3:
      *(a1 + 2) = v6;
      return v5;
    }
  }

  WebGPU::XRBinding::~XRBinding(a1, v4);
  WTF::fastFree(v10, v11);
  return v5;
}

void sub_2256F38FC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, WebGPU::XRProjectionLayer *);
  WTF::Ref<WebGPU::XRProjectionLayer,WTF::RawPtrTraits<WebGPU::XRProjectionLayer>,WTF::DefaultRefDerefTraits<WebGPU::XRProjectionLayer>>::~Ref(va, a2);
  WTF::Ref<WebGPU::XRBinding,WTF::RawPtrTraits<WebGPU::XRBinding>,WTF::DefaultRefDerefTraits<WebGPU::XRBinding>>::~Ref(va1, v4);
  _Unwind_Resume(a1);
}

WebGPU::XRProjectionLayer *WebGPU::XRProjectionLayer::XRProjectionLayer(WebGPU::XRProjectionLayer *this, BOOL a2, atomic_ullong *a3)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  while (1)
  {
    v6 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v7 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v9 = *a3;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v8, 1u, memory_order_acquire, memory_order_acquire);
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
  *(this + 9) = a3;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = *v5;
  *v5 = v11;

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = *(this + 3);
  *(this + 3) = v13;

  return this;
}

void WebGPU::XRProjectionLayer::~XRProjectionLayer(WebGPU::XRProjectionLayer *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
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

  if (*(this + 2) == 1)
  {
    v9 = *this;
    if (*this)
    {
      *(v9 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v8);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

WebGPU::XRProjectionLayer *WebGPU::XRBinding::createXRProjectionLayer@<X0>(uint64_t a1@<X0>, WebGPU::XRProjectionLayer **a2@<X8>)
{
  v3 = *(a1 + 16);
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
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_7;
    }

LABEL_19:
    WTF::Lock::unlockSlow(v7);
    goto LABEL_7;
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v9 = WTF::fastMalloc(0x50);
  result = WebGPU::XRProjectionLayer::XRProjectionLayer(v9, 0, v3);
  *a2 = v9;
  while (1)
  {
    v12 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v13 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      if (v12 == 3)
      {
        WebGPU::Device::~Device(v3, v11);

        return bmalloc::api::tzoneFree(v14, v15);
      }

      return result;
    }
  }

  v16 = *v3;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v16, v11);
}

void sub_2256F3C9C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10)
{
  WTF::fastFree(v10, a2);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a10, v12);
  _Unwind_Resume(a1);
}

void sub_2256F3CB8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WebGPU::XRProjectionLayer *wgpuXRProjectionLayerRelease(WebGPU::XRProjectionLayer *result, WTF::StringImpl *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::XRProjectionLayer::~XRProjectionLayer(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

void wgpuXRProjectionLayerStartFrame(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _DWORD *a5, uint64_t a6)
{
  ++*(a1 + 8);
  v12 = *(*(a1 + 72) + 8);
  *(a1 + 64) = a6;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a6];
  if (*a3)
  {
    v14 = [objc_alloc(MEMORY[0x277CD6FE0]) initWithMachPort:*a3];
    v15 = [v12 newSharedTextureWithHandle:v14];
    v16 = *(a1 + 32);
    *(a1 + 32) = v15;

    [*(a1 + 16) setObject:*(a1 + 32) forKey:v13];
    if (*a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [*(a1 + 16) objectForKey:v13];
    v23 = *(a1 + 32);
    *(a1 + 32) = v22;

    if (*a4)
    {
LABEL_3:
      v17 = [objc_alloc(MEMORY[0x277CD6FE0]) initWithMachPort:*a4];
      v18 = [v12 newSharedTextureWithHandle:v17];
      v19 = *(a1 + 40);
      *(a1 + 40) = v18;

      [*(a1 + 24) setObject:*(a1 + 40) forKey:v13];
      if (!*a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v26 = [v12 newSharedEventWithMachPort:?];
      v27 = *(a1 + 48);
      *(a1 + 48) = v26;

      *(a1 + 56) = a2;
      v21 = *(a1 + 8) - 1;
      if (*(a1 + 8) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v24 = [*(a1 + 24) objectForKey:v13];
  v25 = *(a1 + 40);
  *(a1 + 40) = v24;

  if (*a5)
  {
    goto LABEL_8;
  }

LABEL_4:

  v21 = *(a1 + 8) - 1;
  if (*(a1 + 8) != 1)
  {
LABEL_5:
    *(a1 + 8) = v21;
    return;
  }

LABEL_9:
  WebGPU::XRProjectionLayer::~XRProjectionLayer(a1, v20);

  WTF::fastFree(v28, v29);
}

void sub_2256F3F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::XRProjectionLayer,WTF::RawPtrTraits<WebGPU::XRProjectionLayer>,WTF::DefaultRefDerefTraits<WebGPU::XRProjectionLayer>>::~Ref(va, v5);
  _Unwind_Resume(a1);
}

WebGPU::XRSubImage *WebGPU::XRSubImage::XRSubImage(WebGPU::XRSubImage *this, BOOL a2, atomic_ullong *a3)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a3;
  v4 = *a3;
  if (*a3)
  {
    v9 = WTF::fastMalloc(0x20);
    v4 = v9;
    *v9 = 0;
    *(v9 + 8) = xmmword_225881A50;
    *(v9 + 24) = a3;
    while (1)
    {
      v11 = *a3;
      if ((*a3 & 1) == 0)
      {
        break;
      }

      *(v9 + 8) = v11 >> 1;
      v12 = v11;
      atomic_compare_exchange_strong_explicit(a3, &v12, v9, memory_order_release, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_3;
      }
    }

    WTF::fastFree(v9, v10);
    v4 = *a3;
    if (!*a3)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
LABEL_6:
    *(this + 6) = v4;
    return this;
  }

LABEL_3:
  v5 = 0;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v4);
  }

  ++*(v4 + 16);
  atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    goto LABEL_6;
  }

  WTF::Lock::unlockSlow(v4);
  *(this + 6) = v4;
  return this;
}

void sub_2256F4090(_Unwind_Exception *a1, void *a2)
{
  WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 24), a2);
  WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v3, v5);
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::~RefCountedAndCanMakeWeakPtr(v2, v6);
  _Unwind_Resume(a1);
}

void *WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
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
        if (*(v5 - 1) != -2)
        {
          v8 = *v5;
          *v5 = 0;
          if (v8)
          {
            if (*(v8 + 8) == 1)
            {
              WebGPU::Texture::~Texture(v8);
              bmalloc::api::tzoneFree(v6, v7);
            }

            else
            {
              --*(v8 + 8);
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

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::~RefCountedAndCanMakeWeakPtr(uint64_t result, void *a2)
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

void WebGPU::XRSubImage::~XRSubImage(WebGPU::XRSubImage *this, void *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    v5 = *(v3 + 16) - 1;
    *(v3 + 16) = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = *(v3 + 8);
    v10 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v24 = v3;
      WTF::Lock::unlockSlow(v3);
      v3 = v24;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    WTF::fastFree(v3, a2);
    goto LABEL_10;
  }

  v7 = v3;
  MEMORY[0x22AA683C0]();
  v3 = v7;
  v8 = *(v7 + 16) - 1;
  *(v7 + 16) = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

LABEL_10:
  v11 = *(this + 3);
  if (v11)
  {
    v12 = *(v11 - 4);
    if (v12)
    {
      v13 = (v11 + 8);
      do
      {
        if (*(v13 - 1) != -2)
        {
          v16 = *v13;
          *v13 = 0;
          if (v16)
          {
            if (*(v16 + 8) == 1)
            {
              WebGPU::Texture::~Texture(v16);
              bmalloc::api::tzoneFree(v14, v15);
            }

            else
            {
              --*(v16 + 8);
            }
          }
        }

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    WTF::fastFree((v11 - 16), a2);
  }

  v17 = *(this + 2);
  if (v17)
  {
    v18 = *(v17 - 4);
    if (v18)
    {
      v19 = (v17 + 8);
      do
      {
        if (*(v19 - 1) != -2)
        {
          v22 = *v19;
          *v19 = 0;
          if (v22)
          {
            if (*(v22 + 8) == 1)
            {
              WebGPU::Texture::~Texture(v22);
              bmalloc::api::tzoneFree(v20, v21);
            }

            else
            {
              --*(v22 + 8);
            }
          }
        }

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    WTF::fastFree((v17 - 16), a2);
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

void WebGPU::XRSubImage::update(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1[6];
  if (!v11)
  {
    goto LABEL_107;
  }

  v12 = 0;
  v13 = a1[5];
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
      goto LABEL_6;
    }

LABEL_28:
    WTF::Lock::unlockSlow(v11);
    if (!v13)
    {
      goto LABEL_107;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v32 = 1;
  atomic_compare_exchange_strong_explicit(v11, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (!v13)
  {
    goto LABEL_107;
  }

LABEL_7:
  a1[4] = a4;
  v15 = WebGPU::XRSubImage::colorTexture(a1);
  v16 = v15;
  if (v15)
  {
    ++*(v15 + 8);
    if (*(v15 + 16) == v9)
    {
      objc_storeStrong((v15 + 128), *a5);
      *(v16 + 136) = *(a5 + 8);
      goto LABEL_54;
    }
  }

  v100 = 24;
  v89 = 0;
  v90 = "color texture";
  v91 = 0x100000010;
  v92 = [v9 width];
  v93 = [v9 height];
  v94 = [v9 arrayLength];
  v95 = 24;
  v96 = 1;
  v97 = [v9 sampleCount];
  v98 = 1;
  v99 = &v100;
  v86 = WTF::fastMalloc(4);
  *v86 = 24;
  v87 = 0x100000001;
  v18 = v9;
  if (WebGPU::Texture::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v17);
  }

  else
  {
    NonCompact = WebGPU::Texture::operatorNewSlow(0x90);
  }

  v20 = NonCompact;
  WebGPU::Texture::Texture(NonCompact, v18, &v89, &v86, v13);
  v88 = v20;

  if (v86)
  {
    WTF::fastFree(v86, v21);
  }

  objc_storeStrong((v20 + 128), *a5);
  *(v20 + 136) = *(a5 + 8);
  if (a4 == -2)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F4B30);
  }

  if (a4 == -1)
  {
LABEL_117:
    __break(0xC471u);
    JUMPOUT(0x2256F4AF0);
  }

  v22 = a1[2];
  if (!v22)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1 + 2, 8u);
    v22 = a1[2];
  }

  v23 = *(v22 - 8);
  v24 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
  v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
  v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
  v27 = v23 & ((v26 >> 31) ^ v26);
  v28 = (v22 + 16 * v27);
  v29 = *v28;
  if (*v28 == -1)
  {
    *v28 = a4;
LABEL_32:
    ++*(v20 + 8);
LABEL_33:
    v33 = v28[1];
    v28[1] = v20;
    if (v33)
    {
      if (*(v33 + 8) == 1)
      {
        WebGPU::Texture::~Texture(v33);
        bmalloc::api::tzoneFree(v35, v36);
        v22 = a1[2];
      }

      else
      {
        --*(v33 + 8);
      }
    }

    v37 = *(v22 - 16);
    v38 = *(v22 - 12) + 1;
    *(v22 - 12) = v38;
    v39 = (v37 + v38);
    v40 = *(v22 - 4);
    if (v40 > 0x400)
    {
      if (v40 > 2 * v39)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (3 * v40 > 4 * v39)
      {
        goto LABEL_50;
      }

      if (!v40)
      {
        v41 = 8;
LABEL_49:
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1 + 2, v41);
LABEL_50:
        if (v20)
        {
LABEL_51:
          if (*(v20 + 8) == 1)
          {
            WebGPU::Texture::~Texture(v20);
            bmalloc::api::tzoneFree(v42, v43);
          }

          else
          {
            --*(v20 + 8);
          }
        }

        goto LABEL_54;
      }
    }

    v41 = v40 << (6 * v38 >= (2 * v40));
    goto LABEL_49;
  }

  v30 = 0;
  v31 = 1;
  while (v29 != a4)
  {
    if (v29 == -2)
    {
      v30 = v28;
    }

    v27 = (v27 + v31) & v23;
    v28 = (v22 + 16 * v27);
    v29 = *v28;
    ++v31;
    if (*v28 == -1)
    {
      if (v30)
      {
        *v30 = -1;
        v30[1] = 0;
        --*(v22 - 16);
        v28 = v30;
      }

      *v28 = a4;
      if (v20)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  if (v20)
  {
    ++*(v20 + 8);
  }

  v34 = v28[1];
  v28[1] = v20;
  if (!v34)
  {
    goto LABEL_50;
  }

  if (*(v34 + 8) == 1)
  {
    WebGPU::Texture::~Texture(v34);
    bmalloc::api::tzoneFree(v84, v85);
    if (v20)
    {
      goto LABEL_51;
    }
  }

  else
  {
    --*(v34 + 8);
    if (v20)
    {
      goto LABEL_51;
    }
  }

LABEL_54:
  v44 = WebGPU::XRSubImage::depthTexture(a1);
  v46 = v44;
  if (v44)
  {
    ++*(v44 + 8);
  }

  if (!v16)
  {
LABEL_59:
    if (!v44)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (*(v16 + 8) != 1)
  {
    --*(v16 + 8);
    goto LABEL_59;
  }

  WebGPU::Texture::~Texture(v16);
  bmalloc::api::tzoneFree(v47, v48);
  if (!v46)
  {
    goto LABEL_63;
  }

LABEL_62:
  if (*(v46 + 16) == v10)
  {
LABEL_99:
    if (*(v46 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v46);
      bmalloc::api::tzoneFree(v76, v77);
    }

    else
    {
      --*(v46 + 8);
    }

    goto LABEL_102;
  }

LABEL_63:
  v100 = 41;
  v89 = 0;
  v90 = "depth texture";
  v91 = 0x100000010;
  v92 = [v10 width];
  v93 = [v10 height];
  v94 = [v10 arrayLength];
  v95 = v100;
  v96 = 1;
  v97 = [v10 sampleCount];
  v98 = 1;
  v99 = &v100;
  v49 = v100;
  v86 = WTF::fastMalloc(4);
  *v86 = v49;
  v87 = 0x100000001;
  v51 = v10;
  if (WebGPU::Texture::s_heapRef)
  {
    v52 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Texture::s_heapRef, v50);
  }

  else
  {
    v52 = WebGPU::Texture::operatorNewSlow(0x90);
  }

  v53 = v52;
  WebGPU::Texture::Texture(v52, v51, &v89, &v86, v13);
  v88 = v53;

  if (a4 == -2)
  {
    goto LABEL_117;
  }

  if (a4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F4B10);
  }

  v54 = a1[3];
  if (!v54)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1 + 3, 8u);
    v54 = a1[3];
  }

  v55 = *(v54 - 8);
  v56 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
  v57 = 9 * ((v56 + ~(v56 << 13)) ^ ((v56 + ~(v56 << 13)) >> 8));
  v58 = (v57 ^ (v57 >> 15)) + ~((v57 ^ (v57 >> 15)) << 27);
  v59 = v55 & ((v58 >> 31) ^ v58);
  v60 = (v54 + 16 * v59);
  v61 = *v60;
  if (*v60 != -1)
  {
    v62 = 0;
    v63 = 1;
    while (v61 != a4)
    {
      if (v61 == -2)
      {
        v62 = v60;
      }

      v59 = (v59 + v63) & v55;
      v60 = (v54 + 16 * v59);
      v61 = *v60;
      ++v63;
      if (*v60 == -1)
      {
        if (v62)
        {
          *v62 = -1;
          v62[1] = 0;
          --*(v54 - 16);
          v60 = v62;
        }

        goto LABEL_77;
      }
    }

    v88 = 0;
    v65 = v60[1];
    v60[1] = v53;
    if (!v65)
    {
      goto LABEL_96;
    }

    if (*(v65 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v65);
      bmalloc::api::tzoneFree(v82, v83);
      v66 = v88;
      if (v88)
      {
        goto LABEL_93;
      }
    }

    else
    {
      --*(v65 + 8);
      v66 = v88;
      if (v88)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_96;
  }

LABEL_77:
  v64 = v60[1];
  *v60 = a4;
  v60[1] = v53;
  v88 = 0;
  if (v64)
  {
    if (*(v64 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v64);
      bmalloc::api::tzoneFree(v67, v68);
      v54 = a1[3];
    }

    else
    {
      --*(v64 + 8);
    }
  }

  v69 = *(v54 - 16);
  v70 = *(v54 - 12) + 1;
  *(v54 - 12) = v70;
  v71 = (v69 + v70);
  v72 = *(v54 - 4);
  if (v72 > 0x400)
  {
    if (v72 > 2 * v71)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (3 * v72 > 4 * v71)
  {
    goto LABEL_92;
  }

  if (v72)
  {
LABEL_90:
    v73 = v72 << (6 * v70 >= (2 * v72));
    goto LABEL_91;
  }

  v73 = 8;
LABEL_91:
  WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1 + 3, v73);
LABEL_92:
  v66 = v88;
  if (v88)
  {
LABEL_93:
    if (*(v66 + 2) == 1)
    {
      WebGPU::Texture::~Texture(v66);
      bmalloc::api::tzoneFree(v74, v75);
    }

    else
    {
      --*(v66 + 2);
    }
  }

LABEL_96:
  if (v86)
  {
    WTF::fastFree(v86, v45);
  }

  if (v46)
  {
    goto LABEL_99;
  }

  do
  {
LABEL_102:
    v78 = *v13;
    if ((*v13 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v13, v45);
      goto LABEL_107;
    }

    v79 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v79, v78 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v79 != v78);
  if (v78 == 3)
  {
    WebGPU::Device::~Device(v13, v45);
    bmalloc::api::tzoneFree(v80, v81);
  }

LABEL_107:
}

void sub_2256F4B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11)
{
  WTF::Ref<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>::~Ref(&a11);
  if (v14)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::Texture>::deref(v14);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Device,(WTF::DestructionThread)0>::deref(v13, v16);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::XRSubImage::colorTexture(WebGPU::XRSubImage *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (v2 == -2 || v2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F4D18);
  }

  v3 = *(v1 - 8);
  v4 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v1 + 16 * v7);
  if (v8 != v2)
  {
    v9 = 1;
    while (v8 != -1)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v1 + 16 * v7);
      ++v9;
      if (v8 == v2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v7 == *(v1 - 4))
  {
    return 0;
  }

  return *(v1 + 16 * v7 + 8);
}

uint64_t WebGPU::XRSubImage::depthTexture(WebGPU::XRSubImage *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (v2 == -2 || v2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256F4E18);
  }

  v3 = *(v1 - 8);
  v4 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v1 + 16 * v7);
  if (v8 != v2)
  {
    v9 = 1;
    while (v8 != -1)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v1 + 16 * v7);
      ++v9;
      if (v8 == v2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v7 == *(v1 - 4))
  {
    return 0;
  }

  return *(v1 + 16 * v7 + 8);
}

void WebGPU::XRBinding::getViewSubImage(WebGPU::XRBinding *this@<X0>, WebGPU::XRProjectionLayer *a2@<X1>, void *a3@<X8>)
{
  v3 = *(this + 2);
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
    v18 = a3;
    v19 = a2;
    MEMORY[0x22AA683C0](v7);
    a3 = v18;
    a2 = v19;
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_7;
    }

LABEL_19:
    v15 = v7;
    v16 = a2;
    v17 = a3;
    WTF::Lock::unlockSlow(v15);
    a3 = v17;
    a2 = v16;
    goto LABEL_7;
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  WebGPU::Device::getXRViewSubImage(v3, a2, a3);
  while (1)
  {
    v10 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v11 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      if (v10 == 3)
      {
        WebGPU::Device::~Device(v3, v9);

        bmalloc::api::tzoneFree(v12, v13);
      }

      return;
    }
  }

  v14 = *v3;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v14, v9);
}

void sub_2256F4F88(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WebGPU::XRSubImage *wgpuXRSubImageRelease(WebGPU::XRSubImage *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::XRSubImage::~XRSubImage(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t wgpuXRSubImageGetColorTexture(WebGPU::XRSubImage *a1)
{
  ++*(a1 + 2);
  result = WebGPU::XRSubImage::colorTexture(a1);
  if (*(a1 + 2) == 1)
  {
    v4 = result;
    WebGPU::XRSubImage::~XRSubImage(a1, v3);
    WTF::fastFree(v5, v6);
    return v4;
  }

  else
  {
    --*(a1 + 2);
  }

  return result;
}

void sub_2256F5058(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::XRSubImage,WTF::RawPtrTraits<WebGPU::XRSubImage>,WTF::DefaultRefDerefTraits<WebGPU::XRSubImage>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WebGPU::XRSubImage **WTF::Ref<WebGPU::XRSubImage,WTF::RawPtrTraits<WebGPU::XRSubImage>,WTF::DefaultRefDerefTraits<WebGPU::XRSubImage>>::~Ref(WebGPU::XRSubImage **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::XRSubImage::~XRSubImage(v2, a2);
      WTF::fastFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

uint64_t wgpuXRSubImageGetDepthStencilTexture(WebGPU::XRSubImage *a1)
{
  ++*(a1 + 2);
  result = WebGPU::XRSubImage::depthTexture(a1);
  if (*(a1 + 2) == 1)
  {
    v4 = result;
    WebGPU::XRSubImage::~XRSubImage(a1, v3);
    WTF::fastFree(v5, v6);
    return v4;
  }

  else
  {
    --*(a1 + 2);
  }

  return result;
}

void sub_2256F5134(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::XRSubImage,WTF::RawPtrTraits<WebGPU::XRSubImage>,WTF::DefaultRefDerefTraits<WebGPU::XRSubImage>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

_DWORD *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebGPU::Texture,WTF::RawPtrTraits<WebGPU::Texture>,WTF::DefaultRefDerefTraits<WebGPU::Texture>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v15 = 0;
    while (1)
    {
      v18 = (v4 + 16 * v15);
      v19 = *v18;
      if (*v18 == -2)
      {
        goto LABEL_15;
      }

      if (v19 == -1)
      {
        v20 = v18[1];
        v18[1] = 0;
        if (!v20)
        {
          goto LABEL_15;
        }

        if (*(v20 + 8) != 1)
        {
          --*(v20 + 8);
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v21 = *a1;
      if (*a1)
      {
        v22 = *(v21 - 8);
      }

      else
      {
        v22 = 0;
      }

      v23 = (v19 + ~(v19 << 32)) ^ ((v19 + ~(v19 << 32)) >> 22);
      v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
      v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
      v26 = v22 & ((v25 >> 31) ^ v25);
      v27 = 1;
      do
      {
        v28 = v26;
        v29 = *(v21 + 16 * v26);
        v26 = (v26 + v27++) & v22;
      }

      while (v29 != -1);
      v30 = (v21 + 16 * v28);
      v31 = v30[1];
      v30[1] = 0;
      if (v31)
      {
        if (*(v31 + 8) == 1)
        {
          WebGPU::Texture::~Texture(v31);
          bmalloc::api::tzoneFree(v34, v35);
          v36 = *v18;
          v37 = v18[1];
          v18[1] = 0;
          *v30 = v36;
          v30[1] = v37;
          v20 = v18[1];
          v18[1] = 0;
          if (!v20)
          {
            goto LABEL_15;
          }

          goto LABEL_33;
        }

        --*(v31 + 8);
      }

      v32 = *v18;
      v33 = v18[1];
      v18[1] = 0;
      *v30 = v32;
      v30[1] = v33;
      v20 = v18[1];
      v18[1] = 0;
      if (!v20)
      {
        goto LABEL_15;
      }

LABEL_33:
      if (*(v20 + 8) != 1)
      {
        --*(v20 + 8);
        goto LABEL_15;
      }

LABEL_14:
      WebGPU::Texture::~Texture(v20);
      bmalloc::api::tzoneFree(v16, v17);
LABEL_15:
      if (++v15 == v5)
      {
        goto LABEL_36;
      }
    }
  }

  if (v4)
  {
LABEL_36:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void WebGPU::XRView::~XRView(WebGPU::XRView *this, WTF::StringImpl *a2)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        v8 = *v2;
        v9 = this;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v8, a2);
        this = v9;
        goto LABEL_7;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != v3);
    if (v3 == 3)
    {
      v5 = this;
      WebGPU::Device::~Device(v2, a2);
      bmalloc::api::tzoneFree(v6, v7);
      this = v5;
    }
  }

LABEL_7:
  if (*(this + 2) == 1)
  {
    v10 = *this;
    if (*this)
    {
      *(v10 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

WebGPU::XRView *wgpuXRViewRelease(WebGPU::XRView *result, WTF::StringImpl *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::XRView::~XRView(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(uint64_t this, WGSL::ShaderModule *a2)
{
  v3 = this;
  v4 = *(a2 + 23);
  if (v4)
  {
    v5 = *(a2 + 10);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      this = (*(**v5 + 16))(*v5);
      if (this == 17 && (*(v3 + 32) & 1) == 0)
      {
        this = (*(*v3 + 32))(v3, v7);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    if (*(a2 + 23))
    {
      (*(*(v3 + 40) + 32))(v3 + 40);
      WTF::printInternal();
      this = (*(*(v3 + 40) + 40))(v3 + 40);
    }
  }

  v8 = *(a2 + 19);
  if (v8)
  {
    v9 = *(a2 + 8);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      WGSL::AST::Visitor::visit(v3, v11);
      (*(*(v3 + 40) + 32))(v3 + 40);
      WTF::printInternal();
      this = (*(*(v3 + 40) + 40))(v3 + 40);
      v10 -= 8;
    }

    while (v10);
  }

  return this;
}

uint64_t WGSL::AST::StringDumper::visit(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40;
  v4 = (*(*(a1 + 40) + 32))(a1 + 40);
  WTF::ASCIILiteral::dump();
  (*(*v4 + 32))(v4);
  WTF::ASCIILiteral::dump();
  (*(*v4 + 40))(v4);
  WTF::ASCIILiteral::dump();
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  (*(*v3 + 40))(v3);
  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v9 = v5;
    v6 = (*(*v3 + 32))(v3);
    WTF::ASCIILiteral::dump();
    (*(*v6 + 32))(v6);
    WTF::printInternal();
    (*(*v6 + 40))(v6);
    (*(*v3 + 40))(v3);
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }

  (*(*v3 + 32))(v3);
  WTF::ASCIILiteral::dump();
  return (*(*v3 + 40))(v3);
}

{
  v4 = a1 + 40;
  (*(*(a1 + 40) + 32))(a1 + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(a1, *(a2 + 64));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::BindingAttribute *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::BuiltinAttribute *a2)
{
  v2 = this + 40;
  v3 = (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v3 + 32))(v3);
  WTF::ASCIILiteral::dump();
  (*(*v3 + 40))(v3);
  WTF::printInternal();
  v4 = *(*v2 + 40);

  return v4(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::GroupAttribute *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::LocationAttribute *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::StageAttribute *a2)
{
  v2 = this + 40;
  v3 = (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v3 + 32))(v3);
  WTF::ASCIILiteral::dump();
  (*(*v3 + 40))(v3);
  v4 = *(*v2 + 40);

  return v4(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::WorkgroupSizeAttribute *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  v5 = *(a2 + 4);
  if (v5)
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Visitor::visit(this, v5);
    v6 = *(a2 + 5);
    if (v6)
    {
      (*(*(this + 5) + 32))(v4);
      WTF::printInternal();
      (*(*(this + 5) + 40))(v4);
      WGSL::AST::Visitor::visit(this, v6);
    }
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v7 = *(*v4 + 40);

  return v7(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::DiagnosticAttribute *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::ASCIILiteral::dump();
  (*(*v4 + 40))(v4);
  return WGSL::AST::StringDumper::visit(this, a2 + 24);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Function *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 21))
  {
    WGSL::AST::Visitor::visit(this, **(a2 + 9));
    if (*(a2 + 21) >= 2u)
    {
      v5 = 1;
      while (1)
      {
        (*(*v4 + 32))(v4);
        WTF::printInternal();
        (*(*v4 + 40))(v4);
        if (v5 >= *(a2 + 21))
        {
          break;
        }

        WGSL::AST::Visitor::visit(this, *(*(a2 + 9) + 8 * v5++));
        if (v5 >= *(a2 + 21))
        {
          goto LABEL_6;
        }
      }

      __break(0xC471u);
LABEL_31:
      JUMPOUT(0x2256F69F8);
    }

LABEL_6:
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*v4 + 40))(v4);
  }

  v6 = (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v6 + 32))(v6);
  WTF::printInternal();
  (*(*v6 + 40))(v6);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 17))
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Indent::Indent(&v14, this);
    if (*(a2 + 17))
    {
      WGSL::AST::StringDumper::visit(this, **(a2 + 7));
      if (*(a2 + 17) >= 2u)
      {
        v8 = 1;
        do
        {
          (*(*v4 + 32))(v4);
          WTF::printInternal();
          (*(*v4 + 40))(v4);
          if (v8 >= *(a2 + 17))
          {
            __break(0xC471u);
            JUMPOUT(0x2256F6A00);
          }

          WGSL::AST::StringDumper::visit(this, *(*(a2 + 7) + 8 * v8++));
        }

        while (v8 < *(a2 + 17));
      }
    }

    v9 = v15;
    v15 = 0;
    v10 = *v14;
    *v14 = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v15;
    v15 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    (*(*v4 + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*v4 + 40))(v4);
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 13))
  {
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    (*(*v4 + 40))(v4);
    if (*(a2 + 25))
    {
      WGSL::AST::Visitor::visit(this, **(a2 + 11));
      if (*(a2 + 25) >= 2u)
      {
        v12 = 1;
        while (1)
        {
          (*(*v4 + 32))(v4);
          WTF::printInternal();
          (*(*v4 + 40))(v4);
          if (v12 >= *(a2 + 25))
          {
            break;
          }

          WGSL::AST::Visitor::visit(this, *(*(a2 + 11) + 8 * v12++));
          if (v12 >= *(a2 + 25))
          {
            goto LABEL_26;
          }
        }

        __break(0xC471u);
        goto LABEL_31;
      }
    }

LABEL_26:
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Visitor::visit(this, *(a2 + 13));
  }

  (*(*(this + 5) + 32))(v4);
  WTF::printInternal();
  WTF::printInternal();
  (*(*(this + 5) + 40))(v4);
  return WGSL::AST::StringDumper::visit(this, *(a2 + 14));
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::CompoundStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (!*(a2 + 13))
  {
LABEL_14:
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    return (*(*v4 + 40))(v4);
  }

  WGSL::AST::Indent::Indent(&v11, this);
  (*(*(this + 5) + 32))(v4);
  WTF::printInternal();
  (*(*(this + 5) + 40))(v4);
  if (!*(a2 + 13) || (WGSL::AST::Visitor::visit(this, **(a2 + 5)), *(a2 + 13) < 2u))
  {
LABEL_7:
    v8 = v12;
    v12 = 0;
    v9 = *v11;
    *v11 = v8;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }

    v10 = v12;
    v12 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v5);
      }
    }

    (*(*v4 + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*v4 + 40))(v4);
    goto LABEL_14;
  }

  v6 = 1;
  while (1)
  {
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    result = (*(*v4 + 40))(v4);
    if (v6 >= *(a2 + 13))
    {
      break;
    }

    WGSL::AST::Visitor::visit(this, *(*(a2 + 5) + 8 * v6++));
    if (v6 >= *(a2 + 13))
    {
      goto LABEL_7;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Structure *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 17))
  {
    WGSL::AST::Visitor::visit(this, **(a2 + 7));
    if (*(a2 + 17) >= 2u)
    {
      v5 = 1;
      while (1)
      {
        (*(*v4 + 32))(v4);
        WTF::printInternal();
        (*(*v4 + 40))(v4);
        if (v5 >= *(a2 + 17))
        {
          break;
        }

        WGSL::AST::Visitor::visit(this, *(*(a2 + 7) + 8 * v5++));
        if (v5 >= *(a2 + 17))
        {
          goto LABEL_6;
        }
      }

      __break(0xC471u);
LABEL_23:
      JUMPOUT(0x2256F71ACLL);
    }

LABEL_6:
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*v4 + 40))(v4);
  }

  v6 = (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v6 + 32))(v6);
  WTF::printInternal();
  (*(*v6 + 40))(v6);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 21))
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Indent::Indent(&v13, this);
    if (*(a2 + 21))
    {
      WGSL::AST::StringDumper::visit(this, **(a2 + 9));
      if (*(a2 + 21) >= 2u)
      {
        v8 = 1;
        while (1)
        {
          (*(*v4 + 32))(v4);
          WTF::printInternal();
          (*(*v4 + 40))(v4);
          if (v8 >= *(a2 + 21))
          {
            break;
          }

          WGSL::AST::StringDumper::visit(this, *(*(a2 + 9) + 8 * v8++));
          if (v8 >= *(a2 + 21))
          {
            goto LABEL_13;
          }
        }

        __break(0xC471u);
        goto LABEL_23;
      }
    }

LABEL_13:
    v9 = v14;
    v14 = 0;
    v10 = *v13;
    *v13 = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    (*(*v4 + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*v4 + 40))(v4);
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  return (*(*v4 + 40))(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Variable *a2)
{
  if (!*(a2 + 25))
  {
    goto LABEL_7;
  }

  WGSL::AST::Visitor::visit(this, **(a2 + 11));
  if (*(a2 + 25) < 2u)
  {
LABEL_6:
    (*(*(this + 5) + 32))(this + 40);
    WTF::printInternal();
    (*(*(this + 5) + 40))(this + 40);
LABEL_7:
    v7 = this + 40;
    (*(*(this + 5) + 32))(this + 40);
    WTF::printInternal();
    (*(*(this + 5) + 40))(this + 40);
    if (*(a2 + 13))
    {
      v8 = (*(*v7 + 32))(this + 40);
      WTF::printInternal();
      (*(*v8 + 32))(v8);
      WTF::ASCIILiteral::dump();
      (*(*v8 + 40))(v8);
      WTF::printInternal();
      (*(*v8 + 32))(v8);
      WTF::ASCIILiteral::dump();
      (*(*v8 + 40))(v8);
      WTF::printInternal();
      (*(*v7 + 40))(this + 40);
    }

    v9 = (*(*v7 + 32))(this + 40);
    WTF::printInternal();
    (*(*v9 + 32))(v9);
    WTF::printInternal();
    (*(*v9 + 40))(v9);
    (*(*v7 + 40))(this + 40);
    if (*(a2 + 14))
    {
      (*(*(this + 5) + 32))(this + 40);
      WTF::printInternal();
      (*(*(this + 5) + 40))(this + 40);
      WGSL::AST::Visitor::visit(this, *(a2 + 14));
    }

    if (*(a2 + 15))
    {
      (*(*(this + 5) + 32))(this + 40);
      WTF::printInternal();
      (*(*(this + 5) + 40))(this + 40);
      WGSL::AST::Visitor::visit(this, *(a2 + 15));
    }

    (*(*v7 + 32))(this + 40);
    WTF::printInternal();
    v10 = *(*v7 + 40);

    return v10(this + 40);
  }

  v4 = this + 40;
  v5 = 1;
  while (1)
  {
    (*(*v4 + 32))(this + 40);
    WTF::printInternal();
    result = (*(*v4 + 40))(this + 40);
    if (v5 >= *(a2 + 25))
    {
      break;
    }

    WGSL::AST::Visitor::visit(this, *(*(a2 + 11) + 8 * v5++));
    if (v5 >= *(a2 + 25))
    {
      goto LABEL_6;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::VariableQualifier *a2)
{
  v2 = this + 40;
  v3 = (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v3 + 32))(v3);
  WTF::ASCIILiteral::dump();
  (*(*v3 + 40))(v3);
  WTF::printInternal();
  (*(*v3 + 32))(v3);
  WTF::ASCIILiteral::dump();
  (*(*v3 + 40))(v3);
  WTF::printInternal();
  v4 = *(*v2 + 40);

  return v4(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::TypeAlias *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v5 = (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v5 + 32))(v5);
  WTF::printInternal();
  (*(*v5 + 40))(v5);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 7));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v6 = *(*v4 + 40);

  return v6(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::AbstractFloatLiteral *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::AbstractIntegerLiteral *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::IndexAccessExpression *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*(this + 5) + 40))(this + 40);
  WGSL::AST::Visitor::visit(this, *(a2 + 9));
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  v4 = *(*(this + 5) + 40);

  return v4(this + 40);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::BoolLiteral *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::CallExpression *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*(this + 5) + 40))(this + 40);
  if (!*(a2 + 21))
  {
LABEL_13:
    (*(*v4 + 32))(this + 40);
    WTF::printInternal();
    return (*(*v4 + 40))(this + 40);
  }

  WGSL::AST::Indent::Indent(&v11, this);
  if (!*(a2 + 21) || (WGSL::AST::Visitor::visit(this, **(a2 + 9)), *(a2 + 21) < 2u))
  {
LABEL_7:
    v8 = v12;
    v12 = 0;
    v9 = *v11;
    *v11 = v8;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }

    v10 = v12;
    v12 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v5);
      }
    }

    goto LABEL_13;
  }

  v6 = 1;
  while (1)
  {
    (*(*v4 + 32))(this + 40);
    WTF::printInternal();
    result = (*(*v4 + 40))(this + 40);
    if (v6 >= *(a2 + 21))
    {
      break;
    }

    WGSL::AST::Visitor::visit(this, *(*(a2 + 9) + 8 * v6++));
    if (v6 >= *(a2 + 21))
    {
      goto LABEL_7;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Float32Literal *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

WTF::StringImpl *WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Float16Literal *a2)
{
  v2 = this;
  _H0 = *(a2 + 32);
  __asm { FCVT            S0, H0; float }

  WTF::String::number(&v12, this, _S0);
  v9 = *(v2 + 5);
  v2 = (v2 + 40);
  (*(v9 + 32))(v2);
  WTF::printInternal();
  WTF::printInternal();
  (*(*v2 + 40))(v2);
  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::IdentifierExpression *a2)
{
  v2 = this + 40;
  v3 = (*(*(this + 5) + 32))(this + 40);
  (*(*v3 + 32))(v3);
  WTF::printInternal();
  (*(*v3 + 40))(v3);
  v4 = *(*v2 + 40);

  return v4(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Signed32Literal *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::FieldAccessExpression *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));
  v4 = *(this + 5);
  v3 = this + 40;
  v5 = (*(v4 + 32))(v3);
  WTF::printInternal();
  (*(*v5 + 32))(v5);
  WTF::printInternal();
  (*(*v5 + 40))(v5);
  v6 = *(*v3 + 40);

  return v6(v3);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Unsigned32Literal *a2)
{
  v2 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  v3 = *(*v2 + 40);

  return v3(v2);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::UnaryExpression *a2)
{
  v4 = this + 40;
  v5 = *(a2 + 72);
  result = (*(*(this + 5) + 32))(this + 40);
  if (v5 >= 5)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    (*(*result + 32))(result, v7);
    WTF::ASCIILiteral::dump();
    (*(*v8 + 40))(v8);
    (*(*(this + 5) + 40))(v4);
    v9 = *(a2 + 8);

    return WGSL::AST::Visitor::visit(this, v9);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::BinaryExpression *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));
  v4 = *(a2 + 80);
  v5 = (*(*(this + 5) + 32))(this + 40);
  result = WTF::printInternal();
  if (v4 >= 0x12)
  {
    __break(1u);
  }

  else
  {
    (*(*v5 + 32))(v5);
    WTF::ASCIILiteral::dump();
    (*(*v5 + 40))(v5);
    WTF::printInternal();
    (*(*(this + 5) + 40))(this + 40);
    v7 = *(a2 + 9);

    return WGSL::AST::Visitor::visit(this, v7);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::AssignmentStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 4));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::CallExpression **a2)
{
  WGSL::AST::StringDumper::visit(this, a2[3]);
  v4 = *(this + 5);
  v3 = this + 40;
  (*(v4 + 32))(v3);
  WTF::printInternal();
  v5 = *(*v3 + 40);

  return v5(v3);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::CompoundAssignmentStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  v5 = *(a2 + 40);
  v6 = (*(*v4 + 32))(v4);
  result = WTF::printInternal();
  if (v5 >= 0x12)
  {
    __break(1u);
  }

  else
  {
    (*(*v6 + 32))(v6);
    WTF::ASCIILiteral::dump();
    (*(*v6 + 40))(v6);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Visitor::visit(this, *(a2 + 4));
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    v8 = *(*(this + 5) + 40);

    return v8(v4);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::DecrementIncrementStatement *a2)
{
  v3 = this;
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(v3, *(a2 + 3));
  LODWORD(v3) = *(a2 + 32);
  v5 = (*(*v4 + 32))(v4);
  v6 = v5;
  if (v3 <= 1)
  {
    (*(*v5 + 32))(v5);
    WTF::printInternal();
    (*(*v6 + 40))(v6);
  }

  WTF::printInternal();
  v7 = *(*v4 + 40);

  return v7(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::IfStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  result = WGSL::AST::StringDumper::visit(this, *(a2 + 4));
  if (*(a2 + 5))
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    (*(**(a2 + 5) + 16))(*(a2 + 5));
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    v6 = *(a2 + 5);

    return WGSL::AST::Visitor::visit(this, v6);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::PhonyAssignmentStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  WGSL::AST::Visitor::visit(this, *(a2 + 3));
  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::ReturnStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (*(a2 + 3))
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Visitor::visit(this, *(a2 + 3));
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v5 = *(*v4 + 40);

  return v5(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::VariableStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v5 = *(a2 + 3);

  return WGSL::AST::StringDumper::visit(this, v5);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::ForStatement *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v5 = *(a2 + 3);
  if (v5)
  {
    WGSL::AST::Visitor::visit(this, v5);
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v6 = *(a2 + 4);
  if (v6)
  {
    WGSL::AST::Visitor::visit(this, v6);
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v7 = *(a2 + 5);
  if (v7)
  {
    WGSL::AST::Visitor::visit(this, v7);
  }

  (*(*(this + 5) + 32))(v4);
  WTF::printInternal();
  (*(*(this + 5) + 40))(v4);
  v8 = *(a2 + 6);

  return WGSL::AST::StringDumper::visit(this, v8);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::ArrayTypeExpression *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  result = (*(*v4 + 40))(v4);
  if (*(a2 + 8))
  {
    (*(*(this + 5) + 32))(v4);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    WGSL::AST::Visitor::visit(this, *(a2 + 8));
    if (*(a2 + 9))
    {
      (*(*(this + 5) + 32))(v4);
      WTF::printInternal();
      (*(*(this + 5) + 40))(v4);
      WGSL::AST::Visitor::visit(this, *(a2 + 9));
    }

    (*(*v4 + 32))(v4);
    WTF::printInternal();
    v6 = *(*v4 + 40);

    return v6(v4);
  }

  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::ElaboratedTypeExpression *a2)
{
  v4 = this + 40;
  v5 = (*(*(this + 5) + 32))(this + 40);
  (*(*v5 + 32))(v5);
  WTF::printInternal();
  (*(*v5 + 40))(v5);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  v6 = *(a2 + 27);
  if (v6)
  {
    v7 = *(a2 + 12);
    WGSL::AST::Visitor::visit(this, *v7);
    if (v6 != 1)
    {
      v8 = v7 + 1;
      v9 = 8 * v6 - 8;
      do
      {
        v10 = *v8++;
        (*(*(this + 5) + 32))(v4);
        WTF::printInternal();
        (*(*(this + 5) + 40))(v4);
        WGSL::AST::Visitor::visit(this, v10);
        v9 -= 8;
      }

      while (v9);
    }
  }

  (*(*v4 + 32))(v4);
  WTF::printInternal();
  v11 = *(*v4 + 40);

  return v11(v4);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::ReferenceTypeExpression *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));
  v4 = *(this + 5);
  v3 = this + 40;
  (*(v4 + 32))(v3);
  WTF::printInternal();
  v5 = *(*v3 + 40);

  return v5(v3);
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::Parameter *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (!*(a2 + 21))
  {
LABEL_7:
    v7 = (*(*(this + 5) + 32))(v4);
    (*(*v7 + 32))(v7);
    WTF::printInternal();
    (*(*v7 + 40))(v7);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    v8 = *(a2 + 8);

    return WGSL::AST::Visitor::visit(this, v8);
  }

  WGSL::AST::Visitor::visit(this, **(a2 + 9));
  if (*(a2 + 21) < 2u)
  {
LABEL_6:
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    (*(*v4 + 40))(v4);
    goto LABEL_7;
  }

  v5 = 1;
  while (1)
  {
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    result = (*(*v4 + 40))(v4);
    if (v5 >= *(a2 + 21))
    {
      break;
    }

    WGSL::AST::Visitor::visit(this, *(*(a2 + 9) + 8 * v5++));
    if (v5 >= *(a2 + 21))
    {
      goto LABEL_6;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WGSL::AST::StringDumper::visit(WGSL::AST::StringDumper *this, WGSL::AST::StructureMember *a2)
{
  v4 = this + 40;
  (*(*(this + 5) + 32))(this + 40);
  WTF::printInternal();
  (*(*v4 + 40))(v4);
  if (!*(a2 + 25))
  {
LABEL_7:
    v7 = (*(*(this + 5) + 32))(v4);
    (*(*v7 + 32))(v7);
    WTF::printInternal();
    (*(*v7 + 40))(v7);
    WTF::printInternal();
    (*(*(this + 5) + 40))(v4);
    v8 = *(a2 + 13);

    return WGSL::AST::Visitor::visit(this, v8);
  }

  WGSL::AST::Visitor::visit(this, **(a2 + 11));
  if (*(a2 + 25) < 2u)
  {
LABEL_6:
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    (*(*v4 + 40))(v4);
    goto LABEL_7;
  }

  v5 = 1;
  while (1)
  {
    (*(*v4 + 32))(v4);
    WTF::printInternal();
    result = (*(*v4 + 40))(v4);
    if (v5 >= *(a2 + 25))
    {
      break;
    }

    WGSL::AST::Visitor::visit(this, *(*(a2 + 11) + 8 * v5++));
    if (v5 >= *(a2 + 25))
    {
      goto LABEL_6;
    }
  }

  __break(0xC471u);
  return result;
}

void WGSL::AST::StringDumper::~StringDumper(WGSL::AST::StringDumper *this, WTF::StringImpl *a2)
{
  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::StringPrintStream::~StringPrintStream((this + 40));
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }
}

{
  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::StringPrintStream::~StringPrintStream((this + 40));
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::Identifier::~Identifier(WGSL::AST::Identifier *this, WTF::StringImpl *a2)
{
  *this = off_2838D37C0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }
}

{
  *this = off_2838D37C0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  JUMPOUT(0x22AA68560);
}

atomic_uint ***WGSL::AST::Indent::Indent(atomic_uint ***this, WGSL::AST::StringDumper *a2)
{
  v2 = this;
  v4 = (a2 + 200);
  v3 = *(a2 + 25);
  if (!v3)
  {
    v6 = 4;
    goto LABEL_41;
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  v5 = *(v3 + 4);
  if (v5 < 0)
  {
    goto LABEL_87;
  }

  v6 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
    goto LABEL_87;
  }

  if ((*(v3 + 16) & 4) != 0)
  {
LABEL_41:
    this = WTF::tryFastCompactMalloc((v6 + 20));
    v7 = v65;
    if (!v65)
    {
LABEL_87:
      __break(0xC471u);
      return this;
    }

    v39 = (v65 + 20);
    *v65 = 2;
    *(v65 + 4) = v6;
    *(v65 + 8) = v65 + 20;
    *(v65 + 16) = 4;
    if (!v3)
    {
      v44 = 0;
      goto LABEL_67;
    }

    v9 = *(v3 + 8);
    v40 = *(v3 + 4);
    if ((*(v3 + 16) & 4) != 0)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          *v39 = v9->i8[0];
        }

        else
        {
          this = memcpy((v65 + 20), v9, v40);
        }
      }

LABEL_66:
      v44 = *(v3 + 4);
      if (v44 > v6)
      {
        goto LABEL_86;
      }

LABEL_67:
      *&v39[v44] = 538976288;
      goto LABEL_68;
    }

    v41 = &v39[v40];
    if (v40 < 0x10)
    {
      v42 = v65 + 20;
      if (v39 == v41)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v42 = v65 + 20;
      do
      {
        v43 = vld2q_s8(v9->i8);
        v9 += 2;
        *v42 = v43;
        v42 += 16;
      }

      while (v42 != &v39[v40 & 0xFFFFFFF0]);
      if (v42 == v41)
      {
        goto LABEL_66;
      }
    }

    v45 = v65 + v40;
    v46 = v65 + v40 - v42 + 20;
    if (v46 < 4 || (v42 < &v9[2].u64[1] + 2 * v45 + -2 * v42 ? (v47 = v9 >= v45 + 20) : (v47 = 1), !v47))
    {
      v49 = v42;
      v50 = v9;
      goto LABEL_63;
    }

    if (v46 >= 0x20)
    {
      v48 = v46 & 0xFFFFFFFFFFFFFFE0;
      v54 = v9 + 2;
      v55 = (v42 + 16);
      v56 = v46 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v58 = v54[-2];
        v57 = v54[-1];
        v60 = *v54;
        v59 = v54[1];
        v54 += 4;
        v55[-1] = vuzp1q_s8(v58, v57);
        *v55 = vuzp1q_s8(v60, v59);
        v55 += 2;
        v56 -= 32;
      }

      while (v56);
      if (v46 == v48)
      {
        goto LABEL_66;
      }

      if ((v46 & 0x1C) == 0)
      {
        v50 = (v9 + 2 * v48);
        v49 = (v42 + v48);
        goto LABEL_63;
      }
    }

    else
    {
      v48 = 0;
    }

    v49 = (v42 + (v46 & 0xFFFFFFFFFFFFFFFCLL));
    v50 = (v9 + 2 * (v46 & 0xFFFFFFFFFFFFFFFCLL));
    v61 = (v9 + 2 * v48);
    v62 = (v42 + v48);
    v63 = v48 - (v46 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v64 = *v61++;
      *v62++ = vuzp1_s8(v64, v64).u32[0];
      v63 += 4;
    }

    while (v63);
    if (v46 == (v46 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_66;
    }

    do
    {
LABEL_63:
      v51 = v50->i8[0];
      v50 = (v50 + 2);
      *v49++ = v51;
    }

    while (v49 != v41);
    goto LABEL_66;
  }

  if (v6 > 0x7FFFFFEF)
  {
    goto LABEL_87;
  }

  this = WTF::tryFastCompactMalloc((2 * v6 + 20));
  v7 = v65;
  if (!v65)
  {
    goto LABEL_87;
  }

  v8 = (v65 + 20);
  *v65 = 2;
  *(v65 + 4) = v6;
  *(v65 + 8) = v65 + 20;
  *(v65 + 16) = 0;
  v9 = *(v3 + 8);
  v10 = *(v3 + 4);
  if ((*(v3 + 16) & 4) != 0)
  {
    v11 = &v8[v10];
    if (v10 < 0x40)
    {
      v12 = v65 + 20;
      if (v8 == v11)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v12 = &v8[v10 & 0xFFFFFFC0];
      v13 = 0uLL;
      v14 = (v65 + 20);
      do
      {
        v66.val[0] = *v9;
        v15 = v9[1];
        v67.val[0] = v9[2];
        v16 = v9[3];
        v9 += 4;
        v17 = v16;
        v67.val[1] = 0uLL;
        v68.val[0] = v15;
        v66.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v66);
        v18 += 32;
        v68.val[1] = 0uLL;
        vst2q_s8(v18, v68);
        v19 = v14 + 64;
        vst2q_s8(v19, v67);
        v20 = v14 + 96;
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 128;
      }

      while (v14 != v12);
      if (v12 == v11)
      {
        goto LABEL_29;
      }
    }

    v21 = v65 + 2 * v10 - v12 + 18;
    if (v21 < 0xE || (v12 < v9->u64 + (v21 >> 1) + 1 ? (v22 = v9 >= (v21 & 0xFFFFFFFFFFFFFFFELL) + v12 + 2) : (v22 = 1), !v22))
    {
      v25 = v9;
      v26 = v12;
      goto LABEL_26;
    }

    v23 = (v21 >> 1) + 1;
    if (v21 >= 0x3E)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFE0;
      v29 = (v12 + 32);
      v30 = &v9[1];
      v31 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v32 = *v30[-2].i8;
        v33 = vmovl_u8(*v30);
        v34 = vmovl_high_u8(*v30->i8);
        v29[-2] = vmovl_u8(*v32.i8);
        v29[-1] = vmovl_high_u8(v32);
        *v29 = v33;
        v29[1] = v34;
        v29 += 4;
        v30 += 4;
        v31 -= 32;
      }

      while (v31);
      if (v23 == v24)
      {
        goto LABEL_29;
      }

      if ((v23 & 0x18) == 0)
      {
        v26 = (v12 + 2 * v24);
        v25 = (v9 + v24);
        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = (v9 + (v23 & 0xFFFFFFFFFFFFFFF8));
    v26 = (v12 + 2 * (v23 & 0xFFFFFFFFFFFFFFF8));
    v35 = (v12 + 2 * v24);
    v36 = &v9->i8[v24];
    v37 = v24 - (v23 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v38 = *v36++;
      *v35++ = vmovl_u8(v38);
      v37 += 8;
    }

    while (v37);
    if (v23 == (v23 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    do
    {
LABEL_26:
      v27 = v25->u8[0];
      v25 = (v25 + 1);
      *v26++ = v27;
    }

    while (v26 != v11);
    goto LABEL_29;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      *v8 = v9->i16[0];
    }

    else
    {
      this = memcpy((v65 + 20), v9, 2 * v10);
    }
  }

LABEL_29:
  v28 = *(v3 + 4);
  if (v28 > v6)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *&v8[v28] = 0x20002000200020;
LABEL_68:
  *v2 = v4;
  v52 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
    v4 = *v2;
  }

  v2[1] = v52;
  v53 = *v4;
  *v4 = v7;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v9);
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v9);
    }
  }

  return v2;
}

uint64_t WGSL::AST::Visitor::visit(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 92);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v6 = *(a2 + 80);
    v7 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 24))(v3, *v6);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v5 = *(a2 + 76);
  if (v5 && (v3[32] & 1) == 0)
  {
    v8 = *(a2 + 64);
    v9 = 8 * v5;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 48))(v3, *v8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 84);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v7 = *(a2 + 72);
    v8 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if ((v3[32] & 1) == 0)
  {
    v5 = *(a2 + 64);
    v6 = *(*v3 + 216);

    return v6(v3, v5);
  }

  return result;
}

{
  v2 = *(a2 + 52);
  if (v2)
  {
    v3 = result;
    if ((*(result + 32) & 1) == 0)
    {
      v4 = *(a2 + 40);
      v5 = 8 * v2;
      do
      {
        if ((v3[32] & 1) == 0)
        {
          result = (*(*v3 + 360))(v3, *v4);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 60);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v5 = *(a2 + 48);
    v6 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v5);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  if ((v3[32] & 1) == 0)
  {
    result = (*(*v3 + 216))(v3, *(a2 + 24));
    if ((v3[32] & 1) == 0)
    {
      result = (*(*v3 + 400))(v3, *(a2 + 32));
      if (*(a2 + 40))
      {
        if ((v3[32] & 1) == 0)
        {
          v7 = *(*v3 + 360);

          return v7(v3);
        }
      }
    }
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 36);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v6 = *(a2 + 24);
    v7 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v6);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v5 = *(a2 + 52);
  if (v5 && (v3[32] & 1) == 0)
  {
    v8 = *(a2 + 40);
    v9 = 8 * v5;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 360))(v3, *v8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  if ((*(a2 + 96) & 1) != 0 && (v3[32] & 1) == 0)
  {
    v10 = *(*v3 + 552);

    return v10(v3, a2 + 56);
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 12);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v7 = *a2;
    v8 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 360))(v3, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v5 = *(a2 + 28);
  if (v5 && (v3[32] & 1) == 0)
  {
    v9 = *(a2 + 16);
    v10 = 8 * v5;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v9);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  if (*(a2 + 32) && (v3[32] & 1) == 0)
  {
    v6 = *(*v3 + 216);

    return v6(v3);
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 12);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v7 = *a2;
    v8 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 216))(v3, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if ((v3[32] & 1) == 0)
  {
    v5 = *(a2 + 16);
    v6 = *(*v3 + 400);

    return v6(v3, v5);
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 68);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v6 = *(a2 + 56);
    v7 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v6);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v5 = *(a2 + 84);
  if (v5 && (v3[32] & 1) == 0)
  {
    v8 = *(a2 + 72);
    v9 = 8 * v5;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 528))(v3, *v8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 100);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v7 = *(a2 + 88);
    v8 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if ((v3[32] & 1) == 0)
  {
    v5 = *(a2 + 104);
    v6 = *(*v3 + 216);

    return v6(v3, v5);
  }

  return result;
}

{
  v2 = *(a2 + 108);
  if (v2)
  {
    v3 = result;
    if ((*(result + 32) & 1) == 0)
    {
      v4 = *(a2 + 96);
      v5 = 8 * v2;
      do
      {
        if ((v3[32] & 1) == 0)
        {
          result = (*(*v3 + 216))(v3, *v4);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }
  }

  return result;
}

{
  v3 = result;
  v4 = *(a2 + 100);
  if (v4 && (*(result + 32) & 1) == 0)
  {
    v7 = *(a2 + 88);
    v8 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 96))(v3, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v5 = v3[32];
  if (*(a2 + 104) && (v3[32] & 1) == 0)
  {
    result = (*(*v3 + 536))(v3);
    v5 = v3[32];
  }

  if ((v5 & 1) == 0 && *(a2 + 112))
  {
    result = (*(*v3 + 216))(v3);
    v5 = v3[32];
  }

  if ((v5 & 1) == 0 && *(a2 + 120))
  {
    v6 = *(*v3 + 216);

    return v6(v3);
  }

  return result;
}

uint64_t WGSL::AST::Visitor::visit(_BYTE *a1, uint64_t a2)
{
  result = (*(*a2 + 16))(a2);
  if (result == 17 && (a1[32] & 1) == 0)
  {
    v5 = *(*a1 + 32);

    return v5(a1, a2);
  }

  return result;
}

{
  result = (*(*a2 + 16))(a2);
  if (result <= 53)
  {
    if (result == 15)
    {
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 88);
        v6 = a1;
        v7 = a2;

        return v5(v6, v7);
      }
    }

    else if (result == 26 && (a1[32] & 1) == 0)
    {
      v5 = *(*a1 + 56);
      v6 = a1;
      v7 = a2;

      return v5(v6, v7);
    }
  }

  else if (result == 54)
  {
    if ((a1[32] & 1) == 0)
    {
      v5 = *(*a1 + 72);
      v6 = a1;
      v7 = a2;

      return v5(v6, v7);
    }
  }

  else if (result == 56)
  {
    if ((a1[32] & 1) == 0)
    {
      v5 = *(*a1 + 80);
      v6 = a1;
      v7 = a2;

      return v5(v6, v7);
    }
  }

  else if (result == 60 && (a1[32] & 1) == 0)
  {
    v5 = *(*a1 + 64);
    v6 = a1;
    v7 = a2;

    return v5(v6, v7);
  }

  return result;
}

{
  result = (*(*a2 + 16))(a2);
  switch(result)
  {
    case 1:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 104);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 2:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 112);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 3:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 120);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 4:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 128);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 5:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 136);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 6:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 144);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 7:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 152);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 8:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 160);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 9:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 168);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 10:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 176);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 11:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 184);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 12:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 192);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 13:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 200);
        v6 = a1;
        v7 = a2;

        goto LABEL_58;
      }

      break;
    case 14:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 208);
        v6 = a1;
        v7 = a2;

LABEL_58:
        result = v5(v6, v7);
      }

      break;
    default:
      return result;
  }

  return result;
}

{
  result = (*(*a2 + 16))(a2);
  switch(result)
  {
    case 18:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 240);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 19:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 256);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 20:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 264);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 21:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 288);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 22:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 296);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 23:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 304);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 25:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 328);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 29:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 224);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 30:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 232);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 31:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 248);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 32:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 272);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 33:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 280);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 34:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 320);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 35:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 336);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 57:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 504);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 58:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 512);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case 59:
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 520);
        v6 = a1;
        v7 = a2;

LABEL_70:
        result = v5(v6, v7);
      }

      break;
    default:
      return result;
  }

  return result;
}

{
  result = (*(*a2 + 16))(a2);
  switch(result)
  {
    case '%':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 368);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '&':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 376);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '\'':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 384);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '(':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 392);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case ')':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 400);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '*':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 408);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '+':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 416);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case ',':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 424);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '-':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 432);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '.':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 440);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '/':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 448);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '0':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 456);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '1':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 464);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '2':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 472);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '3':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 480);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '4':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 488);
        v6 = a1;
        v7 = a2;

        goto LABEL_70;
      }

      break;
    case '5':
      if ((a1[32] & 1) == 0)
      {
        v5 = *(*a1 + 496);
        v6 = a1;
        v7 = a2;

LABEL_70:
        result = v5(v6, v7);
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t WGSL::AST::Visitor::visit(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 40))(a1, a2 + 24);
}

{
  return (*(*a1 + 216))(a1, *(a2 + 56));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 40))(a1, a2 + 24);
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

{
  return (*(*a1 + 216))(a1, *(a2 + 24));
}

_BYTE *WGSL::AST::Visitor::visit(_BYTE *result, void *a2)
{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, a2[3]);
    v4 = v3[32];
    if (a2[4] && (v3[32] & 1) == 0)
    {
      result = (*(*v3 + 216))(v3);
      v4 = v3[32];
    }

    if ((v4 & 1) == 0 && a2[5])
    {
      v5 = *(*v3 + 216);

      return v5(v3);
    }
  }

  return result;
}

{
  v3 = result;
  v4 = result[32];
  if (a2[3] && (result[32] & 1) == 0)
  {
    result = (*(*result + 360))(result);
    v4 = v3[32];
  }

  if ((v4 & 1) == 0 && a2[4])
  {
    result = (*(*v3 + 216))(v3);
    v4 = v3[32];
  }

  if ((v4 & 1) != 0 || !a2[5])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = (*(*v3 + 360))(v3);
    if (v3[32])
    {
      return result;
    }
  }

  v5 = a2[6];
  v6 = *(*v3 + 400);

  return v6(v3, v5);
}

_BYTE *WGSL::AST::Visitor::visit(_BYTE *result, uint64_t a2)
{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 64));
    if ((v3[32] & 1) == 0)
    {
      v4 = *(a2 + 72);
      v5 = *(*v3 + 216);

      return v5(v3, v4);
    }
  }

  return result;
}

{
  v3 = result;
  if ((result[32] & 1) == 0)
  {
    result = (*(*result + 216))(result, *(a2 + 64));
  }

  v4 = *(a2 + 84);
  if (v4 && (v3[32] & 1) == 0)
  {
    v5 = *(a2 + 72);
    v6 = 8 * v4;
    do
    {
      if ((v3[32] & 1) == 0)
      {
        result = (*(*v3 + 216))(v3, *v5);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 64));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 352))(result, a2 + 64);
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 64));
    if ((v3[32] & 1) == 0)
    {
      v4 = *(a2 + 72);
      v5 = *(*v3 + 216);

      return v5(v3, v4);
    }
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 64));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 64));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 24));
    if ((v3[32] & 1) == 0)
    {
      v4 = *(a2 + 32);
      v5 = *(*v3 + 216);

      return v5(v3, v4);
    }
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 256))(result, *(a2 + 24));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 24));
    if ((v3[32] & 1) == 0)
    {
      v4 = *(a2 + 32);
      v5 = *(*v3 + 216);

      return v5(v3, v4);
    }
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 88))(result, *(a2 + 24));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 24));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 24));
  }

  return result;
}

{
  if (*(a2 + 24))
  {
    if ((result[32] & 1) == 0)
    {
      return (*(*result + 216))();
    }
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 32));
    v4 = v3[32];
    v5 = *(a2 + 52);
    if (v5)
    {
      if (v3[32])
      {
        return result;
      }

      v6 = *(a2 + 40);
      v7 = 8 * v5;
      do
      {
        if ((v3[32] & 1) == 0)
        {
          result = (*(*v3 + 96))(v3, *v6);
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
      v4 = v3[32];
    }

    v8 = *(a2 + 68);
    if (v8)
    {
      if (v4)
      {
        return result;
      }

      v9 = *(a2 + 56);
      v10 = 24 * v8;
      do
      {
        if ((v3[32] & 1) == 0)
        {
          result = (*(*v3 + 544))(v3, v9);
        }

        v9 += 24;
        v10 -= 24;
      }

      while (v10);
      v4 = v3[32];
    }

    if ((v4 & 1) == 0)
    {
      v11 = *(*v3 + 544);

      return v11(v3, a2 + 72);
    }
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 64))(result, *(a2 + 24));
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    v3 = result;
    result = (*(*result + 216))(result, *(a2 + 24));
    if ((v3[32] & 1) == 0)
    {
      v4 = *(a2 + 32);
      v5 = *(*v3 + 400);

      return v5(v3, v4);
    }
  }

  return result;
}

{
  v3 = result[32];
  if (*(a2 + 64) && (result[32] & 1) == 0)
  {
    v4 = result;
    (*(*result + 216))();
    result = v4;
    v3 = v4[32];
  }

  if ((v3 & 1) == 0 && *(a2 + 72))
  {
    v5 = *(*result + 216);

    return v5();
  }

  return result;
}

{
  if ((result[32] & 1) == 0)
  {
    return (*(*result + 216))(result, *(a2 + 64));
  }

  return result;
}