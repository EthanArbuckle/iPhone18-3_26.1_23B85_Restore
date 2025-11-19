vg::shared::MetalTextureCache *vg::shared::MetalTextureCache::MetalTextureCache(vg::shared::MetalTextureCache *this, unint64_t a2)
{
  v3 = std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](this, a2);
  *(v3 + 6) = 0;
  vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clear(v3);
  *(this + 4) = vg::shared::Time(v4);
  return this;
}

void sub_270F73F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id vg::shared::MetalTextureCache::texture(vg::shared *a1, id *a2, void *a3)
{
  v5 = a3;
  v6 = vg::shared::Time(v5);
  if (v6 - *(a1 + 4) >= 0x3B9ACA01)
  {
    *(a1 + 4) = v6;
    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearStaleEntries(a1, 0x3B9ACA00uLL);
  }

  v7 = [*a2 UTF8String];
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v19 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  v10 = vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::find(a1, &__dst);
  v11 = v10;
  if (v10 && vg::shared::MetalTextureCache::_isCompatibleTexture(*v10, a2[1]))
  {
    v12 = *v11;
  }

  else
  {
    v14 = a2[1];
    v15 = *a2;
    v16 = 0;
    v17 = vg::shared::createMetalTexture(v5, &v14);

    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::insert(a1, &__dst, &v17);
    v12 = v17;
  }

  if (v19 < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

void sub_270F74134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearStaleEntries(vg::shared *a1, __uint64_t a2)
{
  v4 = vg::shared::Time(a1);
  v5 = *(a1 + 6);
  if (v5 != -1)
  {
    while (1)
    {
      v6 = *a1 + 56 * v5;
      if (v4 - *(v6 + 48) >= a2)
      {
        break;
      }

      v5 = *(v6 + 40);
      if (v5 == -1)
      {
        return;
      }
    }

    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex(a1, v5);
  }
}

uint64_t vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::find(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = a1 + 3;
  v4 = *(a1 + 6);
  if (v4 == -1)
  {
LABEL_21:
    v14 = 0;
  }

  else
  {
    v5 = *a1;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = v3;
    while (1)
    {
      v9 = v5 + 56 * v4;
      if (*(v9 + 24) == 1)
      {
        v10 = *(v9 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v9 + 8);
        }

        if (v10 == size)
        {
          v12 = v11 >= 0 ? (v5 + 56 * v4) : *v9;
          v13 = memcmp(v12, p_p, size);
          if (!v13)
          {
            break;
          }
        }
      }

      v4 = *(v9 + 40);
      v8 = (v9 + 40);
      if (*(v9 + 40) == -1)
      {
        goto LABEL_21;
      }
    }

    *(v9 + 48) = vg::shared::Time(v13);
    *v8 = *(v9 + 40);
    *(v9 + 40) = *v3;
    *v3 = v4;
    v14 = v9 + 32;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_270F74338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vg::shared::MetalTextureCache::_isCompatibleTexture(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 width];
  if (v5 == [v4 width] && (v6 = objc_msgSend(v3, "height"), v6 == objc_msgSend(v4, "height")) && (v7 = objc_msgSend(v3, "pixelFormat"), v7 == objc_msgSend(v4, "pixelFormat")))
  {
    v8 = [v3 arrayLength];
    v9 = v8 == [v4 arrayLength];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id vg::shared::createMetalTexture(void *a1, void *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (*(a2 + 16) == 1)
  {
    if ([*a2 arrayLength] >= 2)
    {
      v5 = VGLogSharedMetalHelpers();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalTexture(a2);
      }

      goto LABEL_29;
    }

    v7 = [*a2 pixelFormat];
    if (v7 <= 79)
    {
      if ((v7 - 70) >= 2)
      {
        if (v7 != 55)
        {
          goto LABEL_27;
        }

        v8 = 1278226534;
      }

      else
      {
        v8 = 1380401729;
      }
    }

    else
    {
      if ((v7 - 80) >= 2)
      {
        if ((v7 - 552) < 2)
        {
          v8 = 1999908961;
LABEL_18:
          v9 = 8;
          goto LABEL_19;
        }

        if (v7 == 115)
        {
          v8 = 1380411457;
          goto LABEL_18;
        }

LABEL_27:
        v5 = VGLogSharedMetalHelpers();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          vg::shared::createMetalTexture(a2);
        }

        goto LABEL_29;
      }

      v8 = 1111970369;
    }

    v9 = 4;
LABEL_19:
    v10 = objc_alloc(MEMORY[0x277CD2930]);
    v19[0] = *MEMORY[0x277CD2928];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a2, "width")}];
    v20[0] = v11;
    v19[1] = *MEMORY[0x277CD28D0];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a2, "height")}];
    v20[1] = v12;
    v19[2] = *MEMORY[0x277CD28D8];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v20[2] = v13;
    v19[3] = *MEMORY[0x277CD28B0];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    v20[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v16 = [v10 initWithProperties:v15];

    if (!v16)
    {
      v5 = VGLogSharedMetalHelpers();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalTexture(a2);
      }

      goto LABEL_29;
    }

    v6 = [v4 newTextureWithDescriptor:*a2 iosurface:v16 plane:0];

    goto LABEL_21;
  }

  v6 = [v3 newTextureWithDescriptor:*a2];
LABEL_21:
  if (v6)
  {
    [v6 setLabel:a2[1]];
    goto LABEL_30;
  }

  v5 = VGLogSharedMetalHelpers();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTexture(a2);
  }

LABEL_29:

  v6 = 0;
LABEL_30:

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

{
  v3 = a1;
  v4 = [*a2 pixelFormat];
  if (v4 <= 1380401728)
  {
    switch(v4)
    {
      case 32:
        v6 = *(a2 + 24) == 0;
        v7 = 84;
        break;
      case 1111970369:
        v6 = *(a2 + 24) == 0;
        v7 = 80;
        break;
      case 1278226534:
        v5 = 55;
LABEL_19:
        v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v5 width:objc_msgSend(*a2 height:"width") mipmapped:objc_msgSend(*a2, "height"), 0];
        [v8 setTextureType:2];
        [v8 setUsage:a2[1]];
        v10 = [v3 newTextureWithDescriptor:v8 iosurface:*a2 plane:0];
        v9 = v10;
        if (v10)
        {
          [v10 setLabel:a2[2]];
          v11 = v9;
        }

        else
        {
          v12 = VGLogSharedMetalHelpers();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            vg::shared::createMetalTexture(a2);
          }
        }

        goto LABEL_25;
      default:
        goto LABEL_12;
    }

LABEL_16:
    if (v6)
    {
      v5 = v7 + 1;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_19;
  }

  switch(v4)
  {
    case 1380401729:
      v6 = *(a2 + 24) == 0;
      v7 = 70;
      goto LABEL_16;
    case 1380411457:
      v5 = 115;
      goto LABEL_19;
    case 1999908961:
      v6 = *(a2 + 24) == 0;
      v7 = 552;
      goto LABEL_16;
  }

LABEL_12:
  v8 = VGLogSharedMetalHelpers();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTexture(a2);
  }

  v9 = 0;
LABEL_25:

  return v9;
}

uint64_t vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::insert(uint64_t *a1, uint64_t a2, id *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v6 = a1 + 3;
  v5 = *(a1 + 6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = *a1;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v10 = a1 + 3;
  do
  {
    while (1)
    {
      v11 = v10;
      v12 = v5;
      v13 = v8 + 56 * v5;
      if (*(v13 + 24) == 1)
      {
        break;
      }

      v10 = (v13 + 40);
      v5 = *(v13 + 40);
      if (v5 == -1)
      {
        goto LABEL_23;
      }
    }

    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 == size)
    {
      v16 = v15 >= 0 ? v13 : *v13;
      if (!memcmp(v16, p_p, size))
      {
        break;
      }
    }

    v10 = (v13 + 40);
    v5 = *(v13 + 40);
  }

  while (v5 != 0xFFFFFFFFLL);
LABEL_23:
  std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(v13, &__p);
  objc_storeStrong((v13 + 32), *a3);
  *(v13 + 48) = vg::shared::Time(v17);
  *v11 = *(v13 + 40);
  *(v13 + 40) = *v6;
  *v6 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_270F74940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_270F74A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<vg::shared::GPUTimestampSampler>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

id vg::shared::getCounterSet(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 counterSets];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = v8;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v4 = VGLogSharedMetalHelpers();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    vg::shared::getCounterSet();
  }

  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id vg::shared::createCounterBuffer(void *a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CD6D50]);
  [v7 setCounterSet:v6];
  [v7 setStorageMode:0];
  [v7 setSampleCount:a3];
  v15 = 0;
  v8 = [v5 newCounterSampleBufferWithDescriptor:v7 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = VGLogSharedMetalHelpers();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 name];
      vg::shared::createCounterBuffer(v11, buf, v10);
    }

    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_270F74D64(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void vg::shared::GPUTimestampSampler::syncTimestamps(id *this)
{
  v2 = [this[2] device];
  [v2 sampleTimestamps:this gpuTimestamp:this + 1];
}

uint64_t *std::unique_ptr<vg::shared::GPUTimestampSampler>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    MEMORY[0x2743B9370](v2, 0x1080C40FC8D7990);
  }

  return a1;
}

uint64_t vg::shared::GPUTimestampSampler::nextSampleIndex(void *a1, int a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v4 = (a1 + 3);
  v7 = v6 - v5;
  v8 = (v6 - v5) >> 2;
  if (v8 == *(v4 + 24))
  {
    v9 = VGLogSharedMetalHelpers();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      vg::shared::GPUTimestampSampler::nextSampleIndex();
    }

    return -1;
  }

  else
  {
    v10 = a1[5];
    if (v6 >= v10)
    {
      v12 = v8 + 1;
      if ((v8 + 1) >> 62)
      {
        std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
      }

      v13 = v10 - v5;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
      v15 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v4, v15);
      }

      *(4 * v8) = a2;
      v11 = 4 * v8 + 4;
      memcpy(0, v5, v7);
      v16 = a1[3];
      a1[3] = 0;
      a1[4] = v11;
      a1[5] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v6 = a2;
      v11 = (v6 + 4);
    }

    a1[4] = v11;
  }

  return v8;
}

void vg::shared::GPUTimestampSampler::samplePass(vg::shared::GPUTimestampSampler *this, MTLComputePassDescriptor *a2)
{
  v3 = [(MTLComputePassDescriptor *)a2 sampleBufferAttachments];
  v4 = [v3 objectAtIndexedSubscript:0];

  [v4 setSampleBuffer:*(this + 2)];
  [v4 setStartOfEncoderSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 0)}];
  [v4 setEndOfEncoderSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 1)}];
}

void vg::shared::GPUTimestampSampler::samplePass(vg::shared::GPUTimestampSampler *this, MTLRenderPassDescriptor *a2)
{
  v3 = [(MTLRenderPassDescriptor *)a2 sampleBufferAttachments];
  v4 = [v3 objectAtIndexedSubscript:0];

  [v4 setSampleBuffer:*(this + 2)];
  [v4 setStartOfVertexSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 2)}];
  [v4 setEndOfVertexSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 3)}];
  [v4 setStartOfFragmentSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 4)}];
  [v4 setEndOfFragmentSampleIndex:{vg::shared::GPUTimestampSampler::nextSampleIndex(this, 5)}];
}

void vg::shared::GPUTimestampSampler::resolveSamples(vg::shared::GPUTimestampSampler *this@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = (*(this + 4) - *(this + 3)) >> 2;
  v5 = [*(this + 2) resolveCounterRange:{0, v4}];
  v6 = [v5 length];
  if (v4 == v6 >> 3)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = [v5 bytes];
    if (v6 >= 8)
    {
      v8 = *(this + 3);
      do
      {
        v10 = *v7++;
        v9 = v10;
        v11 = *v8++;
        *(&v20 + v11) += v9;
        --v4;
      }

      while (v4);
    }

    v12 = [*(this + 2) device];
    [v12 sampleTimestamps:&v19 gpuTimestamp:&v18];

    v13 = (v19 - *this) / (v18 - *(this + 1));
    v14 = (v13 * (*(&v20 + 1) - v20));
    v15 = (v13 * (*(&v21 + 1) - v21));
    v16 = (v13 * (*(&v22 + 1) - v22));
    *(this + 4) = *(this + 3);
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = 1;
  }

  else
  {
    *(this + 4) = *(this + 3);
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void vg::shared::TextureRegionCache::insert(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  objc_initWeak(&location, v6);
  objc_initWeak(&v9, v7);
  j___ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE4findERKS7_();
}

void sub_270F75450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location)
{
  objc_destroyWeak((v13 + 8));
  objc_destroyWeak(&a9);

  _Unwind_Resume(a1);
}

uint64_t vg::shared::getMetalLibrary(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN2vg6shared15getMetalLibraryEPU19objcproto9MTLDevice11objc_object_block_invoke;
  block[3] = &unk_279E28D98;
  v8 = v1;
  v2 = vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sOnceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sOnceToken, block);
  }

  v4 = vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary;
  v5 = vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary;

  return v4;
}

void ___ZN2vg6shared15getMetalLibraryEPU19objcproto9MTLDevice11objc_object_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundle];
  v3 = [v2 URLForResource:@"VGSharedShaders" withExtension:@"metallib"];

  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 newLibraryWithURL:v3 error:&v9];
  v6 = v9;
  v7 = vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary;
  vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary = v5;

  if (vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary)
  {
    [vg::shared::getMetalLibrary(objc_object  {objcproto9MTLDevice}*)::sLibrary setLabel:@"Vista"];
  }

  else
  {
    v8 = VGLogSharedMetalHelpers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___ZN2vg6shared15getMetalLibraryEPU19objcproto9MTLDevice11objc_object_block_invoke_cold_1();
    }
  }
}

id vg::shared::createMetalVertexDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CD7090] vertexDescriptor];
  if (a2)
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = 4;
      switch(*v6)
      {
        case 3:
        case 6:
        case 16:
        case 25:
        case 28:
        case 36:
          break;
        case 4:
        case 5:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 32:
        case 33:
        case 34:
        case 35:
          goto LABEL_11;
        case 17:
        case 26:
          v9 = 6;
          break;
        case 18:
        case 27:
        case 29:
        case 37:
          v9 = 8;
          break;
        case 30:
        case 38:
          v9 = 12;
          break;
        case 31:
        case 39:
          v9 = 16;
          break;
        default:
          if (v8 == 50 || v8 == 53)
          {
            v9 = 2;
          }

          else
          {
LABEL_11:
            v9 = 0;
          }

          break;
      }

      v10 = [v4 layouts];
      v11 = [v10 objectAtIndexedSubscript:v5];
      [v11 setStride:v9];

      v12 = [v4 layouts];
      v13 = [v12 objectAtIndexedSubscript:v5];
      [v13 setStepRate:1];

      v14 = [v4 layouts];
      v15 = [v14 objectAtIndexedSubscript:v5];
      [v15 setStepFunction:1];

      v16 = [v4 attributes];
      v17 = [v16 objectAtIndexedSubscript:v7];
      [v17 setFormat:v8];

      v18 = [v4 attributes];
      v19 = [v18 objectAtIndexedSubscript:v7];
      [v19 setOffset:0];

      v20 = [v4 attributes];
      v21 = [v20 objectAtIndexedSubscript:v7];
      [v21 setBufferIndex:v5];
      v6 += 2;

      ++v5;
    }

    while (a2 != v5);
  }

  return v4;
}

id vg::shared::createMetalTextureDescriptor(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setTextureType:*(a1 + 16)];
  [v2 setPixelFormat:*a1];
  [v2 setWidth:*(a1 + 8)];
  [v2 setHeight:*(a1 + 10)];
  [v2 setUsage:*(a1 + 32)];
  v3 = *(a1 + 16);
  if (v3 <= 8 && ((1 << v3) & 0x14A) != 0)
  {
    [v2 setArrayLength:*(a1 + 24)];
LABEL_4:
    if (*(a1 + 48) == 1)
    {
      v4 = *(a1 + 8);
      if (v4 <= *(a1 + 10))
      {
        v4 = *(a1 + 10);
      }

      [v2 setMipmapLevelCount:vcvtpd_u64_f64(log2(v4))];
    }

    v5 = v2;
    goto LABEL_9;
  }

  if (*(a1 + 24) < 2uLL)
  {
    goto LABEL_4;
  }

  v7 = VGLogSharedMetalHelpers();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTextureDescriptor();
  }

  v5 = 0;
LABEL_9:

  return v5;
}

id vg::shared::createMetalRasterizationRateMapDescriptor(__int128 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F28]);
  v19 = *a1;
  v20 = *(a1 + 2);
  [v2 setScreenSize:&v19];
  [v2 setLabel:*(a1 + 9)];
  if (*(a1 + 6))
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc(MEMORY[0x277CD6F10]);
      v19 = *(a1 + 24);
      v20 = *(a1 + 5);
      v5 = [v4 initWithSampleCount:&v19];
      v6 = [v5 horizontalSampleStorage];
      v7 = *(a1 + 3);
      if (v7)
      {
        v8 = 0;
        v9 = *(a1 + 14);
        do
        {
          *v6++ = v9;
          ++v8;
        }

        while (v7 > v8);
      }

      v10 = [v5 verticalSampleStorage];
      v11 = *(a1 + 4);
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 14);
        do
        {
          *v10++ = v13;
          ++v12;
        }

        while (v11 > v12);
      }

      [v2 setLayer:v5 atIndex:v3];

      ++v3;
    }

    while (v3 < *(a1 + 6));
  }

  v14 = v2;
  v15 = v14;
  if (*(a1 + 64))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  [v14 setMutability:v16];
  LODWORD(v17) = *(a1 + 15);
  [v15 setMinFactor:v17];

  return v15;
}

id vg::shared::createMetalTexture(void *a1, uint64_t a2)
{
  v3 = a1;
  if (*(a2 + 58) != 1)
  {
    v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*a2 width:*(a2 + 8) height:*(a2 + 10) mipmapped:0];
LABEL_6:
    v5 = v4;
    [v4 setTextureType:*(a2 + 16)];
    [v5 setArrayLength:*(a2 + 24)];
    [v5 setUsage:*(a2 + 32)];
    if ((*(a2 + 57) & 1) == 0)
    {
      [v5 setResourceOptions:*(a2 + 48)];
      if (*(a2 + 56) == 1)
      {
        v6 = *(a2 + 8);
        if (v6 <= *(a2 + 10))
        {
          v6 = *(a2 + 10);
        }

        [v5 setMipmapLevelCount:vcvtpd_u64_f64(log2(v6))];
      }
    }

    v7 = v5;
    v10 = v7;
    v11 = *(a2 + 40);
    v12 = *(a2 + 57);
    v8 = vg::shared::createMetalTexture(v3, &v10);

    goto LABEL_15;
  }

  if ((*(a2 + 16) - 5) <= 1 && *(a2 + 8) == *(a2 + 10))
  {
    v4 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:*a2 size:? mipmapped:?];
    goto LABEL_6;
  }

  v7 = VGLogSharedMetalHelpers();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTexture(a2);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

id vg::shared::createMetalFunction(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CD6D78] functionDescriptor];
  [v4 setName:*a2];
  [v4 setConstantValues:a2[1]];
  v10 = 0;
  v5 = [v3 newFunctionWithDescriptor:v4 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = VGLogSharedMetalHelpers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      vg::shared::createMetalFunction(a2);
    }
  }

  return v5;
}

id vg::shared::createMetalComputePipeline(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = vg::shared::createMetalFunction(v5, &v19);

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setLabel:v8];
    [v11 setComputeFunction:v10];
    [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
    v12 = [v5 device];
    v18 = 0;
    v13 = [v12 newComputePipelineStateWithDescriptor:v11 options:0 reflection:0 error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = VGLogSharedMetalHelpers();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalComputePipeline();
      }

      v16 = 0;
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id vg::shared::createMetalRenderPipeline(void *a1, uint64_t a2)
{
  v3 = a1;
  v21 = *(a2 + 24);
  v22 = *a2;
  v4 = vg::shared::createMetalFunction(v3, &v21);

  if (v4)
  {
    v21 = *(a2 + 32);
    v22 = *a2;
    v5 = vg::shared::createMetalFunction(v3, &v21);

    if (v5)
    {
      v6 = objc_opt_new();
      [v6 setVertexFunction:v4];
      [v6 setFragmentFunction:v5];
      [v6 setVertexDescriptor:*(a2 + 40)];
      [v6 setMaxVertexAmplificationCount:*(a2 + 48)];
      v7 = *(a2 + 64);
      v8 = [v6 colorAttachments];
      v9 = [v8 objectAtIndexedSubscript:0];
      [v9 setPixelFormat:v7];

      v10 = *(a2 + 72);
      v11 = [v6 colorAttachments];
      v12 = [v11 objectAtIndexedSubscript:0];
      [v12 setWriteMask:v10];

      [v6 setDepthAttachmentPixelFormat:*(a2 + 80)];
      [v6 setInputPrimitiveTopology:*(a2 + 56)];
      [v6 setSupportIndirectCommandBuffers:*(a2 + 8)];
      v13 = [v3 device];
      v14 = *(a2 + 16);
      v20 = 0;
      v15 = [v13 newRenderPipelineStateWithDescriptor:v6 options:v14 reflection:0 error:&v20];
      v16 = v20;

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v18 = VGLogSharedMetalHelpers();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          vg::shared::createMetalRenderPipeline();
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id vg::shared::createMetalTileRenderPipeline(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v26 = v11;
  v12 = v10;
  v27 = v12;
  v13 = vg::shared::createMetalFunction(v9, &v26);

  if (v13)
  {
    v14 = objc_opt_new();
    [v14 setLabel:v11];
    [v14 setTileFunction:v13];
    v15 = [v14 colorAttachments];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 setPixelFormat:a4];

    v17 = [v14 colorAttachments];
    v18 = [v17 objectAtIndexedSubscript:1];
    [v18 setPixelFormat:a5];

    [v14 setThreadgroupSizeMatchesTileSize:1];
    v19 = [v9 device];
    v25 = 0;
    v20 = [v19 newRenderPipelineStateWithTileDescriptor:v14 options:0 reflection:0 error:&v25];
    v21 = v25;

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = VGLogSharedMetalHelpers();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalTileRenderPipeline();
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

int64x2_t vg::shared::computeMetalDispatchThreadgroupSize@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 maxTotalThreadsPerThreadgroup];
  *a3 = v5;
  result = vdupq_n_s64(1uLL);
  *(a3 + 8) = result;
  *(a3 + 24) = (a2 + v5 - 1) / v5;
  *(a3 + 32) = result;
  return result;
}

int64x2_t vg::shared::computeNonUniformMetalDispatchThreadsSize@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 maxTotalThreadsPerThreadgroup];
  *a3 = a2;
  result = vdupq_n_s64(1uLL);
  *(a3 + 8) = result;
  *(a3 + 24) = v5;
  *(a3 + 32) = result;
  return result;
}

void vg::shared::computeMetalDispatchThreadgroupSize(void *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unint64_t *a4@<X8>)
{
  v9 = a1;
  v7 = [v9 threadExecutionWidth];
  v8 = [v9 maxTotalThreadsPerThreadgroup];
  *a4 = v7;
  a4[1] = v8 / v7;
  a4[2] = 1;
  a4[3] = (a2 + v7 - 1) / v7;
  a4[4] = (HIWORD(a2) + v8 / v7 - 1) / (v8 / v7);
  a4[5] = a3;
}

void vg::shared::computeNonUniformMetalDispatchThreadsSize(void *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v9 = a1;
  v7 = [v9 threadExecutionWidth];
  v8 = [v9 maxTotalThreadsPerThreadgroup];
  *a4 = a2;
  a4[1] = HIWORD(a2);
  a4[2] = a3;
  a4[3] = v7;
  a4[4] = v8 / v7;
  a4[5] = 1;
}

uint64_t vg::shared::linearPixelFormat(uint64_t this, MTLPixelFormat a2)
{
  if (this <= 114)
  {
    if ((this - 70) < 2)
    {
      return 70;
    }

    if ((this - 80) < 2)
    {
      return 80;
    }

    goto LABEL_9;
  }

  if ((this - 552) < 2)
  {
    return 552;
  }

  if (this != 115)
  {
LABEL_9:
    v2 = VGLogSharedMetalHelpers();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      vg::shared::linearPixelFormat();
    }

    return 0;
  }

  return this;
}

void *std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 40;
        std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,0>(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {

    objc_destroyWeak(a1);
  }
}

void *_ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void _ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS8_EENS5_IDv2_fSA_EEE10CacheEntryEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSH_m(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS8_EENS5_IDv2_fSA_EEE10CacheEntryEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSH_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    _ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEE22__base_destruct_at_endB8ne200100EPSC_(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void _ZNSt3__16vectorIN2vg6shared8LRUCacheINS_4pairIU6__weakPU21objcproto10MTLTexture11objc_objectS7_EENS4_IDv2_fS9_EEE10CacheEntryENS_9allocatorISC_EEE22__base_destruct_at_endB8ne200100EPSC_(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 56;
    do
    {
      if (*(v5 + 16) == 1)
      {
        objc_destroyWeak((v5 + 8));
        objc_destroyWeak(v5);
      }

      v6 = v5 == a2;
      v5 -= 56;
    }

    while (!v6);
  }

  *(a1 + 8) = a2;
}

void std::__optional_destruct_base<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    objc_destroyWeak((a1 + 8));
    objc_destroyWeak(a1);
    *(a1 + 16) = 0;
  }
}

id *std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>::operator=[abi:ne200100](id *a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);
  objc_storeWeak(a1, WeakRetained);

  v5 = objc_loadWeakRetained(location + 1);
  objc_storeWeak(a1 + 1, v5);

  return a1;
}

void *std::vector<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 40;
        std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,0>(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
  }
}

void *std::vector<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry,std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry,std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_270F77438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry,std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void ___ZL23VGLogSharedMetalHelpersv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedMetalHelpers");
  v1 = VGLogSharedMetalHelpers(void)::handle;
  VGLogSharedMetalHelpers(void)::handle = v0;
}

void std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,0>(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clear(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
    v6 = 1;
    do
    {
      v7 = v2 + 56 * v4;
      if (*(v7 + 24) == 1)
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
          v2 = *a1;
        }

        *(v7 + 24) = 0;
      }

      if (v5 - 1 == v4)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6;
      }

      v9 = v2 + 56 * v4;
      *(v9 + 40) = v8;
      *(v9 + 48) = 0;
      v4 = v6;
    }

    while (v5 > v6++);
  }

  *(a1 + 6) = 0;
}

void *std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex(void *a1, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v4 = *a1 + 56 * v3;
      if (*(v4 + 24) == 1)
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        *(v4 + 24) = 0;
      }

      v5 = *(v4 + 32);
      *(v4 + 32) = 0;

      *(v4 + 48) = 0;
      v3 = *(v4 + 40);
    }

    while (v3 != -1);
  }
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

void vg::shared::MetalTextureViewCache::view()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_270F06000, v0, OS_LOG_TYPE_DEBUG, "Created new texture view for texture %p", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void vg::shared::MetalBufferCache::buffer()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void vg::shared::MetalBufferCache::buffer(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_270F06000, v2, OS_LOG_TYPE_DEBUG, "Create metal buffer for IOSurface %p", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalBuffer(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v1, v2, "Failed to create metal buffer %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v2, v3, "Failed to create buffer %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v2, v3, "Failed to create ioSurface for buffer %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalTexture(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v1, v2, "Failed to create texture %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v1, v2, "Failed to create ioSurface for texture %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v1, v2, "Unsupported pixel format for texture %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v1, v2, "Unsupported number of layers for texture %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v2, v3, "Failed to create texture %@. Requested a cube texture with incompatible texture type or mismatched cube side size.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v2, v3, "Failed to create texture %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v2, v3, "Unsupported pixel format for texture %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void vg::shared::getCounterSet()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "MTLDevice does not support counter set %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vg::shared::createCounterBuffer(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "MTLDevice failed to create a counter sample buffer for %@", buf, 0xCu);
}

void vg::shared::GPUTimestampSampler::nextSampleIndex()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN2vg6shared15getMetalLibraryEPU19objcproto9MTLDevice11objc_object_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to create metal library: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalTextureDescriptor()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void vg::shared::createMetalFunction(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_270F06000, v3, OS_LOG_TYPE_ERROR, "Failed to create %@ function: %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalComputePipeline()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to created compute pipeline state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalRenderPipeline()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to create render pipeline state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vg::shared::createMetalTileRenderPipeline()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to create tile render pipeline state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vg::shared::linearPixelFormat()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

id vg::VertexAttributeBuffer::makeIOSurfaceProperties(vg::VertexAttributeBuffer *this, MTLVertexFormat a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 0;
    v3 = 1278226534;
    v4 = 1;
    v5 = 4;
    switch(this)
    {
      case 3uLL:
      case 6uLL:
        v3 = 1278226488;
        v4 = 4;
        v5 = 1;
        goto LABEL_18;
      case 4uLL:
      case 5uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x18uLL:
      case 0x20uLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
        goto LABEL_20;
      case 0x10uLL:
      case 0x19uLL:
        v3 = 1278226742;
        v5 = 2;
        v4 = 2;
        goto LABEL_18;
      case 0x11uLL:
      case 0x1AuLL:
        v3 = 1278226742;
        v4 = 3;
        goto LABEL_14;
      case 0x12uLL:
      case 0x1BuLL:
        v3 = 1278226742;
        v4 = 4;
        goto LABEL_14;
      case 0x1CuLL:
      case 0x24uLL:
        goto LABEL_18;
      case 0x1DuLL:
      case 0x25uLL:
        v4 = 2;
        goto LABEL_17;
      case 0x1EuLL:
      case 0x26uLL:
        v4 = 3;
LABEL_17:
        v5 = 4;
        goto LABEL_18;
      case 0x1FuLL:
      case 0x27uLL:
        v5 = 4;
        v4 = 4;
        goto LABEL_18;
      default:
        if (this != 50 && this != 53)
        {
          goto LABEL_20;
        }

        v3 = 1278226742;
        v4 = 1;
LABEL_14:
        v5 = 2;
LABEL_18:
        v14[0] = *MEMORY[0x277CD2928];
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4 * a2];
        v7 = *MEMORY[0x277CD28D0];
        v15[0] = v6;
        v15[1] = &unk_2880F6178;
        v8 = *MEMORY[0x277CD28D8];
        v14[1] = v7;
        v14[2] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
        v15[2] = v9;
        v14[3] = *MEMORY[0x277CD28B0];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
        v15[3] = v10;
        v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

        break;
    }
  }

  else
  {
    v6 = __VGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Num elements must be > 0 ", v13, 2u);
    }

    v2 = 0;
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_270F785E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t vg::VertexAttributeBuffer::checkCreateInfo(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (v1)
  {
    v3 = *a1;
    v4 = 4;
    switch(*a1)
    {
      case 0:
        v5 = __VGLogSharedInstance();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        LOWORD(v15) = 0;
        v6 = " Vertex format must be valid ";
        goto LABEL_6;
      case 1:
      case 2:
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 32:
      case 33:
      case 34:
      case 35:
        goto LABEL_21;
      case 3:
      case 6:
      case 16:
      case 25:
      case 28:
      case 36:
        goto LABEL_13;
      case 17:
      case 26:
        v4 = 6;
        goto LABEL_13;
      case 18:
      case 27:
      case 29:
      case 37:
        v4 = 8;
        goto LABEL_13;
      case 30:
      case 38:
        v4 = 12;
        goto LABEL_13;
      case 31:
      case 39:
        v4 = 16;
        goto LABEL_13;
      default:
        if (v3 == 50 || v3 == 53)
        {
          v4 = 2;
LABEL_13:
          v9 = a1[2];
          if (!v9 || (v10 = v4 * v1, [v9 allocationSize] >= (v4 * v1)))
          {
            result = 1;
            goto LABEL_20;
          }

          v5 = __VGLogSharedInstance();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v11 = [a1[2] allocationSize];
          v15 = 134218240;
          v16 = v10;
          v17 = 2048;
          v18 = v11;
          v6 = " IOSurface allocation size must be >= %zu bytes [%zu] ";
          v7 = v5;
          v8 = 22;
        }

        else
        {
LABEL_21:
          v5 = __VGLogSharedInstance();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v14 = *a1;
          v15 = 67109120;
          LODWORD(v16) = v14;
          v6 = " Unsupported vertex format %d ";
          v7 = v5;
          v8 = 8;
        }

        break;
    }

    goto LABEL_17;
  }

  v5 = __VGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v15) = 0;
    v6 = " Num elements must be > 0 ";
LABEL_6:
    v7 = v5;
    v8 = 2;
LABEL_17:
    _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, v6, &v15, v8);
  }

LABEL_18:

  result = 0;
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void vg::VertexAttributeBuffer::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((vg::VertexAttributeBuffer::checkCreateInfo(a1) & 1) == 0)
  {
LABEL_10:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CD2930]);
    v6 = vg::VertexAttributeBuffer::makeIOSurfaceProperties(*a1, *(a1 + 8));
    v4 = [v5 initWithProperties:v6];

    if (!v4)
    {
      v10 = __VGLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " Failed to create IOSurface ", v12, 2u);
      }

      goto LABEL_10;
    }
  }

  if (*(a1 + 24))
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = 4;
    switch(*a1)
    {
      case 3:
      case 6:
      case 0x10:
      case 0x19:
      case 0x1CLL:
      case 0x24:
        break;
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 0xALL:
      case 0xBLL:
      case 0xCLL:
      case 0xDLL:
      case 0xELL:
      case 0xFLL:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x20:
      case 0x21:
      case 0x22:
      case 0x23:
        goto LABEL_17;
      case 0x11:
      case 0x1ALL:
        v9 = 6;
        break;
      case 0x12:
      case 0x1BLL:
      case 0x1DLL:
      case 0x25:
        v9 = 8;
        break;
      case 0x1ELL:
      case 0x26:
        v9 = 12;
        break;
      case 0x1FLL:
      case 0x27:
        v9 = 16;
        break;
      default:
        if (v7 == 50 || v7 == 53)
        {
          v9 = 2;
        }

        else
        {
LABEL_17:
          v9 = 0;
        }

        break;
    }

    vg::IOSurfaceData::IOSurfaceData(v12, v4, 0);
    memcpy(v12[4], *(a1 + 24), v9 * v8);
    vg::IOSurfaceData::~IOSurfaceData(v12);
  }

  v11 = v4;
  *a2 = v11;
  *(a2 + 8) = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 24) = 1;
}

id vg::VertexAttributeBuffer::iosurfaceProperties(id *this)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CD2928];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*this, "width")}];
  v10[0] = v2;
  v9[1] = *MEMORY[0x277CD28D0];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*this, "height")}];
  v10[1] = v3;
  v9[2] = *MEMORY[0x277CD28D8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*this, "pixelFormat")}];
  v10[2] = v4;
  v9[3] = *MEMORY[0x277CD28B0];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*this, "bytesPerElement")}];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t vg::VertexAttributeBuffer::bytesPerElement(vg::VertexAttributeBuffer *this)
{
  v1 = *(this + 2);
  result = 4;
  switch(v1)
  {
    case 3:
    case 6:
    case 16:
    case 25:
    case 28:
    case 36:
      return result;
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 32:
    case 33:
    case 34:
    case 35:
      goto LABEL_9;
    case 17:
    case 26:
      result = 6;
      break;
    case 18:
    case 27:
    case 29:
    case 37:
      result = 8;
      break;
    case 30:
    case 38:
      result = 12;
      break;
    case 31:
    case 39:
      result = 16;
      break;
    default:
      if (v1 == 50 || v1 == 53)
      {
        result = 2;
      }

      else
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t vg::VertexAttributeBuffer::numBytes(vg::VertexAttributeBuffer *this)
{
  v1 = 4;
  switch(*(this + 2))
  {
    case 3:
    case 6:
    case 0x10:
    case 0x19:
    case 0x1CLL:
    case 0x24:
      return v1 * *(this + 1);
    case 0x11:
    case 0x1ALL:
      v1 = 6;
      break;
    case 0x12:
    case 0x1BLL:
    case 0x1DLL:
    case 0x25:
      v1 = 8;
      break;
    case 0x1ELL:
    case 0x26:
      v1 = 12;
      break;
    case 0x1FLL:
    case 0x27:
      v1 = 16;
      break;
    default:
      v1 = 0;
      break;
  }

  return v1 * *(this + 1);
}

id vg::VertexAttributeBuffer::makeDumpObject(vg::VertexAttributeBuffer *this)
{
  v2 = objc_opt_new();
  [v2 setVertexFormat:*(this + 2)];
  [v2 setElementCount:*(this + 1)];
  [v2 setIosurface:*this];

  return v2;
}

CVPixelBufferRef createColorFromYCbCr(__CVBuffer *a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___ZL20createColorFromYCbCrP10__CVBufferb_block_invoke;
  v33[3] = &__block_descriptor_40_e5_v8__0l;
  v33[4] = a1;
  v4 = MEMORY[0x2743B9AA0](v33);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  srcYp.data = BaseAddressOfPlane;
  srcYp.height = CVPixelBufferGetHeightOfPlane(a1, 0);
  srcYp.width = WidthOfPlane;
  srcYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v8 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  srcCbCr.data = v7;
  srcCbCr.height = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  srcCbCr.width = v8;
  srcCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v9 = malloc_type_malloc(4 * WidthOfPlane * srcYp.height, 0x8B851727uLL);
  dest.data = v9;
  dest.height = srcYp.height;
  dest.width = WidthOfPlane;
  dest.rowBytes = 4 * WidthOfPlane;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v11.i32[0] = 875704422;
  v12.i32[0] = PixelFormatType;
  v13 = vbsl_s8(vdup_lane_s32(vceq_s32(v12, v11), 0), 0x1000000FFLL, 0x10000000EBLL);
  if (PixelFormatType == 875704422)
  {
    v14 = 255;
  }

  else
  {
    v14 = 240;
  }

  pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
  pixelRange.CbCr_bias = 128;
  pixelRange.YpRangeMax = v13.i32[0];
  pixelRange.CbCrRangeMax = v14;
  *&pixelRange.YpMax = v13;
  pixelRange.CbCrMax = v14;
  pixelRange.CbCrMin = pixelRange.Yp_bias;
  if (vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86F0], &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
  {
    data = v9;
LABEL_11:
    free(data);
    IOSurfaceBackedPixelBufferCopy = 0;
    goto LABEL_12;
  }

  v28 = 50462976;
  v27 = 66051;
  if (a2)
  {
    v16 = &v28;
  }

  else
  {
    v16 = &v27;
  }

  if (vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &outInfo, v16, 0xFFu, 0x100u))
  {
    data = dest.data;
    goto LABEL_11;
  }

  v26 = 0;
  v20 = *MEMORY[0x277CC4E08];
  v34[0] = *MEMORY[0x277CC4D70];
  v34[1] = v20;
  v35[0] = MEMORY[0x277CBEC38];
  v35[1] = MEMORY[0x277CBEC38];
  v34[2] = *MEMORY[0x277CC4D68];
  v35[2] = MEMORY[0x277CBEC38];
  pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  if (a2)
  {
    v22 = 32;
  }

  else
  {
    v22 = 1111970369;
  }

  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], dest.width, dest.height, v22, dest.data, dest.rowBytes, PixelBufferReleaseBytesCallback, dest.data, pixelBufferAttributes, &v26))
  {
    IOSurfaceBackedPixelBufferCopy = 0;
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZL20createColorFromYCbCrP10__CVBufferb_block_invoke_2;
    v25[3] = &__block_descriptor_40_e5_v8__0l;
    v25[4] = v26;
    v23 = MEMORY[0x2743B9AA0](v25);
    IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(v26, v24);
    v23[2](v23);
  }

LABEL_12:
  v4[2](v4);

  v18 = *MEMORY[0x277D85DE8];
  return IOSurfaceBackedPixelBufferCopy;
}

void sub_270F79980(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

BOOL vg::fillBGRAFromYCbCr(vg *this, __CVBuffer *a2, __CVBuffer *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(this, 1uLL);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = ___ZN2vg17fillBGRAFromYCbCrEP10__CVBufferS1__block_invoke;
  v23[3] = &__block_descriptor_40_e5_v8__0l;
  v23[4] = this;
  v5 = MEMORY[0x2743B9AA0](v23);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, 0);
  srcYp.data = BaseAddressOfPlane;
  srcYp.height = CVPixelBufferGetHeightOfPlane(this, 0);
  srcYp.width = WidthOfPlane;
  srcYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(this, 1uLL);
  v9 = CVPixelBufferGetWidthOfPlane(this, 1uLL);
  srcCbCr.data = v8;
  srcCbCr.height = CVPixelBufferGetHeightOfPlane(this, 1uLL);
  srcCbCr.width = v9;
  srcCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(this, 1uLL);
  pixelRange = *ymmword_270FA94C8;
  if (vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86F0], &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
  {
    v10 = 0;
  }

  else
  {
    CVPixelBufferLockBaseAddress(a2, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN2vg17fillBGRAFromYCbCrEP10__CVBufferS1__block_invoke_2;
    v19[3] = &__block_descriptor_40_e5_v8__0l;
    v19[4] = a2;
    v11 = MEMORY[0x2743B9AA0](v19);
    memset(&dest, 0, sizeof(dest));
    MakeVImageBuffer(a2, &dest);
    *permuteMap = 66051;
    if (vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &outInfo, permuteMap, 0xFFu, 0x100u))
    {
      v10 = 0;
    }

    else
    {
      v16 = 0;
      v12 = *MEMORY[0x277CC4E08];
      v24[0] = *MEMORY[0x277CC4D70];
      v24[1] = v12;
      v25[0] = MEMORY[0x277CBEC38];
      v25[1] = MEMORY[0x277CBEC38];
      v24[2] = *MEMORY[0x277CC4D68];
      v25[2] = MEMORY[0x277CBEC38];
      pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
      v10 = CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], dest.width, dest.height, 0x42475241u, dest.data, dest.rowBytes, PixelBufferReleaseBytesCallback, dest.data, pixelBufferAttributes, &v16) == 0;
    }

    v11[2](v11);
  }

  v5[2](v5);

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_270F79D38(_Unwind_Exception *a1)
{
  v2[2](v2);

  v1[2](v1);
  _Unwind_Resume(a1);
}

void MakeVImageBuffer(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  *a2 = BaseAddress;
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  a2[3] = CVPixelBufferGetBytesPerRow(a1);
  if (!BaseAddress)
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_DEBUG, " vImageBuffer returned null data pointer - make sure you lock the CVPixelBuffer before use ", v6, 2u);
    }
  }
}

void PixelBufferReleaseBytesCallback(void *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CVPixelBufferRef vg::createYCbCrFromARGB(vg *this, __CVBuffer *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(this, 1uLL);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN2vg19createYCbCrFromARGBEP10__CVBuffer_block_invoke;
  v19[3] = &__block_descriptor_40_e5_v8__0l;
  v19[4] = this;
  v3 = MEMORY[0x2743B9AA0](v19);
  memset(&src, 0, sizeof(src));
  MakeVImageBuffer(this, &src);
  *&destYp.height = *&src.height;
  width = src.width;
  destYp.rowBytes = src.width;
  *&destCbCr.height = vshrq_n_u64(*&src.height, 1uLL);
  destCbCr.rowBytes = src.width;
  height = src.height;
  v5 = src.width * vsraq_n_u64(*&src.height, *&src.height, 1uLL).u64[0];
  v6 = malloc_type_malloc(v5, 0x4DA224BAuLL);
  destYp.data = v6;
  destCbCr.data = &v6[height * width];
  pixelRange = *ymmword_270FA94E8;
  vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86D8], &pixelRange, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
  vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &outInfo, 0, 0);
  planeBaseAddress[0] = destYp.data;
  planeBaseAddress[1] = destCbCr.data;
  planeWidth[0] = destYp.width;
  planeWidth[1] = destCbCr.width;
  v21[0] = destYp.height;
  v21[1] = destCbCr.height;
  planeBytesPerRow[0] = destYp.rowBytes;
  planeBytesPerRow[1] = destCbCr.rowBytes;
  v14 = 0;
  if (CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x277CBECE8], src.width, src.height, 0x34323066u, 0, v5, 2uLL, planeBaseAddress, planeWidth, v21, planeBytesPerRow, PixelBufferReleasePlanarBytesCallback, v6, 0, &v14))
  {
    free(v6);
    IOSurfaceBackedPixelBufferCopy = 0;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN2vg19createYCbCrFromARGBEP10__CVBuffer_block_invoke_2;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = v14;
    v8 = MEMORY[0x2743B9AA0](v13);
    IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(v14, v9);
    v8[2](v8);
  }

  v3[2](v3);

  v10 = *MEMORY[0x277D85DE8];
  return IOSurfaceBackedPixelBufferCopy;
}

void sub_270F7A150(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

CVPixelBufferRef vg::createIOSurfaceBackedPixelBufferCopy(vg *this, __CVBuffer *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = *MEMORY[0x277CC4DE8];
  v21[0] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, PixelFormatType, v3, &pixelBuffer))
  {
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (CVPixelBufferGetPlaneCount(this))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(this);
      if (!PlaneCount)
      {
LABEL_14:
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        CVPixelBufferUnlockBaseAddress(this, 1uLL);
        CVBufferPropagateAttachments(this, pixelBuffer);
        v7 = pixelBuffer;
        goto LABEL_15;
      }
    }

    else
    {
      PlaneCount = 1;
    }

    for (i = 0; i != PlaneCount; ++i)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, i);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, i);
      v12 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
      v13 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
      v14 = v13;
      if (BytesPerRowOfPlane >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = BytesPerRowOfPlane;
      }

      HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, i);
      if (HeightOfPlane >= 1)
      {
        do
        {
          memcpy(v12, BaseAddressOfPlane, v15);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v12 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }
    }

    goto LABEL_14;
  }

  v7 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

CVPixelBufferRef vg::createARGBFromBGRA(vg *this, __CVBuffer *a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(this, 1uLL);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZN2vg18createARGBFromBGRAEP10__CVBuffer_block_invoke;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = this;
  v3 = MEMORY[0x2743B9AA0](v16);
  memset(&src, 0, sizeof(src));
  MakeVImageBuffer(this, &src);
  if (MEMORY[0x2743B9DD0](&dest, src.height, src.width, 32, 0) || (*permuteMap = 66051, vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0)))
  {
    IOSurfaceBackedPixelBufferCopy = 0;
  }

  else
  {
    v12 = 0;
    v7 = *MEMORY[0x277CC4E08];
    v17[0] = *MEMORY[0x277CC4D70];
    v17[1] = v7;
    v18[0] = MEMORY[0x277CBEC38];
    v18[1] = MEMORY[0x277CBEC38];
    v17[2] = *MEMORY[0x277CC4D68];
    v18[2] = MEMORY[0x277CBEC38];
    pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], dest.width, dest.height, 0x20u, dest.data, dest.rowBytes, PixelBufferReleaseBytesCallback, 0, pixelBufferAttributes, &v12))
    {
      IOSurfaceBackedPixelBufferCopy = 0;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN2vg18createARGBFromBGRAEP10__CVBuffer_block_invoke_2;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = v12;
      v9 = MEMORY[0x2743B9AA0](v11);
      IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(v12, v10);
      v9[2](v9);
    }
  }

  v3[2](v3);

  v5 = *MEMORY[0x277D85DE8];
  return IOSurfaceBackedPixelBufferCopy;
}

void sub_270F7A650(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

CVPixelBufferPoolRef vg::createPixelBufferPool(vg *this, uint64_t a2)
{
  v4 = VGLogImageUtilities();
  if (os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferPool", &unk_270FBF062, v9, 2u);
  }

  v5 = vg::createAttributeDictionary(this, a2);
  PixelBufferPoolWithAttributes = vg::createPixelBufferPoolWithAttributes(v5, v6);

  ___ZN2vg21createPixelBufferPoolEmmj_block_invoke();
  return PixelBufferPoolWithAttributes;
}

id VGLogImageUtilities(void)
{
  if (VGLogImageUtilities(void)::onceToken != -1)
  {
    VGLogImageUtilities();
  }

  v1 = VGLogImageUtilities(void)::handle;

  return v1;
}

void ___ZN2vg21createPixelBufferPoolEmmj_block_invoke()
{
  v0 = VGLogImageUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferPool", &unk_270FBF062, v1, 2u);
  }
}

id vg::createAttributeDictionary(vg *this, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277CC4E30];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v5 = *MEMORY[0x277CC4DE8];
  v15[0] = v4;
  v15[1] = MEMORY[0x277CBEC10];
  v6 = *MEMORY[0x277CC4EC8];
  v14[1] = v5;
  v14[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:this];
  v15[2] = v7;
  v14[3] = *MEMORY[0x277CC4DD8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v9 = *MEMORY[0x277CC4E38];
  v15[3] = v8;
  v15[4] = &unk_2880F6190;
  v10 = *MEMORY[0x277CC4D60];
  v14[4] = v9;
  v14[5] = v10;
  v15[5] = &unk_2880F61A8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_270F7A9CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

CVPixelBufferPoolRef vg::createPixelBufferPoolWithAttributes(vg *this, NSDictionary *a2)
{
  v2 = this;
  v3 = VGLogImageUtilities();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferPoolWithAttributes", &unk_270FBF062, buf, 2u);
  }

  poolOut = 0;
  v4 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v2, &poolOut);
  v5 = poolOut;
  if (v4)
  {
    CVPixelBufferPoolRelease(poolOut);
    v5 = 0;
  }

  ___ZN2vg35createPixelBufferPoolWithAttributesEP12NSDictionary_block_invoke();

  return v5;
}

void sub_270F7AAC0(_Unwind_Exception *a1)
{
  ___ZN2vg35createPixelBufferPoolWithAttributesEP12NSDictionary_block_invoke();

  _Unwind_Resume(a1);
}

void ___ZN2vg35createPixelBufferPoolWithAttributesEP12NSDictionary_block_invoke()
{
  v0 = VGLogImageUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferPoolWithAttributes", &unk_270FBF062, v1, 2u);
  }
}

CVPixelBufferRef vg::createPixelBufferFromPool(vg *this, uint64_t a2, unint64_t a3, __CVPixelBufferPool **a4, __CVPixelBufferPool **a5)
{
  v8 = VGLogImageUtilities();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferFromPool", &unk_270FBF062, buf, 2u);
  }

  PixelBufferPool = *a4;
  if (!*a4)
  {
    PixelBufferPool = vg::createPixelBufferPool(this, a2);
    *a4 = PixelBufferPool;
  }

  pixelBufferOut = 0;
  v10 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], PixelBufferPool, &pixelBufferOut);
  v11 = pixelBufferOut;
  if (v10)
  {
    CVPixelBufferRelease(pixelBufferOut);
    v11 = 0;
  }

  ___ZN2vg25createPixelBufferFromPoolEmmjPP19__CVPixelBufferPool_block_invoke();
  return v11;
}

void ___ZN2vg25createPixelBufferFromPoolEmmjPP19__CVPixelBufferPool_block_invoke()
{
  v0 = VGLogImageUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreatePixelBufferFromPool", &unk_270FBF062, v1, 2u);
  }
}

id vg::IOSurfaceARGB8888FromPlanarF(vg *this, const vImage_Buffer *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277CD2928];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 2)];
  v23[0] = v4;
  v22[1] = *MEMORY[0x277CD28D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 1)];
  v6 = *MEMORY[0x277CD28B0];
  v23[1] = v5;
  v23[2] = &unk_2880F61C0;
  v7 = *MEMORY[0x277CD28D8];
  v22[2] = v6;
  v22[3] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v23[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v10 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v9];
  [v10 lockWithOptions:0 seed:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN2vg28IOSurfaceARGB8888FromPlanarFEPK13vImage_Bufferj_block_invoke;
  v20[3] = &unk_279E28D98;
  v11 = v10;
  v21 = v11;
  v12 = MEMORY[0x2743B9AA0](v20);
  memset(&dest, 0, sizeof(dest));
  if (v11)
  {
    [v11 vg_vImageBuffer];
    v13 = 4 * dest.width;
  }

  else
  {
    v13 = 0;
  }

  dest.width = v13;
  v14 = *(this + 1);
  *&v18.data = *this;
  v18.rowBytes = *(&v14 + 1);
  v18.width = 4 * v14;
  if (vImageConvert_PlanarFtoPlanar8(&v18, &dest, 255.0, 0.0, 0x100u))
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v12[2](v12);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_270F7AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v23[2](v23);

  _Unwind_Resume(a1);
}

BOOL vg::rotatePixelBufferVImage(vg *this, __CVBuffer *a2, __CVBuffer *a3)
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v6 = VGLogImageUtilities();
  if (os_signpost_enabled(v6))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RotatePixelBufferVImage", &unk_270FBF062, &buf, 2u);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  memset(&buf, 0, sizeof(buf));
  MakeVImageBuffer(this, &buf);
  memset(&v19, 0, sizeof(v19));
  MakeVImageBuffer(a2, &v19);
  if ((v3 & 0xFD) == 1)
  {
    if (buf.width != v19.height)
    {
      goto LABEL_14;
    }

    height = buf.height;
    width = v19.width;
  }

  else
  {
    if (buf.width != v19.width)
    {
      goto LABEL_14;
    }

    height = buf.height;
    width = v19.height;
  }

  if (height == width)
  {
    *backColor = 0;
    v23 = 0;
    if (PixelFormatType <= 1380410944)
    {
      if (PixelFormatType <= 1094862673)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_30;
        }

        if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
        {
          goto LABEL_40;
        }

        MakeVImageBuffer(this, 0, &v21);
        buf = v21;
        MakeVImageBuffer(a2, 0, &v21);
        v19 = v21;
        vImageRotate90_Planar8(&buf, &v19, v3, 0, 0);
        MakeVImageBuffer(this, 1uLL, &v21);
        buf = v21;
        MakeVImageBuffer(a2, 1uLL, &v21);
        v19 = v21;
      }

      else
      {
        if (PixelFormatType <= 1278226535)
        {
          if (PixelFormatType != 1094862674)
          {
            v10 = 1111970369;
            goto LABEL_29;
          }

LABEL_30:
          v12 = vImageRotate90_ARGB8888(&buf, &v19, v3, backColor, 0);
          goto LABEL_35;
        }

        if (PixelFormatType != 1278226536)
        {
          v10 = 1380401729;
LABEL_29:
          if (PixelFormatType == v10)
          {
            goto LABEL_30;
          }

LABEL_40:
          v17 = __VGLogSharedInstance();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = vg::OSTypeToString(PixelFormatType);
            LODWORD(v21.data) = 138412290;
            *(&v21.data + 4) = v18;
            _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Format not supported: %@ ", &v21, 0xCu);
          }

          v14 = -21773;
          goto LABEL_36;
        }
      }

LABEL_34:
      v12 = vImageRotate90_Planar16U(&buf, &v19, v3, 0, 0);
      goto LABEL_35;
    }

    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType == 1380410945)
      {
        v12 = vImageRotate90_ARGBFFFF(&buf, &v19, v3, backColor, 0);
        goto LABEL_35;
      }

      if (PixelFormatType == 1380411457)
      {
        v12 = vImageRotate90_ARGB16U(&buf, &v19, v3, backColor, 0);
        goto LABEL_35;
      }

      v13 = 1647392359;
    }

    else
    {
      if (PixelFormatType <= 1751410031)
      {
        if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
        {
          v12 = vImageRotate90_PlanarF(&buf, &v19, v3, 0.0, 0);
LABEL_35:
          v14 = v12;
LABEL_36:
          CVPixelBufferUnlockBaseAddress(this, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 0);
          v11 = v14 == 0;
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (PixelFormatType == 1751410032)
      {
        goto LABEL_34;
      }

      v13 = 1751411059;
    }

    if (PixelFormatType != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_14:
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  v11 = 0;
LABEL_37:
  ___ZN2vg23rotatePixelBufferVImageEP10__CVBufferS1_h_block_invoke();
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void ___ZN2vg23rotatePixelBufferVImageEP10__CVBufferS1_h_block_invoke()
{
  v0 = VGLogImageUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RotatePixelBufferVImage", &unk_270FBF062, v1, 2u);
  }
}

void MakeVImageBuffer(__CVBuffer *a1@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  *a3 = BaseAddressOfPlane;
  a3[1] = CVPixelBufferGetHeightOfPlane(a1, a2);
  a3[2] = CVPixelBufferGetWidthOfPlane(a1, a2);
  a3[3] = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  if (!BaseAddressOfPlane)
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_DEBUG, " vImageBuffer returned null data pointer - make sure you lock the CVPixelBuffer before use ", v8, 2u);
    }
  }
}

id vg::OSTypeToString(vg *this)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", (this >> 24), ((this << 8) >> 24), (this >> 8), this];
  if ([v2 length] == 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08x", this];
  }

  v4 = v3;

  return v4;
}

id vg::createDataFromColorIOSurface(vg *this, IOSurface *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBF758] imageWithIOSurface:this];
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v9 = *MEMORY[0x277CBF938];
  v10[0] = MEMORY[0x277CBEC28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:v4];
  v6 = [v5 PNGRepresentationOfImage:v2 format:*MEMORY[0x277CBF9C8] colorSpace:v3 options:MEMORY[0x277CBEC10]];
  CGColorSpaceRelease(v3);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id vg::createColorIOSurfaceFromData(vg *this, NSData *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = this;
  v4 = [MEMORY[0x277CBF758] imageWithData:v3];
  v28[0] = *MEMORY[0x277CD2B88];
  v5 = MEMORY[0x277CCABB0];
  [v4 extent];
  v7 = [v5 numberWithDouble:v6];
  v29[0] = v7;
  v28[1] = *MEMORY[0x277CD2A28];
  v8 = MEMORY[0x277CCABB0];
  [v4 extent];
  v10 = [v8 numberWithDouble:v9];
  v11 = *MEMORY[0x277CD2960];
  v29[1] = v10;
  v29[2] = &unk_2880F61C0;
  v12 = *MEMORY[0x277CD2A70];
  v28[2] = v11;
  v28[3] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v29[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v15 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v14];
  v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___ZN2vg28createColorIOSurfaceFromDataEP6NSDataj_block_invoke;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = v16;
  v17 = MEMORY[0x2743B9AA0](v25);
  v26 = *MEMORY[0x277CBF938];
  v27 = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v19 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:v18];
  [v15 lockWithOptions:0 seed:0];
  [v4 extent];
  v21 = v20;
  [v4 extent];
  [v19 render:v4 toIOSurface:v15 bounds:v16 colorSpace:{0.0, 0.0, v21}];
  [v15 unlockWithOptions:0 seed:0];
  v22 = v15;

  v17[2](v17);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id vg::createSurfaceFromSurfaceWithTransform(vg *this, IOSurface *a2, const simd_float3x3 *a3)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = VGLogImageUtilities();
  if (os_signpost_enabled(v5))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateSurfaceFromSurfaceWithTransform", &unk_270FBF062, &buf, 2u);
  }

  v6 = MTLCreateSystemDefaultDevice();
  v7 = MEMORY[0x277CD7058];
  Width = IOSurfaceGetWidth(v4);
  v9 = [v7 texture2DDescriptorWithPixelFormat:70 width:Width height:IOSurfaceGetHeight(v4) mipmapped:0];
  [v9 setUsage:1];
  v41 = [v6 newTextureWithDescriptor:v9 iosurface:v4 plane:0];
  v10 = objc_alloc(MEMORY[0x277CD2930]);
  v47[0] = *MEMORY[0x277CD2928];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[vg width](v4, "width")}];
  v48[0] = v11;
  v47[1] = *MEMORY[0x277CD28D0];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[vg height](v4, "height")}];
  v13 = *MEMORY[0x277CD28B0];
  v48[1] = v12;
  v48[2] = &unk_2880F61C0;
  v14 = *MEMORY[0x277CD28D8];
  v47[2] = v13;
  v47[3] = v14;
  v48[3] = &unk_2880F61D8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
  v42 = [v10 initWithProperties:v15];

  [v9 setUsage:2];
  v16 = [v6 newTextureWithDescriptor:v9 iosurface:v42 plane:0];
  v17 = vg::shared::getMetalLibrary(v6);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 newFunctionWithName:@"transformColor"];
    if (!v19)
    {
      v21 = __VGLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v30 = [@"transformColor" cStringUsingEncoding:1];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Failed to create function '%s'\n ", &buf, 0xCu);
      }

      v29 = 0;
      goto LABEL_28;
    }

    v20 = a2;
    v21 = objc_opt_new();
    [v21 setComputeFunction:v19];
    v44 = 0;
    v40 = [v6 newComputePipelineStateWithDescriptor:v21 options:0 reflection:0 error:&v44];
    v38 = v44;
    if (v38 || !v40)
    {
      log = __VGLogSharedInstance();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v31 = [@"transformColor" cStringUsingEncoding:1];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, " Failed to create pipeline state for function '%s'\n ", &buf, 0xCu);
      }

      v29 = 0;
      goto LABEL_27;
    }

    log = [v6 newCommandQueue];
    v37 = [log commandBuffer];
    v22 = [v37 computeCommandEncoder];
    v23 = v22;
    if (v22)
    {
      v36 = v16;
      [v22 setComputePipelineState:v40];
      [v23 setTexture:v41 atIndex:0];
      [v23 setTexture:v16 atIndex:1];
      [v23 setBytes:v20 length:48 atIndex:0];
      v24 = [v40 threadExecutionWidth];
      v25 = [v40 maxTotalThreadsPerThreadgroup];
      v26 = [v16 width];
      v27 = [v36 height];
      *&buf = v26;
      *(&buf + 1) = v27;
      v46 = 1;
      v43[0] = v24;
      v43[1] = v25 / v24;
      v43[2] = 1;
      [v23 dispatchThreads:&buf threadsPerThreadgroup:v43];
      [v23 endEncoding];
      [v37 commit];
      [v37 waitUntilCompleted];
      if (v42 == [v36 iosurface])
      {
        v29 = v42;
        v16 = v36;
        goto LABEL_26;
      }

      v16 = v36;
      v28 = __VGLogSharedInstance();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Inverse texture has mismatched iosurface ", &buf, 2u);
      }
    }

    else
    {
      v32 = __VGLogSharedInstance();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [@"transformColor" cStringUsingEncoding:1];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v33;
        _os_log_impl(&dword_270F06000, v32, OS_LOG_TYPE_ERROR, " Failed to create compute command encoder for function '%s'\n ", &buf, 0xCu);
      }
    }

    v29 = 0;
LABEL_26:

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v19 = __VGLogSharedInstance();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = 0;
    _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " Failed to create metal library: %@ ", &buf, 0xCu);
  }

  v29 = 0;
LABEL_29:

  ___ZN2vg37createSurfaceFromSurfaceWithTransformEP9IOSurfaceRK13simd_float3x3_block_invoke();
  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

void sub_270F7C104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  ___ZN2vg37createSurfaceFromSurfaceWithTransformEP9IOSurfaceRK13simd_float3x3_block_invoke();

  _Unwind_Resume(a1);
}

void ___ZN2vg37createSurfaceFromSurfaceWithTransformEP9IOSurfaceRK13simd_float3x3_block_invoke()
{
  v0 = VGLogImageUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateSurfaceFromSurfaceWithTransform", &unk_270FBF062, v1, 2u);
  }
}

BOOL vg::validateAlphaChannelForSurface(vg *this, IOSurface *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = [(vg *)v2 pixelFormat];
  v4 = v3;
  if (v3 > 1111970368)
  {
    v5 = &v18;
    if (v3 == 1111970369 || v3 == 1380401729)
    {
      goto LABEL_7;
    }

LABEL_16:
    v16 = __VGLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = vg::OSTypeToString(v4);
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " Format not supported: %@ ", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_15;
  }

  if (v3 != 32 && v3 != 1094862674)
  {
    goto LABEL_16;
  }

  v5 = &v19;
LABEL_7:
  vg::IOSurfaceData::IOSurfaceData(buf, v2, 1);
  v6 = [(vg *)v2 width];
  v7 = [(vg *)v2 height];
  if (v7)
  {
    v8 = 0;
    v9 = v22;
    v10 = 1;
    while (1)
    {
      v11 = v9;
      v12 = v6;
      if (v6)
      {
        break;
      }

LABEL_12:
      ++v8;
      v9 += v23;
      v10 = v8 < v7;
      if (v8 == v7)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v13 = v11[3];
      v19 = *v11;
      v18 = v13;
      if (*v5)
      {
        break;
      }

      v11 += v24;
      if (!--v12)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  vg::IOSurfaceData::~IOSurfaceData(buf);
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

IOSurface *vg::undistortMcamS8Image(vg *this, IOSurface *a2, IOSurface *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  v6 = [(IOSurface *)v5 height];
  v7 = objc_alloc(MEMORY[0x277CD2930]);
  v42[0] = *MEMORY[0x277CD2928];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v5, "width")}];
  v9 = v6 / 2;
  v43[0] = v8;
  v42[1] = *MEMORY[0x277CD28D0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6 / 2];
  v43[1] = v10;
  v42[2] = *MEMORY[0x277CD28D8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[vg pixelFormat](v4, "pixelFormat")}];
  v42[3] = *MEMORY[0x277CD28B0];
  v43[2] = v11;
  v43[3] = &unk_2880F61C0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v13 = [v7 initWithProperties:v12];

  if ([(IOSurface *)v5 pixelFormat]== 1278226536)
  {
    vg::IOSurfaceData::IOSurfaceData(v38, v4, 1);
    vg::IOSurfaceData::IOSurfaceData(v34, v5, 1);
    vg::IOSurfaceData::IOSurfaceData(v30, v13, 0);
    if ((v6 + 1) >= 3)
    {
      v14 = 0;
      if (v9 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v9;
      }

      do
      {
        for (i = 0; i < [(IOSurface *)v5 width]; ++i)
        {
          _H0 = *(v35 + v36 * v14 + v37 * i);
          __asm { FCVT            S0, H0 }

          v23 = (_S0 + 0.5);
          LOWORD(_S0) = *(v35 + v36 * (v14 + v9) + v37 * i);
          __asm { FCVT            S0, H0 }

          *(v31 + v32 * v14 + v33 * i) = *(v39 + v40 * (_S0 + 0.5) + v41 * v23);
        }

        ++v14;
      }

      while (v14 != v15);
    }
  }

  else
  {
    if ([(IOSurface *)v5 pixelFormat]!= 1278226534)
    {
      goto LABEL_21;
    }

    vg::IOSurfaceData::IOSurfaceData(v38, v4, 1);
    vg::IOSurfaceData::IOSurfaceData(v34, v5, 1);
    vg::IOSurfaceData::IOSurfaceData(v30, v13, 0);
    if ((v6 + 1) >= 3)
    {
      v25 = 0;
      if (v9 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v9;
      }

      do
      {
        for (j = 0; j < [(IOSurface *)v5 width]; ++j)
        {
          *(v31 + v32 * v25 + v33 * j) = *(v39 + v40 * (*(v35 + v36 * (v25 + v9) + v37 * j) + 0.5) + v41 * (*(v35 + v36 * v25 + v37 * j) + 0.5));
        }

        ++v25;
      }

      while (v25 != v26);
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v30);
  vg::IOSurfaceData::~IOSurfaceData(v34);
  vg::IOSurfaceData::~IOSurfaceData(v38);
LABEL_21:

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_270F7C86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, id);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void ___ZL19VGLogImageUtilitiesv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "ImageUtilities");
  v1 = VGLogImageUtilities(void)::handle;
  VGLogImageUtilities(void)::handle = v0;
}

void sub_270F7D0BC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_270F7D2C4(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_270F7DDA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_270F7DE98(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_270F7E3C0(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

void sub_270F7E94C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_270F7EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::DictionaryHandler::~DictionaryHandler(va);

  _Unwind_Resume(a1);
}

void cva::ItemHandler::createMatrix<float,3u,0u>(uint64_t a1)
{
  v2 = (4 * (3 * *(a1 + 16)) + 31) & 0x7FFFFFFE0;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v2, 0xE1AC2527uLL);
  v3 = memptr;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (3 * v4);
    v6 = *a1;
    v7 = 4 * v5;
    do
    {
      v8 = *v6++;
      *v3++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  cva::ItemHandler::createMatrix<float>();
}

void sub_270F7ED14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  free(a12);
  cva::DictionaryHandler::~DictionaryHandler(&a15);

  _Unwind_Resume(a1);
}

void cva::ItemHandler::createMatrix<int,3u,0u>(uint64_t a1)
{
  v2 = (4 * (3 * *(a1 + 16)) + 31) & 0x7FFFFFFE0;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v2, 0xE1AC2527uLL);
  v3 = memptr;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (3 * v4);
    v6 = *a1;
    v7 = 4 * v5;
    do
    {
      v8 = *v6++;
      *v3++ = v8;
      v7 -= 4;
    }

    while (v7);
  }

  cva::ItemHandler::createMatrix<int>();
}

void sub_270F7EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::DictionaryHandler::~DictionaryHandler(va);

  _Unwind_Resume(a1);
}

void cva::ItemHandler::createMatrix<float,4u,4u>(uint64_t a1)
{
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v2 = 0;
  v3 = memptr;
  do
  {
    *&v3[v2] = *(a1 + v2);
    v2 += 4;
  }

  while (v2 != 64);
  cva::ItemHandler::createMatrix<float>();
}

void sub_270F7F02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::DictionaryHandler::~DictionaryHandler(va);

  _Unwind_Resume(a1);
}

void sub_270F7F400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  free(a9);
  cva::ItemHandler::~ItemHandler(&a12);
  cva::DictionaryHandler::~DictionaryHandler(&a14);

  _Unwind_Resume(a1);
}

void sub_270F7F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  cva::ItemHandler::~ItemHandler(&a9);
  cva::DictionaryHandler::~DictionaryHandler(&a11);

  _Unwind_Resume(a1);
}

void cva::MatrixData<float,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      v4 = (4 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
      *a1 = 0;
      *(a1 + 8) = v4 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v4, 0xE1AC2527uLL);
      *a1 = memptr;
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_270F80754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VGMLEspressoModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_270F8137C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void vg::common::transformPoints(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  v7 = (16 * v6 + 31) & 0x7FFFFFFE0;
  v36[1] = (v7 >> 2);
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v8 = memptr[0];
  v36[0] = memptr[0];
  v37 = v6;
  if (4 * v6)
  {
    memset_pattern16(memptr[0], &unk_270FA9510, 16 * v6);
  }

  v9 = *(a2 + 16);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v8[4 * v9];
  if (v10)
  {
    v12 = 0;
  }

  if (v11 != v12)
  {
    v13 = 0;
    v14 = *a2;
    do
    {
      v15 = *v14++;
      *v11 = v15;
      v11 += (v13 > 1) + 1;
      if (v13 <= 1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    while (v11 != v12);
  }

  memptr[1] = a1;
  memptr[2] = v36;
  v39 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,0u,false>>(v36, memptr);
  if (v37)
  {
    v16 = 0;
    v17 = v36[0];
    v18 = 4 * v37;
    do
    {
      v19 = &v17[4 * (v16 & 0xFFFFFFFC)];
      v20 = &v19->f32[3];
      v21 = vld1q_dup_f32(v20);
      *v19 = vdivq_f32(*v19, v21);
      v16 += 4;
    }

    while (v18 != v16);
  }

  v22 = *(a2 + 16);
  v23 = v36[0];
  v24 = (3 * v22);
  v25 = (4 * v24 + 31) & 0x7FFFFFFE0;
  *a3 = 0;
  *(a3 + 8) = v25 >> 2;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, v25, 0xE1AC2527uLL);
  v26 = memptr[0];
  *a3 = memptr[0];
  *(a3 + 16) = v22;
  if (v23 == v26)
  {
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v25, 0xE1AC2527uLL);
    v30 = memptr[0];
    if (v22)
    {
      v31 = 0;
      v32 = 4 * v24;
      v33 = memptr[0];
      do
      {
        *v33++ = *v23;
        v34 = &v23[v31 > 1];
        if (v31 <= 1)
        {
          ++v31;
        }

        else
        {
          v31 = 0;
        }

        v23 = v34 + 1;
        v32 -= 4;
      }

      while (v32);
    }

    *a3 = v30;
    *(a3 + 8) = v25 >> 2;
    *(a3 + 16) = v22;
    free(v26);
  }

  else if (v22)
  {
    v27 = 0;
    v28 = 4 * v24;
    do
    {
      *v26++ = *v23;
      v29 = &v23[v27 > 1];
      if (v27 <= 1)
      {
        ++v27;
      }

      else
      {
        v27 = 0;
      }

      v23 = v29 + 1;
      v28 -= 4;
    }

    while (v28);
  }

  free(v36[0]);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_270F82024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  free(v9);
  free(a9);
  _Unwind_Resume(a1);
}

void vg::common::transformPoints(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = v8;
  do
  {
    v5 = 0;
    v6 = *(a1 + 16 * v3);
    do
    {
      v7 = v6;
      *(v4 + v5) = *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
      ++v5;
    }

    while (v5 != 4);
    ++v3;
    ++v4;
  }

  while (v3 != 4);
  vg::common::transformPoints(v8, a2, a3);
}

void cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  if (*(a2 + 8) == v4 || *v5 == v4)
  {
    v7 = (4 * (4 * *(v5 + 16)) + 31) & 0x7FFFFFFE0;
    v13 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v12 = memptr;
    v14 = *(*(a2 + 16) + 16);
    cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,0u,false>>(&v12, a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v13;
    *a1 = v12;
    *(a1 + 8) = v10;
    v12 = v8;
    v13 = v9;
    *(a1 + 16) = v14;
    v14 = 0;
    free(v8);
  }

  else
  {
    if ((*(v5 + 16) & 0x3FFFFFFF) != 0)
    {
      v6 = *(a2 + 24);
      cva::VecLib<float>::gemm();
    }

    v11 = 4 * *(a1 + 16);
    if (v11)
    {

      bzero(v4, 4 * v11);
    }
  }
}

uint64_t vg::shared::VisualLoggerImpl::startLoggingToFile(vg::shared::VisualLoggerImpl *this, NSString *a2)
{
  return 0;
}

{
  return 0;
}

uint64_t *vg::shared::VisualLogger::sharedLogger(vg::shared::VisualLogger *this)
{
  {
    operator new();
  }

  return &vg::shared::VisualLogger::sharedLogger(void)::sharedLogger;
}

void vg::shared::VisualLogger::VisualLogger(vg::shared::VisualLogger *this)
{
  operator new();
}

{
  operator new();
}

uint64_t vg::shared::VisualLogger::startLoggingToFile(vg::shared::VisualLogger *this, NSString *a2)
{
  return 0;
}

{
  return 0;
}

void sub_270F82A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  cva::ItemHandler::~ItemHandler(&a12);
  free(a9);
  cva::DictionaryHandler::~DictionaryHandler(&a14);

  _Unwind_Resume(a1);
}

void cva::ItemHandler::createMatrix<float,2u,0u>(uint64_t a1)
{
  v2 = (4 * (2 * *(a1 + 16)) + 31) & 0x7FFFFFFE0;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v2, 0xE1AC2527uLL);
  v3 = memptr;
  v4 = (2 * *(a1 + 16));
  if (v4)
  {
    v5 = *a1;
    v6 = 4 * v4;
    do
    {
      v7 = *v5++;
      *v3++ = v7;
      v6 -= 4;
    }

    while (v6);
  }

  cva::ItemHandler::createMatrix<float>();
}

void sub_270F831BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  free(a11);
  cva::ItemHandler::~ItemHandler(&a9);
  cva::DictionaryHandler::~DictionaryHandler(&a15);

  _Unwind_Resume(a1);
}

uint64_t std::optional<cva::Matrix<unsigned int,3u,0u,false>>::operator=[abi:ne200100]<cva::MatrixUnaryExpr<cva::Matrix<int,0u,0u,false>,cva::detail::CastOp<unsigned int>>,void>(uint64_t a1, int ***a2)
{
  if (*(a1 + 24) != 1)
  {
    std::construct_at[abi:ne200100]<cva::Matrix<unsigned int,3u,0u,false>,cva::MatrixUnaryExpr<cva::Matrix<int,0u,0u,false>,cva::detail::CastOp<unsigned int>>,cva::Matrix<unsigned int,3u,0u,false>*>(a1, a2);
    *(a1 + 24) = 1;
    return a1;
  }

  v4 = *a2;
  v5 = *(*a2 + 4);
  if (v5 == 3)
  {
    v6 = *(v4 + 5);
    if (v6 == *(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v7 = *v4;
  v8 = *(v4 + 5);
  if (v7 != *a1)
  {
    *(a1 + 16) = v8;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, (v8 * v5));
    v6 = *(a1 + 16);
LABEL_6:
    if (v6)
    {
      v9 = *a1;
      v10 = **a2;
      v11 = 4 * (3 * v6);
      do
      {
        v12 = *v10++;
        *v9++ = v12;
        v11 -= 4;
      }

      while (v11);
    }

    return a1;
  }

  v13 = (4 * (v8 * v5) + 31) & 0x7FFFFFFE0;
  v14 = v13 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v13, 0xE1AC2527uLL);
  v15 = memptr;
  v16 = *(*a2 + 5);
  if (v16)
  {
    v17 = **a2;
    v18 = 4 * (3 * v16);
    v19 = memptr;
    do
    {
      v20 = *v17++;
      *v19++ = v20;
      v18 -= 4;
    }

    while (v18);
  }

  v21 = *a1;
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  free(v21);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<cva::Matrix<unsigned int,3u,0u,false>,cva::MatrixUnaryExpr<cva::Matrix<int,0u,0u,false>,cva::detail::CastOp<unsigned int>>,cva::Matrix<unsigned int,3u,0u,false>*>(uint64_t a1, int ***a2)
{
  v4 = (4 * (*(*a2 + 5) * *(*a2 + 4)) + 31) & 0x7FFFFFFE0;
  *a1 = 0;
  *(a1 + 8) = v4 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v4, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  v6 = *a2;
  v7 = *(*a2 + 5);
  *(a1 + 16) = v7;
  if (v7)
  {
    v8 = *v6;
    v9 = 4 * (3 * v7);
    do
    {
      v10 = *v8++;
      *v5++ = v10;
      v9 -= 4;
    }

    while (v9);
  }

  return a1;
}

id vg::shared::getAssetsForType(void *a1, void **a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetAssetsForType", &unk_270FBF062, &buf, 2u);
  }

  v5 = *a2;
  v6 = v3;
  v7 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v7))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DownloadAssetCatalog", &unk_270FBF062, &buf, 2u);
  }

  v8 = objc_opt_new();
  [v8 setDiscretionary:0];
  [v8 setRequiresPowerPluggedIn:0];
  [v8 setAllowsCellularAccess:1];
  [v8 setCanUseLocalCacheServer:1];
  [v8 setTimeoutIntervalForResource:10];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v9 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_INFO, "Downloading MobileAsset catalog for asset type: %@ ...", &buf, 0xCu);
  }

  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D289C0];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v55 = ___ZN2vg6shared6detailL20downloadAssetCatalogEP8NSStringPU15__autoreleasingP7NSError_block_invoke_291;
  v56 = &unk_279E28FF8;
  v12 = v6;
  v59 = &v44;
  v60 = &v38;
  v57 = v12;
  v58 = v10;
  v13 = v10;
  [v11 startCatalogDownload:v12 options:v8 completionWithError:&buf];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

  v14 = v45[3];
  if (v14)
  {
    if (v5)
    {
      v15 = v39[5];
      if (v15)
      {
        *v5 = v15;
      }
    }

    v16 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v39[5];
      v18 = v45[3];
      *v48 = 138412802;
      v49 = v12;
      v50 = 2112;
      v51 = v17;
      v52 = 2048;
      v53 = v18;
      _os_log_error_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, "Failed to download MobileAsset catalog for asset type %@ with error: %@ (result: %zu)", v48, 0x20u);
    }
  }

  else
  {
    v16 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v48 = 138412290;
      v49 = v12;
      _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_INFO, "Successfully downloaded MobileAsset catalog for asset type: %@", v48, 0xCu);
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  ___ZN2vg6shared6detailL20downloadAssetCatalogEP8NSStringPU15__autoreleasingP7NSError_block_invoke();
  if (v14)
  {
    v19 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_INFO, "Failed to download the latest asset catalog, using local asset catalog (if present)...", &buf, 2u);
    }
  }

  v20 = *a2;
  v21 = v12;
  v22 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v22))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "QueryAssets", &unk_270FBF062, &buf, 2u);
  }

  v23 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_INFO, "Initializing query for asset type: %@", &buf, 0xCu);
  }

  v24 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:v21];
  [v24 returnTypes:2];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v25 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_INFO, "Querying asset catalog...", &buf, 2u);
  }

  v26 = dispatch_semaphore_create(0);
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v55 = ___ZN2vg6shared6detailL11queryAssetsEP8NSStringPU15__autoreleasingP7NSError_block_invoke_296;
  v56 = &unk_279E28FF8;
  v27 = v21;
  v59 = &v44;
  v60 = &v38;
  v57 = v27;
  v58 = v26;
  v28 = v26;
  [v24 queryMetaDataWithError:&buf];
  dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);

  if (v45[3])
  {
    if (v20)
    {
      v29 = v39[5];
      if (v29)
      {
        *v20 = v29;
      }
    }

    v30 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = v39[5];
      v37 = v45[3];
      *v48 = 138412802;
      v49 = v27;
      v50 = 2112;
      v51 = v36;
      v52 = 2048;
      v53 = v37;
      _os_log_error_impl(&dword_270F06000, v30, OS_LOG_TYPE_ERROR, "Failed to query for asset type %@ with error: %@ (result: %zu)", v48, 0x20u);
    }

    v31 = 0;
  }

  else
  {
    v31 = [v24 results];
    v30 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = [v31 count];
      *v48 = 138412546;
      v49 = v27;
      v50 = 2048;
      v51 = v32;
      _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_INFO, "Query successful for asset type: %@. Number of assets found: %zu", v48, 0x16u);
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  ___ZN2vg6shared6detailL11queryAssetsEP8NSStringPU15__autoreleasingP7NSError_block_invoke();
  if (v31)
  {
    v33 = v31;
  }

  ___ZN2vg6shared16getAssetsForTypeEP8NSStringRNS0_15NSErrorCWrapperE_block_invoke();
  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

void sub_270F83BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, char a15)
{
  _Block_object_dispose(&a9, 8);

  _Block_object_dispose(&a15, 8);
  ___ZN2vg6shared6detailL11queryAssetsEP8NSStringPU15__autoreleasingP7NSError_block_invoke();

  ___ZN2vg6shared16getAssetsForTypeEP8NSStringRNS0_15NSErrorCWrapperE_block_invoke();
  _Unwind_Resume(a1);
}

id VGLogSharedMobileAssetUtils(void)
{
  if (VGLogSharedMobileAssetUtils(void)::onceToken != -1)
  {
    VGLogSharedMobileAssetUtils();
  }

  v1 = VGLogSharedMobileAssetUtils(void)::handle;

  return v1;
}

void ___ZN2vg6shared16getAssetsForTypeEP8NSStringRNS0_15NSErrorCWrapperE_block_invoke()
{
  v0 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetAssetsForType", &unk_270FBF062, v1, 2u);
  }
}

void vg::shared::downloadAsset(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DownloadAsset", &unk_270FBF062, buf, 2u);
  }

  if (v5)
  {
    v7 = objc_opt_new();
    [v7 setDiscretionary:0];
    [v7 setRequiresPowerPluggedIn:0];
    [v7 setAllowsCellularAccess:1];
    [v7 setCanUseLocalCacheServer:1];
    v8 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 assetType];
      v10 = [v5 assetId];
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_INFO, "Downloading MobileAsset with type and id: {%@, %@}", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = __Block_byref_object_copy__0;
    v58 = __Block_byref_object_dispose__0;
    v59 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 3;
    v11 = dispatch_semaphore_create(0);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = ___ZN2vg6shared13downloadAssetEP7MAAssetRNS0_15NSErrorCWrapperE_block_invoke_283;
    v41[3] = &unk_279E28FF8;
    v12 = v5;
    v42 = v12;
    v44 = &v46;
    v45 = buf;
    v13 = v11;
    v43 = v13;
    [v12 startDownload:v7 completionWithError:v41];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v47[3];
    if (v14)
    {
      if (v14 != 10)
      {
        v25 = VGLogSharedMobileAssetUtils();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v36 = [v12 assetType];
          v37 = [v12 assetId];
          v38 = v47[3];
          *v50 = 138412802;
          v51 = v36;
          v52 = 2112;
          v53 = v37;
          v54 = 2048;
          v55 = v38;
          _os_log_error_impl(&dword_270F06000, v25, OS_LOG_TYPE_ERROR, "Downloading of MobileAsset failed for asset {%@, %@} with result: %zu", v50, 0x20u);
        }

        v26 = *(*&buf[8] + 40);
        if (v26 && *a2)
        {
          **a2 = v26;
        }

        goto LABEL_27;
      }

      v15 = VGLogSharedMobileAssetUtils();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v12 assetType];
        v17 = [v12 assetId];
        *v50 = 138412546;
        v51 = v16;
        v52 = 2112;
        v53 = v17;
        _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_INFO, "MobileAsset {%@, %@} already installed", v50, 0x16u);
      }
    }

    if ([v12 refreshState])
    {
      v18 = [v12 getLocalFileUrl];
      v19 = [v18 path];
      v20 = v19;
      v21 = [v19 UTF8String];
      v22 = strlen(v21);
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = v22;
      if (v22 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v40) = v22;
      if (v22)
      {
        memmove(&__dst, v21, v22);
      }

      *(&__dst + v23) = 0;

      v30 = VGLogSharedMobileAssetUtils();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v12 assetType];
        v32 = [v12 assetId];
        v33 = v32;
        p_dst = &__dst;
        if (v40 < 0)
        {
          p_dst = __dst;
        }

        *v50 = 138412802;
        v51 = v31;
        v52 = 2112;
        v53 = v32;
        v54 = 2080;
        v55 = p_dst;
        _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_INFO, "Download of MobileAsset asset {%@, %@} was successful, at download path: %s", v50, 0x20u);
      }

      *a3 = __dst;
      *(a3 + 16) = v40;
      *(a3 + 24) = 1;
      goto LABEL_35;
    }

    v27 = VGLogSharedMobileAssetUtils();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v12 assetType];
      v29 = [v12 assetId];
      vg::hrtf::getAssetWithError(v28, v29, v50, v27);
    }

LABEL_27:
    *a3 = 0;
    *(a3 + 24) = 0;
LABEL_35:

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_36;
  }

  v24 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    vg::shared::downloadAsset(v24);
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_36:
  ___ZN2vg6shared13downloadAssetEP7MAAssetRNS0_15NSErrorCWrapperE_block_invoke();

  v35 = *MEMORY[0x277D85DE8];
}

void sub_270F843A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);

  ___ZN2vg6shared13downloadAssetEP7MAAssetRNS0_15NSErrorCWrapperE_block_invoke();
  _Unwind_Resume(a1);
}

void ___ZN2vg6shared13downloadAssetEP7MAAssetRNS0_15NSErrorCWrapperE_block_invoke()
{
  v0 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DownloadAsset", &unk_270FBF062, v1, 2u);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2vg6shared13downloadAssetEP7MAAssetRNS0_15NSErrorCWrapperE_block_invoke_283(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) assetType];
    v8 = [*(a1 + 32) assetId];
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Download completed for MobileAsset {%@, %@} with status: %zu", &v13, 0x20u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void ___ZL27VGLogSharedMobileAssetUtilsv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedMobileAssetUtils");
  v1 = VGLogSharedMobileAssetUtils(void)::handle;
  VGLogSharedMobileAssetUtils(void)::handle = v0;
}

void ___ZN2vg6shared6detailL20downloadAssetCatalogEP8NSStringPU15__autoreleasingP7NSError_block_invoke()
{
  v0 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DownloadAssetCatalog", &unk_270FBF062, v1, 2u);
  }
}

void ___ZN2vg6shared6detailL20downloadAssetCatalogEP8NSStringPU15__autoreleasingP7NSError_block_invoke_291(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v12 = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Download completed for MobileAsset catalog (%@) with status: %zu", &v12, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

void ___ZN2vg6shared6detailL11queryAssetsEP8NSStringPU15__autoreleasingP7NSError_block_invoke()
{
  v0 = VGLogSharedMobileAssetUtils();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "QueryAssets", &unk_270FBF062, v1, 2u);
  }
}

void ___ZN2vg6shared6detailL11queryAssetsEP8NSStringPU15__autoreleasingP7NSError_block_invoke_296(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VGLogSharedMobileAssetUtils();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v12 = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Query completed on MobileAsset catalog (%@) with status: %zu", &v12, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

id __VGLogSharedInstance()
{
  if (__VGLogSharedInstance_onceToken != -1)
  {
    __VGLogSharedInstance_cold_1();
  }

  v1 = sharedInstance;

  return v1;
}

uint64_t logVerboseSignposts()
{
  if (logVerboseSignposts_onceToken != -1)
  {
    logVerboseSignposts_cold_1();
  }

  return logVerboseSignposts_flag;
}

uint64_t __logVerboseSignposts_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"Apple Global Domain"];
  v1 = logVerboseSignposts_sDefaults;
  logVerboseSignposts_sDefaults = v0;

  result = [logVerboseSignposts_sDefaults BOOLForKey:@"vg.logVerboseSignposts"];
  logVerboseSignposts_flag = result;
  return result;
}

os_log_t vg_os_log_create_for_class(objc_class *a1)
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 UTF8String];

  v5 = NSStringFromClass(a1);
  v6 = [v5 UTF8String];

  v7 = os_log_create(v4, v6);

  return v7;
}

os_log_t vg_os_log_create_for_category(const char *a1)
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundle];
  v3 = [v2 bundleIdentifier];
  v4 = os_log_create([v3 UTF8String], a1);

  return v4;
}

id vg_os_log_default()
{
  if (vg_os_log_default_onceToken != -1)
  {
    vg_os_log_default_cold_1();
  }

  v1 = vg_os_log_default_sharedLog;

  return v1;
}

void __vg_os_log_default_block_invoke()
{
  v0 = vg_os_log_create_for_category("Default");
  v1 = vg_os_log_default_sharedLog;
  vg_os_log_default_sharedLog = v0;
}

uint64_t VGGetChannelsFromPixelFormat(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 == 32)
  {
    v1 = &FormatList;
LABEL_6:
    result = *v1;
  }

  else
  {
    v3 = &FormatList;
    v4 = 13;
    while (--v4)
    {
      v1 = v3 + 4;
      v5 = *(v3 + 10);
      v3 += 4;
      if (v5 == a1)
      {
        goto LABEL_6;
      }
    }

    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = a1;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " CVPixelFormatType %d not supported ", v9, 8u);
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VGGetBytesPerElementFromPixelFormat(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 == 32)
  {
    v1 = &FormatList;
LABEL_6:
    result = v1[2];
  }

  else
  {
    v3 = &FormatList;
    v4 = 13;
    while (--v4)
    {
      v1 = v3 + 4;
      v5 = *(v3 + 10);
      v3 += 4;
      if (v5 == a1)
      {
        goto LABEL_6;
      }
    }

    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = a1;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " CVPixelFormatType %d not supported ", v9, 8u);
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VGGetResizeFunctionFromPixelFormat(int a1)
{
  v2 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v3 = 32;
  v4 = aAbgr;
  v5 = 13;
  do
  {
    if (v3 == a1)
    {
      v2 = *(v4 - 2);
    }

    v6 = *v4;
    v4 += 32;
    v3 = v6;
    --v5;
  }

  while (v5);
  if (!v2)
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a1;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " Resize function for CVPixelFormatType %d not supported ", v10, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

id VGReshapeLinearArray(_DWORD *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<int>::vector[abi:ne200100](__p, (a3[1] - *a3) >> 2);
  v6 = *a3;
  if ((((a3[1] - *a3) >> 2) - 1) >= 0)
  {
    v7 = __p[0];
    v8 = 4 * (((a3[1] - *a3) >> 2) - 1);
    v9 = 1;
    do
    {
      *&v7[v8] = v9;
      v9 *= *(v6 + v8);
      v8 -= 4;
    }

    while (v8 != -4);
  }

  v10 = VGReshapeLinearSubArray(a1, a2, a3, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10;
}

void sub_270F85104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id VGReshapeLinearSubArray(_DWORD *a1, unint64_t a2, void *a3, void *a4, int a5)
{
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(*a3 + 4 * a5)];
  if (((a3[1] - *a3) >> 2) - 1 == a5)
  {
    for (; a2; --a2)
    {
      LODWORD(v11) = *a1;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      [v10 addObject:v12];

      ++a1;
    }
  }

  else if (a2)
  {
    v13 = 0;
    LODWORD(v14) = *(*a4 + 4 * a5);
    do
    {
      v15 = VGReshapeLinearSubArray(&a1[v13], v14, a3, a4, (a5 + 1));
      [v10 addObject:v15];

      v14 = *(*a4 + 4 * a5);
      v13 += v14;
    }

    while (v13 < a2);
  }

  return v10;
}

id VGReshapeLinearArray(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = VGReshapeLinearArray([v3 getData], objc_msgSend(v3, "getSize"), a2);

  return v4;
}

void VGSetAlphaIOSurface(IOSurface *a1, Pixel_8 a2)
{
  vg::IOSurfaceData::IOSurfaceData(v7, a1, 1);
  v3 = [v7[0] width];
  v4 = [v7[0] height];
  v5 = [v7[0] baseAddress];
  [v7[0] bytesPerRow];
  [v7[0] bytesPerElement];
  dest.data = v5;
  dest.height = v4;
  dest.width = v3;
  dest.rowBytes = [v7[0] bytesPerRow];
  vImageOverwriteChannelsWithScalar_ARGB8888(a2, &dest, &dest, 1u, 0);
  vg::IOSurfaceData::~IOSurfaceData(v7);
}

void sub_270F85398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  vg::IOSurfaceData::~IOSurfaceData(va);
  _Unwind_Resume(a1);
}

uint64_t VGDumpIOSurface(IOSurface *a1, NSString *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v5);
  v8 = CVPixelBufferFromIOSurface;
  if (CVPixelBufferFromIOSurface)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___Z15VGDumpIOSurfaceP9IOSurfaceP8NSStringf_block_invoke;
    v12[3] = &__block_descriptor_40_e5_v8__0l;
    v12[4] = CVPixelBufferFromIOSurface;
    v9 = MEMORY[0x2743B9AA0](v12);
    v10 = VGDumpCVPixelBuffer(v8, v6, a3);
    (*(v9 + 16))(v9);
  }

  else
  {
    v9 = __VGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Failed to create CVPixelBuffer ", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

CVPixelBufferRef createCVPixelBufferFromIOSurface(IOSurface *a1)
{
  v1 = a1;
  v2 = v1;
  if ([(IOSurface *)v1 pixelFormat]== 1380401729)
  {
    v2 = create32ARGBSurfaceFrom32RGBASurface(v1);
  }

  v3 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateCVPixelBufferFromIOSurface", &unk_270FBF062, buf, 2u);
  }

  pixelBufferOut = 0;
  v4 = CVPixelBufferCreateWithIOSurface(0, v2, 0, &pixelBufferOut);
  v5 = pixelBufferOut;
  ___Z32createCVPixelBufferFromIOSurfaceP9IOSurface_block_invoke();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

void sub_270F85608(_Unwind_Exception *a1)
{
  ___Z32createCVPixelBufferFromIOSurfaceP9IOSurface_block_invoke();

  _Unwind_Resume(a1);
}

uint64_t VGDumpCVPixelBuffer(__CVBuffer *a1, NSString *a2, float a3)
{
  v5 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType > 1717855599)
    {
      if (PixelFormatType != 1717855600)
      {
        v8 = 1751410032;
LABEL_11:
        if (PixelFormatType == v8)
        {
          v10 = CVPixelBufferRetain(a1);
LABEL_14:
          v11 = v10;
          v12 = MEMORY[0x277CBF980];
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else if (PixelFormatType != 1278226534)
    {
      v8 = 1278226742;
      goto LABEL_11;
    }

    v10 = create16UPixelBufferFrom32FPixelBuffer(a1, 0.0, 65535.0 / a3);
    goto LABEL_14;
  }

  switch(PixelFormatType)
  {
    case 32:
      v11 = CVPixelBufferRetain(a1);
      v12 = MEMORY[0x277CBF968];
      goto LABEL_19;
    case 875704422:
      BGRAFromYCbCr = vg::createBGRAFromYCbCr(a1, v7);
      break;
    case 1111970369:
      BGRAFromYCbCr = CVPixelBufferRetain(a1);
      break;
    default:
LABEL_16:
      v11 = CVPixelBufferRetain(a1);
      v12 = MEMORY[0x277CBF9C8];
      goto LABEL_19;
  }

  v11 = BGRAFromYCbCr;
  v12 = MEMORY[0x277CBF970];
LABEL_19:
  v13 = MEMORY[0x277CBF9C8];
  v14 = *v12;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___Z19VGDumpCVPixelBufferP10__CVBufferP8NSStringf_block_invoke;
  v26[3] = &__block_descriptor_40_e5_v8__0l;
  v26[4] = v11;
  v15 = MEMORY[0x2743B9AA0](v26);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___Z19VGDumpCVPixelBufferP10__CVBufferP8NSStringf_block_invoke_2;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = 0;
  v16 = MEMORY[0x2743B9AA0](v25);
  if (v14 == *MEMORY[0x277CBF970] || v14 == *v13 || v14 == *MEMORY[0x277CBF968])
  {
    v19 = MEMORY[0x277CBF4B8];
LABEL_30:
    v20 = CGColorSpaceCreateWithName(*v19);
    v21 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:v11];
    v22 = writeCIImageToFile(v5, v21, v14, v20);
    goto LABEL_31;
  }

  if (v14 == *MEMORY[0x277CBF9C0])
  {
    v19 = MEMORY[0x277CBF4A8];
    goto LABEL_30;
  }

  v19 = MEMORY[0x277CBF448];
  if (v14 == *MEMORY[0x277CBF988] || v14 == *MEMORY[0x277CBF980])
  {
    goto LABEL_30;
  }

  if (v14 == *MEMORY[0x277CBF990])
  {
    v19 = MEMORY[0x277CBF498];
    goto LABEL_30;
  }

  v21 = __VGLogSharedInstance();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_impl(&dword_270F06000, &v21->super, OS_LOG_TYPE_ERROR, " Unsupported format type ", v24, 2u);
  }

  v22 = 0;
LABEL_31:

  v16[2](v16);
  v15[2](v15);

  return v22;
}

void sub_270F85990(_Unwind_Exception *a1)
{
  v3[2](v3);

  v2[2](v2);
  _Unwind_Resume(a1);
}

BOOL VGDumpJSON(objc_object *a1, NSString *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:9 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = VGDumpData(v5, v4, 1);
    }

    else
    {
      v8 = __VGLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " Failed to serialize %@, %@ ", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = __VGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Not valid json object %@ ", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL VGDumpData(NSData *a1, NSString *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(NSData *)a1 writeToFile:v5 atomically:0];
  if (!v6)
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      v8 = " Failed to dump %@ ";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (a3)
  {
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v5;
      v8 = " Wrote %@ ";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_270F06000, v9, v10, v8, &v13, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

id VGReadJSON(NSString *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:1 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = __VGLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v1;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " Unable to load contents of json file at path: %@ with error: %@ ", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v4 = __VGLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v1;
      _os_log_impl(&dword_270F06000, v4, OS_LOG_TYPE_ERROR, " Path does not exist: %@ ", buf, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void resizeCVPixelBufferTovImageBuffer(CVPixelBufferRef pixelBuffer@<X0>, char *a2@<X3>, unint64_t a3@<X1>, unint64_t a4@<X2>, int a5@<W4>, char **a6@<X8>)
{
  v51[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v11 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:pixelBuffer];
    memset(&v49, 0, sizeof(v49));
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    *&v48.a = *MEMORY[0x277CBF2C0];
    *&v48.c = v12;
    *&v48.tx = *(MEMORY[0x277CBF2C0] + 32);
    v45 = v11;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    CGAffineTransformScale(&v49, &v48, (a4 / Width), (a3 / Height));
    v15 = [v11 imageBySamplingNearest];
    v48 = v49;
    v42 = v15;
    v44 = [v15 imageByApplyingTransform:&v48];
    v16 = objc_alloc_init(MEMORY[0x277CBF740]);
    pixelBufferOut = 0;
    v50 = *MEMORY[0x277CC4DE8];
    v51[0] = MEMORY[0x277CBEC10];
    v43 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    [v44 extent];
    v19 = v18;
    [v44 extent];
    v21 = v20;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    CVPixelBufferCreate(0, v19, v21, PixelFormatType, v17, &pixelBufferOut);
    *&v48.a = MEMORY[0x277D85DD0];
    *&v48.b = 3221225472;
    *&v48.c = ___ZL64_resizeCVPixelBufferTovImageBufferUsingNearestNeighborResamplingP10__CVBuffermmPv_block_invoke;
    *&v48.d = &__block_descriptor_40_e5_v8__0l;
    *&v48.tx = pixelBufferOut;
    v23 = MEMORY[0x2743B9AA0](&v48);
    v41 = v17;
    [v16 render:v44 toCVPixelBuffer:pixelBufferOut];
    CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
    v24 = a4;
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v27 = 4 * a4;
    v28 = a3;
    if (a3)
    {
      v29 = BytesPerRow;
      v30 = a2;
      v31 = v28;
      do
      {
        memcpy(v30, BaseAddress, 4 * v24);
        v30 += v27;
        BaseAddress += v29;
        --v31;
      }

      while (v31);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 1uLL);
    *a6 = a2;
    a6[1] = v28;
    a6[2] = v24;
    a6[3] = v27;
    v23[2](v23);
  }

  else
  {
    v32 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v46 = a3;
    v33 = CVPixelBufferGetHeight(pixelBuffer);
    v34 = CVPixelBufferGetWidth(pixelBuffer);
    v35 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v36 = VGGetBytesPerElementFromPixelFormat(v32);
    v37 = VGGetResizeFunctionFromPixelFormat(v32);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = v34;
    v52.size.height = v33;
    MinY = CGRectGetMinY(v52);
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v34;
    v53.size.height = v33;
    v39 = (CGRectGetMinX(v53) * v36 + MinY * v35);
    *&v49.a = CVPixelBufferGetBaseAddress(pixelBuffer) + v39;
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v54.size.width = v34;
    v54.size.height = v33;
    *&v49.b = CGRectGetHeight(v54);
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = v34;
    v55.size.height = v33;
    *&v49.c = CGRectGetWidth(v55);
    *&v49.d = v35;
    *a6 = a2;
    a6[1] = v46;
    a6[2] = a4;
    a6[3] = (v36 * a4);
    if (v37)
    {
      v37(&v49, a6, 0, 0);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

char *resizeCVPixelBuffer(__CVBuffer *a1, unint64_t a2, unint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = VGGetBytesPerElementFromPixelFormat(PixelFormatType) * a3;
  v8 = malloc_type_malloc(v7 * a2, 0xB0932540uLL);
  resizeCVPixelBufferTovImageBuffer(a1, v8, a2, a3, 0, v15);
  v15[0] = 0;
  v16 = *MEMORY[0x277CC4DE8];
  v17[0] = MEMORY[0x277CBEC10];
  pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  if (CVPixelBufferCreateWithBytes(0, a3, a2, PixelFormatType, v8, v7, pixelBufferReleaseCallBack, 0, pixelBufferAttributes, v15))
  {
    v10 = __VGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " Error: could not create new pixel buffer ", buf, 2u);
    }

    free(v8);
    v11 = 0;
  }

  else
  {
    v11 = v15[0];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void pixelBufferReleaseCallBack(void *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t resizeSurface(IOSurface *a1, IOSurface *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = VGGetResizeFunctionFromPixelFormat([(IOSurface *)v4 pixelFormat]);
  if (v5)
  {
    memset(v11, 0, sizeof(v11));
    if (v3)
    {
      [(IOSurface *)v3 vg_vImageBuffer];
    }

    memset(v10, 0, sizeof(v10));
    if (v4)
    {
      [(IOSurface *)v4 vg_vImageBuffer];
    }

    v6 = (v5)(v11, v10, 0, 16);
    v5 = v6 == 0;
    if (v6)
    {
      v7 = __VGLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " resizeSurface function error ", v9, 2u);
      }
    }
  }

  return v5;
}

IOSurface *resizeSurface(IOSurface *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ([(IOSurface *)v5 width]== a2 && [(IOSurface *)v5 height]== a3)
  {
    v6 = [(IOSurface *)v5 vg_copy];
  }

  else
  {
    v7 = [(IOSurface *)v5 vg_basicProperties];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2928]];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD28D0]];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[IOSurface bytesPerElement](v5, "bytesPerElement") * a2}];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD28B8]];

    v12 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v8];
    if (resizeSurface(v5, v12))
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

CVPixelBufferRef createResizeToSquareWithPad(__CVBuffer *a1, int a2, int32x2_t *a3)
{
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v8 = Height - Width;
  if (Height == Width)
  {
    result = CVPixelBufferRetain(a1);
    *a3 = 0;
    a3[1] = vdup_n_s32(Height);
  }

  else
  {
    v10 = Width;
    if (Height > Width)
    {
      v11 = v8 >> 1;
      v12 = (v8 & 1) + (v8 >> 1);
      result = createCVPixelBufferWithPadInWidth<unsigned char>(a1, v8 >> 1, v12, a2);
      v16 = -v11;
      v17.i32[0] = v12 + v10;
      v17.i32[1] = Height;
    }

    else
    {
      v13 = (Width - Height) >> 1;
      v14 = (Width - Height) & 1;
      v15 = v14 + v13;
      result = createCVPixelBufferWithPadInHeight<unsigned char>(a1, v13, v14 + v13, a2);
      v16.i32[0] = 0;
      v16.i32[1] = -v13;
      v17.i32[0] = v10;
      v17.i32[1] = v15 + Height;
    }

    *a3 = v16;
    a3[1] = v17;
  }

  return result;
}

CVPixelBufferRef createCVPixelBufferWithPadInWidth<unsigned char>(__CVBuffer *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v30[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Height = CVPixelBufferGetHeight(v7);
  Width = CVPixelBufferGetWidth(v7);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v7);
  v27 = VGGetBytesPerElementFromPixelFormat(PixelFormatType);
  pixelBufferOut = 0;
  v29 = *MEMORY[0x277CC4DE8];
  v30[0] = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v26 = Width;
  CVPixelBufferCreate(0, a3 + a2 + Width, Height, PixelFormatType, v12, &pixelBufferOut);
  v13 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  CVPixelBufferLockBaseAddress(v7, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v15 = CVPixelBufferGetBaseAddress(v7);
  if (Height)
  {
    v16 = v15;
    v23 = a2;
    v24 = v7;
    v25 = v12;
    v17 = v27 * a2;
    v18 = &BaseAddress[v17];
    v19 = Height;
    do
    {
      memcpy(v18, v16, v27 * v26);
      v18 += v13;
      v16 += BytesPerRow;
      --v19;
    }

    while (v19);
    v12 = v25;
    v7 = v24;
    do
    {
      memset(BaseAddress, a4, v17);
      memset(&BaseAddress[v27 * (v26 + v23)], a4, v27 * a3);
      BaseAddress += v13;
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(v7, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v20 = pixelBufferOut;

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

CVPixelBufferRef createCVPixelBufferWithPadInHeight<unsigned char>(__CVBuffer *a1, size_t a2, uint64_t a3, int a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v21 = VGGetBytesPerElementFromPixelFormat(PixelFormatType);
  pixelBufferOut = 0;
  v25 = *MEMORY[0x277CC4DE8];
  v26[0] = MEMORY[0x277CBEC10];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v23 = a2;
  v12 = Height + a2;
  CVPixelBufferCreate(0, Width, v12 + a3, PixelFormatType, v22, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v14 = CVPixelBufferGetBaseAddress(a1);
  if (v12 > v23)
  {
    v15 = v14;
    v16 = 0;
    v17 = v21 * Width;
    do
    {
      memcpy(&BaseAddress[BytesPerRow * v23 + v16], &v15[v16], v17);
      v16 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  if (a4)
  {
    if (v23)
    {
      memset(BaseAddress, a4, BytesPerRow * v23);
    }

    if (v12 < v12 + a3)
    {
      memset(&BaseAddress[BytesPerRow * v12], a4, BytesPerRow * a3);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v18 = pixelBufferOut;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

IOSurface *createSurfaceWithBBox(IOSurface *a1, float a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a1;
  v9 = [(IOSurface *)v8 pixelFormat];
  v10 = [(IOSurface *)v8 width];
  v11 = [(IOSurface *)v8 height];
  v12 = -16777216;
  v13 = 16711680;
  v14 = 0xFFFF;
  if (v9 > 1111970368)
  {
    if (v9 != 1111970369)
    {
      v15 = 1380401729;
LABEL_6:
      if (v9 != v15)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v9 != 32)
  {
    v15 = 1094862674;
    goto LABEL_6;
  }

  v12 = 0;
  v13 = (a2 * 255.0) << 16;
  v14 = (((1.0 - a2) * 255.0) << 8) | 0xFF;
LABEL_8:
  v16 = [(IOSurface *)v8 vg_basicProperties];
  v17 = [v16 mutableCopy];

  v18 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v17];
  vg::IOSurfaceData::IOSurfaceData(v44, v8, 1);
  vg::IOSurfaceData::IOSurfaceData(v40, v18, 0);
  v19 = (v10 - 1);
  v20 = (x * v19);
  if (v20 <= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = (x * v19);
  }

  v22 = v20 + 2;
  if (v10 - 1 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v10 - 1;
  }

  v24 = (v11 - 1);
  v25 = (y * v24);
  if (v25 <= 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = (y * v24);
  }

  v27 = v25 + 2;
  if (v11 - 1 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v11 - 1;
  }

  if (v10 - 1 >= ((x + width) * v19 + 2.0))
  {
    v29 = ((x + width) * v19 + 2.0);
  }

  else
  {
    v29 = v10 - 1;
  }

  if (v11 - 1 >= ((y + height) * v24 + 2.0))
  {
    v30 = ((y + height) * v24 + 2.0);
  }

  else
  {
    v30 = v11 - 1;
  }

  if (v11)
  {
    v31 = 0;
    v32 = (v21 - 2);
    v33 = (v26 - 2);
    do
    {
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v38 = i >= v23 && v31 >= v28 && i <= (((x + width) * v19 + -2.0) & ~(((x + width) * v19 + -2.0) >> 31)) && v31 <= (((y + height) * v24 + -2.0) & ~(((y + height) * v24 + -2.0) >> 31));
          if (i < v32 || i > v29 || v31 < v33 || v31 > v30 || v38)
          {
            *(v41 + v42 * v31 + v43 * i) = *(v44[4] + v44[5] * v31 + v44[6] * i);
          }

          else
          {
            *(v41 + v42 * v31 + v43 * i) = v14 | v13 | v12;
          }
        }
      }

      ++v31;
    }

    while (v31 != v11);
  }

  vg::IOSurfaceData::~IOSurfaceData(v40);
  vg::IOSurfaceData::~IOSurfaceData(v44);

  return v18;
}

void sub_270F8708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

id createSurfaceWithOffsetAndPad(void *a1, unsigned int a2, double a3, __n128 a4)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 pixelFormat];
  v7 = objc_alloc(MEMORY[0x277CD2930]);
  v37[0] = *MEMORY[0x277CD2928];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(a3)];
  v38[0] = v8;
  v37[1] = *MEMORY[0x277CD28D0];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(a3)];
  v38[1] = v9;
  v37[2] = *MEMORY[0x277CD28B0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "bytesPerElement")}];
  v38[2] = v10;
  v37[3] = *MEMORY[0x277CD28D8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v38[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v13 = [v7 initWithProperties:v12];

  [v13 lockWithOptions:0 seed:0];
  [v5 lockWithOptions:0 seed:0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = ___Z29createSurfaceWithOffsetAndPadP9IOSurfacehDv2_iS1__block_invoke;
  v35[3] = &unk_279E28D98;
  v14 = v13;
  v36 = v14;
  v15 = MEMORY[0x2743B9AA0](v35);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___Z29createSurfaceWithOffsetAndPadP9IOSurfacehDv2_iS1__block_invoke_2;
  v33[3] = &unk_279E28D98;
  v16 = v5;
  v34 = v16;
  v17 = MEMORY[0x2743B9AA0](v33);
  memset(&src, 0, sizeof(src));
  if (v16)
  {
    [v16 vg_vImageBuffer];
  }

  memset(&dest, 0, sizeof(dest));
  if (v14)
  {
    [v14 vg_vImageBuffer];
  }

  v18 = [v14 height];
  v19 = [v16 height];
  v20.i32[0] = v26;
  *&transform.a = xmmword_270FA9540;
  v20.i32[1] = v18 - v19 - v27;
  *&transform.tx = vcvt_f32_s32(v20);
  if (v6 <= 1278226533)
  {
    if (v6 == 32 || v6 == 1094862674)
    {
LABEL_13:
      *backColor = 16843009 * a2;
      vImageAffineWarp_ARGB8888(&src, &dest, 0, &transform, backColor, 4u);
      goto LABEL_15;
    }

    v21 = 1111970369;
LABEL_12:
    if (v6 != v21)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6 != 1278226534 && v6 != 1717855600)
  {
    v21 = 1380401729;
    goto LABEL_12;
  }

  vImageAffineWarp_PlanarF(&src, &dest, 0, &transform, a2 / 255.0, 4u);
LABEL_15:
  v22 = v14;
  v17[2](v17);

  v15[2](v15);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void sub_270F874D4(_Unwind_Exception *a1)
{
  v4[2](v4);

  v3[2](v3);
  _Unwind_Resume(a1);
}

IOSurface *create32FloatSurfaceResizedToSquareWithPad(void *a1, int32x2_t *a2, float a3)
{
  v62[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [(IOSurface *)v5 height];
  v7 = [(IOSurface *)v5 width];
  if (v6 == v7)
  {
    v8 = v5;
    *a2 = 0;
    a2[1] = vdup_n_s32(v6);
  }

  else
  {
    v9 = v6 - v7;
    if (v6 <= v7)
    {
      v29 = objc_alloc(MEMORY[0x277CD2930]);
      v59[0] = *MEMORY[0x277CD2928];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
      v60[0] = v30;
      v59[1] = *MEMORY[0x277CD28D0];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
      v32 = *MEMORY[0x277CD28B0];
      v60[1] = v31;
      v60[2] = &unk_2880F61F0;
      v33 = *MEMORY[0x277CD28D8];
      v59[2] = v32;
      v59[3] = v33;
      v60[3] = &unk_2880F6208;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
      v8 = [v29 initWithProperties:v34];

      vg::IOSurfaceData::IOSurfaceData(v55, v5, 1);
      vg::IOSurfaceData::IOSurfaceData(v51, v8, 0);
      v35 = (v7 - v6) >> 1;
      v36 = v35 + v6;
      if (v7)
      {
        v37 = 0;
        v38 = v52;
        v39 = v53;
        v40 = -v35;
        v41 = v54;
        do
        {
          v43 = v37 >= v35 && v37 < v36;
          v44 = v58;
          v45 = (v56 + v57 * v40);
          v46 = v38;
          v47 = v7;
          do
          {
            v48 = a3;
            if (v43)
            {
              v48 = *v45;
            }

            *v46 = v48;
            v45 = (v45 + v44);
            v46 = (v46 + v41);
            --v47;
          }

          while (v47);
          ++v37;
          ++v40;
          v38 = (v38 + v39);
        }

        while (v37 != v7);
      }

      v27.i32[0] = 0;
      v27.i32[1] = -v35;
      v28.i32[0] = v7;
      v28.i32[1] = v36 + ((v7 - v6) & 1);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CD2930]);
      v61[0] = *MEMORY[0x277CD2928];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
      v62[0] = v11;
      v61[1] = *MEMORY[0x277CD28D0];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
      v13 = *MEMORY[0x277CD28B0];
      v62[1] = v12;
      v62[2] = &unk_2880F61F0;
      v14 = *MEMORY[0x277CD28D8];
      v61[2] = v13;
      v61[3] = v14;
      v62[3] = &unk_2880F6208;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
      v8 = [v10 initWithProperties:v15];

      vg::IOSurfaceData::IOSurfaceData(v55, v5, 1);
      vg::IOSurfaceData::IOSurfaceData(v51, v8, 0);
      v16 = 0;
      v17 = v9 >> 1;
      v18 = (v9 >> 1) + v7;
      v19 = v52;
      v20 = v53;
      v21 = v54;
      do
      {
        v22 = 0;
        v23 = v58;
        v24 = (v56 + v57 * v16 - v17 * v58);
        v25 = v19;
        do
        {
          v26 = a3;
          if (v22 >= v17)
          {
            v26 = a3;
            if (v22 < v18)
            {
              v26 = *v24;
            }
          }

          *v25 = v26;
          ++v22;
          v24 = (v24 + v23);
          v25 = (v25 + v21);
        }

        while (v6 != v22);
        ++v16;
        v19 = (v19 + v20);
      }

      while (v16 != v6);
      v27 = -(v9 >> 1);
      v28.i32[0] = v18 + (v9 & 1);
      v28.i32[1] = v6;
    }

    *a2 = v27;
    a2[1] = v28;
    vg::IOSurfaceData::~IOSurfaceData(v51);
    vg::IOSurfaceData::~IOSurfaceData(v55);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_270F879B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

CVPixelBufferRef createCVPixelBufferWithPadToMatchAspectRatio<unsigned char>(__CVBuffer *a1, int a2, float a3)
{
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v8 = Height;
  v9 = Width / Height;
  if (vabds_f32(v9, a3) >= 0.01)
  {
    if (v9 >= a3)
    {
      v12 = vcvts_n_f32_u64((v8 / a3) - Height, 1uLL);

      return createCVPixelBufferWithPadInHeight<unsigned char>(a1, v12, v12, a2);
    }

    else
    {
      v11 = vcvts_n_f32_u64((v8 * a3) - Width, 1uLL);

      return createCVPixelBufferWithPadInWidth<unsigned char>(a1, v11, v11, a2);
    }
  }

  else
  {
    CVPixelBufferRetain(a1);
    return a1;
  }
}

CVPixelBufferRef createCVPixelBufferWithPadToMatchAspectRatio<float>(__CVBuffer *a1, float a2, float a3)
{
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v8 = Height;
  v9 = Width / Height;
  if (vabds_f32(v9, a2) >= 0.01)
  {
    if (v9 >= a2)
    {
      v12 = vcvts_n_f32_u64((v8 / a2) - Height, 1uLL);

      return createCVPixelBufferWithPadInHeight<float>(a1, v12, v12, a3);
    }

    else
    {
      v11 = vcvts_n_f32_u64((v8 * a2) - Width, 1uLL);

      return createCVPixelBufferWithPadInWidth<float>(a1, v11, v11, a3);
    }
  }

  else
  {
    CVPixelBufferRetain(a1);
    return a1;
  }
}

CVPixelBufferRef createCVPixelBufferWithPadInWidth<float>(__CVBuffer *a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = a1;
  v42[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Height = CVPixelBufferGetHeight(v7);
  Width = CVPixelBufferGetWidth(v7);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v7);
  v39 = VGGetBytesPerElementFromPixelFormat(PixelFormatType);
  pixelBufferOut = 0;
  v41 = *MEMORY[0x277CC4DE8];
  v42[0] = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  CVPixelBufferCreate(0, a3 + a2 + Width, Height, PixelFormatType, v12, &pixelBufferOut);
  v13 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  CVPixelBufferLockBaseAddress(v7, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v15 = CVPixelBufferGetBaseAddress(v7);
  if (Height)
  {
    v16 = v15;
    v37 = v7;
    v38 = v12;
    v36 = Width;
    v17 = v39 * Width;
    v18 = Height;
    v19 = &BaseAddress[v39 * a2];
    do
    {
      memcpy(v19, v16, v17);
      v19 += v13;
      v16 += BytesPerRow;
      --v18;
    }

    while (v18);
    v20 = 0;
    v21 = vdupq_n_s64(a2 - 1);
    v22 = vdupq_n_s64(a3 - 1);
    v23 = (BaseAddress + 8);
    v7 = v37;
    v12 = v38;
    v24 = &BaseAddress[v39 * (v36 + a2) + 8];
    do
    {
      if (a2 >= 1)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          v27 = vdupq_n_s64(v25);
          v28 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v27, xmmword_270FA6720)));
          if (vuzp1_s16(v28, *v21.i8).u8[0])
          {
            *(v26 - 2) = a4;
          }

          if (vuzp1_s16(v28, *&v21).i8[2])
          {
            *(v26 - 1) = a4;
          }

          if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v27, xmmword_270FA6710)))).i32[1])
          {
            *v26 = a4;
            v26[1] = a4;
          }

          v25 += 4;
          v26 += 4;
        }

        while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v25);
      }

      if (a3 >= 1)
      {
        v29 = 0;
        v30 = v24;
        do
        {
          v31 = vdupq_n_s64(v29);
          v32 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v31, xmmword_270FA6720)));
          if (vuzp1_s16(v32, *v21.i8).u8[0])
          {
            *(v30 - 2) = a4;
          }

          if (vuzp1_s16(v32, *&v21).i8[2])
          {
            *(v30 - 1) = a4;
          }

          if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v31, xmmword_270FA6710)))).i32[1])
          {
            *v30 = a4;
            v30[1] = a4;
          }

          v29 += 4;
          v30 += 4;
        }

        while (((a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v29);
      }

      ++v20;
      v23 = (v23 + v13);
      v24 += v13;
    }

    while (v20 != Height);
  }

  CVPixelBufferUnlockBaseAddress(v7, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v33 = pixelBufferOut;

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

CVPixelBufferRef createCVPixelBufferWithPadInHeight<float>(__CVBuffer *a1, size_t a2, uint64_t a3, float a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v12 = VGGetBytesPerElementFromPixelFormat(PixelFormatType);
  pixelBufferOut = 0;
  v39 = *MEMORY[0x277CC4DE8];
  v40[0] = MEMORY[0x277CBEC10];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v13 = Height + a2;
  v36 = v14 = Height + a2 + a3;
  CVPixelBufferCreate(0, Width, v14, PixelFormatType, v36, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v35 = a1;
  v15 = CVPixelBufferGetBaseAddress(a1);
  if (Height + a2 > a2)
  {
    v16 = v15;
    v17 = 0;
    v18 = v12 * Width;
    do
    {
      memcpy(&BaseAddress[BytesPerRow * a2 + v17], &v16[v17], v18);
      v17 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  if (a2)
  {
    v19 = 0;
    v20 = vdupq_n_s64(Width - 1);
    v21 = (BaseAddress + 8);
    do
    {
      if (Width >= 1)
      {
        v22 = 0;
        v23 = v21;
        do
        {
          v24 = vdupq_n_s64(v22);
          v25 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v24, xmmword_270FA6720)));
          if (vuzp1_s16(v25, *v20.i8).u8[0])
          {
            *(v23 - 2) = a4;
          }

          if (vuzp1_s16(v25, *&v20).i8[2])
          {
            *(v23 - 1) = a4;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v24, xmmword_270FA6710)))).i32[1])
          {
            *v23 = a4;
            v23[1] = a4;
          }

          v22 += 4;
          v23 += 4;
        }

        while (((Width + 3) & 0xFFFFFFFFFFFFFFFCLL) != v22);
      }

      ++v19;
      v21 = (v21 + BytesPerRow);
    }

    while (v19 != a2);
  }

  if (v13 < v14)
  {
    v26 = vdupq_n_s64(Width - 1);
    v27 = &BaseAddress[BytesPerRow * v13 + 8];
    do
    {
      if (Width >= 1)
      {
        v28 = 0;
        v29 = v27;
        do
        {
          v30 = vdupq_n_s64(v28);
          v31 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v30, xmmword_270FA6720)));
          if (vuzp1_s16(v31, *v26.i8).u8[0])
          {
            *(v29 - 2) = a4;
          }

          if (vuzp1_s16(v31, *&v26).i8[2])
          {
            *(v29 - 1) = a4;
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v30, xmmword_270FA6710)))).i32[1])
          {
            *v29 = a4;
            v29[1] = a4;
          }

          v28 += 4;
          v29 += 4;
        }

        while (((Width + 3) & 0xFFFFFFFFFFFFFFFCLL) != v28);
      }

      ++v13;
      v27 += BytesPerRow;
    }

    while (v13 != v14);
  }

  CVPixelBufferUnlockBaseAddress(v35, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v32 = pixelBufferOut;

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

CVPixelBufferRef createCVPixelBuffer32BGRAFrom32ARGB(__CVBuffer *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  if (CVPixelBufferGetPixelFormatType(a1) == 1111970369)
  {
    v2 = *MEMORY[0x277D85DE8];

    return CVPixelBufferRetain(a1);
  }

  else
  {
    v4 = VGLogVGMLUtilities();
    if (os_signpost_enabled(v4))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateCVPixelBuffer32BGRAFrom32ARGB", &unk_270FBF062, &buf, 2u);
    }

    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v14 = *MEMORY[0x277CC4DE8];
    v15[0] = MEMORY[0x277CBEC10];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x42475241u, v7, &pixelBufferOut);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    buf.data = CVPixelBufferGetBaseAddress(a1);
    buf.height = Height;
    buf.width = Width;
    buf.rowBytes = CVPixelBufferGetBytesPerRow(a1);
    dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
    dest.height = Height;
    dest.width = Width;
    dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    *permuteMap = 66051;
    vImagePermuteChannels_ARGB8888(&buf, &dest, permuteMap, 0);
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v8 = pixelBufferOut;

    ___Z35createCVPixelBuffer32BGRAFrom32ARGBP10__CVBuffer_block_invoke();
    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }
}

id VGLogVGMLUtilities(void)
{
  if (VGLogVGMLUtilities(void)::onceToken != -1)
  {
    VGLogVGMLUtilities();
  }

  v1 = VGLogVGMLUtilities(void)::handle;

  return v1;
}

void ___Z35createCVPixelBuffer32BGRAFrom32ARGBP10__CVBuffer_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateCVPixelBuffer32BGRAFrom32ARGB", &unk_270FBF062, v1, 2u);
  }
}

CVPixelBufferRef createCVPixelBuffer32ARGBFrom32BGRA(__CVBuffer *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  if (CVPixelBufferGetPixelFormatType(a1) == 32)
  {
    v2 = *MEMORY[0x277D85DE8];

    return CVPixelBufferRetain(a1);
  }

  else
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v13 = *MEMORY[0x277CC4DE8];
    v14[0] = MEMORY[0x277CBEC10];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x20u, v6, &pixelBufferOut);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    src.data = CVPixelBufferGetBaseAddress(a1);
    src.height = Height;
    src.width = Width;
    src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
    dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
    dest.height = Height;
    dest.width = Width;
    dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    *permuteMap = 66051;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v7 = pixelBufferOut;

    v8 = *MEMORY[0x277D85DE8];
    return v7;
  }
}

id create32BGRASurfaceFrom32RGBASurface(IOSurface *a1)
{
  v1 = _permuteChannelsInARGB8888Surface(a1, 0x52474241u, 1111970369);

  return v1;
}

IOSurface *_permuteChannelsInARGB8888Surface(IOSurface *a1, unsigned int a2, uint64_t a3)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if ([(IOSurface *)v5 pixelFormat]== a3)
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CD2930]);
    v39[0] = *MEMORY[0x277CD2928];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v5, "width")}];
    v40[0] = v8;
    v39[1] = *MEMORY[0x277CD28D0];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v5, "height")}];
    v40[1] = v9;
    v39[2] = *MEMORY[0x277CD28B0];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElement](v5, "bytesPerElement")}];
    v40[2] = v10;
    v39[3] = *MEMORY[0x277CD28D8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    v40[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v13 = [v7 initWithProperties:v12];

    src.data = 0x5247424100000020;
    *(&src.height + 4) = 0x4247524100000020;
    LODWORD(src.height) = 197121;
    HIDWORD(src.width) = 66051;
    src.rowBytes = 0x5247424142475241;
    v33 = 0x2042475241;
    v32 = 50331906;
    v34 = 66051;
    v35 = 0x2052474241;
    v37 = 0x4247524152474241;
    v36 = 33619971;
    v38 = 50331906;
    std::unordered_map<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,std::allocator<std::pair<std::pair<unsigned int,unsigned int> const,std::array<unsigned char,4ul>>>>::unordered_map(v30, &src, 6);
    [v13 lockWithOptions:0 seed:0];
    [(IOSurface *)v5 lockWithOptions:0 seed:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___ZL33_permuteChannelsInARGB8888SurfaceP9IOSurfacejj_block_invoke;
    v28[3] = &unk_279E28D98;
    v14 = v13;
    v29 = v14;
    v15 = MEMORY[0x2743B9AA0](v28);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZL33_permuteChannelsInARGB8888SurfaceP9IOSurfacejj_block_invoke_2;
    v26[3] = &unk_279E28D98;
    v16 = v5;
    v27 = v16;
    v17 = MEMORY[0x2743B9AA0](v26);
    v18 = v16;
    src.data = [(IOSurface *)v16 baseAddress];
    src.height = [(IOSurface *)v16 height];
    src.width = [(IOSurface *)v16 width];
    src.rowBytes = [(IOSurface *)v16 bytesPerRow];
    v19 = v14;
    dest.data = [v14 baseAddress];
    dest.height = [v14 height];
    dest.width = [v14 width];
    dest.rowBytes = [v14 bytesPerRow];
    v23 = a2 | (a3 << 32);
    v20 = std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::find<std::pair<unsigned int,unsigned int>>(v30, &v23);
    if (!v20)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    *permuteMap = *(v20 + 6);
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
    v6 = v14;
    v17[2](v17);

    v15[2](v15);
    std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::~__hash_table(v30);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_270F88C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, char a26)
{
  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::~__hash_table(&a26);

  _Unwind_Resume(a1);
}

id create32ARGBSurfaceFrom32BGRASurface(IOSurface *a1)
{
  v1 = _permuteChannelsInARGB8888Surface(a1, 0x42475241u, 32);

  return v1;
}

id create32RGBASurfaceFrom32ARGBSurface(IOSurface *a1)
{
  v1 = _permuteChannelsInARGB8888Surface(a1, 0x20u, 1380401729);

  return v1;
}

id create32BGRASurfaceFrom32ARGBSurface(IOSurface *a1)
{
  v1 = _permuteChannelsInARGB8888Surface(a1, 0x20u, 1111970369);

  return v1;
}

id create32ARGBSurfaceFrom32RGBASurface(IOSurface *a1)
{
  v1 = _permuteChannelsInARGB8888Surface(a1, 0x52474241u, 32);

  return v1;
}

IOSurface *createARGBSurfaceWithColorSpace(IOSurface *a1, NSString *a2, NSString *a3)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([(__CFString *)v6 isEqualToString:v7])
  {
    v8 = v5;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CD2930]);
    v46[0] = *MEMORY[0x277CD2928];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v5, "width")}];
    v47[0] = v10;
    v46[1] = *MEMORY[0x277CD28D0];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v5, "height")}];
    v47[1] = v11;
    v46[2] = *MEMORY[0x277CD28B0];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElement](v5, "bytesPerElement")}];
    v47[2] = v12;
    v46[3] = *MEMORY[0x277CD28D8];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[IOSurface pixelFormat](v5, "pixelFormat")}];
    v47[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];
    v31 = [v9 initWithProperties:v14];

    *&srcFormat.bitsPerComponent = 0x2000000008;
    srcFormat.colorSpace = CGColorSpaceCreateWithName(v6);
    srcFormat.bitmapInfo = 4;
    memset(&srcFormat.version, 0, 20);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ___Z31createARGBSurfaceWithColorSpaceP9IOSurfaceP8NSStringS2__block_invoke;
    v40[3] = &__block_descriptor_72_e5_v8__0l;
    v41 = srcFormat;
    v15 = MEMORY[0x2743B9AA0](v40);
    *&destFormat.bitsPerComponent = 0x2000000008;
    destFormat.colorSpace = CGColorSpaceCreateWithName(v7);
    destFormat.bitmapInfo = 4;
    memset(&destFormat.version, 0, 20);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___Z31createARGBSurfaceWithColorSpaceP9IOSurfaceP8NSStringS2__block_invoke_2;
    v37[3] = &__block_descriptor_72_e5_v8__0l;
    v38 = destFormat;
    v16 = MEMORY[0x2743B9AA0](v37);
    error = 0;
    v17 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, &error);
    v18 = v17;
    if (v17)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = ___Z31createARGBSurfaceWithColorSpaceP9IOSurfaceP8NSStringS2__block_invoke_11;
      v35[3] = &__block_descriptor_40_e5_v8__0l;
      v35[4] = v17;
      v19 = MEMORY[0x2743B9AA0](v35);
      v30 = v15;
      vg::IOSurfaceData::IOSurfaceData(v45, v5, 1);
      vg::IOSurfaceData::IOSurfaceData(v34, v31, 0);
      v20 = [*v45 width];
      v21 = [*v45 height];
      v22 = [*v45 baseAddress];
      [*v45 bytesPerRow];
      [*v45 bytesPerElement];
      srcs.data = v22;
      srcs.height = v21;
      srcs.width = v20;
      srcs.rowBytes = [*v45 bytesPerRow];
      v23 = [v34[0] width];
      v24 = [v34[0] height];
      v25 = [v34[0] baseAddress];
      [v34[0] bytesPerRow];
      [v34[0] bytesPerElement];
      dests.data = v25;
      dests.height = v24;
      dests.width = v23;
      dests.rowBytes = [v34[0] bytesPerRow];
      v15 = v30;
      v26 = vImageConvert_AnyToAny(v18, &srcs, &dests, 0, 0x100u);
      if (v26)
      {
        v27 = __VGLogSharedInstance();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v44 = v26;
          _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_ERROR, " Failed to convert image buffer (%zd) ", buf, 0xCu);
        }

        v8 = 0;
      }

      else
      {
        v8 = v31;
      }

      vg::IOSurfaceData::~IOSurfaceData(v34);
      vg::IOSurfaceData::~IOSurfaceData(v45);
      (*(v19 + 16))(v19);
    }

    else
    {
      v19 = __VGLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v45 = 134217984;
        *&v45[4] = error;
        _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " Failed to create image converter (error: %zd) ", v45, 0xCu);
      }

      v8 = 0;
    }

    v16[2](v16);
    v15[2](v15);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_270F8937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14[2](v14);

  v15[2](v15);
  _Unwind_Resume(a1);
}

id createMaskedImageARGB32(IOSurface *a1, IOSurface *a2, float a3, IOSurface *a4)
  v4 = {;

  return v4;
}

IOSurface *anonymous namespace::createMaskedColorImage(_anonymous_namespace_ *this, IOSurface *a2, IOSurface *a3, float a4)
{
  v4 = a3;
  v34[4] = *MEMORY[0x277D85DE8];
  v7 = this;
  v8 = a2;
  v9 = [(_anonymous_namespace_ *)v7 width];
  v10 = [(_anonymous_namespace_ *)v7 height];
  v11 = objc_alloc(MEMORY[0x277CD2930]);
  v33[0] = *MEMORY[0x277CD2928];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v34[0] = v12;
  v33[1] = *MEMORY[0x277CD28D0];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v34[1] = v13;
  v33[2] = *MEMORY[0x277CD28D8];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[_anonymous_namespace_ pixelFormat](v7, "pixelFormat")}];
  v33[3] = *MEMORY[0x277CD28B0];
  v34[2] = v14;
  v34[3] = &unk_2880F61F0;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
  v16 = [v11 initWithProperties:v15];

  vg::IOSurfaceData::IOSurfaceData(v29, v16, 0);
  vg::IOSurfaceData::IOSurfaceData(v25, v7, 1);
  vg::IOSurfaceData::IOSurfaceData(v24, v8, 1);
  if (v10)
  {
    v17 = 0;
    while (!v9)
    {
LABEL_16:
      if (++v17 == v10)
      {
        goto LABEL_17;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = *(v24[4] + v24[5] * v17 + v24[6] * v18);
      v20 = [(_anonymous_namespace_ *)v7 pixelFormat];
      if (v20 == 32)
      {
        if (v19 >= a4)
        {
          *(v30 + v31 * v17 + v32 * v18) = *(v26 + v27 * v17 + v28 * v18);
          *(v30 + v31 * v17 + v32 * v18 + 1) = *(v26 + v27 * v17 + v28 * v18 + 1);
          *(v30 + v31 * v17 + v32 * v18 + 2) = *(v26 + v27 * v17 + v28 * v18 + 2);
          v21 = *(v26 + v27 * v17 + v28 * v18 + 3);
        }

        else
        {
          *(v30 + v31 * v17 + v32 * v18) = 0;
          *(v30 + v31 * v17 + v32 * v18 + 1) = v4;
          *(v30 + v31 * v17 + v32 * v18 + 2) = v4;
          v21 = v4;
        }
      }

      else
      {
        if (v20 != 1111970369 && v20 != 1380401729)
        {
          goto LABEL_15;
        }

        if (v19 >= a4)
        {
          *(v30 + v31 * v17 + v32 * v18) = *(v26 + v27 * v17 + v28 * v18);
          *(v30 + v31 * v17 + v32 * v18 + 1) = *(v26 + v27 * v17 + v28 * v18 + 1);
          *(v30 + v31 * v17 + v32 * v18 + 2) = *(v26 + v27 * v17 + v28 * v18 + 2);
          v21 = *(v26 + v27 * v17 + v28 * v18);
        }

        else
        {
          v21 = 0;
          *(v30 + v31 * v17 + v32 * v18) = v4;
          *(v30 + v31 * v17 + v32 * v18 + 1) = v4;
          *(v30 + v31 * v17 + v32 * v18 + 2) = v4;
        }
      }

      *(v30 + v31 * v17 + v32 * v18 + 3) = v21;
LABEL_15:
      if (v9 == ++v18)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  vg::IOSurfaceData::~IOSurfaceData(v24);
  vg::IOSurfaceData::~IOSurfaceData(v25);
  vg::IOSurfaceData::~IOSurfaceData(v29);

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_270F89914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, id);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

id createMaskedImageBGRA32(IOSurface *a1, IOSurface *a2, float a3, IOSurface *a4)
  v4 = {;

  return v4;
}

id createMaskedImageRGBA32(IOSurface *a1, IOSurface *a2, float a3, IOSurface *a4)
  v4 = {;

  return v4;
}

IOSurface *createMaskedImage1CF32(IOSurface *a1, IOSurface *a2, float a3, float a4)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [(IOSurface *)v7 pixelFormat];
  v10 = [(IOSurface *)v7 width];
  v11 = [(IOSurface *)v7 height];
  v12 = objc_alloc(MEMORY[0x277CD2930]);
  v36[0] = *MEMORY[0x277CD2928];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v37[0] = v13;
  v36[1] = *MEMORY[0x277CD28D0];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v37[1] = v14;
  v36[2] = *MEMORY[0x277CD28D8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v36[3] = *MEMORY[0x277CD28B0];
  v37[2] = v15;
  v37[3] = &unk_2880F61F0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v17 = [v12 initWithProperties:v16];

  vg::IOSurfaceData::IOSurfaceData(v35, v17, 0);
  vg::IOSurfaceData::IOSurfaceData(v34, v7, 1);
  vg::IOSurfaceData::IOSurfaceData(v33, v8, 1);
  if (v11)
  {
    v18 = 0;
    v19 = v33[4];
    v20 = v33[5];
    v21 = v33[6];
    v22 = v35[4];
    v23 = v35[5];
    v24 = v35[6];
    do
    {
      if (v10)
      {
        v25 = (v34[4] + v34[5] * v18);
        v26 = v34[6];
        v27 = v22;
        v28 = v19;
        v29 = v10;
        do
        {
          v30 = a4;
          if (*v28 > a3)
          {
            v30 = *v25;
          }

          *v27 = v30;
          v28 = &v21[v28];
          v25 = &v26[v25];
          v27 = &v24[v27];
          --v29;
        }

        while (v29);
      }

      ++v18;
      v19 = &v20[v19];
      v22 = &v23[v22];
    }

    while (v18 != v11);
  }

  vg::IOSurfaceData::~IOSurfaceData(v33);
  vg::IOSurfaceData::~IOSurfaceData(v34);
  vg::IOSurfaceData::~IOSurfaceData(v35);

  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

void sub_270F89C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, id);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

id createFloat32SurfaceWithROI(void *a1, uint32x2_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 width];
  src.data = __PAIR64__([v3 height], v4);
  createROIRectWithEdge(a2, &src, &v30);
  if (v31)
  {
    v5 = objc_alloc(MEMORY[0x277CD2930]);
    v28[0] = *MEMORY[0x277CD2928];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "width")}];
    v29[0] = v6;
    v28[1] = *MEMORY[0x277CD28D0];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "height")}];
    v29[1] = v7;
    v28[2] = *MEMORY[0x277CD28D8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "pixelFormat")}];
    v29[2] = v8;
    v28[3] = *MEMORY[0x277CD28B0];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "bytesPerElement")}];
    v29[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v11 = [v5 initWithProperties:v10];

    v19 = v30;
    [v11 lockWithOptions:0 seed:0];
    [v3 lockWithOptions:0 seed:0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___Z27createFloat32SurfaceWithROIP9IOSurfaceRKDv4_j_block_invoke;
    v26[3] = &unk_279E28D98;
    v12 = v11;
    v27 = v12;
    v13 = MEMORY[0x2743B9AA0](v26);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___Z27createFloat32SurfaceWithROIP9IOSurfaceRKDv4_j_block_invoke_2;
    v24[3] = &unk_279E28D98;
    v14 = v3;
    v25 = v14;
    v15 = MEMORY[0x2743B9AA0](v24);
    memset(&src, 0, sizeof(src));
    if (v14)
    {
      [v14 vg_vImageBuffer];
    }

    memset(&dest, 0, sizeof(dest));
    if (v12)
    {
      HIWORD(v21) = v19.i16[2];
      LOWORD(v21) = v19.i16[0];
      HIWORD(v20) = v19.i16[6];
      LOWORD(v20) = v19.i16[4];
      [v12 vg_vImageBufferWithCropOrigin:v21 cropSize:v20];
    }

    if (vImageScale_PlanarF(&src, &dest, 0, 0))
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    v15[2](v15);

    v13[2](v13);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_270F8A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  v33[2](v33);

  v32[2](v32);
  _Unwind_Resume(a1);
}

uint32x2_t *createROIRectWithEdge@<X0>(uint32x2_t *result@<X0>, uint64_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = *result->i8;
  v4 = vcvt_f32_u32(*result);
  v5 = *a2;
  v6 = *a2;
  if (v4.f32[0] <= v6 && ((v7 = vextq_s8(v3, v3, 8uLL).u64[0], v8 = vcvt_f32_u32(v7), v4.f32[1] <= HIDWORD(v5)) ? (v9 = v8.f32[0] > v6) : (v9 = 1), !v9 && (v11 = vcge_f32(v8, v4), (v11.i8[0] & 1) != 0) && v8.f32[1] <= HIDWORD(v5) && (v11.i8[4] & 1) != 0))
  {
    v3.u64[1] = vadd_s32(vsub_s32(v7, *v3.i8), 0x100000001);
    *a3 = v3;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    a3->i8[0] = 0;
  }

  a3[1].i8[0] = v10;
  return result;
}

id createHorizontallyReflectedSurface(IOSurface *a1)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateHorizontallyReflectedSurface", &unk_270FBF062, &buf, 2u);
  }

  if (![(IOSurface *)v1 planeCount])
  {
    v47[0] = *MEMORY[0x277CD2928];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v1, "width")}];
    v48[0] = v14;
    v47[1] = *MEMORY[0x277CD28D0];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v1, "height")}];
    v48[1] = v15;
    v47[2] = *MEMORY[0x277CD28D8];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[IOSurface pixelFormat](v1, "pixelFormat")}];
    v48[2] = v16;
    v47[3] = *MEMORY[0x277CD28B0];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElement](v1, "bytesPerElement")}];
    v48[3] = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
    goto LABEL_7;
  }

  if ([(IOSurface *)v1 planeCount]== 2)
  {
    v3 = MEMORY[0x277CD2920];
    v44[0] = *MEMORY[0x277CD2920];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface widthOfPlaneAtIndex:](v1, "widthOfPlaneAtIndex:", 0)}];
    v45[0] = v4;
    v5 = MEMORY[0x277CD2900];
    v44[1] = *MEMORY[0x277CD2900];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface heightOfPlaneAtIndex:](v1, "heightOfPlaneAtIndex:", 0)}];
    v45[1] = v6;
    v7 = MEMORY[0x277CD28E0];
    v44[2] = *MEMORY[0x277CD28E0];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElementOfPlaneAtIndex:](v1, "bytesPerElementOfPlaneAtIndex:", 0)}];
    v45[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
    v46[0] = v9;
    v42[0] = *v3;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface widthOfPlaneAtIndex:](v1, "widthOfPlaneAtIndex:", 1)}];
    v43[0] = v10;
    v42[1] = *v5;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface heightOfPlaneAtIndex:](v1, "heightOfPlaneAtIndex:", 1)}];
    v43[1] = v11;
    v42[2] = *v7;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElementOfPlaneAtIndex:](v1, "bytesPerElementOfPlaneAtIndex:", 1)}];
    v43[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v46[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];

    v40[0] = *MEMORY[0x277CD2928];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v1, "width")}];
    v41[0] = v15;
    v40[1] = *MEMORY[0x277CD28D0];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v1, "height")}];
    v41[1] = v16;
    v40[2] = *MEMORY[0x277CD28D8];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[IOSurface pixelFormat](v1, "pixelFormat")}];
    v41[2] = v17;
    v40[3] = *MEMORY[0x277CD28B0];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElement](v1, "bytesPerElement")}];
    v40[4] = *MEMORY[0x277CD2908];
    v41[3] = v18;
    v41[4] = v14;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];

LABEL_7:
    goto LABEL_9;
  }

  v19 = MEMORY[0x277CBEC10];
LABEL_9:
  v20 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v19];
  [(IOSurface *)v1 lockWithOptions:0 seed:0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = ___Z34createHorizontallyReflectedSurfacePK9IOSurface_block_invoke_15;
  v37[3] = &unk_279E28D98;
  v21 = v1;
  v38 = v21;
  v22 = MEMORY[0x2743B9AA0](v37);
  [v20 lockWithOptions:0 seed:0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = ___Z34createHorizontallyReflectedSurfacePK9IOSurface_block_invoke_2;
  v35[3] = &unk_279E28D98;
  v23 = v20;
  v36 = v23;
  v24 = MEMORY[0x2743B9AA0](v35);
  v25 = [(IOSurface *)v21 pixelFormat];
  if (v25 <= 1111970368)
  {
    if (v25 > 875704437)
    {
      if (v25 == 875704438)
      {
LABEL_27:
        if (v21)
        {
          [(IOSurface *)v21 vg_vImageBufferOfPlaneAtIndex:0];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        buf = v39;
        if (v23)
        {
          [v23 vg_vImageBufferOfPlaneAtIndex:0];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        dest = v39;
        vImageHorizontalReflect_Planar8(&buf, &dest, 0x100u);
        if (v21)
        {
          [(IOSurface *)v21 vg_vImageBufferOfPlaneAtIndex:1];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        buf = v39;
        if (v23)
        {
          [v23 vg_vImageBufferOfPlaneAtIndex:1];
        }

        else
        {
          memset(&v39, 0, sizeof(v39));
        }

        dest = v39;
        v27 = vImageHorizontalReflect_Planar16U(&buf, &dest, 0x100u);
        goto LABEL_53;
      }

      if (v25 != 1094862674)
      {
        goto LABEL_34;
      }
    }

    else if (v25 != 32)
    {
      if (v25 != 875704422)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v25 > 1380401728)
  {
    if (v25 != 1380401729)
    {
      v26 = 1717855600;
      goto LABEL_22;
    }

LABEL_25:
    if (v21)
    {
      [(IOSurface *)v21 vg_vImageBuffer];
    }

    else
    {
      memset(&v39, 0, sizeof(v39));
    }

    buf = v39;
    if (v23)
    {
      [v23 vg_vImageBuffer];
    }

    else
    {
      memset(&v39, 0, sizeof(v39));
    }

    dest = v39;
    v27 = vImageHorizontalReflect_ARGB8888(&buf, &dest, 0);
    goto LABEL_53;
  }

  if (v25 == 1111970369)
  {
    goto LABEL_25;
  }

  v26 = 1278226534;
LABEL_22:
  if (v25 != v26)
  {
LABEL_34:
    v28 = __VGLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = vg::OSTypeToString([(IOSurface *)v21 pixelFormat]);
      LODWORD(v39.data) = 138412290;
      *(&v39.data + 4) = v29;
      _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Format not supported: %@ ", &v39, 0xCu);
    }

    goto LABEL_54;
  }

  if (v21)
  {
    [(IOSurface *)v21 vg_vImageBuffer];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  buf = v39;
  if (v23)
  {
    [v23 vg_vImageBuffer];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  dest = v39;
  v27 = vImageHorizontalReflect_PlanarF(&buf, &dest, 0);
LABEL_53:
  if (v27)
  {
LABEL_54:
    v30 = 0;
    goto LABEL_56;
  }

  v30 = v23;
LABEL_56:
  v24[2](v24);

  v22[2](v22);
  ___Z34createHorizontallyReflectedSurfacePK9IOSurface_block_invoke();

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void sub_270F8AAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  v32[2](v32);

  v31[2](v31);
  ___Z34createHorizontallyReflectedSurfacePK9IOSurface_block_invoke();

  _Unwind_Resume(a1);
}

void ___Z34createHorizontallyReflectedSurfacePK9IOSurface_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateHorizontallyReflectedSurface", &unk_270FBF062, v1, 2u);
  }
}

id createScaledSurfaceWithAspectRatio(IOSurface *a1, unint64_t a2, unint64_t a3)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = objc_alloc(MEMORY[0x277CD2930]);
  v49[0] = *MEMORY[0x277CD2928];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v50[0] = v7;
  v49[1] = *MEMORY[0x277CD28D0];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v50[1] = v8;
  v49[2] = *MEMORY[0x277CD28D8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[IOSurface pixelFormat](v5, "pixelFormat")}];
  v50[2] = v9;
  v49[3] = *MEMORY[0x277CD28B0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface bytesPerElement](v5, "bytesPerElement")}];
  v50[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
  v12 = [v6 initWithProperties:v11];

  v13 = [(IOSurface *)v5 width];
  v14 = [(IOSurface *)v5 height];
  v15 = [v12 width];
  v16 = [v12 height];
  v17 = v13 / v14;
  v18 = v15 / v16;
  LODWORD(v19) = a3;
  if (vabds_f32(v17, v18) <= 0.01)
  {
    HIDWORD(v19) = a2;
    v40 = v19;
    [v12 lockWithOptions:0 seed:{0, 0, 0}];
  }

  else
  {
    v20 = a3;
    v21 = a2;
    if (v17 >= v18)
    {
      v24 = v20 / v17;
      LODWORD(v25) = 0;
      HIDWORD(v25) = ((v21 - v24) * 0.5);
      v37 = v25;
      v23 = __PAIR64__(v24, a3);
    }

    else
    {
      v22 = v17 * v21;
      v37 = ((v20 - v22) * 0.5);
      LODWORD(v23) = v22;
      HIDWORD(v23) = a2;
    }

    v40 = v23;
    [v12 lockWithOptions:0 seed:{0, v37}];
  }

  [(IOSurface *)v5 lockWithOptions:0 seed:0];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = ___Z34createScaledSurfaceWithAspectRatioPK9IOSurfacemm_block_invoke;
  v47[3] = &unk_279E28D98;
  v26 = v12;
  v48 = v26;
  v27 = MEMORY[0x2743B9AA0](v47);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = ___Z34createScaledSurfaceWithAspectRatioPK9IOSurfacemm_block_invoke_2;
  v45[3] = &unk_279E28D98;
  v28 = v5;
  v46 = v28;
  v29 = MEMORY[0x2743B9AA0](v45);
  v30 = v26;
  bzero([v26 baseAddress], objc_msgSend(v26, "allocationSize"));
  v31 = 0uLL;
  memset(&dest, 0, sizeof(dest));
  if (v26)
  {
    HIWORD(v42) = v39;
    LOWORD(v42) = v38;
    HIWORD(v41) = WORD2(v40);
    LOWORD(v41) = v40;
    [v26 vg_vImageBufferWithCropOrigin:v42 cropSize:v41];
    v31 = 0uLL;
  }

  *&src.data = v31;
  *&src.width = v31;
  if (v28)
  {
    [(IOSurface *)v28 vg_vImageBuffer];
  }

  v32 = [(IOSurface *)v28 pixelFormat];
  v33 = 0;
  if (v32 <= 1278226533)
  {
    if (v32 != 32 && v32 != 1111970369)
    {
      if (v32 != 1278226488)
      {
        goto LABEL_24;
      }

      v34 = vImageScale_Planar8(&src, &dest, 0, 0);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v32 == 1278226534)
  {
LABEL_19:
    v34 = vImageScale_PlanarF(&src, &dest, 0, 0);
    goto LABEL_21;
  }

  if (v32 != 1380401729)
  {
    if (v32 != 1717855600)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_20:
  v34 = vImageScale_ARGB8888(&src, &dest, 0, 0);
LABEL_21:
  if (v34)
  {
    v33 = 0;
  }

  else
  {
    v33 = v26;
  }

LABEL_24:
  v29[2](v29);

  v27[2](v27);
  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

void sub_270F8B204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v36[2](v36);

  v35[2](v35);
  _Unwind_Resume(a1);
}

id createCropAndScaledSurface(void *a1, uint32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = [v7 width];
  dest.data = __PAIR64__([v7 height], v8);
  createROIRectWithEdge(a2, &dest, &v36);
  if ((v37 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_20;
  }

  v9 = objc_alloc(MEMORY[0x277CD2930]);
  v34[0] = *MEMORY[0x277CD2928];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  v35[0] = v10;
  v34[1] = *MEMORY[0x277CD28D0];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v35[1] = v11;
  v34[2] = *MEMORY[0x277CD28D8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "pixelFormat")}];
  v35[2] = v12;
  v34[3] = *MEMORY[0x277CD28B0];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "bytesPerElement")}];
  v35[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
  v15 = [v9 initWithProperties:v14];

  v25 = v36;
  [v15 lockWithOptions:0 seed:0];
  [v7 lockWithOptions:0 seed:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = ___Z26createCropAndScaledSurfacePK9IOSurfaceRKDv4_jmm_block_invoke;
  v32[3] = &unk_279E28D98;
  v16 = v15;
  v33 = v16;
  v17 = MEMORY[0x2743B9AA0](v32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___Z26createCropAndScaledSurfacePK9IOSurfaceRKDv4_jmm_block_invoke_2;
  v30[3] = &unk_279E28D98;
  v18 = v7;
  v31 = v18;
  v19 = MEMORY[0x2743B9AA0](v30);
  memset(&dest, 0, sizeof(dest));
  if (v16)
  {
    [v16 vg_vImageBuffer];
  }

  memset(&src, 0, sizeof(src));
  if (v18)
  {
    HIWORD(v27) = v25.i16[2];
    LOWORD(v27) = v25.i16[0];
    HIWORD(v26) = v25.i16[6];
    LOWORD(v26) = v25.i16[4];
    [v18 vg_vImageBufferWithCropOrigin:v27 cropSize:v26];
  }

  v20 = [v18 pixelFormat];
  v21 = 0;
  if (v20 <= 1278226487)
  {
    if (v20 != 32 && v20 != 1094862674)
    {
      goto LABEL_19;
    }

    v22 = vImageScale_ARGB8888(&src, &dest, 0, 0);
  }

  else if (v20 == 1278226488)
  {
    v22 = vImageScale_Planar8(&src, &dest, 0, 0);
  }

  else
  {
    if (v20 != 1278226534 && v20 != 1717855600)
    {
      goto LABEL_19;
    }

    v22 = vImageScale_PlanarF(&src, &dest, 0, 0);
  }

  if (v22)
  {
    v21 = 0;
  }

  else
  {
    v21 = v16;
  }

LABEL_19:
  v19[2](v19);

  v17[2](v17);
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

void sub_270F8B720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  v33[2](v33);

  v32[2](v32);
  _Unwind_Resume(a1);
}

CVPixelBufferRef createMaskedImageARGB32(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBuffer = 0;
  v29 = *MEMORY[0x277CC4DE8];
  v30[0] = MEMORY[0x277CBEC10];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, v9, &pixelBuffer);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v11 = CVPixelBufferGetBaseAddress(a2);
  v12 = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v14 = CVPixelBufferGetBytesPerRow(a2);
  v15 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (Height)
  {
    v16 = 0;
    v17 = v12 + 1;
    v18 = BaseAddress + 3;
    do
    {
      v19 = v18;
      v20 = v17;
      v21 = v11;
      for (i = Width; i; --i)
      {
        v23 = 0.0;
        if (*v21 >= 0.0)
        {
          v23 = 1.0;
          if (*v21 <= 1.0)
          {
            v23 = *v21;
          }
        }

        if (v23 <= a3)
        {
          *(v20 - 1) = 32512;
          v24 = 127;
          v20[1] = 127;
        }

        else
        {
          *(v20 - 1) = *(v19 - 3);
          *v20 = *(v19 - 2);
          v20[1] = *(v19 - 1);
          v24 = *v19;
        }

        v20[2] = v24;
        ++v21;
        v20 += 4;
        v19 += 4;
      }

      ++v16;
      v11 = (v11 + v14);
      v17 += v15;
      v18 += BytesPerRow;
    }

    while (v16 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v25 = pixelBuffer;

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

CVPixelBufferRef createMaskedImageARGB32WithoutThreshold(__CVBuffer *a1, __CVBuffer *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBuffer = 0;
  v30 = *MEMORY[0x277CC4DE8];
  v31[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, v7, &pixelBuffer);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v9 = CVPixelBufferGetBaseAddress(a2);
  v10 = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v12 = CVPixelBufferGetBytesPerRow(a2);
  v13 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (Height)
  {
    v14 = 0;
    v15 = v10 + 3;
    v16 = BaseAddress + 3;
    do
    {
      v17 = v16;
      v18 = v15;
      v19 = v9;
      for (i = Width; i; --i)
      {
        v21 = *v19++;
        v22 = v21;
        if (v21 <= 1.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 1.0;
        }

        if (v22 >= 0.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        LOBYTE(v23) = *(v17 - 3);
        *(v18 - 3) = (v24 * LODWORD(v23));
        *(v18 - 2) = *(v17 - 2);
        *(v18 - 1) = *(v17 - 1);
        v25 = *v17;
        v17 += 4;
        *v18 = v25;
        v18 += 4;
      }

      ++v14;
      v9 = (v9 + v12);
      v15 += v13;
      v16 += BytesPerRow;
    }

    while (v14 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v26 = pixelBuffer;

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

CVPixelBufferRef createMaskedImageU32WithThreshold(__CVBuffer *a1, __CVBuffer *a2, float a3, char a4)
{
  v31[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v30 = *MEMORY[0x277CC4DE8];
  v31[0] = MEMORY[0x277CBEC10];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, v28, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v12 = CVPixelBufferGetBaseAddress(a2);
  v13 = CVPixelBufferGetBaseAddress(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v15 = CVPixelBufferGetBytesPerRow(a2);
  v16 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  if (Height)
  {
    v17 = 0;
    v18 = v13 + 1;
    v19 = BaseAddress + 3;
    do
    {
      v20 = v19;
      v21 = v18;
      v22 = v12;
      for (i = Width; i; --i)
      {
        if (*v22 >= a3)
        {
          *(v21 - 1) = *(v20 - 3);
          *v21 = *(v20 - 2);
          v21[1] = *(v20 - 1);
          v24 = *v20;
        }

        else
        {
          *(v21 - 1) = a4;
          *v21 = a4;
          v24 = a4;
          v21[1] = a4;
        }

        v21[2] = v24;
        ++v22;
        v21 += 4;
        v20 += 4;
      }

      ++v17;
      v12 = (v12 + v15);
      v18 += v16;
      v19 += BytesPerRow;
    }

    while (v17 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v25 = pixelBufferOut;

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

CVPixelBufferRef createMaskedImage1CF32(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v25 = *MEMORY[0x277CC4DE8];
  v26[0] = MEMORY[0x277CBEC10];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, v23, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v10 = CVPixelBufferGetBaseAddress(a2);
  v11 = CVPixelBufferGetBaseAddress(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v13 = CVPixelBufferGetBytesPerRow(a2);
  v14 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v15 = 0;
  while (v15 < CVPixelBufferGetHeight(a2))
  {
    for (i = 0; i < CVPixelBufferGetWidth(a2); ++i)
    {
      v17 = v10[i];
      v18 = 0;
      v19 = 0.0;
      if (v17 >= 0.0)
      {
        v19 = 1.0;
        if (v17 <= 1.0)
        {
          v19 = v10[i];
        }
      }

      if (v19 > a3)
      {
        v18 = *&BaseAddress[4 * i];
      }

      *&v11[4 * i] = v18;
    }

    ++v15;
    v10 = (v10 + v13);
    BaseAddress += BytesPerRow;
    v11 += v14;
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v20 = pixelBufferOut;

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

IOSurface *createThresholdedDepth1CF32(IOSurface *a1, float a2, float a3, float a4)
{
  v7 = a1;
  v8 = objc_alloc(MEMORY[0x277CD2930]);
  v9 = [(IOSurface *)v7 vg_basicProperties];
  v10 = [v8 initWithProperties:v9];

  vg::IOSurfaceData::IOSurfaceData(v18, v10, 0);
  vg::IOSurfaceData::IOSurfaceData(v17, v7, 1);
  for (i = 0; i < [(IOSurface *)v7 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)v7 width]; ++j)
    {
      v13 = *(v17[4] + v17[5] * i + v17[6] * j);
      v15 = v13 < a2 && v13 > 0.0;
      if (v13 > a3 || v15)
      {
        v13 = a4;
      }

      *(v18[4] + v18[5] * i + v18[6] * j) = v13;
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v17);
  vg::IOSurfaceData::~IOSurfaceData(v18);

  return v10;
}

void sub_270F8C2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

uint64_t vg_pixelCountAboveThreshold(IOSurface *a1, float a2)
{
  v3 = a1;
  v4 = [(IOSurface *)v3 width];
  v5 = [(IOSurface *)v3 height];
  vg::IOSurfaceData::IOSurfaceData(v12, v3, 1);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v12[4];
    do
    {
      v9 = v8;
      for (i = v4; i; --i)
      {
        if (*v9 > a2)
        {
          ++v7;
        }

        v9 = (v9 + v12[6]);
      }

      ++v6;
      v8 = (v8 + v12[5]);
    }

    while (v6 != v5);
  }

  else
  {
    v7 = 0;
  }

  vg::IOSurfaceData::~IOSurfaceData(v12);

  return v7;
}

__CVBuffer *create16UPixelBufferFrom32FPixelBuffer(__CVBuffer *a1, float a2, float a3)
{
  v5 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) == 1278226742 || CVPixelBufferGetPixelFormatType(v5) == 1751410032)
  {
    CVPixelBufferRetain(v5);
  }

  else
  {
    pixelBufferOut = 0;
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v18 = *MEMORY[0x277CC4DE8];
    v19[0] = MEMORY[0x277CBEC10];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x4C303136u, v8, &pixelBufferOut);
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___Z38create16UPixelBufferFrom32FPixelBufferP10__CVBufferff_block_invoke;
    v16[3] = &__block_descriptor_40_e5_v8__0l;
    v16[4] = v5;
    v9 = MEMORY[0x2743B9AA0](v16);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___Z38create16UPixelBufferFrom32FPixelBufferP10__CVBufferff_block_invoke_2;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = pixelBufferOut;
    v10 = MEMORY[0x2743B9AA0](v15);
    memset(&src, 0, sizeof(src));
    createvImageBufferFromLockedCVPixelBuffer(v5, &src.data);
    memset(&v13, 0, sizeof(v13));
    createvImageBufferFromLockedCVPixelBuffer(pixelBufferOut, &v13.data);
    vImageConvert_FTo16U(&src, &v13, a2, 1.0 / a3, 0);
    v5 = pixelBufferOut;
    v10[2](v10);

    v9[2](v9);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t writeCIImageToFile(NSString *a1, CIImage *a2, uint64_t a3, CGColorSpace *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v15 = *MEMORY[0x277CBF938];
  v16[0] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:v9];
  v11 = [v10 PNGRepresentationOfImage:v8 format:a3 colorSpace:a4 options:MEMORY[0x277CBEC10]];
  v12 = [v11 writeToFile:v7 atomically:0];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

CVPixelBufferRef convertRGBToGrayScale(__CVBuffer *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  CVPixelBufferGetPixelFormatType(a1);
  *pre_bias = 0;
  *matrix = 0x1D2096404C80000;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v11 = *MEMORY[0x277CC4DE8];
  v12 = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  CVPixelBufferCreate(0, Width, Height, 0x4C303038u, v4, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = Height;
  src.width = Width;
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  v8.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v8.height = Height;
  v8.width = Width;
  v8.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &v8, matrix, 4096, pre_bias, 0, 0x100u);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v5 = pixelBufferOut;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

CVPixelBufferRef convertPlanar8ToPlanarF(__CVBuffer *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v11 = *MEMORY[0x277CC4DE8];
  v12[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  CVPixelBufferCreate(0, Width, Height, 0x4C303066u, v4, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = Height;
  src.width = Width;
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  v8.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v8.height = Height;
  v8.width = Width;
  v8.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  vImageConvert_Planar8toPlanarF(&src, &v8, 255.0, 0.0, 0x100u);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v5 = pixelBufferOut;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

CVPixelBufferRef createCroppedCVPixelBuffer(__CVBuffer *a1, unint64_t a2, unint64_t a3, size_t a4, size_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a4 - a2;
  if (a4 < a2 || (v10 = a5 - a3, a5 < a3))
  {
    v23 = __VGLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      v31 = a4;
      v32 = 2048;
      v33 = a5;
      _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_ERROR, " Invalid cropping window (x1 = %zu, y1 = %zu) > (x2 = %zu, y2 = %zu) ", buf, 0x2Au);
    }

    goto LABEL_15;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v14 = Height;
  if (Width < a4 || Height < a5)
  {
    v23 = __VGLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134219264;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = a5 - a3;
      v34 = 2048;
      v35 = Width;
      v36 = 2048;
      v37 = v14;
      _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_ERROR, " Cropping window (x1,y1) = (%zu, %zu) (width, height) = (%zu, %zu) is extending beyond input image size (width, height) = (%zu, %zu) ", buf, 0x3Eu);
    }

LABEL_15:

    v22 = 0;
    goto LABEL_16;
  }

  v15 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateCroppedCVPixelBuffer", &unk_270FBF062, buf, 2u);
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  pixelBufferOut = 0;
  v28 = *MEMORY[0x277CC4DE8];
  v29 = MEMORY[0x277CBEC10];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  CVPixelBufferCreate(0, v9, v10, PixelFormatType, v18, &pixelBufferOut);
  v19 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v20 = VGGetBytesPerElementFromPixelFormat(PixelFormatType);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  *buf = CVPixelBufferGetBaseAddress(a1) + BytesPerRow * a3 + v20 * a2;
  *&buf[8] = v10;
  *&buf[16] = v9;
  v31 = BytesPerRow;
  v26[0] = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v26[1] = v10;
  v26[2] = v9;
  v26[3] = v19;
  v21 = VGGetResizeFunctionFromPixelFormat(PixelFormatType);
  if (v21)
  {
    v21(buf, v26, 0, 0);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  v22 = pixelBufferOut;

  ___Z26createCroppedCVPixelBufferP10__CVBuffermmmm_block_invoke();
LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void ___Z26createCroppedCVPixelBufferP10__CVBuffermmmm_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateCroppedCVPixelBuffer", &unk_270FBF062, v1, 2u);
  }
}

CVPixelBufferRef createHorizontallyReflectedCVPixelBuffer(__CVBuffer *a1)
{
  v2 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateHorizontallyReflectedCVPixelBuffer", &unk_270FBF062, buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z40createHorizontallyReflectedCVPixelBufferP10__CVBuffer_block_invoke_21;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = 0;
  v3 = MEMORY[0x2743B9AA0](v9);
  v4 = CVPixelBufferGetIOSurface(a1);
  if (!v4)
  {
    v5 = copyToIOSurfaceBackedCVPixelBuffer(a1);
    v4 = CVPixelBufferGetIOSurface(v5);
  }

  v6 = createHorizontallyReflectedSurface(v4);
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v6);

  v3[2](v3);
  ___Z40createHorizontallyReflectedCVPixelBufferP10__CVBuffer_block_invoke();
  return CVPixelBufferFromIOSurface;
}

void sub_270F8D078(_Unwind_Exception *a1)
{
  v1[2](v1);

  ___Z40createHorizontallyReflectedCVPixelBufferP10__CVBuffer_block_invoke();
  _Unwind_Resume(a1);
}

void ___Z40createHorizontallyReflectedCVPixelBufferP10__CVBuffer_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateHorizontallyReflectedCVPixelBuffer", &unk_270FBF062, v1, 2u);
  }
}

void ___Z40createHorizontallyReflectedCVPixelBufferP10__CVBuffer_block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CVPixelBufferRelease(v1);
  }
}

CVPixelBufferRef copyToIOSurfaceBackedCVPixelBuffer(__CVBuffer *a1)
{
  v1 = IOSurfaceFromCVPixelBuffer(a1);
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v1);

  return CVPixelBufferFromIOSurface;
}

__CVBuffer *create32BGRAPixelBufferFromFloatPixelBuffer(__CVBuffer *a1, Pixel_F a2, Pixel_F a3)
{
  v5 = a1;
  v25[1] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) == 1111970369)
  {
    CVPixelBufferRetain(v5);
  }

  else
  {
    v22 = 0;
    pixelBufferOut = 0;
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v24 = *MEMORY[0x277CC4DE8];
    v25[0] = MEMORY[0x277CBEC10];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x4C303038u, v8, &pixelBufferOut);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___Z43create32BGRAPixelBufferFromFloatPixelBufferP10__CVBufferff_block_invoke;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = pixelBufferOut;
    v9 = MEMORY[0x2743B9AA0](v21);
    CVPixelBufferCreate(0, Width, Height, 0x42475241u, v8, &v22);
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___Z43create32BGRAPixelBufferFromFloatPixelBufferP10__CVBufferff_block_invoke_2;
    v20[3] = &__block_descriptor_40_e5_v8__0l;
    v20[4] = v5;
    v10 = MEMORY[0x2743B9AA0](v20);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___Z43create32BGRAPixelBufferFromFloatPixelBufferP10__CVBufferff_block_invoke_3;
    v19[3] = &__block_descriptor_40_e5_v8__0l;
    v19[4] = pixelBufferOut;
    v11 = MEMORY[0x2743B9AA0](v19);
    CVPixelBufferLockBaseAddress(v22, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___Z43create32BGRAPixelBufferFromFloatPixelBufferP10__CVBufferff_block_invoke_4;
    v18[3] = &__block_descriptor_40_e5_v8__0l;
    v18[4] = v22;
    v12 = MEMORY[0x2743B9AA0](v18);
    memset(&src, 0, sizeof(src));
    createvImageBufferFromLockedCVPixelBuffer(v5, &src.data);
    memset(&dest, 0, sizeof(dest));
    createvImageBufferFromLockedCVPixelBuffer(pixelBufferOut, &dest.data);
    memset(&v15, 0, sizeof(v15));
    createvImageBufferFromLockedCVPixelBuffer(v22, &v15.data);
    vImageConvert_PlanarFtoPlanar8(&src, &dest, a2, a3, 0);
    vImageConvert_Planar8ToBGRX8888(&dest, &dest, &dest, 0xFFu, &v15, 0);
    v5 = v22;
    v12[2](v12);

    v11[2](v11);
    v10[2](v10);

    v9[2](v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

size_t createvImageBufferFromLockedCVPixelBuffer@<X0>(__CVBuffer *a1@<X0>, void **a2@<X8>)
{
  *a2 = CVPixelBufferGetBaseAddress(a1);
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetBytesPerRow(a1);
  a2[3] = result;
  return result;
}

__CVBuffer *create32FPixelBufferFrom16UPixelBuffer(__CVBuffer *a1, float a2, float a3)
{
  v5 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) == 1717855600)
  {
    CVPixelBufferRetain(v5);
  }

  else
  {
    pixelBufferOut = 0;
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v18 = *MEMORY[0x277CC4DE8];
    v19[0] = MEMORY[0x277CBEC10];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x66646570u, v8, &pixelBufferOut);
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___Z38create32FPixelBufferFrom16UPixelBufferP10__CVBufferff_block_invoke;
    v16[3] = &__block_descriptor_40_e5_v8__0l;
    v16[4] = v5;
    v9 = MEMORY[0x2743B9AA0](v16);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___Z38create32FPixelBufferFrom16UPixelBufferP10__CVBufferff_block_invoke_2;
    v15[3] = &__block_descriptor_40_e5_v8__0l;
    v15[4] = pixelBufferOut;
    v10 = MEMORY[0x2743B9AA0](v15);
    memset(&src, 0, sizeof(src));
    createvImageBufferFromLockedCVPixelBuffer(v5, &src.data);
    memset(&v13, 0, sizeof(v13));
    createvImageBufferFromLockedCVPixelBuffer(pixelBufferOut, &v13.data);
    vImageConvert_16UToF(&src, &v13, a2, a3, 0);
    v5 = pixelBufferOut;
    v10[2](v10);

    v9[2](v9);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

CVPixelBufferRef createDilatedPixelBuffer32BGRA(__CVBuffer *a1, vImagePixelCount a2, vImagePixelCount a3, const unsigned __int8 *a4)
{
  CVPixelBuffer32ARGBFrom32BGRA = createCVPixelBuffer32ARGBFrom32BGRA(a1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___Z30createDilatedPixelBuffer32BGRAP10__CVBuffermmPKh_block_invoke;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = CVPixelBuffer32ARGBFrom32BGRA;
  v8 = MEMORY[0x2743B9AA0](v14);
  DilatedPixelBuffer32ARGB = createDilatedPixelBuffer32ARGB(CVPixelBuffer32ARGBFrom32BGRA, a2, a3, a4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___Z30createDilatedPixelBuffer32BGRAP10__CVBuffermmPKh_block_invoke_2;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = DilatedPixelBuffer32ARGB;
  v10 = MEMORY[0x2743B9AA0](v13);
  CVPixelBuffer32BGRAFrom32ARGB = createCVPixelBuffer32BGRAFrom32ARGB(DilatedPixelBuffer32ARGB);
  v10[2](v10);

  v8[2](v8);
  return CVPixelBuffer32BGRAFrom32ARGB;
}

__CVBuffer *createDilatedPixelBuffer32ARGB(__CVBuffer *a1, vImagePixelCount a2, vImagePixelCount a3, const unsigned __int8 *a4)
{
  CVPixelBufferRetain(a1);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___Z30createDilatedPixelBuffer32ARGBP10__CVBuffermmPKh_block_invoke;
  v15[3] = &__block_descriptor_40_e5_v8__0l;
  v15[4] = a1;
  v8 = MEMORY[0x2743B9AA0](v15);
  IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(a1, v9);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(IOSurfaceBackedPixelBufferCopy, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = CVPixelBufferGetHeight(a1);
  src.width = CVPixelBufferGetWidth(a1);
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(IOSurfaceBackedPixelBufferCopy);
  dest.height = CVPixelBufferGetHeight(IOSurfaceBackedPixelBufferCopy);
  dest.width = CVPixelBufferGetWidth(IOSurfaceBackedPixelBufferCopy);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(IOSurfaceBackedPixelBufferCopy);
  v11 = vImageDilate_ARGB8888(&src, &dest, 0, 0, a4, a2, a3, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(IOSurfaceBackedPixelBufferCopy, 0);
  if (v11)
  {
    CVPixelBufferRelease(IOSurfaceBackedPixelBufferCopy);
    IOSurfaceBackedPixelBufferCopy = 0;
  }

  v8[2](v8);

  return IOSurfaceBackedPixelBufferCopy;
}

CVPixelBufferRef unpremultiplyAlphaIn32ARGB(__CVBuffer *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v20 = *MEMORY[0x277CC4DE8];
  v21[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  CVPixelBufferCreate(0, Width, Height, 0x20u, v4, &pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v6 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v9 = 0;
    v10 = (BaseAddress + 1);
    v11 = v8 + 3;
    do
    {
      v12 = v11;
      v13 = v10;
      for (i = Width; i; --i)
      {
        v15 = *(v13 - 1);
        *(v12 - 3) = v15;
        if (v15)
        {
          *(v12 - 2) = 255 * *v13 / v15;
          *(v12 - 1) = 255 * v13[1] / v15;
          *v12 = 255 * v13[2] / v15;
        }

        v13 += 4;
        v12 += 4;
      }

      ++v9;
      v10 += BytesPerRow;
      v11 += v6;
    }

    while (v9 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v16 = pixelBuffer;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

id IOSurfaceFromCVPixelBuffer(__CVBuffer *a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v3 = *MEMORY[0x277CD2928];
  if (IsPlanar)
  {
    v17[0] = *MEMORY[0x277CD2928];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(a1)];
    v18[0] = v4;
    v17[1] = *MEMORY[0x277CD28D0];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(a1)];
    v18[1] = v5;
    v17[2] = *MEMORY[0x277CD28B8];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(a1)];
    v18[2] = v6;
    v17[3] = *MEMORY[0x277CD28D8];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a1)];
    v18[3] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  }

  else
  {
    v15[0] = *MEMORY[0x277CD2928];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(a1)];
    v16[0] = v4;
    v15[1] = *MEMORY[0x277CD28D0];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(a1)];
    v16[1] = v5;
    v15[2] = *MEMORY[0x277CD28B8];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(a1)];
    v16[2] = v6;
    v15[3] = *MEMORY[0x277CD28B0];
    v9 = MEMORY[0x277CCABB0];
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v7 = [v9 numberWithUnsignedLong:VGGetBytesPerElementFromPixelFormat(PixelFormatType)];
    v16[3] = v7;
    v15[4] = *MEMORY[0x277CD28D8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a1)];
    v16[4] = v11;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  }

  v12 = IOSurfaceFromCVPixelBufferWithProperties(a1, v8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id IOSurfaceFromCVPixelBufferWithProperties(__CVBuffer *a1, void *a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v35 = a2;
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    v46[0] = *MEMORY[0x277CD2928];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(a1)];
    v47[0] = v4;
    v46[1] = *MEMORY[0x277CD28D0];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(a1)];
    v47[1] = v5;
    v46[2] = *MEMORY[0x277CD28D8];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a1)];
    v47[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
    v36 = [v7 mutableCopy];

    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:PlaneCount];
    if (PlaneCount)
    {
      v8 = 0;
      v9 = MEMORY[0x277CD2900];
      v10 = MEMORY[0x277CD28E8];
      do
      {
        v44[0] = *MEMORY[0x277CD2920];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidthOfPlane(a1, v8)}];
        v45[0] = v11;
        v44[1] = *v9;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeightOfPlane(a1, v8)}];
        v45[1] = v12;
        v44[2] = *v10;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetBytesPerRowOfPlane(a1, v8)}];
        v45[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

        [v37 addObject:v14];
        ++v8;
      }

      while (PlaneCount != v8);
    }

    [v36 setObject:v37 forKeyedSubscript:*MEMORY[0x277CD2908]];
    v15 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v36];
    [v15 lockWithOptions:0 seed:0];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = ___ZL32IOSurfaceFromPlanarCVPixelBufferP10__CVBuffer_block_invoke;
    v42[3] = &unk_279E28D98;
    v16 = v15;
    v43 = v16;
    v17 = MEMORY[0x2743B9AA0](v42);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = ___ZL32IOSurfaceFromPlanarCVPixelBufferP10__CVBuffer_block_invoke_2;
    v41[3] = &__block_descriptor_40_e5_v8__0l;
    v41[4] = a1;
    v18 = MEMORY[0x2743B9AA0](v41);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
        v23 = v16;
        memcpy([v16 baseAddressOfPlaneAtIndex:i], BaseAddressOfPlane, HeightOfPlane * BytesPerRowOfPlane);
      }
    }

    v24 = v16;
    v18[2](v18);

    v17[2](v17);
  }

  else
  {
    v25 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v35];
    [v25 lockWithOptions:0 seed:0];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ___Z40IOSurfaceFromCVPixelBufferWithPropertiesP10__CVBufferP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke;
    v39[3] = &unk_279E28D98;
    v26 = v25;
    v40 = v26;
    v27 = MEMORY[0x2743B9AA0](v39);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = ___Z40IOSurfaceFromCVPixelBufferWithPropertiesP10__CVBufferP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke_2;
    v38[3] = &__block_descriptor_40_e5_v8__0l;
    v38[4] = a1;
    v28 = MEMORY[0x2743B9AA0](v38);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    Height = CVPixelBufferGetHeight(a1);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v32 = v26;
    memcpy([v26 baseAddress], BaseAddress, Height * BytesPerRow);
    v24 = v26;
    v28[2](v28);

    v27[2](v27);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

void ___Z32createCVPixelBufferFromIOSurfaceP9IOSurface_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateCVPixelBufferFromIOSurface", &unk_270FBF062, v1, 2u);
  }
}

CVPixelBufferRef create1C32FDepthBufferFromFilePath(NSString *a1, float a2)
{
  v3 = a1;
  v4 = create1C16BufferFromFilePath(v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___Z34create1C32FDepthBufferFromFilePathP8NSStringf_block_invoke;
  v11[3] = &__block_descriptor_40_e5_v8__0l;
  v11[4] = v4;
  v5 = MEMORY[0x2743B9AA0](v11);
  v6 = create32FPixelBufferFrom16UPixelBuffer(v4, 0.0, a2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___Z34create1C32FDepthBufferFromFilePathP8NSStringf_block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v6;
  v7 = MEMORY[0x2743B9AA0](v10);
  PixelBuffer1C32FFromDepth32 = createPixelBuffer1C32FFromDepth32(v6, 1.0);
  v7[2](v7);

  v5[2](v5);
  return PixelBuffer1C32FFromDepth32;
}

CVPixelBufferRef create1C16BufferFromFilePath(NSString *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277CBF758]);
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v1];
  v4 = [v2 initWithContentsOfURL:v3];

  pixelBuffer = 0;
  [v4 extent];
  v6 = v5;
  [v4 extent];
  v8 = v7;
  v15 = *MEMORY[0x277CC4DE8];
  v16[0] = MEMORY[0x277CBEC10];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  CVPixelBufferCreate(0, v6, v8, 0x4C303136u, v9, &pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v10 = [MEMORY[0x277CBF740] context];
  [v10 render:v4 toCVPixelBuffer:pixelBuffer];

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v11 = pixelBuffer;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_270F8EC68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

CVPixelBufferRef createPixelBuffer1C32FFromDepth32(__CVBuffer *a1, float a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v7 = objc_alloc(MEMORY[0x277CD2930]);
  v26[0] = *MEMORY[0x277CD2928];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
  v27[0] = v8;
  v26[1] = *MEMORY[0x277CD28D0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
  v10 = *MEMORY[0x277CD28B0];
  v27[1] = v9;
  v27[2] = &unk_2880F6220;
  v11 = *MEMORY[0x277CD28D8];
  v26[2] = v10;
  v26[3] = v11;
  v27[3] = &unk_2880F6208;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v13 = [v7 initWithProperties:v12];

  vg::IOSurfaceData::IOSurfaceData(v25, v13, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (Height)
  {
    v15 = 0;
    v16 = v25[4];
    v17 = v25[5];
    do
    {
      if (Width)
      {
        v18 = &BaseAddress[4 * v15 * (BytesPerRow >> 2)];
        v19 = &v16[v17 * v15];
        v20 = 4 * Width;
        do
        {
          v21 = *v18++;
          *v19++ = v21 * a2;
          v20 -= 4;
        }

        while (v20);
      }

      ++v15;
    }

    while (v15 != Height);
  }

  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v13);
  vg::IOSurfaceData::~IOSurfaceData(v25);

  v23 = *MEMORY[0x277D85DE8];
  return CVPixelBufferFromIOSurface;
}

void sub_270F8EEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  vg::IOSurfaceData::~IOSurfaceData(&a9);

  _Unwind_Resume(a1);
}

CVPixelBufferRef createPixelBufferDepth32From1C32F(__CVBuffer *a1, float a2)
{
  v31[5] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v7 = objc_alloc(MEMORY[0x277CD2930]);
  v30[0] = *MEMORY[0x277CD2928];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
  v31[0] = v8;
  v30[1] = *MEMORY[0x277CD28D0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
  v31[1] = v9;
  v30[2] = *MEMORY[0x277CD28B8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRow];
  v11 = *MEMORY[0x277CD28B0];
  v31[2] = v10;
  v31[3] = &unk_2880F6220;
  v12 = *MEMORY[0x277CD28D8];
  v30[3] = v11;
  v30[4] = v12;
  v31[4] = &unk_2880F6238;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
  v14 = [v7 initWithProperties:v13];

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  [v14 lockWithOptions:0 seed:0];
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v16 = v14;
  v17 = [v14 baseAddress];
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v19 = &BaseAddress[i * BytesPerRow];
        v20 = (v17 + i * BytesPerRow);
        v21 = 4 * Width;
        do
        {
          v22 = *v19++;
          *v20++ = v22 * a2;
          v21 -= 4;
        }

        while (v21);
      }
    }
  }

  [v14 unlockWithOptions:0 seed:0];
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  v27 = 0;
  v28 = *MEMORY[0x277CC4DE8];
  v29 = MEMORY[0x277CBEC10];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  if (CVPixelBufferCreateWithIOSurface(0, v14, v23, &v27))
  {
    v24 = 0;
  }

  else
  {
    v24 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t normalizeRGBAToSRGBA(IOSurface *a1, IOSurface *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v17 = __VGLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " No surface provided ", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!v4)
  {
    v17 = __VGLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " No output surface provided ", buf, 2u);
    }

    goto LABEL_27;
  }

  if ([(IOSurface *)v3 pixelFormat]!= 1380410945)
  {
    v17 = __VGLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = vg::OSTypeToString([(IOSurface *)v3 pixelFormat]);
      v19 = vg::OSTypeToString(0x52476641);
      *buf = 138412546;
      v49 = v18;
      v50 = 2112;
      v51 = v19;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Input surface pixel format not supported: %@ (expecting %@) ", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if ([(IOSurface *)v5 pixelFormat]!= 1380401729)
  {
    v17 = __VGLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = vg::OSTypeToString([(IOSurface *)v5 pixelFormat]);
      v21 = vg::OSTypeToString(0x52474241);
      *buf = 138412546;
      v49 = v20;
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Output surface pixel format not supported: %@ (expecting %@) ", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v6 = [(IOSurface *)v5 width];
  if (v6 != [(IOSurface *)v3 width]|| (v7 = [(IOSurface *)v5 height], v7 != [(IOSurface *)v3 height]))
  {
    v17 = __VGLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Size mismatch between input and output surfaces ", buf, 2u);
    }

LABEL_27:

    v22 = 0;
    goto LABEL_28;
  }

  vg::IOSurfaceData::IOSurfaceData(buf, v3, 1);
  std::vector<float>::vector[abi:ne200100](&__p, 4 * -[IOSurface height](v3, "height") * -[IOSurface width](v3, "width"));
  for (i = 0; [(IOSurface *)v3 height]> i; ++i)
  {
    for (j = 0; [(IOSurface *)v3 width]> j; ++j)
    {
      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = [(IOSurface *)v3 width];
      v14 = (v10 + v11 * i + v12 * j);
      v15 = j + i * v13;
      v16 = __p;
      *(__p + 4 * v15) = *v14;
      v16[(4 * v15) | 1] = v14[1];
      v16[(4 * v15) | 2] = v14[2];
      v16[(4 * v15) | 3] = v14[3];
    }
  }

  v25 = __p;
  v26 = v47;
  v27 = (__p + 4);
  v28 = __p == v47 || v27 == v47;
  v29 = __p;
  if (!v28)
  {
    v30 = *__p;
    v29 = __p;
    v31 = (__p + 4);
    do
    {
      v32 = *v31++;
      v33 = v32;
      if (v30 < v32)
      {
        v30 = v33;
        v29 = v27;
      }

      v27 = v31;
    }

    while (v31 != v47);
  }

  if (__p != v47)
  {
    v34 = 1.0 / (*v29 + 0.000001);
    do
    {
      *v25 = v34 * *v25;
      ++v25;
    }

    while (v25 != v26);
  }

  vg::IOSurfaceData::IOSurfaceData(v45, v5, 0);
  for (k = 0; [(IOSurface *)v3 height]> k; ++k)
  {
    for (m = 0; [(IOSurface *)v3 width]> m; ++m)
    {
      v37 = v45[4];
      v38 = v45[5];
      v39 = v45[6];
      v40 = [(IOSurface *)v3 width];
      v41 = 4 * (m + k * v40);
      v42 = &v37[v38 * k + v39 * m];
      *v42 = (vg::shared::linearRGBToSRGB(v40, *(__p + v41)) * 255.0);
      v42[1] = (vg::shared::linearRGBToSRGB(v43, *(__p + (v41 | 1))) * 255.0);
      v42[2] = (vg::shared::linearRGBToSRGB(v44, *(__p + (v41 | 2))) * 255.0);
      v42[3] = -1;
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v45);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  vg::IOSurfaceData::~IOSurfaceData(buf);
  v22 = 1;
LABEL_28:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}