void PreFaultedCVPixelBufferPool::PreFaultedCVPixelBufferPool(PreFaultedCVPixelBufferPool *this, __CVPixelBufferPool *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Null CVPixelBufferPoolRef");
    goto LABEL_14;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Pool capacity must be greater than 0");
LABEL_14:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_27A717EE0, MEMORY[0x277D82610]);
  }

  if (qword_280A71598 == -1)
  {
    if (_MergedGlobals_0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v7 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x277CAFFE0](v7, "Unable to determine virtual memory page size");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  PreFaultedCVPixelBufferPool::PreFaultedCVPixelBufferPool();
  if (!_MergedGlobals_0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = pthread_mutex_init((this + 48), 0);
  v5 = pthread_cond_init((this + 112), 0);
  if (v4 | v5)
  {
    if (!v5)
    {
      pthread_cond_destroy((this + 112));
    }

    if (!v4)
    {
      pthread_mutex_destroy((this + 48));
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x277CAFFE0](v9, "Unable to initialize mutex/condition variable");
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  pthread_mutex_lock((this + 48));
  CVPixelBufferPoolRetain(*this);
  v6 = *(this + 1);
  if (v6 > (*(this + 5) - *(this + 3)) >> 3)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 20) = dispatch_queue_create(PreFaultedCVPixelBufferPool::fillQueueName, 0);
  *(this + 16) = 1;
  pthread_mutex_unlock((this + 48));
  dispatch_async_f(*(this + 20), this, PreFaultedCVPixelBufferPool::fillPool);
}

void sub_277820F68(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t PreFaultedCVPixelBufferPool::fillPool(PreFaultedCVPixelBufferPool *this, void *a2)
{
  pthread_mutex_lock((this + 48));
  if (*(this + 1) > ((*(this + 4) - *(this + 3)) >> 3))
  {
    while (1)
    {
      if (*(this + 17))
      {
        goto LABEL_38;
      }

      pthread_mutex_unlock((this + 48));
      pixelBuffer = 0;
      v5 = CVPixelBufferPoolCreatePixelBuffer(0, *this, &pixelBuffer);
      if (v5 || pixelBuffer == 0)
      {
        break;
      }

      v3 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      v4 = pixelBuffer;
      if (!v3)
      {
        PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
        if (PlaneCount)
        {
          v8 = 0;
          if (PlaneCount <= 1)
          {
            v9 = 1;
          }

          else
          {
            v9 = PlaneCount;
          }

          while (1)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v8);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v8);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v8);
            if (qword_280A71598 == -1)
            {
              v13 = _MergedGlobals_0;
              if (_MergedGlobals_0)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v18 = BytesPerRowOfPlane;
              PreFaultedCVPixelBufferPool::fillPool();
              BytesPerRowOfPlane = v18;
              v13 = _MergedGlobals_0;
              if (_MergedGlobals_0)
              {
LABEL_22:
                v14 = BytesPerRowOfPlane * HeightOfPlane - 1;
                v15 = v14 + v13;
                if (!__CFADD__(v14, v13))
                {
                  v16 = BaseAddressOfPlane;
                  v17 = v15 / v13;
                  do
                  {
                    *v16 = 0;
                    v16 += v13;
                    --v17;
                  }

                  while (v17);
                }

                BaseAddressOfPlane[BytesPerRowOfPlane * HeightOfPlane - 1] = 0;
              }
            }

            if (++v8 == v9)
            {
              goto LABEL_34;
            }
          }
        }

        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        if (qword_280A71598 == -1)
        {
          v22 = _MergedGlobals_0;
          if (_MergedGlobals_0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v27 = BytesPerRow;
          PreFaultedCVPixelBufferPool::fillPool();
          BytesPerRow = v27;
          v22 = _MergedGlobals_0;
          if (_MergedGlobals_0)
          {
LABEL_30:
            v23 = BytesPerRow * Height - 1;
            v24 = v23 + v22;
            if (!__CFADD__(v23, v22))
            {
              v25 = BaseAddress;
              v26 = v24 / v22;
              do
              {
                *v25 = 0;
                v25 += v22;
                --v26;
              }

              while (v26);
            }

            BaseAddress[BytesPerRow * Height - 1] = 0;
          }
        }

LABEL_34:
        if (!CVPixelBufferUnlockBaseAddress(pixelBuffer, 0))
        {
          goto LABEL_5;
        }

LABEL_35:
        v4 = pixelBuffer;
      }

      CVPixelBufferRelease(v4);
      pixelBuffer = 0;
LABEL_5:
      pthread_mutex_lock((this + 48));
      std::vector<__CVBuffer *>::push_back[abi:ne200100](this + 24, &pixelBuffer);
      pthread_cond_signal((this + 112));
      if (*(this + 1) <= ((*(this + 4) - *(this + 3)) >> 3))
      {
        goto LABEL_38;
      }
    }

    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_38:
  *(this + 16) = 0;
  return pthread_mutex_unlock((this + 48));
}

void PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(PreFaultedCVPixelBufferPool *this)
{
  pthread_mutex_lock((this + 48));
  *(this + 17) = 1;
  pthread_mutex_unlock((this + 48));
  dispatch_sync(*(this + 20), &__block_literal_global);
  pthread_mutex_lock((this + 48));
  v2 = *(this + 4);
  if (v2 != *(this + 3))
  {
    do
    {
      CVPixelBufferRelease(*(v2 - 8));
      v3 = *(this + 3);
      v2 = *(this + 4) - 8;
      *(this + 4) = v2;
    }

    while (v2 != v3);
  }

  pthread_mutex_unlock((this + 48));
  dispatch_release(*(this + 20));
  CVPixelBufferPoolRelease(*this);
  pthread_cond_destroy((this + 112));
  pthread_mutex_destroy((this + 48));
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

uint64_t PreFaultedCVPixelBufferPool::newCVPixelBuffer(PreFaultedCVPixelBufferPool *this)
{
  pthread_mutex_lock((this + 48));
  v3 = *(this + 3);
  for (i = *(this + 4); i == v3; i = *(this + 4))
  {
    pthread_cond_wait((this + 112), (this + 48));
    v3 = *(this + 3);
  }

  v6 = *(i - 8);
  v4 = i - 8;
  v5 = v6;
  *(this + 4) = v4;
  if ((*(this + 16) & 1) != 0 || *(this + 1) <= ((v4 - v3) >> 3))
  {
    pthread_mutex_unlock((this + 48));
    return v5;
  }

  else
  {
    *(this + 16) = 1;
    pthread_mutex_unlock((this + 48));
    dispatch_async_f(*(this + 20), this, PreFaultedCVPixelBufferPool::fillPool);
    return v5;
  }
}

BOOL PreFaultedCVPixelBufferPool::setCapacity(PreFaultedCVPixelBufferPool *this, unint64_t a2)
{
  if (a2)
  {
    pthread_mutex_lock((this + 48));
    *(this + 1) = a2;
    if (a2 > (*(this + 5) - *(this + 3)) >> 3)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
    }

    if ((*(this + 16) & 1) != 0 || *(this + 1) <= ((*(this + 4) - *(this + 3)) >> 3))
    {
      pthread_mutex_unlock((this + 48));
    }

    else
    {
      *(this + 16) = 1;
      pthread_mutex_unlock((this + 48));
      dispatch_async_f(*(this + 20), this, PreFaultedCVPixelBufferPool::fillPool);
    }
  }

  return a2 != 0;
}

void std::vector<__CVBuffer *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t ___ZL13getVMPageSizev_block_invoke()
{
  v3 = 0;
  v2 = 4;
  result = sysctlbyname("hw.pagesize", &v3, &v2, 0, 0);
  if (!result && v2 == 4 && v3 >= 1)
  {
    _MergedGlobals_0 = v3;
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27A717ED8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void MemoryBufferCache::MemoryBufferCache(MemoryBufferCache *this, int a2)
{
  v2 = 0;
  *this = &unk_28866ABF0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a2)
  {
    v3 = this;
    v2 = dispatch_semaphore_create(1);
    this = v3;
  }

  *(this + 4) = v2;
}

void MemoryBufferCache::~MemoryBufferCache(MemoryBufferCache *this)
{
  *this = &unk_28866ABF0;
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 != v3)
  {
    do
    {
      if (*v4)
      {
        MEMORY[0x277CB0020](*v4, 0x1000C8077774924);
        v3 = *(this + 2);
      }

      v4 += 2;
    }

    while (v4 != v3);
    v4 = *(this + 1);
  }

  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_28866ABF0;
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 != v3)
  {
    do
    {
      if (*v4)
      {
        MEMORY[0x277CB0020](*v4, 0x1000C8077774924);
        v3 = *(this + 2);
      }

      v4 += 2;
    }

    while (v4 != v3);
    v4 = *(this + 1);
  }

  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x277CB0040);
}

uint64_t MemoryBufferCache::obtainMemoryBuffer(MemoryBufferCache *this, int a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  for (i = *(this + 1); ; i += 2)
  {
    if (i == *(this + 2))
    {
      goto LABEL_9;
    }

    if (*(i + 2) >= a2 && (*(i + 12) & 1) != 0)
    {
      break;
    }
  }

  *(i + 12) = 0;
  v6 = *i;
  if (!*i)
  {
LABEL_9:
    operator new[]();
  }

  v7 = *(this + 4);
  if (v7)
  {
    dispatch_semaphore_signal(v7);
  }

  return v6;
}

void std::vector<MemoryBufferCache::MemoryBufferRecord>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

NSObject *MemoryBufferCache::returnMemoryBuffer(MemoryBufferCache *this, unsigned __int8 *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
LABEL_6:
    result = *(this + 4);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  while (*v5 != a2)
  {
    v5 += 16;
    if (v5 == v6)
    {
      goto LABEL_6;
    }
  }

  *(v5 + 12) = 1;
  result = *(this + 4);
  if (result)
  {
LABEL_7:

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void SharedDataBuffer::~SharedDataBuffer(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void SharedDataBuffer::reset(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  *this = 0;
}

uint64_t SharedDataBuffer::allocateBackingBytes(uint64_t this)
{
  if (this)
  {
    JUMPOUT(0x277CAFB90);
  }

  return this;
}

void SharedDataBuffer::reset(const void **this, UInt8 *bytes, CFIndex length)
{
  v6 = *this;
  if (v6)
  {
    CFRelease(v6);
  }

  *this = 0;
  if (bytes)
  {
    v7 = *MEMORY[0x277CBECE8];
    if (!length || (v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBECE8]), (*this = v8) == 0))
    {

      CFAllocatorDeallocate(v7, bytes);
    }
  }
}

void SharedDataBuffer::SharedDataBuffer(SharedDataBuffer *this, CFDataRef *a2)
{
  *this = 0;
  v3 = *a2;
  if (*a2)
  {
    if (CFDataGetBytePtr(*a2) && CFDataGetLength(v3))
    {
      CFRetain(v3);
      v4 = *this;
      if (!*this)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v3 = 0;
    v4 = *this;
    if (*this)
    {
LABEL_7:
      CFRelease(v4);
    }
  }

LABEL_8:
  *this = v3;
}

uint64_t ProResSWDecoderRegister()
{
  v0 = 1;
  v1 = MGGetProductType();
  if (v1 > 2103978417)
  {
    if (v1 <= 3101941569)
    {
      if (v1 > 2628394913)
      {
        if (v1 == 2628394914 || v1 == 2644487444)
        {
          goto LABEL_37;
        }

        v2 = 3054476161;
      }

      else
      {
        if (v1 == 2103978418 || v1 == 2236272848)
        {
          goto LABEL_37;
        }

        v2 = 2458172802;
      }
    }

    else if (v1 <= 3599094682)
    {
      if (v1 == 3101941570 || v1 == 3196158497)
      {
        goto LABEL_37;
      }

      v2 = 3540156652;
    }

    else if (v1 > 3801472100)
    {
      if (v1 == 3801472101)
      {
        goto LABEL_37;
      }

      v2 = 3863625342;
    }

    else
    {
      if (v1 == 3599094683)
      {
        goto LABEL_37;
      }

      v2 = 3636345305;
    }
  }

  else if (v1 <= 1293446024)
  {
    if (v1 > 746003605)
    {
      if (v1 == 746003606 || v1 == 789142227)
      {
        goto LABEL_37;
      }

      v2 = 851437781;
    }

    else
    {
      if (v1 == 240711087 || v1 == 341800273)
      {
        goto LABEL_37;
      }

      v2 = 574536383;
    }
  }

  else if (v1 <= 1834147426)
  {
    if (v1 == 1293446025 || v1 == 1353145733)
    {
      goto LABEL_37;
    }

    v2 = 1373516433;
  }

  else if (v1 > 2001966016)
  {
    if (v1 == 2001966017)
    {
      goto LABEL_37;
    }

    v2 = 2023824667;
  }

  else
  {
    if (v1 == 1834147427)
    {
      goto LABEL_37;
    }

    v2 = 1868379043;
  }

  if (v1 != v2)
  {
    v5 = IOServiceMatching("AppleProResHW");
    if (v5)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v5);
      if (MatchingService)
      {
        IOObjectRelease(MatchingService);
        goto LABEL_37;
      }

      if (IcpUtility::logLevel(MatchingService) < 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "IOServiceGetMatchingService failed";
      v9 = buf;
    }

    else
    {
      if (IcpUtility::logLevel(0) < 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_56:
        if (!MGGetSInt32Answer())
        {
          v0 = isAdditionalSupportedCPUFamily();
        }

        goto LABEL_37;
      }

      v12 = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "IOServiceMatching failed";
      v9 = &v12;
    }

    _os_log_impl(&dword_277820000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_56;
  }

LABEL_37:
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"enableProResSWDecoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = result;
  }

  else
  {
    v4 = v0;
  }

  if (v4)
  {
    if (IcpUtility::logLevel(result) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_277820000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Registering ProRes SW Decoder...", v10, 2u);
    }

    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    VTRegisterVideoDecoderWithInfo();
    return VTRegisterVideoDecoderWithInfo();
  }

  return result;
}

BOOL isAdditionalSupportedCPUFamily(void)
{
  v6 = 0;
  v5 = 4;
  v0 = sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0);
  if (!v0)
  {
    return v6 == -1422631159 || v6 == 30910251 || v6 == 541402832;
  }

  if (IcpUtility::logLevel(v0) < 1)
  {
    return 0;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v4 = 0;
      _os_log_impl(&dword_277820000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to get cpufamily", v4, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::createInstance(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    v4 = 4294954389;
  }

  *a3 = 0;
  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t VideoCodecBase<IcpVideoDecoder>::Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v1 + 48))(v1);
    kdebug_trace();
    goto LABEL_7;
  }

  v1 = 0;
  if (enabledSignpostCategories())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v1)
  {
    v2 = 4294954390;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v2;
    }

    goto LABEL_8;
  }

LABEL_7:
  v2 = (*(*v1 + 16))(v1);
  if (enabledSignpostCategories())
  {
LABEL_8:
    (*(*v1 + 48))(v1);
    kdebug_trace();
  }

  return v2;
}

uint64_t VideoCodecBase<IcpVideoDecoder>::Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (DerivedStorage)
  {
    v2 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  (*(*v2 + 48))(v2);
  kdebug_trace();
LABEL_7:
  (*(*v2 + 24))(v2);
  (*(*v2 + 8))(v2);
  *v1 = 0;
LABEL_8:
  result = enabledSignpostCategories();
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t VideoCodecBase<IcpVideoDecoder>::CopyProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954390;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954390;
  }

  v2 = *(*v1 + 32);

  return v2();
}

uint64_t VideoCodecBase<IcpVideoDecoder>::SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954390;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954390;
  }

  v2 = *(*v1 + 40);

  return v2();
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::StartSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294954394;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v7 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = *DerivedStorage;
  if (enabledSignpostCategories())
  {
LABEL_6:
    kdebug_trace();
  }

LABEL_7:
  if (!v7)
  {
    v3 = 4294954390;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v3 = (*(*v7 + 56))(v7, a2, a3);
  if (enabledSignpostCategories())
  {
LABEL_9:
    kdebug_trace();
  }

  return v3;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::DecodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 4294954394;
  if (!a1 || !a2 || !a3)
  {
    return v5;
  }

  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v11 = 0;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = *DerivedStorage;
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_6:
    kdebug_trace();
  }

LABEL_7:
  if (!v11)
  {
    v5 = 4294954390;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v5 = (*(*v11 + 64))(v11, a2, a3, a4, a5);
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_9:
    kdebug_trace();
  }

  return v5;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  result = 4294954394;
  if (a1 && a2)
  {
    VTVideoDecoderGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage && (v6 = *DerivedStorage) != 0)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        CFRetain(v7);
        result = 0;
        *a2 = *(v6 + 24);
      }

      else
      {
        return 4294954392;
      }
    }

    else
    {
      return 4294954390;
    }
  }

  return result;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::CanAcceptFormatDescription(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      VTVideoDecoderGetCMBaseObject();
      result = CMBaseObjectGetDerivedStorage();
      if (result)
      {
        result = *result;
        if (result)
        {
          return (*(*result + 72))(result, a2);
        }
      }
    }
  }

  return result;
}

void IcpVideoDecoder::IcpVideoDecoder(IcpVideoDecoder *this, int a2)
{
  v2 = VideoDecoderBase<IcpVideoDecoder>::VideoDecoderBase(this, a2);
  *v2 = &unk_28866ACF8;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  *(v2 + 100) = 0;
  *(v2 + 92) = 0;
  *(v2 + 108) = 0;
  operator new();
}

void sub_277822B7C(_Unwind_Exception *a1)
{
  MEMORY[0x277CB0040](v2, 0xA1C40987D6AD5);
  VideoDecoderBase<IcpVideoDecoder>::~VideoDecoderBase(v1);
  _Unwind_Resume(a1);
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::VideoDecoderBase(uint64_t a1, int a2)
{
  *a1 = &unk_28866AEF8;
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  *(a1 + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 32) = 0;
  *a1 = &unk_28866AE68;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = dispatch_queue_create("PixelBufferPoolDeletion", 0);
  v6 = CFDictionaryCreate(v3, 0, 0, 0, v4, v5);
  if (v6)
  {
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26C8], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26E0], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE2648], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26F0], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26E8], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26A8], v6);
    CFDictionaryAddValue(*(a1 + 24), @"DecoderPrefaultedCVPixelBufferPoolCapacity", v6);
    CFRelease(v6);
  }

  return a1;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::~VideoDecoderBase(uint64_t a1)
{
  *a1 = &unk_28866AE68;
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_54);
    dispatch_release(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v3);
    MEMORY[0x277CB0040]();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = &unk_28866AEF8;
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

void IcpVideoDecoder::~IcpVideoDecoder(IcpVideoDecoder *this)
{
  *this = &unk_28866ACF8;
  v2 = *(this + 19);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_0);
  }

  v3 = *(this + 20);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11);
  }

  v4 = *(this + 10);
  if (v4)
  {
    FrameDecoder::~FrameDecoder(v4);
    MEMORY[0x277CB0040]();
  }

  v5 = *(this + 17);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    dispatch_release(v8);
  }

  VideoDecoderBase<IcpVideoDecoder>::~VideoDecoderBase(this);
}

{
  IcpVideoDecoder::~IcpVideoDecoder(this);

  JUMPOUT(0x277CB0040);
}

uint64_t IcpVideoDecoder::startSession(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  v64 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = a2;
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(v6);
  width = Dimensions.width;
  *(a1 + 52) = Dimensions;
  *(a1 + 92) = Dimensions;
  DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes();
  *(a1 + 104) = 0;
  if (!DestinationPixelBufferAttributes)
  {
    goto LABEL_71;
  }

  v10 = DestinationPixelBufferAttributes;
  v11 = *MEMORY[0x277CC4EC8];
  if (*MEMORY[0x277CC4EC8])
  {
    v12 = *(a1 + 100);
    number = 0;
    if (CFDictionaryGetValueIfPresent(DestinationPixelBufferAttributes, v11, &number))
    {
      if (!CFNumberGetValue(number, kCFNumberIntType, (a1 + 100)))
      {
        *(a1 + 100) = v12;
      }
    }
  }

  Value = CFDictionaryGetValue(v10, *MEMORY[0x277CC4E30]);
  v14 = Value;
  v15 = 4 * width;
  v16 = *(a1 + 100);
  if ((width > 1440 || v15 != 3 * v16) && (width > 1280 || 3 * width != 2 * v16))
  {
    if (!Value)
    {
      goto LABEL_71;
    }

    v29 = CFGetTypeID(Value);
    if (v29 != CFNumberGetTypeID())
    {
      goto LABEL_71;
    }

    LODWORD(number) = 0;
    v30 = CFNumberGetValue(v14, kCFNumberSInt32Type, &number);
    v25 = 0;
    if (!v30)
    {
      goto LABEL_72;
    }

    if (number > 2033463351)
    {
      if (number != 2033463606)
      {
        v31 = 2033463352;
LABEL_119:
        if (number != v31)
        {
          goto LABEL_72;
        }
      }
    }

    else if (number != 846624121)
    {
      v31 = 1983000886;
      goto LABEL_119;
    }

    v25 = number;
    goto LABEL_72;
  }

  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFNumberGetTypeID())
    {
      LODWORD(number) = 0;
      if (CFNumberGetValue(v14, kCFNumberSInt32Type, &number))
      {
        v18 = number;
        v19 = *(a1 + 100);
        v20 = 3 * v19;
        if (v15 != 3 * v19 && 3 * width != 2 * v19)
        {
          v21 = 0;
          goto LABEL_114;
        }

        v21 = 0;
        if (number <= 1916022839)
        {
          if (number > 1111970368)
          {
            if (number != 1111970369)
            {
              if (number != 1647719521)
              {
                goto LABEL_114;
              }

              v22 = v15 == v20;
              v21 = scale_horizontal_2to3_4444_16bBE;
              v23 = scale_horizontal_3to4_4444_16bBE;
              goto LABEL_112;
            }
          }

          else if (number != 32)
          {
            if (number != 846624121)
            {
              goto LABEL_114;
            }

            v22 = v15 == v20;
            v21 = scale_horizontal_2to3_2vuy;
            v23 = scale_horizontal_3to4_2vuy;
            goto LABEL_112;
          }
        }

        else
        {
          if (number > 1983131703)
          {
            if (number != 1983131704 && number != 2033463352)
            {
              if (number == 2033463606)
              {
                v22 = v15 == v20;
                v21 = scale_horizontal_2to3_4444_16bLE;
                v23 = scale_horizontal_3to4_4444_16bLE;
                goto LABEL_112;
              }

LABEL_114:
              *(a1 + 104) = v21;
              if (v21)
              {
                v25 = v18;
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_72;
            }

            goto LABEL_111;
          }

          if (number != 1916022840)
          {
            if (number != 1983000886)
            {
              goto LABEL_114;
            }

            v22 = v15 == v20;
            v21 = scale_horizontal_2to3_v216;
            v23 = scale_horizontal_3to4_v216;
LABEL_112:
            if (v22)
            {
              v21 = v23;
            }

            goto LABEL_114;
          }
        }

LABEL_111:
        v22 = v15 == v20;
        v21 = scale_horizontal_2to3_4444_8b;
        v23 = scale_horizontal_3to4_4444_8b;
        goto LABEL_112;
      }

LABEL_71:
      v25 = 0;
      goto LABEL_72;
    }

    v32 = CFGetTypeID(v14);
    if (v32 != CFArrayGetTypeID())
    {
      goto LABEL_71;
    }

    Count = CFArrayGetCount(v14);
    v34 = (*(*a1 + 96))(a1);
    v35 = CFArrayGetCount(v34);
    if (v35 < 1)
    {
      goto LABEL_71;
    }

    v36 = 0;
    v37 = v35 & 0x7FFFFFFF;
    v38 = 3 * width;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
      LODWORD(number) = 0;
      if (!CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &number))
      {
        goto LABEL_43;
      }

      v40 = *(a1 + 100);
      v41 = 2 * v40;
      v42 = 3 * v40;
      if (v15 != v42 && v38 != v41)
      {
LABEL_42:
        *(a1 + 104) = 0;
        goto LABEL_43;
      }

      if (number <= 1916022839)
      {
        if (number > 1111970368)
        {
          if (number == 1111970369)
          {
            goto LABEL_66;
          }

          if (number != 1647719521)
          {
            goto LABEL_42;
          }

          v44 = v15 == v42;
          v45 = scale_horizontal_2to3_4444_16bBE;
          v46 = scale_horizontal_3to4_4444_16bBE;
        }

        else
        {
          if (number == 32)
          {
            goto LABEL_66;
          }

          if (number != 846624121)
          {
            goto LABEL_42;
          }

          v44 = v15 == v42;
          v45 = scale_horizontal_2to3_2vuy;
          v46 = scale_horizontal_3to4_2vuy;
        }
      }

      else if (number <= 1983131703)
      {
        if (number == 1916022840)
        {
          goto LABEL_66;
        }

        if (number != 1983000886)
        {
          goto LABEL_42;
        }

        v44 = v15 == v42;
        v45 = scale_horizontal_2to3_v216;
        v46 = scale_horizontal_3to4_v216;
      }

      else
      {
        if (number == 1983131704 || number == 2033463352)
        {
LABEL_66:
          v44 = v15 == v42;
          v45 = scale_horizontal_2to3_4444_8b;
          v46 = scale_horizontal_3to4_4444_8b;
          goto LABEL_67;
        }

        if (number != 2033463606)
        {
          goto LABEL_42;
        }

        v44 = v15 == v42;
        v45 = scale_horizontal_2to3_4444_16bLE;
        v46 = scale_horizontal_3to4_4444_16bLE;
      }

LABEL_67:
      if (v44)
      {
        v45 = v46;
      }

      *(a1 + 104) = v45;
      v65.location = 0;
      v65.length = Count;
      if (CFArrayContainsValue(v14, v65, ValueAtIndex))
      {
        v25 = number;
        goto LABEL_72;
      }

LABEL_43:
      if (v37 == ++v36)
      {
        goto LABEL_71;
      }
    }
  }

  v24 = codecTypeIs444(*(a1 + 12));
  if (v24)
  {
    v25 = 2033463606;
  }

  else
  {
    v25 = 1983000886;
  }

  v26 = *(a1 + 100);
  if (v15 == 3 * v26 || 3 * width == 2 * v26)
  {
    if (v24)
    {
      v27 = scale_horizontal_2to3_4444_16bLE;
      v28 = scale_horizontal_3to4_4444_16bLE;
    }

    else
    {
      v27 = scale_horizontal_2to3_v216;
      v28 = scale_horizontal_3to4_v216;
    }

    if (v15 == 3 * v26)
    {
      v27 = v28;
    }

    *(a1 + 104) = v27;
  }

  else
  {
    *(a1 + 104) = 0;
  }

LABEL_72:
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 124) = 0xFFFFFFFF00000000;
  if ((*(*a1 + 88))(a1, v25))
  {
    return 4294954392;
  }

  pixelBufferOut = 0;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  result = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut);
  if (!result)
  {
    *(a1 + 48) = CVPixelBufferGetPixelFormatType(pixelBufferOut);
    if (pixelBufferOut)
    {
      CVPixelBufferRelease(pixelBufferOut);
    }

    v49 = *(a1 + 40);
    if (v49)
    {
      CFRelease(v49);
    }

    SuggestedQualityOfServiceTiers = IcpVideoDecoder::createSuggestedQualityOfServiceTiers(*(a1 + 48), *(a1 + 92), *(a1 + 96));
    *(a1 + 40) = SuggestedQualityOfServiceTiers;
    if (!*(a1 + 80))
    {
      operator new();
    }

    if (IcpUtility::logLevel(SuggestedQualityOfServiceTiers) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 48);
      if (v51 == 32)
      {
        v52 = &v57;
        number = 0x2942475241283233;
        v53 = 8;
      }

      else
      {
        v52 = (&number + 4);
        LODWORD(number) = bswap32(v51);
        v53 = 4;
      }

      *v52 = 0;
      v58 = v53;
      *buf = 134218242;
      v61 = a1;
      v62 = 2080;
      p_number = &number;
      _os_log_impl(&dword_277820000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IcpVideoDecoder[%p]: Pixel buffer format is '%s'\n", buf, 0x16u);
      if (v58 < 0)
      {
        operator delete(number);
      }
    }

    if (maxConcurrentJobs(void)::s_predicate != -1)
    {
      IcpVideoDecoder::startSession();
    }

    *(a1 + 144) = dispatch_semaphore_create(maxConcurrentJobs(void)::s_maxConcurrentJobs);
    *(a1 + 152) = dispatch_queue_create("PRDecode1", 0);
    v54 = dispatch_queue_create("PRDecode2", 0);
    *(a1 + 160) = v54;
    if (!*(a1 + 144))
    {
      return 4294954392;
    }

    v55 = v54;
    result = 4294954392;
    if (*(a1 + 152))
    {
      if (v55)
      {
        result = 0;
        *(a1 + 8) = 1;
      }
    }
  }

  return result;
}

void sub_277823814(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x277CB0040](v2, 0x1020C4014CBC42BLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2778234A4);
  }

  _Unwind_Resume(a1);
}

CFArrayRef IcpVideoDecoder::createSuggestedQualityOfServiceTiers(IcpVideoDecoder *this, int a2, int a3)
{
  v5 = this;
  v19 = *MEMORY[0x277D85DE8];
  *v18 = 0u;
  *v17 = 0u;
  *v16 = 0u;
  cf = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(a2, a3);
  v6 = 1;
  if (v5 <= 1983000885)
  {
    if (v5 != 846624121 && v5 != 1916022840)
    {
      goto LABEL_20;
    }
  }

  else if (v5 != 1983000886 && v5 != 2033463606 && v5 != 2033463352)
  {
    goto LABEL_20;
  }

  v16[0] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(a2, a3 / 2);
  v7 = a2 / 2;
  v16[1] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(a2 / 2, a3 / 2);
  v8 = a3 + 3;
  if (a2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 + 3;
  }

  if (a2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 + 7;
  }

  if (a3 >= 0)
  {
    v8 = a3;
  }

  v11 = v8 >> 2;
  if (a3 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = a3 + 7;
  }

  v17[0] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v7, v11);
  v17[1] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v9 >> 2, v11);
  v18[0] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v9 >> 2, v12 >> 3);
  v18[1] = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v10 >> 3, v12 >> 3);
  v6 = 7;
LABEL_20:
  v13 = CFArrayCreate(*MEMORY[0x277CBECE8], &cf, v6, MEMORY[0x277CBF128]);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16[0])
  {
    CFRelease(v16[0]);
  }

  if (v16[1])
  {
    CFRelease(v16[1]);
  }

  if (v17[0])
  {
    CFRelease(v17[0]);
  }

  if (v17[1])
  {
    CFRelease(v17[1]);
  }

  if (v18[0])
  {
    CFRelease(v18[0]);
  }

  if (v18[1])
  {
    CFRelease(v18[1]);
  }

  return v13;
}

uint64_t IcpVideoDecoder::decodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, int *a5)
{
  if (*(a1 + 8) != 1)
  {
    return 4294954393;
  }

  v8 = *(a1 + 88);
  v9 = v8 > 5;
  v10 = (1 << v8) & 0x3A;
  if (v9 || v10 == 0)
  {
    v21 = *(a1 + 48);
    if (v21 <= 1983000885)
    {
      if (v21 == 846624121)
      {
        goto LABEL_6;
      }

      v22 = 1916022840;
    }

    else
    {
      if (v21 == 1983000886 || v21 == 2033463352)
      {
        goto LABEL_6;
      }

      v22 = 2033463606;
    }

    if (v21 != v22)
    {
      v76 = 0;
      v12 = 4294954394;
      goto LABEL_12;
    }
  }

LABEL_6:
  v76 = 0;
  if (VideoDecoderBase<IcpVideoDecoder>::newCVPixelBufferFromPool(a1, &v76) || !v76)
  {
    CVPixelBufferRelease(v76);
    v76 = 0;
    v12 = 4294954392;
    goto LABEL_12;
  }

  if (!CVPixelBufferLockBaseAddress(v76, 0))
  {
    sbuf = a3;
    LOBYTE(a3) = 0;
    *(v75 + 3) = 0;
    v75[0] = 0;
    v23 = *(a1 + 104);
    v24 = 100;
    if (!v23)
    {
      v24 = 52;
    }

    v26 = *(a1 + 88);
    v25 = *(a1 + 92);
    v27 = v25 + 15;
    v9 = v25 < -15;
    v28 = v25 + 30;
    if (v9)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    v30 = *(a1 + 48);
    if ((v26 - 6) <= 5)
    {
      LODWORD(a3) = dword_27787514C[v26 - 6];
    }

    v49 = *(a1 + v24);
    v31 = *(a1 + 56);
    NumBytesPerPixelData = PixelBuffer::getNumBytesPerPixelData(v30);
    LODWORD(v50) = v31;
    if (v30 == 1983000880 || (v33 = ((v29 & 0xFFFFFFF0) >> a3) * NumBytesPerPixelData, CVPixelBufferGetBytesPerRow(v76) >= v33))
    {
      if (CVPixelBufferIsPlanar(v76))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v76, 0);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v76, 0);
        v35 = CVPixelBufferGetBaseAddressOfPlane(v76, 1uLL);
        v45 = CVPixelBufferGetBytesPerRowOfPlane(v76, 1uLL);
        v46 = v35;
        if (v35)
        {
          v12 = 0;
        }

        else
        {
          v12 = 4294954392;
        }

        if (CVPixelBufferGetPlaneCount(v76) < 3)
        {
          v44 = 0;
          v42 = 0;
          v43 = 0;
          a3 = sbuf;
          v51 = v23;
          HIDWORD(v50) = v30;
          if (!BaseAddressOfPlane)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v36 = CVPixelBufferGetBaseAddressOfPlane(v76, 2uLL);
          v42 = CVPixelBufferGetBytesPerRowOfPlane(v76, 2uLL);
          v43 = v36;
          v44 = 0;
          if (v36)
          {
            v12 = v12;
          }

          else
          {
            v12 = 4294954392;
          }

          a3 = sbuf;
          v51 = v23;
          HIDWORD(v50) = v30;
          if (!BaseAddressOfPlane)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v76);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v42 = 0;
        v43 = 0;
        v12 = 0;
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v76);
        a3 = sbuf;
        v51 = v23;
        HIDWORD(v50) = v30;
        if (!BaseAddressOfPlane)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      BytesPerRowOfPlane = v33;
      BaseAddressOfPlane = MemoryBufferCache::obtainMemoryBuffer(*(a1 + 136), *(a1 + 56) * v33);
      v45 = 0;
      v46 = 0;
      v42 = 0;
      v43 = 0;
      v12 = 0;
      v44 = 1;
      a3 = sbuf;
      v51 = v23;
      HIDWORD(v50) = v30;
      if (!BaseAddressOfPlane)
      {
LABEL_43:
        v48 = 0;
        v12 = 4294954392;
        goto LABEL_13;
      }
    }

    v48 = BaseAddressOfPlane;
    if (!v12)
    {
      if (a3)
      {
        if (CMSampleBufferGetNumSamples(a3) == 1)
        {
          SampleSize = CMSampleBufferGetSampleSize(a3, 0);
          DataBuffer = CMSampleBufferGetDataBuffer(a3);
          if (SampleSize)
          {
            v39 = DataBuffer;
            if (CMBlockBufferGetDataLength(DataBuffer) >= SampleSize)
            {
              v72 = 0;
              v73 = 0;
              dataPointerOut = 0;
              lengthAtOffsetOut[0] = 0;
              if (!CMBlockBufferGetDataPointer(v39, 0, lengthAtOffsetOut, 0, &dataPointerOut))
              {
                operator new();
              }

              a3 = sbuf;
            }
          }
        }
      }

      v12 = 4294954387;
    }

    goto LABEL_13;
  }

  CVPixelBufferRelease(v76);
  v76 = 0;
  v12 = 4294954385;
LABEL_12:
  BytesPerRowOfPlane = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  *(v75 + 3) = 0;
  v75[0] = 0;
LABEL_13:
  v13 = a4 & 1;
  if (a4)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v15 = a3;
    if (allowAsyncCallback(void)::s_predicate != -1)
    {
      IcpVideoDecoder::decodeFrame();
    }

    v14 = MEMORY[0x277D85D58];
    if (allowAsyncCallback(void)::s_allowAsyncCallback)
    {
      v17 = MEMORY[0x277D85D58];
    }

    else
    {
      v17 = MEMORY[0x277D85DA0];
    }

    v16 = 1;
  }

  else
  {
    v14 = MEMORY[0x277D85DA0];
    v15 = a3;
    v16 = 0;
    v17 = MEMORY[0x277D85DA0];
  }

  v18 = *(a1 + 88);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = v12;
  dispatch_semaphore_wait(*(a1 + 144), 0xFFFFFFFFFFFFFFFFLL);
  v19 = *(a1 + 152);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 0x40000000;
  v53[2] = ___ZN15IcpVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke;
  v53[3] = &unk_27A717F70;
  v53[4] = &v71;
  v53[5] = a1;
  v53[6] = 0;
  v53[7] = v48;
  v53[8] = v46;
  v53[9] = v43;
  v54 = BytesPerRowOfPlane;
  v55 = v45;
  v56 = v42;
  v57 = HIDWORD(v50);
  v58 = v49;
  v59 = v50;
  v60 = 0;
  *v61 = v75[0];
  *&v61[3] = *(v75 + 3);
  v62 = v51;
  v63 = v76;
  v69 = v13;
  v64 = v17;
  v65 = v15;
  v70 = v44;
  v66 = a2;
  v67 = v18;
  v68 = v16;
  v14(v19, v53);
  if (!v13)
  {
    v12 = *(v72 + 6);
  }

  if (a5)
  {
    *a5 = v16;
  }

  _Block_object_dispose(&v71, 8);
  return v12;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::newCVPixelBufferFromPool(uint64_t a1, CVPixelBufferRef *a2)
{
  if ((enabledSignpostCategories() & 2) != 0)
  {
    kdebug_trace();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    PixelBuffer = 0;
    *a2 = PreFaultedCVPixelBufferPool::newCVPixelBuffer(v4);
    if ((enabledSignpostCategories() & 2) == 0)
    {
      return PixelBuffer;
    }
  }

  else
  {
    PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
    PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, a2);
    if ((enabledSignpostCategories() & 2) == 0)
    {
      return PixelBuffer;
    }
  }

  if (!PixelBuffer)
  {
    if (*a2)
    {
      CVPixelBufferGetWidth(*a2);
      if (*a2)
      {
        CVPixelBufferGetHeight(*a2);
        if (*a2)
        {
          CVPixelBufferGetPixelFormatType(*a2);
        }
      }
    }
  }

  kdebug_trace();
  return PixelBuffer;
}

uint64_t ___ZN15IcpVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(*(v2 + 8) + 24))
  {
    goto LABEL_17;
  }

  v24 = 0;
  if ((enabledSignpostCategories() & 0x100) != 0)
  {
    kdebug_trace();
  }

  v4 = FrameDecoder::decode(*(v3 + 80), *(a1 + 48), a1 + 56, *(a1 + 152), 0, &v24);
  if ((enabledSignpostCategories() & 0x100) != 0)
  {
    kdebug_trace();
    if ((v4 & 0x80000000) == 0)
    {
LABEL_6:
      v2 = *(a1 + 32);
      if (*(*(v2 + 8) + 24))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if (v4 == -2)
  {
    v5 = -12909;
  }

  else
  {
    v5 = -12911;
  }

  if (v4 == -3)
  {
    v5 = -12902;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v2 = *(a1 + 32);
  if (!*(*(v2 + 8) + 24))
  {
LABEL_15:
    if (v24 == 1)
    {
      CVBufferSetAttachment(*(a1 + 120), @"kCMSampleBufferAlphaIsFullyOpaque", *MEMORY[0x277CBED28], kCVAttachmentMode_ShouldPropagate);
      v2 = *(a1 + 32);
    }
  }

LABEL_17:
  v6 = *(v3 + 160);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = ___ZN15IcpVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2;
  v15[3] = &unk_27A717F48;
  v7 = *(a1 + 48);
  v22 = *(a1 + 160);
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  v10 = *(a1 + 144);
  v15[6] = v7;
  v15[7] = v9;
  v15[4] = v2;
  v15[5] = v3;
  v15[8] = *(a1 + 120);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 104);
  v18 = *(a1 + 88);
  v19 = v13;
  v16 = v11;
  v17 = v12;
  v23 = *(a1 + 161);
  v20 = v10;
  v21 = *(a1 + 156);
  return v8(v6, v15);
}

intptr_t ___ZN15IcpVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    do
    {
      v4 = *(v2 + 16);
      MEMORY[0x277CB0040]();
      v2 = v4;
    }

    while (v4);
  }

  if (*(a1 + 148) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (qword_280A715E8 == -1)
    {
      if (_MergedGlobals_58 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      ___ZN15IcpVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2_cold_1();
      if (_MergedGlobals_58 != 1)
      {
        goto LABEL_20;
      }
    }

    if (CVPixelBufferIsPlanar(*(a1 + 64)))
    {
      v6 = *(a1 + 116);
      v7 = (v6 >> 1) - 8;
      if (v6 <= 16)
      {
        v7 = 0;
      }

      if (v6 >= 16)
      {
        v6 = 16;
      }

      memset((*(a1 + 80) + v7 * *(a1 + 100)), 128, v6 * *(a1 + 100));
    }

    v8 = *(a1 + 116);
    v9 = (v8 >> 1) - 8;
    if (v8 <= 16)
    {
      v9 = 0;
    }

    if (v8 >= 16)
    {
      v8 = 16;
    }

    memset((*(a1 + 72) + v9 * *(a1 + 96)), 128, v8 * *(a1 + 96));
  }

LABEL_20:
  if (*(a1 + 149) == 1)
  {
    v29 = v3;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v14 = *(a1 + 72);
      if (CVPixelBufferIsPlanar(*(a1 + 64)))
      {
        PlaneCount = CVPixelBufferGetPlaneCount(*(a1 + 64));
        if (PlaneCount >= 1)
        {
          v16 = 0;
          v17 = PlaneCount & 0x7FFFFFFF;
          do
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 64), v16);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 64), v16);
            if (v16)
            {
              v20 = 100;
            }

            else
            {
              v20 = 96;
            }

            if (*(a1 + 116) >= 1)
            {
              v21 = BytesPerRowOfPlane;
              v22 = 0;
              v23 = *(a1 + v20);
              do
              {
                memcpy(BaseAddressOfPlane, v14, v21);
                v14 += v23;
                BaseAddressOfPlane += v21;
                ++v22;
              }

              while (v22 < *(a1 + 116));
            }

            ++v16;
          }

          while (v16 != v17);
        }
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 64));
        BytesPerRow = CVPixelBufferGetBytesPerRow(*(a1 + 64));
        if (*(a1 + 116) >= 1)
        {
          v26 = BytesPerRow;
          v27 = 0;
          v28 = *(a1 + 96);
          do
          {
            memcpy(BaseAddress, v14, v26);
            v14 += v28;
            BaseAddress += v26;
            ++v27;
          }

          while (v27 < *(a1 + 116));
        }
      }
    }

    v10 = *(a1 + 72);
    v3 = v29;
    if (v10)
    {
      MemoryBufferCache::returnMemoryBuffer(*(v29 + 136), v10);
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CVPixelBufferUnlockBaseAddress(v11, 0);
  }

  VTDecoderSessionEmitDecodedFrame();
  CVPixelBufferRelease(*(a1 + 64));
  v12 = *(v3 + 144);

  return dispatch_semaphore_signal(v12);
}

uint64_t IcpVideoDecoder::invalidate(IcpVideoDecoder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_0);
  }

  v3 = *(this + 20);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11);
  }

  *(this + 8) = 0;
  return 0;
}

uint64_t IcpVideoDecoder::copyProperty(IcpVideoDecoder *this, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  v4 = 4294954394;
  if (!cf1 || !a4)
  {
    return v4;
  }

  if (CFEqual(cf1, *MEMORY[0x277CE26F8]))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = *(this + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN15IcpVideoDecoder12copyPropertyEPK10__CFStringPK13__CFAllocatorPv_block_invoke;
    block[3] = &unk_27A717F98;
    block[4] = &v13;
    block[5] = this;
    dispatch_sync(v9, block);
    valuePtr = *(v14 + 6);
    v10 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
    *a4 = v10;
    if (v10)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294954392;
    }

    _Block_object_dispose(&v13, 8);
    return v4;
  }

  return VideoDecoderBase<IcpVideoDecoder>::copyProperty(this, cf1, a3, a4);
}

void sub_2778247F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15IcpVideoDecoder12copyPropertyEPK10__CFStringPK13__CFAllocatorPv_block_invoke(uint64_t a1)
{
  result = FrameDecoder::getNumThreads(*(*(a1 + 40) + 80));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::copyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  result = 4294954394;
  if (cf1 && a4)
  {
    if (CFEqual(cf1, *MEMORY[0x277CE26C8]))
    {
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        valuePtr = *(a1 + 52);
        v10 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
        if (v10)
        {
          v11 = v10;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2770], v10);
          CFRelease(v11);
        }

        v19 = *(a1 + 56);
        v12 = CFNumberCreate(a3, kCFNumberIntType, &v19);
        if (v12)
        {
          v13 = v12;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2768], v12);
          CFRelease(v13);
        }

        result = 0;
        *a4 = Mutable;
      }

      else
      {
        result = 4294954385;
        *a4 = 0;
      }
    }

    else
    {
      if (CFEqual(cf1, *MEMORY[0x277CE26E0]))
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          Copy = CFArrayCreateCopy(a3, v14);
        }

        else
        {
          Copy = 0;
        }
      }

      else if (CFEqual(cf1, *MEMORY[0x277CE26F0]) || CFEqual(cf1, *MEMORY[0x277CE26E8]) || CFEqual(cf1, *MEMORY[0x277CE26A8]))
      {
        Copy = (*(*a1 + 120))(a1, a3, cf1);
      }

      else
      {
        if (CFEqual(cf1, *MEMORY[0x277CE2648]))
        {
          result = 0;
          *a4 = *MEMORY[0x277CBED10];
          return result;
        }

        if (!CFEqual(cf1, @"DecoderPrefaultedCVPixelBufferPoolCapacity"))
        {
          return 4294954396;
        }

        v16 = *(a1 + 64);
        if (v16)
        {
          LODWORD(v16) = *(v16 + 8);
        }

        v17 = v16;
        Copy = CFNumberCreate(a3, kCFNumberSInt32Type, &v17);
      }

      *a4 = Copy;
      if (Copy)
      {
        return 0;
      }

      else
      {
        return 4294954385;
      }
    }
  }

  return result;
}

uint64_t IcpVideoDecoder::setProperty(IcpVideoDecoder *this, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, *MEMORY[0x277CE2670]))
  {
    if (a3)
    {
      if (CFEqual(a3, *MEMORY[0x277CE2728]))
      {
        v6 = *(this + 24);
        *(this + 13) = *(this + 23);
        v7 = 1;
LABEL_22:
        *(this + 14) = v6;
        *(this + 22) = v7;
        v15 = *(this + 12);
        v16 = *(*this + 88);

        return v16(this, v15);
      }

      if (CFEqual(a3, *MEMORY[0x277CE2740]))
      {
        v12 = *(this + 24);
        *(this + 13) = *(this + 23);
        v6 = (v12 + 1) / 2;
        v7 = 3;
        goto LABEL_22;
      }

      if (CFEqual(a3, *MEMORY[0x277CE2730]))
      {
        v13 = *(this + 24);
        *(this + 13) = *(this + 23);
        v6 = v13 / 2;
        v7 = 4;
        goto LABEL_22;
      }

      if (CFEqual(a3, *MEMORY[0x277CE2738]))
      {
        v14 = *(this + 24);
        *(this + 13) = *(this + 23);
        v6 = v14 / 2;
        v7 = 5;
        goto LABEL_22;
      }
    }

    return 4294954394;
  }

  if (CFEqual(cf1, *MEMORY[0x277CE26F8]))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    valuePtr = 0;
    if (a3 && (v8 = CFGetTypeID(a3), v8 == CFNumberGetTypeID()) && CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr) && valuePtr >= 1)
    {
      v9 = *(this + 19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN15IcpVideoDecoder11setPropertyEPK10__CFStringPKv_block_invoke;
      block[3] = &unk_27A717FC0;
      v18 = valuePtr;
      block[4] = &v20;
      block[5] = this;
      dispatch_sync(v9, block);
      v10 = *(v21 + 6);
    }

    else
    {
      v10 = 4294954394;
      *(v21 + 6) = -12902;
    }

    _Block_object_dispose(&v20, 8);
    return v10;
  }

  else
  {

    return VideoDecoderBase<IcpVideoDecoder>::setProperty(this, cf1, a3);
  }
}

void sub_277824D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15IcpVideoDecoder11setPropertyEPK10__CFStringPKv_block_invoke(uint64_t a1)
{
  result = FrameDecoder::getNumThreads(*(*(a1 + 40) + 80));
  if (*(a1 + 48) != result)
  {
    operator new();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_277824E68(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x277CB0040](v3, 0x1020C4014CBC42BLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *(*(*(v2 + 32) + 8) + 24) = -12904;
    __cxa_end_catch();
    if (!*(*(*(v2 + 32) + 8) + 24))
    {
      JUMPOUT(0x277824E30);
    }

    JUMPOUT(0x277824DD8);
  }

  _Unwind_Resume(a1);
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::setProperty(PreFaultedCVPixelBufferPool **a1, CFTypeRef cf1, const __CFDictionary *a3)
{
  result = 4294954394;
  if (!cf1 || !a3)
  {
    return result;
  }

  if (CFEqual(cf1, *MEMORY[0x277CE26C8]))
  {
    v7 = *MEMORY[0x277CE2770];
    if (*MEMORY[0x277CE2770])
    {
      v8 = *(a1 + 13);
      value = 0;
      if (CFDictionaryGetValueIfPresent(a3, v7, &value))
      {
        if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 52))
        {
          *(a1 + 13) = v8;
        }
      }
    }

    v9 = *MEMORY[0x277CE2768];
    if (*MEMORY[0x277CE2768])
    {
      v10 = *(a1 + 14);
      value = 0;
      if (CFDictionaryGetValueIfPresent(a3, v9, &value))
      {
        if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 7))
        {
          *(a1 + 14) = v10;
        }
      }
    }

    (*(*a1 + 10))(a1);
    return (*(*a1 + 11))(a1, *(a1 + 12));
  }

  if (CFEqual(cf1, @"DecoderPrefaultedCVPixelBufferPoolCapacity"))
  {
    LODWORD(value) = 0;
    v11 = CFGetTypeID(a3);
    if (v11 != CFNumberGetTypeID() || !CFNumberGetValue(a3, kCFNumberSInt32Type, &value))
    {
      return 4294954394;
    }

    if (value >= 1)
    {
      v12 = a1[8];
      if (!v12)
      {
        if (enabledSignpostCategories())
        {
          kdebug_trace();
        }

        operator new();
      }

      if (*(v12 + 1) != value)
      {
        if (PreFaultedCVPixelBufferPool::setCapacity(v12, value))
        {
          if (enabledSignpostCategories())
          {
            kdebug_trace();
            return 0;
          }

          return 0;
        }

        return 4294954394;
      }

      return 0;
    }

    if (value)
    {
      return 4294954394;
    }

    v13 = a1[8];
    if (!v13)
    {
      return 0;
    }

    a1[8] = 0;
    if (enabledSignpostCategories())
    {
      kdebug_trace();
    }

    v14 = a1[9];
    if (v14)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = ___ZN16VideoDecoderBaseI15IcpVideoDecoderE11setPropertyEPK10__CFStringPKv_block_invoke;
      v16[3] = &__block_descriptor_tmp_55;
      v16[4] = v13;
      dispatch_async(v14, v16);
    }

    else
    {
      PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v13);
      MEMORY[0x277CB0040]();
    }

    return 0;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E0]))
  {
    return 4294954395;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26F0]))
  {
    return 4294954395;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E8]))
  {
    return 4294954395;
  }

  else
  {
    v15 = CFEqual(cf1, *MEMORY[0x277CE26A8]);
    result = 4294954395;
    if (!v15)
    {
      if (CFEqual(cf1, *MEMORY[0x277CE2648]))
      {
        return 4294954395;
      }

      else
      {
        return 4294954396;
      }
    }
  }

  return result;
}

_DWORD *IcpVideoDecoder::updateDecodingDimensions(_DWORD *this)
{
  v1 = this[13];
  if (v1 <= 0)
  {
    v1 = this[23];
    v2 = this[14];
    if (v2 > 0)
    {
LABEL_3:
      v3 = this[12];
      if (v3 > 1983000885)
      {
        goto LABEL_4;
      }

LABEL_20:
      if (v3 != 846624121 && v3 != 1916022840)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = this[14];
    if (v2 > 0)
    {
      goto LABEL_3;
    }
  }

  v2 = this[24];
  v3 = this[12];
  if (v3 <= 1983000885)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v3 != 1983000886 && v3 != 2033463606 && v3 != 2033463352)
  {
LABEL_24:
    this[22] = 1;
    v10 = this[24];
    this[13] = this[23];
    this[14] = v10;
    return this;
  }

LABEL_12:
  v6 = this[23];
  if (v6 >= 8 * v1)
  {
    v7 = this[24];
    if (v7 >= 8 * v2)
    {
      this[22] = 11;
      v12 = v6 / 8;
LABEL_33:
      this[13] = v12;
      this[14] = v7 / 8;
      return this;
    }
  }

  if (v6 < 4 * v1)
  {
    goto LABEL_15;
  }

  v7 = this[24];
  if (v7 >= 8 * v2)
  {
    this[22] = 10;
    v12 = v6 / 4;
    goto LABEL_33;
  }

  if (v7 >= 4 * v2)
  {
    this[22] = 9;
    v11 = v6 / 4;
    goto LABEL_37;
  }

LABEL_15:
  if (v6 >= 2 * v1)
  {
    v7 = this[24];
    if (v7 < 4 * v2)
    {
      if (v7 >= 2 * v2)
      {
        this[22] = 6;
        this[13] = v6 / 2;
        this[14] = v7 / 2;
        return this;
      }

      goto LABEL_16;
    }

    this[22] = 8;
    v11 = v6 / 2;
LABEL_37:
    this[13] = v11;
    this[14] = v7 / 4;
    return this;
  }

LABEL_16:
  if (v1 <= v6)
  {
    v13 = this[24];
    if (v13 >= 2 * v2)
    {
      this[22] = 2;
      this[13] = v6;
      this[14] = v13 / 2;
    }

    else
    {
      this[22] = 1;
      this[13] = v6;
      this[14] = v13;
    }
  }

  else
  {
    v8 = this[24];
    this[22] = 1;
    this[13] = v6;
    this[14] = v8;
  }

  return this;
}

uint64_t IcpVideoDecoder::createPixelBufferPool(IcpVideoDecoder *this, int a2)
{
  valuePtr = a2;
  v3 = 100;
  if (!*(this + 13))
  {
    v3 = 52;
  }

  v4 = *(this + v3);
  v5 = *(this + 14);
  v6 = MEMORY[0x277CBECE8];
  if (a2 && (v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr)) != 0)
  {
    v8 = v7;
    v9 = 1;
    v10 = 1;
    v11 = v7;
  }

  else
  {
    v11 = (*(*this + 96))(this);
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  v12 = *(this + 23) & 0xF;
  v13 = valuePtr == 1983000880 || v12 == 0;
  v14 = 16 - v12;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 16 - v12;
  }

  if (v4 == *(this + 28))
  {
    v16 = v10 ^ 1;
    if (v5 != *(this + 29))
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0 && *(this + 120) == 1 && valuePtr == *(this + 31) && v15 == *(this + 32))
    {
      v17 = 0;
      if (!v10)
      {
        return v17;
      }

      goto LABEL_33;
    }
  }

  v29 = v15;
  v30 = v9;
  v18 = *v6;
  Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v17 = 4294954392;
    if (!v10)
    {
      return v17;
    }

    goto LABEL_33;
  }

  v20 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v11);
  v32 = v4;
  v21 = CFNumberCreate(v18, kCFNumberIntType, &v32);
  if (v21)
  {
    v22 = v21;
    CFDictionaryAddValue(v20, *MEMORY[0x277CC4EC8], v21);
    CFRelease(v22);
  }

  v32 = v5;
  v23 = CFNumberCreate(v18, kCFNumberIntType, &v32);
  if (v23)
  {
    v24 = v23;
    CFDictionaryAddValue(v20, *MEMORY[0x277CC4DD8], v23);
    CFRelease(v24);
  }

  if (!v13)
  {
    v32 = v14;
    v25 = CFNumberCreate(v18, kCFNumberIntType, &v32);
    if (v25)
    {
      v26 = v25;
      CFDictionaryAddValue(v20, *MEMORY[0x277CC4DB8], v25);
      CFRelease(v26);
    }
  }

  v17 = VTDecoderSessionSetPixelBufferAttributes();
  if (!v17)
  {
    *(this + 28) = v4;
    *(this + 29) = v5;
    v27 = valuePtr;
    *(this + 120) = v30;
    *(this + 31) = v27;
    *(this + 32) = v29;
    v17 = VideoDecoderBase<IcpVideoDecoder>::replaceLocalPixelBufferPool(this);
  }

  CFRelease(v20);
  if (v10)
  {
LABEL_33:
    CFRelease(v8);
  }

  return v17;
}

uint64_t VideoDecoderBase<IcpVideoDecoder>::replaceLocalPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 64))
  {
    if (enabledSignpostCategories())
    {
      kdebug_trace();
    }

    v2 = *(a1 + 64);
    v3 = *(a1 + 72);
    *(a1 + 64) = 0;
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN16VideoDecoderBaseI15IcpVideoDecoderE27replaceLocalPixelBufferPoolEv_block_invoke;
      block[3] = &__block_descriptor_tmp_56;
      block[4] = v2;
      dispatch_async(v3, block);
    }

    else if (v2)
    {
      PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v2);
      MEMORY[0x277CB0040]();
    }

    operator new();
  }

  return 0;
}

void sub_2778259AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if ((enabledSignpostCategories() & 1) == 0)
    {
      JUMPOUT(0x277825990);
    }

    JUMPOUT(0x277825970);
  }

  _Unwind_Resume(exception_object);
}

CFDictionaryRef VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(int a1, int a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v13 = a2;
  valuePtr = a1;
  v2 = *MEMORY[0x277CE2768];
  keys[0] = *MEMORY[0x277CE2770];
  keys[1] = v2;
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  values = v4;
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &v13);
  cf = v5;
  v12 = 0;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4;
    v8 = 1;
    if (v7)
    {
LABEL_9:
      CFRelease(v7);
    }
  }

  else
  {
    v12 = CFDictionaryCreate(v3, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v7 = values;
    v8 = v12 == 0;
    if (values)
    {
      goto LABEL_9;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x277CE26C8];
  if (v8)
  {
    return 0;
  }

  v10 = CFDictionaryCreate(v3, &v11, &v12, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v12);
  return v10;
}

uint64_t IcpVideoDecoder::pixelFormatsOrderedByQuality(IcpVideoDecoder *this)
{
  if (codecTypeIs444(*(this + 3)))
  {
    if (qword_280A715B8 != -1)
    {
      IcpVideoDecoder::pixelFormatsOrderedByQuality();
    }

    return qword_280A71448;
  }

  else
  {
    if (qword_280A715C0 != -1)
    {
      IcpVideoDecoder::pixelFormatsOrderedByQuality();
    }

    return qword_280A71460;
  }
}

uint64_t IcpVideoDecoder::pixelFormatsOrderedByPerformance(IcpVideoDecoder *this)
{
  if (codecTypeIs444(*(this + 3)))
  {
    if (qword_280A715C8 != -1)
    {
      IcpVideoDecoder::pixelFormatsOrderedByPerformance();
    }

    return qword_280A71478;
  }

  else
  {
    if (qword_280A715D0 != -1)
    {
      IcpVideoDecoder::pixelFormatsOrderedByPerformance();
    }

    return qword_280A71490;
  }
}

uint64_t IcpVideoDecoder::pixelFormatsWithReducedResolutionSupport(IcpVideoDecoder *this)
{
  if (codecTypeIs444(*(this + 3)))
  {
    if (qword_280A715D8 != -1)
    {
      IcpVideoDecoder::pixelFormatsWithReducedResolutionSupport();
    }

    return qword_280A714A8;
  }

  else
  {
    if (qword_280A715E0 != -1)
    {
      IcpVideoDecoder::pixelFormatsWithReducedResolutionSupport();
    }

    return qword_280A714C0;
  }
}

void VideoDecoderBase<IcpVideoDecoder>::finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[8];
  v4 = a1[9];
  a1[8] = 0;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN16VideoDecoderBaseI15IcpVideoDecoderE8finalizeEv_block_invoke;
    block[3] = &__block_descriptor_tmp_57;
    block[4] = v3;
    dispatch_async(v4, block);
LABEL_5:
    a1[4] = 0;
    return;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v3);
  MEMORY[0x277CB0040]();
  a1[4] = 0;
}

CFArrayRef VideoDecoderBase<IcpVideoDecoder>::copyPixelFormatArray(uint64_t a1, const __CFAllocator *a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, *MEMORY[0x277CE26F0]))
  {
    v6 = (*(*a1 + 96))(a1);
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E8]))
  {
    v6 = (*(*a1 + 104))(a1);
  }

  else
  {
    if (!CFEqual(cf1, *MEMORY[0x277CE26A8]))
    {
      return 0;
    }

    v6 = (*(*a1 + 112))(a1);
  }

  return CFArrayCreateCopy(a2, v6);
}

CFIndex ___ZL17maxConcurrentJobsv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"MaxConcurrentJobsInProRes", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    maxConcurrentJobs(void)::s_maxConcurrentJobs = result;
  }

  return result;
}

uint64_t PixelBuffer::getNumBytesPerPixelData(int a1)
{
  if (a1 <= 1953903153)
  {
    if (a1 > 1848848433)
    {
      if (a1 <= 1932812658)
      {
        if (a1 > 1916022839)
        {
          if (a1 != 1916022840)
          {
            if (a1 == 1916036716)
            {
              return 16;
            }

            return 0;
          }

          return 4;
        }

        if (a1 == 1848848434)
        {
          return 4;
        }

        v2 = 1915892016;
        goto LABEL_50;
      }

      if (a1 > 1937126451)
      {
        if (a1 == 1937126452)
        {
          return 0x400000002;
        }

        if (a1 != 1949589875)
        {
          return 0;
        }
      }

      else if (a1 != 1932812659)
      {
        if (a1 == 1937125938)
        {
          return 0x200000002;
        }

        return 0;
      }

      return 0x400000002;
    }

    if (a1 <= 1378955370)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 != 846624121)
      {
        v2 = 1111970369;
        goto LABEL_50;
      }

      return 2;
    }

    if (a1 <= 1647719541)
    {
      if (a1 == 1378955371)
      {
        return 4;
      }

      v4 = 1647719521;
LABEL_46:
      if (a1 != v4)
      {
        return 0;
      }

      return 8;
    }

    if (a1 == 1647719542)
    {
      return 8;
    }

    v2 = 1815294002;
  }

  else
  {
    if (a1 <= 2016686641)
    {
      if (a1 <= 1983000885)
      {
        if (a1 <= 1966223669)
        {
          if (a1 != 1953903154)
          {
            v1 = 1953903668;
            goto LABEL_16;
          }

          return 0x200000002;
        }

        if (a1 != 1966223670)
        {
          if (a1 == 1983000880)
          {
            return 8;
          }

          return 0;
        }

        return 4;
      }

      if (a1 <= 1999778101)
      {
        if (a1 == 1983000886)
        {
          return 4;
        }

        v2 = 1983131704;
        goto LABEL_50;
      }

      if (a1 == 1999778102)
      {
        return 4;
      }

      v4 = 1999909174;
      goto LABEL_46;
    }

    if (a1 <= 2033463605)
    {
      if (a1 <= 2016698738)
      {
        if (a1 != 2016686642)
        {
          v1 = 2016687156;
LABEL_16:
          if (a1 == v1)
          {
            return 0x400000002;
          }

          return 0;
        }

        return 0x200000002;
      }

      if (a1 != 2016698739)
      {
        v2 = 2033463352;
        goto LABEL_50;
      }

      return 0x400000002;
    }

    if (a1 <= 2050109749)
    {
      if (a1 == 2033463606)
      {
        return 8;
      }

      if (a1 != 2037741171)
      {
        return 0;
      }

      return 2;
    }

    if (a1 == 2050240822)
    {
      return 8;
    }

    v2 = 2050109750;
  }

LABEL_50:
  if (a1 == v2)
  {
    return 4;
  }

  return 0;
}

uint64_t ___ZL18allowAsyncCallbackv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"AllowAsyncCallbackInProRes", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    allowAsyncCallback(void)::s_allowAsyncCallback = result != 0;
  }

  return result;
}

uint64_t ___ZL10drawStripev_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"DrawStripeInProRes", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    _MergedGlobals_58 = result != 0;
  }

  return result;
}

void *VideoCodecBase<IcpVideoDecoder>::~VideoCodecBase(void *a1)
{
  *a1 = &unk_28866AEF8;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void VideoCodecBase<IcpVideoDecoder>::finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15IcpVideoDecoderE11setPropertyEPK10__CFStringPKv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15IcpVideoDecoderE27replaceLocalPixelBufferPoolEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15IcpVideoDecoderE8finalizeEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::createInstance(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    v4 = 4294954389;
  }

  *a3 = 0;
  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t VideoCodecBase<PRRVideoDecoder>::Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v1 + 48))(v1);
    kdebug_trace();
    goto LABEL_7;
  }

  v1 = 0;
  if (enabledSignpostCategories())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v1)
  {
    v2 = 4294954390;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v2;
    }

    goto LABEL_8;
  }

LABEL_7:
  v2 = (*(*v1 + 16))(v1);
  if (enabledSignpostCategories())
  {
LABEL_8:
    (*(*v1 + 48))(v1);
    kdebug_trace();
  }

  return v2;
}

uint64_t VideoCodecBase<PRRVideoDecoder>::Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (DerivedStorage)
  {
    v2 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  (*(*v2 + 48))(v2);
  kdebug_trace();
LABEL_7:
  (*(*v2 + 24))(v2);
  (*(*v2 + 8))(v2);
  *v1 = 0;
LABEL_8:
  result = enabledSignpostCategories();
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t VideoCodecBase<PRRVideoDecoder>::CopyProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954390;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954390;
  }

  v2 = *(*v1 + 32);

  return v2();
}

uint64_t VideoCodecBase<PRRVideoDecoder>::SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954390;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954390;
  }

  v2 = *(*v1 + 40);

  return v2();
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::StartSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294954394;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v7 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = *DerivedStorage;
  if (enabledSignpostCategories())
  {
LABEL_6:
    kdebug_trace();
  }

LABEL_7:
  if (!v7)
  {
    v3 = 4294954390;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v3 = (*(*v7 + 56))(v7, a2, a3);
  if (enabledSignpostCategories())
  {
LABEL_9:
    kdebug_trace();
  }

  return v3;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::DecodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 4294954394;
  if (!a1 || !a2 || !a3)
  {
    return v5;
  }

  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v11 = 0;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = *DerivedStorage;
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_6:
    kdebug_trace();
  }

LABEL_7:
  if (!v11)
  {
    v5 = 4294954390;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v5 = (*(*v11 + 64))(v11, a2, a3, a4, a5);
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_9:
    kdebug_trace();
  }

  return v5;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  result = 4294954394;
  if (a1 && a2)
  {
    VTVideoDecoderGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage && (v6 = *DerivedStorage) != 0)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        CFRetain(v7);
        result = 0;
        *a2 = *(v6 + 24);
      }

      else
      {
        return 4294954392;
      }
    }

    else
    {
      return 4294954390;
    }
  }

  return result;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::CanAcceptFormatDescription(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      VTVideoDecoderGetCMBaseObject();
      result = CMBaseObjectGetDerivedStorage();
      if (result)
      {
        result = *result;
        if (result)
        {
          return (*(*result + 72))(result, a2);
        }
      }
    }
  }

  return result;
}

void PRRVideoDecoder::PRRVideoDecoder(PRRVideoDecoder *this, int a2)
{
  v2 = VideoDecoderBase<PRRVideoDecoder>::VideoDecoderBase(this, a2);
  *v2 = &unk_28866B038;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 92) = 0;
  operator new();
}

void sub_277826F00(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x277CB0040](v3, 0xA1C40987D6AD5);
  VideoDecoderBase<PRRVideoDecoder>::~VideoDecoderBase(v1);
  _Unwind_Resume(a1);
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::VideoDecoderBase(uint64_t a1, int a2)
{
  *a1 = &unk_28866B2F0;
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  *(a1 + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 32) = 0;
  *a1 = &unk_28866B260;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = dispatch_queue_create("PixelBufferPoolDeletion", 0);
  v6 = CFDictionaryCreate(v3, 0, 0, 0, v4, v5);
  if (v6)
  {
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26C8], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26E0], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE2648], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26F0], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26E8], v6);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x277CE26A8], v6);
    CFDictionaryAddValue(*(a1 + 24), @"DecoderPrefaultedCVPixelBufferPoolCapacity", v6);
    CFRelease(v6);
  }

  return a1;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::~VideoDecoderBase(uint64_t a1)
{
  *a1 = &unk_28866B260;
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_100);
    dispatch_release(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v3);
    MEMORY[0x277CB0040]();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = &unk_28866B2F0;
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

void PRRVideoDecoder::~PRRVideoDecoder(PRRVideoDecoder *this)
{
  *this = &unk_28866B038;
  v2 = *(this + 19);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_1);
  }

  v3 = *(this + 20);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11_0);
  }

  v4 = *(this + 21);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_14);
  }

  v5 = *(this + 10);
  if (v5)
  {
    FrameDecoder::~FrameDecoder(v5);
    MEMORY[0x277CB0040]();
  }

  v6 = *(this + 16);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 19);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 20);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 21);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  VideoDecoderBase<PRRVideoDecoder>::~VideoDecoderBase(this);
}

{
  PRRVideoDecoder::~PRRVideoDecoder(this);

  JUMPOUT(0x277CB0040);
}

uint64_t PRRVideoDecoder::startSession(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *(a1 + 32) = a2;
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(v6);
  *(a1 + 52) = Dimensions;
  *(a1 + 96) = Dimensions;
  DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes();
  Value = CFDictionaryGetValue(DestinationPixelBufferAttributes, *MEMORY[0x277CC4E30]);
  if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    v12 = CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr != 1651521076 || v12 == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1651521076;
    }
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 116) = 0xFFFFFFFF00000000;
  *(a1 + 124) = 0;
  if ((*(*a1 + 88))(a1, v14))
  {
    return 4294954392;
  }

  pixelBuffer = 0;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  if (CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBuffer) || !pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    return 4294954392;
  }

  *(a1 + 48) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  CFRelease(pixelBuffer);
  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 40) = PRRVideoDecoder::createSuggestedQualityOfServiceTiers(*(a1 + 48), *(a1 + 96), *(a1 + 100));
  if (!*(a1 + 80))
  {
    operator new();
  }

  v18 = *(a1 + 48);
  v19 = v18 == 1380411457 || v18 == 1380410945;
  v20 = v19;
  *(a1 + 136) = v20;
  if (v19)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 144) = dispatch_semaphore_create(v21);
  *(a1 + 152) = dispatch_queue_create("PRRDecode1", 0);
  v22 = dispatch_queue_create("PRRDecode2", 0);
  *(a1 + 160) = v22;
  if (!*(a1 + 144))
  {
    return 4294954392;
  }

  v23 = v22;
  result = 4294954392;
  if (*(a1 + 152) && v23 && (*(a1 + 136) != 1 || *(a1 + 168)))
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t sub_2778275A0(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x277CB0040](v2, 0x1020C40E6F2F0EDLL);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 4294954392;
}

CFArrayRef PRRVideoDecoder::createSuggestedQualityOfServiceTiers(PRRVideoDecoder *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v15 = *MEMORY[0x277D85DE8];
  cf = 0;
  SuggestedQualityOfServiceTier = 0;
  v14 = 0;
  values = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(a2, a3);
  if (v5 == 1380410945 || v5 == 1651521076 || v5 == 1380411457)
  {
    cf = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v4 / 2, v3 / 2);
    v6 = v4 + 3;
    v7 = v3 + 3;
    if (v3 < 0)
    {
      v3 += 7;
    }

    else
    {
      v7 = v3;
    }

    if (v4 < 0)
    {
      v4 += 7;
    }

    else
    {
      v6 = v4;
    }

    SuggestedQualityOfServiceTier = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v6 >> 2, v7 >> 2);
    v14 = VideoDecoderBase<IcpVideoDecoder>::createSuggestedQualityOfServiceTier(v4 >> 3, v3 >> 3);
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v9 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, v8, MEMORY[0x277CBF128]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SuggestedQualityOfServiceTier)
  {
    CFRelease(SuggestedQualityOfServiceTier);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t PRRVideoDecoder::decodeFrame(uint64_t a1, const void *a2, void *a3, char a4, int *a5)
{
  if (*(a1 + 8) != 1)
  {
    return 4294954393;
  }

  v101 = 0;
  v10 = VideoDecoderBase<IcpVideoDecoder>::newCVPixelBufferFromPool(a1, &v101);
  v11 = v101;
  v65 = a5;
  v70 = a2;
  if (v10 || !v101)
  {
    CVPixelBufferRelease(v101);
    BytesPerRow = 0;
    __src = 0;
    v20 = 0;
    v101 = 0;
    v22 = 4294954392;
    v13 = -1;
    goto LABEL_28;
  }

  if ((*(a1 + 136) & 1) == 0)
  {
    v24 = CVPixelBufferLockBaseAddress(v101, 0);
    v11 = v101;
    if (v24)
    {
      CVPixelBufferRelease(v101);
      BytesPerRow = 0;
      __src = 0;
      v20 = 0;
      v101 = 0;
      v22 = 4294954385;
      v13 = -1;
      goto LABEL_28;
    }

    if (!v101)
    {
      BytesPerRow = 0;
      __src = 0;
      v22 = 0;
      v20 = 1;
      v13 = -1;
      goto LABEL_28;
    }
  }

  PlaneCount = CVPixelBufferGetPlaneCount(v11);
  v13 = PlaneCount;
  if (!PlaneCount)
  {
    v22 = 0;
    __src = 1;
    BytesPerRow = CVPixelBufferGetBytesPerRow(v101);
LABEL_27:
    v20 = 1;
    goto LABEL_28;
  }

  if (PlaneCount < 1)
  {
    BytesPerRow = 0;
    goto LABEL_26;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v101, 0);
  BytesPerRow = BytesPerRowOfPlane;
  if (v13 == 1)
  {
LABEL_26:
    __src = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v16 = BytesPerRowOfPlane;
  v17 = BytesPerRowOfPlane;
  v18 = 1;
  do
  {
    v19 = CVPixelBufferGetBytesPerRowOfPlane(v101, v18);
    v20 = v19 == v17;
    ++v18;
  }

  while (v19 == v17 && v18 < (v13 & 0x7FFFFFFFu));
  __src = 0;
  if (v19 == v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4294954385;
  }

  BytesPerRow = v16;
LABEL_28:
  v68 = v13;
  if (*(a1 + 136))
  {
    if (*(a1 + 92))
    {
      v25 = 1651521076;
    }

    else
    {
      if (qword_280A71620 != -1)
      {
        PRRVideoDecoder::decodeFrame();
      }

      if (_MergedGlobals_1)
      {
        v25 = 1647392369;
      }

      else
      {
        v25 = 1651519798;
      }
    }
  }

  else
  {
    v25 = *(a1 + 48);
  }

  *&v96[12] = 0u;
  if (v25 == 1647392369)
  {
    v26 = 4;
  }

  else
  {
    v26 = 1;
  }

  v95 = 0uLL;
  *v96 = 0uLL;
  v94 = 0uLL;
  *&v96[28] = 4;
  *&v96[36] = 0xFFFF;
  __asm { FMOV            V0.2S, #1.0 }

  *&v96[40] = _D0;
  *&v99 = 0x421000003F800000;
  v97 = xmmword_277875200;
  v98 = unk_277875210;
  *(&v99 + 1) = 0x2D00000000;
  SharedDataBuffer::SharedDataBuffer(&v100);
  v69 = BytesPerRow;
  v67 = v26;
  v71 = a3;
  if (!v20)
  {
    v66 = 0;
    v40 = v22;
    v41 = MEMORY[0x277D85DA0];
    if ((a4 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_85:
    v42 = MEMORY[0x277D85D58];
    if (a3)
    {
      CFRetain(a3);
    }

    v43 = a4;
    v44 = 1;
    goto LABEL_88;
  }

  v31 = 0;
  v32 = *(a1 + 96);
  v34 = v32 + 15;
  v33 = v32 < -15;
  v35 = v32 + 30;
  if (!v33)
  {
    v35 = v34;
  }

  if (v25 == 1647392369)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  v37 = v35 >> 4;
  if (v25 == 1647392369)
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  v39 = v37 << v38 >> *(a1 + 92);
  if (v25 <= 1647392368)
  {
    if (v25 == 1380410945)
    {
      v31 = 16;
      goto LABEL_61;
    }

    if (v25 != 1380411457)
    {
      goto LABEL_61;
    }

LABEL_58:
    v31 = 8;
    goto LABEL_61;
  }

  if (v25 == 1647392369 || v25 == 1651519798)
  {
    v31 = 2;
    goto LABEL_61;
  }

  if (v25 == 1651521076)
  {
    goto LABEL_58;
  }

LABEL_61:
  v63 = *(a1 + 52);
  v45 = v31 * v39;
  v46 = *(a1 + 56) / v36;
  v66 = *(a1 + 136) | (BytesPerRow < v31 * v39);
  if (*(a1 + 136) & 1 | (BytesPerRow < v31 * v39))
  {
    v47 = a4;
    v48 = v26;
    v49 = a3;
    v50 = &v94;
    v51 = v48;
    do
    {
      *v50 = MemoryBufferCache::obtainMemoryBuffer(*(a1 + 128), v45 * v46);
      v50 = (v50 + 8);
      --v51;
    }

    while (v51);
    a3 = v49;
    a4 = v47;
  }

  else
  {
    if (__src)
    {
      v52 = &v94;
      v53 = v26;
      do
      {
        *v52++ = CVPixelBufferGetBaseAddress(v101);
        --v53;
      }

      while (v53);
    }

    else
    {
      for (i = 0; i != v26; ++i)
      {
        *(&v94 + i) = CVPixelBufferGetBaseAddressOfPlane(v101, i);
      }
    }

    v45 = BytesPerRow;
  }

  *v96 = v45;
  *&v96[4] = v25;
  *&v96[8] = *(a1 + 52);
  *&v96[16] = v63 / v36;
  *&v96[20] = v46;
  v55 = v94 != 0;
  if (v94)
  {
    if (v25 == 1647392369)
    {
      v55 = *(&v94 + 1) != 0;
      if (*(&v94 + 1))
      {
        v55 = v95 != 0;
        if (v95)
        {
          v55 = *(&v95 + 1) != 0;
        }
      }
    }
  }

  if (!v55)
  {
    v40 = 4294954392;
    v41 = MEMORY[0x277D85DA0];
    if ((a4 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_85;
  }

  if (a3)
  {
    if (CMSampleBufferGetNumSamples(a3) == 1)
    {
      SampleSize = CMSampleBufferGetSampleSize(a3, 0);
      DataBuffer = CMSampleBufferGetDataBuffer(a3);
      if (SampleSize)
      {
        v58 = DataBuffer;
        if (CMBlockBufferGetDataLength(DataBuffer) >= SampleSize)
        {
          __p = 0;
          p_p = 0;
          v92 = 0;
          dataPointerOut = 0;
          lengthAtOffsetOut[0] = 0;
          if (!CMBlockBufferGetDataPointer(v58, 0, lengthAtOffsetOut, 0, &dataPointerOut))
          {
            operator new();
          }
        }
      }
    }
  }

  v40 = 4294954387;
  v41 = MEMORY[0x277D85DA0];
  if (a4)
  {
    goto LABEL_85;
  }

LABEL_55:
  v42 = v41;
  v43 = a4;
  v44 = 0;
LABEL_88:
  v59 = *(a1 + 92);
  v60 = *(a1 + 88);
  __p = 0;
  p_p = &__p;
  v92 = 0x2000000000;
  v23 = v40;
  v93 = v40;
  dispatch_semaphore_wait(*(a1 + 144), 0xFFFFFFFFFFFFFFFFLL);
  v61 = *(a1 + 152);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 1174405120;
  v72[2] = ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke;
  v72[3] = &unk_28866B100;
  v72[5] = a1;
  v77 = *&v96[32];
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v73 = v94;
  v74 = v95;
  v75 = *v96;
  v76 = *&v96[16];
  SharedDataBuffer::SharedDataBuffer(v81, &v100);
  v72[4] = &__p;
  v81[1] = 0;
  v81[2] = v42;
  v87 = v60;
  v88 = v43 & 1;
  v82 = v59;
  v83 = v67;
  v89 = v66 & 1;
  v84 = v68;
  v85 = v69;
  v81[3] = v71;
  v81[4] = v101;
  v81[5] = v70;
  v86 = v44;
  (v42)(v61, v72);
  if ((v43 & 1) == 0)
  {
    v23 = *(p_p + 6);
  }

  if (v65)
  {
    *v65 = v44;
  }

  SharedDataBuffer::~SharedDataBuffer(v81);
  _Block_object_dispose(&__p, 8);
  SharedDataBuffer::~SharedDataBuffer(&v100);
  return v23;
}

void sub_277827FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  MEMORY[0x277CB0040](v50, 0x1070C40DB7B3284);
  if (a49)
  {
    operator delete(a49);
    SharedDataBuffer::~SharedDataBuffer((v51 - 128));
    _Unwind_Resume(a1);
  }

  SharedDataBuffer::~SharedDataBuffer((v51 - 128));
  _Unwind_Resume(a1);
}

void ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 128);
  v39 = *(a1 + 112);
  v40 = v3;
  v4 = *(a1 + 160);
  v41 = *(a1 + 144);
  v42 = v4;
  v5 = *(a1 + 64);
  v35 = *(a1 + 48);
  v36 = v5;
  v6 = *(a1 + 96);
  v37 = *(a1 + 80);
  v38 = v6;
  SharedDataBuffer::SharedDataBuffer(v43, (a1 + 176));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if ((enabledSignpostCategories() & 0x10000) != 0)
    {
      kdebug_trace();
    }

    v7 = *(v2 + 80);
    v8 = *(a1 + 184);
    v9 = v8[1];
    v34[0] = *v8;
    v34[1] = v9;
    v10 = PRRFrameDecoder::decode(v7, v34, &v35, *(a1 + 224), *(a1 + 244));
    if ((enabledSignpostCategories() & 0x10000) != 0)
    {
      kdebug_trace();
    }

    if (v10 < 0)
    {
      if (v10 == -2)
      {
        v11 = -12909;
      }

      else
      {
        v11 = -12911;
      }

      if (v10 == -3)
      {
        v11 = -12902;
      }

      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }

  v12 = *(v2 + 160);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1174405120;
  v18[2] = ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2;
  v18[3] = &unk_28866B0C8;
  v13 = *(a1 + 184);
  v14 = *(a1 + 192);
  v32 = *(a1 + 245);
  v15 = *(a1 + 200);
  v18[6] = v13;
  v18[7] = v15;
  v18[4] = *(a1 + 32);
  v18[5] = v2;
  v21 = v37;
  v22 = v38;
  v19 = v35;
  v20 = v36;
  v25 = v41;
  v26 = v42;
  v23 = v39;
  v24 = v40;
  SharedDataBuffer::SharedDataBuffer(&v27, v43);
  v16 = *(a1 + 232);
  v17 = vrev64_s32(*(a1 + 224));
  v33 = *(a1 + 246);
  v29 = v17;
  v30 = v16;
  v28 = *(a1 + 208);
  v31 = *(a1 + 240);
  v14(v12, v18);
  SharedDataBuffer::~SharedDataBuffer(&v27);
  SharedDataBuffer::~SharedDataBuffer(v43);
}

void sub_2778282D8(_Unwind_Exception *a1)
{
  SharedDataBuffer::~SharedDataBuffer((v2 + 192));
  SharedDataBuffer::~SharedDataBuffer((v1 + 128));
  _Unwind_Resume(a1);
}

void ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    Bytestream::destroy(v2);
    v4 = *(a1 + 48);
    if (v4)
    {
      MEMORY[0x277CB0040](v4, 0x1070C40DB7B3284);
    }
  }

  if (*(a1 + 236) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (qword_280A71628 != -1)
    {
      ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2_cold_1();
    }

    if (byte_280A71619 == 1 && *(a1 + 216) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 116);
      v8 = (v7 >> 1) - 8;
      v9 = v7 <= 16;
      if (v7 >= 16)
      {
        v7 = 16;
      }

      if (v9)
      {
        v8 = 0;
      }

      v10 = *(a1 + 96);
      v11 = v8 * v10;
      v12 = v7 * v10;
      do
      {
        memset((*(a1 + 64 + 8 * v6++) + v11), 128, v12);
      }

      while (v6 < *(a1 + 216));
    }
  }

  if ((*(v3 + 136) & 1) == 0)
  {
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v13 = *(a1 + 220);
      v14 = *(a1 + 200);
      *valuePtr = *(a1 + 124);
      v15 = *MEMORY[0x277CBECE8];
      v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
      if (v16)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_BayerPattern", v16, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v16);
      }

      *valuePtr = *(a1 + 128);
      v17 = CFNumberCreate(v15, kCFNumberSInt32Type, valuePtr);
      if (v17)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_BlackLevel", v17, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v17);
      }

      *valuePtr = *(a1 + 132);
      v18 = CFNumberCreate(v15, kCFNumberSInt32Type, valuePtr);
      if (v18)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_WhiteLevel", v18, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v18);
      }

      *valuePtr = *(a1 + 136);
      v19 = CFNumberCreate(v15, kCFNumberFloat32Type, valuePtr);
      if (v19)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_WhiteBalanceRedFactor", v19, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v19);
      }

      *valuePtr = *(a1 + 140);
      v20 = CFNumberCreate(v15, kCFNumberFloat32Type, valuePtr);
      if (v20)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_WhiteBalanceBlueFactor", v20, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v20);
      }

      v21 = *(a1 + 160);
      *valuePtr = *(a1 + 144);
      *&valuePtr[16] = v21;
      v52 = *(a1 + 176);
      v22 = CFDataCreate(v15, valuePtr, 36);
      if (v22)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_ColorMatrix", v22, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v22);
      }

      *valuePtr = *(a1 + 180);
      v23 = CFNumberCreate(v15, kCFNumberFloat32Type, valuePtr);
      if (v23)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_GainFactor", v23, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v23);
      }

      *valuePtr = *(a1 + 184);
      v24 = CFNumberCreate(v15, kCFNumberSInt32Type, valuePtr);
      if (v24)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_WhiteBalanceCCT", v24, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v24);
      }

      *valuePtr = *(a1 + 188);
      v25 = CFNumberCreate(v15, kCFNumberSInt32Type, valuePtr);
      if (v25)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_LargestDCQSS", v25, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v25);
      }

      if ((v13 - 1) <= 2)
      {
        getSenselSitingOffsets(*(a1 + 124), v13, valuePtr);
        v28 = CFDataCreate(v15, valuePtr, 32);
        if (v28)
        {
          CVBufferSetAttachment(v14, @"ProResRAW_SenselSitingOffsets", v28, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v28);
        }
      }

      *v26.i32 = (1 << v13);
      v27.i32[0] = *(a1 + 120);
      *valuePtr = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v27))), vdupq_lane_s32(v26, 0));
      v29 = CFDataCreate(v15, valuePtr, 16);
      if (v29)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_RecommendedCrop", v29, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v29);
      }

      CFData = SharedDataBuffer::getCFData((a1 + 192));
      if (CFData)
      {
        CVBufferSetAttachment(v14, @"ProResRAW_MetadataExtension", CFData, kCVAttachmentMode_ShouldPropagate);
      }
    }

    if (*(a1 + 237) != 1)
    {
      goto LABEL_63;
    }

    LODWORD(v31) = *(a1 + 216);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      if (v31 < 1)
      {
LABEL_63:
        v41 = *(a1 + 200);
        if (v41)
        {
          CVPixelBufferUnlockBaseAddress(v41, 0);
          v42 = *(a1 + 200);
        }

        else
        {
          v42 = 0;
        }

        if (qword_280A71630 != -1)
        {
          ___ZN15PRRVideoDecoder11decodeFrameEP25OpaqueVTVideoDecoderFrameP20opaqueCMSampleBufferjPj_block_invoke_2_cold_2();
        }

        if (byte_280A7161A == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v42);
          if (PixelFormatType == 32)
          {
            v44 = &v49;
            __p = 0x2942475241283233;
            v45 = 8;
          }

          else
          {
            v44 = (&__p + 4);
            LODWORD(__p) = bswap32(PixelFormatType);
            v45 = 4;
          }

          *v44 = 0;
          v50 = v45;
          Width = CVPixelBufferGetWidth(v42);
          Height = CVPixelBufferGetHeight(v42);
          *valuePtr = 136315650;
          *&valuePtr[4] = &__p;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = Width;
          *&valuePtr[22] = 2048;
          *&valuePtr[24] = Height;
          _os_log_impl(&dword_277820000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PRRVideoDecoder: Emitting a buffer to VTDecoderSession: %s %ldx%ld\n", valuePtr, 0x20u);
          if (v50 < 0)
          {
            operator delete(__p);
          }
        }

        VTDecoderSessionEmitDecodedFrame();
        CVPixelBufferRelease(v42);
        dispatch_semaphore_signal(*(v3 + 144));
        return;
      }

      v34 = 0;
      do
      {
        v35 = *(a1 + 64 + 8 * v34);
        v36 = *(a1 + 200);
        if (*(a1 + 224))
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v36, v34);
        }

        else
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v36);
        }

        v38 = BaseAddressOfPlane;
        if (*(a1 + 116) >= 1)
        {
          v39 = 0;
          LODWORD(v40) = *(a1 + 228);
          do
          {
            memcpy(v38, v35, v40);
            v35 += *(a1 + 96);
            v40 = *(a1 + 228);
            v38 += v40;
            ++v39;
          }

          while (v39 < *(a1 + 116));
        }

        ++v34;
        v31 = *(a1 + 216);
      }

      while (v34 < v31);
    }

    if (v31 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = *(a1 + 64 + 8 * v32);
        if (v33)
        {
          MemoryBufferCache::returnMemoryBuffer(*(v3 + 128), v33);
          LODWORD(v31) = *(a1 + 216);
        }

        ++v32;
      }

      while (v32 < v31);
    }

    goto LABEL_63;
  }
}

void sub_2778289E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __copy_helper_block_e8_64c20_ZTS14PRRPixelBuffer(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  a1[6] = *(a2 + 96);
  a1[7] = v4;
  a1[4] = v2;
  a1[5] = v3;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  a1[10] = *(a2 + 160);
  a1[11] = v7;
  a1[8] = v5;
  a1[9] = v6;
  SharedDataBuffer::SharedDataBuffer((a1 + 12), (a2 + 192));
  return result;
}

__n128 __copy_helper_block_e8_48c20_ZTS14PRRPixelBuffer(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  a1[5] = *(a2 + 80);
  a1[6] = v4;
  a1[3] = v2;
  a1[4] = v3;
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  a1[9] = *(a2 + 144);
  a1[10] = v7;
  a1[7] = v5;
  a1[8] = v6;
  SharedDataBuffer::SharedDataBuffer((a1 + 11), (a2 + 176));
  return result;
}

uint64_t PRRVideoDecoder::invalidate(PRRVideoDecoder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_1);
  }

  v3 = *(this + 20);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11_0);
  }

  v4 = *(this + 21);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_14);
  }

  *(this + 8) = 0;
  return 0;
}

uint64_t PRRVideoDecoder::copyProperty(PRRVideoDecoder *this, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  v4 = 4294954394;
  if (!cf1 || !a4)
  {
    return v4;
  }

  if (CFEqual(cf1, *MEMORY[0x277CE26F8]))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = *(this + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN15PRRVideoDecoder12copyPropertyEPK10__CFStringPK13__CFAllocatorPv_block_invoke;
    block[3] = &unk_27A718108;
    block[4] = &v13;
    block[5] = this;
    dispatch_sync(v9, block);
    valuePtr = *(v14 + 6);
    v10 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
    *a4 = v10;
    if (v10)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294954392;
    }

    _Block_object_dispose(&v13, 8);
    return v4;
  }

  return VideoDecoderBase<PRRVideoDecoder>::copyProperty(this, cf1, a3, a4);
}

void sub_277828C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15PRRVideoDecoder12copyPropertyEPK10__CFStringPK13__CFAllocatorPv_block_invoke(uint64_t a1)
{
  result = FrameDecoder::getNumThreads(*(*(a1 + 40) + 80));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::copyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, __CFDictionary **a4)
{
  result = 4294954394;
  if (cf1 && a4)
  {
    if (CFEqual(cf1, *MEMORY[0x277CE26C8]))
    {
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        valuePtr = *(a1 + 52);
        v10 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
        if (v10)
        {
          v11 = v10;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2770], v10);
          CFRelease(v11);
        }

        v19 = *(a1 + 56);
        v12 = CFNumberCreate(a3, kCFNumberIntType, &v19);
        if (v12)
        {
          v13 = v12;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2768], v12);
          CFRelease(v13);
        }

        result = 0;
        *a4 = Mutable;
      }

      else
      {
        result = 4294954385;
        *a4 = 0;
      }
    }

    else
    {
      if (CFEqual(cf1, *MEMORY[0x277CE26E0]))
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          Copy = CFArrayCreateCopy(a3, v14);
        }

        else
        {
          Copy = 0;
        }
      }

      else if (CFEqual(cf1, *MEMORY[0x277CE26F0]) || CFEqual(cf1, *MEMORY[0x277CE26E8]) || CFEqual(cf1, *MEMORY[0x277CE26A8]))
      {
        Copy = (*(*a1 + 120))(a1, a3, cf1);
      }

      else
      {
        if (CFEqual(cf1, *MEMORY[0x277CE2648]))
        {
          result = 0;
          *a4 = *MEMORY[0x277CBED10];
          return result;
        }

        if (!CFEqual(cf1, @"DecoderPrefaultedCVPixelBufferPoolCapacity"))
        {
          return 4294954396;
        }

        v16 = *(a1 + 64);
        if (v16)
        {
          LODWORD(v16) = *(v16 + 8);
        }

        v17 = v16;
        Copy = CFNumberCreate(a3, kCFNumberSInt32Type, &v17);
      }

      *a4 = Copy;
      if (Copy)
      {
        return 0;
      }

      else
      {
        return 4294954385;
      }
    }
  }

  return result;
}

uint64_t PRRVideoDecoder::setProperty(PRRVideoDecoder *this, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, @"kVTCodecPropertyKey_DecodeInformationOnly"))
  {
    v6 = CFGetTypeID(a3);
    if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(a3);
      result = 0;
      *(this + 88) = Value != 0;
    }

    else
    {
      return 4294954394;
    }
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26F8]))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    valuePtr = 0;
    if (a3 && (v9 = CFGetTypeID(a3), v9 == CFNumberGetTypeID()) && CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr) && valuePtr >= 1)
    {
      v10 = *(this + 19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN15PRRVideoDecoder11setPropertyEPK10__CFStringPKv_block_invoke;
      block[3] = &unk_27A718130;
      v13 = valuePtr;
      block[4] = &v15;
      block[5] = this;
      dispatch_sync(v10, block);
      v11 = *(v16 + 6);
    }

    else
    {
      v11 = 4294954394;
      *(v16 + 6) = -12902;
    }

    _Block_object_dispose(&v15, 8);
    return v11;
  }

  else
  {

    return VideoDecoderBase<PRRVideoDecoder>::setProperty(this, cf1, a3);
  }

  return result;
}

void sub_2778290E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15PRRVideoDecoder11setPropertyEPK10__CFStringPKv_block_invoke(uint64_t a1)
{
  result = FrameDecoder::getNumThreads(*(*(a1 + 40) + 80));
  if (*(a1 + 48) != result)
  {
    operator new();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_2778291CC(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x277CB0040](v3, 0x1020C40E6F2F0EDLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *(*(*(v2 + 32) + 8) + 24) = -12904;
    __cxa_end_catch();
    if (!*(*(*(v2 + 32) + 8) + 24))
    {
      JUMPOUT(0x277829194);
    }

    JUMPOUT(0x27782913CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::setProperty(PreFaultedCVPixelBufferPool **a1, CFTypeRef cf1, const __CFDictionary *a3)
{
  result = 4294954394;
  if (!cf1 || !a3)
  {
    return result;
  }

  if (CFEqual(cf1, *MEMORY[0x277CE26C8]))
  {
    v7 = *MEMORY[0x277CE2770];
    if (*MEMORY[0x277CE2770])
    {
      v8 = *(a1 + 13);
      value = 0;
      if (CFDictionaryGetValueIfPresent(a3, v7, &value))
      {
        if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 52))
        {
          *(a1 + 13) = v8;
        }
      }
    }

    v9 = *MEMORY[0x277CE2768];
    if (*MEMORY[0x277CE2768])
    {
      v10 = *(a1 + 14);
      value = 0;
      if (CFDictionaryGetValueIfPresent(a3, v9, &value))
      {
        if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 7))
        {
          *(a1 + 14) = v10;
        }
      }
    }

    (*(*a1 + 10))(a1);
    return (*(*a1 + 11))(a1, *(a1 + 12));
  }

  if (CFEqual(cf1, @"DecoderPrefaultedCVPixelBufferPoolCapacity"))
  {
    LODWORD(value) = 0;
    v11 = CFGetTypeID(a3);
    if (v11 != CFNumberGetTypeID() || !CFNumberGetValue(a3, kCFNumberSInt32Type, &value))
    {
      return 4294954394;
    }

    if (value >= 1)
    {
      v12 = a1[8];
      if (!v12)
      {
        if (enabledSignpostCategories())
        {
          kdebug_trace();
        }

        operator new();
      }

      if (*(v12 + 1) != value)
      {
        if (PreFaultedCVPixelBufferPool::setCapacity(v12, value))
        {
          if (enabledSignpostCategories())
          {
            kdebug_trace();
            return 0;
          }

          return 0;
        }

        return 4294954394;
      }

      return 0;
    }

    if (value)
    {
      return 4294954394;
    }

    v13 = a1[8];
    if (!v13)
    {
      return 0;
    }

    a1[8] = 0;
    if (enabledSignpostCategories())
    {
      kdebug_trace();
    }

    v14 = a1[9];
    if (v14)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = ___ZN16VideoDecoderBaseI15PRRVideoDecoderE11setPropertyEPK10__CFStringPKv_block_invoke;
      v16[3] = &__block_descriptor_tmp_101;
      v16[4] = v13;
      dispatch_async(v14, v16);
    }

    else
    {
      PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v13);
      MEMORY[0x277CB0040]();
    }

    return 0;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E0]))
  {
    return 4294954395;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26F0]))
  {
    return 4294954395;
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E8]))
  {
    return 4294954395;
  }

  else
  {
    v15 = CFEqual(cf1, *MEMORY[0x277CE26A8]);
    result = 4294954395;
    if (!v15)
    {
      if (CFEqual(cf1, *MEMORY[0x277CE2648]))
      {
        return 4294954395;
      }

      else
      {
        return 4294954396;
      }
    }
  }

  return result;
}

_DWORD *PRRVideoDecoder::updateDecodingDimensions(_DWORD *this)
{
  v1 = this[13];
  if (v1 <= 0)
  {
    v1 = this[24];
    v2 = this[14];
    if (v2 > 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = this[14];
    if (v2 > 0)
    {
      goto LABEL_3;
    }
  }

  v2 = this[25];
LABEL_3:
  v3 = this[12];
  if (v3 == 1380410945 || v3 == 1651521076 || v3 == 1380411457)
  {
    v6 = this[24];
    if (v6 >= 8 * v1 && (v7 = this[25], v7 >= 8 * v2))
    {
      this[23] = 3;
      this[13] = v6 / 8;
      this[14] = v7 / 8;
    }

    else if (v6 >= 4 * v1 && (v8 = this[25], v8 >= 4 * v2))
    {
      this[23] = 2;
      this[13] = v6 / 4;
      this[14] = v8 / 4;
    }

    else if (v6 >= 2 * v1)
    {
      v11 = this[25];
      if (v11 >= 2 * v2)
      {
        this[23] = 1;
        this[13] = v6 / 2;
        this[14] = v11 / 2;
      }

      else
      {
        this[23] = 0;
        this[13] = v6;
        this[14] = v11;
      }
    }

    else
    {
      v9 = this[25];
      this[23] = 0;
      this[13] = v6;
      this[14] = v9;
    }
  }

  else
  {
    this[23] = 0;
    v10 = this[25];
    this[13] = this[24];
    this[14] = v10;
  }

  return this;
}

uint64_t PRRVideoDecoder::createPixelBufferPool(PRRVideoDecoder *this, int a2)
{
  v3 = *(this + 13);
  v31 = *(this + 14);
  valuePtr = a2;
  v4 = MEMORY[0x277CBECE8];
  if (a2 && (v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr)) != 0)
  {
    v6 = v5;
    v29 = 1;
    v7 = 1;
    v8 = v5;
  }

  else
  {
    v8 = (*(*this + 128))(this);
    v29 = 0;
    v7 = 0;
    v6 = 0;
  }

  v10 = valuePtr == 1983000880 || (*(this + 24) & 0xF) == 0;
  v9 = *(this + 24) & 0xF;
  v11 = 16 - v9;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 16 - v9;
  }

  v30 = v12;
  if (useIOSurface(void)::s_predicate == -1)
  {
    if (useIOSurface(void)::s_useIOSurface == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    PRRVideoDecoder::createPixelBufferPool();
    if (useIOSurface(void)::s_useIOSurface == 1)
    {
LABEL_13:
      v13 = CFDictionaryCreate(*v4, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v14 = v13 != 0;
      if (v3 != *(this + 26))
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }
  }

  v13 = 0;
  v14 = 0;
  if (v3 != *(this + 26))
  {
    goto LABEL_26;
  }

LABEL_17:
  v15 = v7 ^ 1;
  if (v31 != *(this + 27))
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0 && *(this + 112) == 1 && valuePtr == *(this + 29) && v30 == *(this + 30) && *(this + 124) == v14)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_26:
  v28 = v14;
  v17 = *v4;
  Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v16 = 0xFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_45;
    }

LABEL_44:
    CFRelease(v13);
    goto LABEL_45;
  }

  v19 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v8);
  v33 = v3;
  v20 = CFNumberCreate(v17, kCFNumberIntType, &v33);
  if (v20)
  {
    v21 = v20;
    CFDictionaryAddValue(v19, *MEMORY[0x277CC4EC8], v20);
    CFRelease(v21);
  }

  v33 = v31;
  v22 = CFNumberCreate(v17, kCFNumberIntType, &v33);
  if (v22)
  {
    v23 = v22;
    CFDictionaryAddValue(v19, *MEMORY[0x277CC4DD8], v22);
    CFRelease(v23);
  }

  if (!v10)
  {
    v33 = v11;
    v24 = CFNumberCreate(v17, kCFNumberIntType, &v33);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v19, *MEMORY[0x277CC4DB8], v24);
      CFRelease(v25);
    }
  }

  if (v13)
  {
    CFDictionaryAddValue(v19, *MEMORY[0x277CC4DE8], v13);
  }

  if (VTDecoderSessionSetPixelBufferAttributes())
  {
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = valuePtr;
    *(this + 26) = v3;
    *(this + 27) = v31;
    *(this + 112) = v29;
    *(this + 29) = v26;
    *(this + 30) = v30;
    *(this + 124) = v28;
    if (VideoDecoderBase<PRRVideoDecoder>::replaceLocalPixelBufferPool(this))
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
    }
  }

  CFRelease(v19);
  if (v13)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v7)
  {
    CFRelease(v6);
  }

  return v16;
}

uint64_t VideoDecoderBase<PRRVideoDecoder>::replaceLocalPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 64))
  {
    if (enabledSignpostCategories())
    {
      kdebug_trace();
    }

    v2 = *(a1 + 64);
    v3 = *(a1 + 72);
    *(a1 + 64) = 0;
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN16VideoDecoderBaseI15PRRVideoDecoderE27replaceLocalPixelBufferPoolEv_block_invoke;
      block[3] = &__block_descriptor_tmp_102;
      block[4] = v2;
      dispatch_async(v3, block);
    }

    else if (v2)
    {
      PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v2);
      MEMORY[0x277CB0040]();
    }

    operator new();
  }

  return 0;
}

void sub_277829D18(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if ((enabledSignpostCategories() & 1) == 0)
    {
      JUMPOUT(0x277829CFCLL);
    }

    JUMPOUT(0x277829CDCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PRRVideoDecoder::allPixelFormatsOrderedByPreference(PRRVideoDecoder *this)
{
  if (PRRVideoDecoder::allPixelFormatsOrderedByPreference(void)::pred != -1)
  {
    PRRVideoDecoder::allPixelFormatsOrderedByPreference();
  }

  return qword_280A714E0;
}

uint64_t PRRVideoDecoder::pixelFormatsOrderedByQuality(PRRVideoDecoder *this)
{
  if (PRRVideoDecoder::pixelFormatsOrderedByQuality(void)::pred != -1)
  {
    PRRVideoDecoder::pixelFormatsOrderedByQuality();
  }

  return qword_280A714F8;
}

uint64_t PRRVideoDecoder::pixelFormatsOrderedByPerformance(PRRVideoDecoder *this)
{
  if (PRRVideoDecoder::pixelFormatsOrderedByPerformance(void)::pred != -1)
  {
    PRRVideoDecoder::pixelFormatsOrderedByPerformance();
  }

  return qword_280A71510;
}

uint64_t PRRVideoDecoder::pixelFormatsWithReducedResolutionSupport(PRRVideoDecoder *this)
{
  if (PRRVideoDecoder::pixelFormatsWithReducedResolutionSupport(void)::pred != -1)
  {
    PRRVideoDecoder::pixelFormatsWithReducedResolutionSupport();
  }

  return qword_280A71528;
}

void VideoDecoderBase<PRRVideoDecoder>::finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[8];
  v4 = a1[9];
  a1[8] = 0;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN16VideoDecoderBaseI15PRRVideoDecoderE8finalizeEv_block_invoke;
    block[3] = &__block_descriptor_tmp_103;
    block[4] = v3;
    dispatch_async(v4, block);
LABEL_5:
    a1[4] = 0;
    return;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(v3);
  MEMORY[0x277CB0040]();
  a1[4] = 0;
}

CFArrayRef VideoDecoderBase<PRRVideoDecoder>::copyPixelFormatArray(uint64_t a1, const __CFAllocator *a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, *MEMORY[0x277CE26F0]))
  {
    v6 = (*(*a1 + 96))(a1);
  }

  else if (CFEqual(cf1, *MEMORY[0x277CE26E8]))
  {
    v6 = (*(*a1 + 104))(a1);
  }

  else
  {
    if (!CFEqual(cf1, *MEMORY[0x277CE26A8]))
    {
      return 0;
    }

    v6 = (*(*a1 + 112))(a1);
  }

  return CFArrayCreateCopy(a2, v6);
}

void ___ZL23intermediatePixelFormatv_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IntermediatePixelFormatInProResRAW", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppIntegerValue;
    _MergedGlobals_1 = AppIntegerValue == 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (v1 == 1)
      {
        v2 = 1647392369;
      }

      else
      {
        v2 = 1651519798;
      }

      LODWORD(__p) = bswap32(v2);
      BYTE4(__p) = 0;
      v4 = 4;
      *buf = 136315138;
      p_p = &__p;
      _os_log_impl(&dword_277820000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PRRVideoDecoder: Setting intermediate format to: %s\n", buf, 0xCu);
      if (v4 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

uint64_t ___ZL10drawStripev_block_invoke_0()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"DrawStripeInProResRAW", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_280A71619 = result != 0;
  }

  return result;
}

uint64_t ___ZL13enableLoggingv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"EnableLoggingInProResRAW", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_280A7161A = result != 0;
  }

  return result;
}

uint64_t ___ZL12useIOSurfacev_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"UseIOSurfaceInProResRAW", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    useIOSurface(void)::s_useIOSurface = result != 0;
  }

  return result;
}

void *VideoCodecBase<PRRVideoDecoder>::~VideoCodecBase(void *a1)
{
  *a1 = &unk_28866B2F0;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void VideoCodecBase<PRRVideoDecoder>::finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15PRRVideoDecoderE11setPropertyEPK10__CFStringPKv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15PRRVideoDecoderE27replaceLocalPixelBufferPoolEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

PreFaultedCVPixelBufferPool *___ZN16VideoDecoderBaseI15PRRVideoDecoderE8finalizeEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    PreFaultedCVPixelBufferPool::~PreFaultedCVPixelBufferPool(result);

    JUMPOUT(0x277CB0040);
  }

  return result;
}

uint64_t BitstreamReader::initialize(uint64_t this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 3)
  {
    v5 = *a2;
    a2 += 4;
    v4 = a3 - 4;
    *(this + 40) = 0;
    *(this + 4) = bswap32(v5);
    if ((a2 & 3) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (a3)
  {
    v3 = *a2 << 24;
    if (a3 != 1)
    {
      v3 |= a2[1] << 16;
      if (a3 != 2)
      {
        v3 |= a2[2] << 8;
      }
    }

    v4 = 0;
    a2 += a3;
    *(this + 40) = 32 - 8 * a3;
    *(this + 4) = v3;
    *(this + 8) = 0;
    if ((a2 & 3) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    *(this + 40) = 32;
    *(this + 4) = 0;
    *(this + 8) = 0;
    if ((a2 & 3) == 0)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_21;
    }
  }

  v6 = a2 & 3;
  v7 = (4 - v6);
  if (v7 > v4)
  {
    goto LABEL_12;
  }

  if (a3 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = a3;
  }

  v10 = v9 + v6;
  v8 = *a2 << 24;
  if (v6 != 3)
  {
    v8 |= a2[1] << 16;
    if (v6 != 2)
    {
      v8 |= a2[2] << 8;
      if (v6 != 1)
      {
        v8 |= a2[3];
      }
    }
  }

  a2 += v7;
  v4 = v10 - 8;
  *(this + 8) = 32 - 8 * v6;
LABEL_21:
  *this = v8;
  *(this + 16) = a2;
  *(this + 24) = &a2[v4 & 0xFFFFFFFC];
  *(this + 32) = &a2[v4];
  return this;
}

double DiscreteCosineTransform::idct_2x1(DiscreteCosineTransform *this, __int16 *a2, __int16 *a3, __int16 *a4, const __int16 *a5)
{
  if (atomic_load_explicit(&qword_280A71640, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71650, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a2;
    v17 = a3;
    v22 = a4;
    v12 = this;
    DiscreteCosineTransform::idct_2x1();
    this = v12;
    a4 = v22;
    LOBYTE(a3) = v17;
    a2 = v27;
    if (atomic_load_explicit(&qword_280A71650, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71660, memory_order_acquire))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v28 = a2;
  v18 = a3;
  v23 = a4;
  v13 = this;
  DiscreteCosineTransform::idct_2x1();
  this = v13;
  a4 = v23;
  LOBYTE(a3) = v18;
  a2 = v28;
  if (atomic_load_explicit(&qword_280A71660, memory_order_acquire))
  {
LABEL_4:
    if (atomic_load_explicit(&qword_280A71670, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_10:
    v30 = a2;
    v20 = a3;
    v25 = a4;
    v15 = this;
    DiscreteCosineTransform::idct_2x1();
    this = v15;
    a4 = v25;
    LOBYTE(a3) = v20;
    a2 = v30;
    if (atomic_load_explicit(&qword_280A71680, memory_order_acquire))
    {
      goto LABEL_6;
    }

LABEL_11:
    v31 = a2;
    v21 = a3;
    v26 = a4;
    v16 = this;
    DiscreteCosineTransform::idct_2x1();
    this = v16;
    a4 = v26;
    LOBYTE(a3) = v21;
    a2 = v31;
    goto LABEL_6;
  }

LABEL_9:
  v29 = a2;
  v19 = a3;
  v24 = a4;
  v14 = this;
  DiscreteCosineTransform::idct_2x1();
  this = v14;
  a4 = v24;
  LOBYTE(a3) = v19;
  a2 = v29;
  if ((atomic_load_explicit(&qword_280A71670, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((atomic_load_explicit(&qword_280A71680, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = *&qword_280A71658 + *&qword_280A71658 + *&qword_280A71658 + *&qword_280A71658;
  v6 = v5 * ((*a4 * *this) >> 1);
  v7 = v6 + v6;
  v8 = v5 * ((a4[1] * *(this + 1)) >> 1);
  v9 = (*&_MergedGlobals_2 + *&qword_280A71648 + *&qword_280A71668 + *&qword_280A71678) * (v8 + v8);
  v10 = vcvtd_n_f64_s32(1 << a3, 0x12uLL);
  *a2 = rint(v10 * (v9 + v5 * v7));
  result = rint(v10 * (v5 * v7 - v9));
  a2[1] = result;
  return result;
}

double DiscreteCosineTransform::idct_1x2(DiscreteCosineTransform *this, __int16 *a2, __int16 *a3, __int16 *a4, const __int16 *a5)
{
  if (atomic_load_explicit(&qword_280A71690, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A716A0, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = a2;
    v20 = a3;
    v25 = a4;
    v15 = this;
    DiscreteCosineTransform::idct_1x2();
    this = v15;
    a4 = v25;
    LOBYTE(a3) = v20;
    a2 = v30;
    if (atomic_load_explicit(&qword_280A716A0, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A716B0, memory_order_acquire))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v31 = a2;
  v21 = a3;
  v26 = a4;
  v16 = this;
  DiscreteCosineTransform::idct_1x2();
  this = v16;
  a4 = v26;
  LOBYTE(a3) = v21;
  a2 = v31;
  if (atomic_load_explicit(&qword_280A716B0, memory_order_acquire))
  {
LABEL_4:
    if (atomic_load_explicit(&qword_280A716C0, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_10:
    v33 = a2;
    v23 = a3;
    v28 = a4;
    v18 = this;
    DiscreteCosineTransform::idct_1x2();
    this = v18;
    a4 = v28;
    LOBYTE(a3) = v23;
    a2 = v33;
    if (atomic_load_explicit(&qword_280A716D0, memory_order_acquire))
    {
      goto LABEL_6;
    }

LABEL_11:
    v34 = a2;
    v24 = a3;
    v29 = a4;
    v19 = this;
    DiscreteCosineTransform::idct_1x2();
    this = v19;
    a4 = v29;
    LOBYTE(a3) = v24;
    a2 = v34;
    goto LABEL_6;
  }

LABEL_9:
  v32 = a2;
  v22 = a3;
  v27 = a4;
  v17 = this;
  DiscreteCosineTransform::idct_1x2();
  this = v17;
  a4 = v27;
  LOBYTE(a3) = v22;
  a2 = v32;
  if ((atomic_load_explicit(&qword_280A716C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((atomic_load_explicit(&qword_280A716D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = ((*a4 * *this) >> 1);
  v6 = ((a4[8] * *(this + 1)) >> 1);
  v7 = *&qword_280A716A8 + *&qword_280A716A8 + *&qword_280A716A8 + *&qword_280A716A8;
  v8 = *&qword_280A71688 + *&qword_280A71698 + *&qword_280A716B8 + *&qword_280A716C8;
  v9 = v8 * v6 + v7 * v5;
  v10 = v7 * v5 - v8 * v6;
  v11 = v7 * v9 + v7 * v9;
  v12 = v7 * v10 + v7 * v10;
  v13 = vcvtd_n_f64_s32(1 << a3, 0x12uLL);
  *a2 = rint(v13 * v11);
  result = rint(v13 * v12);
  a2[1] = result;
  return result;
}

double DiscreteCosineTransform::idct_1x1(DiscreteCosineTransform *this, __int16 *a2, __int16 *a3, __int16 *a4, const __int16 *a5)
{
  result = rint((1 << a3) * 32.0 * 0.00000190734863 * ((*a4 * *this) >> 1));
  *a2 = result;
  return result;
}

void DiscreteCosineTransform::idct_2x1()
{
  if (__cxa_guard_acquire(&qword_280A71640))
  {
    v0 = OUTLINED_FUNCTION_2(&_MergedGlobals_2);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71650))
  {
    v0 = OUTLINED_FUNCTION_4(&qword_280A71648);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71660))
  {
    v0 = OUTLINED_FUNCTION_3(&qword_280A71658);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71670))
  {
    v0 = OUTLINED_FUNCTION_1(&qword_280A71668);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A71680))
  {
    v0 = OUTLINED_FUNCTION_0_0(&qword_280A71678);

    __cxa_guard_release(v0);
  }
}

void DiscreteCosineTransform::idct_1x2()
{
  if (__cxa_guard_acquire(&qword_280A71690))
  {
    v0 = OUTLINED_FUNCTION_2(&qword_280A71688);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A716A0))
  {
    v0 = OUTLINED_FUNCTION_4(&qword_280A71698);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A716B0))
  {
    v0 = OUTLINED_FUNCTION_3(&qword_280A716A8);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A716C0))
  {
    v0 = OUTLINED_FUNCTION_1(&qword_280A716B8);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280A716D0))
  {
    v0 = OUTLINED_FUNCTION_0_0(&qword_280A716C8);

    __cxa_guard_release(v0);
  }
}

int16x8_t DiscreteCosineTransform::idct_8x8(int16x8_t *this, int16x8_t *a2, __int16 *a3, int16x8_t *a4, const __int16 *a5)
{
  v9 = this[2];
  v8 = this[3];
  v11 = this[4];
  v10 = this[5];
  v13 = this[6];
  v12 = this[7];
  v14 = this[1];
  v15 = vorrq_s8(vorrq_s8(vorrq_s8(v9, v14), vorrq_s8(v8, v11)), vorrq_s8(vorrq_s8(v10, v13), v12));
  v15.i16[0] = vmaxvq_u16(v15);
  v16 = vshrq_n_s16(vmulq_s16(*a4, *this), 1uLL);
  if (v15.i32[0])
  {
    v111 = vmulq_s16(a4[4], v11);
    v112 = vmulq_s16(a4[5], v10);
    v113 = vmulq_s16(a4[7], v12);
    v114 = vmulq_s16(a4[6], v13);
    v17 = vqtbl1q_s8(v16, xmmword_2778753F0);
    v18 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[1], v14), 1uLL), xmmword_2778753F0);
    v19 = vdupq_lane_s32(*v17.i8, 0);
    v20 = vqtbl1q_s8(v17, xmmword_277875400);
    v21 = vdupq_laneq_s32(v20, 2);
    v22 = vpaddq_s32(vmull_s16(*v21.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v21, v21, 8uLL), 0xDD5D4000539FC000));
    v23 = vdupq_lane_s32(*v18.i8, 0);
    v24 = vqtbl1q_s8(v18, xmmword_277875400);
    v25 = vdupq_laneq_s32(v24, 2);
    v26 = vdupq_lane_s32(*v17.i8, 1);
    v27 = vdupq_lane_s32(*v18.i8, 1);
    v28 = vdupq_laneq_s32(v20, 3);
    v119.val[0] = vpaddq_s32(vmull_s16(*v28.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v28, v28, 8uLL), 0xA73B4B424B4211A8));
    v29 = vdupq_laneq_s32(v24, 3);
    v119.val[1] = vpaddq_s32(vmull_s16(*v29.i8, 0xBA4184DF187E45BFLL), vmull_s16(*&vextq_s8(v29, v29, 8uLL), 0x84DF68626862187ELL));
    v30.i64[0] = 0x200000002000;
    v30.i64[1] = 0x200000002000;
    v31 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v19.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v19, v19, 8uLL), 0xAC614000DD5D4000)), v30), v22);
    v32 = vaddq_s32(v119.val[0], vpaddq_s32(vmull_s16(*v26.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v26, v26, 8uLL), 0xCDB711A8A73B3249)));
    v33 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v23.i8, 0x300B58C573FC58C5), vmull_s16(*&vextq_s8(v23, v23, 8uLL), 0x8C0458C5CFF558C5)), vdupq_n_s32(0x5AACu)), vpaddq_s32(vmull_s16(*v25.i8, 0x8C04A73B300B58C5), vmull_s16(*&vextq_s8(v25, v25, 8uLL), 0xCFF558C573FCA73BLL)));
    v118.val[1] = vaddq_s32(v119.val[1], vpaddq_s32(vmull_s16(*v27.i8, 0xE782686268627B21), vmull_s16(*&vextq_s8(v27, v27, 8uLL), 0xBA41187E84DF45BFLL)));
    *v119.val[0].i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v32, v31), 0xEuLL));
    *v119.val[1].i8 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v31, v32), 0xEuLL));
    v115 = vqtbl2q_s8(v119, xmmword_277875410);
    *&v5 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v118.val[1], v33), 0xEuLL));
    *&v6 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v33, v118.val[1]), 0xEuLL));
    v34 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[2], v9), 1uLL), xmmword_2778753F0);
    v35 = vdupq_lane_s32(*v34.i8, 0);
    v36 = vpaddq_s32(vmull_s16(*v35.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v35, v35, 8uLL), 0x92BF539FD2BF539FLL));
    v37 = vqtbl1q_s8(v34, xmmword_277875400);
    v38 = vdupq_laneq_s32(v37, 2);
    v39 = vpaddq_s32(vmull_s16(*v38.i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v38, v38, 8uLL), 0xD2BF539F6D41AC61));
    v40 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[3], v8), 1uLL), xmmword_2778753F0);
    v41 = vdupq_lane_s32(*v40.i8, 0);
    v120.val[0] = vpaddq_s32(vmull_s16(*v41.i8, 0x28BA4B4262544B42), vmull_s16(*&vextq_s8(v41, v41, 8uLL), 0x9DAC4B42D7464B42));
    v42 = vqtbl1q_s8(v40, xmmword_277875400);
    v43 = vdupq_laneq_s32(v42, 2);
    v44 = vdupq_lane_s32(*v34.i8, 1);
    v45 = vdupq_lane_s32(*v40.i8, 1);
    v46 = vdupq_laneq_s32(v37, 3);
    v47 = vdupq_laneq_s32(v42, 3);
    v120.val[1] = vdupq_n_s32(0x46A1u);
    v48 = vaddq_s32(vaddq_s32(v36, v120.val[1]), v39);
    v49 = vaddq_s32(vpaddq_s32(vmull_s16(*v46.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v46, v46, 8uLL), 0x8C04625462541712)), vpaddq_s32(vmull_s16(*v44.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v44, v44, 8uLL), 0xBE4D17128C0441B3)));
    v50 = vaddq_s32(vaddq_s32(v120.val[0], vdupq_n_s32(0x3543u)), vpaddq_s32(vmull_s16(*v43.i8, 0x9DACB4BE28BA4B42), vmull_s16(*&vextq_s8(v43, v43, 8uLL), 0xD7464B426254B4BELL)));
    v51 = vaddq_s32(vpaddq_s32(vmull_s16(*v47.i8, 0xC4DF979E14C33B21), vmull_s16(*&vextq_s8(v47, v47, 8uLL), 0x979E587E587E14C3)), vpaddq_s32(vmull_s16(*v45.i8, 0xEB3D587E587E6862), vmull_s16(*&vextq_s8(v45, v45, 8uLL), 0xC4DF14C3979E3B21)));
    *v39.i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v49, v48), 0xEuLL));
    *&v7 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v48, v49), 0xEuLL));
    *v120.val[0].i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v51, v50), 0xEuLL));
    *v120.val[1].i8 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v50, v51), 0xEuLL));
    v52 = vqtbl1q_s8(vshrq_n_s16(v111, 1uLL), xmmword_2778753F0);
    v53 = vdupq_lane_s32(*v52.i8, 0);
    v54 = vqtbl1q_s8(v52, xmmword_277875400);
    v55 = vdupq_laneq_s32(v54, 2);
    v56 = vqtbl1q_s8(vshrq_n_s16(v112, 1uLL), xmmword_2778753F0);
    v57 = vdupq_lane_s32(*v56.i8, 0);
    v58 = vqtbl1q_s8(v56, xmmword_277875400);
    v59 = vdupq_laneq_s32(v58, 2);
    v60 = vdupq_lane_s32(*v52.i8, 1);
    v61 = vdupq_lane_s32(*v56.i8, 1);
    v118.val[0] = vpaddq_s32(vmull_s16(*v61.i8, 0xEB3D587E587E6862), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 0xC4DF14C3979E3B21));
    v62 = vdupq_laneq_s32(v54, 3);
    v63 = vdupq_laneq_s32(v58, 3);
    v118.val[1].i64[0] = 0x200000002000;
    v118.val[1].i64[1] = 0x200000002000;
    v64 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v53.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v53, v53, 8uLL), 0xAC614000DD5D4000)), v118.val[1]), vpaddq_s32(vmull_s16(*v55.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v55, v55, 8uLL), 0xDD5D4000539FC000)));
    v117.val[1] = vdupq_n_s32(0xE35u);
    v65 = vaddq_s32(vpaddq_s32(vmull_s16(*v62.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 0xA73B4B424B4211A8)), vpaddq_s32(vmull_s16(*v60.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v60, v60, 8uLL), 0xCDB711A8A73B3249)));
    v66 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v57.i8, 0x28BA4B4262544B42), vmull_s16(*&vextq_s8(v57, v57, 8uLL), 0x9DAC4B42D7464B42)), v117.val[1]), vpaddq_s32(vmull_s16(*v59.i8, 0x9DACB4BE28BA4B42), vmull_s16(*&vextq_s8(v59, v59, 8uLL), 0xD7464B426254B4BELL)));
    v67 = vaddq_s32(vpaddq_s32(vmull_s16(*v63.i8, 0xC4DF979E14C33B21), vmull_s16(*&vextq_s8(v63, v63, 8uLL), 0x979E587E587E14C3)), v118.val[0]);
    v117.val[0] = vsubq_s32(v64, v65);
    v68 = vaddq_s32(v65, v64);
    v69 = vshrq_n_s32(v117.val[0], 0xEuLL);
    *v117.val[0].i8 = vqmovn_s32(vshrq_n_s32(v68, 0xEuLL));
    *v117.val[1].i8 = vqmovn_s32(v69);
    v70 = vqtbl2q_s8(v117, xmmword_277875410);
    *v118.val[0].i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v67, v66), 0xEuLL));
    *v118.val[1].i8 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v66, v67), 0xEuLL));
    v71 = vqtbl1q_s8(vshrq_n_s16(v114, 1uLL), xmmword_2778753F0);
    v72 = vqtbl1q_s8(vshrq_n_s16(v113, 1uLL), xmmword_2778753F0);
    v73 = vdupq_lane_s32(*v71.i8, 0);
    v74 = vqtbl1q_s8(v71, xmmword_277875400);
    v117.val[0] = vdupq_laneq_s32(v74, 2);
    v117.val[1] = vdupq_lane_s32(*v72.i8, 0);
    v119.val[0] = vqtbl1q_s8(v72, xmmword_277875400);
    v119.val[1] = vdupq_laneq_s32(v119.val[0], 2);
    v75 = vdupq_lane_s32(*v71.i8, 1);
    v76 = vpaddq_s32(vmull_s16(*v119.val[1].i8, 0x8C04A73B300B58C5), vmull_s16(*&vextq_s8(v119.val[1], v119.val[1], 8uLL), 0xCFF558C573FCA73BLL));
    v77 = vdupq_lane_s32(*v72.i8, 1);
    v78 = vdupq_laneq_s32(v74, 3);
    v119.val[0] = vdupq_laneq_s32(v119.val[0], 3);
    v119.val[1].i64[0] = 0x100000001000;
    v119.val[1].i64[1] = 0x100000001000;
    v116.val[1] = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v73.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 0x92BF539FD2BF539FLL)), v119.val[1]), vpaddq_s32(vmull_s16(*v117.val[0].i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v117.val[0], v117.val[0], 8uLL), 0xD2BF539F6D41AC61)));
    v79 = vaddq_s32(vpaddq_s32(vmull_s16(*v78.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 0x8C04625462541712)), vpaddq_s32(vmull_s16(*v75.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 0xBE4D17128C0441B3)));
    v80 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v117.val[1].i8, 0x300B58C573FC58C5), vmull_s16(*&vextq_s8(v117.val[1], v117.val[1], 8uLL), 0x8C0458C5CFF558C5)), vdupq_n_s32(0xBACu)), v76);
    v117.val[0] = vaddq_s32(vpaddq_s32(vmull_s16(*v119.val[0].i8, 0xBA4184DF187E45BFLL), vmull_s16(*&vextq_s8(v119.val[0], v119.val[0], 8uLL), 0x84DF68626862187ELL)), vpaddq_s32(vmull_s16(*v77.i8, 0xE782686268627B21), vmull_s16(*&vextq_s8(v77, v77, 8uLL), 0xBA41187E84DF45BFLL)));
    v116.val[0] = vsubq_s32(v116.val[1], v79);
    v117.val[1] = vshrq_n_s32(v116.val[0], 0xEuLL);
    *v116.val[0].i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v79, v116.val[1]), 0xEuLL));
    *v116.val[1].i8 = vqmovn_s32(v117.val[1]);
    v81 = vsubq_s32(v80, v117.val[0]);
    v82 = vshrq_n_s32(vaddq_s32(v117.val[0], v80), 0xEuLL);
    *v82.i8 = vqmovn_s32(v82);
    *v117.val[0].i8 = vqmovn_s32(vshrq_n_s32(v81, 0xEuLL));
    v83 = vdupq_n_s16(0xAB0Eu);
    v117.val[1] = vqtbl2q_s8(v118, xmmword_277875410);
    v118.val[1] = vqtbl2q_s8(v120, xmmword_277875410);
    v118.val[0] = vqaddq_s16(vqaddq_s16(vuzp2q_s16(vmull_s16(*v83.i8, *v118.val[0].i8), vmull_high_s16(v83, v117.val[1])), v117.val[1]), v118.val[1]);
    v84 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v83.i8, *v120.val[0].i8), vmull_high_s16(v83, v118.val[1])), v118.val[1]);
    v118.val[1] = vqtbl2q_s8(v117, xmmword_277875410);
    v85 = vqsubq_s16(v117.val[1], v84);
    v117.val[1] = vdupq_n_s16(0x32ECu);
    v117.val[0] = vqtbl2q_s8(*&v5, xmmword_277875410);
    v86 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v82.i8, *v117.val[1].i8), vmull_high_s16(v118.val[1], v117.val[1])), v117.val[0]);
    v117.val[0] = vqsubq_s16(vuzp2q_s16(vmull_s16(*&v5, *v117.val[1].i8), vmull_high_s16(v117.val[0], v117.val[1])), v118.val[1]);
    v117.val[1] = vqsubq_s16(v117.val[0], v85);
    v118.val[1] = vqsubq_s16(v86, v118.val[0]);
    v117.val[0] = vqaddq_s16(v117.val[0], v85);
    v87 = vqaddq_s16(v86, v118.val[0]);
    v88 = vqaddq_s16(v118.val[1], v117.val[1]);
    v118.val[0] = vdupq_n_s16(0xB505u);
    v89 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v88.i8, *v118.val[0].i8), vmull_high_s16(v88, v118.val[0])), v88);
    v117.val[1] = vqsubq_s16(v118.val[1], v117.val[1]);
    v118.val[1] = vqtbl2q_s8(v116, xmmword_277875410);
    v117.val[1] = vqaddq_s16(vuzp2q_s16(vmull_s16(*v117.val[1].i8, *v118.val[0].i8), vmull_high_s16(v117.val[1], v118.val[0])), v117.val[1]);
    v118.val[0] = vdupq_n_s16(0x6A0Au);
    v116.val[1] = vqtbl2q_s8(*(&v7 - 1), xmmword_277875410);
    v116.val[0] = vqaddq_s16(vuzp2q_s16(vmull_s16(*v116.val[0].i8, *v118.val[0].i8), vmull_high_s16(v118.val[1], v118.val[0])), v116.val[1]);
    v116.val[1] = vqsubq_s16(vuzp2q_s16(vmull_s16(*v39.i8, *v118.val[0].i8), vmull_high_s16(v116.val[1], v118.val[0])), v118.val[1]);
    v118.val[0].i64[0] = 0x1000100010001;
    v118.val[0].i64[1] = 0x1000100010001;
    v118.val[0] = vdupq_lane_s16(*&vshrq_n_u16(vshlq_u16(v118.val[0], (14 - a3)), 1uLL), 0);
    v118.val[1].i64[0] = 0x1000000010000;
    v118.val[1].i64[1] = 0x1000000010000;
    v118.val[1] = vqsubq_s16(v118.val[0], v118.val[1]);
    v76.i64[0] = 0x100000001;
    v76.i64[1] = 0x100000001;
    v118.val[0] = vqsubq_s16(v118.val[0], v76);
    v90 = vqaddq_s16(v115, v70);
    v119.val[1] = vqsubq_s16(v115, v70);
    v91 = vqaddq_s16(v90, v116.val[0]);
    v116.val[0] = vqsubq_s16(v90, v116.val[0]);
    v92 = vqaddq_s16(v119.val[1], v116.val[1]);
    v116.val[1] = vqsubq_s16(v119.val[1], v116.val[1]);
    v119.val[1] = vqaddq_s16(v116.val[0], v117.val[0]);
    v116.val[0] = vqsubq_s16(v116.val[0], v117.val[0]);
    v117.val[0] = vqaddq_s16(v116.val[1], v117.val[1]);
    v116.val[1] = vqsubq_s16(v116.val[1], v117.val[1]);
    v117.val[1] = vqaddq_s16(v92, v89);
    v93 = vqsubq_s16(v92, v89);
    v94 = vqaddq_s16(vqaddq_s16(v91, v87), v118.val[1]);
    v117.val[0] = vqaddq_s16(v117.val[0], v118.val[1]);
    v95 = vqaddq_s16(v116.val[0], v118.val[1]);
    v118.val[1] = vqaddq_s16(v93, v118.val[1]);
    v96 = vqaddq_s16(v119.val[1], v118.val[0]);
    v119.val[1] = vqaddq_s16(vqsubq_s16(v91, v87), v118.val[0]);
    v119.val[0] = vnegq_s16(vdupq_lane_s16((14 - a3), 0));
    result = vshlq_s16(v94, v119.val[0]);
    *a2 = result;
    a2[1] = vshlq_s16(vqaddq_s16(v117.val[1], v118.val[0]), v119.val[0]);
    a2[2] = vshlq_s16(v117.val[0], v119.val[0]);
    a2[3] = vshlq_s16(v96, v119.val[0]);
    a2[4] = vshlq_s16(v95, v119.val[0]);
    a2[5] = vshlq_s16(vqaddq_s16(v116.val[1], v118.val[0]), v119.val[0]);
    a2[6] = vshlq_s16(v118.val[1], v119.val[0]);
    a2[7] = vshlq_s16(v119.val[1], v119.val[0]);
  }

  else
  {
    v98 = vqtbl1q_s8(v16, xmmword_2778753F0);
    v99 = vdupq_lane_s32(*v98.i8, 0);
    v100 = vaddq_s32(vpaddq_s32(vmull_s16(*v99.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v99, v99, 8uLL), 0xAC614000DD5D4000)), vdupq_n_s32(1 << (27 - a3)));
    v101 = vdupq_lane_s32(*v98.i8, 1);
    v102 = vqtbl1q_s8(v98, xmmword_277875400);
    v103 = vdupq_laneq_s32(v102, 2);
    v104 = vdupq_laneq_s32(v102, 3);
    v105 = vaddq_s32(v100, vpaddq_s32(vmull_s16(*v103.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v103, v103, 8uLL), 0xDD5D4000539FC000)));
    v106 = vaddq_s32(vpaddq_s32(vmull_s16(*v104.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v104, v104, 8uLL), 0xA73B4B424B4211A8)), vpaddq_s32(vmull_s16(*v101.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v101, v101, 8uLL), 0xCDB711A8A73B3249)));
    v107 = vsubq_s32(v105, v106);
    v108 = vaddq_s32(v106, v105);
    v109 = vrev64q_s32(v107);
    v110 = vnegq_s32(vdupq_n_s32(28 - a3));
    result = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v108, v110)), vshlq_s32(vextq_s8(v109, v109, 8uLL), v110));
    *a2 = result;
    a2[1] = result;
    a2[2] = result;
    a2[3] = result;
    a2[4] = result;
    a2[5] = result;
    a2[6] = result;
    a2[7] = result;
  }

  return result;
}

int16x8_t DiscreteCosineTransform::idct_8x4(int16x8_t *this, __int16 *a2, __int16 *a3, int16x8_t *a4, const __int16 *a5)
{
  v5 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(*a4, *this), 1uLL), xmmword_2778753F0);
  v6 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[1], this[1]), 1uLL), xmmword_2778753F0);
  v7 = vdupq_lane_s32(*v5.i8, 0);
  v8 = vdupq_lane_s32(*v6.i8, 0);
  v9 = vqtbl1q_s8(v6, xmmword_277875400);
  v10 = vdupq_laneq_s32(v9, 2);
  v11 = vdupq_lane_s32(*v5.i8, 1);
  v12 = vdupq_lane_s32(*v6.i8, 1);
  v57.val[0] = vpaddq_s32(vmull_s16(*v11.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v11, v11, 8uLL), 0xCDB711A8A73B3249));
  v57.val[1] = vpaddq_s32(vmull_s16(*v12.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v12, v12, 8uLL), 0xBE4D17128C0441B3));
  v13 = vqtbl1q_s8(v5, xmmword_277875400);
  v14 = vdupq_laneq_s32(v13, 2);
  v15 = vdupq_laneq_s32(v13, 3);
  v16 = vdupq_laneq_s32(v9, 3);
  v17 = vaddq_s32(vpaddq_s32(vmull_s16(*v14.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v14, v14, 8uLL), 0xDD5D4000539FC000)), vpaddq_s32(vmull_s16(*v7.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 0xAC614000DD5D4000)));
  v18 = vaddq_s32(vpaddq_s32(vmull_s16(*v15.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v15, v15, 8uLL), 0xA73B4B424B4211A8)), v57.val[0]);
  v19 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v8.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 0x92BF539FD2BF539FLL)), vdupq_n_s32(0x46A1u)), vpaddq_s32(vmull_s16(*v10.i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v10, v10, 8uLL), 0xD2BF539F6D41AC61)));
  v20 = vaddq_s32(vpaddq_s32(vmull_s16(*v16.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v16, v16, 8uLL), 0x8C04625462541712)), v57.val[1]);
  *v57.val[0].i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v18, v17), 0xEuLL));
  *v57.val[1].i8 = vqmovn_s32(vshrq_n_s32(vsubq_s32(v17, v18), 0xEuLL));
  v21 = vsubq_s32(v19, v20);
  v58.val[1] = vaddq_s32(v20, v19);
  v22 = vshrq_n_s32(v21, 0xEuLL);
  v58.val[0] = vshrq_n_s32(v58.val[1], 0xEuLL);
  *v58.val[0].i8 = vqmovn_s32(v58.val[0]);
  *v58.val[1].i8 = vqmovn_s32(v22);
  v23 = vqtbl2q_s8(v58, xmmword_277875410);
  v24 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[2], this[2]), 1uLL), xmmword_2778753F0);
  v25 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[3], this[3]), 1uLL), xmmword_2778753F0);
  v26 = vdupq_lane_s32(*v24.i8, 0);
  v27 = vqtbl1q_s8(v24, xmmword_277875400);
  v28 = vdupq_laneq_s32(v27, 2);
  v29 = vdupq_lane_s32(*v25.i8, 0);
  v30.i64[0] = 0x200000002000;
  v30.i64[1] = 0x200000002000;
  v31 = vqtbl1q_s8(v25, xmmword_277875400);
  v32 = vdupq_laneq_s32(v31, 2);
  v56.val[1] = vpaddq_s32(vmull_s16(*v32.i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v32, v32, 8uLL), 0xD2BF539F6D41AC61));
  v33.i64[0] = 0x100000001000;
  v33.i64[1] = 0x100000001000;
  v34 = vdupq_lane_s32(*v24.i8, 1);
  v35 = vdupq_lane_s32(*v25.i8, 1);
  v36 = vdupq_laneq_s32(v27, 3);
  v37 = vdupq_laneq_s32(v31, 3);
  v38 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v26.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v26, v26, 8uLL), 0xAC614000DD5D4000)), v30), vpaddq_s32(vmull_s16(*v28.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v28, v28, 8uLL), 0xDD5D4000539FC000)));
  v39 = vaddq_s32(vpaddq_s32(vmull_s16(*v36.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v36, v36, 8uLL), 0xA73B4B424B4211A8)), vpaddq_s32(vmull_s16(*v34.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v34, v34, 8uLL), 0xCDB711A8A73B3249)));
  v40 = vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v29.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v29, v29, 8uLL), 0x92BF539FD2BF539FLL)), v33), v56.val[1]);
  v41 = vaddq_s32(vpaddq_s32(vmull_s16(*v37.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v37, v37, 8uLL), 0x8C04625462541712)), vpaddq_s32(vmull_s16(*v35.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v35, v35, 8uLL), 0xBE4D17128C0441B3)));
  v56.val[0] = vsubq_s32(v38, v39);
  v42 = vaddq_s32(v39, v38);
  v43 = vshrq_n_s32(v56.val[0], 0xEuLL);
  *v56.val[0].i8 = vqmovn_s32(vshrq_n_s32(v42, 0xEuLL));
  *v56.val[1].i8 = vqmovn_s32(v43);
  v44 = vqtbl2q_s8(v56, xmmword_277875410);
  v45 = vsubq_s32(v40, v41);
  v46 = vaddq_s32(v41, v40);
  v47 = vshrq_n_s32(v45, 0xEuLL);
  *v45.i8 = vqmovn_s32(vshrq_n_s32(v46, 0xEuLL));
  *v56.val[0].i8 = vqmovn_s32(v47);
  v47.i64[0] = 0x1000100010001;
  v47.i64[1] = 0x1000100010001;
  v56.val[1] = vqtbl2q_s8(v56, xmmword_277875410);
  v48 = vqaddq_s16(vqtbl2q_s8(v57, xmmword_277875410), vdupq_lane_s16(*&vshrq_n_u16(vshlq_u16(v47, (14 - a3)), 1uLL), 0));
  v49 = vqaddq_s16(v48, v44);
  v50 = vdupq_n_s16(0x6A0Au);
  v51 = vqsubq_s16(v48, v44);
  v52 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v45.i8, *v50.i8), vmull_high_s16(v56.val[1], v50)), v23);
  v53 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v58.val[0].i8, *v50.i8), vmull_high_s16(v23, v50)), v56.val[1]);
  v54 = vnegq_s16(vdupq_lane_s16((14 - a3), 0));
  v56.val[1] = vshlq_s16(vqaddq_s16(v51, v53), v54);
  result = vshlq_s16(vqsubq_s16(v51, v53), v54);
  *a2 = vshlq_s16(vqaddq_s16(v49, v52), v54);
  *(a2 + 1) = v56.val[1];
  *(a2 + 2) = result;
  *(a2 + 3) = vshlq_s16(vqsubq_s16(v49, v52), v54);
  return result;
}

double DiscreteCosineTransform::idct_4x8(int16x8_t *this, __int16 *a2, __int16 *a3, int64x2_t *a4, const __int16 *a5)
{
  v5 = vshrq_n_s16(vmulq_s16(*this, vzip1q_s64(*a4, a4[1])), 1uLL);
  v6 = vshrq_n_s16(vmulq_s16(this[1], vzip1q_s64(a4[2], a4[3])), 1uLL);
  v7 = vshrq_n_s16(vmulq_s16(this[2], vzip1q_s64(a4[4], a4[5])), 1uLL);
  v8 = vshrq_n_s16(vmulq_s16(this[3], vzip1q_s64(a4[6], a4[7])), 1uLL);
  v9 = vqtbl1q_s8(v5, xmmword_277875420);
  v10 = vqtbl1q_s8(v5, xmmword_277875430);
  v11 = vpaddq_s32(vmull_s16(vuzp1_s16(*v5.i8, *v5.i8), COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v9, v9, 8uLL), 0xA73B58C558C558C5));
  v12 = vpaddq_s32(vmull_s16(vuzp2_s16(*v5.i8, *v5.i8), 0xAC6122A322A3539FLL), vmull_s16(*&vextq_s8(v10, v10, 8uLL), 0x8C04300B300B73FCLL));
  v13 = vaddq_s32(v11, xmmword_277875440);
  v14 = vaddq_s32(v12, v13);
  v15 = vsubq_s32(v13, v12);
  *v13.i8 = vqmovn_s32(vshrq_n_s32(v14, 0xEuLL));
  v13.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(v15, 0xEuLL)));
  v16 = vuzp1q_s32(v13, v13);
  v17 = vuzp2q_s32(v13, v13);
  v18 = vqtbl1q_s8(v6, xmmword_277875420);
  v19 = vqtbl1q_s8(v6, xmmword_277875430);
  v20 = vpaddq_s32(vmull_s16(vuzp1_s16(*v6.i8, *v6.i8), 0xAC61539F539F539FLL), vmull_s16(*&vextq_s8(v18, v18, 8uLL), 0xB4BE4B424B424B42));
  v21 = vpaddq_s32(vmull_s16(vuzp2_s16(*v6.i8, *v6.i8), 0x92BF2D412D416D41), vmull_s16(*&vextq_s8(v19, v19, 8uLL), 0x9DAC28BA28BA6254));
  v22 = vaddq_s32(v20, xmmword_277875450);
  v23 = vaddq_s32(v21, v22);
  v24 = vsubq_s32(v22, v21);
  *v22.i8 = vqmovn_s32(vshrq_n_s32(v23, 0xEuLL));
  v22.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(v24, 0xEuLL)));
  v25 = vuzp1q_s32(v22, v22);
  v26 = vuzp2q_s32(v22, v22);
  v27 = vqtbl1q_s8(v7, xmmword_277875420);
  v28 = vqtbl1q_s8(v7, xmmword_277875430);
  v29 = vpaddq_s32(vmull_s16(vuzp1_s16(*v7.i8, *v7.i8), COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v27, v27, 8uLL), 0xB4BE4B424B424B42));
  v30 = vpaddq_s32(vmull_s16(vuzp2_s16(*v7.i8, *v7.i8), 0xAC6122A322A3539FLL), vmull_s16(*&vextq_s8(v28, v28, 8uLL), 0x9DAC28BA28BA6254));
  v31 = vaddq_s32(v29, xmmword_277875460);
  v32 = vaddq_s32(v30, v31);
  v33 = vsubq_s32(v31, v30);
  *v31.i8 = vqmovn_s32(vshrq_n_s32(v32, 0xEuLL));
  v31.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(v33, 0xEuLL)));
  v34 = vuzp1q_s32(v31, v31);
  v35 = vqtbl1q_s8(v8, xmmword_277875420);
  v36 = vqtbl1q_s8(v8, xmmword_277875430);
  v37 = vpaddq_s32(vmull_s16(vuzp1_s16(*v8.i8, *v8.i8), 0xAC61539F539F539FLL), vmull_s16(*&vextq_s8(v35, v35, 8uLL), 0xA73B58C558C558C5));
  v38 = vpaddq_s32(vmull_s16(vuzp2_s16(*v8.i8, *v8.i8), 0x92BF2D412D416D41), vmull_s16(*&vextq_s8(v36, v36, 8uLL), 0x8C04300B300B73FCLL));
  v39 = vaddq_s32(v37, xmmword_277875470);
  *v36.i8 = vqmovn_s32(vshrq_n_s32(vaddq_s32(v38, v39), 0xEuLL));
  v36.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(vsubq_s32(v39, v38), 0xEuLL)));
  v40 = vuzp2q_s32(v31, v31);
  v41 = vuzp1q_s32(v36, v36);
  v42 = vuzp2q_s32(v36, v36);
  v43 = vdupq_n_s16(0xAB0Eu);
  v44 = vqaddq_s16(vqaddq_s16(vuzp2q_s16(vmull_s16(*v43.i8, *v40.i8), vmull_high_s16(v43, v40)), v40), v26);
  v45 = vqsubq_s16(v40, vqaddq_s16(vuzp2q_s16(vmull_s16(*v43.i8, *v26.i8), vmull_high_s16(v43, v26)), v26));
  v46 = vdupq_n_s16(0x32ECu);
  v47 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v42.i8, *v46.i8), vmull_high_s16(v42, v46)), v17);
  v48 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v17.i8, *v46.i8), vmull_high_s16(v17, v46)), v42);
  v49 = vqsubq_s16(v48, v45);
  v50 = vqsubq_s16(v47, v44);
  v51 = vqaddq_s16(v48, v45);
  v52 = vqaddq_s16(v47, v44);
  v53 = vqaddq_s16(v50, v49);
  v54 = vdupq_n_s16(0xB505u);
  v55 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v53.i8, *v54.i8), vmull_high_s16(v53, v54)), v53);
  v56 = vqsubq_s16(v50, v49);
  v57 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v56.i8, *v54.i8), vmull_high_s16(v56, v54)), v56);
  v58 = vdupq_n_s16(0x6A0Au);
  v59 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v41.i8, *v58.i8), vmull_high_s16(v41, v58)), v25);
  v60 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v25.i8, *v58.i8), vmull_high_s16(v25, v58)), v41);
  v41.i64[0] = 0x1000100010001;
  v41.i64[1] = 0x1000100010001;
  v61 = vdupq_lane_s16(*&vshrq_n_u16(vshlq_u16(v41, (14 - a3)), 1uLL), 0);
  v58.i64[0] = 0x1000000010000;
  v58.i64[1] = 0x1000000010000;
  v62 = vqsubq_s16(v61, v58);
  v32.i64[0] = 0x100000001;
  v32.i64[1] = 0x100000001;
  v63 = vqsubq_s16(v61, v32);
  v64 = vqaddq_s16(v16, v34);
  v65 = vqsubq_s16(v16, v34);
  v66 = vqaddq_s16(v64, v59);
  v67 = vqsubq_s16(v64, v59);
  v68 = vqaddq_s16(v65, v60);
  v69 = vqsubq_s16(v65, v60);
  v70 = vnegq_s16(vdupq_lane_s16((14 - a3), 0));
  v60.i64[0] = vshlq_s16(vqaddq_s16(vqaddq_s16(v66, v52), v62), v70).u64[0];
  *&v71 = vshlq_s16(vqaddq_s16(vqaddq_s16(v69, v57), v62), v70).u64[0];
  v27.i64[0] = vshlq_s16(vqaddq_s16(vqaddq_s16(v67, v51), v63), v70).u64[0];
  v51.i64[0] = vshlq_s16(vqaddq_s16(vqsubq_s16(v67, v51), v62), v70).u64[0];
  *&result = vshlq_s16(vqaddq_s16(vqsubq_s16(v69, v57), v63), v70).u64[0];
  v57.i64[0] = vshlq_s16(vqaddq_s16(vqsubq_s16(v68, v55), v62), v70).u64[0];
  v60.i64[1] = vshlq_s16(vqaddq_s16(vqaddq_s16(v68, v55), v63), v70).u64[0];
  *(&v71 + 1) = v27.i64[0];
  *a2 = v60;
  *(a2 + 1) = v71;
  *&v51.i64[1] = result;
  v57.i64[1] = vshlq_s16(vqaddq_s16(vqsubq_s16(v66, v52), v63), v70).u64[0];
  *(a2 + 2) = v51;
  *(a2 + 3) = v57;
  return result;
}

__n128 DiscreteCosineTransform::idct_4x4(int16x8_t *this, __n128 *a2, __int16 *a3, int64x2_t *a4, const __int16 *a5)
{
  v5 = vshrq_n_s16(vmulq_s16(*this, vzip1q_s64(*a4, a4[1])), 1uLL);
  v6 = vshrq_n_s16(vmulq_s16(this[1], vzip1q_s64(a4[2], a4[3])), 1uLL);
  v7 = vqtbl1q_s8(v5, xmmword_277875420);
  v8 = vqtbl1q_s8(v5, xmmword_277875430);
  v9 = vpaddq_s32(vmull_s16(vuzp1_s16(*v5.i8, *v5.i8), COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 0xAC61539F539F539FLL));
  v10 = vpaddq_s32(vmull_s16(vuzp2_s16(*v5.i8, *v5.i8), 0xAC6122A322A3539FLL), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 0x92BF2D412D416D41));
  v11 = vaddq_s32(v9, xmmword_277875480);
  v12 = vaddq_s32(v10, v11);
  v13 = vsubq_s32(v11, v10);
  *v11.i8 = vqmovn_s32(vshrq_n_s32(v12, 0xEuLL));
  v11.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(v13, 0xEuLL)));
  v14 = vuzp1q_s32(v11, v11);
  v15 = vuzp2q_s32(v11, v11);
  v16 = vqtbl1q_s8(v6, xmmword_277875420);
  v17 = vqtbl1q_s8(v6, xmmword_277875430);
  v18 = vpaddq_s32(vmull_s16(vuzp1_s16(*v6.i8, *v6.i8), COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v16, v16, 8uLL), 0xAC61539F539F539FLL));
  v19 = vpaddq_s32(vmull_s16(vuzp2_s16(*v6.i8, *v6.i8), 0xAC6122A322A3539FLL), vmull_s16(*&vextq_s8(v17, v17, 8uLL), 0x92BF2D412D416D41));
  v20 = vaddq_s32(v18, xmmword_277875490);
  v21 = vaddq_s32(v19, v20);
  v22 = vsubq_s32(v20, v19);
  *v20.i8 = vqmovn_s32(vshrq_n_s32(v21, 0xEuLL));
  v20.u64[1] = vrev32_s16(vqmovn_s32(vshrq_n_s32(v22, 0xEuLL)));
  v23 = vuzp1q_s32(v20, v20);
  v24 = vuzp2q_s32(v20, v20);
  v12.i64[0] = 0x1000100010001;
  v12.i64[1] = 0x1000100010001;
  v25 = vqaddq_s16(v14, vdupq_lane_s16(*&vshrq_n_u16(vshlq_u16(v12, (14 - a3)), 1uLL), 0));
  v26 = vqaddq_s16(v25, v23);
  v27 = vqsubq_s16(v25, v23);
  v28 = vdupq_n_s16(0x6A0Au);
  v29 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v24.i8, *v28.i8), vmull_high_s16(v24, v28)), v15);
  v30 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v15.i8, *v28.i8), vmull_high_s16(v15, v28)), v24);
  v31 = vnegq_s16(vdupq_lane_s16((14 - a3), 0));
  v24.i64[0] = vshlq_s16(vqaddq_s16(v26, v29), v31).u64[0];
  v21.i64[0] = vshlq_s16(vqaddq_s16(v27, v30), v31).u64[0];
  result.n128_u64[0] = vshlq_s16(vqsubq_s16(v27, v30), v31).u64[0];
  v24.i64[1] = v21.i64[0];
  result.n128_u64[1] = vshlq_s16(vqsubq_s16(v26, v29), v31).u64[0];
  *a2 = v24;
  a2[1] = result;
  return result;
}

int32x4_t DiscreteCosineTransform::idct_4x2(int16x8_t *this, int16x8_t *a2, __int16 *a3, int64x2_t *a4, const __int16 *a5)
{
  v5 = vshrq_n_s16(vmulq_s16(*this, vzip1q_s64(*a4, a4[1])), 1uLL);
  v6 = vqtbl1q_s8(v5, xmmword_277875420);
  v7 = vqtbl1q_s8(v5, xmmword_277875430);
  v8 = vpaddq_s32(vmull_s16(vuzp1_s16(*v5.i8, *v5.i8), COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v6, v6, 8uLL), COERCE_INT16X4_T(-2.03125048)));
  v9 = vpaddq_s32(vmull_s16(vuzp2_s16(*v5.i8, *v5.i8), 0xAC6122A322A3539FLL), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 0xAC6122A322A3539FLL));
  v10 = vaddq_s32(v9, v8);
  v11 = vrev64q_s32(vsubq_s32(v8, v9));
  v8.i64[0] = v10.i64[0];
  v8.i64[1] = v11.i64[0];
  v11.i64[0] = v10.i64[1];
  v12 = vaddq_s32(vdupq_n_s32((1 << (28 - a3)) >> 1), v8);
  v13 = vaddq_s32(v12, v11);
  v14 = vsubq_s32(v12, v11);
  v15 = vnegq_s32(vdupq_n_s32(28 - a3));
  result = vshlq_s32(v14, v15);
  *a2 = vqmovn_high_s32(vqmovn_s32(vshlq_s32(v13, v15)), result);
  return result;
}

double DiscreteCosineTransform::idct_2x4(int16x8_t *this, int16x8_t *a2, __int16 *a3, int32x4_t *a4, const __int16 *a5)
{
  v5.i64[0] = vzip1q_s32(*a4, a4[1]).u64[0];
  v5.i64[1] = vzip1q_s32(a4[2], a4[3]).u64[0];
  v6 = vshrq_n_s16(vmulq_s16(*this, v5), 1uLL);
  v7 = vzip1q_s32(v6, v6);
  v8 = vzip2q_s32(v6, v6);
  v9 = vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v7.i8, COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 0xAC61539F539F539FLL)), xmmword_277875480), 0xEuLL);
  v10 = vshrq_n_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v8.i8, COERCE_INT16X4_T(-2.03125048)), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 0xAC61539F539F539FLL)), xmmword_277875490), 0xEuLL);
  v11 = vqmovn_s32(v9);
  v12 = vdup_n_s16(0x6A0Au);
  v13 = vqmovn_s32(v10);
  v14 = vmull_s16(v11, v12);
  v15 = vqmovn_high_s32(v11, v9);
  v16.i64[0] = 0x1000100010001;
  v16.i64[1] = 0x1000100010001;
  v17 = vqaddq_s16(v15, vdupq_lane_s16(*&vshrq_n_u16(vshlq_u16(v16, (14 - a3)), 1uLL), 0));
  v15.i32[0] = v15.i32[1];
  v18 = vmull_s16(v13, v12);
  v19 = vqmovn_high_s32(v13, v10);
  v20 = vqaddq_s16(v17, v19);
  v21 = vqsubq_s16(v17, v19);
  v19.i32[0] = v19.i32[1];
  v22 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v19.i8, v12), v18), v15);
  v23 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v15.i8, v12), v14), v19);
  v24 = vnegq_s16(vdupq_lane_s16((14 - a3), 0));
  v25 = vshlq_s16(vqaddq_s16(v20, v22), v24);
  v26 = vshlq_s16(vqaddq_s16(v21, v23), v24);
  v27 = vshlq_s16(vqsubq_s16(v21, v23), v24);
  v28 = vshlq_s16(vqsubq_s16(v20, v22), v24);
  v24.i64[0] = vzip1q_s32(v25, v26).u64[0];
  *&result = vzip1q_s32(v27, v28).u64[0];
  *&v24.i64[1] = result;
  *a2 = v24;
  return result;
}

int16x4_t DiscreteCosineTransform::idct_2x2(DiscreteCosineTransform *this, int16x4_t *a2, __int16 *a3, uint64_t a4, const __int16 *a5)
{
  v5 = *(a4 + 16);
  v6 = vzip1q_s32(*a4, v5);
  v5.i64[0] = *this;
  v7 = vshrq_n_s16(vmulq_s16(v5, v6), 1uLL);
  v8 = vzip1q_s32(v7, v7);
  v9 = vpaddq_s32(vmull_s16(*v8.i8, 0xF000100010001000), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 0xF000100010001000));
  v5.i64[0] = vdupq_laneq_s64(v9, 1).u64[0];
  v9.i64[0] = vaddq_s32(v9, vdupq_n_s32((1 << (26 - a3)) >> 1)).u64[0];
  v10 = vsub_s32(*v9.i8, *v5.i8);
  *v9.i8 = vadd_s32(*v9.i8, *v5.i8);
  v9.u64[1] = v10;
  result = vqmovn_s32(vshlq_s32(v9, vnegq_s32(vdupq_n_s32(26 - a3))));
  *a2 = result;
  return result;
}

int16x8_t DiscreteCosineTransform::idct_8x8_AVX(int16x8_t *this, int16x8_t *a2, __int16 *a3, int16x8_t *a4, const __int16 *a5)
{
  v5 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(*a4, *this), 1uLL), xmmword_2778753F0);
  v6 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[1], this[1]), 1uLL), xmmword_2778753F0);
  v7 = vdupq_lane_s32(*v5.i8, 0);
  v8 = vdupq_lane_s32(*v6.i8, 0);
  v9 = vdupq_lane_s32(*v5.i8, 1);
  v10 = vpaddq_s32(vmull_s16(*v9.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v9, v9, 8uLL), 0xCDB711A8A73B3249));
  v11 = vdupq_lane_s32(*v6.i8, 1);
  v12 = vqtbl1q_s8(v5, xmmword_277875400);
  v13 = vdupq_laneq_s32(v12, 2);
  v14 = vqtbl1q_s8(v6, xmmword_277875400);
  v15 = vdupq_laneq_s32(v14, 2);
  v16 = vdupq_laneq_s32(v12, 3);
  v17 = vdupq_laneq_s32(v14, 3);
  v18 = vaddq_s32(vpaddq_s32(vmull_s16(*v13.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v13, v13, 8uLL), 0xDD5D4000539FC000)), vpaddq_s32(vmull_s16(*v7.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v7, v7, 8uLL), 0xAC614000DD5D4000)));
  v19 = vaddq_s32(vpaddq_s32(vmull_s16(*v16.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v16, v16, 8uLL), 0xA73B4B424B4211A8)), v10);
  v20 = vaddq_s32(vpaddq_s32(vmull_s16(*v15.i8, 0x8C04A73B300B58C5), vmull_s16(*&vextq_s8(v15, v15, 8uLL), 0xCFF558C573FCA73BLL)), vpaddq_s32(vmull_s16(*v8.i8, 0x300B58C573FC58C5), vmull_s16(*&vextq_s8(v8, v8, 8uLL), 0x8C0458C5CFF558C5)));
  v21 = vaddq_s32(vpaddq_s32(vmull_s16(*v17.i8, 0xBA4184DF187E45BFLL), vmull_s16(*&vextq_s8(v17, v17, 8uLL), 0x84DF68626862187ELL)), vpaddq_s32(vmull_s16(*v11.i8, 0xE782686268627B21), vmull_s16(*&vextq_s8(v11, v11, 8uLL), 0xBA41187E84DF45BFLL)));
  v177 = vsubq_s32(v18, v19);
  v178 = vaddq_s32(v19, v18);
  v175 = vsubq_s32(v20, v21);
  v176 = vaddq_s32(v21, v20);
  v22 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[2], this[2]), 1uLL), xmmword_2778753F0);
  v23 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[3], this[3]), 1uLL), xmmword_2778753F0);
  v24 = vdupq_lane_s32(*v22.i8, 0);
  v25 = vpaddq_s32(vmull_s16(*v24.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v24, v24, 8uLL), 0x92BF539FD2BF539FLL));
  v26 = vdupq_lane_s32(*v23.i8, 0);
  v27 = vpaddq_s32(vmull_s16(*v26.i8, 0x28BA4B4262544B42), vmull_s16(*&vextq_s8(v26, v26, 8uLL), 0x9DAC4B42D7464B42));
  v28 = vdupq_lane_s32(*v22.i8, 1);
  v29 = vpaddq_s32(vmull_s16(*v28.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v28, v28, 8uLL), 0xBE4D17128C0441B3));
  v30 = vdupq_lane_s32(*v23.i8, 1);
  v31 = vpaddq_s32(vmull_s16(*v30.i8, 0xEB3D587E587E6862), vmull_s16(*&vextq_s8(v30, v30, 8uLL), 0xC4DF14C3979E3B21));
  v32 = vqtbl1q_s8(v22, xmmword_277875400);
  v33 = vdupq_laneq_s32(v32, 2);
  v34 = vpaddq_s32(vmull_s16(*v33.i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v33, v33, 8uLL), 0xD2BF539F6D41AC61));
  v35 = vqtbl1q_s8(v23, xmmword_277875400);
  v36 = vdupq_laneq_s32(v35, 2);
  v37 = vdupq_laneq_s32(v32, 3);
  v38 = vpaddq_s32(vmull_s16(*v36.i8, 0x9DACB4BE28BA4B42), vmull_s16(*&vextq_s8(v36, v36, 8uLL), 0xD7464B426254B4BELL));
  v39 = vpaddq_s32(vmull_s16(*v37.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v37, v37, 8uLL), 0x8C04625462541712));
  v40 = vdupq_laneq_s32(v35, 3);
  v41 = vaddq_s32(v34, v25);
  v42 = vaddq_s32(v39, v29);
  v43 = vaddq_s32(v38, v27);
  v44 = vaddq_s32(vpaddq_s32(vmull_s16(*v40.i8, 0xC4DF979E14C33B21), vmull_s16(*&vextq_s8(v40, v40, 8uLL), 0x979E587E587E14C3)), v31);
  v45 = vsubq_s32(v41, v42);
  v46 = vaddq_s32(v42, v41);
  v47 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[4], this[4]), 1uLL), xmmword_2778753F0);
  v48 = vsubq_s32(v43, v44);
  v49 = vdupq_lane_s32(*v47.i8, 0);
  v50 = vaddq_s32(v44, v43);
  v51 = vpaddq_s32(vmull_s16(*v49.i8, 0x22A34000539F4000), vmull_s16(*&vextq_s8(v49, v49, 8uLL), 0xAC614000DD5D4000));
  v52 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[5], this[5]), 1uLL), xmmword_2778753F0);
  v53 = vdupq_lane_s32(*v52.i8, 0);
  v54 = vdupq_lane_s32(*v47.i8, 1);
  v55 = vdupq_lane_s32(*v52.i8, 1);
  v56 = vpaddq_s32(vmull_s16(*v55.i8, 0xEB3D587E587E6862), vmull_s16(*&vextq_s8(v55, v55, 8uLL), 0xC4DF14C3979E3B21));
  v57 = vqtbl1q_s8(v47, xmmword_277875400);
  v58 = vdupq_laneq_s32(v57, 2);
  v59 = vqtbl1q_s8(v52, xmmword_277875400);
  v60 = vdupq_laneq_s32(v59, 2);
  v61 = vdupq_laneq_s32(v57, 3);
  v62 = vdupq_laneq_s32(v59, 3);
  v63 = vaddq_s32(vpaddq_s32(vmull_s16(*v58.i8, 0xAC61C00022A34000), vmull_s16(*&vextq_s8(v58, v58, 8uLL), 0xDD5D4000539FC000)), v51);
  v64 = vaddq_s32(vpaddq_s32(vmull_s16(*v61.i8, 0xCDB7A73B11A83249), vmull_s16(*&vextq_s8(v61, v61, 8uLL), 0xA73B4B424B4211A8)), vpaddq_s32(vmull_s16(*v54.i8, 0xEE584B424B4258C5), vmull_s16(*&vextq_s8(v54, v54, 8uLL), 0xCDB711A8A73B3249)));
  v65 = vaddq_s32(vpaddq_s32(vmull_s16(*v60.i8, 0x9DACB4BE28BA4B42), vmull_s16(*&vextq_s8(v60, v60, 8uLL), 0xD7464B426254B4BELL)), vpaddq_s32(vmull_s16(*v53.i8, 0x28BA4B4262544B42), vmull_s16(*&vextq_s8(v53, v53, 8uLL), 0x9DAC4B42D7464B42)));
  v66 = vaddq_s32(vpaddq_s32(vmull_s16(*v62.i8, 0xC4DF979E14C33B21), vmull_s16(*&vextq_s8(v62, v62, 8uLL), 0x979E587E587E14C3)), v56);
  v67 = vsubq_s32(v63, v64);
  v68 = vaddq_s32(v64, v63);
  v69 = vsubq_s32(v65, v66);
  v70 = vaddq_s32(v66, v65);
  v71 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[6], this[6]), 1uLL), xmmword_2778753F0);
  v72 = vqtbl1q_s8(vshrq_n_s16(vmulq_s16(a4[7], this[7]), 1uLL), xmmword_2778753F0);
  v73 = vdupq_lane_s32(*v71.i8, 0);
  v74 = vdupq_lane_s32(*v72.i8, 0);
  v75 = vdupq_lane_s32(*v71.i8, 1);
  v76 = vdupq_lane_s32(*v72.i8, 1);
  v77 = vqtbl1q_s8(v71, xmmword_277875400);
  v78 = vdupq_laneq_s32(v77, 2);
  v79 = vqtbl1q_s8(v72, xmmword_277875400);
  v80 = vdupq_laneq_s32(v79, 2);
  v81 = vpaddq_s32(vmull_s16(*v78.i8, 0x92BFAC612D41539FLL), vmull_s16(*&vextq_s8(v78, v78, 8uLL), 0xD2BF539F6D41AC61));
  v82 = vdupq_laneq_s32(v77, 3);
  v83 = vpaddq_s32(vmull_s16(*v80.i8, 0x8C04A73B300B58C5), vmull_s16(*&vextq_s8(v80, v80, 8uLL), 0xCFF558C573FCA73BLL));
  v84 = vdupq_laneq_s32(v79, 3);
  v85 = vrev64q_s32(v175);
  v86 = vrev64q_s32(v48);
  v87 = vrev64q_s32(v69);
  v88 = vcvtq_f32_s32(v70);
  v89 = vcvtq_f32_s32(vextq_s8(v87, v87, 8uLL));
  v90 = vaddq_s32(v81, vpaddq_s32(vmull_s16(*v73.i8, 0x2D41539F6D41539FLL), vmull_s16(*&vextq_s8(v73, v73, 8uLL), 0x92BF539FD2BF539FLL)));
  v91 = vaddq_s32(vpaddq_s32(vmull_s16(*v82.i8, 0xBE4D8C04171241B3), vmull_s16(*&vextq_s8(v82, v82, 8uLL), 0x8C04625462541712)), vpaddq_s32(vmull_s16(*v75.i8, 0xE8EE6254625473FCLL), vmull_s16(*&vextq_s8(v75, v75, 8uLL), 0xBE4D17128C0441B3)));
  v92 = vaddq_s32(v83, vpaddq_s32(vmull_s16(*v74.i8, 0x300B58C573FC58C5), vmull_s16(*&vextq_s8(v74, v74, 8uLL), 0x8C0458C5CFF558C5)));
  v93 = vaddq_s32(vpaddq_s32(vmull_s16(*v84.i8, 0xBA4184DF187E45BFLL), vmull_s16(*&vextq_s8(v84, v84, 8uLL), 0x84DF68626862187ELL)), vpaddq_s32(vmull_s16(*v76.i8, 0xE782686268627B21), vmull_s16(*&vextq_s8(v76, v76, 8uLL), 0xBA41187E84DF45BFLL)));
  v94 = vsubq_s32(v90, v91);
  v95 = vaddq_s32(v91, v90);
  v96 = vrev64q_s32(vsubq_s32(v92, v93));
  v97 = vcvtq_f32_s32(vaddq_s32(v93, v92));
  v98 = vcvtq_f32_s32(vextq_s8(v96, v96, 8uLL));
  *v96.i32 = vcvts_n_f32_s32(1 << a3, 0x1CuLL);
  v99 = vmulq_n_f32(v89, *v96.i32);
  v100 = vmulq_n_f32(v88, *v96.i32);
  v101 = vmulq_n_f32(vcvtq_f32_s32(v50), *v96.i32);
  v102 = vmulq_n_f32(vcvtq_f32_s32(vextq_s8(v86, v86, 8uLL)), *v96.i32);
  v103 = vdupq_n_s32(0x3F2B0DC1u);
  v104 = vaddq_f32(v102, vmulq_f32(v99, v103));
  v105 = vaddq_f32(v101, vmulq_f32(v100, v103));
  v106 = vsubq_f32(v99, vmulq_f32(v102, v103));
  v107 = vsubq_f32(v100, vmulq_f32(v101, v103));
  v108 = vmulq_n_f32(v98, *v96.i32);
  v109 = vmulq_n_f32(v97, *v96.i32);
  v110 = vmulq_n_f32(vcvtq_f32_s32(v176), *v96.i32);
  v111 = vdupq_n_s32(0x3E4BAFAFu);
  v112 = vmulq_n_f32(vcvtq_f32_s32(vextq_s8(v85, v85, 8uLL)), *v96.i32);
  v113 = vaddq_f32(v112, vmulq_f32(v108, v111));
  v114 = vaddq_f32(v110, vmulq_f32(v109, v111));
  v115 = vmulq_f32(v110, v111);
  v116 = vsubq_f32(vmulq_f32(v112, v111), v108);
  v117 = vdupq_n_s32(0x3F3504F3u);
  v118 = vdupq_n_s32(0x3ED413CDu);
  v119 = vrev64q_s32(v45);
  v120 = vcvtq_f32_s32(v46);
  v121 = vrev64q_s32(v94);
  v122 = vcvtq_f32_s32(v95);
  v123 = vcvtq_f32_s32(vextq_s8(v121, v121, 8uLL));
  v124 = vsubq_f32(v115, v109);
  v125 = vsubq_f32(v124, v107);
  v126 = vaddq_f32(v107, v124);
  v127 = vsubq_f32(v116, v106);
  v128 = vaddq_f32(v106, v116);
  v129 = vsubq_f32(v114, v105);
  v130 = vaddq_f32(v105, v114);
  v131 = vsubq_f32(v113, v104);
  v132 = vaddq_f32(v104, v113);
  v133 = vaddq_f32(v127, v131);
  v134 = vsubq_f32(v131, v127);
  v135 = vmulq_f32(vaddq_f32(v125, v129), v117);
  v136 = vmulq_f32(v133, v117);
  v137 = vmulq_f32(vsubq_f32(v129, v125), v117);
  v138 = vmulq_f32(v134, v117);
  v139 = vmulq_n_f32(v123, *v96.i32);
  v140 = vmulq_n_f32(v122, *v96.i32);
  v141 = vmulq_n_f32(v120, *v96.i32);
  v142 = vmulq_n_f32(vcvtq_f32_s32(vextq_s8(v119, v119, 8uLL)), *v96.i32);
  v143 = vaddq_f32(v142, vmulq_f32(v139, v118));
  v144 = vaddq_f32(v141, vmulq_f32(v140, v118));
  v145 = vmulq_f32(v141, v118);
  v146 = vsubq_f32(vmulq_f32(v142, v118), v139);
  v147 = vrev64q_s32(v177);
  v148 = vsubq_f32(v145, v140);
  v145.f32[0] = vcvts_n_f32_s32((1 << a3) + 1, 1uLL);
  v149 = vdupq_lane_s32(*v145.f32, 0);
  v150 = vaddq_f32(v149, vmulq_n_f32(vcvtq_f32_s32(v178), *v96.i32));
  v151 = vaddq_f32(v149, vmulq_n_f32(vcvtq_f32_s32(vextq_s8(v147, v147, 8uLL)), *v96.i32));
  v152 = vrev64q_s32(v67);
  v153 = vmulq_n_f32(vcvtq_f32_s32(v68), *v96.i32);
  v154 = vmulq_n_f32(vcvtq_f32_s32(vextq_s8(v152, v152, 8uLL)), *v96.i32);
  v155 = vaddq_f32(v151, v154);
  v156 = vsubq_f32(v151, v154);
  v157 = vaddq_f32(v150, v153);
  v158 = vsubq_f32(v150, v153);
  v159 = vaddq_f32(v157, v144);
  v160 = vsubq_f32(v157, v144);
  v161 = vaddq_f32(v155, v143);
  v162 = vsubq_f32(v155, v143);
  v163 = vaddq_f32(v158, v148);
  v164 = vsubq_f32(v158, v148);
  v165 = vaddq_f32(v156, v146);
  v166 = vsubq_f32(v156, v146);
  v167 = vaddq_f32(v162, v128);
  v168 = vsubq_f32(v162, v128);
  v169 = vaddq_f32(v160, v126);
  v170 = vaddq_f32(v164, v137);
  v171 = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vsubq_f32(v160, v126))), vcvtq_s32_f32(v168));
  v172 = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vsubq_f32(v164, v137))), vcvtq_s32_f32(vsubq_f32(v166, v138)));
  v173 = vdupq_n_s16(1 << (a3 - 1));
  *a2 = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v159, v130))), vcvtq_s32_f32(vaddq_f32(v161, v132))), v173);
  a2[1] = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v163, v135))), vcvtq_s32_f32(vaddq_f32(v165, v136))), v173);
  a2[2] = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(v170)), vcvtq_s32_f32(vaddq_f32(v166, v138))), v173);
  a2[3] = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(v169)), vcvtq_s32_f32(v167)), v173);
  a2[4] = vsubq_s16(v171, v173);
  a2[5] = vsubq_s16(v172, v173);
  result = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vsubq_f32(v163, v135))), vcvtq_s32_f32(vsubq_f32(v165, v136))), v173);
  a2[6] = result;
  a2[7] = vsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vsubq_f32(v159, v130))), vcvtq_s32_f32(vsubq_f32(v161, v132))), v173);
  return result;
}

unint64_t Frame::Header::decode(uint64_t a1, void *a2)
{
  v2 = 4;
  v3 = a2;
  while (1)
  {
    v4 = v3[1];
    v5 = v2 >= v4;
    v6 = v2 - v4;
    if (!v5)
    {
      break;
    }

    v3 = v3[2];
    v2 = v6;
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  if (*(*v3 + v2) == 1)
  {
    v7 = 5;
    v8 = a2;
    while (1)
    {
      v9 = v8[1];
      v5 = v7 >= v9;
      v10 = v7 - v9;
      if (!v5)
      {
        break;
      }

      v8 = v8[2];
      v7 = v10;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if (*(*v8 + v7) == 18)
    {
      v11 = 5;
      v12 = a2;
      do
      {
        v13 = v12[1];
        v5 = v11 >= v13;
        v14 = v11 - v13;
        if (!v5)
        {
          v96 = *(*v12 + v11) + 6;
          goto LABEL_119;
        }

        v12 = v12[2];
        v11 = v14;
      }

      while (v12);
      v96 = 6;
LABEL_119:
      *a1 = v96;
      v97 = 6;
      v98 = a2;
      while (1)
      {
        v99 = v98[1];
        v5 = v97 >= v99;
        v100 = v97 - v99;
        if (!v5)
        {
          break;
        }

        v98 = v98[2];
        v97 = v100;
        if (!v98)
        {
          goto LABEL_123;
        }
      }

      LODWORD(v98) = *(*v98 + v97) << 8;
LABEL_123:
      v101 = 7;
      v102 = a2;
      while (1)
      {
        v103 = v102[1];
        v5 = v101 >= v103;
        v104 = v101 - v103;
        if (!v5)
        {
          break;
        }

        v102 = v102[2];
        v101 = v104;
        if (!v102)
        {
          goto LABEL_127;
        }
      }

      LODWORD(v102) = *(*v102 + v101);
LABEL_127:
      *(a1 + 4) = v102 | v98;
      v105 = 8;
      v106 = a2;
      while (1)
      {
        v107 = v106[1];
        v5 = v105 >= v107;
        v108 = v105 - v107;
        if (!v5)
        {
          break;
        }

        v106 = v106[2];
        v105 = v108;
        if (!v106)
        {
          goto LABEL_131;
        }
      }

      LODWORD(v106) = *(*v106 + v105) << 8;
LABEL_131:
      v109 = 9;
      v110 = a2;
      while (1)
      {
        v111 = v110[1];
        v5 = v109 >= v111;
        v112 = v109 - v111;
        if (!v5)
        {
          break;
        }

        v110 = v110[2];
        v109 = v112;
        if (!v110)
        {
          goto LABEL_135;
        }
      }

      LODWORD(v110) = *(*v110 + v109);
LABEL_135:
      *(a1 + 8) = v110 | v106;
      v113 = 16;
      v114 = a2;
      while (1)
      {
        v115 = v114[1];
        v5 = v113 >= v115;
        v116 = v113 - v115;
        if (!v5)
        {
          break;
        }

        v114 = v114[2];
        v113 = v116;
        if (!v114)
        {
          goto LABEL_150;
        }
      }

      if (*(*v114 + v113) >= 0x40u)
      {
        v117 = 16;
        v118 = a2;
        while (1)
        {
          v119 = v118[1];
          v5 = v117 >= v119;
          v120 = v117 - v119;
          if (!v5)
          {
            break;
          }

          v118 = v118[2];
          v117 = v120;
          if (!v118)
          {
            goto LABEL_149;
          }
        }

        if ((*(*v118 + v117) & 0xF) == 0xE)
        {
          LODWORD(v114) = 2;
          goto LABEL_150;
        }

LABEL_149:
        LODWORD(v114) = 1;
      }

      else
      {
        LODWORD(v114) = 0;
      }

LABEL_150:
      *(a1 + 16) = v114;
      v121 = 17;
      v122 = a2;
      while (1)
      {
        v123 = v122[1];
        v5 = v121 >= v123;
        v124 = v121 - v123;
        if (!v5)
        {
          break;
        }

        v122 = v122[2];
        v121 = v124;
        if (!v122)
        {
          goto LABEL_154;
        }
      }

      LODWORD(v122) = *(*v122 + v121) >> 6;
LABEL_154:
      *(a1 + 12) = v122;
      v125 = 18;
      v126 = a2;
      while (1)
      {
        v127 = v126[1];
        v5 = v125 >= v127;
        v128 = v125 - v127;
        if (!v5)
        {
          break;
        }

        v126 = v126[2];
        v125 = v128;
        if (!v126)
        {
          goto LABEL_158;
        }
      }

      LODWORD(v126) = *(*v126 + v125);
LABEL_158:
      *(a1 + 28) = v126;
      v129 = 19;
      v130 = a2;
      while (1)
      {
        v131 = v130[1];
        v5 = v129 >= v131;
        v132 = v129 - v131;
        if (!v5)
        {
          break;
        }

        v130 = v130[2];
        v129 = v132;
        if (!v130)
        {
          goto LABEL_162;
        }
      }

      LODWORD(v130) = *(*v130 + v129);
LABEL_162:
      *(a1 + 32) = v130;
      v133 = 20;
      do
      {
        v134 = a2[1];
        v5 = v133 >= v134;
        v135 = v133 - v134;
        if (!v5)
        {
          *(a1 + 36) = *(*a2 + v133);
          *(a1 + 44) = 0;
          *(a1 + 48) = 0;
          return v96;
        }

        a2 = a2[2];
        v133 = v135;
      }

      while (a2);
      *(a1 + 36) = 0;
      *(a1 + 44) = 0;
      *(a1 + 48) = 0;
      return v96;
    }
  }

LABEL_18:
  v15 = 0;
  v16 = a2;
  while (1)
  {
    v17 = *(v16 + 8);
    v5 = v15 >= v17;
    v18 = v15 - v17;
    if (!v5)
    {
      break;
    }

    v16 = *(v16 + 16);
    v15 = v18;
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  LODWORD(v16) = *(*v16 + v15) << 8;
LABEL_22:
  v19 = 1;
  v20 = a2;
  do
  {
    v21 = v20[1];
    v5 = v19 >= v21;
    v22 = v19 - v21;
    if (!v5)
    {
      v16 = *(*v20 + v19) | v16;
      *a1 = v16;
      if (v16 < 0x14)
      {
        return 0;
      }

      goto LABEL_30;
    }

    v20 = v20[2];
    v19 = v22;
  }

  while (v20);
  v16 = v16;
  *a1 = v16;
  if (v16 < 0x14)
  {
    return 0;
  }

LABEL_30:
  v24 = 3;
  v25 = a2;
  while (1)
  {
    v26 = v25[1];
    v5 = v24 >= v26;
    v27 = v24 - v26;
    if (!v5)
    {
      break;
    }

    v25 = v25[2];
    v24 = v27;
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  if (*(*v25 + v24) > 1u)
  {
    return 0;
  }

LABEL_37:
  v28 = 8;
  v29 = a2;
  while (1)
  {
    v30 = v29[1];
    v5 = v28 >= v30;
    v31 = v28 - v30;
    if (!v5)
    {
      break;
    }

    v29 = v29[2];
    v28 = v31;
    if (!v29)
    {
      goto LABEL_41;
    }
  }

  LODWORD(v29) = *(*v29 + v28) << 8;
LABEL_41:
  v32 = 9;
  v33 = a2;
  while (1)
  {
    v34 = v33[1];
    v5 = v32 >= v34;
    v35 = v32 - v34;
    if (!v5)
    {
      break;
    }

    v33 = v33[2];
    v32 = v35;
    if (!v33)
    {
      goto LABEL_45;
    }
  }

  LODWORD(v33) = *(*v33 + v32);
LABEL_45:
  *(a1 + 4) = v33 | v29;
  v36 = 10;
  v37 = a2;
  while (1)
  {
    v38 = v37[1];
    v5 = v36 >= v38;
    v39 = v36 - v38;
    if (!v5)
    {
      break;
    }

    v37 = v37[2];
    v36 = v39;
    if (!v37)
    {
      goto LABEL_49;
    }
  }

  LODWORD(v37) = *(*v37 + v36) << 8;
LABEL_49:
  v40 = 11;
  v41 = a2;
  while (1)
  {
    v42 = v41[1];
    v5 = v40 >= v42;
    v43 = v40 - v42;
    if (!v5)
    {
      break;
    }

    v41 = v41[2];
    v40 = v43;
    if (!v41)
    {
      goto LABEL_53;
    }
  }

  LODWORD(v41) = *(*v41 + v40);
LABEL_53:
  *(a1 + 8) = v41 | v37;
  v44 = 12;
  v45 = a2;
  while (1)
  {
    v46 = v45[1];
    v5 = v44 >= v46;
    v47 = v44 - v46;
    if (!v5)
    {
      break;
    }

    v45 = v45[2];
    v44 = v47;
    if (!v45)
    {
      goto LABEL_57;
    }
  }

  LODWORD(v45) = *(*v45 + v44) >> 6;
LABEL_57:
  *(a1 + 12) = v45;
  v48 = 12;
  v49 = a2;
  while (1)
  {
    v50 = v49[1];
    v5 = v48 >= v50;
    v51 = v48 - v50;
    if (!v5)
    {
      break;
    }

    v49 = v49[2];
    v48 = v51;
    if (!v49)
    {
      goto LABEL_61;
    }
  }

  LODWORD(v49) = (*(*v49 + v48) >> 2) & 3;
LABEL_61:
  *(a1 + 16) = v49;
  v52 = 14;
  v53 = a2;
  while (1)
  {
    v54 = v53[1];
    v5 = v52 >= v54;
    v55 = v52 - v54;
    if (!v5)
    {
      break;
    }

    v53 = v53[2];
    v52 = v55;
    if (!v53)
    {
      goto LABEL_65;
    }
  }

  LODWORD(v53) = *(*v53 + v52);
LABEL_65:
  *(a1 + 28) = v53;
  v56 = 15;
  v57 = a2;
  while (1)
  {
    v58 = v57[1];
    v5 = v56 >= v58;
    v59 = v56 - v58;
    if (!v5)
    {
      break;
    }

    v57 = v57[2];
    v56 = v59;
    if (!v57)
    {
      goto LABEL_69;
    }
  }

  LODWORD(v57) = *(*v57 + v56);
LABEL_69:
  *(a1 + 32) = v57;
  v60 = 16;
  v61 = a2;
  while (1)
  {
    v62 = v61[1];
    v5 = v60 >= v62;
    v63 = v60 - v62;
    if (!v5)
    {
      break;
    }

    v61 = v61[2];
    v60 = v63;
    if (!v61)
    {
      goto LABEL_73;
    }
  }

  LODWORD(v61) = *(*v61 + v60);
LABEL_73:
  *(a1 + 36) = v61;
  v64 = 17;
  v65 = a2;
  while (1)
  {
    v66 = v65[1];
    v5 = v64 >= v66;
    v67 = v64 - v66;
    if (!v5)
    {
      break;
    }

    v65 = v65[2];
    v64 = v67;
    if (!v65)
    {
      goto LABEL_77;
    }
  }

  LODWORD(v65) = *(&unk_277879D80 + ((*(*v65 + v64) >> 2) & 0x3C));
LABEL_77:
  *(a1 + 40) = v65;
  v68 = 17;
  v69 = a2;
  while (1)
  {
    v70 = v69[1];
    v5 = v68 >= v70;
    v71 = v68 - v70;
    if (!v5)
    {
      break;
    }

    v69 = v69[2];
    v68 = v71;
    if (!v69)
    {
      goto LABEL_81;
    }
  }

  LODWORD(v69) = *(*v69 + v68) & 0xF;
LABEL_81:
  *(a1 + 44) = v69;
  v72 = 19;
  v73 = a2;
  do
  {
    v74 = v73[1];
    v5 = v72 >= v74;
    v75 = v72 - v74;
    if (!v5)
    {
      v76 = (*(*v73 + v72) >> 1) & 1;
      goto LABEL_86;
    }

    v73 = v73[2];
    v72 = v75;
  }

  while (v73);
  v76 = 0;
LABEL_86:
  *(a1 + 48) = v76;
  v77 = 19;
  v78 = a2;
  do
  {
    v79 = v78[1];
    v5 = v77 >= v79;
    v80 = v77 - v79;
    if (!v5)
    {
      LODWORD(v78) = *(*v78 + v77) & 1;
      *(a1 + 49) = v78;
      v81 = a2[1];
      v82 = a2[2];
      v83 = 20;
      if (v81 > 0x14)
      {
        goto LABEL_95;
      }

LABEL_93:
      while (v82)
      {
        a2 = v82;
        v83 -= v81;
        v81 = v82[1];
        v82 = v82[2];
        if (v83 < v81)
        {
          goto LABEL_95;
        }
      }

      v84 = 0;
      v136 = &SegmentedBuffer::nullSegment;
      v137 = 0;
      if (!v76)
      {
        goto LABEL_109;
      }

      goto LABEL_98;
    }

    v78 = v78[2];
    v77 = v80;
  }

  while (v78);
  *(a1 + 49) = 0;
  v81 = a2[1];
  v82 = a2[2];
  v83 = 20;
  if (v81 <= 0x14)
  {
    goto LABEL_93;
  }

LABEL_95:
  v84 = v81 - v83;
  *&v136 = *a2 + v83;
  *(&v136 + 1) = v84;
  v137 = v82;
  if (!v76)
  {
LABEL_109:
    if (!v78)
    {
      return v16;
    }

    goto LABEL_110;
  }

LABEL_98:
  for (i = 0; i != 64; ++i)
  {
    v86 = &v136;
    v87 = i;
    while (1)
    {
      v88 = *(v86 + 1);
      v5 = v87 >= v88;
      v89 = v87 - v88;
      if (!v5)
      {
        break;
      }

      v86 = *(v86 + 2);
      v87 = v89;
      if (!v86)
      {
        goto LABEL_99;
      }
    }

    LOBYTE(v86) = *(*v86 + v87);
LABEL_99:
    *(a1 + 64 + i) = v86;
  }

  v90 = 64;
  if (v84 > 0x40)
  {
LABEL_108:
    *&v136 = v136 + v90;
    *(&v136 + 1) = v84 - v90;
    goto LABEL_109;
  }

  while (v137)
  {
    v90 -= v84;
    v136 = *v137;
    v137 = v137[2];
    v84 = *(&v136 + 1);
    if (v90 < *(&v136 + 1))
    {
      goto LABEL_108;
    }
  }

  *&v136 = &SegmentedBuffer::nullSegment;
  *(&v136 + 1) = 0;
  v137 = 0;
  if (v78)
  {
LABEL_110:
    for (j = 0; j != 64; ++j)
    {
      v92 = &v136;
      v93 = j;
      while (1)
      {
        v94 = *(v92 + 1);
        v5 = v93 >= v94;
        v95 = v93 - v94;
        if (!v5)
        {
          break;
        }

        v92 = *(v92 + 2);
        v93 = v95;
        if (!v92)
        {
          goto LABEL_111;
        }
      }

      LOBYTE(v92) = *(*v92 + v93);
LABEL_111:
      *(a1 + 128 + j) = v92;
    }
  }

  return v16;
}

void FrameDecoder::FrameDecoder(FrameDecoder *this, int a2, void (*a3)(void))
{
  NumProcessors = a2;
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2 <= 0)
  {
    NumProcessors = IcpUtility::getNumProcessors(this);
    if (NumProcessors < 1)
    {
      goto LABEL_9;
    }
  }

  {
    ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    FrameDecoder::FrameDecoder();
  }

  v5 = ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize;
  v6 = -ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize;
  v7 = malloc_type_malloc(((ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize + 47) & -ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (!v7 || (v8 = (v7 + v5) & v6, *(v8 - 8) = v7, !v8))
  {
LABEL_9:
    *(this + 6) = 0;
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v8 = NumProcessors;
  *(v8 + 8) = dispatch_get_global_queue(0, 0);
  v9 = dispatch_group_create();
  *(v8 + 16) = v9;
  atomic_store(0, (v8 + 24));
  *(v8 + 36) = 0;
  *(v8 + 28) = 0;
  *(v8 + 44) = 0;
  *(this + 6) = v8;
  *(this + 56) = IcpUtility::isAVXAvailable(v9);
}

void sub_27782D268(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(a1);
}

void FrameDecoder::~FrameDecoder(FrameDecoder *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    dispatch_release(*(v2 + 16));
    free(*(v2 - 8));
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

uint64_t FrameDecoder::decode(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v8 = 0;
  v158[8] = *MEMORY[0x277D85DE8];
  v9 = a2;
  do
  {
    v10 = v9[1];
    v11 = v8 >= v10;
    v12 = v8 - v10;
    if (!v11)
    {
      v13 = *(*v9 + v8) << 24;
      goto LABEL_6;
    }

    v9 = v9[2];
    v8 = v12;
  }

  while (v9);
  v13 = 0;
LABEL_6:
  v14 = 1;
  v15 = a2;
  while (1)
  {
    v16 = v15[1];
    v11 = v14 >= v16;
    v17 = v14 - v16;
    if (!v11)
    {
      break;
    }

    v15 = v15[2];
    v14 = v17;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  LODWORD(v15) = *(*v15 + v14) << 16;
LABEL_10:
  v18 = v15 | v13;
  v19 = 2;
  v20 = a2;
  while (1)
  {
    v21 = v20[1];
    v11 = v19 >= v21;
    v22 = v19 - v21;
    if (!v11)
    {
      break;
    }

    v20 = v20[2];
    v19 = v22;
    if (!v20)
    {
      goto LABEL_14;
    }
  }

  LODWORD(v20) = *(*v20 + v19) << 8;
LABEL_14:
  v23 = v18 | v20;
  v24 = 3;
  v25 = a2;
  do
  {
    v26 = v25[1];
    v11 = v24 >= v26;
    v27 = v24 - v26;
    if (!v11)
    {
      v28 = *(*v25 + v24);
      goto LABEL_19;
    }

    v25 = v25[2];
    v24 = v27;
  }

  while (v25);
  v28 = 0;
LABEL_19:
  v29 = 0;
  v30 = v23 | v28;
  v31 = a2;
  do
  {
    v32 = v31[1];
    v31 = v31[2];
    v29 += v32;
  }

  while (v31);
  v33 = 4294967294;
  if (v30 >= 21 && v29 >= v30)
  {
    v34 = 4;
    v35 = a2;
    while (1)
    {
      v36 = v35[1];
      v11 = v34 >= v36;
      v37 = v34 - v36;
      if (!v11)
      {
        break;
      }

      v35 = v35[2];
      v34 = v37;
      if (!v35)
      {
        goto LABEL_40;
      }
    }

    if (*(*v35 + v34) != 1)
    {
      goto LABEL_40;
    }

    v38 = 5;
    v39 = a2;
    while (1)
    {
      v40 = v39[1];
      v11 = v38 >= v40;
      v41 = v38 - v40;
      if (!v11)
      {
        break;
      }

      v39 = v39[2];
      v38 = v41;
      if (!v39)
      {
        goto LABEL_40;
      }
    }

    if (*(*v39 + v38) == 18)
    {
      v42 = 0;
      v44 = a2[1];
      v43 = a2[2];
      v116 = a6;
      v117 = a1;
      if (!v44)
      {
LABEL_36:
        v45 = v42;
        while (v43)
        {
          v46 = v43;
          v45 -= v44;
          v44 = v43[1];
          v43 = v43[2];
          if (v45 < v44)
          {
            goto LABEL_42;
          }
        }

        v47 = a5;
        v48 = a2;
        v139 = &SegmentedBuffer::nullSegment;
        *v140 = 0;
        v49 = Frame::Header::decode(v148, &v139);
        if (!v49)
        {
          return 4294967294;
        }

LABEL_45:
        v50 = a4 - 1;
        if ((a4 - 1) <= 0xA)
        {
          v51 = dword_277879DEC[v50];
          if (*(a3 + 56))
          {
            v52 = 4 * (v149 >> v51) / 3;
          }

          else
          {
            v52 = v149 >> v51;
          }

          if (*(a3 + 40) < v52)
          {
            return 4294967292;
          }

          v53 = dword_277879DC0[v50];
          if (*(a3 + 44) < v150 >> v53)
          {
            return 4294967292;
          }

          v115 = v49;
          v54 = *(a3 + 24);
          v55 = v52 * PixelBuffer::getNumBytesPerPixelData(*(a3 + 36));
          PixelBuffer::getNumBytesPerPixelData(*(a3 + 36));
          if (v54 < v55 / v56)
          {
            return 4294967292;
          }

          if ((v149 & 0xF) != 0)
          {
            v57 = *(a3 + 36);
            if (v57 != 1983000880)
            {
              v58 = v149 + 30;
              if (v149 >= -15)
              {
                v58 = v149 + 15;
              }

              v59 = (v58 & 0xFFFFFFF0) >> v51;
              NumBytesPerPixelData = PixelBuffer::getNumBytesPerPixelData(v57);
              PixelBuffer::getNumBytesPerPixelData(*(a3 + 36));
              if (*(a3 + 24) < (v61 + v59 * NumBytesPerPixelData - 1) / v61)
              {
                return 4294967292;
              }
            }
          }

          v62 = v115 + v42;
          *(&v139 + 1) = 0;
          *v140 = 0;
          *&v139 = &SegmentedBuffer::nullSegment;
          v63 = v62;
          v65 = v48[1];
          v64 = v48[2];
          if (v65 <= v62)
          {
            v67 = &SegmentedBuffer::nullSegment;
            while (v64)
            {
              v66 = v64;
              v63 -= v65;
              v65 = v64[1];
              v64 = v64[2];
              if (v63 < v65)
              {
                goto LABEL_63;
              }
            }

            v68 = 0;
          }

          else
          {
            v66 = v48;
LABEL_63:
            v67 = (*v66 + v63);
            v68 = v65 - v63;
          }

          *&v139 = v67;
          *(&v139 + 1) = v68;
          *v140 = v64;
          *&v140[8] = *a3;
          *&v141 = *(a3 + 24);
          *&v140[24] = *(a3 + 16);
          v69 = *(a3 + 44);
          DWORD2(v141) = *(a3 + 32);
          HIDWORD(v141) = v69;
          LODWORD(v142[0]) = v149;
          LODWORD(v142[1]) = v51;
          v71 = a4 != 1 && v152 != 0;
          HIDWORD(v142[1]) = v53 - v71;
          LODWORD(v143) = v151;
          if (v151 == 3)
          {
            v72 = 12;
          }

          else
          {
            v72 = 8;
          }

          DWORD1(v143) = v72;
          *(&v143 + 1) = Macroblock::getScanTable(v152, v51);
          if (a4 == 7)
          {
            v73 = 16;
          }

          else
          {
            v73 = 64;
          }

          LODWORD(v144) = v73 >> (BYTE4(v142[1]) + LOBYTE(v142[1]));
          AlphaDecoder::AlphaDecoder(v137, v154, *(a3 + 36), v47);
          *(&v144 + 1) = v137;
          PixelWriter::PixelWriter(v134, a3, v151, LODWORD(v142[1]), HIDWORD(v142[1]), v138 != 0);
          if (!v136)
          {
            return 0xFFFFFFFFLL;
          }

          v74 = v135;
          *&v145 = DiscreteCosineTransform::getIDCTRoutine(LODWORD(v142[1]), HIDWORD(v142[1]), *(v117 + 56));
          DWORD2(v145) = DiscreteCosineTransform::getIDCTOutputBitDepth(v74);
          *&v146 = v134;
          DWORD2(v146) = v153;
          if (v153 > 9 || ((1 << v153) & 0x242) == 0)
          {
            if (v150 > 719)
            {
              v75 = 1;
            }

            else
            {
              v75 = 6;
            }

            DWORD2(v146) = v75;
          }

          if (v155)
          {
            v76 = &v157;
          }

          else
          {
            v76 = &Macroblock::DefaultQuantizationMatrix;
          }

          v77 = v158;
          if (!v156)
          {
            v77 = v76;
          }

          *&v147 = v76;
          *(&v147 + 1) = v77;
          v78 = v152;
          if ((v152 - 1) < 2)
          {
            if (a4 == 1)
            {
              v80 = v141;
              *&v141 = vadd_s32(v80, v80);
              v81 = SDWORD2(v141);
              DWORD2(v141) *= 2;
              v126 = *&v140[16];
              v127 = v141;
              v128 = *v142;
              v124 = v139;
              v125 = *v140;
              v82 = *(a3 + 44);
              HIDWORD(v142[0]) = (v150 + 1) / 2;
              HIDWORD(v141) = (v82 + 1) / 2;
              DWORD1(v128) = v150 / 2;
              HIDWORD(v127) = v82 / 2;
              v130 = v144;
              v131 = v145;
              v132 = v146;
              v133 = v147;
              v129 = v143;
              v83 = *&v140[24] + v81;
              *(&v125 + 1) = *&v140[8] + v80.i32[0];
              *&v126 = *&v140[16] + v80.i32[1];
              if (v152 == 2)
              {
                v84 = &v124;
              }

              else
              {
                v84 = &v139;
              }

              if (v152 == 2)
              {
                v85 = &v139;
              }

              else
              {
                v85 = &v124;
              }

              *(&v126 + 1) = v83;
              v86 = (Picture::getCodedSize(v84) + v62);
              v88 = v48[1];
              v87 = v48[2];
              if (v88 > v86)
              {
LABEL_108:
                v89 = (*v48 + v86);
                v90 = v88 - v86;
              }

              else
              {
                v89 = &SegmentedBuffer::nullSegment;
                while (v87)
                {
                  v48 = v87;
                  v86 -= v88;
                  v88 = v87[1];
                  v87 = v87[2];
                  if (v86 < v88)
                  {
                    goto LABEL_108;
                  }
                }

                v90 = 0;
              }

              *v85 = v89;
              v98 = &v124;
              if (v78 == 2)
              {
                v98 = &v139;
              }

              *(v98 + 1) = v90;
              *(v98 + 2) = v87;
              PictureDecoder::PictureDecoder(v121, v84);
              PictureDecoder::PictureDecoder(v118, v85);
              v99 = v122;
              v100 = v123;
              v101 = v120;
              if (v122)
              {
                v102 = v123 == 0;
              }

              else
              {
                v102 = 1;
              }

              if (!v102 && v119 != 0 && v120 != 0)
              {
                std::vector<DecoderJob>::resize(v117, v119 + v122);
                std::vector<SliceDecodeParams>::resize((v117 + 24), v101 + v100);
                PictureDecoder::addJobsToQueue(v121, *v117, *(v117 + 24));
                v105 = *v117 + 48 * v99;
                v106 = *(v117 + 24) + 96 * v100;
                v107 = v118;
                goto LABEL_145;
              }
            }

            else
            {
              if (a4 == 3)
              {
                v79 = 1;
              }

              else
              {
                v79 = a4 != 4 && v152 == 1;
              }

              HIDWORD(v142[0]) = (v150 + v79) / 2;
              if ((((v152 != 1) ^ v79) & 1) == 0)
              {
                v93 = (Picture::getCodedSize(&v139) + v62);
                v95 = v48[1];
                v94 = v48[2];
                if (v95 > v93)
                {
LABEL_119:
                  v96 = (*v48 + v93);
                  v97 = v95 - v93;
                }

                else
                {
                  v96 = &SegmentedBuffer::nullSegment;
                  while (v94)
                  {
                    v48 = v94;
                    v93 -= v95;
                    v95 = v94[1];
                    v94 = v94[2];
                    if (v93 < v95)
                    {
                      goto LABEL_119;
                    }
                  }

                  v97 = 0;
                }

                *&v139 = v96;
                *(&v139 + 1) = v97;
                *v140 = v94;
              }

              PictureDecoder::PictureDecoder(&v124, &v139);
              v91 = v125;
              v92 = HIDWORD(v125);
              if (v125)
              {
                v108 = HIDWORD(v125) == 0;
              }

              else
              {
                v108 = 1;
              }

              if (!v108)
              {
                goto LABEL_144;
              }
            }

            return 4294967294;
          }

          if (!v152 && (a4 - 3) >= 3)
          {
            HIDWORD(v142[0]) = v150;
            PictureDecoder::PictureDecoder(&v124, &v139);
            v91 = v125;
            if (v125)
            {
              v92 = HIDWORD(v125);
              if (HIDWORD(v125))
              {
LABEL_144:
                v110 = v92;
                std::vector<DecoderJob>::resize(v117, v91);
                std::vector<SliceDecodeParams>::resize((v117 + 24), v110);
                v105 = *v117;
                v106 = *(v117 + 24);
                v107 = &v124;
LABEL_145:
                PictureDecoder::addJobsToQueue(v107, v105, v106);
                ThreadPool<DecoderWorker,DecoderJob,void>::runJobs(*(v117 + 48), *v117, -1431655765 * ((*(v117 + 8) - *v117) >> 4));
                if (v116)
                {
                  if (v154)
                  {
                    if (a4 == 1 || !v152)
                    {
                      v111 = *(v117 + 8);
                      if (*v117 == v111)
                      {
                        *v116 = 1;
                      }

                      else
                      {
                        v112 = *v117 + 48;
                        do
                        {
                          v113 = *(v112 - 8);
                          v114 = v113 != 1 || v112 == v111;
                          v112 += 48;
                        }

                        while (!v114);
                        *v116 = v113;
                      }
                    }

                    else
                    {
                      *v116 = 0;
                    }
                  }

                  else
                  {
                    *v116 = 1;
                  }
                }

                return v30;
              }
            }

            return 4294967294;
          }
        }

        return 4294967293;
      }
    }

    else
    {
LABEL_40:
      v42 = 8;
      v44 = a2[1];
      v43 = a2[2];
      v116 = a6;
      v117 = a1;
      if (v44 <= 8)
      {
        goto LABEL_36;
      }
    }

    v46 = a2;
    v45 = v42;
LABEL_42:
    v47 = a5;
    v48 = a2;
    *&v139 = *v46 + v45;
    *(&v139 + 1) = v44 - v45;
    *v140 = v43;
    v49 = Frame::Header::decode(v148, &v139);
    if (!v49)
    {
      return 4294967294;
    }

    goto LABEL_45;
  }

  return v33;
}

int16x8_t (*DiscreteCosineTransform::getIDCTRoutine(DiscreteCosineTransform *this, unsigned int a2, int a3))(int16x8_t *this, int16x8_t *a2, __int16 *a3, int16x8_t *a4, const __int16 *a5)
{
  if (this <= 1)
  {
    if (this)
    {
      if (this == 1 && a2 < 3)
      {
        return off_28866B348[a2];
      }

      return 0;
    }

    if (a2 == 1)
    {
      return DiscreteCosineTransform::idct_8x4;
    }

    if (!a2)
    {
      if (a3)
      {
        return DiscreteCosineTransform::idct_8x8_AVX;
      }

      else
      {
        return DiscreteCosineTransform::idct_8x8;
      }
    }

    return 0;
  }

  if (this == 2)
  {
    if (a2 - 1 < 3)
    {
      return off_28866B360[a2 - 1];
    }

    return 0;
  }

  if (this != 3)
  {
    return 0;
  }

  if (a2 == 3)
  {
    v4 = DiscreteCosineTransform::idct_1x1;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 2)
  {
    return DiscreteCosineTransform::idct_1x2;
  }

  else
  {
    return v4;
  }
}

uint64_t DiscreteCosineTransform::getIDCTOutputBitDepth(int a1)
{
  result = 0;
  if (a1 <= 1916036715)
  {
    if (a1 > 1647719541)
    {
      if (a1 > 1848848433)
      {
        if (a1 == 1848848434 || a1 == 1915892016)
        {
          return 13;
        }

        v3 = 1916022840;
        goto LABEL_30;
      }

      if (a1 == 1647719542)
      {
        return 13;
      }

      v4 = 1815294002;
    }

    else
    {
      if (a1 <= 1111970368)
      {
        if (a1 == 32)
        {
          return 13;
        }

        v3 = 846624121;
        goto LABEL_30;
      }

      if (a1 == 1111970369 || a1 == 1378955371)
      {
        return 13;
      }

      v4 = 1647719521;
    }

    if (a1 != v4)
    {
      return result;
    }

    return 13;
  }

  if (a1 <= 1999778101)
  {
    if (a1 <= 1983000879)
    {
      if (a1 != 1916036716)
      {
        if (a1 != 1966223670)
        {
          return result;
        }

        return 10;
      }

      return 13;
    }

    if (a1 == 1983000880)
    {
      return 10;
    }

    if (a1 == 1983000886)
    {
      return 13;
    }

    v3 = 1983131704;
LABEL_30:
    if (a1 == v3)
    {
      return 8;
    }

    return result;
  }

  if (a1 <= 2033463605)
  {
    if (a1 != 1999778102 && a1 != 1999909174)
    {
      v3 = 2033463352;
      goto LABEL_30;
    }

    return 10;
  }

  if (a1 == 2033463606)
  {
    return 13;
  }

  if (a1 == 2050109750 || a1 == 2050240822)
  {
    return 12;
  }

  return result;
}

void std::vector<DecoderJob>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DecoderJob>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

void std::vector<SliceDecodeParams>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<SliceDecodeParams>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 96 * a2;
  }
}

intptr_t ThreadPool<DecoderWorker,DecoderJob,void>::runJobs(void *context, uint64_t a2, int a3)
{
  atomic_store(0, context + 6);
  *(context + 7) = a3;
  *(context + 4) = a2;
  if (*context >= 1)
  {
    v4 = 0;
    do
    {
      dispatch_group_async_f(*(context + 2), *(context + 1), context, ThreadPool<DecoderWorker,DecoderJob,void>::dispatch_routine);
      ++v4;
    }

    while (v4 < *context);
  }

  v5 = *(context + 2);

  return dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t getCacheLineSize(void)
{
  v4 = 64;
  v3 = 8;
  v0 = sysctlbyname("hw.cachelinesize", &v4, &v3, 0, 0);
  if (v3 == 8 && v0 == 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void std::vector<DecoderJob>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4) + a2;
    if (v6 > 0x555555555555555)
    {
      std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<SliceDecodeParams>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 96 * a2;
      v10 = 96 * a2;
      do
      {
        *(v3 + 88) = 0;
        *(v3 + 72) = 0uLL;
        *(v3 + 56) = 0uLL;
        *(v3 + 40) = 0uLL;
        *(v3 + 24) = 0uLL;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *v3 = &SegmentedBuffer::nullSegment;
        v3 += 96;
        v10 -= 96;
      }

      while (v10);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<__CVBuffer *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 96 * v5;
    v12 = 96 * a2;
    v13 = 96 * v5 + 96 * a2;
    v14 = 96 * v5;
    do
    {
      *(v14 + 88) = 0;
      *(v14 + 72) = 0uLL;
      *(v14 + 56) = 0uLL;
      *(v14 + 40) = 0uLL;
      *(v14 + 24) = 0uLL;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = &SegmentedBuffer::nullSegment;
      v14 += 96;
      v12 -= 96;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *ThreadPool<DecoderWorker,DecoderJob,void>::dispatch_routine(uint64_t a1)
{
  {
    ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    FrameDecoder::FrameDecoder();
  }

  v2 = ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize;
  v3 = -ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize;
  result = malloc_type_malloc(((ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize + 39) & -ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (result)
  {
    v5 = ((result + v2) & v3);
    *(v5 - 1) = result;
    if (v5)
    {
      DecoderWorker::DecoderWorker(v5, *(a1 + 40));
    }
  }

  return result;
}

void FrameDecoder::FrameDecoder()
{
  {
    v0 = ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::cacheLineSize;
    if (!ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::cacheLineSize)
    {
      v0 = 256;
    }

    ThreadPool<DecoderWorker,DecoderJob,void>::getBlockSize(void)::blockSize = v0;
  }
}

void DecoderWorker::DecoderWorker(DecoderWorker *this, const void *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void DecoderWorker::~DecoderWorker(void **this)
{
  free(*this);
  free(this[2]);
  v2 = this[4];
  if (v2)
  {
    MEMORY[0x277CB0040](v2, 0x1000C40347C77FBLL);
  }
}

uint64_t DecoderWorker::runJob(uint64_t result, uint64_t *a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int32x4_t a7, int16x8_t a8, float32x4_t a9, float32x4_t a10)
{
  v10 = *(*a2 + 32);
  if (v10)
  {
    v12 = result;
    v13 = *(*a2 + 88);
    v14 = *(v13 + 128);
    v15 = *(v14 + 20);
    if (*(v14 + 13) == 1)
    {
      v16 = a2 + 2;
      v17 = *(v13 + 48);
    }

    else
    {
      v17 = *(a2 + 3) * v15;
      *(result + 12) = v17;
      v16 = result;
      if (*(result + 8) < v17)
      {
        free(*result);
        *v12 = 0;
        v18 = malloc_type_malloc(16 * *(v12 + 12), 0x324508D9uLL);
        if (!v18)
        {
          goto LABEL_71;
        }

        *v12 = v18;
        v17 = *(v12 + 12);
        *(v12 + 8) = v17;
        v14 = *(v13 + 128);
        v16 = v12;
      }
    }

    v19 = *v16;
    v20 = *v16 & 0xF;
    v21 = ((v15 | v17) & 0xF) == 0 && v20 == 0;
    v22 = 32;
    if (!v21)
    {
      v22 = 24;
    }

    v23 = *(a2 + 2);
    if (v23 >= 1)
    {
      v24 = *(v14 + v22);
      v25 = *a2 + 40;
      v26 = *(a2 + 2);
      do
      {
        *v25 = v24;
        *(v25 + 8) = v19;
        *(v25 + 24) = v17;
        v19 += *(v25 - 12) * v15;
        v25 += 96;
        --v26;
      }

      while (v26);
    }

    v27 = *(v13 + 104);
    v28 = 16 * *(v27 + 4);
    v29 = *(v27 + 8);
    v30 = *(v13 + 40);
    if (v29)
    {
      if (v30)
      {
        if (v23 >= 1)
        {
          v31 = a2[4];
          v32 = *(v13 + 56);
          v33 = (*a2 + 80);
          v34 = v23;
          do
          {
            *(v33 - 1) = v31;
            *v33 = v32;
            v31 += *(v33 - 13) * v28;
            v33 += 24;
            --v34;
          }

          while (v34);
          goto LABEL_58;
        }

LABEL_41:
        *(*(v12 + 32) + 256) = 0;
        goto LABEL_68;
      }

      v38 = *(v14 + 13);
      if (v38)
      {
        v39 = 8 * v28;
        *(v12 + 28) = 8 * v28;
        if (*(v12 + 24) >= 8 * v28)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = *(a2 + 3) * v28;
        *(v12 + 28) = v39;
        if (*(v12 + 24) >= v39)
        {
LABEL_27:
          if (v38)
          {
            goto LABEL_28;
          }

          goto LABEL_37;
        }
      }

      free(*(v12 + 16));
      *(v12 + 16) = 0;
      v46 = malloc_type_malloc(16 * *(v12 + 28), 0x324508D9uLL);
      if (v46)
      {
        *(v12 + 16) = v46;
        v39 = *(v12 + 28);
        *(v12 + 24) = v39;
        if (*(*(v13 + 128) + 13))
        {
LABEL_28:
          v40 = *(a2 + 2);
          if (v40 < 1)
          {
            goto LABEL_41;
          }

          v41 = *(v12 + 16);
          v42 = *a2;
          if (v40 == 1)
          {
            v43 = 0;
          }

          else
          {
            v43 = v40 & 0x7FFFFFFE;
            v70 = (v42 + 176);
            v71 = v43;
            do
            {
              *(v70 - 13) = v41;
              *(v70 - 1) = v41;
              v72 = *(v70 - 13) * v28;
              *(v70 - 24) = *(v70 - 37) * v28;
              *v70 = v72;
              v70 += 48;
              v71 -= 2;
            }

            while (v71);
            if (v43 == v40)
            {
              goto LABEL_67;
            }
          }

          v73 = (v42 + 96 * v43 + 80);
          v74 = v40 - v43;
          do
          {
            *(v73 - 1) = v41;
            *v73 = *(v73 - 13) * v28;
            v73 += 24;
            --v74;
          }

          while (v74);
LABEL_67:
          *(*(v12 + 32) + 256) = 0;
LABEL_59:
          v67 = 0;
          v68 = 0;
          v69 = 1;
          do
          {
            v69 &= SliceDecoder::decode();
            ++v68;
            v67 += 96;
          }

          while (v68 < *(a2 + 2));
          goto LABEL_69;
        }

LABEL_37:
        if (*(a2 + 2) >= 1)
        {
          v47 = *(v12 + 16);
          v48 = (*a2 + 80);
          v49 = *(a2 + 2);
          do
          {
            *(v48 - 1) = v47;
            *v48 = v39;
            v47 += *(v48 - 13) * v28;
            v48 += 24;
            --v49;
          }

          while (v49);
          *(*(v12 + 32) + 256) = 0;
          goto LABEL_59;
        }

        goto LABEL_41;
      }

LABEL_71:
      exception = __cxa_allocate_exception(8uLL);
      v76 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v76, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    if (!v30)
    {
      if (v23 < 1)
      {
        goto LABEL_41;
      }

      v44 = *a2;
      if (v23 == 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v23 & 0x7FFFFFFE;
        v63 = (v44 + 176);
        v64 = v45;
        do
        {
          *(v63 - 13) = 0;
          *(v63 - 1) = 0;
          *(v63 - 24) = 0;
          *v63 = 0;
          v63 += 48;
          v64 -= 2;
        }

        while (v64);
        if (v45 == v23)
        {
          goto LABEL_58;
        }
      }

      v65 = (v44 + 96 * v45 + 80);
      v66 = v23 - v45;
      do
      {
        *(v65 - 1) = 0;
        *v65 = 0;
        v65 += 24;
        --v66;
      }

      while (v66);
      goto LABEL_58;
    }

    if (v23 < 1)
    {
      v37 = 0;
      goto LABEL_48;
    }

    v35 = *a2;
    if (v23 == 1)
    {
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v36 = v23 & 0x7FFFFFFE;
      v52 = (v35 + 124);
      v53 = v36;
      do
      {
        v54 = *(v52 - 24);
        v55 = *v52;
        v52 += 48;
        v50 += v54;
        v51 += v55;
        v53 -= 2;
      }

      while (v53);
      v37 = v51 + v50;
      if (v36 == v23)
      {
LABEL_48:
        if (v10 >= 1)
        {
          v59 = a2[4];
          v60 = (v28 >> *(v13 + 72)) * v37;
          v61 = v10;
          do
          {
            memset(v59, 255, v60);
            v59 += *(v13 + 56);
            --v61;
          }

          while (v61);
          v62 = *(a2 + 2);
          *(*(v12 + 32) + 256) = 0;
          if (v62 >= 1)
          {
            goto LABEL_59;
          }

          goto LABEL_68;
        }

LABEL_58:
        *(*(v12 + 32) + 256) = 0;
        if (v23 >= 1)
        {
          goto LABEL_59;
        }

LABEL_68:
        LOBYTE(v69) = 1;
LABEL_69:
        *(a2 + 40) = v69 & 1;
        return PixelWriter::processMBRow(*(v13 + 128), *v12, *(v12 + 12), *(v12 + 16), *(v12 + 28), a2[2], *(v13 + 48), a2[3], a3, a4, a5, a6, a7, a8, a9, a10, *(v13 + 52), *(v13 + 64) >> *(v13 + 72), v10, *(v13 + 136), *(v13 + 72) == 0);
      }
    }

    v56 = (v35 + 96 * v36 + 28);
    v57 = v23 - v36;
    do
    {
      v58 = *v56;
      v56 += 24;
      v37 += v58;
      --v57;
    }

    while (v57);
    goto LABEL_48;
  }

  return result;
}