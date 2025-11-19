unint64_t VoiceProcessorV2::GetRefPortUIDForPME(VoiceProcessorV2 *this, VoiceProcessorV2 *a2)
{
  result = VoiceProcessorV2::GetRefPortID(a2);
  if (HIDWORD(result) && (outData = 0, *&v6.mSelector = 0x6F75747070756964, v6.mElement = 0, ioDataSize = 8, result = AudioObjectGetPropertyData(result, &v6, 0, 0, &ioDataSize, &outData), !result))
  {
    result = outData;
    *this = outData;
    if (result)
    {
      v4 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

void sub_272537FD8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::NumberRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

uint64_t VoiceProcessorV2::GetRefPortOwningDeviceID(int **this)
{
  v23 = *MEMORY[0x277D85DE8];
  outData = 0;
  RefPortID = VoiceProcessorV2::GetRefPortID(this);
  v3 = RefPortID;
  if (HIDWORD(RefPortID))
  {
    *&inAddress.mSelector = 0x676C6F62706F776ELL;
    inAddress.mElement = 0;
    ioDataSize = 4;
    PropertyData = AudioObjectGetPropertyData(RefPortID, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v5 = PropertyData;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v7 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ioDataSize = 136315906;
          v16 = "vpInitializeDownlink.cpp";
          v17 = 1024;
          v18 = 669;
          v19 = 1024;
          v20 = v5;
          v21 = 1024;
          v22 = v3;
          _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting owning device ID for reference port %u", &ioDataSize, 0x1Eu);
        }
      }

      v9 = this[1588];
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v12 = this[1588];
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v9 = v12;
        }

        CALegacyLog::log(v9, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 669, "GetRefPortOwningDeviceID", "error %d getting owning device ID for reference port %u", v5, v3);
      }

      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
      v5 = outData;
    }
  }

  else
  {
    v4 = 0x100000000;
    v5 = RefPortID;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

uint64_t VoiceProcessorV2::GetRefPortID(VoiceProcessorV2 *this)
{
  v26 = *MEMORY[0x277D85DE8];
  outData = 0;
  *&inAddress.mSelector = 0x6F75747064637073;
  inAddress.mElement = 0;
  v2 = *(this + 286);
  v3 = *(this + 294);
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(v2, &inAddress, 4u, v3, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v10 = outData;
    if (outData)
    {
      v11 = CFGetTypeID(outData);
      if (v11 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v10))
        {
          v12 = applesauce::CF::details::at_as<unsigned int>(v10);
          if ((v12 & 0x100000000) != 0)
          {
            PropertyData = v12;
          }

          else
          {
            PropertyData = 0;
          }
        }

        else
        {
          PropertyData = 0;
        }

        CFRelease(v10);
        goto LABEL_28;
      }

      CFRelease(v10);
    }

    PropertyData = 0;
LABEL_28:
    v9 = 0x100000000;
    goto LABEL_29;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v5 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 286);
      ioDataSize = 136315906;
      v19 = "vpInitializeDownlink.cpp";
      v20 = 1024;
      v21 = 641;
      v22 = 1024;
      v23 = PropertyData;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting port ID for reference device %u", &ioDataSize, 0x1Eu);
    }
  }

  v8 = *(this + 1588);
  if (v8 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      v15 = *(this + 1588);
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      v8 = v15;
    }

    CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 641, "GetRefPortID", "error %d getting port ID for reference device %u", PropertyData, *(this + 286));
  }

  v9 = 0;
LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
  return v9 | PropertyData;
}

void sub_2725384C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::at_as<unsigned int>(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0)) != 0)
  {
    v3 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
    v4 = v3 & 0xFF00000000;
    v5 = v3 & 0xFFFFFF00;
    v6 = v3;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
  }

  return v6 | v4 | v5;
}

BOOL VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(int **this)
{
  outData = 0;
  RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
  v2 = 0;
  if (HIDWORD(RefPortOwningDeviceID))
  {
    *&inAddress.mSelector = 0x676C6F6269616170;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      v3 = 1;
    }

    else
    {
      v3 = outData == 0;
    }

    return !v3;
  }

  return v2;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<float>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_27253887C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(float **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>((8 * v7), v6);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_2725389F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::__shared_ptr_emplace<PowerLogManager>::__on_zero_shared(uint64_t a1)
{
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        CACFDictionary::~CACFDictionary((v3 - 16));
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<PowerLogManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B1FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV2::InitializeSpeakerTelemetryInput(VoiceProcessorV2 *this, const AudioStreamBasicDescription *a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = this + 2408;
  v20 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v7 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v18, a2);
      *buf = 136315906;
      *&buf[4] = "vpInitializeDownlink.cpp";
      v22 = 1024;
      v23 = 286;
      v24 = 2080;
      v25 = v18;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initspkrtel: asbd = %s, blksz = %d", buf, 0x22u);
      if (v18)
      {
        free(v18);
      }
    }
  }

  v9 = *(this + 1588);
  if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a2);
    CALegacyLog::log(v9, 5, v10, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 286, "InitializeSpeakerTelemetryInput", "initspkrtel: asbd = %s, blksz = %d", *buf, a3);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 12648) == 1)
    {
      LODWORD(v6) = *(this + 384);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 1580) - v6, *(this + 1580) - v6, 3);
    }

    *(this + 12648) = 0;
  }

  v11 = *&a2->mSampleRate;
  v12 = *&a2->mBytesPerPacket;
  *(this + 191) = *&a2->mBitsPerChannel;
  *(this + 1496) = v11;
  *(this + 1512) = v12;
  *(this + 384) = a3;
  v13 = *(this + 381);
  *(this + 386) = 5 * a3;
  *(this + 387) = v13;
  *(this + 390) = 0;
  *(this + 194) = 0;
  v14 = *(this + 197);
  v15 = *(this + 196);
  if (v13 * 5 * a3 == (v14 - v15) >> 2)
  {
    if (v14 != v15)
    {
      bzero(v15, v14 - v15);
    }
  }

  else
  {
    std::valarray<float>::resize(this + 1568, (v13 * 5 * a3));
    a3 = *(this + 384);
  }

  myAllocABLDynamic((this + 1496), a3, this + 198);
  *(this + 486) = 1;
  if (*(this + 3180))
  {
    VoiceProcessorV2::CreateSignalSaveFiles(this, 3);
  }

  if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
  {
    VoiceProcessorV2::PListWriteInitializeSpkrTelParameters(this);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v20 == 1)
  {
    (*(*v19 + 24))(v19);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_272538F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15)
{
  atomic_fetch_add((v15 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a13);
  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::GetRefPortHLC2chStateForPME(VoiceProcessorV2 *this)
{
  RefPortID = VoiceProcessorV2::GetRefPortID(this);
  if (!HIDWORD(RefPortID))
  {
    return 0;
  }

  *&inAddress.mSelector = 0x6F75747073706D65;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(RefPortID, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

uint64_t VoiceProcessorV2::InitializeHWInput(VoiceProcessorV2 *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int *a13)
{
  v169 = *MEMORY[0x277D85DE8];
  v155 = this + 2408;
  v156 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 1696) == 1)
    {
      LODWORD(v17) = *(this + 125);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 213) - v17, *(this + 213) - v17, 0);
    }

    if (*(this + 1697) == 1 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      LODWORD(v17) = *(this + 126);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 214) - v17, *(this + 214) - v17, 1);
    }
  }

  *(this + 848) = 0;
  if (*(this + 1864) == 1)
  {
    *(this + 1864) = 0;
  }

  *(this + 286) = a5;
  *(this + 287) = a11;
  ++VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount;
  v151 = this + 12604;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v18 = &unk_28133C000;
  v19 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 47;
      *&buf[18] = 1024;
      *&buf[20] = VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount;
      _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> call num %u", buf, 0x18u);
    }
  }

  v21 = *(this + 1588);
  if (v21 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v21, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 47, "InitializeHWInput", "call num %u", VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount);
  }

  v150 = 0;
  if (a6 && a7)
  {
    v150 = *a7;
  }

  v149 = 0;
  if (a12 && a13)
  {
    v149 = *a13;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v22 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = (*(*this + 112))(this);
      CAX4CCString::CAX4CCString(v157, v150);
      CAFormatter::CAFormatter(&v154, a2);
      v25 = v154;
      CAX4CCString::CAX4CCString(v159, v149);
      CAFormatter::CAFormatter(&v153, a8);
      *buf = 136317186;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      *&buf[24] = 2080;
      *&buf[26] = v157;
      *&buf[34] = 2080;
      *&buf[36] = v25;
      v161 = 2048;
      v162 = a4;
      v163 = 2080;
      v164 = v159;
      v165 = 2080;
      v166 = v153;
      v167 = 2048;
      v168 = a10;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> VPV%u REF %s %s (blksz %lu) MIC %s %s (blksz %lu)", buf, 0x54u);
      if (v153)
      {
        free(v153);
      }

      if (v154)
      {
        free(v154);
      }
    }
  }

  v26 = *(this + 1588);
  if (v26 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v27 = VPLogScope(void)::scope;
    v28 = (*(*this + 112))(this);
    CAX4CCString::CAX4CCString(buf, v150);
    CAFormatter::CAFormatter(v159, a2);
    v29 = v159[0];
    CAX4CCString::CAX4CCString(v157, v149);
    CAFormatter::CAFormatter(&v154, a8);
    CALegacyLog::log(v26, 4, v27, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 55, "InitializeHWInput", "VPV%u REF %s %s (blksz %lu) MIC %s %s (blksz %lu)", v28, buf, v29, a4, v157, v154, a10);
    v18 = &unk_28133C000;
    if (v154)
    {
      free(v154);
    }

    if (v159[0])
    {
      free(v159[0]);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v30 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v31 = (*v30 ? *v30 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 58;
      *&buf[18] = 2048;
      *&buf[20] = a5;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref audiodeviceid = %lu      mic audiodeviceid = %lu", buf, 0x26u);
    }
  }

  v32 = *(this + 1588);
  if (v32 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v32, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 58, "InitializeHWInput", "ref audiodeviceid = %lu      mic audiodeviceid = %lu", a5, a11);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v33 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(v157, a2);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 64;
      *&buf[18] = 2080;
      *&buf[20] = *v157;
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inRefASBD passed in = %s", buf, 0x1Cu);
      if (*v157)
      {
        free(*v157);
      }
    }
  }

  v35 = *(this + 1588);
  if (v35 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v36 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a2);
    CALegacyLog::log(v35, 5, v36, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 64, "InitializeHWInput", "inRefASBD passed in = %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v37 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(v157, a8);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 65;
      *&buf[18] = 2080;
      *&buf[20] = *v157;
      _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inMicASBD passed in = %s", buf, 0x1Cu);
      if (*v157)
      {
        free(*v157);
      }
    }
  }

  v39 = *(this + 1588);
  if (v39 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v40 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a8);
    CALegacyLog::log(v39, 5, v40, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 65, "InitializeHWInput", "inMicASBD passed in = %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v41 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v42 = (*v41 ? *v41 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      *&buf[18] = 2048;
      *&buf[20] = a4;
      *&buf[28] = 2048;
      *&buf[30] = a10;
      _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> hw io blocksizes passed in REF = %lu MIC = %lu", buf, 0x26u);
    }
  }

  v43 = *(this + 1588);
  if (v43 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v43, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 67, "InitializeHWInput", "hw io blocksizes passed in REF = %lu MIC = %lu", a4, a10);
  }

  mSampleRate = a2->mSampleRate;
  mFormatID = a2->mFormatID;
  mFormatFlags = a2->mFormatFlags;
  mBytesPerPacket = a2->mBytesPerPacket;
  mFramesPerPacket = a2->mFramesPerPacket;
  mBytesPerFrame = a2->mBytesPerFrame;
  mChannelsPerFrame = a2->mChannelsPerFrame;
  mBitsPerChannel = a2->mBitsPerChannel;
  v52 = a8->mSampleRate;
  v54 = a8->mFormatID;
  v53 = a8->mFormatFlags;
  v55 = a8->mBytesPerPacket;
  v56 = a8->mFramesPerPacket;
  v57 = a8->mBytesPerFrame;
  v58 = a8->mChannelsPerFrame;
  v59 = a8->mBitsPerChannel;
  v60 = mBitsPerChannel >> 3;
  if (mFormatID == 1819304813 && mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket && v60 <= mBytesPerFrame && mChannelsPerFrame && ((v61 = a2->mBytesPerPacket, (mFormatFlags & 0x20) != 0) || (v61 = mBytesPerPacket / mChannelsPerFrame, !(mBytesPerPacket % mChannelsPerFrame))) && ((mFormatFlags & 2) == 0 && 8 * v61 == mBitsPerChannel && (a2->mFormatFlags & 5) == 4 && ((v63 = (mFormatFlags >> 7) & 0x3F, v63 != 24) || v61 != 4) && !v63 && v61 == 2 || ((v61 = a2->mBytesPerPacket, (mFormatFlags & 0x20) != 0) || (v61 = mBytesPerPacket / mChannelsPerFrame, !(mBytesPerPacket % mChannelsPerFrame))) && (mFormatFlags & 2) == 0 && 8 * v61 == mBitsPerChannel && (mFormatFlags & 1) != 0 && (mFormatFlags & 0x1F84) == 0 && v61 == 4))
  {
    v65 = 1;
  }

  else
  {
    v61 = 0;
    if (mFormatID == 1819304813 && mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket && v60 <= mBytesPerFrame)
    {
      v62 = 0;
      if (mChannelsPerFrame)
      {
        if ((mFormatFlags & 0x20) != 0 || (v64 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v64))
        {
          v61 = 0;
          v62 = 1;
          if ((mFormatFlags & 2) == 0 && 8 * mBytesPerPacket == mBitsPerChannel)
          {
            if (mFormatFlags)
            {
              v61 = 0;
              v62 = (a2->mFormatFlags & 0x1F84) == 0;
            }

            else if ((mFormatFlags & 4) != 0)
            {
              v64 = (a2->mFormatFlags & 0x1F80) == 0xC00 && mBytesPerPacket == 4;
              v61 = v64;
            }

            else
            {
              v61 = 0;
            }
          }
        }

        else
        {
          v61 = 0;
          v62 = 0;
        }
      }
    }

    else
    {
      v62 = 0;
    }

    v65 = v61 & v62;
  }

  v66 = v59 >> 3;
  if (v54 == 1819304813 && v56 == 1 && v57 == v55 && v66 <= v57 && v58 && ((v69 = a8->mBytesPerPacket, (v53 & 0x20) != 0) || (v69 = v55 / v58, !(v55 % v58))) && ((v53 & 2) == 0 && 8 * v69 == v59 && (a8->mFormatFlags & 5) == 4 && ((v70 = (v53 >> 7) & 0x3F, v70 != 24) || v69 != 4) && !v70 && v69 == 2 || ((v71 = a8->mBytesPerPacket, (v53 & 0x20) != 0) || (v71 = v55 / v58, !(v55 % v58))) && (v53 & 2) == 0 && 8 * v71 == v59 && (v53 & 1) != 0 && (v53 & 0x1F84) == 0 && v71 == 4))
  {
    v73 = 1;
  }

  else
  {
    v67 = 0;
    if (v54 == 1819304813 && v56 == 1 && v57 == v55 && v66 <= v57)
    {
      v68 = 0;
      if (v58)
      {
        if ((v53 & 0x20) != 0 || (v64 = v55 == v55 / v58 * v58, v55 /= v58, v64))
        {
          v67 = 0;
          v68 = 1;
          if ((v53 & 2) == 0 && 8 * v55 == v59)
          {
            if (v53)
            {
              v67 = 0;
              v68 = (a8->mFormatFlags & 0x1F84) == 0;
            }

            else
            {
              v67 = (v53 & 4) != 0 && (a8->mFormatFlags & 0x1F80) == 0xC00 && v55 == 4;
            }
          }
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }
      }
    }

    else
    {
      v68 = 0;
    }

    v73 = v67 && v68;
  }

  LOBYTE(v153) = 0;
  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_allow_multi_ch_ref", 0, &v153, v61);
  LOBYTE(v153) = v153 | (v150 == 1886745455);
  v74 = _os_feature_enabled_impl();
  v76 = v153;
  if (v74)
  {
    v76 = v153 | (v150 == 1885889645);
    LOBYTE(v153) = v76;
  }

  if ((v76 & 1) == 0 && mChannelsPerFrame >= 9)
  {
    v65 = 0;
  }

  v152 = 0;
  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_allow_multi_ch_mic", 0, &v152, v75);
  v152 |= v149 == 1886745449;
  if ((v152 & 1) == 0 && v58 >= 6)
  {
    v73 = 0;
  }

  if ((v65 & v73 & 1) == 0)
  {
    v77 = 1650879860;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_218;
    }

    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 116;
    v78 = MEMORY[0x277D86220];
    v79 = "%25s:%-5d  unsupported stream format";
    goto LABEL_217;
  }

  if (mSampleRate == 0.0)
  {
    v77 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_218;
    }

    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    v78 = MEMORY[0x277D86220];
    v79 = "%25s:%-5d  unsupported Ref sample rate";
    goto LABEL_217;
  }

  if (v52 == 0.0)
  {
    v77 = 1852008051;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      v78 = MEMORY[0x277D86220];
      v79 = "%25s:%-5d  unsupported Mic sample rate";
LABEL_217:
      _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_ERROR, v79, buf, 0x12u);
      goto LABEL_218;
    }

    goto LABEL_218;
  }

  if (!a6 || !a7)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v96 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v97 = (*v96 ? *v96 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 123;
        _os_log_impl(&dword_2724B4000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to initialize - no reference ports", buf, 0x12u);
      }
    }

    v77 = *(this + 1588);
    if (!v77)
    {
      goto LABEL_218;
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v77, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 123, "InitializeHWInput", "failed to initialize - no reference ports");
    }

LABEL_294:
    v77 = 0;
    goto LABEL_218;
  }

  memset(buf, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, a7, &a7[a6], a6);
  v82 = *(this + 294);
  if (v82)
  {
    *(this + 295) = v82;
    operator delete(v82);
    *(this + 294) = 0;
    *(this + 295) = 0;
    *(this + 296) = 0;
  }

  *(this + 147) = *buf;
  *(this + 296) = *&buf[16];
  if (a12 && a13)
  {
    memset(buf, 0, 24);
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, a13, &a13[a12], a12);
    v83 = (this + 2376);
    v84 = *(this + 297);
    if (v84)
    {
      *(this + 298) = v84;
      operator delete(v84);
      *v83 = 0;
      *(this + 298) = 0;
      *(this + 299) = 0;
    }

    *v83 = *buf;
    *(this + 299) = *&buf[16];
    VoiceProcessorV2::ApplyPortTypeOverride(this);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v85 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
    if (v85)
    {
      v86 = v85;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        *&buf[18] = 1024;
        *&buf[20] = a6;
        *&buf[24] = 1024;
        *&buf[26] = a12;
        _os_log_impl(&dword_2724B4000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inNumRefPorts = %u  inNumMicPorts = %u ", buf, 0x1Eu);
      }
    }

    v87 = *(this + 1588);
    if (v87 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v87, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 145, "InitializeHWInput", "inNumRefPorts = %u  inNumMicPorts = %u ", a6, a12);
    }

    if (*(this + 295) != *(this + 294))
    {
      v88 = 0;
      do
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v89 = v18[115];
        if (v89 && CALegacyLog::LogEnabled(5, v18[115], 0))
        {
          v90 = (*v89 ? *v89 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v91 = a7[v88];
            CAX4CCString::CAX4CCString(v157, v91);
            *buf = 136316162;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 149;
            *&buf[18] = 2048;
            *&buf[20] = v88;
            *&buf[28] = 1024;
            *&buf[30] = v91;
            *&buf[34] = 2080;
            *&buf[36] = v157;
            _os_log_impl(&dword_2724B4000, v90, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> refPortType %lu = %u = %s", buf, 0x2Cu);
          }
        }

        v92 = *(this + 1588);
        if (v92 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v93 = v18;
          v94 = v18[115];
          v95 = a7[v88];
          CAX4CCString::CAX4CCString(buf, v95);
          CALegacyLog::log(v92, 5, v94, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 149, "InitializeHWInput", "refPortType %lu = %u = %s", v88, v95, buf);
          v18 = v93;
        }

        ++v88;
      }

      while (v88 < (*(this + 295) - *(this + 294)) >> 2);
    }

    if (*(this + 298) != *(this + 297))
    {
      v100 = 0;
      do
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v101 = v18[115];
        if (v101 && CALegacyLog::LogEnabled(5, v18[115], 0))
        {
          v102 = (*v101 ? *v101 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            v103 = v18;
            v104 = a13[v100];
            CAX4CCString::CAX4CCString(v157, v104);
            *buf = 136316162;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 153;
            *&buf[18] = 2048;
            *&buf[20] = v100;
            *&buf[28] = 1024;
            *&buf[30] = v104;
            *&buf[34] = 2080;
            *&buf[36] = v157;
            _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> micPortType %lu = %u = %s", buf, 0x2Cu);
            v18 = v103;
          }
        }

        v105 = *(this + 1588);
        if (v105 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v106 = v18;
          v107 = v18[115];
          v108 = a13[v100];
          CAX4CCString::CAX4CCString(buf, v108);
          CALegacyLog::log(v105, 5, v107, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 153, "InitializeHWInput", "micPortType %lu = %u = %s", v100, v108, buf);
          v18 = v106;
        }

        ++v100;
      }

      while (v100 < (*(this + 298) - *(this + 297)) >> 2);
    }

    if ((*(this + 16161) & 1) == 0)
    {
      *(this + 600) = 0;
      v109 = *(this + 294);
      v110 = *v109;
      if ((v110 - 1885892674) <= 0x35 && ((1 << (v110 - 66)) & 0x20000100000001) != 0)
      {
        VoiceProcessorV2::GetAndPrintPortSubtype(*(this + 286), v110, this + 600);
        v109 = *(this + 294);
      }

      *(this + 601) = 0;
      GetAndPrintPortTypeProperty(0x6F757470u, *v109, *(this + 286), 0x70657074u, "end point", this + 601);
    }

    v112 = *&a8->mSampleRate;
    v113 = *&a8->mBytesPerPacket;
    *(this + 83) = *&a8->mBitsPerChannel;
    *(this + 632) = v112;
    *(this + 648) = v113;
    *(this + 126) = a10;
    v114 = *&a2->mSampleRate;
    v115 = *&a2->mBytesPerPacket;
    *(this + 73) = *&a2->mBitsPerChannel;
    *(this + 552) = v114;
    *(this + 568) = v115;
    *(this + 124) = a4;
    if (VoiceProcessorV2::ShouldGenerateReferenceSignalInternally(this))
    {
      v116 = a2->mChannelsPerFrame;
      *v157 = a2->mSampleRate;
      *&v157[8] = xmmword_272756340;
      *&v157[24] = 4;
      *&v157[28] = v116;
      v158 = 32;
      if (CAStreamBasicDescription::IsEqual(v157, (this + 592)) && *(this + 125) == a4)
      {
        if (*v151 == 1)
        {
          if (*(this + 123) == a4 && CAStreamBasicDescription::IsEqual((this + 336), (this + 592)))
          {
            *v151 = 0;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v117 = CALog::LogObjIfEnabled(5, v18[115]);
            if (v117)
            {
              v118 = v117;
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 199;
                _os_log_impl(&dword_2724B4000, v118, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ul-dl config no longer out of sync", buf, 0x12u);
              }
            }

            v119 = *(this + 1588);
            if (v119 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v119, 5, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 199, "InitializeHWInput", "ul-dl config no longer out of sync");
            }
          }

          else
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v143 = CALog::LogObjIfEnabled(1, v18[115]);
            if (v143)
            {
              v144 = v143;
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 201;
                _os_log_impl(&dword_2724B4000, v144, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ul-dl config still out of sync ?!", buf, 0x12u);
              }
            }

            v145 = *(this + 1588);
            if (v145 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v145, 1, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 201, "InitializeHWInput", "ul-dl config still out of sync ?!");
            }
          }
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v121 = CALog::LogObjIfEnabled(5, v18[115]);
        if (v121)
        {
          v122 = v121;
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
          {
            CAFormatter::CAFormatter(v159, (this + 592));
            v123 = v159[0];
            v124 = *(this + 125);
            CAFormatter::CAFormatter(&v154, a8);
            *buf = 136316418;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 192;
            *&buf[18] = 2080;
            *&buf[20] = v123;
            *&buf[28] = 1024;
            *&buf[30] = v124;
            *&buf[34] = 2080;
            *&buf[36] = v154;
            v161 = 1024;
            LODWORD(v162) = a10;
            _os_log_impl(&dword_2724B4000, v122, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ul-dl config out of sync mHwRefASBD = %s, %d\t inMicASBD = %s %d", buf, 0x32u);
            if (v154)
            {
              free(v154);
            }

            if (v159[0])
            {
              free(v159[0]);
            }
          }
        }

        v125 = *(this + 1588);
        if (v125 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v126 = v18[115];
          CAFormatter::CAFormatter(buf, (this + 592));
          v127 = *buf;
          v128 = *(this + 125);
          CAFormatter::CAFormatter(v159, a8);
          CALegacyLog::log(v125, 5, v126, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 192, "InitializeHWInput", "ul-dl config out of sync mHwRefASBD = %s, %d\t inMicASBD = %s %d", v127, v128, v159[0], a10);
          if (v159[0])
          {
            free(v159[0]);
          }

          if (*buf)
          {
            free(*buf);
          }
        }

        v129 = *&v157[16];
        *(this + 37) = *v157;
        *(this + 38) = v129;
        *(this + 78) = v158;
        *(this + 125) = a4;
        *v151 = 1;
      }
    }

    else
    {
      *(this + 125) = *(this + 124);
      v120 = *(this + 568);
      *(this + 37) = *(this + 552);
      *(this + 38) = v120;
      *(this + 78) = *(this + 73);
    }

    if (*(this + 79) != *(this + 74))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v130 = CALog::LogObjIfEnabled(1, v18[115]);
      if (v130)
      {
        v131 = v130;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v132 = *(this + 74);
          v133 = *(this + 79);
          *buf = 136315906;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 209;
          *&buf[18] = 2048;
          *&buf[20] = v132;
          *&buf[28] = 2048;
          *&buf[30] = v133;
          _os_log_impl(&dword_2724B4000, v131, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fs mismatched! REF=%fHz, MIC=%fHz", buf, 0x26u);
        }
      }

      v134 = *(this + 1588);
      if (v134 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v135 = *(this + 74);
        CALegacyLog::log(v134, 1, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 209, "InitializeHWInput", "fs mismatched! REF=%fHz, MIC=%fHz", v135, *(this + 79));
      }
    }

    *(this + 264) = *(this + 263);
    *(this + 268) = *(this + 267);
    applesauce::CF::ObjectRef<__CFArray const*>::operator=(this + 270);
    v136 = *(this + 275);
    if (v136)
    {
      free(v136);
      *(this + 275) = 0;
    }

    *(this + 552) = 0;
    v137 = *(this + 278);
    if (v137)
    {
      CFRelease(v137);
      *(this + 278) = 0;
    }

    v138 = *(this + 279);
    if (v138)
    {
      CFRelease(v138);
      *(this + 279) = 0;
    }

    *(this + 482) = 1;
    if (*(this + 483) == 1)
    {
      v77 = (*(*this + 240))(this);
    }

    else
    {
      v77 = 0;
    }

    if ((*(this + 16161) & 1) == 0)
    {
      (*(*this + 312))(this);
    }

    if (*(this + 15800) == 1)
    {
      fflush(*MEMORY[0x277D85DF8]);
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::PListWriteInitializeHwInputParameters(this);
      if (*(this + 15881))
      {
        VoiceProcessorV2::LoopBackInitialize(this, v139, v140, v141, v142);
      }
    }

    goto LABEL_218;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v98 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
  if (v98)
  {
    v99 = v98;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 131;
      _os_log_impl(&dword_2724B4000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to initialize - no microphone ports", buf, 0x12u);
    }
  }

  v77 = *(this + 1588);
  if (v77)
  {
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v77, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 131, "InitializeHWInput", "failed to initialize - no microphone ports");
    }

    goto LABEL_294;
  }

LABEL_218:
  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v156 == 1)
  {
    (*(*v155 + 24))(v155);
  }

  v80 = *MEMORY[0x277D85DE8];
  return v77;
}

void sub_27253B06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  atomic_fetch_add((v37 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a30);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VoiceProcessorV2::InitializeOutput(VoiceProcessorV2 *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v58 = this + 2408;
  v59 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  ++VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v13 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 258;
      HIWORD(buf.mBytesPerPacket) = 1024;
      buf.mFramesPerPacket = VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> call num %u", &buf, 0x18u);
    }
  }

  v15 = *(this + 1588);
  if (v15 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v15, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 258, "InitializeOutput", "call num %u", VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount);
  }

  if (*(this + 483) != 1)
  {
    goto LABEL_47;
  }

  v16 = *&a2->mBytesPerPacket;
  *&buf.mSampleRate = *&a2->mSampleRate;
  *&buf.mBytesPerPacket = v16;
  *&buf.mBitsPerChannel = *&a2->mBitsPerChannel;
  if (buf.mSampleRate != *(this + 124))
  {
    goto LABEL_47;
  }

  if (buf.mFormatID != *(this + 250))
  {
    goto LABEL_47;
  }

  if (buf.mBytesPerPacket != *(this + 252))
  {
    goto LABEL_47;
  }

  if (buf.mFramesPerPacket != *(this + 253))
  {
    goto LABEL_47;
  }

  if (buf.mChannelsPerFrame != *(this + 255))
  {
    goto LABEL_47;
  }

  if (buf.mBitsPerChannel != *(this + 256))
  {
    goto LABEL_47;
  }

  if (!CA::Implementation::EquivalentFormatFlags(&buf, (this + 992), v12))
  {
    goto LABEL_47;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  v17 = *(this + 289);
  mChannelLayoutTag = a3->mChannelLayoutTag;
  if (a3->mChannelLayoutTag != v17[4])
  {
    goto LABEL_47;
  }

  if (mChannelLayoutTag == 0x10000)
  {
    if (a3->mChannelBitmap != v17[5])
    {
      goto LABEL_47;
    }

LABEL_133:
    *(this + 483) = 1;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope && *(VPLogScope(void)::scope + 8) >= 6)
    {
      v51 = *VPLogScope(void)::scope ? *VPLogScope(void)::scope : MEMORY[0x277D86220];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        CAFormatter::CAFormatter(v60, a2);
        LODWORD(buf.mSampleRate) = 136315650;
        *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 327;
        HIWORD(buf.mBytesPerPacket) = 2080;
        *&buf.mFramesPerPacket = *v60;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initialize output: ioOutASBD passed OUT = %s", &buf, 0x1Cu);
        if (*v60)
        {
          free(*v60);
        }
      }
    }

    v52 = *(this + 1588);
    if (v52 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v53 = VPLogScope(void)::scope;
      CAFormatter::CAFormatter(&buf, a2);
      CALegacyLog::log(v52, 6, v53, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 327, "InitializeOutput", "initialize output: ioOutASBD passed OUT = %s", *&buf.mSampleRate);
      if (*&buf.mSampleRate)
      {
        free(*&buf.mSampleRate);
      }
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::PListWriteInitializeOutputParameters(this);
      if (*(this + 15881))
      {
        VoiceProcessorV2::LoopBackInitialize(this, v54, v55, v56, v57);
      }
    }

    v28 = 0;
    goto LABEL_108;
  }

  if (mChannelLayoutTag)
  {
    goto LABEL_133;
  }

  mNumberChannelDescriptions = a3->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions != v17[6])
  {
    goto LABEL_47;
  }

  if (!mNumberChannelDescriptions)
  {
    goto LABEL_133;
  }

  mChannelDescriptions = a3->mChannelDescriptions;
  v21 = v17 + 7;
  while (mChannelDescriptions->mChannelLabel == *v21)
  {
    if (mChannelDescriptions->mChannelLabel == 100)
    {
      v22 = *&mChannelDescriptions->mChannelLabel == *v21 && *mChannelDescriptions->mCoordinates == *(v21 + 1);
      if (!v22 || LODWORD(mChannelDescriptions->mCoordinates[2]) != v21[4])
      {
        break;
      }
    }

    v21 += 5;
    ++mChannelDescriptions;
    if (!--mNumberChannelDescriptions)
    {
      goto LABEL_133;
    }
  }

LABEL_47:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v24 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      CAFormatter::CAFormatter(v60, a2);
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 265;
      HIWORD(buf.mBytesPerPacket) = 2080;
      *&buf.mFramesPerPacket = *v60;
      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> ioOutASBD passed in = %s", &buf, 0x1Cu);
      if (*v60)
      {
        free(*v60);
      }
    }
  }

  v26 = *(this + 1588);
  if (v26 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v27 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(&buf, a2);
    CALegacyLog::log(v26, 4, v27, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 265, "InitializeOutput", "ioOutASBD passed in = %s", *&buf.mSampleRate);
    if (*&buf.mSampleRate)
    {
      free(*&buf.mSampleRate);
    }
  }

  if (a2->mSampleRate == 0.0)
  {
    v28 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 269;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  unsupported Out sample rate";
    goto LABEL_107;
  }

  if (a2->mFormatID != 1819304813)
  {
    v28 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 271;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  unsupported out format";
    goto LABEL_107;
  }

  if (a2->mChannelsPerFrame != 1)
  {
    v31 = a2->mBitsPerChannel >> 3;
    a2->mBytesPerFrame = v31;
    a2->mChannelsPerFrame = 1;
    a2->mBytesPerPacket = v31;
    a2->mFramesPerPacket = 1;
  }

  if (!a3)
  {
    mSampleRate = COERCE_DOUBLE(CAAudioChannelLayout::RefCountedLayout::operator new(0xC));
    **&mSampleRate = &unk_2881B2480;
    *(*&mSampleRate + 8) = 0xC00000001;
    *(*&mSampleRate + 16) = 0;
    *(*&mSampleRate + 24) = 0;
    *(*&mSampleRate + 16) = 6553601;
    buf.mSampleRate = mSampleRate;
    v33 = *(this + 289);
    if (v33 != *&mSampleRate)
    {
      if (v33)
      {
        if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v33 + 16))(v33);
        }

        mSampleRate = buf.mSampleRate;
        *(this + 289) = *&buf.mSampleRate;
        if (mSampleRate == 0.0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        *(this + 289) = mSampleRate;
      }

      atomic_fetch_add((*&mSampleRate + 8), 1u);
    }

LABEL_85:
    CAAudioChannelLayout::~CAAudioChannelLayout(&buf);
    goto LABEL_86;
  }

  if (LOWORD(a3->mChannelLayoutTag) != 1)
  {
    v28 = 593717363;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 285;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  number of channels mismatches";
    goto LABEL_107;
  }

  CAAudioChannelLayout::operator=(this + 289, a3);
LABEL_86:
  v34 = *&a2->mSampleRate;
  v35 = *&a2->mBytesPerPacket;
  *(this + 128) = *&a2->mBitsPerChannel;
  *(this + 62) = v34;
  *(this + 63) = v35;
  if (*(this + 482) == 1)
  {
    v28 = (*(*this + 240))(this);
    if (v28)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 294;
      v29 = MEMORY[0x277D86220];
      v30 = "%25s:%-5d  could not initialize EC/ES";
      goto LABEL_107;
    }

    *a4 = *(this + 422);
    *a5 = *(this + 423);
    *a6 = 0;
    if (!*(this + 159))
    {
      LODWORD(v36) = *(this + 126);
      v42 = vcvtpd_u64_f64(*(this + 124) * v36 / *(this + 79));
      if (v42 <= *(this + 422))
      {
        v42 = *(this + 422);
      }

      if (v42 <= 0x1000)
      {
        v43 = 4096;
      }

      else
      {
        v43 = v42;
      }

      v44 = *(this + 63);
      *&buf.mSampleRate = *(this + 62);
      *&buf.mBytesPerPacket = v44;
      *&buf.mBitsPerChannel = *(this + 128);
      buf.mChannelsPerFrame = 2;
      myAllocABLDynamic(&buf, v43, this + 159);
      v45 = *(this + 159);
      if (*v45)
      {
        v46 = 0;
        v47 = (v45 + 4);
        do
        {
          bzero(*v47, *(v47 - 1));
          ++v46;
          v47 += 2;
        }

        while (v46 < *v45);
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v48 = CALog::LogObjIfEnabled(4, VPLogScope(void)::scope);
      if (v48)
      {
        v49 = v48;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *v60 = 136315650;
          *&v60[4] = "vpInitializeUplink.cpp";
          v61 = 1024;
          v62 = 320;
          v63 = 1024;
          v64 = v43;
          _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> UL fade data size = %u", v60, 0x18u);
        }
      }

      v50 = *(this + 1588);
      if (v50 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v50, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 320, "InitializeOutput", "UL fade data size = %u", v43);
      }
    }

    goto LABEL_133;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v37 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 298;
      _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: Initialize output called before Initialize hw input was called!", &buf, 0x12u);
    }
  }

  v39 = *(this + 1588);
  if (v39 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v39, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 298, "InitializeOutput", "ERROR: Initialize output called before Initialize hw input was called!");
  }

  v28 = 1768843636;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 300;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  Initialize output called before init hw was called";
LABEL_107:
    _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, v30, &buf, 0x12u);
  }

LABEL_108:
  if (*(this + 15800) == 1)
  {
    fflush(*MEMORY[0x277D85DF8]);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v59 == 1)
  {
    (*(*v58 + 24))(v58);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v28;
}

void sub_27253BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  atomic_fetch_add((v17 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a11);
  _Unwind_Resume(a1);
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  v5 = v4 & 0xFFFFFFBF;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_14;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v4 & 0xFFFFFFB7 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_14:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  v20 = v19 & 0xFFFFFFBF;
  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v19 & 0xFFFFFFB7 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_44:
    v26 = mBitsPerChannel == 0;
    goto LABEL_45;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_44;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_45:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

uint64_t VoiceProcessorV2::GetMaxOutputPacketInfo(VoiceProcessorV2 *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = this + 2408;
  v21 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (*(this + 483))
  {
    *a4 = *(this + 422);
    *a5 = *(this + 423);
    *a6 = 0;
    if (*(this + 15881) == 1)
    {
      if (*(this + 1906))
      {
        *buf = 0;
        VoiceProcessorV2::PListCopyDictionaryForWrite(this, buf);
        v12 = *buf;
        if (*buf)
        {
          VPGetPropsPListStringForKey(&cf, 55);
          WriteItemToDictionary(buf, &cf, 1, 4uLL, this + 1688);
          if (cf)
          {
            CFRelease(cf);
          }

          VPGetPropsPListStringForKey(&cf, 56);
          WriteItemToDictionary(buf, &cf, 1, 4uLL, this + 1692);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v12);
        }
      }
    }

    v13 = 0;
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "vpInitializeUplink.cpp";
        v24 = 1024;
        v25 = 355;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> GetMaxOutputPacketInfo : InitializeOutput hasn't been called yet!", buf, 0x12u);
      }
    }

    v16 = *(this + 1588);
    if (v16 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v19 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v16 = v19;
      }

      CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 355, "GetMaxOutputPacketInfo", "GetMaxOutputPacketInfo : InitializeOutput hasn't been called yet!");
    }

    v13 = (*(*this + 24))(this, a2, a3, a4, a5, a6);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v21 == 1)
  {
    (*(*v20 + 24))(v20);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_27253C3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = *(a1 + 8);
      v6 = *a1;
      if (v5 != v4)
      {
        do
        {
          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](--v5, 0);
        }

        while (v5 != v4);
        v6 = *a1;
      }

      *(a1 + 8) = v4;
      operator delete(v6);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t VoiceProcessorV2::Initialize(VoiceProcessorV2 *this)
{
  v1 = this;
  v238 = *MEMORY[0x277D85DE8];
  CADeprecated::CAMutex::Lock((this + 2592));
  *(v1 + 3148) = 0;
  CADeprecated::CAMutex::Unlock((v1 + 2592));
  *(v1 + 3149) = 0;
  CAAudioChannelLayout::operator=(v1 + 289, 0);
  v2.i32[0] = *(v1 + 102);
  v2.i32[1] = *(v1 + 114);
  v3 = vceqz_s32(v2);
  *(v1 + 52) = vsub_s32(vbic_s8(vpaddl_u16(vpaddl_u8(vcnt_s8(v2))), v3), v3);
  v4 = vcnt_s8(*(v1 + 103));
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if (!*(v1 + 103))
  {
    v5 = 1;
  }

  *(v1 + 106) = v5;
  if (VoiceProcessorV2::ShouldInteractWithControlCenter(v1))
  {
    v235 = v1;
    if (atomic_load_explicit(v1 + 2066, memory_order_acquire) != -1)
    {
      *buf = &v235;
      __src[0] = buf;
      std::__call_once(v1 + 2066, __src, std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::Initialize(void)::$_0 &&>>);
    }
  }

  (*(*v1 + 576))(v1);
  v228 = v1 + 15309;
  if (*(v1 + 16161) != 1 || (v9 = *(v1 + 4049), v9 == 0.0))
  {
    if (*(v1 + 15881) != 1 || (LOBYTE(__src[0]) = 0, *buf = 0, VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_samplerate", 2, buf, __src, v6), !LOBYTE(__src[0])) || (v9 = *buf, *buf == 0.0))
    {
      v10 = *(v1 + 124);
      v11 = *(v1 + 20);
      if (v11 - 5 <= 1)
      {
        v12 = COERCE_DOUBLE(GetVPPreferredClientSampleRate(*(v1 + 18), v11));
        if (v13)
        {
          v10 = v12;
        }
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 513;
          *&buf[18] = 2048;
          *&buf[20] = v10;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> preferredClientSampleRate: %g", buf, 0x1Cu);
        }
      }

      v16 = *(v1 + 1588);
      if (v16 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 513, "CalcEpIoSampleRate", "preferredClientSampleRate: %g", v10);
      }

      v17 = *(v1 + 79);
      v18 = 32000.0;
      if (v17 == 44100.0 && *(v1 + 124) == 44100.0)
      {
        *v7.i64 = vcvtd_n_f64_u32(*(v1 + 126), 1uLL);
        *v8.i64 = *v7.i64 - trunc(*v7.i64);
        v19.f64[0] = NAN;
        v19.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v19), v8, v7).i64 == 0.0)
        {
          v18 = 22050.0;
        }
      }

      if (v17 == 48000.0 && *(v1 + 20) == 1 && *(v1 + 124) == 48000.0)
      {
        v20 = *(v1 + 297);
        if (v20 != *(v1 + 298) && *v20 != 1886614633)
        {
          v21 = *(v1 + 554);
          if (v21 == 0.0)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v22 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
            if (v22)
            {
              v23 = v22;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 539;
                _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> calcasbds: mPrimaryCodecSampleRate should be used to determin epio sample rate, but it is zero! setting the max epio sample rate to 16000", buf, 0x12u);
              }
            }

            v24 = *(v1 + 1588);
            v18 = 16000.0;
            if (v24 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v24, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 539, "CalcEpIoSampleRate", "calcasbds: mPrimaryCodecSampleRate should be used to determin epio sample rate, but it is zero! setting the max epio sample rate to 16000");
            }
          }

          else
          {
            v18 = fmax(v21, 16000.0);
          }
        }
      }

      v25 = *(v1 + 554);
      if (v25 > 0.0 && v25 <= 16000.0 && (*(*v1 + 232))(v1) && v18 > 16000.0)
      {
        v18 = 16000.0;
      }

      v26 = *(v1 + 19);
      if (v26 == 48 || v26 == 45)
      {
        v27 = 0;
        while (v10 != *&dword_272759F44[v27])
        {
          if (++v27 == 3)
          {
            if (*(v1 + 20))
            {
              break;
            }

            v9 = 24000.0;
            goto LABEL_79;
          }
        }
      }

      v28 = *(v1 + 79);
      if (v28 >= v10)
      {
        v28 = v10;
      }

      if (v18 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v18;
      }

      if ((*(v1 + 16568) & 1) == 0)
      {
        if ((*(v1 + 2262) & 1) != 0 || (*(v1 + 2288) != 1 ? (AutomaticChatFlavor = *(v1 + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(v1)), AutomaticChatFlavor == 2))
        {
          if ((*(v1 + 16544) & 4) != 0)
          {
            v29 = 24000.0;
          }
        }
      }

      v9 = v29;
    }
  }

LABEL_79:
  v31 = *(v1 + 104);
  v32 = v9;
  v33 = (v1 + 792);
  *(v1 + 99) = v32;
  *(v1 + 50) = xmmword_272756340;
  *(v1 + 204) = 4;
  *(v1 + 205) = v31;
  *(v1 + 103) = 32;
  v34 = *(v1 + 105);
  *(v1 + 104) = v32;
  *(v1 + 840) = xmmword_272756340;
  *(v1 + 214) = 4;
  *(v1 + 215) = v34;
  *(v1 + 108) = 32;
  v35 = *(v1 + 106);
  *(v1 + 114) = v32;
  v215 = v1 + 840;
  *(v1 + 920) = xmmword_272756340;
  *(v1 + 234) = 4;
  *(v1 + 235) = v35;
  *(v1 + 118) = 32;
  v36 = *(v1 + 792);
  v37 = *(v1 + 808);
  *(v1 + 93) = *(v1 + 103);
  *(v1 + 712) = v36;
  *(v1 + 728) = v37;
  v217 = (v1 + 712);
  *(v1 + 89) = *(v1 + 74);
  v38 = *(v1 + 52);
  v39 = *(v1 + 53);
  *(v1 + 98) = *(v1 + 108);
  *(v1 + 47) = v38;
  *(v1 + 48) = v39;
  *(v1 + 94) = *(v1 + 79);
  v40 = *(v1 + 62);
  v41 = *(v1 + 63);
  *(v1 + 123) = *(v1 + 128);
  *(v1 + 952) = v40;
  *(v1 + 968) = v41;
  v218 = (v1 + 952);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v42 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v43 = (*v42 ? *v42 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(__src, (v1 + 792));
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 623;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> calcasbds: mEpRefASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v44 = *(v1 + 1588);
  if (v44 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v45 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (v1 + 792));
    CALegacyLog::log(v44, 5, v45, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 623, "CalcASBDs", "calcasbds: mEpRefASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v221 = (v1 + 832);
  v46 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v221);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 625;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mEpMicASBD (ignore the # of channels) format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v48 = *(v1 + 1588);
  if (v48 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v49 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v221);
    CALegacyLog::log(v48, 3, v49, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 625, "CalcASBDs", "calcasbds: mEpMicASBD (ignore the # of channels) format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v224 = (v1 + 912);
  v50 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v224);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 626;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mEpOutASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v52 = *(v1 + 1588);
  if (v52 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v53 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v224);
    CALegacyLog::log(v52, 3, v53, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 626, "CalcASBDs", "calcasbds: mEpOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v54 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v55 = (*v54 ? *v54 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v218);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 627;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mUsOutASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v56 = *(v1 + 1588);
  if (v56 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v57 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v218);
    CALegacyLog::log(v56, 3, v57, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 627, "CalcASBDs", "calcasbds: mUsOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  std::vector<std::string>::clear[abi:ne200100](v1 + 1995);
  v58 = *(v1 + 2002);
  v59 = *(v1 + 2001);
  while (v58 != v59)
  {
    v58 -= 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v58);
  }

  *(v1 + 2002) = v59;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(v1 + 4648);
  VoiceProcessorV2::InitializeVPParams(v1);
  if ((*(v1 + 4691) & 0x10) != 0)
  {
    (*(*v1 + 392))(v1);
  }

  if ((*(v1 + 4696) & 0x40) != 0)
  {
    (*(*v1 + 400))(v1);
  }

  v60 = vcnt_s8(*(v1 + 114));
  v60.i16[0] = vaddlv_u8(v60);
  v61 = v60.i32[0];
  if (!*(v1 + 114))
  {
    v61 = 1;
  }

  *(v1 + 105) = v61;
  *(v1 + 215) = v61;
  *(v1 + 195) = v61;
  v62 = v1 + 1936;
  if (*(v1 + 1960) == 1)
  {
    *buf = v1 + 1936;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1960) = 0;
  }

  v225 = v1 + 1968;
  if (*(v1 + 1992) == 1)
  {
    *buf = v1 + 1968;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1992) = 0;
  }

  v222 = v1 + 1376;
  if (*(v1 + 1400) == 1)
  {
    *buf = v1 + 1376;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1400) = 0;
  }

  v219 = (v1 + 2000);
  v63 = std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v1 + 250, 0);
  *v227 = v1;
  if (*(v1 + 74) == *(v1 + 99))
  {
LABEL_179:
    v216 = (v1 + 992);
    if (*(v1 + 79) == v221->mSampleRate)
    {
      v82 = 0;
    }

    else
    {
      v214 = v33;
      __src[0] = 0;
      __src[1] = 0;
      *&v230 = 0;
      v235 = 0;
      v236 = 0;
      v237 = 0;
      if (*(v1 + 215))
      {
        v82 = 0;
        v83 = 0;
        v220 = 1651532146;
        v84 = MEMORY[0x277D86220];
        v85 = *v227;
        while (1)
        {
          VoiceProcessorV2::CreateSRC(&outData, v85[79], v85[104], v85, 1, v64, v65);
          v88 = outData;
          if (!outData)
          {
            break;
          }

          v89 = __src[1];
          if (__src[1] >= v230)
          {
            v91 = __src[0];
            v92 = __src[1] - __src[0];
            v93 = (__src[1] - __src[0]) >> 3;
            v94 = v93 + 1;
            if ((v93 + 1) >> 61)
            {
              std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
            }

            v95 = v230 - __src[0];
            if ((v230 - __src[0]) >> 2 > v94)
            {
              v94 = v95 >> 2;
            }

            if (v95 >= 0x7FFFFFFFFFFFFFF8)
            {
              v96 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v96 = v94;
            }

            *&buf[32] = __src;
            if (v96)
            {
              std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v96);
            }

            outData = 0;
            *(8 * v93) = v88;
            v90 = (8 * v93 + 8);
            memcpy(0, v91, v92);
            v97 = __src[0];
            v98 = v230;
            __src[0] = 0;
            __src[1] = v90;
            *&v230 = 0;
            *&buf[16] = v97;
            *&buf[24] = v98;
            *buf = v97;
            *&buf[8] = v97;
            std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
          }

          else
          {
            outData = 0;
            *__src[1] = v88;
            v90 = v89 + 8;
          }

          __src[1] = v90;
          VoiceProcessorV2::CreateSRC(ioDataSize, *(*v227 + 632), *(*v227 + 832), *v227, 1, v86, v87);
          v99 = *ioDataSize;
          if (*ioDataSize)
          {
            v100 = v236;
            if (v236 >= v237)
            {
              v102 = v235;
              v103 = v236 - v235;
              v104 = (v236 - v235) >> 3;
              v105 = v104 + 1;
              if ((v104 + 1) >> 61)
              {
                std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
              }

              v106 = v237 - v235;
              if ((v237 - v235) >> 2 > v105)
              {
                v105 = v106 >> 2;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFF8)
              {
                v107 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v107 = v105;
              }

              *&buf[32] = &v235;
              if (v107)
              {
                std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v107);
              }

              v108 = (8 * v104);
              *ioDataSize = 0;
              v109 = &v108[-((v236 - v235) >> 3)];
              *v108 = v99;
              v101 = (v108 + 1);
              memcpy(v109, v102, v103);
              v110 = v235;
              v111 = v237;
              v235 = v109;
              v236 = v101;
              v237 = 0;
              *&buf[16] = v110;
              *&buf[24] = v111;
              *buf = v110;
              *&buf[8] = v110;
              std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
            }

            else
            {
              *ioDataSize = 0;
              *v236 = v99;
              v101 = v100 + 8;
            }

            v236 = v101;
          }

          else
          {
            v82 = 1651532146;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "vpInitializeUplink.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 758;
              _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create mic clip src", buf, 0x12u);
            }
          }

          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](ioDataSize, 0);
          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&outData, 0);
          if (!v99)
          {
            *buf = &v235;
            std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
            *buf = __src;
            std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
            v1 = *v227;
            v33 = v214;
            goto LABEL_228;
          }

          ++v83;
          v85 = *v227;
          if (v83 >= *(*v227 + 860))
          {
            goto LABEL_217;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 754;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create mic src", buf, 0x12u);
        }

        std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&outData, 0);
        *buf = &v235;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = __src;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
        v1 = *v227;
        goto LABEL_229;
      }

      v82 = 0;
      v85 = *v227;
LABEL_217:
      std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v225, __src);
      std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v222, &v235);
      *buf = &v235;
      std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = __src;
      std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
      v1 = v85;
      v33 = v214;
    }

    v67.i64[0] = *&v216->mSampleRate;
    if (v224->mSampleRate != v216->mSampleRate)
    {
      VoiceProcessorV2::CreateSRC(__src, v224->mSampleRate, *v67.i64, v1, 1, v64, v65);
      v112 = __src[0];
      if (__src[0])
      {
        __src[0] = 0;
        std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v219, v112);
      }

      else
      {
        v82 = 1651532146;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 768;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create output src", buf, 0x12u);
        }
      }

      v63 = std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](__src, 0);
    }

LABEL_228:
    v220 = v82;
    if (v82)
    {
      goto LABEL_229;
    }

    v116 = *(v1 + 125);
    *(v1 + 127) = v116;
    v117 = *(v1 + 126);
    *(v1 + 128) = v117;
    if (*(v1 + 1960) == 1)
    {
      v67.i64[0] = *(v1 + 74);
      *(v1 + 127) = vcvtpd_u64_f64(*(v1 + 99) * v116 / *v67.i64);
    }

    if (*(v1 + 1992) == 1)
    {
      v67.i64[0] = *(v1 + 79);
      *(v1 + 128) = vcvtpd_u64_f64(*(v1 + 104) * v117 / *v67.i64);
    }

    if (v228[852] != 1 || (v118 = *(v1 + 4048)) == 0)
    {
      if (v228[572] == 1)
      {
        LOBYTE(v235) = 0;
        *buf = 0;
        VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_blksz", 1, buf, &v235, v65);
        if (v235)
        {
          v118 = *buf;
          if (*buf)
          {
            goto LABEL_265;
          }
        }

        LOBYTE(outData) = 0;
        LODWORD(__src[0]) = 0;
        VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_blksz_ms", 2, __src, &outData, v119);
        if (outData && *__src != 0.0)
        {
          v118 = (v221->mSampleRate * *__src * 0.001);
          goto LABEL_265;
        }
      }

      v120 = *(v1 + 20);
      if ((v120 - 2) < 5)
      {
        goto LABEL_263;
      }

      if (v120 == 1)
      {
        ShouldUseOptimizedBlockSizeForFacePlant = VoiceProcessorV2::ShouldUseOptimizedBlockSizeForFacePlant(v1);
        v197 = 0.012;
        if (ShouldUseOptimizedBlockSizeForFacePlant)
        {
          v197 = 0.01;
        }

        LODWORD(ShouldUseOptimizedBlockSizeForFacePlant) = vcvtpd_u64_f64(v197 * *(v1 + 104));
        NextFFTFriendlyBlkSz = BlockSizeHelper::GetNextFFTFriendlyBlkSz(ShouldUseOptimizedBlockSizeForFacePlant);
        goto LABEL_264;
      }

      if (v120 == 8 || ((v193 = *(v1 + 104), *(v1 + 1992) != 1) ? (*v69.i32 = *(v1 + 126)) : (LODWORD(v68) = *(v1 + 126), *v67.i64 = v193 / *(v1 + 79) * v68, *v69.i32 = *v67.i64), *v67.i32 = *v69.i32 - truncf(*v69.i32), v198.i64[0] = 0x8000000080000000, v198.i64[1] = 0x8000000080000000, *vbslq_s8(v198, v67, v69).i32 != 0.0))
      {
LABEL_263:
        LODWORD(v63) = vcvtpd_u64_f64(v221->mSampleRate * 0.01);
        NextFFTFriendlyBlkSz = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v63);
LABEL_264:
        v118 = NextFFTFriendlyBlkSz;
        goto LABEL_265;
      }

      *v198.i64 = v193 * 0.02;
      v199 = vcvtpd_u64_f64(v193 * 0.008);
      v200 = vcvtmd_u64_f64(v193 * 0.02);
      v201 = *v69.i32 < v199 || *v69.i32 > v200;
      v223 = *v69.i32;
      if (v201)
      {
        *v66.i64 = v193 * 0.01;
        v202 = vcvtpd_u64_f64(*v66.i64);
        v203 = -1;
        v204 = 0.0;
        for (i = 2; i != 8; ++i)
        {
          if (*v69.i32 < v199)
          {
            *v198.i32 = *v69.i32 * i;
          }

          else
          {
            *v198.i32 = *v69.i32 / i;
          }

          if (*v198.i32 < v199 || ((*v66.i32 = *v198.i32 - truncf(*v198.i32), v206.i64[0] = 0x8000000080000000, v206.i64[1] = 0x8000000080000000, v66 = vbslq_s8(v206, v66, v198), *v66.i32 == 0.0) ? (v207 = *v198.i32 > v200) : (v207 = 1), v207))
          {
            v208 = v204;
          }

          else
          {
            v226 = *v198.i32;
            v63 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(*v198.i32);
            v208 = v226;
            if (v226 == v63)
            {
              v209 = vabds_f32(v226, v202);
              v201 = v203 > v209;
              v203 = v209;
              *v69.i32 = v223;
              if (!v201)
              {
                break;
              }
            }

            else
            {
              v208 = v204;
              *v69.i32 = v223;
            }
          }

          v204 = v208;
        }

        if (v204 == 0.0)
        {
          goto LABEL_263;
        }

        v118 = v204;
      }

      else
      {
        v118 = *v69.i32;
        v63 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(*v69.i32);
        if (v223 != v63)
        {
          goto LABEL_263;
        }
      }
    }

LABEL_265:
    *(v1 + 129) = v118;
    *(v1 + 133) = v118;
    if (*(v1 + 250))
    {
      *(v1 + 133) = vcvtpd_u64_f64(*(v1 + 124) * v118 / *(v1 + 114));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v122 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v123 = (*v122 ? *v122 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v124 = *(v1 + 125);
        v125 = *(v1 + 126);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 591;
        *&buf[18] = 2048;
        *&buf[20] = v124;
        *&buf[28] = 2048;
        *&buf[30] = v125;
        _os_log_impl(&dword_2724B4000, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mHwRefBlkSz = %lu, mHwMicBlkSz = %lu", buf, 0x26u);
      }
    }

    v126 = *(v1 + 1588);
    if (v126 && ((v228[572] & 1) != 0 || v228[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v126, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 591, "CalcBlkSzs", "calcblkzsizes: mHwRefBlkSz = %lu, mHwMicBlkSz = %lu", *(v1 + 125), *(v1 + 126));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v127 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v128 = (*v127 ? *v127 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = *(v1 + 127);
        v130 = *(v1 + 128);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 593;
        *&buf[18] = 2048;
        *&buf[20] = v129;
        *&buf[28] = 2048;
        *&buf[30] = v130;
        _os_log_impl(&dword_2724B4000, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mDsRefBlkSz = %lu, mDsMicBlkSz = %lu", buf, 0x26u);
      }
    }

    v131 = *(v1 + 1588);
    if (v131 && ((v228[572] & 1) != 0 || v228[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v131, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 593, "CalcBlkSzs", "calcblkzsizes: mDsRefBlkSz = %lu, mDsMicBlkSz = %lu", *(v1 + 127), *(v1 + 128));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v132 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v133 = (*v132 ? *v132 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = *(v1 + 129);
        v135 = *(v1 + 133);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 595;
        *&buf[18] = 2048;
        *&buf[20] = v134;
        *&buf[28] = 2048;
        *&buf[30] = v135;
        _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mEpIoBlkSz  = %lu, mUsOutBlkSz = %lu", buf, 0x26u);
      }
    }

    v136 = *(v1 + 1588);
    if (v136 && ((v228[572] & 1) != 0 || v228[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v136, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 595, "CalcBlkSzs", "calcblkzsizes: mEpIoBlkSz  = %lu, mUsOutBlkSz = %lu", *(v1 + 129), *(v1 + 133));
    }

    if (*(v1 + 250) == 1819304813)
    {
      v137 = *(v1 + 255);
      if (v137 >= 2)
      {
        *(v1 + 252) /= v137;
        *(v1 + 254) /= v137;
        *(v1 + 255) = 1;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v138 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v139 = (*v138 ? *v138 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          CAFormatter::CAFormatter(__src, v216);
          *buf = 136315650;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1059;
          *&buf[18] = 2080;
          *&buf[20] = __src[0];
          _os_log_impl(&dword_2724B4000, v139, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initialize: mOutASBD computed = %s", buf, 0x1Cu);
          if (__src[0])
          {
            free(__src[0]);
          }
        }
      }

      v140 = *(v1 + 1588);
      if (v140 && ((v228[572] & 1) != 0 || v228[573] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v141 = VPLogScope(void)::scope;
        CAFormatter::CAFormatter(buf, v216);
        CALegacyLog::log(v140, 5, v141, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 1059, "Initialize", "initialize: mOutASBD computed = %s", *buf);
        if (*buf)
        {
          free(*buf);
        }
      }
    }

    myAllocABLDynamic(v217, *(v1 + 125), v1 + 129);
    myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 130);
    myAllocABLDynamic(v217, *(v1 + 125), v1 + 131);
    myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 132);
    myAllocABLDynamic(v33, *(v1 + 127), v1 + 133);
    myAllocABLDynamic(v221, *(v1 + 128), v1 + 134);
    myAllocABLDynamic(v33, *(v1 + 129), v1 + 135);
    myAllocABLDynamic(v221, *(v1 + 129), v1 + 136);
    myAllocABLDynamic(v224, *(v1 + 129), v1 + 137);
    myAllocABLDynamic(v218, *(v1 + 133), v1 + 138);
    if (*(v1 + 2260) == 1 && *(v1 + 19) == 19)
    {
      myAllocABLDynamic(v33, *(v1 + 420), v1 + 208);
      v142 = *(v1 + 208);
      if (*v142)
      {
        v143 = 0;
        v144 = (v142 + 4);
        do
        {
          bzero(*v144, *(v144 - 1));
          ++v143;
          v144 += 2;
        }

        while (v143 < *v142);
      }

      v145 = *(v1 + 420);
      v146 = malloc_type_malloc(4 * v145, 0x2365AC71uLL);
      v147 = v146;
      if (v145 && !v146)
      {
        exception = __cxa_allocate_exception(8uLL);
        v213 = std::bad_alloc::bad_alloc(exception);
      }

      bzero(v146, 4 * v145);
      *(v1 + 209) = v147;
    }

    v148 = *(v1 + 177);
    if (v148)
    {
      free(v148);
      *(v1 + 177) = 0;
    }

    v149 = **(v1 + 132);
    v150 = malloc_type_malloc(v149, 0x72B6561FuLL);
    if (v149)
    {
      v151 = v150 == 0;
    }

    else
    {
      v151 = 0;
    }

    if (!v151)
    {
      *(v1 + 177) = v150;
      myAllocABLDynamic(v221, *(v1 + 129), v1 + 178);
      myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 179);
      myAllocABLDynamic(v221, *(v1 + 128), v1 + 180);
      v152 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 139, v152);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 139), *(v1 + 214) * *(v1 + 129));
      v153 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 140, v153);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 140), *(v1 + 214) * *(v1 + 129));
      v154 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 141, v154);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 141), *(v1 + 214) * *(v1 + 129));
      v155 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 142, v155);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 142), *(v1 + 214) * *(v1 + 129));
      if (*(v1 + 250) == 1819304813)
      {
        *(v1 + 135) = *(v1 + 133);
        CAAudioChannelLayout::operator=(v1 + 289, 0);
        LODWORD(v156) = *(v1 + 128);
        LODWORD(v157) = *(v1 + 129);
        *(v1 + 422) = *(v1 + 133) * vcvtpd_u64_f64(v156 / v157);
        *(v1 + 423) = *(v1 + 252);
      }

      myAllocABLDynamic(v217, *(v1 + 125), v1 + 152);
      if ((v228[852] & 1) == 0)
      {
        *(v1 + 290) = 0;
        v158 = v215 + 340;
        *(v215 + 86) = 0;
        *(v215 + 85) = 0;
        v159 = *(v1 + 287);
        strcpy(buf, "tfastpni");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__src[0]) = 4;
        PropertyData = AudioObjectGetPropertyData(v159, buf, 0, 0, __src, v215 + 340);
        if (PropertyData)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v161 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v162 = (*v161 ? *v161 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1629;
              *&buf[18] = 1024;
              *&buf[20] = PropertyData;
              _os_log_impl(&dword_2724B4000, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting input safety offset", buf, 0x18u);
            }
          }

          v163 = *(v1 + 1588);
          if (v163 && ((v228[572] & 1) != 0 || v228[573] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v163, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1629, "GetHardwareSafetyOffsets", "error %d getting input safety offset", PropertyData);
          }
        }

        v164 = (v1 + 1184);
        v165 = *(v1 + 286);
        strcpy(buf, "tfasptuo");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__src[0]) = 4;
        v166 = AudioObjectGetPropertyData(v165, buf, 0, 0, __src, v1 + 1184);
        if (v166)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v167 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v168 = (*v167 ? *v167 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1636;
              *&buf[18] = 1024;
              *&buf[20] = v166;
              _os_log_impl(&dword_2724B4000, v168, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting output safety offset", buf, 0x18u);
            }
          }

          v169 = *(v1 + 1588);
          if (v169 && ((v228[572] & 1) != 0 || v228[573] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v169, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1636, "GetHardwareSafetyOffsets", "error %d getting output safety offset", v166);
          }
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v170 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v171 = (*v170 ? *v170 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
          {
            v172 = *v158;
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1639;
            *&buf[18] = 1024;
            *&buf[20] = v172;
            _os_log_impl(&dword_2724B4000, v171, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Input safety offset of the aggregate device is %u", buf, 0x18u);
          }
        }

        v173 = *(v1 + 1588);
        if (v173 && ((v228[572] & 1) != 0 || v228[573] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v173, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1639, "GetHardwareSafetyOffsets", "Input safety offset of the aggregate device is %u", *v158);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v174 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v175 = (*v174 ? *v174 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            v176 = *v164;
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1641;
            *&buf[18] = 1024;
            *&buf[20] = v176;
            _os_log_impl(&dword_2724B4000, v175, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Output safety offset of the aggregate device is %u", buf, 0x18u);
          }
        }

        v177 = *(v1 + 1588);
        if (v177 && ((v228[572] & 1) != 0 || v228[573] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v177, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1641, "GetHardwareSafetyOffsets", "Output safety offset of the aggregate device is %u", *v164);
        }

        (*(*v1 + 264))(v1);
      }

      *(v1 + 484) = 1;
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 420);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 421);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 423);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 422);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 424);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 425);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 426);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 427);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 428);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 429);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 438);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 2055);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 430);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 431);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 432);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 433);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 435);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 437);
      myAllocABLDynamic(v221, 2 * *(v1 + 129), v1 + 436);
      myAllocABLDynamic(v221, 2 * *(v1 + 129), v1 + 434);
      v178 = *(v1 + 129);
      v179 = *(v1 + 104);
      v180 = ((v178 * 1000.0) / v179);
      *(v1 + 539) = vshl_u32(vdup_n_s32(v178), 0x300000002);
      if (v178 <= v180)
      {
        v180 = 1;
      }

      *(v1 + 1080) = v180;
      myAllocABLDynamic(v221, 2 * v178, v1 + 541);
      v181 = *(v1 + 541);
      v182 = *(v181 + 16);
      v183 = *(v1 + 129);
      if (v183)
      {
        memset_pattern16(*(v181 + 16), &unk_2727568A0, 4 * v183);
        bzero(&v182[4 * (v183 - 1) + 4], 4 * v183);
      }

      if (*(v1 + 105) >= 2u)
      {
        memcpy(*(v181 + 32), v182, 8 * v183);
        LODWORD(v183) = *(v1 + 129);
      }

      myAllocABLDynamic(v224, v183, v1 + 503);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 504);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 505);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 506);
      myAllocABLDynamic(v224, *(v1 + 129), v1 + 507);
      __A = 1.0;
      vDSP_vfill(&__A, *(*(v1 + 503) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 504) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 505) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 506) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 507) + 16), 1, *(v1 + 129));
      myAllocABLDynamic(v221, 2 * *(v1 + 129), v1 + 508);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 509);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 510);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 514);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 515);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 511);
      myAllocABLDynamic(v224, 2 * *(v1 + 129), v1 + 513);
      v184 = *(v1 + 516);
      if (v184)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v184);
        MEMORY[0x2743CBFA0]();
      }

      v185 = *(v1 + 517);
      if (v185)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v185);
        MEMORY[0x2743CBFA0]();
      }

      v186 = *(v1 + 518);
      if (v186)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v186);
        MEMORY[0x2743CBFA0]();
      }

      v187 = *(v1 + 519);
      if (v187)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v187);
        MEMORY[0x2743CBFA0]();
      }

      v188 = *(v1 + 520);
      if (v188)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v188);
        MEMORY[0x2743CBFA0]();
      }

      v189 = *(v1 + 521);
      if (v189)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v189);
        MEMORY[0x2743CBFA0]();
      }

      v190 = *(v1 + 522);
      if (v190)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v190);
        MEMORY[0x2743CBFA0]();
      }

      v191 = *(v1 + 523);
      if (v191)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v191);
        MEMORY[0x2743CBFA0]();
      }

      v192 = *(v1 + 129);
      VPTimeFreqConverter_Create();
    }

    v210 = __cxa_allocate_exception(8uLL);
    v211 = std::bad_alloc::bad_alloc(v210);
  }

  __src[0] = 0;
  __src[1] = 0;
  *&v230 = 0;
  if (!*(v1 + 205))
  {
LABEL_178:
    std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v62, __src);
    *buf = __src;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_179;
  }

  v70 = 0;
  while (1)
  {
    VoiceProcessorV2::CreateSRC(&v235, *(v1 + 74), *(v1 + 99), v1, 1, v64, v65);
    v71 = v235;
    if (!v235)
    {
      break;
    }

    v72 = __src[1];
    if (__src[1] >= v230)
    {
      v74 = __src[0];
      v75 = __src[1] - __src[0];
      v76 = (__src[1] - __src[0]) >> 3;
      v77 = v76 + 1;
      if ((v76 + 1) >> 61)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v78 = v230 - __src[0];
      if ((v230 - __src[0]) >> 2 > v77)
      {
        v77 = v78 >> 2;
      }

      if (v78 >= 0x7FFFFFFFFFFFFFF8)
      {
        v79 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v77;
      }

      *&buf[32] = __src;
      if (v79)
      {
        std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v79);
      }

      v235 = 0;
      *(8 * v76) = v71;
      v73 = (8 * v76 + 8);
      memcpy(0, v74, v75);
      v80 = __src[0];
      v81 = v230;
      __src[0] = 0;
      __src[1] = v73;
      *&v230 = 0;
      *&buf[16] = v80;
      *&buf[24] = v81;
      *buf = v80;
      *&buf[8] = v80;
      std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
      v1 = *v227;
    }

    else
    {
      v235 = 0;
      *__src[1] = v71;
      v73 = v72 + 8;
    }

    __src[1] = v73;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&v235, 0);
    if (++v70 >= *(v1 + 205))
    {
      goto LABEL_178;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 742;
    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create ref src", buf, 0x12u);
  }

  v220 = 1651532146;
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&v235, 0);
  *buf = __src;
  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_229:
  if (*(v1 + 1960) == 1)
  {
    *buf = v62;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1960) = 0;
  }

  if (*(v1 + 1992) == 1)
  {
    *buf = v225;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1992) = 0;
  }

  if (*(v1 + 1400) == 1)
  {
    *buf = v222;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1400) = 0;
  }

  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v219, 0);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v113 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v114 = (*v113 ? *v113 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1045;
      _os_log_impl(&dword_2724B4000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> initialize: error initializing sample rate converters", buf, 0x12u);
    }
  }

  v115 = *(v1 + 1588);
  if (v115 && ((v228[572] & 1) != 0 || v228[573] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v115, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 1045, "Initialize", "initialize: error initializing sample rate converters");
  }

  v194 = *MEMORY[0x277D85DE8];
  return v220;
}

void sub_2725430B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *CADeprecated::CABufferList::New(char a1, unsigned int a2)
{
  if ((a1 & 0x20) != 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 & 0x20) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  result = operator new(16 * v2 + 32);
  *result = "";
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v2;
  if (v2)
  {
    v5 = (result + 4);
    do
    {
      *v5 = v3;
      *(v5 + 1) = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void VoiceProcessorV2::Initialize(void)::$_1::operator()(CFStringRef *a1, uint64_t a2, const __CFString *a3)
{
  if (a3)
  {
    applesauce::CF::convert_to<std::string,0>(&v30, a3);
    v27 = 0;
    v28 = 0;
    value = 0;
    if (*(a2 + 2260) == 1)
    {
      v31.__end_cap_.__value_ = &v27;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](1uLL);
    }

    if (*(a2 + 2261) == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(a2) > 1 || !*(a2 + 80) && *(a2 + 244) == 2)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
      if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v7 = 0x5555555555555556 * ((value - v27) >> 3);
      if (v7 <= v6 + 1)
      {
        v7 = v6 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((value - v27) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      v31.__end_cap_.__value_ = &v27;
      if (v8)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v8);
      }

      v31.__first_ = 0;
      v31.__begin_ = (8 * ((v28 - v27) >> 3));
      v31.__end_ = v31.__begin_;
      v31.__end_cap_.__value_ = 0;
      std::string::basic_string[abi:ne200100]<0>(v31.__begin_, "spatial");
      v5 = v31.__end_ + 1;
      v9 = (v31.__begin_ - (v28 - v27));
      memcpy(v9, v27, v28 - v27);
      v10 = v27;
      v11 = value;
      v27 = v9;
      v28 = v5;
      value = v31.__end_cap_.__value_;
      v31.__end_ = v10;
      v31.__end_cap_.__value_ = v11;
      v31.__first_ = v10;
      v31.__begin_ = v10;
      std::__split_buffer<std::string>::~__split_buffer(&v31);
      v28 = v5;
    }

    else
    {
      v5 = v28;
    }

    if (v27 != v5)
    {
      std::string::append(&v30, " (", 2uLL);
      v12 = v27;
      v13 = v28;
      if (v27 != v28)
      {
        do
        {
          if ((v12->__words[2] & 0x8000000000000000) == 0)
          {
            v14 = HIBYTE(v12->__words[2]);
          }

          else
          {
            v14 = v12->__words[1];
          }

          std::string::basic_string[abi:ne200100](&v31, v14 + 2);
          if (SHIBYTE(v31.__end_) >= 0)
          {
            first = &v31;
          }

          else
          {
            first = v31.__first_;
          }

          if (v14)
          {
            if ((v12->__words[2] & 0x8000000000000000) == 0)
            {
              v16 = v12;
            }

            else
            {
              v16 = v12->__words[0];
            }

            memmove(first, v16, v14);
          }

          strcpy(first + v14, ", ");
          if (SHIBYTE(v31.__end_) >= 0)
          {
            v17 = &v31;
          }

          else
          {
            v17 = v31.__first_;
          }

          if (SHIBYTE(v31.__end_) >= 0)
          {
            end_high = HIBYTE(v31.__end_);
          }

          else
          {
            end_high = v31.__begin_;
          }

          std::string::append(&v30, v17, end_high);
          if (SHIBYTE(v31.__end_) < 0)
          {
            operator delete(v31.__first_);
          }

          ++v12;
        }

        while (v12 != v13);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v20 = v30.__r_.__value_.__r.__words[0];
        v19 = --v30.__r_.__value_.__l.__size_;
      }

      else
      {
        v19 = SHIBYTE(v30.__r_.__value_.__r.__words[2]) - 1;
        *(&v30.__r_.__value_.__s + 23) = v19 & 0x7F;
        v20 = &v30;
      }

      v20->__r_.__value_.__s.__data_[v19] = 0;
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v22 = v30.__r_.__value_.__r.__words[0];
        v21 = --v30.__r_.__value_.__l.__size_;
      }

      else
      {
        v21 = SHIBYTE(v30.__r_.__value_.__r.__words[2]) - 1;
        *(&v30.__r_.__value_.__s + 23) = v21 & 0x7F;
        v22 = &v30;
      }

      v22->__r_.__value_.__s.__data_[v21] = 0;
      std::string::append(&v30, ")", 1uLL);
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v30;
    }

    else
    {
      v23 = v30.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v25 = CFStringCreateWithBytes(0, v23, size, 0x8000100u, 0);
      *a1 = v25;
      if (!v25)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      *a1 = 0;
    }

    v31.__first_ = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_2725436CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, std::__split_buffer<std::string> *a11, void *__pa, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19)
{
  std::__split_buffer<std::string>::~__split_buffer(&a19);
  a18 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (a17 < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke_2665()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    v1 = v0;
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_2696()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::Initialize(void)::$_0 &&>>(uint64_t ***a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = ***a1;
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  if (v2 == 1 && v3 == 1)
  {
    v6 = CFStringCreateWithBytes(0, "com.apple.mobilephone", 21, 0x8000100u, 0);
    *buf = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else if (v2)
  {
    if (v2 == 4 || v2 == 2)
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.facetime", 18, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v7 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v7, "Could not construct");
      }
    }

    else if ((v2 - 5) > 1)
    {
      v6 = 0;
    }

    else if (v3 == 1)
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.mobilephone", 21, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v33 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v33, "Could not construct");
      }
    }

    else
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.facetime", 18, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "Could not construct");
      }
    }
  }

  else
  {
    v6 = *(v1 + 2192);
    if (v6)
    {
      CFRetain(*(v1 + 2192));
    }
  }

  v8 = *(v1 + 16552);
  *(v1 + 16552) = v6;
  if (v8)
  {
    CFRelease(v8);
    v6 = *(v1 + 16552);
  }

  if (v6)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v9 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        applesauce::CF::convert_to<std::string,0>(__p, *(v1 + 16552));
        v11 = v37 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v39 = 1024;
        v40 = 978;
        v41 = 2080;
        v42 = v11;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> The bundleID for AVFoundationSPI is %s", buf, 0x1Cu);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v12 = (v1 + 15881);
    v13 = *(v1 + 12704);
    if (v13 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      applesauce::CF::convert_to<std::string,0>(buf, *(v1 + 16552));
      if (SBYTE3(v42) >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      CALegacyLog::log(v13, 3, v14, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 978, "operator()", "The bundleID for AVFoundationSPI is %s", v15);
      if (SBYTE3(v42) < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(v1 + 16552))
    {
      AVAUVoiceIOInitializeListenersForBundleID();
    }

    else
      v17 = {;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "AUVoiceIO can't initialize listener for null bundleID", buf, 2u);
      }
    }

    v18 = (v1 + 16536);
    *(v1 + 16536) = vp::GetRequestedChatFlavorForBundleID(*(v1 + 16552), v16);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *v18;
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v39 = 1024;
        v40 = 984;
        v41 = 1024;
        LODWORD(v42) = v22;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> At VP's first time init, the chat flavor is selected as %d", buf, 0x18u);
      }
    }

    v23 = *(v1 + 12704);
    if (v23 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v23, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 984, "operator()", "At VP's first time init, the chat flavor is selected as %d", *v18);
    }

    if (*v12 == 1)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1718384242);
    }

    *(v1 + 2288) = vp::IsAutomaticChatFlavorEnabledForBundleID((v1 + 16552), v19);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v24 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v1 + 2288);
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v39 = 1024;
        v40 = 990;
        v41 = 1024;
        LODWORD(v42) = v26;
        _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> At VP's first time init, automatic chat flavor enabled is selected as %d", buf, 0x18u);
      }
    }

    v27 = *(v1 + 12704);
    v28 = *v12;
    if (v27)
    {
      if ((*v12 & 1) == 0 && *(v1 + 15882) != 1)
      {
LABEL_79:
        if (*v18)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v29 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
          {
            v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "vpInitializeUplink.cpp";
              v39 = 1024;
              v40 = 994;
              _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
            }
          }

          v31 = *(v1 + 12704);
          if (v31 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v31, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 994, "operator()", "Forcing bypass to false due to chat flavor");
          }

          *(v1 + 480) = 0;
        }

        (*(*v1 + 608))(v1);
        (*(*v1 + 616))(v1);
        goto LABEL_97;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v27, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 990, "operator()", "At VP's first time init, automatic chat flavor enabled is selected as %d", *(v1 + 2288));
      v28 = *v12;
    }

    if (v28)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1635085677);
    }

    goto LABEL_79;
  }

LABEL_97:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_272544528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___Z10VPLogScopev_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6)
{
  result = CALegacyLog::RegisterScope(0x7670626C, "vp", "vp_console_msgs", a4, a5, a6);
  VPLogScope(void)::scope = result;
  return result;
}

uint64_t ___Z19VPTimestampLogScopev_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6)
{
  result = CALegacyLog::RegisterScope(0x76707473, "vpts", "vp_save_timestamps", a4, a5, a6);
  VPTimestampLogScope(void)::scope = result;
  return result;
}

uint64_t LookUpTreeIsValid(NSArray *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v22 = v1;
    v3 = [(NSArray *)v1 count];
    v21 = [(NSArray *)v2 objectAtIndexedSubscript:0];
    v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];
    if (v21)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    v25 = 0u;
    v26 = 0u;
    v7 = !v5 && v3 == 3;
    v23 = 0uLL;
    v24 = 0uLL;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i) != 0;
          v13 = [v8 objectForKey:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LOBYTE(v14) = v13 != 0;
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v14 = isKindOfClass & LookUpTreeIsValid(v13);
          }

          v7 &= v12 & v14;
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [(NSArray *)v22 objectAtIndexedSubscript:2];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();
    if (v17 & 1 | ((v7 & 1) == 0))
    {
      IsValid = v17 & v7;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        IsValid = LookUpTreeIsValid(v16);
      }

      else
      {
        IsValid = 0;
      }
    }

    v2 = v22;
  }

  else
  {
    IsValid = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return IsValid & 1;
}

NSArray *LookUpTreeGet(NSDictionary *a1, NSArray *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (([(NSArray *)v4 isEqual:0]& 1) != 0 || [(NSArray *)v4 count]!= 3)
  {
    v14 = 0;
  }

  else
  {
    v5 = [(NSArray *)v4 objectAtIndexedSubscript:0];
    v18 = [(NSArray *)v4 objectAtIndexedSubscript:1];
    v19 = [(NSArray *)v4 objectAtIndexedSubscript:2];
    v6 = [(NSDictionary *)v3 objectForKey:v5];

    if (v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v18;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = *v21;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            v12 = [(NSDictionary *)v3 objectForKey:v5];
            v13 = [v12 isEqualToString:v11];

            if (v13)
            {
              v14 = [v7 objectForKey:v11];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v15 = LookUpTreeGet(v3, v14);

                v14 = v15;
              }

              goto LABEL_20;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v19;
    }

    else
    {
      v14 = LookUpTreeGet(v3, v19);
LABEL_20:
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_272544F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1174405120;
  v4 = ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2;
  v5 = &__block_descriptor_tmp_2753;
  v1 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4(v3);
  }

  else
  {
    ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2(v3);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_e8_32c62_ZTSNSt3__18weak_ptrIN14VoiceProcessor19NotificationHandlerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c62_ZTSNSt3__18weak_ptrIN14VoiceProcessor19NotificationHandlerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    std::mutex::lock((v5 + 88));
    if (*(v5 + 80) != 1)
    {
LABEL_18:
      std::mutex::unlock((v5 + 88));
      goto LABEL_19;
    }

    state64 = 0;
    if (!notify_get_state(*(v5 + 16), &state64))
    {
      v8 = state64 & 0xFFFFFFFFFFFFFF00;
      v9 = state64;
      v10 = 1;
LABEL_17:
      std::function<void ()(std::optional<unsigned long long>)>::operator()(*(v5 + 72), v9 | v8, v10);
      goto LABEL_18;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v6 = *VPLogScope(void)::scope;
      if (!*VPLogScope(void)::scope)
      {
LABEL_16:
        v8 = 0;
        v10 = 0;
        v9 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "vpNotificationHandler.cpp";
      v15 = 1024;
      v16 = 82;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d notify_get_state() failed", buf, 0x12u);
    }

    goto LABEL_16;
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_272545414(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 88));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

VoiceProcessor::NotificationHandler **std::unique_ptr<VoiceProcessor::NotificationHandler>::~unique_ptr[abi:ne200100](VoiceProcessor::NotificationHandler **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VoiceProcessor::NotificationHandler::~NotificationHandler(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VoiceProcessor::NotificationHandler::~NotificationHandler(VoiceProcessor::NotificationHandler *this)
{
  v9 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 88));
  *(this + 80) = 0;
  std::mutex::unlock((this + 88));
  if (notify_cancel(*(this + 4)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v2 = *VPLogScope(void)::scope;
      if (!*VPLogScope(void)::scope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "vpNotificationHandler.cpp";
      v7 = 1024;
      v8 = 49;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d notify_cancel() failed", &v5, 0x12u);
    }
  }

LABEL_10:
  std::mutex::~mutex((this + 88));
  std::__function::__value_func<void ()(std::optional<unsigned long long>)>::~__value_func[abi:ne200100](this + 48);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2725455C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

VoiceProcessor::NotificationHandler *std::__shared_ptr_pointer<VoiceProcessor::NotificationHandler *,std::shared_ptr<VoiceProcessor::NotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::NotificationHandler,VoiceProcessor::NotificationHandler>,std::allocator<VoiceProcessor::NotificationHandler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VoiceProcessor::NotificationHandler::~NotificationHandler(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VoiceProcessor::NotificationHandler *,std::shared_ptr<VoiceProcessor::NotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::NotificationHandler,VoiceProcessor::NotificationHandler>,std::allocator<VoiceProcessor::NotificationHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

NSString *removePortUIDSuffix(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 componentsSeparatedByString:@"-"];
  if ([v2 count] == 2)
  {
    v3 = [v2 objectAtIndexedSubscript:0];

    v1 = v3;
  }

  return v1;
}

unint64_t va::PersonalAudioInterface::isPersonalMediaEnabled(va::PersonalAudioInterface *this)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v1 = [MEMORY[0x277D3A1D0] sharedInstance];
  if ([v1 personalMediaEnabled])
  {
    v2 = [MEMORY[0x277D3A1D0] sharedInstance];
    v3 = ([v2 personalAudioAccommodationTypes] >> 1) & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t va::PersonalAudioInterface::isPersonalMediaEnabled(NSString **a1)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = removePortUIDSuffix(*a1);
  v3 = [MEMORY[0x277D3A1D0] sharedInstance];
  if ([v3 personalMediaEnabledForRouteUID:v2])
  {
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v5 = ([v4 accommodationTypesForRouteUID:v2] >> 1) & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void va::PersonalAudioInterface::getPreset(va::PersonalAudioInterface *this)
{
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x277D3A1D0] sharedInstance];
    v3 = [v2 personalMediaConfiguration];
    v4 = [v3 presetAdjustments];
    v5 = [v4 objectForKey:*MEMORY[0x277D3A1E8]];

    applesauce::CF::DictionaryRef::from_ns_noexcept(this, v5);
  }

  else
  {
    *this = 0;
  }
}

void va::PersonalAudioInterface::getPreset(applesauce::CF::DictionaryRef *a1, NSString **a2)
{
  if (objc_opt_class())
  {
    v7 = removePortUIDSuffix(*a2);
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v5 = [v4 personalMediaConfigurationForRouteUID:v7];
    v6 = [v5 preset];

    applesauce::CF::DictionaryRef::from_ns_noexcept(a1, v6);
  }

  else
  {
    *a1 = 0;
  }
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void PowerLogManager::FlushPowerLogEntries(PowerLogManager *this)
{
  valuePtr = 0;
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 == v3)
  {
    v5 = 0;
    v4 = 0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      LODWORD(theDict) = 0;
      if (CACFDictionary::GetFloat32(*v2, @"Avg Watts Measured", &theDict))
      {
        v7 = *&theDict + v7;
        *(&valuePtr + 1) = v7;
        v4 = 1;
      }

      v17 = 0.0;
      if (CACFDictionary::GetFloat32(*v2, @"Avg Watts Modelled", &v17))
      {
        v6 = v17 + v6;
        *&valuePtr = v6;
        v5 = 1;
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = 257;
  if (v4)
  {
    *(&valuePtr + 1) = v7 / 12.0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr + 4);
    if (HIBYTE(v16) == 1 && v9 && theDict != 0)
    {
      CFDictionarySetValue(theDict, @"Avg Watts Measured", v9);
    }

    CFRelease(v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v5)
  {
    v8 = *MEMORY[0x277CBECE8];
LABEL_21:
    *&valuePtr = v6 / 12.0;
    v11 = CFNumberCreate(v8, kCFNumberFloatType, &valuePtr);
    if (HIBYTE(v16) == 1)
    {
      if (v11)
      {
        v12 = theDict == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        CFDictionarySetValue(theDict, @"Avg Watts Modelled", v11);
      }
    }

    CFRelease(v11);
LABEL_28:
    PLLogRegisteredEvent();
  }

  v14 = *(this + 3);
    ;
  }

  *(this + 4) = v14;
  CACFDictionary::~CACFDictionary(&theDict);
}

uint64_t std::__split_buffer<CACFDictionary>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    CACFDictionary::~CACFDictionary((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void PowerLogManager::DispatchOneTime(PowerLogManager *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  *(this + 72) = *(this + 6) == 0;
  v6 = dispatch_time(0, 5000000000);
  v7 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN15PowerLogManager15DispatchOneTimeEv_block_invoke;
  block[3] = &__block_descriptor_tmp_2793;
  block[4] = this;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  dispatch_after(v6, v7, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ___ZN15PowerLogManager15DispatchOneTimeEv_block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 48);
  if (!v4)
  {
    goto LABEL_66;
  }

  v5 = *(v2 + 64);
  *outValue = 0;
  if (v5 == 1936748595)
  {
    Parameter = AudioUnitGetParameter(*v4, 0x10u, 0, 0, &outValue[1]);
    if (!Parameter)
    {
      v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &outValue[1]);
      goto LABEL_40;
    }

    if (PowerLogManagerLogScope(void)::once != -1)
    {
      dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
    }

    if (PowerLogManagerLogScope(void)::scope)
    {
      v7 = *PowerLogManagerLogScope(void)::scope;
      if (!*PowerLogManagerLogScope(void)::scope)
      {
LABEL_39:
        v8 = 0;
LABEL_40:
        v21 = AudioUnitGetParameter(**(v2 + 48), 0xFu, 0, 0, outValue);
        if (!v21)
        {
          v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, outValue);
          goto LABEL_11;
        }

        if (PowerLogManagerLogScope(void)::once != -1)
        {
          dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
        }

        if (PowerLogManagerLogScope(void)::scope)
        {
          v22 = *PowerLogManagerLogScope(void)::scope;
          if (!*PowerLogManagerLogScope(void)::scope)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v22 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpPowerLogManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 224;
          *&buf[18] = 1024;
          *&buf[20] = v21;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get modelled power: %d", buf, 0x18u);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "vpPowerLogManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      *&buf[18] = 1024;
      *&buf[20] = Parameter;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get measured power: %d", buf, 0x18u);
    }

    goto LABEL_39;
  }

  v8 = 0;
LABEL_10:
  v9 = 0;
LABEL_11:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theDict = Mutable;
  v44 = 257;
  if (v8)
  {
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Avg Watts Measured", v8);
    }

    CFRelease(v8);
  }

  if (v9)
  {
    if (HIBYTE(v44) == 1 && theDict)
    {
      CFDictionarySetValue(theDict, @"Avg Watts Modelled", v9);
    }

    CFRelease(v9);
  }

  if (theDict && CFDictionaryGetCount(theDict))
  {
    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    if (v12 >= v11)
    {
      v16 = *(v2 + 24);
      v17 = (v12 - v16) >> 4;
      if ((v17 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v18 = v11 - v16;
      v19 = v18 >> 3;
      if (v18 >> 3 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      v47 = v2 + 24;
      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 16 * v17;
      *buf = 0;
      *&buf[8] = v23;
      *&buf[16] = (16 * v17);
      v24 = theDict;
      *v23 = theDict;
      v25 = v44;
      *(v23 + 8) = v44;
      if (v25 == 1)
      {
        CFRetain(v24);
        v26 = *&buf[16];
        v23 = *&buf[8];
      }

      else
      {
        v26 = 16 * v17;
      }

      *&buf[16] = v26 + 16;
      v27 = *(v2 + 24);
      v28 = *(v2 + 32);
      v29 = (v23 + v27 - v28);
      if (v27 != v28)
      {
        v30 = 0;
        v31 = (v23 + v27 - v28);
        do
        {
          v32 = v27 + v30;
          v33 = *(v27 + v30);
          *v31 = v33;
          v34 = *(v27 + v30 + 8);
          v31[8] = v34;
          v31[9] = *(v27 + v30 + 9);
          if (v34 == 1 && v33 != 0)
          {
            CFRetain(v33);
          }

          v31 += 16;
          v30 += 16;
        }

        while (v32 + 16 != v28);
        do
        {
          CACFDictionary::~CACFDictionary(v27);
          v27 = (v27 + 16);
        }

        while (v27 != v28);
      }

      v36 = *(v2 + 24);
      *(v2 + 24) = v29;
      v37 = *(v2 + 40);
      v42 = *&buf[16];
      *(v2 + 32) = *&buf[16];
      *&buf[16] = v36;
      *&buf[24] = v37;
      *buf = v36;
      *&buf[8] = v36;
      std::__split_buffer<CACFDictionary>::~__split_buffer(buf);
      v15 = v42;
    }

    else
    {
      v13 = theDict;
      *v12 = theDict;
      v14 = v44;
      *(v12 + 8) = v44;
      if (v14 == 1)
      {
        CFRetain(v13);
      }

      v15 = v12 + 16;
      *(v2 + 32) = v12 + 16;
    }

    *(v2 + 32) = v15;
    if (v15 - *(v2 + 24) >= 0xB1)
    {
      PowerLogManager::FlushPowerLogEntries(v2);
    }
  }

  CACFDictionary::~CACFDictionary(&theDict);
LABEL_66:
  v38 = *(v3 + 48);
  *(v3 + 72) = v38 == 0;
  if (v38)
  {
    v39 = *(a1 + 40);
    v40 = *MEMORY[0x277D85DE8];

    PowerLogManager::DispatchOneTime(v39);
  }

  else
  {
    v41 = *MEMORY[0x277D85DE8];
  }
}

void sub_272546370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__split_buffer<CACFDictionary>::~__split_buffer(va1);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrI15PowerLogManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrI15PowerLogManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
}

void ___ZN15PowerLogManager18BeginPowerTrackingEv_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (v2)
  {
    if (*(v1 + 48) != v2)
    {
      *(v1 + 48) = v2;
      *(v1 + 64) = *(v1 + 68);
      if (*(v1 + 72) == 1)
      {
        PowerLogManager::DispatchOneTime(v1);
      }
    }

    if (PowerLogManagerLogScope(void)::once != -1)
    {
      dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
    }

    if (PowerLogManagerLogScope(void)::scope)
    {
      v3 = *PowerLogManagerLogScope(void)::scope;
      if (!*PowerLogManagerLogScope(void)::scope)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "vpPowerLogManager.cpp";
      v7 = 1024;
      v8 = 299;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d did begin speaker power tracking", &v5, 0x12u);
    }
  }

LABEL_13:
  *(v1 + 48) = *(v1 + 56);
  *(v1 + 64) = *(v1 + 68);
  v4 = *MEMORY[0x277D85DE8];
}

void PowerLogManager::EndPowerTracking(PowerLogManager *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v2 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v7 = "vpPowerLogManager.cpp";
    v8 = 1024;
    v9 = 311;
    _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d will end speaker power tracking...", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN15PowerLogManager16EndPowerTrackingEv_block_invoke;
  block[3] = &__block_descriptor_tmp_10;
  block[4] = this;
  dispatch_sync(v3, block);
  v4 = *MEMORY[0x277D85DE8];
}

void ___ZN15PowerLogManager16EndPowerTrackingEv_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  PowerLogManager::FlushPowerLogEntries(v1);
  if (*(v1 + 48))
  {
    v2 = *(v1 + 64);
    valuePtr = 0;
    if (v2 == 1936748595)
    {
      v3 = *MEMORY[0x277CBECE8];
      v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      v5 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *theDict = Mutable;
    *&theDict[8] = 257;
    if (v4)
    {
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Avg Watts Measured", v4);
      }

      CFRelease(v4);
    }

    if (v5)
    {
      if (theDict[9] == 1 && *theDict)
      {
        CFDictionarySetValue(*theDict, @"Avg Watts Modelled", v5);
      }

      CFRelease(v5);
    }

    if (*theDict && CFDictionaryGetCount(*theDict))
    {
      PLLogRegisteredEvent();
    }

    CACFDictionary::~CACFDictionary(theDict);
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v7 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *theDict = 136315394;
    *&theDict[4] = "vpPowerLogManager.cpp";
    v11 = 1024;
    v12 = 317;
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d did end speaker power tracking", theDict, 0x12u);
  }

LABEL_26:
  v8 = *MEMORY[0x277D85DE8];
}

void PowerLogManager::SetPowerVendor(PowerLogManager *this, OpaqueAudioComponentInstance **a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v6 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "vpPowerLogManager.cpp";
    v13 = 1024;
    v14 = 324;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d set speaker power vendor to %p", buf, 0x1Cu);
  }

LABEL_9:
  v7 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN15PowerLogManager14SetPowerVendorEPP28OpaqueAudioComponentInstancej_block_invoke;
  block[3] = &__block_descriptor_tmp_11_2811;
  block[4] = this;
  block[5] = a2;
  v10 = a3;
  dispatch_sync(v7, block);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN15PowerLogManager14SetPowerVendorEPP28OpaqueAudioComponentInstancej_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 56) = *(result + 40);
  *(v1 + 68) = *(result + 48);
  return result;
}

uint64_t *std::map<std::pair<unsigned int,unsigned int>,double>::map[abi:ne200100](uint64_t *result, uint64_t a2)
{
  qword_28133C1C8 = 0;
  qword_28133C1C0 = 0;
  GetVPPreferredClientSampleRateInfoMap(void)::infoMap = &qword_28133C1C0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &result[2 * a2];
    v5 = &qword_28133C1C0;
    while (v5 != &qword_28133C1C0)
    {
      v6 = v3;
      if (v3)
      {
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v8 = &qword_28133C1C0;
        do
        {
          v7 = v8[2];
          v10 = *v7 == v8;
          v8 = v7;
        }

        while (v10);
      }

      v9 = *(v7 + 8);
      v10 = v9 == *v2;
      if (v9 >= *v2)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = *(v7 + 9);
        v13 = v2[1];
        v14 = v12 == v13;
        v11 = v12 >= v13 ? 1 : -1;
        if (v14)
        {
          v11 = 0;
        }
      }

      if (v11 < 0)
      {
        goto LABEL_22;
      }

      result = std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(&v16, *v2, v2[1]);
      v15 = result;
LABEL_25:
      if (!*v15)
      {
        operator new();
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = GetVPPreferredClientSampleRateInfoMap(void)::infoMap;
      v3 = qword_28133C1C0;
    }

    v7 = &qword_28133C1C0;
LABEL_22:
    if (v3)
    {
      v16 = v7;
      v15 = v7 + 1;
    }

    else
    {
      v16 = &qword_28133C1C0;
      v15 = &qword_28133C1C0;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v3 = &qword_28133C1C0;
  v4 = qword_28133C1C0;
  if (qword_28133C1C0)
  {
    v5 = &qword_28133C1C0;
    while (1)
    {
      v3 = v4;
      v6 = *(v4 + 32);
      if (v6 == a2)
      {
        v7 = *(v3 + 9);
        v8 = v7 == a3;
        if (v7 <= a3)
        {
          if (v7 >= a3)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v8)
          {
            v9 = 0;
          }

          if ((v9 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v3;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 > a2)
        {
          goto LABEL_13;
        }

        if (v6 >= a2)
        {
          v10 = 1;
        }

        else
        {
          v10 = -1;
        }

        if ((v10 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        v5 = v3 + 1;
        v4 = v3[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v5 = &qword_28133C1C0;
LABEL_22:
  *a1 = v3;
  return v5;
}

uint64_t GetVPPreferredClientSampleRate(int a1, unsigned int a2)
{
  v10[20] = *MEMORY[0x277D85DE8];
  if ((a1 - 5) > 0x3D)
  {
    v3 = 2;
  }

  else
  {
    v3 = dword_272759F50[a1 - 5];
  }

  {
    v7 = a2;
    v9 = v3;
    v3 = v9;
    a2 = v7;
    if (v8)
    {
      v10[0] = 0x600000000;
      v10[1] = 0x40CF400000000000;
      v10[2] = 0x500000000;
      v10[3] = 0x40CF400000000000;
      v10[4] = 0x600000001;
      v10[5] = 0x40D7700000000000;
      v10[6] = 0x500000001;
      v10[7] = 0x40D7700000000000;
      v10[8] = 0x600000002;
      v10[9] = 0x40D7700000000000;
      v10[10] = 0x500000002;
      v10[11] = 0x40D7700000000000;
      v10[12] = 0x600000003;
      v10[13] = 0x40D7700000000000;
      v10[14] = 0x500000003;
      v10[15] = 0x40D7700000000000;
      v10[16] = 0x600000005;
      v10[17] = 0x40DF400000000000;
      v10[18] = 0x500000005;
      v10[19] = 0x40DF400000000000;
      std::map<std::pair<unsigned int,unsigned int>,double>::map[abi:ne200100](v10, 10);
      a2 = v7;
      v3 = v9;
    }
  }

  v4 = *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(v10, v3, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  result = *(v4 + 40);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272546E54(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272546D20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV2::PreflightDownlink(atomic_uint *this, unsigned int NumberOfOutputFrames, unsigned int *a3, unsigned int *a4)
{
  atomic_fetch_add(this + 625, 1u);
  v5 = *(this + 484);
  if (this[624])
  {
    if (this[121])
    {
      VoiceProcessorV2::LogIOError(this, 32.006, this[3148], this[3149], 0.0, "preflight downlink: tryer acquire failed", a3, a4);
      goto LABEL_12;
    }

LABEL_11:
    VoiceProcessorV2::LogIOError(this, 32.005, this[3148], this[3149], 0.0, "preflight downlink: not ok to process?!", a3, a4);
LABEL_12:
    CADeprecated::CAMutex::Lock((this + 648));
    ++this[3148];
    CADeprecated::CAMutex::Unlock((this + 648));
    v15 = 1937006964;
    if (this[3148] == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 0);
    }

    goto LABEL_19;
  }

  if ((this[121] & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(this + 48);
  if (v8)
  {
    NumberOfOutputFrames = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v8);
  }

  v9 = *(this + 49);
  if (!v9)
  {
    v12 = NumberOfOutputFrames / this[123] * this[123];
    goto LABEL_15;
  }

  v10 = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v9);
  v11 = *(this + 49);
  v12 = v10 / this[123] * this[123];
  if (!v11)
  {
LABEL_15:
    RequiredNumberOfInputFrames = v12;
    goto LABEL_16;
  }

  v13 = *v11;
  RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
LABEL_16:
  v16 = *(this + 48);
  if (v16)
  {
    v17 = *v16;
    RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
  }

  v15 = 0;
  *a3 = RequiredNumberOfInputFrames;
  *a4 = v12;
LABEL_19:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v15;
}

uint64_t VoiceProcessorV3::ProcessDownlinkAudio(VoiceProcessorV3 *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, AudioTimeStamp *a7)
{
  v436 = *MEMORY[0x277D85DE8];
  v9 = this + 12288;
  atomic_fetch_add(this + 625, 1u);
  v10 = *(this + 624);
  v408 = a5;
  if (v10)
  {
    VoiceProcessorV2::LogIOError(this, 23.006, *(this + 3150), 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4);
    v11 = (this + 2592);
    CADeprecated::CAMutex::Lock((this + 2592));
LABEL_3:
    ++*(this + 3150);
    CADeprecated::CAMutex::Unlock(v11);
    LOBYTE(v12) = 0;
    v13 = 0.0;
    goto LABEL_617;
  }

  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, *(this + 3150), 0.0, 0.0, "processdl: not ok to process?!", a3, a4);
    v11 = (this + 2592);
    CADeprecated::CAMutex::Lock((this + 2592));
    goto LABEL_3;
  }

  v15 = a5;
  v16 = a4;
  v13 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v13 = mach_absolute_time() * 0.0000000416666667;
      if (*(this + 1984) == 0.0)
      {
        *(this + 1984) = v13;
      }
    }
  }

  if (v9[3593] == 1)
  {
    if (v9[344])
    {
      v19 = *(this + 1578);
      mSampleTime = a7->mSampleTime;
      if (v19 == a7->mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(this, v19, mSampleTime, 2);
      mSampleTime = *(this + 1578);
      if (a7->mSampleTime >= mSampleTime)
      {
        goto LABEL_48;
      }

      v21 = v16;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v22 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(this + 1578);
          v25 = a7->mSampleTime;
          mHostTime = a7->mHostTime;
          mRateScalar = a7->mRateScalar;
          mFlags = a7->mFlags;
          LODWORD(v429.mSampleTime) = 136316674;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 85;
          WORD1(v429.mRateScalar) = 2048;
          *(&v429.mRateScalar + 4) = v24;
          WORD2(v429.mWordClockTime) = 2048;
          *(&v429.mWordClockTime + 6) = v25;
          HIWORD(v429.mSMPTETime.mCounter) = 2048;
          *&v429.mSMPTETime.mType = mHostTime;
          v429.mSMPTETime.mHours = 2048;
          *&v429.mSMPTETime.mMinutes = mRateScalar;
          HIWORD(v429.mFlags) = 1024;
          v429.mReserved = mFlags;
          _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v429, 0x40u);
        }
      }

      v29 = *(this + 1588);
      if (v29 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v30 = *(this + 1578);
        CALegacyLog::log(v29, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 85, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", v30, a7->mSampleTime, a7->mHostTime, a7->mRateScalar, a7->mFlags);
      }

      VoiceProcessorV2::LogIOError(this, 23.008, *(this + 3150), 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      v9[344] = 1;
      VoiceProcessorV2::WriteTSOverload(this, 0.0, a7->mSampleTime, 2);
      mSampleTime = *(this + 216);
      v31 = a7->mSampleTime - mSampleTime;
      v32 = (((roundf(*(this + 291) * *(this + 126)) + *(this + 126)) + *(this + 295)) + *(this + 296));
      if (v31 == v32)
      {
LABEL_48:
        LODWORD(mSampleTime) = *(this + 123);
        *(this + 1578) = a7->mSampleTime + *&mSampleTime;
        goto LABEL_49;
      }

      v21 = v16;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v33 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v429.mSampleTime) = 136315906;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 72;
          WORD1(v429.mRateScalar) = 2048;
          *(&v429.mRateScalar + 4) = v32;
          WORD2(v429.mWordClockTime) = 2048;
          *(&v429.mWordClockTime + 6) = v31;
          _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v429, 0x26u);
        }
      }

      v35 = *(this + 1588);
      if (v35 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v35, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 72, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v32, v31);
      }

      VoiceProcessorV2::LogIOError(this, 23.009, *(this + 3150), 0.0, 0.0, "bad relative mic-ref TS");
    }

    v15 = v408;
    v16 = v21;
    goto LABEL_48;
  }

LABEL_49:
  v427 = this + 2504;
  v428 = (*(*(this + 313) + 16))();
  CADeprecated::CAMutex::Lock((this + 2592));
  ++*(this + 3150);
  CADeprecated::CAMutex::Unlock((this + 2592));
  v410 = a3;
  v36 = *(this + 123);
  v426 = v36;
  NumberOfSourceFrames = v36;
  v37 = v9[3593];
  if (v37)
  {
    v9[729] = 1;
    if (v15->mNumberBuffers == *(this + 91))
    {
      v38 = (this + 336);
      if (a2)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_614:
    if (v428 == 1)
    {
      (*(*v427 + 24))(v427);
    }

    LOBYTE(v12) = 1;
LABEL_617:
    v357 = v408;
    if (v9[3593] == 1 && *(this + 1589))
    {
      i = mach_absolute_time();
      v358 = *(this + 1589);
      v249 = 0x280898000;
      if (VPTimestampLogScope(void)::once != -1)
      {
        goto LABEL_645;
      }

      goto LABEL_620;
    }

    goto LABEL_629;
  }

  if (v15->mNumberBuffers != *(this + 91))
  {
    goto LABEL_614;
  }

  v38 = (this + 336);
  if ((v9[3594] & 1) == 0)
  {
    goto LABEL_83;
  }

  if (a2)
  {
LABEL_62:
    if (v9[3594] != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  a2 = *(this + 200);
  if (a2->mNumberBuffers)
  {
    v39 = 0;
    v40 = *(this + 200);
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v39;
      p_mData += 2;
    }

    while (v39 < v40->mNumberBuffers);
    v37 = v9[3593];
    a2 = v40;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(this, 1, a6, a2);
  if ((v9[3593] & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(this, 0x32u, a6, a2, a7);
LABEL_64:
  if (!v410)
  {
    v42 = *(this + 201);
    mNumberBuffers = v42->mNumberBuffers;
    v410 = v42;
    if (mNumberBuffers)
    {
      v391 = a6;
      v44 = v38;
      v45 = a2;
      v46 = 0;
      v47 = &v42->mBuffers[0].mData;
      do
      {
        bzero(*v47, *(v47 - 1));
        ++v46;
        v47 += 2;
      }

      while (v46 < v42->mNumberBuffers);
      a2 = v45;
      v38 = v44;
      a6 = v391;
    }
  }

  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 10, a6, v410), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x55u, a6, v410, a7);
  }

  if (!v16)
  {
    v16 = *(this + 202);
    if (v16->mNumberBuffers)
    {
      v48 = a2;
      v49 = 0;
      v50 = &v16->mBuffers[0].mData;
      do
      {
        bzero(*v50, *(v50 - 1));
        ++v49;
        v50 += 2;
      }

      while (v49 < v16->mNumberBuffers);
      a2 = v48;
    }
  }

  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 11, a6, v16), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x56u, a6, v16, a7);
  }

  v36 = *(this + 123);
LABEL_83:
  v406 = v9;
  if (v36 != a6)
  {
    if (v9[3515])
    {
      v61 = (mach_absolute_time() - *(this + 1978)) * 0.0000000416666667;
      v62 = *(this + 1981);
      if (v61 > v62)
      {
        *(this + 1981) = v62 + 10.0;
        VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), a6, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v63 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v63)
        {
          v64 = v63;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v429.mSampleTime) = 136315650;
            *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v429.mHostTime) = 1024;
            *(&v429.mHostTime + 6) = 183;
            WORD1(v429.mRateScalar) = 2048;
            *(&v429.mRateScalar + 4) = v61;
            _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v429, 0x1Cu);
          }
        }

        v65 = *(this + 1588);
        if (v65 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v65, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 183, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v61);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v66 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v66)
        {
          v67 = v66;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v408->mBuffers[0].mDataByteSize;
            v69 = *(this + 123);
            CAFormatter::CAFormatter(&v423, v38);
            v70 = *(this + 3150);
            LODWORD(v429.mSampleTime) = 136316674;
            *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v429.mHostTime) = 1024;
            *(&v429.mHostTime + 6) = 189;
            WORD1(v429.mRateScalar) = 1024;
            HIDWORD(v429.mRateScalar) = a6;
            LOWORD(v429.mWordClockTime) = 1024;
            *(&v429.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v429.mWordClockTime) = 1024;
            *&v429.mSMPTETime.mSubframes = v69;
            LOWORD(v429.mSMPTETime.mCounter) = 2080;
            *(&v429.mSMPTETime.mCounter + 2) = v423.mSampleTime;
            HIWORD(v429.mSMPTETime.mFlags) = 1024;
            *&v429.mSMPTETime.mHours = v70;
            _os_log_impl(&dword_2724B4000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v429, 0x34u);
            if (*&v423.mSampleTime)
            {
              free(*&v423.mSampleTime);
            }

            v9 = v406;
          }
        }

        v71 = *(this + 1588);
        if (v71)
        {
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v72 = VPLogScope(void)::scope;
            v73 = v408->mBuffers[0].mDataByteSize;
            v74 = *(this + 123);
            CAFormatter::CAFormatter(&v429, v38);
            CALegacyLog::log(v71, 1, v72, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 189, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", a6, v73, v74, *&v429.mSampleTime, *(this + 3150));
LABEL_190:
            if (*&v429.mSampleTime)
            {
              free(*&v429.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      v9[3515] = 1;
      *(this + 1978) = mach_absolute_time();
      *(this + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), a6, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v82 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v83 = (*v82 ? *v82 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v429.mSampleTime) = 136315394;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 160;
          _os_log_impl(&dword_2724B4000, v83, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v429, 0x12u);
        }
      }

      v84 = *(this + 1588);
      if (v84 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v84, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 160, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v85 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v86 = (*v85 ? *v85 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v408->mBuffers[0].mDataByteSize;
          v88 = *(this + 123);
          v392 = v38;
          CAFormatter::CAFormatter(&v423, v38);
          v89 = *(this + 3150);
          LODWORD(v429.mSampleTime) = 136316674;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 166;
          WORD1(v429.mRateScalar) = 1024;
          HIDWORD(v429.mRateScalar) = a6;
          LOWORD(v429.mWordClockTime) = 1024;
          *(&v429.mWordClockTime + 2) = v87;
          HIWORD(v429.mWordClockTime) = 1024;
          *&v429.mSMPTETime.mSubframes = v88;
          LOWORD(v429.mSMPTETime.mCounter) = 2080;
          *(&v429.mSMPTETime.mCounter + 2) = v423.mSampleTime;
          HIWORD(v429.mSMPTETime.mFlags) = 1024;
          *&v429.mSMPTETime.mHours = v89;
          _os_log_impl(&dword_2724B4000, v86, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v429, 0x34u);
          if (*&v423.mSampleTime)
          {
            free(*&v423.mSampleTime);
          }

          v9 = v406;
          v38 = v392;
        }
      }

      v90 = *(this + 1588);
      if (v90 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v91 = VPLogScope(void)::scope;
        v92 = v408->mBuffers[0].mDataByteSize;
        v93 = *(this + 123);
        CAFormatter::CAFormatter(&v429, v38);
        CALegacyLog::log(v90, 2, v91, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 166, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", a6, v92, v93, *&v429.mSampleTime, *(this + 3150));
        goto LABEL_190;
      }
    }

    if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 2, a6, v408), (v9[3593] & 1) != 0) || v9[3594] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, a6, v408, a7);
    }

    v81 = *(this + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_614;
    }

LABEL_199:
    AudioIssueDetectorLibraryLoader(void)::libSym(v81, 70, 0, v408, a6, a7);
    goto LABEL_614;
  }

  if (v408->mBuffers[0].mDataByteSize != *(this + 90) * a6)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v75 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v76 = (*v75 ? *v75 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = v408->mBuffers[0].mDataByteSize;
        v78 = *(this + 90) * a6;
        LODWORD(v429.mSampleTime) = 136315906;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 210;
        WORD1(v429.mRateScalar) = 1024;
        HIDWORD(v429.mRateScalar) = v77;
        LOWORD(v429.mWordClockTime) = 1024;
        *(&v429.mWordClockTime + 2) = v78;
        _os_log_impl(&dword_2724B4000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v429, 0x1Eu);
      }
    }

    v79 = *(this + 1588);
    v80 = v9[3593];
    if (v79)
    {
      if ((v9[3593] & 1) == 0 && v9[3594] != 1)
      {
        goto LABEL_152;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v79, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 210, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v408->mBuffers[0].mDataByteSize, *(this + 90) * a6);
      v80 = v9[3593];
    }

    if (v80)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(this, 2, a6, v408);
      if (v9[3593])
      {
LABEL_153:
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, a6, v408, a7);
LABEL_154:
        v81 = *(this + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_614;
        }

        goto LABEL_199;
      }
    }

LABEL_152:
    if (v9[3594] != 1)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v411 = a2;
  v409 = v16;
  if (v9[3515] != 1)
  {
    goto LABEL_223;
  }

  v9[3515] = 0;
  v51 = (mach_absolute_time() - *(this + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), a6, "processdownlinkaudio: <block size no longer mismatched>");
  if (v51 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v94 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v94)
    {
      v95 = v94;
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v429.mSampleTime) = 136315650;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 239;
        WORD1(v429.mRateScalar) = 2048;
        *(&v429.mRateScalar + 4) = v51;
        _os_log_impl(&dword_2724B4000, v95, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v429, 0x1Cu);
      }
    }

    v96 = *(this + 1588);
    if (v96 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v96, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 239, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v51);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v97 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v97)
    {
      v98 = v97;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v99 = *(this + 123);
        LODWORD(v429.mSampleTime) = 136315906;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 243;
        WORD1(v429.mRateScalar) = 1024;
        HIDWORD(v429.mRateScalar) = a6;
        LOWORD(v429.mWordClockTime) = 1024;
        *(&v429.mWordClockTime + 2) = v99;
        _os_log_impl(&dword_2724B4000, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v429, 0x1Eu);
      }
    }

    v58 = *(this + 1588);
    if (v58 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = 243;
      v60 = 2;
      goto LABEL_222;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v52 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v52)
    {
      v53 = v52;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v429.mSampleTime) = 136315650;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 231;
        WORD1(v429.mRateScalar) = 2048;
        *(&v429.mRateScalar + 4) = v51;
        _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v429, 0x1Cu);
      }
    }

    v54 = *(this + 1588);
    if (v54 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v54, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 231, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v51);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v55 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v55)
    {
      v56 = v55;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v57 = *(this + 123);
        LODWORD(v429.mSampleTime) = 136315906;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 235;
        WORD1(v429.mRateScalar) = 1024;
        HIDWORD(v429.mRateScalar) = a6;
        LOWORD(v429.mWordClockTime) = 1024;
        *(&v429.mWordClockTime + 2) = v57;
        _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v429, 0x1Eu);
      }
    }

    v58 = *(this + 1588);
    if (v58 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v59 = 235;
      v60 = 1;
LABEL_222:
      CALegacyLog::log(v58, v60, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", v59, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", a6, *(this + 123));
    }
  }

LABEL_223:
  v100 = *(this + 49);
  v101 = *(this + 123);
  if (*(this + 48))
  {
    if (v100)
    {
      v102 = *(this + 123);
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v100);
      v100 = *(this + 48);
LABEL_230:
      v101 = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v100);
      goto LABEL_231;
    }

    v100 = *(this + 48);
LABEL_229:
    NumberOfSourceFrames = *(this + 123);
    goto LABEL_230;
  }

  if (v100)
  {
    goto LABEL_229;
  }

LABEL_231:
  v103 = *(this + 14);
  v104 = *v103;
  if (v104 >= 1)
  {
    v105 = v101 * *(this + 60);
    v106 = (v104 + 3) & 0xFFFFFFFC;
    v107 = vdupq_n_s64(v104 - 1);
    v108 = xmmword_2727564D0;
    v109 = xmmword_2727564E0;
    v110 = (v103 + 11);
    v111 = vdupq_n_s64(4uLL);
    do
    {
      v112 = vmovn_s64(vcgeq_u64(v107, v109));
      if (vuzp1_s16(v112, *v107.i8).u8[0])
      {
        *(v110 - 8) = v105;
      }

      if (vuzp1_s16(v112, *&v107).i8[2])
      {
        *(v110 - 4) = v105;
      }

      if (vuzp1_s16(*&v107, vmovn_s64(vcgeq_u64(v107, *&v108))).i32[1])
      {
        *v110 = v105;
        v110[4] = v105;
      }

      v108 = vaddq_s64(v108, v111);
      v109 = vaddq_s64(v109, v111);
      v110 += 16;
      v106 -= 4;
    }

    while (v106);
  }

  v424 = v101;
  (*(*(this + 13) + 16))();
  v113 = v424;
  v426 = v424;
  v114 = *(this + 14);
  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 0, v424, *(this + 14)), v114 = *(this + 14), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x33u, v424, v114, a7);
    v114 = *(this + 14);
  }

  v115 = *(this + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v115, 51, 0, v114, v424, a7);
  }

  if ((*(this + 2090) & 1) != 0 || *(this + 20) == 7 && *(this + 3152) == 0.0)
  {
    bzero(*(*(this + 14) + 16), 4 * v424);
  }

  v116 = *(this + 14);
  v117 = *(this + 48);
  if (v117)
  {
    VoiceProcessor::SampleRateConverter::Convert(v117, &v426, &NumberOfSourceFrames, *(this + 14), *(this + 24));
    v113 = NumberOfSourceFrames;
    v426 = NumberOfSourceFrames;
    v116 = *(this + 24);
  }

  v391 = a6;
  v392 = v38;
  v119 = VoiceProcessorV2::DetermineNoiseBasedVolume(this);
  v120 = 0;
  v121 = 0;
  v122 = *&a7->mRateScalar;
  *&v423.mSampleTime = *&a7->mSampleTime;
  *&v423.mRateScalar = v122;
  v123 = *&a7->mSMPTETime.mHours;
  v125 = *&a7->mSampleTime;
  v124 = *&a7->mRateScalar;
  *&v423.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v423.mSMPTETime.mHours = v123;
  v126 = *&a7->mRateScalar;
  v127 = *&a7->mSMPTETime.mSubframes;
  *&v422.mSampleTime = *&a7->mSampleTime;
  *&v422.mRateScalar = v126;
  v128 = *&a7->mSMPTETime.mHours;
  *&v422.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v422.mSMPTETime.mHours = v128;
  v129 = *&a7->mRateScalar;
  *&v421.mSampleTime = *&a7->mSampleTime;
  *&v421.mRateScalar = v129;
  v130 = *&a7->mSMPTETime.mHours;
  *&v421.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v421.mSMPTETime.mHours = v130;
  *&v420.mSampleTime = v125;
  *&v420.mRateScalar = v124;
  v131 = (v113 / *(this + 132));
  v399 = a7;
  v132 = *&a7->mSMPTETime.mHours;
  *&v420.mSMPTETime.mSubframes = v127;
  *&v420.mSMPTETime.mHours = v132;
  v133 = v131;
  do
  {
    if ((*v116 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v429.mSampleTime) = 136315394;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 347;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v135 = (&v390 - v134);
    bzero(&v390 - v134, v136 + 24);
    v137 = *v116;
    v135->mNumberBuffers = v137;
    if (v137)
    {
      v138 = &v135->mBuffers[0].mData;
      v139 = (v116 + 4);
      do
      {
        *(v138 - 2) = 1;
        *(v138 - 1) = 4 * v131;
        v140 = *v139;
        v139 += 2;
        *v138 = (v140 + 4 * v120);
        v138 += 2;
        --v137;
      }

      while (v137);
    }

    v141 = *(this + 1108);
    if ((v141 & 4) != 0 && (*(this + 8872) & 4) != 0)
    {
      Parameter = *(this + 441);
      if (Parameter)
      {
        LODWORD(v429.mSampleTime) = 512;
        Parameter = AudioUnitProcess(Parameter, &v429, &v423, v131, v135);
        if ((v406[3593] & 1) != 0 || v406[3594] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x57u, v131, v135, &v423);
        }

        v423.mSampleTime = v423.mSampleTime + v133;
        v141 = *(this + 1108);
      }
    }

    if ((v141 & 0x40) != 0 && (*(this + 8872) & 0x40) != 0)
    {
      Parameter = *(this + 445);
      if (Parameter)
      {
        *&v429.mSampleTime = v135;
        v429.mHostTime = 0;
        *&ioOutputBufferLists.mSampleTime = v135;
        ioOutputBufferLists.mHostTime = 0;
        LODWORD(v419.mSampleTime) = 512;
        AudioUnitProcessMultiple(Parameter, &v419, &v422, v131, 2u, &v429, 2u, &ioOutputBufferLists);
        v422.mSampleTime = v422.mSampleTime + v133;
        Parameter = AudioUnitGetParameter(*(this + 445), 1u, 0, 0, this + 4189);
        v141 = *(this + 1108);
      }
    }

    if (v141 & 0x100) != 0 && (*(this + 8873))
    {
      Parameter = *(this + 447);
      if (Parameter)
      {
        AudioUnitSetParameter(Parameter, 5u, 0, 0, v119, 0);
        LODWORD(v429.mSampleTime) = 512;
        Parameter = AudioUnitProcess(*(this + 447), &v429, &v421, v131, v135);
        if ((v406[3593] & 1) != 0 || v406[3594] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x36u, v131, v135, &v421);
        }

        v421.mSampleTime = v421.mSampleTime + v133;
        v141 = *(this + 1108);
      }
    }

    if ((v141 & 0x4000) != 0 && (*(this + 8873) & 0x40) != 0 && *(this + 453))
    {
      Parameter = (*(*this + 680))(this, v135, v131, &v420);
      if ((v406[3593] & 1) != 0 || v406[3594] == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Du, v131, v135, &v420);
      }

      v420.mSampleTime = v420.mSampleTime + v133;
    }

    v120 += v131;
    ++v121;
  }

  while (v121 < *(this + 132));
  if (*(this + 1136) == 1)
  {
    v142 = *(this + 198);
    if (v142)
    {
      ABLRingBuffer<float>::ReadFrom(this + 386, *(this + 123), v142);
    }
  }

  v144 = *(this + 48);
  v143 = *(this + 49);
  v145 = v408;
  v146 = v409;
  a7 = v399;
  v9 = v406;
  v147 = v410;
  if (v143)
  {
    if (v144)
    {
      NumberOfSourceFrames = *(this + 123);
      v143 = VoiceProcessor::SampleRateConverter::Convert(v143, &v426, &NumberOfSourceFrames, *(this + 24), *(this + 25));
      v148 = *(this + 25);
      v426 = NumberOfSourceFrames;
    }

    else
    {
      v143 = VoiceProcessor::SampleRateConverter::Convert(v143, &v426, &NumberOfSourceFrames, *(this + 14), *(this + 25));
      v426 = NumberOfSourceFrames;
      v148 = *(this + 25);
    }
  }

  else if (v144)
  {
    v148 = *(this + 24);
  }

  else
  {
    v148 = *(this + 14);
  }

  v149 = *&a7->mRateScalar;
  *&ioOutputBufferLists.mSampleTime = *&a7->mSampleTime;
  *&ioOutputBufferLists.mRateScalar = v149;
  v150 = *&a7->mSMPTETime.mHours;
  v152 = *&a7->mSampleTime;
  v151 = *&a7->mRateScalar;
  *&ioOutputBufferLists.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&ioOutputBufferLists.mSMPTETime.mHours = v150;
  v153 = *&a7->mSMPTETime.mSubframes;
  *&v419.mRateScalar = *&a7->mRateScalar;
  *&v419.mSMPTETime.mSubframes = v153;
  v154 = *&a7->mSMPTETime.mSubframes;
  *&v419.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  v155 = *&a7->mSampleTime;
  *&v418.mRateScalar = *&a7->mRateScalar;
  *&v418.mSMPTETime.mSubframes = v154;
  v156 = *&a7->mSMPTETime.mSubframes;
  *&v418.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v419.mSampleTime = v155;
  v157 = *&a7->mSampleTime;
  *&v417.mRateScalar = *&a7->mRateScalar;
  *&v417.mSMPTETime.mSubframes = v156;
  v158 = *&a7->mSMPTETime.mSubframes;
  *&v417.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v418.mSampleTime = v157;
  v159 = *&a7->mSampleTime;
  v160 = *&a7->mSampleTime;
  *&v416.mRateScalar = *&a7->mRateScalar;
  *&v416.mSMPTETime.mSubframes = v158;
  *&v416.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v417.mSampleTime = v160;
  v415[0] = v152;
  v415[1] = v151;
  v161 = *&a7->mSMPTETime.mHours;
  v415[2] = v153;
  v415[3] = v161;
  *&v416.mSampleTime = v159;
  if (!*(this + 132))
  {
LABEL_523:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
    v313 = DynamicsDSPChannelCount;
    v314 = *(this + 1108);
    if ((v314 & 0x200000000) != 0)
    {
      v315 = v391;
      v316 = &unk_28133C000;
      if ((*(this + 8876) & 2) != 0)
      {
        v317 = *(this + 472);
        if (v317)
        {
          if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_675;
            }

            LODWORD(v429.mSampleTime) = 136315394;
            *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v429.mHostTime) = 1024;
            *(&v429.mHostTime + 6) = 797;
            v386 = MEMORY[0x277D86220];
            goto LABEL_674;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v319 = (&v390 - v318);
          bzero(&v390 - v318, v320 + 24);
          v319->mNumberBuffers = v313;
          memcpy(v319->mBuffers, v408->mBuffers, 16 * v313);
          v321 = *&a7->mRateScalar;
          *&v429.mSampleTime = *&a7->mSampleTime;
          *&v429.mRateScalar = v321;
          v322 = *&a7->mSMPTETime.mHours;
          *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v429.mSMPTETime.mHours = v322;
          v434.mNumberBuffers = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v317, &v434.mNumberBuffers, &v429, *(this + 123), v319);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x40u, v315, v319, &v429);
          }

          v314 = *(this + 1108);
        }
      }
    }

    else
    {
      v315 = v391;
      v316 = &unk_28133C000;
    }

    if ((v314 & 0x1000000000) == 0 || (*(this + 8876) & 0x10) == 0 || (v323 = *(this + 475)) == 0)
    {
LABEL_539:
      v329 = v408;
      if ((*(this + 2260) & 1) == 0 && v408->mNumberBuffers >= 2)
      {
        v330 = 1;
        v331 = 32;
        do
        {
          memcpy(*(&v329->mNumberBuffers + v331), v329->mBuffers[0].mData, v329->mBuffers[0].mDataByteSize);
          ++v330;
          v331 += 16;
        }

        while (v330 < v329->mNumberBuffers);
      }

      v332 = *(this + 1108);
      if ((v332 & 0x200000000000) != 0)
      {
        v333 = v408;
        if ((*(this + 8877) & 0x20) != 0)
        {
          v334 = *(this + 484);
          if (v334)
          {
            *&v434.mNumberBuffers = v408;
            *&v433.mNumberBuffers = v408;
            v335 = *&a7->mRateScalar;
            *&v429.mSampleTime = *&a7->mSampleTime;
            *&v429.mRateScalar = v335;
            v336 = *&a7->mSMPTETime.mHours;
            *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
            *&v429.mSMPTETime.mHours = v336;
            v414.mNumberBuffers = 512;
            AudioUnitProcessMultiple(v334, &v414.mNumberBuffers, &v429, *(this + 123), 1u, &v434, 1u, &v433);
            v332 = *(this + 1108);
          }
        }
      }

      else
      {
        v333 = v408;
      }

      if (v332 & 0x100000000000000) != 0 && (*(this + 8879))
      {
        v337 = *(this + 495);
        if (v337)
        {
          *&v434.mNumberBuffers = v333;
          *&v433.mNumberBuffers = v333;
          v338 = *&a7->mRateScalar;
          *&v429.mSampleTime = *&a7->mSampleTime;
          *&v429.mRateScalar = v338;
          v339 = *&a7->mSMPTETime.mHours;
          *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v429.mSMPTETime.mHours = v339;
          v414.mNumberBuffers = 512;
          AudioUnitProcessMultiple(v337, &v414.mNumberBuffers, &v429, *(this + 123), 1u, &v434, 1u, &v433);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(this, 0x41u, v315, v333, &v429);
          }

          v332 = *(this + 1108);
        }
      }

      if ((v332 & 0x2000000000000000) != 0 && ((*(this + 8879) & 0x20) != 0 || *(this + 480) == 1))
      {
        LODWORD(v429.mSampleTime) = 1065353216;
        v434.mNumberBuffers = 1065353216;
        if (((*(this + 2091) & 1) != 0 || *(this + 480) == 1) && (v340 = *(this + 1139), v340 != 0.0))
        {
          v341 = __exp10f(v340 / 20.0);
          *&v434.mNumberBuffers = v341;
          *&v429.mSampleTime = v341;
        }

        else
        {
          v342 = *(this + 1137);
          if (v342 >= -300.0)
          {
            if (v342 == 0.0)
            {
              v341 = 1.0;
            }

            else
            {
              if (v342 > 60.0)
              {
                v342 = 60.0;
              }

              v341 = __exp10f(v342 / 20.0);
              *&v429.mSampleTime = v341;
            }
          }

          else
          {
            LODWORD(v429.mSampleTime) = 0;
            v341 = 0.0;
          }

          v343 = *(this + 1138);
          if (v343 >= -300.0)
          {
            if (v343 != 0.0)
            {
              if (v343 > 60.0)
              {
                v343 = 60.0;
              }

              v434.mNumberBuffers = __exp10f(v343 / 20.0);
            }
          }

          else
          {
            v434.mNumberBuffers = 0;
          }
        }

        if (v341 == 0.0)
        {
          bzero(v333->mBuffers[0].mData, 4 * *(this + 123));
        }

        else if (v341 != 1.0)
        {
          MEMORY[0x2743CCE20](v333->mBuffers[0].mData, 1, &v429, v333->mBuffers[0].mData, 1, *(this + 123));
        }

        if (v333->mNumberBuffers >= 2)
        {
          v344 = 1;
          v345 = 32;
          do
          {
            if (*&v434.mNumberBuffers == 0.0)
            {
              v346 = v408;
              bzero(*(&v408->mNumberBuffers + v345), 4 * *(this + 123));
            }

            else
            {
              v346 = v408;
              if (*&v434.mNumberBuffers != 1.0)
              {
                MEMORY[0x2743CCE20](*(&v408->mNumberBuffers + v345), 1, &v434, *(&v408->mNumberBuffers + v345), 1, *(this + 123), *&v434.mNumberBuffers);
              }
            }

            ++v344;
            v345 += 16;
          }

          while (v344 < v346->mNumberBuffers);
        }

        v332 = *(this + 1108);
        v333 = v408;
      }

      if ((v332 & 0x400000000000) != 0 && (*(this + 8877) & 0x40) != 0)
      {
        v347 = *(this + 485);
        if (v347)
        {
          v348 = *&a7->mRateScalar;
          *&v429.mSampleTime = *&a7->mSampleTime;
          *&v429.mRateScalar = v348;
          v349 = *&a7->mSMPTETime.mHours;
          *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v429.mSMPTETime.mHours = v349;
          v434.mNumberBuffers = 512;
          AudioUnitProcess(v347, &v434.mNumberBuffers, &v429, *(this + 123), v333);
          v332 = *(this + 1108);
        }
      }

      if ((v332 & 0x4000000000000000) != 0 && (*(this + 8879) & 0x40) != 0)
      {
        v350 = *(this + 501);
        if (v350)
        {
          v351 = *&a7->mRateScalar;
          *&v429.mSampleTime = *&a7->mSampleTime;
          *&v429.mRateScalar = v351;
          v352 = *&a7->mSMPTETime.mHours;
          *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v429.mSMPTETime.mHours = v352;
          v434.mNumberBuffers = 512;
          AudioUnitProcess(v350, &v434.mNumberBuffers, &v429, *(this + 123), v333);
          v332 = *(this + 1108);
        }
      }

      if ((v332 & 0x4000000000000) != 0 && (*(this + 8878) & 4) != 0)
      {
        v353 = *(this + 489);
        if (v353)
        {
          v354 = *&a7->mRateScalar;
          *&v429.mSampleTime = *&a7->mSampleTime;
          *&v429.mRateScalar = v354;
          v355 = *&a7->mSMPTETime.mHours;
          *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v429.mSMPTETime.mHours = v355;
          v434.mNumberBuffers = 512;
          AudioUnitProcess(v353, &v434.mNumberBuffers, &v429, *(this + 123), v333);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(this, 0x77u, v315, v333, &v429);
          }
        }
      }

      if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 2, v315, v408), (v9[3593] & 1) != 0) || v9[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, v315, v408, a7);
      }

      v356 = *(this + 1993);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
      }

      if (v316[85])
      {
        v316[85](v356, 70, 0, v408, v315, a7);
      }

      if (*(this + 1135) == 1 && (v9[3872] & 1) == 0)
      {
        VoiceProcessorV2::AppendReferenceSignal(this, v408, a7, 0);
      }

      if (v9[3593] == 1)
      {
        VoiceProcessorV2::LoopBackRead(this, v315, v408);
      }

      goto LABEL_614;
    }

    if (v313 - 65 > 0xFFFFFFBF)
    {
      MEMORY[0x28223BE20](DynamicsDSPChannelCount);
      v325 = (&v390 - v324);
      bzero(&v390 - v324, v326 + 24);
      v325->mNumberBuffers = v313;
      memcpy(v325->mBuffers, v408->mBuffers, 16 * v313);
      v327 = *&a7->mRateScalar;
      *&v429.mSampleTime = *&a7->mSampleTime;
      *&v429.mRateScalar = v327;
      v328 = *&a7->mSMPTETime.mHours;
      *&v429.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
      *&v429.mSMPTETime.mHours = v328;
      v434.mNumberBuffers = 512;
      AudioUnitProcess(v323, &v434.mNumberBuffers, &v429, *(this + 123), v325);
      if ((v9[3593] & 1) != 0 || v9[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x38u, v315, v325, &v429);
      }

      goto LABEL_539;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_675:
      v387 = __cxa_allocate_exception(0x10uLL);
      *v387 = &unk_2881B25F8;
      v387[2] = -50;
    }

    LODWORD(v429.mSampleTime) = 136315394;
    *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
    WORD2(v429.mHostTime) = 1024;
    *(&v429.mHostTime + 6) = 811;
    v386 = MEMORY[0x277D86220];
LABEL_674:
    _os_log_impl(&dword_2724B4000, v386, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
    goto LABEL_675;
  }

  v407 = 0;
  v162 = 0;
  v390 = (this + 2760);
  v163 = v391;
  v395 = &v147->mBuffers[0].mData;
  v396 = (v148 + 4);
  v397 = &v411->mBuffers[0].mData;
  v393 = &v145->mBuffers[0].mData;
  v394 = v146 + 4;
  v398 = v148;
  while (1)
  {
    v401 = v162;
    if (*v148 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v429.mSampleTime) = 136315394;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 449;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
      }

      v375 = __cxa_allocate_exception(0x10uLL);
      *v375 = &unk_2881B25F8;
      v375[2] = -50;
    }

    MEMORY[0x28223BE20](v143);
    v165 = (&v390 - v164);
    bzero(&v390 - v164, v166 + 24);
    v165->mNumberBuffers = *v148;
    if (v147)
    {
      v168 = v147->mNumberBuffers;
      if (v147->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v429.mSampleTime) = 136315394;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 454;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
        }

        v381 = __cxa_allocate_exception(0x10uLL);
        *v381 = &unk_2881B25F8;
        v381[2] = -50;
      }
    }

    else
    {
      v168 = 1;
    }

    MEMORY[0x28223BE20](v167);
    v170 = (&v390 - v169);
    bzero(&v390 - v169, v171 + 24);
    p_mNumberBuffers = v170;
    *v170 = v168;
    if (v146)
    {
      v173 = *v146;
      if ((*v146 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v429.mSampleTime) = 136315394;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 456;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
        }

        v383 = __cxa_allocate_exception(0x10uLL);
        *v383 = &unk_2881B25F8;
        v383[2] = -50;
      }
    }

    else
    {
      v173 = 1;
    }

    MEMORY[0x28223BE20](v172);
    v175 = (&v390 - v174);
    bzero(&v390 - v174, v176 + 24);
    v404 = v175;
    *v175 = v173;
    if (v411)
    {
      v178 = v411->mNumberBuffers;
      if (v411->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v429.mSampleTime) = 136315394;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 458;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
        }

        v379 = __cxa_allocate_exception(0x10uLL);
        *v379 = &unk_2881B25F8;
        v379[2] = -50;
      }
    }

    else
    {
      v178 = 1;
    }

    MEMORY[0x28223BE20](v177);
    v180 = (&v390 - v179);
    bzero(&v390 - v179, v181 + 24);
    *v180 = v178;
    v183 = *(this + 204);
    if (*(this + 2260) == 1)
    {
      v184 = v408;
      if (!v183)
      {
        goto LABEL_319;
      }

      if (!*v183)
      {
        goto LABEL_317;
      }

      v185 = 0;
      v186 = (v183 + 4);
      do
      {
        bzero(*v186, *(v186 - 1));
        ++v185;
        v186 += 2;
      }

      while (v185 < *v183);
      v183 = *(this + 204);
    }

    v184 = v408;
    if (v183)
    {
LABEL_317:
      v187 = *v183;
      if ((*v183 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v429.mSampleTime) = 136315394;
          *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v429.mHostTime) = 1024;
          *(&v429.mHostTime + 6) = 463;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
        }

        v385 = __cxa_allocate_exception(0x10uLL);
        *v385 = &unk_2881B25F8;
        v385[2] = -50;
      }

      goto LABEL_320;
    }

LABEL_319:
    v187 = 1;
LABEL_320:
    MEMORY[0x28223BE20](v182);
    v189 = (&v390 - v188);
    bzero(&v390 - v188, v190 + 24);
    v402 = v189;
    *v189 = v187;
    v192 = v184->mNumberBuffers;
    if ((v192 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v429.mSampleTime) = 136315394;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 465;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
      }

      v376 = __cxa_allocate_exception(0x10uLL);
      *v376 = &unk_2881B25F8;
      v376[2] = -50;
    }

    MEMORY[0x28223BE20](v191);
    v194 = (&v390 - v193);
    bzero(&v390 - v193, v195 + 24);
    *v194 = v192;
    v196 = v165->mNumberBuffers;
    if (v196)
    {
      v197 = 4 * *(this + 131);
      v198 = v407;
      v199 = &v165->mBuffers[0].mData;
      v200 = v396;
      do
      {
        *(v199 - 2) = 1;
        *(v199 - 1) = v197;
        v201 = *v200;
        v200 += 2;
        *v199 = (v201 + 4 * v198);
        v199 += 2;
        --v196;
      }

      while (v196);
    }

    v202 = *p_mNumberBuffers;
    if (v202)
    {
      v203 = 4 * *(this + 131);
      v204 = v407;
      v205 = (p_mNumberBuffers + 4);
      v206 = v395;
      do
      {
        *(v205 - 2) = 1;
        *(v205 - 1) = v203;
        v207 = v410;
        if (v410)
        {
          v207 = (*v206 + 4 * v204);
        }

        *v205 = v207;
        v205 += 2;
        v206 += 2;
        --v202;
      }

      while (v202);
    }

    v208 = *v404;
    if (v208)
    {
      v209 = 4 * *(this + 131);
      v210 = v407;
      v211 = (v404 + 4);
      v212 = v394;
      do
      {
        *(v211 - 2) = 1;
        *(v211 - 1) = v209;
        v213 = v409;
        if (v409)
        {
          v213 = *v212 + 4 * v210;
        }

        *v211 = v213;
        v211 += 2;
        v212 += 2;
        --v208;
      }

      while (v208);
    }

    v214 = *v180;
    if (v214)
    {
      v215 = 4 * *(this + 131);
      v216 = v407;
      v217 = (v180 + 4);
      v218 = v397;
      do
      {
        *(v217 - 2) = 1;
        *(v217 - 1) = v215;
        v219 = v411;
        if (v411)
        {
          v219 = *v218 + 4 * v216;
        }

        *v217 = v219;
        v217 += 2;
        v218 += 2;
        --v214;
      }

      while (v214);
    }

    if (v192)
    {
      v220 = 4 * *(this + 131);
      v221 = v407;
      v222 = (v194 + 4);
      v223 = v393;
      do
      {
        *(v222 - 2) = 1;
        *(v222 - 1) = v220;
        if (v184)
        {
          v224 = *v223 + 4 * v221;
        }

        else
        {
          v224 = 0;
        }

        *v222 = v224;
        v222 += 2;
        v223 += 2;
        --v192;
      }

      while (v192);
    }

    if (v187)
    {
      v225 = 4 * *(this + 131);
      v226 = v407;
      v227 = v187;
      v228 = v183 + 4;
      v229 = (v402 + 4);
      do
      {
        *(v229 - 2) = 1;
        *(v229 - 1) = v225;
        if (v183)
        {
          v230 = *v228 + 4 * v226;
        }

        else
        {
          v230 = 0;
        }

        *v229 = v230;
        v229 += 2;
        v228 += 2;
        --v227;
      }

      while (v227);
    }

    if (v411 && (*(this + 2260) & 1) != 0)
    {
      v231 = v411->mNumberBuffers >= v187 ? v187 : v411->mNumberBuffers;
      if (v231)
      {
        v232 = (v402 + 4);
        v233 = v397;
        do
        {
          v234 = *(v233 - 1);
          v235 = *(v232 - 1);
          if (v234 >= v235)
          {
            v236 = v235;
          }

          else
          {
            v236 = v234;
          }

          memcpy(*v232, *v233, v236);
          v233 += 2;
          v232 += 2;
          --v231;
        }

        while (v231);
      }
    }

    v237 = *(this + 131);
    MonoABL = GetMonoABL(v165, &v434, v237);
    v400 = v237;
    if (v410)
    {
      v239 = p_mNumberBuffers;
    }

    else
    {
      v239 = 0;
    }

    i = GetMonoABL(v239, &v433, *(this + 131));
    if (v409)
    {
      v241 = v404;
    }

    else
    {
      v241 = 0;
    }

    v242 = GetMonoABL(v241, &v414, *(this + 131));
    if (v411)
    {
      v243 = v180;
    }

    else
    {
      v243 = 0;
    }

    v244 = GetMonoABL(v243, &v413, *(this + 131));
    v245 = *(this + 1108);
    if ((v245 & 0x40000000) == 0)
    {
      goto LABEL_373;
    }

    v246 = *(this + 1109);
    if ((v246 & 0x40000000) == 0)
    {
      goto LABEL_373;
    }

    v247 = 0;
    if (!*(this + 469) || (v245 & v246 & 0x80000000) == 0)
    {
      goto LABEL_374;
    }

    if (!*(this + 470) || !*v390 || !*(*v390 + 80))
    {
LABEL_373:
      v247 = 0;
      goto LABEL_374;
    }

    vp::Audio_Buffer::prepare(v390, *(this + 131));
    v303 = *(this + 345);
    if (v303)
    {
      v403 = *(v303 + 80);
    }

    else
    {
      v403 = 0;
    }

    if (v403->mNumberBuffers)
    {
      v306 = 0;
      v307 = &v403->mBuffers[0].mData;
      do
      {
        bzero(*v307, *(v307 - 1));
        ++v306;
        v307 += 2;
      }

      while (v306 < v403->mNumberBuffers);
      v303 = *v390;
    }

    if (v303)
    {
      v308 = *(v303 + 80);
    }

    else
    {
      v308 = 0;
    }

    LODWORD(v429.mSampleTime) = 512;
    AudioUnitSetParameter(*(this + 469), 1u, 0, 0, (*(this + 3152) + -1.0) * 24.0, 0);
    AudioUnitProcess(*(this + 469), &v429, &ioOutputBufferLists, *(this + 131), v308);
    v309 = *(this + 131);
    ioOutputBufferLists.mSampleTime = ioOutputBufferLists.mSampleTime + v309;
    if ((v406[3593] & 1) != 0 || v406[3594] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Du, v309, v308, &ioOutputBufferLists);
      LODWORD(v309) = *(this + 131);
    }

    LODWORD(v429.mSampleTime) = 512;
    AudioUnitProcess(*(this + 470), &v429, &v419, v309, v308);
    v310 = *(this + 131);
    if (v406[3593] & 1) != 0 || (v406[3594])
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Eu, v310, v308, &v419);
      v310 = *(this + 131);
      v311 = v406[3593];
      v419.mSampleTime = v419.mSampleTime + v310;
      if (v311)
      {
        goto LABEL_521;
      }
    }

    else
    {
      v419.mSampleTime = v419.mSampleTime + v310;
    }

    if (v406[3594] == 1)
    {
LABEL_521:
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Fu, v310, v308, &v419);
    }

    v245 = *(this + 1108);
    v247 = v308;
LABEL_374:
    v248 = *(this + 2260);
    if (v248)
    {
      v249 = v194;
    }

    else
    {
      v249 = MonoABL;
    }

    if (*(this + 2260))
    {
      v250 = v402;
    }

    else
    {
      v250 = v244;
    }

    if (v250)
    {
      v251 = v250;
    }

    else
    {
      v251 = v247;
    }

    v403 = v251;
    if ((v245 & 0x8000) != 0 && (v252 = *(this + 1109), (v252 & 0x8000) != 0) && *(this + 454))
    {
      LODWORD(v431) = 512;
      v253 = p_mNumberBuffers;
      if (((v410 != 0) & v248) == 0)
      {
        v253 = i;
      }

      *&v429.mSampleTime = MonoABL;
      v429.mHostTime = v253;
      v254 = *&v404;
      if (((v409 != 0) & v248) == 0)
      {
        v254 = *&v242;
      }

      v255 = v402;
      if (((v411 != 0) & v248) == 0)
      {
        v255 = v244;
      }

      v429.mRateScalar = v254;
      v429.mWordClockTime = v255;
      *&v429.mSMPTETime.mSubframes = v247;
      *&v432 = v249;
      *(&v432 + 1) = v403;
      if ((v245 & 0x8000000) != 0 && ((v252 & 0x8000000) != 0 || *(this + 480) == 1) && v250)
      {
        v256 = 1.0;
        if ((v248 & 1) == 0)
        {
          v256 = *(this + 3155);
        }

        v257 = *(this + 1122) + ((*(this + 1123) - *(this + 1122)) * v256);
        *(this + 1121) = v257;
        v412 = __exp10f(v257 / 20.0);
        v259 = v250->mNumberBuffers;
        mBuffers = v250->mBuffers;
        for (i = 16 * v259; i; i -= 16)
        {
          MEMORY[0x2743CCE20](mBuffers->mData, 1, &v412, mBuffers->mData, 1, *(this + 131));
          ++mBuffers;
        }

        v245 = *(this + 1108);
      }

      if ((v245 & 0x10000000) != 0 && (*(this + 8875) & 0x10) != 0)
      {
        (*(*this + 688))(this, MonoABL, v402);
      }

      AudioUnitProcessMultiple(*(this + 454), &v431, &v418, *(this + 131), 5u, &v429, 2u, &v432);
      v260 = *(this + 131);
      v418.mSampleTime = v418.mSampleTime + v260;
      if ((v406[3593] & 1) != 0 || v406[3594] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Bu, v260, v249, &v418), v260 = *(this + 131), (v406[3593]) || v406[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x78u, v260, v403, &v418);
      }
    }

    else
    {
      p_mNumberBuffers = &v247->mNumberBuffers;
      if (i)
      {
        LODWORD(v429.mSampleTime) = 1055175620;
        MEMORY[0x2743CCE10](*(i + 16), 1, &v429, MonoABL->mBuffers[0].mData, 1, MonoABL->mBuffers[0].mData, 1, *(this + 131));
      }

      if (v242)
      {
        MEMORY[0x2743CCD80](MonoABL->mBuffers[0].mData, 1, v242->mBuffers[0].mData, 1, MonoABL->mBuffers[0].mData, 1, *(this + 131));
      }

      v261 = MonoABL->mNumberBuffers;
      if (v261)
      {
        v262 = 0;
        i = &v249->mBuffers[0].mData;
        v263 = &MonoABL->mBuffers[0].mData;
        do
        {
          if (*v263 != *i)
          {
            memcpy(*i, *v263, *(v263 - 1));
            v261 = MonoABL->mNumberBuffers;
          }

          ++v262;
          i += 16;
          v263 += 2;
        }

        while (v262 < v261);
      }

      if (v244)
      {
        v264 = p_mNumberBuffers;
        if ((*(this + 8867) & 8) != 0 && ((*(this + 8875) & 8) != 0 || *(this + 480) == 1))
        {
          v265 = *(this + 1122) + ((*(this + 1123) - *(this + 1122)) * *(this + 3155));
          *(this + 1121) = v265;
          LODWORD(v429.mSampleTime) = __exp10f(v265 / 20.0);
          MEMORY[0x2743CCE20](v244->mBuffers[0].mData, 1, &v429, v244->mBuffers[0].mData, 1, *(this + 131));
          v264 = p_mNumberBuffers;
        }

        if (v264)
        {
          MEMORY[0x2743CCD80](v244->mBuffers[0].mData, 1, *(v264 + 2), 1, v244->mBuffers[0].mData, 1, *(this + 131));
        }
      }

      else
      {
        v244 = p_mNumberBuffers;
      }

      if (v403)
      {
        if (v244)
        {
          v266 = v244->mNumberBuffers;
          if (v266)
          {
            v267 = 0;
            i = &v403->mBuffers[0].mData;
            v268 = &v244->mBuffers[0].mData;
            do
            {
              if (*v268 != *i)
              {
                memcpy(*i, *v268, *(v268 - 1));
                v266 = v244->mNumberBuffers;
              }

              ++v267;
              i += 16;
              v268 += 2;
            }

            while (v267 < v266);
          }
        }
      }
    }

    v269 = *(this + 1108);
    if ((v269 & 0x8000) == 0)
    {
      a7 = v399;
LABEL_437:
      v12 = v406;
      goto LABEL_438;
    }

    a7 = v399;
    if ((*(this + 8873) & 0x80) == 0)
    {
      goto LABEL_437;
    }

    v12 = v406;
    if (*(this + 454) && *(this + 2260) == 1)
    {
      v304 = (*(*this + 664))(this, v249, v415);
      v304.n128_u32[0] = *(this + 131);
      *v415 = *v415 + v304.n128_u64[0];
      v269 = *(this + 1108);
    }

LABEL_438:
    if ((v269 & 0x200000) != 0 && (*(this + 8874) & 0x20) != 0 && *(this + 460))
    {
      DWORD2(v432) = 0;
      *&v432 = 0;
      v270 = *(this + 3153);
      v271 = *(this + 3154);
      if (v12[3593] == 1)
      {
        v272 = *(this + 3155);
        LODWORD(v432) = *(this + 3153);
        *(&v432 + 4) = __PAIR64__(v272, LODWORD(v271));
        VoiceProcessorV2::WriteControlDataToFile(this, &v432, 0xCu, 0x34u);
      }

      v273 = *v392;
      v274 = (v271 - v270) / (v163 / *v392);
      v275 = 2000.0;
      if (v274 <= 2000.0)
      {
        v275 = v274;
        if (v274 < -5000.0)
        {
          v275 = -5000.0;
        }
      }

      v276 = *(this + 131);
      AudioUnitSetParameter(*(this + 460), 5u, 0, 0, 0.0, 0);
      v277 = v276 / v273 * v275;
      *(this + 3153) = v270 + (v276 * (v277 / v276));
      v412 = 512;
      *&v429.mSampleTime = v249;
      v429.mHostTime = v403;
      v431 = v249;
      AudioUnitProcessMultiple(*(this + 460), &v412, &v417, *(this + 131), 2u, &v429, 1u, &v431);
      LODWORD(v278) = *(this + 131);
      v417.mSampleTime = v417.mSampleTime + v278;
    }

    else
    {
      v279 = 1.0;
      if ((*(this + 2260) & 1) == 0)
      {
        v279 = *(this + 3155);
      }

      *&v432 = v279;
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v429, v249);
      v280 = *&v429.mSampleTime + 8;
      for (i = 16 * **&v429.mSampleTime; i; i -= 16)
      {
        MEMORY[0x2743CCE20](*(v280 + 8), 1, &v432, *(v280 + 8), 1, *(this + 131));
        v280 += 16;
      }

      if ((v12[3593] & 1) != 0 || v12[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x37u, *(this + 131), v249, a7);
      }
    }

    if (!v249)
    {
      break;
    }

    if (!v403 || (*(this + 8867) & 0x20) == 0 || (*(this + 8875) & 0x20) == 0 && *(this + 480) != 1)
    {
      v281 = *v194;
      if (*v194 >= v249->mNumberBuffers)
      {
        v281 = v249->mNumberBuffers;
      }

      if (v281)
      {
        v282 = 0;
        v283 = 0;
        do
        {
          v284 = v249->mBuffers[v282 / 0x10].mDataByteSize;
          v285 = v194[v282 / 4 + 3];
          if (v284 >= v285)
          {
            v286 = v285;
          }

          else
          {
            v286 = v284;
          }

          memcpy(*&v194[v282 / 4 + 4], v249->mBuffers[v282 / 0x10].mData, v286);
          ++v283;
          LODWORD(v287) = *v194;
          if (*v194 >= v249->mNumberBuffers)
          {
            v287 = v249->mNumberBuffers;
          }

          else
          {
            v287 = v287;
          }

          v282 += 16;
        }

        while (v283 < v287);
      }

      goto LABEL_468;
    }

    v295 = *(this + 2260);
    if (v295 == 1)
    {
      v296 = *(this + 91);
      v297 = v249->mNumberBuffers;
LABEL_482:
      if (v297)
      {
        v298 = 0;
        v299 = v296 - 1;
        v300 = v403->mBuffers;
        v301 = 4;
        do
        {
          if (v299 >= v298)
          {
            v302 = v298;
          }

          else
          {
            v302 = v299;
          }

          MEMORY[0x2743CCD80](*(&v249->mNumberBuffers + v301 * 4), 1, v300[v302].mData, 1, *&v194[v301], 1, *(this + 131));
          ++v298;
          v301 += 4;
        }

        while (v298 < v249->mNumberBuffers);
      }

      goto LABEL_468;
    }

    v297 = v249->mNumberBuffers;
    v296 = 1;
    if ((v295 & 1) != 0 || v297 == 1)
    {
      goto LABEL_482;
    }

      ;
    }

LABEL_468:
    v288 = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
    if ((v288 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v429.mSampleTime) = 136315394;
        *(&v429.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v429.mHostTime) = 1024;
        *(&v429.mHostTime + 6) = 771;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v429, 0x12u);
      }

      v377 = __cxa_allocate_exception(0x10uLL);
      *v377 = &unk_2881B25F8;
      v377[2] = -50;
    }

    v289 = v288;
    MEMORY[0x28223BE20](v288);
    v291 = (&v390 - v290);
    bzero(&v390 - v290, v292 + 24);
    v291->mNumberBuffers = v289;
    v143 = memcpy(v291->mBuffers, v194 + 2, 16 * v289);
    v9 = v406;
    v146 = v409;
    v293 = v401;
    if ((v406[3593] & 1) != 0 || v406[3594] == 1)
    {
      v143 = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x35u, *(this + 131), v291, a7);
    }

    v147 = v410;
    v148 = v398;
    if (*(this + 8868) & 1) != 0 && (*(this + 8876))
    {
      v143 = *(this + 471);
      if (v143)
      {
        LODWORD(v429.mSampleTime) = 512;
        v143 = AudioUnitProcess(v143, &v429, &v416, *(this + 131), v291);
        LODWORD(v294) = *(this + 131);
        v416.mSampleTime = v416.mSampleTime + v294;
      }
    }

    v407 += v400;
    v162 = v293 + 1;
    if (v162 >= *(this + 132))
    {
      goto LABEL_523;
    }
  }

  v431 = 0;
  v430 = 0u;
  memset(&v429, 0, sizeof(v429));
  v358 = MEMORY[0x277D86220];
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  LODWORD(v432) = 134217984;
  *(&v432 + 4) = 0;
  LODWORD(v389) = 12;
  v388 = &v432;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_645:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_620:
  v359 = i * 0.0000000416666667 - v13;
  CALegacyLog::log(v358, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 949, "ProcessDownlinkAudio", "DL %f %f %f", a7->mSampleTime, v13, v359);
  v357 = v408;
  v360 = *(this + 123);
  v361 = *(this + 42);
  if (v359 >= v360 / v361)
  {
    v362 = *(this + 1589);
    if (*&v249[141].mNumberBuffers != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v362, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 952, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v359);
    v357 = v408;
    v360 = *(this + 123);
    v361 = *(this + 42);
  }

  if (v13 - *(this + 1984) > (*(this + 296) + v360) / v361)
  {
    v363 = *(this + 1589);
    if (*&v249[141].mNumberBuffers != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v363, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 955, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v13 - *(this + 1984));
    v357 = v408;
  }

  *(this + 1984) = v13;
LABEL_629:
  if (v12)
  {
    if (*(this + 1656) & 1) != 0 || (v364 = FadeInOverFewFrames(*(this + 205), v408, *(this + 412), *(this + 413)), *(this + 1656) = v364, *(this + 412) = HIDWORD(v364), (v364))
    {
      v365 = *(this + 205);
      v366 = v408->mNumberBuffers >= *v365 ? *v365 : v408->mNumberBuffers;
      if (v366)
      {
        v367 = &v408->mBuffers[0].mData;
        v368 = (v365 + 4);
        do
        {
          v369 = *(v367 - 1);
          v370 = *(v368 - 1);
          if (v369 >= v370)
          {
            v371 = v370;
          }

          else
          {
            v371 = v369;
          }

          memcpy(*v368, *v367, v371);
          v367 += 2;
          v368 += 2;
          --v366;
        }

        while (v366);
      }
    }
  }

  else
  {
    *(this + 412) = 0;
    *(this + 1656) = 0;
    FadeOutOverOneFrame(*(this + 205), v357);
  }

  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  v372 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_27254ACC8(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 816));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

_DWORD *ABLRingBuffer<float>::ReadFrom(_DWORD *result, unsigned int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = result;
    if (*a3 == result[1])
    {
      v5 = result[2];
      if (v5)
      {
        if (v5 >= a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = result[2];
        }

        v7 = *result - result[3];
        if (v7 >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        if (*a3)
        {
          v9 = 0;
          v10 = (a3 + 4);
          do
          {
            v11 = *v10;
            v10 += 2;
            result = memcpy(v11, (*(v4 + 3) + 4 * (v4[3] + *v4 * v9++)), 4 * v8);
            v12 = v4[1];
          }

          while (v9 < v12);
          if (v7 < v6 && v12)
          {
            v13 = 0;
            v14 = (a3 + 4);
            do
            {
              v15 = *v14;
              v14 += 2;
              result = memcpy((v15 + 4 * v8), (*(v4 + 3) + 4 * (*v4 * v13++)), 4 * (v6 - v8));
            }

            while (v13 < v4[1]);
          }
        }

        v16 = v4[3] + v6;
        v4[2] -= v6;
        v4[3] = v16;
        if (v16 >= *v4)
        {
          v4[3] = v16 - *v4;
        }
      }
    }
  }

  return result;
}

void *vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(void *this, const AudioBufferList *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  *this = a2;
  if (!a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_27254B01C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_2889()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t VoiceProcessorV3::DecorrelationAndCNGForMediaChat(VoiceProcessorV3 *this, AudioBufferList *a2, AudioTimeStamp *a3)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  outValue = -200.0;
  result = AudioUnitGetParameter(*(this + 454), 0xCu, 0, 0, &outValue);
  if (outValue <= -60.0)
  {
    v8 = *(this + 415) + -1.5;
    if (v8 < -60.0)
    {
      v8 = -60.0;
    }
  }

  else
  {
    if (*(this + 8866) & 1) != 0 && (*(this + 8874))
    {
      result = *(this + 455);
      if (result)
      {
        v11 = 512;
        ioOutputBufferLists = a2;
        inInputBufferLists[0] = a2;
        result = AudioUnitProcessMultiple(result, &v11, a3, *(this + 131), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
      }
    }

    v8 = *(this + 415) + 0.5;
    if (v8 > 0.0)
    {
      v8 = 0.0;
    }
  }

  *(this + 415) = v8;
  if ((v6[3593] & 1) != 0 || v6[3594] == 1)
  {
    result = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Au, *(this + 131), a2, a3);
  }

  v9 = *(this + 1108);
  if ((v9 & 0x20000) != 0 && (*(this + 8874) & 2) != 0 && *(this + 456))
  {
    (*(*this + 672))(this, 0, a3);
    result = MEMORY[0x2743CCD80](a2->mBuffers[0].mData, 1, *(*(*(this + 346) + 80) + 16), 1, a2->mBuffers[0].mData, 1, *(this + 131));
    v9 = *(this + 1108);
  }

  if ((v9 & 0x80000) != 0 && (*(this + 8874) & 8) != 0 && *(this + 458))
  {
    (*(*this + 672))(this, 1, a3);
    result = MEMORY[0x2743CCD80](*&a2[1].mBuffers[0].mNumberChannels, 1, *(*(*(this + 347) + 80) + 16), 1, *&a2[1].mBuffers[0].mNumberChannels, 1, *(this + 131));
  }

  if ((v6[3593] & 1) != 0 || v6[3594] == 1)
  {
    result = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Bu, *(this + 131), a2, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV3::CNGAndEqForMediaChat(VoiceProcessorV3 *this, int a2, const AudioTimeStamp *a3)
{
  if (a2)
  {
    v5 = 2776;
  }

  else
  {
    v5 = 2768;
  }

  if (a2)
  {
    v6 = 20;
  }

  else
  {
    v6 = 18;
  }

  if (a2)
  {
    v7 = 19;
  }

  else
  {
    v7 = 17;
  }

  vp::Audio_Buffer::prepare((this + v5), *(this + 131));
  v8 = *(this + v5);
  if (v8)
  {
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
  }

  if (v9->mNumberBuffers)
  {
    v10 = 0;
    p_mData = &v9->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v10;
      p_mData += 2;
    }

    while (v10 < v9->mNumberBuffers);
  }

  ioActionFlags = 512;
  AudioUnitSetParameter(*(this + v7 + 439), 1u, 0, 0, *(this + 415) + ((*(this + 3152) + -1.0) * 24.0), 0);
  AudioUnitProcess(*(this + v7 + 439), &ioActionFlags, a3, *(this + 131), v9);
  result = VoiceProcessorV2::VPUseAUInProcess(this, v6, 0);
  if (result)
  {
    ioActionFlags = 512;
    return AudioUnitProcess(*(this + v6 + 439), &ioActionFlags, a3, *(this + 131), v9);
  }

  return result;
}

void VoiceProcessorV3::DownlinkAGCForMediaChat(VoiceProcessorV3 *this, AudioBufferList *a2, unsigned int a3, const AudioTimeStamp *a4)
{
  ioDataSize = 4;
  outData = 0;
  v27 = 0.0;
  AudioUnitGetProperty(*(this + 453), 0x15u, 0, 0, &outData, &ioDataSize);
  if (!outData)
  {
    __C = 0.0;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(ioActionFlags, a2);
    v8 = 0;
    v9 = 0;
    v10 = *ioActionFlags + 8;
    v11 = 16 * **ioActionFlags;
    for (i = -1.0; v11; v11 -= 16)
    {
      vDSP_svesq(*(v10 + 8), 1, &__C, a3);
      if (__C > i)
      {
        i = __C;
        v9 = v8;
      }

      ++v8;
      v10 += 16;
    }

    vp::Audio_Buffer::prepare(this + 348, a3);
    mBuffers = a2->mBuffers;
    memcpy(*(*(*(this + 348) + 80) + 16), a2->mBuffers[v9].mData, a2->mBuffers[v9].mDataByteSize);
    ioActionFlags[0] = 512;
    v14 = *(this + 1108);
    if ((v14 & 2) != 0 && (*(this + 8872) & 2) != 0)
    {
      v15 = *(this + 440);
      if (v15)
      {
        outValue = 0.0;
        AudioUnitGetParameter(v15, 0x73707066u, 0, 0, &outValue);
        AudioUnitSetParameter(*(this + 453), 0x23u, 0, 0, outValue, 0);
        v14 = *(this + 1108);
      }
    }

    if ((v14 & 0x8000) != 0 && (*(this + 8873) & 0x80) != 0)
    {
      v16 = *(this + 454);
      if (v16)
      {
        outValue = -200.0;
        AudioUnitGetParameter(v16, 0x14u, 0, 0, &outValue);
        v17 = *(this + 571);
        if (v17)
        {
          *(this + 571) = v17 - 1;
        }

        else
        {
          v23 = *(this + 1128);
          if (outValue <= v23 || *(this + 573))
          {
            if (outValue <= v23 && *(this + 573) == 1)
            {
              AudioUnitSetParameter(*(this + 453), 8u, 0, 0, *(this + 574), 0);
              AudioUnitSetParameter(*(this + 453), 0x2Bu, 0, 0, *(this + 575), 0);
              *(this + 571) = *(this + 1129);
              *(this + 573) = 0;
            }
          }

          else
          {
            AudioUnitSetParameter(*(this + 453), 8u, 0, 0, *(this + 1127), 0);
            AudioUnitSetParameter(*(this + 453), 0x2Bu, 0, 0, *(this + 1126), 0);
            *(this + 571) = *(this + 1129);
            *(this + 573) = 1;
          }
        }
      }
    }

    v18 = *(this + 348);
    if (v18)
    {
      v19 = *(v18 + 80);
    }

    else
    {
      v19 = 0;
    }

    AudioUnitProcess(*(this + 453), ioActionFlags, a4, a3, v19);
    AudioUnitGetParameter(*(this + 453), 1u, 0, 0, &v27);
    v20 = __exp10f(v27 / 20.0);
    v21 = (this + 16856);
    outValue = (v20 - *v21) / a3;
    for (j = 16 * a2->mNumberBuffers; j; j -= 16)
    {
      vDSP_vrampmul(mBuffers->mData, 1, v21, &outValue, mBuffers->mData, 1, a3);
      ++mBuffers;
    }

    *v21 = v20;
  }
}

void VoiceProcessorV3::ApplyMediaChatGains(VoiceProcessorV3 *this, AudioBufferList *a2, AudioBufferList *a3)
{
  v6 = COERCE_FLOAT(atomic_load(this + 567));
  if (*(this + 568) == v6)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a2);
    v20 = v31 + 2;
    for (i = 16 * *v31; i; i -= 16)
    {
      v22 = *(v20 + 1);
      v24 = *v20;
      v23 = v20[1];
      v20 += 4;
      MEMORY[0x2743CCE20](v22, 1, this + 2276, v22, 1, (v23 >> 2) / v24);
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a3);
    v25 = v31 + 2;
    for (j = 16 * *v31; j; j -= 16)
    {
      v27 = *(v25 + 1);
      v29 = *v25;
      v28 = v25[1];
      v25 += 4;
      MEMORY[0x2743CCE20](v27, 1, this + 2280, v27, 1, (v28 >> 2) / v29);
    }
  }

  else
  {
    v7 = 0.0;
    if (v6 <= 0.25)
    {
      v7 = ((((fmaxf(roundf(v6 * 16.0) * 0.0625, 0.0625) * 16.0) + -1.0) * -0.25) + 1.0) * *(this + 1130);
    }

    v8 = __exp10f(((*(this + 1124) + (v6 * (*(this + 1125) - *(this + 1124)))) + v7) * 0.05);
    __Step = (v8 - *(this + 569)) / *(this + 131);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a2);
    v9 = v31 + 2;
    for (k = 16 * *v31; k; k -= 16)
    {
      v11 = *(v9 + 1);
      v13 = *v9;
      v12 = v9[1];
      v9 += 4;
      vDSP_vrampmul(v11, 1, this + 569, &__Step, v11, 1, (v12 >> 2) / v13);
    }

    v14 = __exp10f((*(this + 1122) + (v6 * (*(this + 1123) - *(this + 1122)))) * 0.05);
    v30 = (v14 - *(this + 570)) / *(this + 131);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a3);
    v15 = v31 + 2;
    for (m = 16 * *v31; m; m -= 16)
    {
      v17 = *(v15 + 1);
      v19 = *v15;
      v18 = v15[1];
      v15 += 4;
      vDSP_vrampmul(v17, 1, this + 570, &v30, v17, 1, (v18 >> 2) / v19);
    }

    *(this + 568) = v6;
    *(this + 569) = v8;
    *(this + 570) = v14;
  }
}

uint64_t VoiceProcessorV4::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v566 = *MEMORY[0x277D85DE8];
  v9 = (this + 3158);
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
LABEL_3:
    ++*(v8 + 3150);
    CADeprecated::CAMutex::Unlock(v10);
    v11 = 0;
    v12 = 0.0;
    goto LABEL_931;
  }

  v541 = a3;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
    goto LABEL_3;
  }

  v13 = a7;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  v539 = a2;
  v533 = a4;
  (*(*v8 + 696))(&v554, v8, v13);
  v553 = v554;
  if (v9[3249] == 1)
  {
    if (*v9)
    {
      v17 = *(v8 + 1578);
      HIDWORD(v18) = HIDWORD(v553.mSampleTime);
      if (v17 == v553.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v17, v553.mSampleTime, 2);
      v18 = *(v8 + 1578);
      if (v553.mSampleTime >= v18)
      {
        goto LABEL_48;
      }

      v19 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v20 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v8 + 1578);
          LODWORD(v554.mSampleTime) = 136316674;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 92;
          WORD1(v554.mRateScalar) = 2048;
          *(&v554.mRateScalar + 4) = v22;
          WORD2(v554.mWordClockTime) = 2048;
          *(&v554.mWordClockTime + 6) = *&v553.mSampleTime;
          HIWORD(v554.mSMPTETime.mCounter) = 2048;
          *&v554.mSMPTETime.mType = v553.mHostTime;
          v554.mSMPTETime.mHours = 2048;
          *&v554.mSMPTETime.mMinutes = v553.mRateScalar;
          HIWORD(v554.mFlags) = 1024;
          v554.mReserved = v553.mFlags;
          _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v554, 0x40u);
        }
      }

      v23 = *(v8 + 1588);
      if (v23 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v23, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 92, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v553.mSampleTime, v553.mHostTime, v553.mRateScalar, v553.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, *(v8 + 3150), 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v553.mSampleTime, 2);
      v18 = *(v8 + 216);
      v24 = v553.mSampleTime - v18;
      v25 = (((roundf(*(v8 + 291) * *(v8 + 126)) + *(v8 + 126)) + *(v8 + 295)) + *(v8 + 296));
      if (v553.mSampleTime - v18 == v25)
      {
LABEL_48:
        LODWORD(v18) = *(v8 + 123);
        *(v8 + 1578) = v553.mSampleTime + *&v18;
        goto LABEL_49;
      }

      v19 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v26 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315906;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 79;
          WORD1(v554.mRateScalar) = 2048;
          *(&v554.mRateScalar + 4) = v25;
          WORD2(v554.mWordClockTime) = 2048;
          *(&v554.mWordClockTime + 6) = v24;
          _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v554, 0x26u);
        }
      }

      v28 = *(v8 + 1588);
      if (v28 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v28, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 79, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v25, v24);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, *(v8 + 3150), 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v19;
    goto LABEL_48;
  }

LABEL_49:
  v551 = v8 + 2504;
  v552 = (*(*(v8 + 313) + 16))();
  CADeprecated::CAMutex::Lock((v8 + 2592));
  ++*(v8 + 3150);
  CADeprecated::CAMutex::Unlock((v8 + 2592));
  v29 = *(v8 + 123);
  v550 = v29;
  NumberOfSourceFrames = v29;
  v30 = v9[3249];
  v538 = v8;
  if (v30)
  {
    v9[385] = 1;
    if (v7->mNumberBuffers == *(v8 + 91))
    {
      v522 = (v8 + 336);
      if (v539)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_928:
    if (v552 == 1)
    {
      (*(*v551 + 24))(v551);
    }

    v11 = 1;
LABEL_931:
    if (v9[3249] == 1 && *(v8 + 1589))
    {
      v283 = mach_absolute_time();
      v476 = *(v8 + 1589);
      v219 = 0x280898000;
      if (VPTimestampLogScope(void)::once != -1)
      {
        goto LABEL_959;
      }

      goto LABEL_934;
    }

    goto LABEL_943;
  }

  if (v7->mNumberBuffers != *(v8 + 91))
  {
    goto LABEL_928;
  }

  v522 = (v8 + 336);
  if ((v9[3250] & 1) == 0)
  {
    goto LABEL_83;
  }

  if (v539)
  {
LABEL_62:
    if (v9[3250] != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  v31 = *(v8 + 200);
  mNumberBuffers = v31->mNumberBuffers;
  v539 = v31;
  if (mNumberBuffers)
  {
    v33 = 0;
    p_mData = &v31->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v33;
      p_mData += 2;
    }

    while (v33 < v31->mNumberBuffers);
    v30 = v9[3249];
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, a6, v539);
  if ((v9[3249] & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, a6, v539, &v553);
LABEL_64:
  v35 = v541;
  if (!v541)
  {
    v35 = *(v8 + 201);
    if (v35->mNumberBuffers)
    {
      v36 = 0;
      v37 = &v35->mBuffers[0].mData;
      do
      {
        v38 = v35;
        bzero(*v37, *(v37 - 1));
        v35 = v38;
        ++v36;
        v37 += 2;
      }

      while (v36 < v38->mNumberBuffers);
      v8 = v538;
    }
  }

  v541 = v35;
  if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, a6, v541), (v9[3249] & 1) != 0) || v9[3250] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, a6, v541, &v553);
  }

  if (!v533)
  {
    v39 = *(v8 + 202);
    v40 = v39->mNumberBuffers;
    v533 = v39;
    if (v40)
    {
      v41 = 0;
      v42 = &v39->mBuffers[0].mData;
      do
      {
        bzero(*v42, *(v42 - 1));
        ++v41;
        v42 += 2;
      }

      while (v41 < v39->mNumberBuffers);
      v8 = v538;
    }
  }

  if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, a6, v533), (v9[3249] & 1) != 0) || v9[3250] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, a6, v533, &v553);
  }

  v29 = *(v8 + 123);
LABEL_83:
  if (v29 != a6)
  {
    if (v9[3171])
    {
      v53 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
      v54 = *(v8 + 1981);
      if (v53 > v54)
      {
        *(v8 + 1981) = v54 + 10.0;
        VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), a6, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v55 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v55)
        {
          v56 = v55;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v554.mSampleTime) = 136315650;
            *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v554.mHostTime) = 1024;
            *(&v554.mHostTime + 6) = 190;
            WORD1(v554.mRateScalar) = 2048;
            *(&v554.mRateScalar + 4) = v53;
            _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v554, 0x1Cu);
          }
        }

        v57 = *(v8 + 1588);
        if (v57 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v57, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 190, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v53);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v58 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v58)
        {
          v59 = v58;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v7->mBuffers[0].mDataByteSize;
            v61 = *(v8 + 123);
            CAFormatter::CAFormatter(&inInputBufferLists, v522);
            v62 = *(v8 + 3150);
            LODWORD(v554.mSampleTime) = 136316674;
            *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v554.mHostTime) = 1024;
            *(&v554.mHostTime + 6) = 196;
            WORD1(v554.mRateScalar) = 1024;
            HIDWORD(v554.mRateScalar) = a6;
            LOWORD(v554.mWordClockTime) = 1024;
            *(&v554.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v554.mWordClockTime) = 1024;
            *&v554.mSMPTETime.mSubframes = v61;
            LOWORD(v554.mSMPTETime.mCounter) = 2080;
            *(&v554.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
            HIWORD(v554.mSMPTETime.mFlags) = 1024;
            *&v554.mSMPTETime.mHours = v62;
            _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v554, 0x34u);
            if (*&inInputBufferLists.mSampleTime)
            {
              free(*&inInputBufferLists.mSampleTime);
            }
          }
        }

        v63 = *(v8 + 1588);
        if (v63)
        {
          if ((v9[3249] & 1) != 0 || v9[3250] == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v64 = VPLogScope(void)::scope;
            v65 = v7->mBuffers[0].mDataByteSize;
            v66 = *(v8 + 123);
            CAFormatter::CAFormatter(&v554, v522);
            CALegacyLog::log(v63, 1, v64, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 196, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", a6, v65, v66, *&v554.mSampleTime, *(v8 + 3150));
LABEL_188:
            if (*&v554.mSampleTime)
            {
              free(*&v554.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      v9[3171] = 1;
      *(v8 + 1978) = mach_absolute_time();
      *(v8 + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), a6, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v74 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v75 = (*v74 ? *v74 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 167;
          _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v554, 0x12u);
        }
      }

      v76 = *(v8 + 1588);
      if (v76 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v76, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 167, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v77 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v78 = (*v77 ? *v77 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = v7->mBuffers[0].mDataByteSize;
          v80 = *(v8 + 123);
          CAFormatter::CAFormatter(&inInputBufferLists, v522);
          v81 = *(v8 + 3150);
          LODWORD(v554.mSampleTime) = 136316674;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 173;
          WORD1(v554.mRateScalar) = 1024;
          HIDWORD(v554.mRateScalar) = a6;
          LOWORD(v554.mWordClockTime) = 1024;
          *(&v554.mWordClockTime + 2) = v79;
          HIWORD(v554.mWordClockTime) = 1024;
          *&v554.mSMPTETime.mSubframes = v80;
          LOWORD(v554.mSMPTETime.mCounter) = 2080;
          *(&v554.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
          HIWORD(v554.mSMPTETime.mFlags) = 1024;
          *&v554.mSMPTETime.mHours = v81;
          _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v554, 0x34u);
          if (*&inInputBufferLists.mSampleTime)
          {
            free(*&inInputBufferLists.mSampleTime);
          }
        }
      }

      v82 = *(v8 + 1588);
      if (v82 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v83 = VPLogScope(void)::scope;
        v84 = v7->mBuffers[0].mDataByteSize;
        v85 = *(v8 + 123);
        CAFormatter::CAFormatter(&v554, v522);
        CALegacyLog::log(v82, 2, v83, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 173, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", a6, v84, v85, *&v554.mSampleTime, *(v8 + 3150));
        goto LABEL_188;
      }
    }

    if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, a6, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, a6, v7, &v553);
    }

    v73 = *(v8 + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_928;
    }

LABEL_197:
    AudioIssueDetectorLibraryLoader(void)::libSym(v73, 70, 0, v7, a6, &v553);
    goto LABEL_928;
  }

  if (v7->mBuffers[0].mDataByteSize != *(v8 + 90) * a6)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v67 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v68 = (*v67 ? *v67 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = v7->mBuffers[0].mDataByteSize;
        v70 = *(v8 + 90) * a6;
        LODWORD(v554.mSampleTime) = 136315906;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 217;
        WORD1(v554.mRateScalar) = 1024;
        HIDWORD(v554.mRateScalar) = v69;
        LOWORD(v554.mWordClockTime) = 1024;
        *(&v554.mWordClockTime + 2) = v70;
        _os_log_impl(&dword_2724B4000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v554, 0x1Eu);
      }
    }

    v71 = *(v8 + 1588);
    v72 = v9[3249];
    if (v71)
    {
      if ((v9[3249] & 1) == 0 && v9[3250] != 1)
      {
        goto LABEL_151;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v71, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 217, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, *(v8 + 90) * a6);
      v72 = v9[3249];
    }

    if (v72)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, a6, v7);
      if (v9[3249])
      {
LABEL_152:
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, a6, v7, &v553);
LABEL_153:
        v73 = *(v8 + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_928;
        }

        goto LABEL_197;
      }
    }

LABEL_151:
    if (v9[3250] != 1)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  p_mSampleTime = &v13->mSampleTime;
  if (v9[3171] != 1)
  {
    goto LABEL_221;
  }

  v9[3171] = 0;
  v43 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), a6, "processdownlinkaudio: <block size no longer mismatched>");
  if (v43 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v86 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v86)
    {
      v87 = v86;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v554.mSampleTime) = 136315650;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 246;
        WORD1(v554.mRateScalar) = 2048;
        *(&v554.mRateScalar + 4) = v43;
        _os_log_impl(&dword_2724B4000, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v554, 0x1Cu);
      }
    }

    v88 = *(v8 + 1588);
    if (v88 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v88, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 246, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v43);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v89 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v89)
    {
      v90 = v89;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(v8 + 123);
        LODWORD(v554.mSampleTime) = 136315906;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 250;
        WORD1(v554.mRateScalar) = 1024;
        HIDWORD(v554.mRateScalar) = a6;
        LOWORD(v554.mWordClockTime) = 1024;
        *(&v554.mWordClockTime + 2) = v91;
        _os_log_impl(&dword_2724B4000, v90, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v554, 0x1Eu);
      }
    }

    v50 = *(v8 + 1588);
    if (v50 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = 250;
      v52 = 2;
      goto LABEL_220;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v44 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v44)
    {
      v45 = v44;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315650;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 238;
        WORD1(v554.mRateScalar) = 2048;
        *(&v554.mRateScalar + 4) = v43;
        _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v554, 0x1Cu);
      }
    }

    v46 = *(v8 + 1588);
    if (v46 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v46, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 238, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v43);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v47 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v47)
    {
      v48 = v47;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v49 = *(v8 + 123);
        LODWORD(v554.mSampleTime) = 136315906;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 242;
        WORD1(v554.mRateScalar) = 1024;
        HIDWORD(v554.mRateScalar) = a6;
        LOWORD(v554.mWordClockTime) = 1024;
        *(&v554.mWordClockTime + 2) = v49;
        _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v554, 0x1Eu);
      }
    }

    v50 = *(v8 + 1588);
    if (v50 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = 242;
      v52 = 1;
LABEL_220:
      CALegacyLog::log(v50, v52, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", v51, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", a6, *(v8 + 123));
    }
  }

LABEL_221:
  v92 = *(v8 + 49);
  v93 = *(v8 + 123);
  if (*(v8 + 48))
  {
    if (v92)
    {
      v94 = *(v8 + 123);
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v92);
      v92 = *(v8 + 48);
LABEL_228:
      v93 = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v92);
      goto LABEL_229;
    }

    v92 = *(v8 + 48);
LABEL_227:
    NumberOfSourceFrames = *(v8 + 123);
    goto LABEL_228;
  }

  if (v92)
  {
    goto LABEL_227;
  }

LABEL_229:
  v95 = *(v8 + 14);
  v96 = *v95;
  if (v96 >= 1)
  {
    v97 = v93 * *(v8 + 60);
    v98 = (v96 + 3) & 0xFFFFFFFC;
    v99 = vdupq_n_s64(v96 - 1);
    v100 = xmmword_2727564D0;
    v101 = xmmword_2727564E0;
    v102 = (v95 + 11);
    v103 = vdupq_n_s64(4uLL);
    do
    {
      v104 = vmovn_s64(vcgeq_u64(v99, v101));
      if (vuzp1_s16(v104, *v99.i8).u8[0])
      {
        *(v102 - 8) = v97;
      }

      if (vuzp1_s16(v104, *&v99).i8[2])
      {
        *(v102 - 4) = v97;
      }

      if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, *&v100))).i32[1])
      {
        *v102 = v97;
        v102[4] = v97;
      }

      v100 = vaddq_s64(v100, v103);
      v101 = vaddq_s64(v101, v103);
      v102 += 16;
      v98 -= 4;
    }

    while (v98);
  }

  v548 = v93;
  Signal = (*(*(v8 + 13) + 16))();
  *&v106 = v548;
  v550 = v548;
  v107 = *(v8 + 14);
  if (v9[3249] == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v548, *(v8 + 14)), v107 = *(v8 + 14), (v9[3249] & 1) != 0) || v9[3250] == 1)
  {
    Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v548, v107, &v553);
    v107 = *(v8 + 14);
  }

  v108 = *(v8 + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v108, 51, 0, v107, v548, &v553);
  }

  if ((*(v8 + 2090) & 1) != 0 || *(v8 + 20) == 7 && *(v8 + 3152) == 0.0)
  {
    Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v554, *(v8 + 14));
    v109 = (*&v554.mSampleTime + 8);
    v110 = 16 * **&v554.mSampleTime;
    for (i = (*&v554.mSampleTime + 8); v110; v110 -= 16)
    {
      v113 = *i;
      v112 = i[1];
      i += 4;
      Signal = vp::fill(v109, (v112 >> 2) / v113, 0.0);
      v109 += 2;
    }
  }

  v528 = a6;
  v114 = *(v8 + 57);
  if ((v114 & 0x20) != 0)
  {
    v117 = *(v8 + 61);
    if (v117 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 322;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Signal);
    v116 = (&p_mSampleTime - v118);
    bzero(&p_mSampleTime - v118, v119 + 24);
  }

  else
  {
    v115 = MEMORY[0x28223BE20](Signal);
    v116 = &v515;
    v515 = 0;
    v516 = 0uLL;
    v117 = 1;
  }

  v120 = 0;
  mBuffers = v7->mBuffers;
  *v116 = v117;
  v121 = 2;
  if ((v114 & 0x20) != 0)
  {
    goto LABEL_257;
  }

LABEL_256:
  for (j = 1; v120 < j; j = *(v8 + 61))
  {
    *&v116[v121] = *(*(v8 + 14) + v121 * 4);
    ++v120;
    v121 += 4;
    if ((v114 & 0x20) == 0)
    {
      goto LABEL_256;
    }

LABEL_257:
    ;
  }

  v537 = v9;
  v529 = v7;
  v123 = *(v8 + 67);
  if ((v123 & 0x20) != 0)
  {
    v125 = *(v8 + 71);
    if (v125 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 327;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      v505 = __cxa_allocate_exception(0x10uLL);
      *v505 = &unk_2881B25F8;
      v505[2] = -50;
    }

    MEMORY[0x28223BE20](v115);
    v124 = (&p_mSampleTime - v126);
    bzero(&p_mSampleTime - v126, v127 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v115);
    v124 = &v515;
    v515 = 0;
    v516 = 0uLL;
    v125 = 1;
  }

  v128 = 0;
  v129 = 0;
  v124->mNumberBuffers = v125;
  v130 = v124->mBuffers;
  if ((v123 & 0x20) != 0)
  {
    goto LABEL_267;
  }

LABEL_266:
  for (k = 1; v129 < k; k = *(v8 + 71))
  {
    v132 = v124 + v128;
    *(v132 + 2) = *(*(v8 + 23) + v128 + 16);
    *(v132 + 2) = 1;
    *(v132 + 3) = 4 * LODWORD(v106);
    ++v129;
    v128 += 16;
    if ((v123 & 0x20) == 0)
    {
      goto LABEL_266;
    }

LABEL_267:
    ;
  }

  if ((*(v8 + 8864) & 1) != 0 && (*(v8 + 8872) & 1) != 0 && *(v8 + 439))
  {
    v106 = *&v8;
    v133 = atomic_load(v8 + 2047);
    if (v133)
    {
      v564.mSampleTime = v106;
      *&v554.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV4::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
      v554.mHostTime = &v564;
      *&inInputBufferLists.mSampleTime = &v554;
      caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((*&v106 + 16296), &inInputBufferLists);
      atomic_fetch_add((*&v106 + 16376), -v133);
    }

    v134 = *(*&v106 + 2320);
    v8 = *&v106;
    if (v134 != *(*&v106 + 2328))
    {
      AudioUnitSetParameter(*(*&v106 + 3512), 0x75696F72u, 0, 0, v134, 0);
    }

    v554 = v553;
    LODWORD(v561.mSampleTime) = 512;
    *&inInputBufferLists.mSampleTime = v116;
    *&v564.mSampleTime = v124;
    v135 = *(*&v106 + 3512);
    LODWORD(v106) = v550;
    AudioUnitProcessMultiple(v135, &v561, &v554, v550, 1u, &inInputBufferLists, 1u, &v564);
  }

  else if (*(v8 + 20) || *(v8 + 61) != 2)
  {
    v163 = &v130[v125];
    while (v130 != v163)
    {
      vp::fill(v130, *&v106, 0.0);
      v164 = 16 * *v116;
      for (m = v116 + 2; v164; v164 -= 16)
      {
        MEMORY[0x2743CCD80](v130->mData, 1, *(m + 1), 1, v130->mData, 1, *&v106);
        m += 4;
      }

      ++v130;
    }
  }

  else
  {
    if (v117 >= v125)
    {
      v136 = v125;
    }

    else
    {
      v136 = v117;
    }

    if (v136)
    {
      v137 = (v116 + 4);
      v138 = &v124->mBuffers[0].mData;
      do
      {
        v139 = *(v137 - 1);
        v140 = *(v138 - 1);
        if (v139 >= v140)
        {
          v141 = v140;
        }

        else
        {
          v141 = v139;
        }

        memcpy(*v138, *v137, v141);
        v137 += 2;
        v138 += 2;
        --v136;
      }

      while (v136);
    }
  }

  if ((*(v8 + 8864) & 2) != 0 && (*(v8 + 8872) & 2) != 0)
  {
    v142 = *(v8 + 440);
    if (v142)
    {
      v554 = v553;
      LODWORD(v564.mSampleTime) = 512;
      v143 = MEMORY[0x28223BE20](v142);
      v516 = 0uLL;
      v515 = 0;
      v516 = *(*(v8 + 23) + 8);
      LODWORD(v515) = 1;
      *&inInputBufferLists.mSampleTime = &v515;
      AudioUnitProcessMultiple(v143, &v564, &v554, LODWORD(v106), 1u, &inInputBufferLists, 0, &v561);
    }
  }

  v144 = *(v8 + 48);
  if (v144)
  {
    VoiceProcessor::SampleRateConverter::Convert(v144, &v550, &NumberOfSourceFrames, v124, *(v8 + 24));
    LODWORD(v106) = NumberOfSourceFrames;
    v550 = NumberOfSourceFrames;
    v124 = *(v8 + 24);
  }

  v146 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
  v147 = 0;
  v148 = 0;
  v149 = (LODWORD(v106) / *(v8 + 132));
  inInputBufferLists = v553;
  v150 = v124->mBuffers;
  v543 = &v124->mBuffers[0].mData;
  do
  {
    if (v124->mNumberBuffers - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 435;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      v492 = __cxa_allocate_exception(0x10uLL);
      *v492 = &unk_2881B25F8;
      v492[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v152 = (&p_mSampleTime - v151);
    bzero(&p_mSampleTime - v151, v153 + 24);
    v154 = v124->mNumberBuffers;
    v152->mNumberBuffers = v154;
    if (v154)
    {
      v155 = &v152->mBuffers[0].mData;
      v156 = v543;
      do
      {
        *(v155 - 2) = 1;
        *(v155 - 1) = 4 * v149;
        v157 = *v156;
        v156 += 2;
        *v155 = &v157[4 * v147];
        v155 += 2;
        --v154;
      }

      while (v154);
    }

    v158 = *(v8 + 1108);
    if ((v158 & 4) != 0 && (*(v8 + 8872) & 4) != 0)
    {
      Parameter = *(v8 + 441);
      if (Parameter)
      {
        v554 = inInputBufferLists;
        LODWORD(v564.mSampleTime) = 512;
        Parameter = AudioUnitProcess(Parameter, &v564, &v554, v149, v152);
        if ((v537[3249] & 1) != 0 || v537[3250] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v149, v152, &v554);
        }

        v158 = *(v8 + 1108);
      }
    }

    if ((v158 & 0x40) != 0 && (*(v8 + 8872) & 0x40) != 0)
    {
      Parameter = *(v8 + 445);
      if (Parameter)
      {
        v554 = inInputBufferLists;
        *&v564.mSampleTime = v152;
        v564.mHostTime = 0;
        *&v561.mSampleTime = v152;
        v561.mHostTime = 0;
        v563.mNumberBuffers = 512;
        AudioUnitProcessMultiple(Parameter, &v563.mNumberBuffers, &v554, v149, 2u, &v564, 2u, &v561);
        Parameter = AudioUnitGetParameter(*(v8 + 445), 1u, 0, 0, v8 + 4189);
        v158 = *(v8 + 1108);
      }
    }

    if (v158 & 0x100) != 0 && (*(v8 + 8873))
    {
      Parameter = *(v8 + 447);
      if (Parameter)
      {
        v554 = inInputBufferLists;
        AudioUnitSetParameter(Parameter, 5u, 0, 0, v146, 0);
        LODWORD(v564.mSampleTime) = 512;
        Parameter = AudioUnitProcess(*(v8 + 447), &v564, &v554, v149, v152);
        if ((v537[3249] & 1) != 0 || v537[3250] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v149, v152, &v554);
        }

        v158 = *(v8 + 1108);
      }
    }

    if ((v158 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
    {
      if (*(v8 + 453))
      {
        Parameter = (*(*v8 + 680))(v8, v152, v149, &inInputBufferLists);
        if ((v537[3249] & 1) != 0 || v537[3250] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v149, v152, &inInputBufferLists);
        }
      }
    }

    v147 += v149;
    inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v149;
    ++v148;
  }

  while (v148 < *(v8 + 132));
  v159 = *(v8 + 77);
  if ((v159 & 0x20) != 0)
  {
    v161 = *(v8 + 81);
    v162 = v528;
    v7 = v529;
    v9 = v537;
    if ((v161 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 490;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      v506 = __cxa_allocate_exception(0x10uLL);
      *v506 = &unk_2881B25F8;
      v506[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v160 = (&p_mSampleTime - v166);
    bzero(&p_mSampleTime - v166, v167 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](Parameter);
    v160 = &v515;
    v515 = 0;
    v516 = 0uLL;
    v161 = 1;
    v162 = v528;
    v7 = v529;
    v9 = v537;
  }

  *v160 = v161;
  v169 = *(v8 + 48);
  v168 = *(v8 + 49);
  if (v168)
  {
    if (v169)
    {
      NumberOfSourceFrames = *(v8 + 123);
      v168 = VoiceProcessor::SampleRateConverter::Convert(v168, &v550, &NumberOfSourceFrames, v124, *(v8 + 25));
      v170 = 0;
      v171 = *(v8 + 77);
      v172 = 2;
      v173 = v541;
      if ((v171 & 0x20) != 0)
      {
        goto LABEL_339;
      }

LABEL_338:
      for (n = 1; v170 < n; n = *(v8 + 81))
      {
        *&v160[v172] = *(*(v8 + 25) + v172 * 4);
        ++v170;
        v172 += 4;
        if ((v171 & 0x20) == 0)
        {
          goto LABEL_338;
        }

LABEL_339:
        ;
      }
    }

    else
    {
      v168 = VoiceProcessor::SampleRateConverter::Convert(v168, &v550, &NumberOfSourceFrames, v124, *(v8 + 25));
      v179 = 0;
      v180 = *(v8 + 77);
      v181 = 2;
      v173 = v541;
      if ((v180 & 0x20) != 0)
      {
        goto LABEL_352;
      }

LABEL_351:
      for (ii = 1; v179 < ii; ii = *(v8 + 81))
      {
        *&v160[v181] = *(*(v8 + 25) + v181 * 4);
        ++v179;
        v181 += 4;
        if ((v180 & 0x20) == 0)
        {
          goto LABEL_351;
        }

LABEL_352:
        ;
      }
    }

    v550 = NumberOfSourceFrames;
  }

  else
  {
    v175 = v160 + 2;
    if (v169)
    {
      v176 = 0;
      v173 = v541;
      if ((v159 & 0x20) != 0)
      {
        goto LABEL_346;
      }

LABEL_345:
      for (jj = 1; v176 < jj; jj = *(v8 + 81))
      {
        v178 = *v150++;
        *v175++ = v178;
        ++v176;
        if ((v159 & 0x20) == 0)
        {
          goto LABEL_345;
        }

LABEL_346:
        ;
      }
    }

    else
    {
      v173 = v541;
      if ((v159 & 0x20) != 0)
      {
        goto LABEL_691;
      }

LABEL_690:
      for (kk = 1; v169 < kk; kk = *(v8 + 81))
      {
        v391 = *v150++;
        *v175++ = v391;
        ++v169;
        if ((v159 & 0x20) == 0)
        {
          goto LABEL_690;
        }

LABEL_691:
        ;
      }
    }
  }

  v564 = v553;
  if (!*(v8 + 132))
  {
LABEL_644:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    v359 = DynamicsDSPChannelCount;
    v360 = *(v8 + 1108);
    if ((v360 & 0x200000000) != 0 && (*(v8 + 8876) & 2) != 0)
    {
      v361 = *(v8 + 472);
      if (v361)
      {
        if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_998;
          }

          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 988;
          v507 = MEMORY[0x277D86220];
          goto LABEL_997;
        }

        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v363 = (&p_mSampleTime - v362);
        bzero(&p_mSampleTime - v362, v364 + 24);
        v363->mNumberBuffers = v359;
        memcpy(v363->mBuffers, mBuffers, 16 * v359);
        LODWORD(v554.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v361, &v554, &v553, *(v8 + 123), v363);
        if ((v9[3249] & 1) != 0 || v9[3250] == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v162, v363, &v553);
        }

        v360 = *(v8 + 1108);
      }
    }

    if ((v360 & 0x1000000000) == 0)
    {
      goto LABEL_660;
    }

    if ((*(v8 + 8876) & 0x10) == 0)
    {
      goto LABEL_660;
    }

    v365 = *(v8 + 475);
    if (!v365)
    {
      goto LABEL_660;
    }

    if (v359 - 65 > 0xFFFFFFBF)
    {
      MEMORY[0x28223BE20](DynamicsDSPChannelCount);
      v367 = (&p_mSampleTime - v366);
      bzero(&p_mSampleTime - v366, v368 + 24);
      v367->mNumberBuffers = v359;
      memcpy(v367->mBuffers, mBuffers, 16 * v359);
      LODWORD(v554.mSampleTime) = 512;
      DynamicsDSPChannelCount = AudioUnitProcess(v365, &v554, &v553, *(v8 + 123), v367);
      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
      {
        DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x38u, v162, v367, &v553);
      }

      v360 = *(v8 + 1108);
LABEL_660:
      if ((v360 & 0x2000000000) != 0 && (*(v8 + 8876) & 0x20) != 0 && (DynamicsDSPChannelCount = *(v8 + 476)) != 0)
      {
        if (v359 == v7->mNumberBuffers)
        {
          v554 = v553;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v554, *(v8 + 123), v7);
        }

        else
        {
          v397 = *(v8 + 26);
          if (v397->mNumberBuffers)
          {
            v398 = 0;
            v399 = 16;
            do
            {
              memcpy(*(&v397->mNumberBuffers + v399), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
              ++v398;
              v397 = *(v8 + 26);
              v399 += 16;
            }

            while (v398 < v397->mNumberBuffers);
            DynamicsDSPChannelCount = *(v8 + 476);
          }

          v554 = v553;
          v547.mNumberBuffers = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v547.mNumberBuffers, &v554, *(v8 + 123), v397);
          if ((*(v8 + 8868) & 0x40) != 0 && (*(v8 + 8876) & 0x40) != 0 && (DynamicsDSPChannelCount = *(v8 + 477)) != 0)
          {
            v400 = *(v8 + 580);
            if (v400 != *(v8 + 582))
            {
              AudioUnitSetParameter(DynamicsDSPChannelCount, 0, 0, 0, v400, 0);
              DynamicsDSPChannelCount = *(v8 + 477);
            }

            *&v563.mNumberBuffers = *(v8 + 26);
            *&v562.mNumberBuffers = v7;
            v561 = v553;
            LODWORD(v557) = 512;
            DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v557, &v561, *(v8 + 123), 1u, &v563, 1u, &v562);
            if ((v9[3249] & 1) != 0 || v9[3250] == 1)
            {
              DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v162, v7, &v561);
            }
          }

          else if (v7->mNumberBuffers)
          {
            v401 = 0;
            v402 = &v7->mBuffers[0].mData;
            do
            {
              v403 = *(v8 + 26);
              if (v401 >= *v403)
              {
                v404 = 0;
              }

              else
              {
                v404 = v401;
              }

              DynamicsDSPChannelCount = memcpy(*v402, *&v403[4 * v404 + 4], *(v402 - 1));
              ++v401;
              v402 += 2;
            }

            while (v401 < v7->mNumberBuffers);
          }
        }
      }

      else if ((v360 & 0x20000000000) != 0 && (v369 = *(v8 + 1109), (v369 & 0x20000000000) != 0) && *(v8 + 480))
      {
        if ((v360 & v369 & 0x40000000000) != 0 && *(v8 + 481))
        {
          if (v359 - 65 <= 0xFFFFFFBF)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v554.mSampleTime) = 136315394;
              *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
              WORD2(v554.mHostTime) = 1024;
              *(&v554.mHostTime + 6) = 1061;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
            }

            v513 = __cxa_allocate_exception(0x10uLL);
            *v513 = &unk_2881B25F8;
            v513[2] = -50;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v371 = (&p_mSampleTime - v370);
          bzero(&p_mSampleTime - v370, v372 + 24);
          v373 = 0;
          *v371 = v359;
          v374 = *(v8 + 26);
          v375 = 16 * v359;
          do
          {
            v376 = memcpy(*(v374 + v373 + 16), v7->mBuffers[v373 / 0x10].mData, *(v374 + v373 + 12));
            v374 = *(v8 + 26);
            *&v371[v373 / 4 + 2] = *(v374 + v373 + 8);
            v373 += 16;
          }

          while (v375 != v373);
          *&v561.mSampleTime = v371;
          v377 = *(v8 + 1081);
          if ((v377 - 65) < 0xFFFFFFC0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v554.mSampleTime) = 136315394;
              *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
              WORD2(v554.mHostTime) = 1024;
              *(&v554.mHostTime + 6) = 1073;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
            }

            v514 = __cxa_allocate_exception(0x10uLL);
            *v514 = &unk_2881B25F8;
            v514[2] = -50;
          }

          MEMORY[0x28223BE20](v376);
          v379 = (&p_mSampleTime - v378);
          bzero(&p_mSampleTime - v378, v380 + 24);
          v379->mNumberBuffers = v377;
          v381 = v7 + 1;
          v382 = 8;
          v383 = v377;
          do
          {
            v384 = *&v381->mNumberBuffers;
            v381 = (v381 + 32);
            *(&v379->mNumberBuffers + v382) = v384;
            v382 += 16;
            --v383;
          }

          while (v383);
          *&v563.mNumberBuffers = v379;
          if ((*(v8 + 2261) & 1) != 0 || !*(v8 + 20) && *(v8 + 61) == 2)
          {
            v385 = *(v8 + 580);
            if (v385 != *(v8 + 582))
            {
              AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v385, 0);
            }
          }

          v554 = v553;
          v562.mNumberBuffers = 512;
          AudioUnitProcessMultiple(*(v8 + 481), &v562.mNumberBuffers, &v554, *(v8 + 123), 1u, &v561, 1u, &v563);
          if (v9[3249] & 1) != 0 || (v9[3250])
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v162, v379, &v554);
          }

          v405 = &v7->mBuffers[0].mData;
          do
          {
            memcpy(*v405, v405[2], *(v405 - 1));
            v405 += 4;
            --v377;
          }

          while (v377);
          v8 = v538;
        }

        else if ((*(v8 + 2260) & 1) == 0 && v7->mNumberBuffers >= 2)
        {
          v395 = v7[1].mBuffers;
          v396 = 1;
          do
          {
            memcpy(*v395, v7->mBuffers[0].mData, *(v395 - 1));
            ++v396;
            v395 += 2;
          }

          while (v396 < v7->mNumberBuffers);
        }

        v554 = v553;
        LODWORD(v561.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*(v8 + 480), &v561, &v554, *(v8 + 123), v7);
      }

      else if (v360 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
      {
        v392 = v7->mNumberBuffers;
        if (v7->mNumberBuffers >= 2)
        {
          if (*(v538 + 81) == 1)
          {
            DynamicsDSPChannelCount = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
            v392 = v7->mNumberBuffers;
          }

          if (v392 >= 3)
          {
            v393 = &v7[2];
            v394 = 2;
            do
            {
              bzero(*v393, *(v393 - 1));
              ++v394;
              v393 += 2;
            }

            while (v394 < v7->mNumberBuffers);
          }
        }
      }

      else if ((*(v8 + 2260) & 1) == 0)
      {
        v386 = *(v538 + 81);
        v387 = v386 <= 1 ? 1 : v386;
        if (v387 < v7->mNumberBuffers)
        {
          v388 = &mBuffers[(v387 - 1)];
          v389 = 16 * v387 + 16;
          do
          {
            DynamicsDSPChannelCount = memcpy(*(&v7->mNumberBuffers + v389), v388[1], *(v388 + 1));
            ++v387;
            v389 += 16;
          }

          while (v387 < v7->mNumberBuffers);
        }
      }

      v8 = v538;
      v406 = *(v538 + 1108);
      if ((v406 & 0x100000000000000) == 0 || (v407 = *(v538 + 1109), (v407 & 0x100000000000000) == 0) || !*(v538 + 495))
      {
        if ((v406 & 0x200000000000000) == 0 || (v407 = *(v538 + 1109), (v407 & 0x200000000000000) == 0) || !*(v538 + 496))
        {
          if ((v406 & 0x400000000000000) == 0 || (v407 = *(v538 + 1109), (v407 & 0x400000000000000) == 0) || !*(v538 + 497))
          {
            v424 = 0;
LABEL_772:
            if ((v406 & 0x10000000000000) != 0 && (*(v8 + 8878) & 0x10) != 0)
            {
              DynamicsDSPChannelCount = *(v8 + 491);
              if (DynamicsDSPChannelCount)
              {
                *&v563.mNumberBuffers = v7;
                *&v562.mNumberBuffers = v7;
                v554 = v553;
                v547.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v547.mNumberBuffers, &v554, *(v8 + 123), 1u, &v563, 1u, &v562);
                if ((*(v8 + 8870) & 0x20) != 0 && (*(v8 + 8878) & 0x20) != 0)
                {
                  DynamicsDSPChannelCount = *(v8 + 492);
                  if (DynamicsDSPChannelCount)
                  {
                    v561 = v553;
                    LODWORD(v557) = 512;
                    DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v557, &v561, *(v8 + 123), v7);
                  }
                }

                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Cu, *(v8 + 123), v7, &v554);
                }

                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
            {
              DynamicsDSPChannelCount = *(v8 + 493);
              if (DynamicsDSPChannelCount)
              {
                v554 = v553;
                LODWORD(v561.mSampleTime) = 512;
                DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v554, *(v8 + 123), v7);
                v406 = *(v8 + 1108);
              }
            }

            if (v406 & 0x100000000000000) != 0 && (*(v8 + 8879))
            {
              DynamicsDSPChannelCount = *(v8 + 495);
              if (DynamicsDSPChannelCount)
              {
                if (*(v8 + 1136) == 1 && (v425 = *(v8 + 198)) != 0)
                {
                  ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v425);
                  DynamicsDSPChannelCount = *(v8 + 495);
                  v426 = 2;
                }

                else
                {
                  v426 = 1;
                }

                v427 = *(v8 + 198);
                *&v561.mSampleTime = v7;
                v561.mHostTime = v427;
                *&v563.mNumberBuffers = v7;
                v554 = v553;
                v562.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v562.mNumberBuffers, &v554, *(v8 + 123), v426, &v561, 1u, &v563);
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v162, v7, &v554);
                }

                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
            {
              v428 = *(v8 + 496);
              if (v428)
              {
                v429 = *(v8 + 1081);
                if ((v429 - 65) <= 0xFFFFFFBF)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v554.mSampleTime) = 136315394;
                    *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
                    WORD2(v554.mHostTime) = 1024;
                    *(&v554.mHostTime + 6) = 1258;
                    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
                  }

                  v509 = __cxa_allocate_exception(0x10uLL);
                  *v509 = &unk_2881B25F8;
                  v509[2] = -50;
                }

                MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                v431 = (&p_mSampleTime - v430);
                bzero(&p_mSampleTime - v430, v432 + 24);
                v431->mNumberBuffers = v429;
                v433 = 8;
                v434 = mBuffers;
                do
                {
                  v435 = *v434;
                  v434 += 2;
                  *(&v431->mNumberBuffers + v433) = v435;
                  v433 += 16;
                  --v429;
                }

                while (v429);
                v436 = *(v8 + 198);
                *&v561.mSampleTime = v431;
                v561.mHostTime = v436;
                *&v563.mNumberBuffers = v431;
                v554 = v553;
                v562.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(v428, &v562.mNumberBuffers, &v554, *(v8 + 123), 1u, &v561, 1u, &v563);
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v162, v431, &v554);
                }

                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
            {
              if (*(v8 + 1136) == 1 && (v437 = *(v8 + 198)) != 0)
              {
                DynamicsDSPChannelCount = ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v437);
                v438 = 2;
              }

              else
              {
                v438 = 1;
              }

              v439 = *(v8 + 1081);
              if ((v439 - 65) <= 0xFFFFFFBF)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v554.mSampleTime) = 136315394;
                  *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
                  WORD2(v554.mHostTime) = 1024;
                  *(&v554.mHostTime + 6) = 1285;
                  _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
                }

                v510 = __cxa_allocate_exception(0x10uLL);
                *v510 = &unk_2881B25F8;
                v510[2] = -50;
              }

              MEMORY[0x28223BE20](DynamicsDSPChannelCount);
              v441 = (&p_mSampleTime - v440);
              bzero(&p_mSampleTime - v440, v442 + 24);
              v441->mNumberBuffers = v439;
              v443 = v7 + 1;
              v444 = 8;
              do
              {
                v445 = *&v443->mNumberBuffers;
                v443 = (v443 + 32);
                *(&v441->mNumberBuffers + v444) = v445;
                v444 += 16;
                --v439;
              }

              while (v439);
              v446 = *(v8 + 198);
              *&v561.mSampleTime = v441;
              v561.mHostTime = v446;
              *&v563.mNumberBuffers = v441;
              v554 = v553;
              v562.mNumberBuffers = 512;
              AudioUnitProcessMultiple(*(v8 + 497), &v562.mNumberBuffers, &v554, *(v8 + 123), v438, &v561, 1u, &v563);
              if ((v9[3249] & 1) != 0 || v9[3250] == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v162, v441, &v554);
              }

              v406 = *(v8 + 1108);
            }

            if ((v406 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
            {
              LODWORD(v554.mSampleTime) = 1065353216;
              LODWORD(v561.mSampleTime) = 1065353216;
              if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v447 = *(v8 + 1139), v447 != 0.0))
              {
                v448 = __exp10f(v447 / 20.0);
                *&v561.mSampleTime = v448;
                *&v554.mSampleTime = v448;
              }

              else
              {
                v449 = *(v8 + 1137);
                if (v449 >= -300.0)
                {
                  if (v449 == 0.0)
                  {
                    v448 = 1.0;
                  }

                  else
                  {
                    if (v449 > 60.0)
                    {
                      v449 = 60.0;
                    }

                    v448 = __exp10f(v449 / 20.0);
                    *&v554.mSampleTime = v448;
                  }
                }

                else
                {
                  LODWORD(v554.mSampleTime) = 0;
                  v448 = 0.0;
                }

                v450 = *(v8 + 1138);
                if (v450 >= -300.0)
                {
                  if (v450 != 0.0)
                  {
                    if (v450 > 60.0)
                    {
                      v450 = 60.0;
                    }

                    LODWORD(v561.mSampleTime) = __exp10f(v450 / 20.0);
                  }
                }

                else
                {
                  LODWORD(v561.mSampleTime) = 0;
                }
              }

              if (v448 == 0.0)
              {
                bzero(v7->mBuffers[0].mData, 4 * *(v8 + 123));
              }

              else if (v448 != 1.0)
              {
                MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v554, v7->mBuffers[0].mData, 1, *(v8 + 123));
              }

              if (v7->mNumberBuffers >= 2)
              {
                v451 = 1;
                v452 = 32;
                do
                {
                  if (*&v561.mSampleTime == 0.0)
                  {
                    bzero(*(&v7->mNumberBuffers + v452), 4 * *(v8 + 123));
                  }

                  else if (*&v561.mSampleTime != 1.0)
                  {
                    MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v452), 1, &v561, *(&v7->mNumberBuffers + v452), 1, *(v8 + 123), *&v561.mSampleTime);
                  }

                  ++v451;
                  v452 += 16;
                }

                while (v451 < v7->mNumberBuffers);
              }

              v406 = *(v8 + 1108);
            }

            if ((v406 & 0x80000000000) != 0 && (*(v8 + 8877) & 8) != 0 && *(v8 + 482))
            {
              v453 = *(*(v8 + 2140) + 16);
              v454 = *(v8 + 123);
              if (*(v8 + 17128) == 1)
              {
                v455 = *(v8 + 129);
                v456 = 0.0;
                if (v454 > v455)
                {
                  vDSP_vclr(&v453[v455], 1, (v454 - v455));
                }
              }

              else
              {
                v456 = 1.0;
                vDSP_vclr(v453, 1, v454);
              }

              AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v456, 0);
              if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
              {
                v457 = *(v8 + 404);
                if (v457)
                {
                  LODWORD(v554.mSampleTime) = 0;
                  AudioUnitGetParameter(v457, 9u, 0, 0, &v554);
                  AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v554.mSampleTime, 0);
                }
              }

              v458 = *(v8 + 482);
              v459 = atomic_load(VoiceProcessorV4::mIsOnEar);
              AudioUnitSetParameter(v458, 0x16u, 0, 0, v459, 0);
              v460 = *(v8 + 2140);
              *&v561.mSampleTime = v7;
              v561.mHostTime = v460;
              v554 = v553;
              v562.mNumberBuffers = 512;
              *&v563.mNumberBuffers = v7;
              v461 = *(v8 + 131);
              if ((v9[3249] & 1) != 0 || v9[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v461, v7, &v554), v461 = *(v8 + 131), v460 = *(v8 + 2140), (v9[3249]) || v9[3250] == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v461, v460, &v554);
              }

              AudioUnitProcessMultiple(*(v8 + 482), &v562.mNumberBuffers, &v554, *(v8 + 123), 2u, &v561, 1u, &v563);
              if ((v9[3249] & 1) != 0 || v9[3250] == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, *(v8 + 131), v7, &v554);
              }

              AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
              v406 = *(v8 + 1108);
            }

            if ((v406 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
            {
              v462 = *(v8 + 483);
              if (v462)
              {
                v463 = p_mSampleTime[1];
                *&v554.mSampleTime = *p_mSampleTime;
                *&v554.mRateScalar = v463;
                v464 = p_mSampleTime[3];
                *&v554.mSMPTETime.mSubframes = p_mSampleTime[2];
                *&v554.mSMPTETime.mHours = v464;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v462, &v561, &v554, *(v8 + 123), v7);
                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
            {
              v465 = *(v8 + 484);
              if (v465)
              {
                *&v561.mSampleTime = v7;
                *&v563.mNumberBuffers = v7;
                v466 = p_mSampleTime[1];
                *&v554.mSampleTime = *p_mSampleTime;
                *&v554.mRateScalar = v466;
                v467 = p_mSampleTime[3];
                *&v554.mSMPTETime.mSubframes = p_mSampleTime[2];
                *&v554.mSMPTETime.mHours = v467;
                v562.mNumberBuffers = 512;
                AudioUnitProcessMultiple(v465, &v562.mNumberBuffers, &v554, *(v8 + 123), 1u, &v561, 1u, &v563);
                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x4000000000000000) != 0 && (*(v8 + 8879) & 0x40) != 0)
            {
              v468 = *(v8 + 501);
              if (v468)
              {
                v554 = v553;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v468, &v561, &v554, *(v8 + 123), v7);
                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
            {
              v469 = *(v8 + 485);
              if (v469)
              {
                v554 = v553;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v469, &v561, &v554, *(v8 + 123), v7);
                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x800000000000) != 0)
            {
              v470 = v424;
            }

            else
            {
              v470 = 1;
            }

            if ((v470 & 1) == 0 && (*(v8 + 8877) & 0x80) != 0)
            {
              v471 = *(v8 + 486);
              if (v471)
              {
                v554 = v553;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v471, &v561, &v554, *(v8 + 123), v7);
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v554);
                }

                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
            {
              v472 = *(v8 + 489);
              if (v472)
              {
                v554 = v553;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v472, &v561, &v554, *(v8 + 123), v7);
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, *(v8 + 123), v7, &v554);
                }

                v406 = *(v8 + 1108);
              }
            }

            if ((v406 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
            {
              v473 = *(v8 + 490);
              if (v473)
              {
                v474 = *(v8 + 19);
                if (v474 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v474) & 1) != 0)
                {
                  v554 = v553;
                  LODWORD(v561.mSampleTime) = 512;
                  AudioUnitProcess(v473, &v561, &v554, *(v8 + 123), v7);
                  if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, *(v8 + 123), v7, &v554);
                  }
                }
              }
            }

            if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v162, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v162, v7, &v553);
            }

            v475 = *(v8 + 1993);
            if (AudioIssueDetectorLibraryLoader(void)::once != -1)
            {
              dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
            }

            if (AudioIssueDetectorLibraryLoader(void)::libSym)
            {
              AudioIssueDetectorLibraryLoader(void)::libSym(v475, 70, 0, v7, v162, &v553);
            }

            if (*(v8 + 1135) == 1 && (v9[3528] & 1) == 0)
            {
              VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v553, 0);
            }

            if (v9[3249] == 1)
            {
              VoiceProcessorV2::LoopBackRead(v8, v162, v7);
            }

            goto LABEL_928;
          }
        }
      }

      if ((v406 & v407 & 0x800000000000) != 0)
      {
        DynamicsDSPChannelCount = *(v538 + 486);
        if (DynamicsDSPChannelCount)
        {
          v554 = v553;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v554, *(v538 + 123), v7);
          if ((v9[3249] & 1) != 0 || v9[3250] == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v554);
          }

          v406 = *(v8 + 1108);
        }
      }

      if (v406 & 0x1000000000000) != 0 && (*(v8 + 8878))
      {
        v408 = *(v8 + 487);
        if (v408)
        {
          v409 = *(v8 + 1081);
          if ((v409 - 65) <= 0xFFFFFFBF)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1010;
            }

            LODWORD(v554.mSampleTime) = 136315394;
            *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v554.mHostTime) = 1024;
            *(&v554.mHostTime + 6) = 1168;
            v511 = MEMORY[0x277D86220];
            goto LABEL_1009;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v411 = (&p_mSampleTime - v410);
          bzero(&p_mSampleTime - v410, v412 + 24);
          v411->mNumberBuffers = v409;
          v413 = 8;
          v414 = mBuffers;
          do
          {
            v415 = *v414;
            v414 += 2;
            *(&v411->mNumberBuffers + v413) = v415;
            v413 += 16;
            --v409;
          }

          while (v409);
          v554 = v553;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v408, &v561, &v554, *(v8 + 123), v411);
          if ((v9[3249] & 1) != 0 || v9[3250] == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, *(v8 + 123), v411, &v554);
          }

          v406 = *(v8 + 1108);
        }
      }

      if ((v406 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v416 = *(v8 + 488)) == 0)
      {
LABEL_770:
        v424 = 1;
        goto LABEL_772;
      }

      v417 = *(v8 + 1081);
      if ((v417 - 65) > 0xFFFFFFBF)
      {
        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v419 = (&p_mSampleTime - v418);
        bzero(&p_mSampleTime - v418, v420 + 24);
        v419->mNumberBuffers = v417;
        v421 = v7 + 1;
        v422 = 8;
        do
        {
          v423 = *&v421->mNumberBuffers;
          v421 = (v421 + 32);
          *(&v419->mNumberBuffers + v422) = v423;
          v422 += 16;
          --v417;
        }

        while (v417);
        v554 = v553;
        LODWORD(v561.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v416, &v561, &v554, *(v8 + 123), v419);
        if ((v9[3249] & 1) != 0 || v9[3250] == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, *(v8 + 123), v419, &v554);
        }

        v406 = *(v8 + 1108);
        goto LABEL_770;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_1010:
        v512 = __cxa_allocate_exception(0x10uLL);
        *v512 = &unk_2881B25F8;
        v512[2] = -50;
      }

      LODWORD(v554.mSampleTime) = 136315394;
      *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
      WORD2(v554.mHostTime) = 1024;
      *(&v554.mHostTime + 6) = 1185;
      v511 = MEMORY[0x277D86220];
LABEL_1009:
      _os_log_impl(&dword_2724B4000, v511, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      goto LABEL_1010;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_998:
      v508 = __cxa_allocate_exception(0x10uLL);
      *v508 = &unk_2881B25F8;
      v508[2] = -50;
    }

    LODWORD(v554.mSampleTime) = 136315394;
    *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
    WORD2(v554.mHostTime) = 1024;
    *(&v554.mHostTime + 6) = 1001;
    v507 = MEMORY[0x277D86220];
LABEL_997:
    _os_log_impl(&dword_2724B4000, v507, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
    goto LABEL_998;
  }

  v542 = 0;
  v183 = 0;
  v543 = (v8 + 3512);
  v521 = (v8 + 2760);
  v184 = v162;
  v525 = &v173->mBuffers[0].mData;
  v526 = (v160 + 4);
  v527 = &v539->mBuffers[0].mData;
  v523 = &v7->mBuffers[0].mData;
  v524 = &v533->mBuffers[0].mData;
  v11 = 1;
  v520 = -5000.0;
  while (1)
  {
    v185 = *(v8 + 308);
    v530 = v183;
    if ((v185 & 0x20) != 0)
    {
      v189 = *(v8 + 81);
      if ((v189 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 526;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
        }

        v503 = __cxa_allocate_exception(0x10uLL);
        *v503 = &unk_2881B25F8;
        v503[2] = -50;
      }

      MEMORY[0x28223BE20](v168);
      v188 = (&p_mSampleTime - v190);
      bzero(&p_mSampleTime - v190, v191 + 24);
      v187 = v541;
    }

    else
    {
      v186 = MEMORY[0x28223BE20](v168);
      v188 = &v515;
      v515 = 0;
      v516 = 0uLL;
      v189 = 1;
    }

    *v188 = v189;
    v192 = v533;
    if (v187)
    {
      v193 = v187->mNumberBuffers;
      if (v187->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 528;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
        }

        v496 = __cxa_allocate_exception(0x10uLL);
        *v496 = &unk_2881B25F8;
        v496[2] = -50;
      }
    }

    else
    {
      v193 = 1;
    }

    MEMORY[0x28223BE20](v186);
    v195 = (&p_mSampleTime - v194);
    bzero(&p_mSampleTime - v194, v196 + 24);
    v536 = v195;
    *v195 = v193;
    if (v192)
    {
      v198 = v192->mNumberBuffers;
      if (v192->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 531;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
        }

        v498 = __cxa_allocate_exception(0x10uLL);
        *v498 = &unk_2881B25F8;
        v498[2] = -50;
      }
    }

    else
    {
      v198 = 1;
    }

    MEMORY[0x28223BE20](v197);
    v200 = (&p_mSampleTime - v199);
    bzero(&p_mSampleTime - v199, v201 + 24);
    v535 = v200;
    *v200 = v198;
    if (v539)
    {
      v203 = v539->mNumberBuffers;
      if (v539->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 534;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
        }

        v500 = __cxa_allocate_exception(0x10uLL);
        *v500 = &unk_2881B25F8;
        v500[2] = -50;
      }
    }

    else
    {
      v203 = 1;
    }

    MEMORY[0x28223BE20](v202);
    v205 = (&p_mSampleTime - v204);
    bzero(&p_mSampleTime - v204, v206 + 24);
    *v205 = v203;
    v208 = *(v8 + 2260);
    v209 = *(v8 + 204);
    v540 = v188;
    if (v208 == 1)
    {
      if (!v209)
      {
        goto LABEL_384;
      }

      if (!*v209)
      {
        goto LABEL_382;
      }

      v210 = 0;
      v211 = (v209 + 4);
      do
      {
        bzero(*v211, *(v211 - 1));
        ++v210;
        v211 += 2;
      }

      while (v210 < *v209);
      v209 = *(v8 + 204);
      v192 = v533;
    }

    if (v209)
    {
LABEL_382:
      v212 = *v209;
      if ((*v209 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v554.mSampleTime) = 136315394;
          *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v554.mHostTime) = 1024;
          *(&v554.mHostTime + 6) = 539;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
        }

        v502 = __cxa_allocate_exception(0x10uLL);
        *v502 = &unk_2881B25F8;
        v502[2] = -50;
      }

      goto LABEL_385;
    }

LABEL_384:
    v212 = 1;
LABEL_385:
    MEMORY[0x28223BE20](v207);
    v214 = (&p_mSampleTime - v213);
    bzero(&p_mSampleTime - v213, v215 + 24);
    v534 = v214;
    *v214 = v212;
    v217 = v7->mNumberBuffers;
    if ((v217 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 541;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      v493 = __cxa_allocate_exception(0x10uLL);
      *v493 = &unk_2881B25F8;
      v493[2] = -50;
    }

    MEMORY[0x28223BE20](v216);
    v219 = &p_mSampleTime - v218;
    bzero(&p_mSampleTime - v218, v220 + 24);
    *v219 = v217;
    v221 = *v540;
    if (v221)
    {
      v222 = 4 * *(v8 + 131);
      v223 = v542;
      v224 = v540 + 4;
      v225 = v526;
      do
      {
        *(v224 - 2) = 1;
        *(v224 - 1) = v222;
        v226 = *v225;
        v225 += 2;
        *v224 = v226 + 4 * v223;
        v224 += 2;
        --v221;
      }

      while (v221);
    }

    v227 = *v536;
    v228 = v541;
    if (v227)
    {
      v229 = 4 * *(v8 + 131);
      v230 = v542;
      v231 = (v536 + 4);
      v232 = v525;
      do
      {
        *(v231 - 2) = 1;
        *(v231 - 1) = v229;
        if (v228)
        {
          v233 = *v232 + 4 * v230;
        }

        else
        {
          v233 = 0;
        }

        *v231 = v233;
        v231 += 2;
        v232 += 2;
        --v227;
      }

      while (v227);
    }

    v234 = *v535;
    if (v234)
    {
      v235 = 4 * *(v8 + 131);
      v236 = v542;
      v237 = (v535 + 4);
      v238 = v524;
      do
      {
        *(v237 - 2) = 1;
        *(v237 - 1) = v235;
        if (v192)
        {
          v239 = *v238 + 4 * v236;
        }

        else
        {
          v239 = 0;
        }

        *v237 = v239;
        v237 += 2;
        v238 += 2;
        --v234;
      }

      while (v234);
    }

    v240 = *v205;
    v241 = v539;
    if (v240)
    {
      v242 = 4 * *(v8 + 131);
      v243 = v542;
      v244 = (v205 + 4);
      v245 = v527;
      do
      {
        *(v244 - 2) = 1;
        *(v244 - 1) = v242;
        if (v241)
        {
          v246 = *v245 + 4 * v243;
        }

        else
        {
          v246 = 0;
        }

        *v244 = v246;
        v244 += 2;
        v245 += 2;
        --v240;
      }

      while (v240);
    }

    if (v217)
    {
      v247 = 4 * *(v8 + 131);
      v248 = v542;
      v249 = (v219 + 16);
      v250 = v523;
      do
      {
        *(v249 - 2) = 1;
        *(v249 - 1) = v247;
        if (v7)
        {
          v251 = *v250 + 4 * v248;
        }

        else
        {
          v251 = 0;
        }

        *v249 = v251;
        v249 += 2;
        v250 += 2;
        --v217;
      }

      while (v217);
    }

    if (v212)
    {
      v252 = 4 * *(v8 + 131);
      v253 = v542;
      v254 = v212;
      v255 = v209 + 4;
      v256 = v534 + 2;
      do
      {
        *(v256 - 2) = 1;
        *(v256 - 1) = v252;
        if (v209)
        {
          v257 = *v255 + 4 * v253;
        }

        else
        {
          v257 = 0;
        }

        *v256 = v257;
        v256 += 2;
        v255 += 2;
        --v254;
      }

      while (v254);
    }

    if (v241 && (*(v8 + 2260) & 1) != 0)
    {
      v258 = v539->mNumberBuffers >= v212 ? v212 : v539->mNumberBuffers;
      if (v258)
      {
        v259 = (v534 + 2);
        v260 = v527;
        do
        {
          v261 = *(v260 - 1);
          v262 = *(v259 - 1);
          if (v261 >= v262)
          {
            v263 = v262;
          }

          else
          {
            v263 = v261;
          }

          memcpy(*v259, *v260, v263);
          v260 += 2;
          v259 += 2;
          --v258;
        }

        while (v258);
      }
    }

    if (v541)
    {
      v264 = v536;
    }

    else
    {
      v264 = 0;
    }

    MonoABL = GetMonoABL(v264, &v563, *(v8 + 131));
    if (v533)
    {
      v266 = v535;
    }

    else
    {
      v266 = 0;
    }

    v267 = GetMonoABL(v266, &v562, *(v8 + 131));
    if (v539)
    {
      v268 = v205;
    }

    else
    {
      v268 = 0;
    }

    v532 = GetMonoABL(v268, &v547, *(v8 + 131));
    if ((*(*v8 + 112))(v8) >= 7)
    {
      if (v537[3928] == 1)
      {
        v269 = *(v8 + 1108);
        if ((v269 & 0x400) != 0)
        {
          v270 = *(v8 + 1109);
          if ((v270 & 0x400) != 0)
          {
            if (*(v8 + 449))
            {
              if ((v269 & v270 & 2) != 0)
              {
                v271 = *(v8 + 440);
                if (v271)
                {
                  LODWORD(v554.mSampleTime) = 0;
                  AudioUnitGetParameter(v271, 0x73707062u, 0, 0, &v554);
                  AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v554.mSampleTime, 0);
                }
              }
            }
          }
        }
      }

      v272 = 0;
      *&v554.mSampleTime = 10;
      v554.mHostTime = v540;
      *&v554.mRateScalar = 11;
      v554.mWordClockTime = v532;
      *&v554.mSMPTETime.mSubframes = 12;
      *&v554.mSMPTETime.mType = MonoABL;
      *&v554.mSMPTETime.mHours = 13;
      *&v554.mFlags = v267;
      do
      {
        v273 = *(&v554.mSampleTime + v272);
        v274 = *(&v554.mHostTime + v272);
        if (!v274)
        {
          v274 = *(v8 + 203);
          if (v274->mNumberBuffers)
          {
            v275 = 0;
            v276 = &v274->mBuffers[0].mData;
            do
            {
              bzero(*v276, *(v276 - 1));
              ++v275;
              v276 += 2;
            }

            while (v275 < v274->mNumberBuffers);
            v8 = v538;
            v274 = *(v538 + 203);
          }
        }

        v277 = VoiceProcessorV2::VPUseAUInProcess(v8, v273, 0);
        if (v274)
        {
          v278 = v277;
        }

        else
        {
          v278 = 0;
        }

        if (v278)
        {
          v561 = v564;
          LODWORD(v557) = 512;
          AudioUnitProcess(v543[v273], &v557, &v561, *(v8 + 131), v274);
        }

        v272 += 16;
      }

      while (v272 != 64);
    }

    v279 = *(v8 + 1108);
    if ((v279 & 0x40000000) == 0)
    {
      goto LABEL_461;
    }

    v280 = *(v8 + 1109);
    if ((v280 & 0x40000000) == 0)
    {
      goto LABEL_461;
    }

    v281 = 0;
    if (!*(v8 + 469) || (v279 & v280 & 0x80000000) == 0)
    {
      goto LABEL_462;
    }

    if (*(v8 + 470) && *v521 && *(*v521 + 80))
    {
      vp::Audio_Buffer::prepare(v521, *(v8 + 131));
      v299 = *(v8 + 345);
      if (v299)
      {
        v300 = *(v299 + 80);
      }

      else
      {
        v300 = 0;
      }

      if (*v300)
      {
        v354 = 0;
        v355 = (v300 + 4);
        do
        {
          bzero(*v355, *(v355 - 1));
          ++v354;
          v355 += 2;
        }

        while (v354 < *v300);
        v299 = *v521;
        v8 = v538;
      }

      if (v299)
      {
        v281 = *(v299 + 80);
      }

      else
      {
        v281 = 0;
      }

      LODWORD(v561.mSampleTime) = 512;
      v554 = v564;
      AudioUnitSetParameter(*(v8 + 469), 1u, 0, 0, (*(v8 + 3152) + -1.0) * 24.0, 0);
      AudioUnitProcess(*(v8 + 469), &v561, &v554, *(v8 + 131), v281);
      v356 = *(v8 + 131);
      if ((v537[3249] & 1) != 0 || v537[3250] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, *(v8 + 131), v281, &v564);
        v356 = *(v8 + 131);
      }

      v554 = v564;
      LODWORD(v561.mSampleTime) = 512;
      AudioUnitProcess(*(v8 + 470), &v561, &v554, v356, v281);
      v357 = *(v8 + 131);
      if ((v537[3249] & 1) != 0 || v537[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v357, v281, &v554), v357 = *(v8 + 131), (v537[3249]) || v537[3250] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v357, v281, &v554);
      }

      v279 = *(v8 + 1108);
    }

    else
    {
LABEL_461:
      v281 = 0;
    }

LABEL_462:
    if (*(v8 + 2260))
    {
      v282 = v219;
    }

    else
    {
      v282 = v540;
    }

    if (*(v8 + 2260))
    {
      v283 = v534;
    }

    else
    {
      v283 = v532;
    }

    if (v283)
    {
      v284 = v283;
    }

    else
    {
      v284 = v281;
    }

    v531 = v284;
    if ((v279 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && v283)
    {
      v285 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
      *(v8 + 1121) = v285;
      LODWORD(v554.mSampleTime) = __exp10f(v285 / 20.0);
      v286 = *v283++;
      for (mm = 16 * v286; mm; mm -= 16)
      {
        MEMORY[0x2743CCE20](v283[1], 1, &v554, v283[1], 1, *(v8 + 131));
        v283 += 2;
      }

      v279 = *(v8 + 1108);
    }

    if ((v279 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
    {
      (*(*v8 + 688))(v8, v540, v534);
      v279 = *(v8 + 1108);
    }

    if ((v279 & 0x8000) != 0 && (v288 = *(v8 + 1109), (v288 & 0x8000) != 0) && (v289 = *(v8 + 454)) != 0)
    {
      v290 = *(v8 + 2260);
      v554 = v564;
      LODWORD(v559) = 512;
      v291 = v536;
      if (((v541 != 0) & v290) == 0)
      {
        v291 = MonoABL;
      }

      *&v561.mSampleTime = v540;
      v561.mHostTime = v291;
      v292 = *&v535;
      if (((v533 != 0) & v290) == 0)
      {
        v292 = *&v267;
      }

      v293 = v534;
      if (((v539 != 0) & v290) == 0)
      {
        v293 = v532;
      }

      v561.mRateScalar = v292;
      v561.mWordClockTime = v293;
      *&v561.mSMPTETime.mSubframes = v281;
      if ((v279 & v288 & 2) != 0)
      {
        v301 = *(v8 + 440);
        v294 = v537;
        v295 = v531;
        if (v301 && ((v290 & 1) != 0 || v537[3929] == 1))
        {
          LODWORD(v557) = 0;
          v302 = AudioUnitGetParameter(v301, 0x73707062u, 0, 0, &v557);
          v304 = *&v557 == 1.0 && v302 == 0;
          LODWORD(v545) = v304;
          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v545, 4u);
          v289 = *(v8 + 454);
        }
      }

      else
      {
        v294 = v537;
        v295 = v531;
      }

      v557 = v282;
      *&v558 = v295;
      AudioUnitProcessMultiple(v289, &v559, &v554, *(v8 + 131), 5u, &v561, 2u, &v557);
      v305 = *(v8 + 131);
      if ((v294[3249] & 1) != 0 || v294[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v305, v282, &v554), v305 = *(v8 + 131), (v294[3249]) || v294[3250] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v305, v295, &v554);
      }
    }

    else
    {
      if (MonoABL)
      {
        LODWORD(v554.mSampleTime) = 1055175620;
        v283 = (v282 + 2);
        for (nn = 16 * *v282; nn; nn -= 16)
        {
          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v554, v283[1], 1, v283[1], 1, *(v8 + 131));
          v283 += 2;
        }
      }

      v294 = v537;
      if (v267)
      {
        v283 = (v282 + 2);
        for (i1 = 16 * *v282; i1; i1 -= 16)
        {
          MEMORY[0x2743CCD80](v267->mBuffers[0].mData, 1, v283[1], 1, v283[1], 1, *(v8 + 131));
          v283 += 2;
        }
      }

      v295 = v531;
      if (v281)
      {
        if (v281 != v531)
        {
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v554, v531);
          v283 = (*&v554.mSampleTime + 8);
          for (i2 = 16 * **&v554.mSampleTime; i2; i2 -= 16)
          {
            MEMORY[0x2743CCD80](*(v281 + 16), 1, v283[1], 1, v283[1], 1, *(v8 + 131));
            v283 += 2;
          }
        }
      }
    }

    v306 = *(v8 + 1108);
    if ((v306 & 0x8000) == 0)
    {
      v7 = v529;
LABEL_533:
      if ((v306 & 0x800000) == 0)
      {
        goto LABEL_540;
      }

LABEL_534:
      if ((*(v8 + 8874) & 0x80) != 0)
      {
        v307 = *(v8 + 462);
        if (v307)
        {
          v554 = v564;
          LODWORD(v561.mSampleTime) = 512;
          AudioUnitProcess(v307, &v561, &v554, *(v8 + 131), v282);
          if ((v294[3249] & 1) != 0 || v294[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v282, &v554);
          }

          v306 = *(v8 + 1108);
        }
      }

      goto LABEL_540;
    }

    v7 = v529;
    if ((*(v8 + 8873) & 0x80) == 0 || !*(v8 + 454))
    {
      goto LABEL_533;
    }

    if (*(v8 + 2260) == 1)
    {
      (*(*v8 + 664))(v8, v282, &v564);
      v306 = *(v8 + 1108);
      v7 = v529;
      v294 = v537;
      v295 = v531;
    }

    if ((v306 & 0x800000) != 0)
    {
      goto LABEL_534;
    }

LABEL_540:
    if (v306 & 0x1000000) != 0 && (*(v8 + 8875))
    {
      v308 = *(v8 + 463);
      if (v308)
      {
        v309 = *(v8 + 580);
        if (v309 != *(v8 + 582))
        {
          AudioUnitSetParameter(v308, 1u, 0, 0, v309, 0);
          v308 = *(v8 + 463);
        }

        v554 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v308, &v561, &v554, *(v8 + 131), v282);
        v306 = *(v8 + 1108);
      }
    }

    if ((v306 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0)
    {
      v310 = *(v8 + 464);
      if (v310)
      {
        v554 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v310, &v561, &v554, *(v8 + 131), v282);
        goto LABEL_582;
      }
    }

    if ((v306 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0)
    {
      v311 = *(v8 + 465);
      if (v311)
      {
        v312 = *(v8 + 199);
        if (v312->mNumberBuffers)
        {
          v283 = 0;
          v313 = *(v8 + 81) - 1;
          v314 = v282 + 2;
          v315 = 16;
          do
          {
            if (v313 >= v283)
            {
              v316 = v283;
            }

            else
            {
              v316 = v313;
            }

            memcpy(*(&v312->mNumberBuffers + v315), *&v314[4 * v316 + 2], 4 * *(v8 + 131));
            v283 = (v283 + 1);
            v312 = *(v8 + 199);
            v315 += 16;
          }

          while (v283 < v312->mNumberBuffers);
          v311 = *(v8 + 465);
          v295 = v531;
        }

        v554 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v311, &v561, &v554, *(v8 + 131), v312);
        v282 = *(v8 + 199);
        goto LABEL_581;
      }
    }

    if ((v306 & 0x200000) != 0 && (*(v8 + 8874) & 0x20) != 0 && *(v8 + 460))
    {
      break;
    }

    v326 = 1.0;
    if ((*(v8 + 2260) & 1) == 0)
    {
      v326 = *(v8 + 3155);
    }

    LODWORD(v554.mSampleTime) = __exp10f(((v326 * 32.0) + -32.0) / 20.0);
    v327 = v282 + 2;
    for (i3 = 16 * *v282; i3; i3 -= 16)
    {
      MEMORY[0x2743CCE20](*(v327 + 1), 1, &v554, *(v327 + 1), 1, *(v8 + 131));
      v327 += 4;
    }

    if ((v294[3249] & 1) != 0 || v294[3250] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v282, &v564);
    }

LABEL_582:
    if (!v295 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
    {
      if (v294[3249] == 1)
      {
        v329 = *(v8 + 1589);
        if (v329)
        {
          if (*v282 != *v219)
          {
            if (VPTimestampLogScope(void)::once != -1)
            {
              dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
            }

            CALegacyLog::log(v329, 3, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 930, "ProcessDownlinkAudio", "**** compressedVoiceABL->mNumberBuffers != theOutputData.mNumberBuffers in process %u != %u ****", *v282, *v219);
          }
        }
      }

      v330 = *v219;
      if (*v219 >= *v282)
      {
        v330 = *v282;
      }

      if (v330)
      {
        v331 = 0;
        v332 = 0;
        do
        {
          v333 = v282[v331 + 3];
          v334 = *&v219[v331 * 4 + 12];
          if (v333 >= v334)
          {
            v335 = v334;
          }

          else
          {
            v335 = v333;
          }

          memcpy(*&v219[v331 * 4 + 16], *&v282[v331 + 4], v335);
          ++v332;
          LODWORD(v336) = *v219;
          if (*v219 >= *v282)
          {
            v336 = *v282;
          }

          else
          {
            v336 = v336;
          }

          v331 += 4;
        }

        while (v332 < v336);
      }

      goto LABEL_601;
    }

    v345 = *(v8 + 2260);
    if (v345 == 1)
    {
      v346 = *(v8 + 91);
      v347 = *v282;
LABEL_615:
      if (v347)
      {
        v348 = 0;
        v349 = v346 - 1;
        v350 = v295->mBuffers;
        v351 = 4;
        do
        {
          if (v349 >= v348)
          {
            v352 = v348;
          }

          else
          {
            v352 = v349;
          }

          MEMORY[0x2743CCD80](*&v282[v351], 1, v350[v352].mData, 1, *&v219[v351 * 4], 1, *(v8 + 131));
          ++v348;
          v351 += 4;
        }

        while (v348 < *v282);
      }

      goto LABEL_601;
    }

    v347 = *v282;
    v346 = 1;
    if ((v345 & 1) != 0 || v347 == 1)
    {
      goto LABEL_615;
    }

      ;
    }

LABEL_601:
    v337 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    if ((v337 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v554.mSampleTime) = 136315394;
        *(&v554.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v554.mHostTime) = 1024;
        *(&v554.mHostTime + 6) = 959;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v554, 0x12u);
      }

      v494 = __cxa_allocate_exception(0x10uLL);
      *v494 = &unk_2881B25F8;
      v494[2] = -50;
    }

    v338 = v337;
    MEMORY[0x28223BE20](v337);
    v340 = (&p_mSampleTime - v339);
    bzero(&p_mSampleTime - v339, v341 + 24);
    v340->mNumberBuffers = v338;
    v168 = memcpy(v340->mBuffers, v219 + 8, 16 * v338);
    v9 = v537;
    v162 = v528;
    if ((v537[3249] & 1) != 0 || v537[3250] == 1)
    {
      v168 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, *(v8 + 131), v340, &v564);
    }

    v342 = v530;
    if (*(v8 + 8868) & 1) != 0 && (*(v8 + 8876))
    {
      v168 = *(v8 + 471);
      if (v168)
      {
        v343 = v530;
        v554 = v564;
        LODWORD(v561.mSampleTime) = 512;
        v168 = AudioUnitProcess(v168, &v561, &v554, *(v8 + 131), v340);
        v342 = v343;
      }
    }

    v344 = *(v8 + 131);
    v564.mSampleTime = v564.mSampleTime + v344;
    v542 += v344;
    v183 = v342 + 1;
    if ((v342 + 1) >= *(v8 + 132))
    {
      goto LABEL_644;
    }
  }

  v546 = 0;
  v545 = 0;
  v317 = *(v8 + 3153);
  v318 = *(v8 + 3154);
  if (v294[3249] == 1)
  {
    v319 = *(v8 + 3155);
    LODWORD(v545) = *(v8 + 3153);
    *(&v545 + 1) = v318;
    v546 = v319;
    VoiceProcessorV2::WriteControlDataToFile(v8, &v545, 0xCu, 0x34u);
  }

  v320 = *v522;
  v321 = (v318 - v317) / (v184 / *v522);
  v322 = 2000.0;
  if (v321 <= 2000.0)
  {
    v322 = v321;
    if (v321 < v520)
    {
      v322 = v520;
    }
  }

  v283 = v8;
  v323 = *(v8 + 131);
  AudioUnitSetParameter(v283[460], 5u, 0, 0, 0.0, 0);
  v324 = v323 / v320 * v322;
  *(v283 + 3153) = v317 + (v323 * (v324 / v323));
  v8 = v283;
  if ((*(v283 + 8866) & 0x40) != 0 && (*(v283 + 8874) & 0x40) != 0 && v283[461])
  {
    v554 = v564;
    v544 = 512;
    v560 = v295;
    *&v561.mSampleTime = 1;
    *&v561.mHostTime = *(v282 + 2);
    v559 = &v561;
    v558 = 0uLL;
    v557 = 1;
    v325 = v283[199];
    v283 = &v557;
    v558 = *(v325 + 8);
    v556 = &v557;
    AudioUnitProcessMultiple(*(v8 + 460), &v544, &v554, *(v8 + 131), 2u, &v559, 1u, &v556);
    v554 = v564;
    v544 = 512;
    v560 = v295;
    *&v561.mSampleTime = 1;
    *&v561.mHostTime = *&v282[4 * (*(v8 + 81) - 1) + 2];
    v559 = &v561;
    v558 = *(*(v8 + 199) + 24);
    v556 = &v557;
    v557 = 1;
    AudioUnitProcessMultiple(*(v8 + 461), &v544, &v554, *(v8 + 131), 2u, &v559, 1u, &v556);
    v282 = *(v8 + 199);
    v295 = v531;
  }

  else
  {
    v554 = v564;
    LODWORD(v559) = 512;
    *&v561.mSampleTime = v282;
    v561.mHostTime = v295;
    v557 = v282;
    AudioUnitProcessMultiple(v283[460], &v559, &v554, *(v283 + 131), 2u, &v561, 1u, &v557);
  }

LABEL_581:
  if (v282)
  {
    goto LABEL_582;
  }

  v557 = 0;
  v555 = 0u;
  memset(&v554, 0, sizeof(v554));
  v476 = MEMORY[0x277D86220];
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  LODWORD(v561.mSampleTime) = 134217984;
  *(&v561.mSampleTime + 4) = 0.0;
  LODWORD(v517) = 12;
  *(&v516 + 1) = &v561;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_959:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_934:
  v477 = v283 * 0.0000000416666667 - v12;
  CALegacyLog::log(v476, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1499, "ProcessDownlinkAudio", "DL %f %f %f", v553.mSampleTime, v12, v477);
  v478 = *(v8 + 123);
  v479 = *(v8 + 42);
  if (v477 >= v478 / v479)
  {
    v480 = *(v8 + 1589);
    if (*(v219 + 423) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v480, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1502, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v477);
    v478 = *(v8 + 123);
    v479 = *(v8 + 42);
  }

  if (v12 - *(v8 + 1984) > (*(v8 + 296) + v478) / v479)
  {
    v481 = *(v8 + 1589);
    if (*(v219 + 423) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v481, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1505, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
  }

  *(v8 + 1984) = v12;
LABEL_943:
  if (v11)
  {
    if (*(v8 + 1656) & 1) != 0 || (v482 = FadeInOverFewFrames(*(v8 + 205), v7, *(v8 + 412), *(v8 + 413)), *(v8 + 1656) = v482, *(v8 + 412) = HIDWORD(v482), (v482))
    {
      v483 = *(v8 + 205);
      v484 = v7->mNumberBuffers >= *v483 ? *v483 : v7->mNumberBuffers;
      if (v484)
      {
        v485 = &v7->mBuffers[0].mData;
        v486 = (v483 + 4);
        do
        {
          v487 = *(v485 - 1);
          v488 = *(v486 - 1);
          if (v487 >= v488)
          {
            v489 = v488;
          }

          else
          {
            v489 = v487;
          }

          memcpy(*v486, *v485, v489);
          v485 += 2;
          v486 += 2;
          --v484;
        }

        while (v484);
      }
    }
  }

  else
  {
    *(v8 + 412) = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  v490 = *MEMORY[0x277D85DE8];
  return 0;
}