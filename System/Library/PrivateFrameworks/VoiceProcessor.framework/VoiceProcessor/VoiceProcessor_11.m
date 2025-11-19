void sub_272588FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, int a38, __int16 a39, int a40, int a41, char a42, char a43, char a44)
{
  atomic_fetch_add((v44 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a29);
  _Unwind_Resume(a1);
}

void AudioIssueDetectorClientSetUplinkMute(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_182);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v2 = AudioIssueDetectorLibraryLoader(void)::libSym;

    v2(a1);
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272589648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::ArrayRef::from_get_noexcept(applesauce::CF::ArrayRef *this, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    *this = 0;
    CFRelease(cf);
  }

  else
  {
    *this = cf;
  }
}

void *applesauce::CF::ArrayRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const __CFArray *applesauce::CF::ArrayRef_proxy::get_size(const __CFArray *this)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

void *applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(void *a1, CFArrayRef theArray)
{
  *a1 = theArray;
  a1[1] = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  a1[2] = Count;
  return a1;
}

BOOL applesauce::CF::details::has_key<char const(&)[25]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_data_source_id", 24, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_272589854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL applesauce::CF::details::has_key<char const(&)[13]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_27258993C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

float applesauce::CF::details::find_at_key<float,char const(&)[13]>(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v2);
  CFRelease(cf);
  if (!Value)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v6);
  }

  return applesauce::CF::convert_to<float,0>(Value);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const void **applesauce::CF::ArrayRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *CADeprecated::CAAutoFree<long long>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(size, 0x72B6561FuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_272589D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioIssueDetectorClientUpdateReportingSessions(uint64_t a1, uint64_t a2)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_182);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v4 = AudioIssueDetectorLibraryLoader(void)::libSym;

    v4(a1, a2);
  }
}

uint64_t AudioStatisticsCopyConfiguration(uint64_t a1)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_209);
  }

  if (!AudioStatisticsLibraryLoader(void)::libSym)
  {
    return 0;
  }

  v2 = AudioStatisticsLibraryLoader(void)::libSym;

  return v2(a1);
}

void *applesauce::CF::DictionaryRef::from_create(void *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v2 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_272589EAC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFStringGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const void **applesauce::CF::StringRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::Block<void({block_pointer} const&)(AUVoiceIOSpeechActivityEvent)>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

void std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }
}

void sub_27258A190(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::details::at_key<__CFString const*>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_4111()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_4128()
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

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

uint64_t VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(uint64_t this)
{
  v1 = this;
  if ((*(this + 76) - 25) <= 1 && (this = _os_feature_enabled_impl(), this))
  {
    v2 = *(v1 + 8864) & 0xFEFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = *(v1 + 8864) | 0x100000000000000;
  }

  v3 = *(v1 + 364);
  v4 = v2 & 0xDFBC798FFFFFFFFFLL | 0x20000000000;
  v5 = v2 | 0x60000000000;
  v6 = v3 > 1;
  if (v3 <= 1)
  {
    v5 = v4;
  }

  v7 = v5 & 0xDFBC7F8FFFFFFFFFLL;
  v8 = 0x41000000000000;
  if (v6)
  {
    v8 = 0x43000000000000;
  }

  *(v1 + 8864) = v7 | v8;
  return this;
}

char *VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  VPChannelConfig::SetChConfig((a1 + 108), *a2, (a2 + 4), 4u);
  result = VPChannelConfig::SetChConfig((a1 + 114), *a3, (a3 + 4), a4);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a1[114];
  v12 = a1[108];
  do
  {
    if (((1 << v8) & v11) == 0 || ((1 << v8) & v12) == 0)
    {
      v9 += ((v12 | v11) >> v8) & 1;
    }

    else
    {
      v10 |= 1 << v9++;
    }

    ++v8;
  }

  while (v8 != 32);
  a1[107] = v10;
  return result;
}

void VoiceProcessorV2::DispatchVPRouteSetup(VoiceProcessorV2 *this, int a2)
{
  v147[2] = *MEMORY[0x277D85DE8];
  *v135 = kVP_MicConfigPrimaryMicOnly;
  *&v135[16] = unk_27275A500;
  v136 = xmmword_27275A510;
  v137 = unk_27275A520;
  *v138 = 0;
  v139 = 0;
  *&v138[4] = kVP_MicConfigPrimaryMicOnly;
  memset(&v138[20], 0, 48);
  *&buf[4] = kVP_MicConfigPrimaryMicOnly;
  v141 = *v138;
  memset(&buf[20], 0, 48);
  *&v145 = unk_27275A52C;
  v144 = *&v138[48];
  v143 = *&v138[32];
  v142 = *&v138[16];
  *(&v145 + 1) = 0x100000000;
  *buf = 1;
  v146 = 21;
  v118 = 0;
  v119 = 0;
  v117 = &v118;
  std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(&v117, &v118, 1u);
  v4 = this + 15881;
  if (a2 > 23)
  {
    if (a2 > 0x30)
    {
      goto LABEL_3;
    }

    if (((1 << a2) & 0x1FC000000000) != 0)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (*(this + 2260))
      {
        v8 = 29;
      }

      else
      {
        v8 = 21;
      }

      *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      *&v135[16] = *algn_27275A29C;
      v136 = xmmword_27275A2AC;
      v137 = unk_27275A2BC;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      memset(&v138[20], 0, 48);
      *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      *&v145 = unk_27275A2C8;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x100000000;
      *buf = 1;
      v146 = v8;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
    }

    if (((1 << a2) & 0x600000000000) != 0)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (*(this + 2260))
      {
        v13 = 29;
      }

      else
      {
        v13 = 26;
      }

      *v135 = kVP_MicConfigPrimaryMicOnly;
      *&v135[16] = unk_27275A500;
      v136 = xmmword_27275A510;
      v137 = unk_27275A520;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigPrimaryMicOnly;
      memset(&v138[20], 0, 48);
      *&buf[4] = kVP_MicConfigPrimaryMicOnly;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      v145 = unk_27275A52C;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *buf = 0;
      v146 = v13;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
    }

    if (((1 << a2) & 0x1800000000000) == 0)
    {
LABEL_3:
      if ((a2 - 24) < 7)
      {
        std::__tree<unsigned int>::destroy(v118);
        v118 = 0;
        v119 = 0;
        v117 = &v118;
        if (*(this + 2260))
        {
          v9 = 29;
        }

        else
        {
          v9 = 21;
        }

        *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        *&v135[16] = unk_27275A478;
        v136 = xmmword_27275A488;
        v137 = unk_27275A498;
        *v138 = 0;
        v139 = 0;
        *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        memset(&v138[20], 0, 48);
        *&v145 = unk_27275A4A4;
        *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J71(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kJ71_MicConfigTop;
        v141 = *v138;
        memset(&buf[20], 0, 48);
        v144 = *&v138[48];
        v143 = *&v138[32];
        v142 = *&v138[16];
        *(&v145 + 1) = 0x100000001;
        *buf = 1;
        v146 = v9;
        std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
      }

      if ((a2 - 31) < 7)
      {
        std::__tree<unsigned int>::destroy(v118);
        v118 = 0;
        v119 = 0;
        v117 = &v118;
        if (*(this + 2260))
        {
          v5 = 29;
        }

        else
        {
          v5 = 21;
        }

        *v135 = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        *&v135[16] = *algn_27275A29C;
        v136 = xmmword_27275A2AC;
        v137 = unk_27275A2BC;
        *v138 = 0;
        v139 = 0;
        *&v138[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        memset(&v138[20], 0, 48);
        *&v145 = unk_27275A2C8;
        *&buf[4] = VoiceProcessorV2_RouteSetupHelper::GetDSPChainInfo_J417(VoiceProcessorV2 *,unsigned int,std::map<unsigned int,ProcessingChainInfo> &)::kExtMicConfigFirst;
        v141 = *v138;
        memset(&buf[20], 0, 48);
        v144 = *&v138[48];
        v143 = *&v138[32];
        v142 = *&v138[16];
        *(&v145 + 1) = 0x100000000;
        *buf = 1;
        v146 = v5;
        std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
      }

      goto LABEL_51;
    }

    goto LABEL_11;
  }

  if (a2 <= 11)
  {
    if (a2 >= 0xC)
    {
      goto LABEL_51;
    }

    goto LABEL_11;
  }

  if (a2 <= 18)
  {
    if ((a2 - 12) < 6)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      if (*(this + 2260))
      {
        v7 = 29;
      }

      else
      {
        v7 = 21;
      }

      *v135 = kVP_MicConfigBottom;
      *&v135[16] = unk_27275A0C0;
      v136 = xmmword_27275A0D0;
      v137 = unk_27275A0E0;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottom;
      memset(&v138[20], 0, 48);
      *&v145 = unk_27275A0EC;
      *&buf[4] = kVP_MicConfigBottom;
      v141 = *v138;
      memset(&buf[20], 0, 48);
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x100000000;
      *buf = 1;
      v146 = v7;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
    }

    if (a2 != 18)
    {
LABEL_51:
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpRouteSetup_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 506;
          *&buf[18] = 1024;
          *&buf[20] = a2;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Unknown Route Type: %d", buf, 0x18u);
        }
      }

      v16 = *(this + 1588);
      if (v16 && ((*v4 & 1) != 0 || v4[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v16, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 506, "DispatchVPRouteSetup", "Unknown Route Type: %d", a2);
      }

      __assert_rtn("DispatchVPRouteSetup", "vpRouteSetup_v2.cpp", 507, "!Unknown Route Type!");
    }

LABEL_11:
    std::__tree<unsigned int>::destroy(v118);
    v118 = 0;
    v119 = 0;
    v117 = &v118;
    if (*(this + 2260))
    {
      v6 = 29;
    }

    else
    {
      v6 = 21;
    }

    *v135 = kVP_MicConfigPrimaryMicOnly;
    *&v135[16] = unk_27275A500;
    v136 = xmmword_27275A510;
    v137 = unk_27275A520;
    *v138 = 0;
    v139 = 0;
    *&v138[4] = kVP_MicConfigPrimaryMicOnly;
    memset(&v138[20], 0, 48);
    *&buf[4] = kVP_MicConfigPrimaryMicOnly;
    v141 = *v138;
    memset(&buf[20], 0, 48);
    *&v145 = unk_27275A52C;
    v144 = *&v138[48];
    v143 = *&v138[32];
    v142 = *&v138[16];
    *(&v145 + 1) = 0x100000000;
    *buf = 0;
    v146 = v6;
    std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
  }

  if (a2 <= 20)
  {
    if (a2 == 19)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      v124 = kVP_MicConfigAllThree;
      v125 = unk_27275A588;
      v126 = xmmword_27275A598;
      v127 = unk_27275A5A8;
      v128 = 0;
      v132 = 0;
      v129 = kVP_MicConfigAllThree;
      v130 = unk_27275A588;
      memset(v131, 0, sizeof(v131));
      operator new();
    }

    if (*(this + 2260) == 1)
    {
      v11 = *(this + 23);
      v12 = 30;
      if (v11 != 1986618467)
      {
        if (v11 == 1987012963)
        {
          v12 = 30;
        }

        else
        {
          v12 = 23;
        }
      }
    }

    else
    {
      v12 = 23;
    }

    v17 = v118;
    if (!v118)
    {
      goto LABEL_73;
    }

    v18 = &v118;
    do
    {
      v19 = v17;
      v20 = v18;
      v21 = *(v17 + 7);
      if (v21)
      {
        v18 = v17;
      }

      v17 = v17[v21 == 0];
    }

    while (v17);
    if (v18 == &v118)
    {
      goto LABEL_73;
    }

    if (!v21)
    {
      v19 = v20;
    }

    if (*(v19 + 7) >= 2u)
    {
LABEL_73:
      v18 = &v118;
    }

    *(v18 + 44) = v12;
  }

  else if ((a2 - 21) >= 2)
  {
    if (a2 != 23)
    {
      goto LABEL_51;
    }

    v10 = *(this + 23);
    if (v10 == 1986618467)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      *v135 = kVP_MicConfigBottomTop;
      *&v135[16] = unk_27275A544;
      v136 = xmmword_27275A554;
      v137 = unk_27275A564;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottomTop;
      *&v138[20] = unk_27275A544;
      memset(&v138[36], 0, 32);
      *&buf[4] = kVP_MicConfigBottomTop;
      v141 = *v138;
      memset(&buf[36], 0, 32);
      *&buf[20] = unk_27275A544;
      *&v145 = unk_27275A570;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x200000000;
      *buf = 2;
      v146 = 21;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
    }

    if (v10 == 1987012963)
    {
      std::__tree<unsigned int>::destroy(v118);
      v118 = 0;
      v119 = 0;
      v117 = &v118;
      *v135 = kVP_MicConfigBottomTop;
      *&v135[16] = unk_27275A544;
      v136 = xmmword_27275A554;
      v137 = unk_27275A564;
      *v138 = 0;
      v139 = 0;
      *&v138[4] = kVP_MicConfigBottomTop;
      *&v138[20] = unk_27275A544;
      memset(&v138[36], 0, 32);
      *&buf[4] = kVP_MicConfigBottomTop;
      v141 = *v138;
      memset(&buf[36], 0, 32);
      *&buf[20] = unk_27275A544;
      *&v145 = unk_27275A570;
      v144 = *&v138[48];
      v143 = *&v138[32];
      v142 = *&v138[16];
      *(&v145 + 1) = 0x200000000;
      *buf = 2;
      v146 = 21;
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_unique_impl<std::pair<int,ProcessingChainInfo>>();
    }
  }

  *(this + 2280) = 257;
  v116[0] = 0;
  v116[1] = 0;
  v115 = v116;
  v22 = v117;
  if (v117 == &v118)
  {
    v26 = (this + 660);
  }

  else
  {
    do
    {
      std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(&v115, v116, *(v22 + 7));
      v23 = v22[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v22[2];
          v44 = *v24 == v22;
          v22 = v24;
        }

        while (!v44);
      }

      v22 = v24;
    }

    while (v24 != &v118);
    v25 = v116[0];
    v26 = (this + 660);
    if (v116[0])
    {
      v27 = *v26;
      v28 = v116;
      v29 = v116[0];
      do
      {
        v30 = v29;
        v31 = v28;
        v32 = *(v29 + 7);
        if (v32 >= v27)
        {
          v28 = v29;
        }

        v29 = v29[v32 < v27];
      }

      while (v29);
      v33 = v116[0];
      if (v28 != v116)
      {
        if (v32 < v27)
        {
          v30 = v31;
        }

        v34 = *(v30 + 7);
        v33 = v116[0];
        v35 = v116;
        v36 = v116[0];
        if (v27 >= v34)
        {
          goto LABEL_273;
        }
      }

      do
      {
        v37 = v33;
        v33 = *v33;
      }

      while (v33);
      if (v37 != v116)
      {
        v38 = *(v37 + 7);
        v35 = v116;
        v36 = v116[0];
        if (!v38)
        {
LABEL_273:
          do
          {
            v39 = v36;
            v40 = v35;
            v41 = *(v36 + 7);
            if (v41 >= v27)
            {
              v35 = v36;
            }

            v36 = v36[v41 < v27];
          }

          while (v36);
          if (v35 == v116 || (v41 >= v27 ? (v42 = v39) : (v42 = v40), v27 < *(v42 + 7)))
          {
            do
            {
              v43 = v25;
              v25 = *v25;
            }

            while (v25);
            if (*(v43 + 7))
            {
              v44 = 1;
            }

            else
            {
              v44 = v43 == v116;
            }

            if (v44)
            {
              v45 = v116;
            }

            else
            {
              v45 = v43;
            }
          }

          else
          {
            v45 = v116;
            do
            {
              v86 = v25;
              v87 = v45;
              v88 = *(v25 + 7);
              if (v88 >= v27)
              {
                v45 = v25;
              }

              v25 = v25[v88 < v27];
            }

            while (v25);
            if (v45 == v116 || (v88 >= v27 ? (v89 = v86) : (v89 = v87), v27 < *(v89 + 7)))
            {
              v45 = v116;
            }
          }

          v90 = *(v45 + 3);
          v91 = *(v45 + 5);
          *&buf[32] = *(v45 + 4);
          *&buf[48] = v91;
          *&buf[64] = *(v45 + 24);
          v92 = *(v45 + 2);
          v93 = *(v45 + 42);
          *v138 = *(v45 + 41);
          v65 = v45 + 4;
          *buf = v92;
          *&buf[16] = v90;
          v94 = *(v45 + 116);
          v95 = *(v45 + 148);
          v136 = *(v45 + 132);
          v137 = v95;
          *v135 = *(v45 + 100);
          *&v135[16] = v94;
          VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(this, buf, v135, v93);
          v96 = *(v45 + 172);
          *(this + 1567) = v96;
          switch(v96)
          {
            case 0:
              *buf = this + 4688;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              goto LABEL_149;
            case 1:
              v103 = (*this + 320);
              goto LABEL_240;
            case 2:
              v106 = vcnt_s8(*(this + 114));
              v106.i16[0] = vaddlv_u8(v106);
              v101 = v106.u32[0];
              v102 = (*this + 352);
              goto LABEL_243;
            case 3:
              v105 = vcnt_s8(*(this + 114));
              v105.i16[0] = vaddlv_u8(v105);
              (*(*this + 360))(this, v105.u32[0], 0);
              goto LABEL_149;
            case 5:
              v100 = vcnt_s8(*(this + 114));
              v100.i16[0] = vaddlv_u8(v100);
              v101 = v100.u32[0];
              v102 = (*this + 368);
              goto LABEL_243;
            case 6:
              *buf = this + 4688;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              *(this + 586) |= 0x4000000000000000uLL;
              goto LABEL_149;
            case 7:
              *buf = this + 4688;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              *(this + 587) |= 0x12uLL;
              goto LABEL_149;
            case 8:
              v103 = (*this + 336);
              goto LABEL_240;
            case 9:
              v107 = vcnt_s8(*(this + 114));
              v107.i16[0] = vaddlv_u8(v107);
              v101 = v107.u32[0];
              v102 = (*this + 376);
              goto LABEL_243;
            case 10:
              *buf = this + 4688;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              *(this + 293) = vorrq_s8(*(this + 293), xmmword_272756530);
              goto LABEL_149;
            case 11:
              *buf = this + 4688;
              *&buf[8] = 0;
              std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(buf);
              *(this + 587) |= 0x20uLL;
              if ((*(*this + 112))(this) == 8 || (*(*this + 112))(this) == 7)
              {
                *(this + 586) |= 0x4000000000000000uLL;
                *(this + 1099) = 1092616192;
              }

              goto LABEL_149;
            case 12:
              v104 = vcnt_s8(*(this + 114));
              v104.i16[0] = vaddlv_u8(v104);
              v101 = v104.u32[0];
              v102 = (*this + 384);
LABEL_243:
              (*v102)(this, v101);
              break;
            case 14:
              v103 = (*this + 344);
LABEL_240:
              (*v103)(this);
              break;
            default:
              goto LABEL_149;
          }

          goto LABEL_149;
        }
      }
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v46 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = (this + 32);
      if (*(this + 55) < 0)
      {
        v48 = *v48;
      }

      v49 = *(this + 165);
      v50 = *(this + 20);
      *buf = 136316162;
      *&buf[4] = "vpRouteSetup_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 233;
      *&buf[18] = 2080;
      *&buf[20] = v48;
      *&buf[28] = 1024;
      *&buf[30] = v49;
      *&buf[34] = 1024;
      *&buf[36] = v50;
      _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> _vp <SERIOUS ERROR> %s vp received %d built-in mic channels in mode %d?!!!!!That is Wrong!!!!!! Please file a radar against Audio - DSP Component!!!!!", buf, 0x28u);
    }
  }

  v51 = *(this + 1588);
  if (v51 && ((*v4 & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v52 = this + 32;
    if (*(this + 55) < 0)
    {
      v52 = *v52;
    }

    CALegacyLog::log(v51, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 233, "SetupMicsAndProcessingChain", "_vp <SERIOUS ERROR> %s vp received %d built-in mic channels in mode %d?!!!!!That is Wrong!!!!!! Please file a radar against Audio - DSP Component!!!!!", v52, *(this + 165), *(this + 20));
  }

  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  std::to_string(&v133, *v26);
  v53 = std::string::insert(&v133, 0, "vp received the wrong number of built-in mic channels ", 0x36uLL);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v134.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v134.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  v55 = std::string::append(&v134, " in mode ", 9uLL);
  v56 = *&v55->__r_.__value_.__l.__data_;
  *&v135[16] = *(&v55->__r_.__value_.__l + 2);
  *v135 = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v122, *(this + 20));
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v122;
  }

  else
  {
    v57 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  v59 = std::string::append(v135, v57, size);
  v60 = v59->__r_.__value_.__r.__words[0];
  v147[0] = v59->__r_.__value_.__l.__size_;
  *(v147 + 7) = *(&v59->__r_.__value_.__r.__words[1] + 7);
  v61 = HIBYTE(v59->__r_.__value_.__r.__words[2]);
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  strcpy(__p, "vp_routing_setup_error");
  v121 = 22;
  v123 = __p;
  v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p);
  v63 = v62;
  if (*(v62 + 79) < 0)
  {
    operator delete(*(v62 + 56));
  }

  v64 = v147[0];
  *(v63 + 56) = v60;
  *(v63 + 64) = v64;
  *(v63 + 71) = *(v147 + 7);
  *(v63 + 79) = v61;
  if (v121 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if ((v135[23] & 0x80000000) != 0)
  {
    operator delete(*v135);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
  VoiceProcessorV2::SetHwMicAndEpMicChannelConfig(this, &kVP_MicConfigPrimaryMicOnly, &kVP_MicConfigPrimaryMicOnly, 0);
  (*(*this + 320))(this);
  v65 = v115 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
LABEL_149:
  v66 = *(v65 + 36);
  if (v66 <= 24)
  {
    if (v66 <= 21)
    {
      if (v66 == 20)
      {
        *buf = this + 8864;
        *&buf[8] = 0;
        std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
        goto LABEL_188;
      }

      if (v66 == 21)
      {
        (*(*this + 408))(this);
        v70 = *(this + 600);
        if (v70 == 1781805623 || v70 == 1781740087)
        {
          v71 = *(this + 1108) | 0x8000000000000000;
LABEL_187:
          *(this + 1108) = v71;
          goto LABEL_188;
        }
      }

      goto LABEL_188;
    }

    if (v66 == 22)
    {
      v78 = *(this + 1108) | 0x1000000000;
      goto LABEL_181;
    }

    if (v66 != 23)
    {
      *buf = this + 8864;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v67 = *(this + 1108);
      v68 = 0x2000000028000000;
LABEL_186:
      v71 = v67 | v68;
      goto LABEL_187;
    }

    v72 = *(this + 1108);
    v73 = v72 | 0x1000000000;
    *(this + 1108) = v72 | 0x1000000000;
    v74 = *(this + 19);
    *buf = 1;
    if (v74 <= 18)
    {
      if ((v74 - 6) < 0xD || (v74 - 1) < 4)
      {
        *buf = 0;
        *(this + 1108) = v72 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA02u, 0, 0, 4uLL, buf, 1);
        *v135 = 1;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA04u, 0, 0, 4uLL, v135, 1);
        v75 = *(this + 1108);
        *(this + 1108) = v75 & 0xFFFFFFEFFFFFFFFFLL;
        if (*(this + 91) >= 2u)
        {
          *(this + 1108) = v75 & 0xFFBFFFE3F9FFFFFFLL | 0x40000804000000;
        }

        *(this + 1136) = 1;
        goto LABEL_182;
      }

      if (v74 == 5)
      {
        goto LABEL_254;
      }

LABEL_270:
      __assert_rtn("SetupDownlink_SPP_SCi", "vpRouteSetup_v2.cpp", 172, "false");
    }

    if (v74 <= 26)
    {
      if ((v74 - 23) >= 4)
      {
        if ((v74 - 19) >= 2)
        {
          if ((v74 - 21) >= 2)
          {
            goto LABEL_270;
          }

          VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(this);
LABEL_182:
          *(this + 1139) = -1061158912;
          goto LABEL_188;
        }

        *(this + 1108) = v72 & 0xFCFFFFEFFFFFFFFFLL | 0x200001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1546, 0xFA02u, 0, 0, 4uLL, buf, 1);
        *v135 = 0;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1546, 0xFA04u, 0, 0, 4uLL, v135, 1);
        v110 = *(this + 1108);
        if (*(this + 91) <= 1u)
        {
          v111 = v110 & 0xDBBC798FFFFFFFFFLL;
        }

        else
        {
          *(this + 1108) = v110 | 0x400000000000000;
          LODWORD(v134.__r_.__value_.__l.__data_) = 1;
          AUPropAndParamHelper::AddItemToAUPropsList(this + 1549, 0xFA04u, 0, 0, 4uLL, &v134, 1);
          v111 = *(this + 1108) & 0xDFBC798FFFFFFFFFLL;
          if (*(this + 91) >= 2u)
          {
            v112 = v111 | 0x60000000000;
            v113 = 0x43000000000000;
LABEL_269:
            v78 = v112 | v113;
            goto LABEL_181;
          }
        }

        v112 = v111 | 0x20000000000;
        v113 = 0x41000000000000;
        goto LABEL_269;
      }

      VoiceProcessorV2::SetupDownlink_SPP_SCi_J4xx(this);
      v78 = *(this + 1108) | 0x2000000000000000;
LABEL_181:
      *(this + 1108) = v78;
      goto LABEL_182;
    }

    if (v74 > 30)
    {
      if ((v74 - 31) < 2)
      {
LABEL_254:
        *(this + 1108) = v72 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA02u, 0, 0, 4uLL, buf, 1);
        goto LABEL_182;
      }

      if (v74 != 33)
      {
        if (v74 != 34)
        {
          goto LABEL_270;
        }

        v108 = _os_feature_enabled_impl();
        v73 = *(this + 1108);
        if (v108)
        {
          v109 = v73 & 0xFEFFFFFFFFFFFFFFLL;
          goto LABEL_257;
        }
      }
    }

    else
    {
      if ((v74 - 27) < 3)
      {
        *(this + 1108) = v72 | 0x100001000000000;
        AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA02u, 0, 0, 4uLL, buf, 1);
        if (*(this + 2261) == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) > 1 || !*(this + 20) && *(this + 61) == 2)
        {
          v97 = *(this + 2260);
          v98 = *(this + 1108);
          v99 = v98 | 0x8000000000;
          goto LABEL_262;
        }

        goto LABEL_265;
      }

      if (v74 != 30)
      {
        goto LABEL_270;
      }
    }

    *(this + 1108) = v73 | 0x100000000000000;
    AUPropAndParamHelper::AddItemToAUPropsList(this + 1543, 0xFA02u, 0, 0, 4uLL, buf, 1);
    v109 = *(this + 1108);
LABEL_257:
    *(this + 1108) = v109 & 0xFFFFFFF3F9FFFFFFLL | 0x804000000;
    if (*(this + 2261) == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) > 1 || !*(this + 20) && *(this + 61) == 2)
    {
      v97 = *(this + 2260);
      v98 = *(this + 1108);
      v99 = v98 | 0x10000000000;
LABEL_262:
      if (v97)
      {
        v114 = v98;
      }

      else
      {
        v114 = v99;
      }

      goto LABEL_266;
    }

LABEL_265:
    v114 = *(this + 1108);
LABEL_266:
    v78 = v114 & 0xFFFFFFEFFFFFFFFFLL;
    goto LABEL_181;
  }

  if (v66 <= 27)
  {
    if (v66 != 25)
    {
      if (v66 != 26)
      {
        (*(*this + 424))(this);
        goto LABEL_188;
      }

      *buf = this + 8864;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v67 = *(this + 1108);
      v68 = 671088640;
      goto LABEL_186;
    }

    *buf = this + 8864;
    *&buf[8] = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
    v67 = *(this + 1108);
    v79 = 671088640;
    goto LABEL_185;
  }

  switch(v66)
  {
    case 28:
      *buf = this + 8864;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v67 = *(this + 1108);
      v79 = 4;
LABEL_185:
      v68 = v79 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
      goto LABEL_186;
    case 29:
      *buf = this + 8864;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v76 = *(this + 1108);
      *(this + 1108) = v76 | 0x3000C000;
      v77 = *(this + 600);
      if (v77 == 1781805623 || v77 == 1781740087)
      {
        *(this + 1108) = v76 | 0x800000003000C000;
      }

      break;
    case 30:
      *buf = this + 8864;
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(buf);
      v69 = *(this + 1108);
      *(this + 1108) = v69 | 0x3000C000;
      if (*(this + 2260) == 1 && *(this + 91) >= 2u)
      {
        *(this + 1108) = v69 | 0x301FC000;
      }

      break;
  }

LABEL_188:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v80 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v81 = (*v80 ? *v80 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = *(v65 + 35);
      v83 = *(v65 + 36);
      *buf = 136315906;
      *&buf[4] = "vpRouteSetup_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      *&buf[18] = 1024;
      *&buf[20] = v82;
      *&buf[24] = 1024;
      *&buf[26] = v83;
      _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting up DSP Chains: Uplink: %d, Downlink: %d", buf, 0x1Eu);
    }
  }

  v84 = *(this + 1588);
  if (v84 && ((*v4 & 1) != 0 || v4[1] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v84, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpRouteSetup_v2.cpp", 406, "SetupMicsAndProcessingChain", "Setting up DSP Chains: Uplink: %d, Downlink: %d", *(v65 + 35), *(v65 + 36));
  }

  std::__tree<unsigned int>::destroy(v116[0]);
  std::__tree<unsigned int>::destroy(v118);
  v85 = *MEMORY[0x277D85DE8];
}

void sub_27258EC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(STACK[0x318]);
  std::__tree<unsigned int>::destroy(a38);
  std::__tree<unsigned int>::destroy(a41);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned int,ProcessingChainInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ProcessingChainInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ProcessingChainInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,ProcessingChainInfo> const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t VoiceProcessor::SampleRateConverter::Convert(VoiceProcessor::SampleRateConverter *this, unsigned int *a2, unsigned int *a3, const AudioBufferList *a4, const AudioBufferList *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *this;
  NumberOfChannels = AudioSampleRateConverterGetNumberOfChannels();
  v12 = NumberOfChannels;
  MEMORY[0x28223BE20](NumberOfChannels);
  v15 = v33 - v14;
  if (v13 >= 0x200)
  {
    v16 = 512;
  }

  else
  {
    v16 = v13;
  }

  bzero(v33 - v14, v16);
  LODWORD(v18) = a4->mNumberBuffers;
  if (v12 >= a4->mNumberBuffers)
  {
    v18 = v18;
  }

  else
  {
    v18 = v12;
  }

  if (v18)
  {
    p_mData = &a4->mBuffers[0].mData;
    v20 = v15;
    do
    {
      v21 = *p_mData;
      p_mData += 2;
      *v20++ = v21;
      --v18;
    }

    while (v18);
  }

  MEMORY[0x28223BE20](v17);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFF0);
  bzero(v23, v16);
  LODWORD(v24) = a5->mNumberBuffers;
  if (v12 >= a5->mNumberBuffers)
  {
    v24 = v24;
  }

  else
  {
    v24 = v12;
  }

  if (v24)
  {
    v25 = &a5->mBuffers[0].mData;
    v26 = v23;
    do
    {
      v27 = *v25;
      v25 += 2;
      *v26++ = v27;
      --v24;
    }

    while (v24);
  }

  v28 = *a2;
  v33[0] = *a3;
  v29 = v33[0];
  v33[1] = v28;
  v30 = *this;
  result = AudioSampleRateConverterProcess();
  *a2 = v28;
  *a3 = v29;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27258F2E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(a1 + 8) = Mutable;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27258F408(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build(CA::AudioSampleRateConverterBuilder *this)
{
  v4 = *MEMORY[0x277D85DE8];
  result = AudioSampleRateConverterCreate();
  if (!result)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *this = result;
  *(this + 8) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27258F6DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::expected<CA::AudioSampleRateConverter,int>::value(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881C1110;
    exception[2] = v3;
  }

  return result;
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    AudioSampleRateConverterDispose();
  }

  return a1;
}

void VoiceProcessorV2::SetupDownlinkBasicAUChainForHwHasVP(VoiceProcessorV2 *this)
{
  v2 = (this + 8864);
  v6 = (this + 8864);
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(&v6);
  *(this + 1108) |= 0x2000000028000000uLL;
  v3 = (*(*this + 112))(this);
  v4 = 0x4000000000000000;
  if (v3 > 4)
  {
    v4 = 0x800000000000;
  }

  v5 = *(this + 1108) | v4;
  *(this + 1108) = v5;
  if (*(this + 2260) == 1)
  {
    v6 = v2;
    v7 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(&v6);
    v5 = *v2 | 0x3000C000;
    *v2 = v5;
  }

  if (*(this + 16561) == 1)
  {
    *v2 = v5 | 0x8000;
  }
}

void VoiceProcessorV2::SetupDownlinkFarEndVoiceMixGraph(VoiceProcessorV2 *this)
{
  v314 = *MEMORY[0x277D85DE8];
  *(this + 1108) &= ~1uLL;
  v2 = *(this + 2027);
  *(this + 2027) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2028);
  *(this + 2028) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2029);
  *(this + 2029) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 2030);
  *(this + 2030) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v283 = this + 15881;
  if (*(this + 16284) == 1)
  {
    *(this + 16284) = 0;
  }

  if (*(this + 61) == 32)
  {
    v298 = 0;
    v299 = 0;
    v300 = 0;
    memset(&v305, 0, sizeof(v305));
    VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v310, this);
    if (v311 == 1)
    {
      v6 = (this + 8);
      if (*(this + 31) < 0)
      {
        v6 = v6->__r_.__value_.__r.__words[0];
      }

      v307.__first_ = v6;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v306, &v307.__first_);
      std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      std::__fs::filesystem::path::operator/=[abi:ne200100](&v306, &v310);
      VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
      if (SHIBYTE(v307.__end_) >= 0)
      {
        first = &v307;
      }

      else
      {
        first = v307.__first_;
      }

      if (SHIBYTE(v307.__end_) >= 0)
      {
        end_high = HIBYTE(v307.__end_);
      }

      else
      {
        end_high = v307.__begin_;
      }

      std::string::append(&v306, first, end_high);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      std::string::append(&v306, ".dspg", 5uLL);
      size = v305.__pn_.__r_.__value_.__l.__size_;
      if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_715;
        }

        if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v12)
        {
          v12 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        v307.__end_cap_.__value_ = &v305;
        if (v13)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v13);
        }

        v14 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v307.__first_ = 0;
        v307.__begin_ = v14;
        v307.__end_cap_.__value_ = 0;
        v15 = *&v306.__r_.__value_.__l.__data_;
        v14->__r_.__value_.__r.__words[2] = v306.__r_.__value_.__r.__words[2];
        *&v14->__r_.__value_.__l.__data_ = v15;
        memset(&v306, 0, sizeof(v306));
        v307.__end_ = (24 * v11 + 24);
        v16 = 24 * v11 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v14 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
        v17 = v305.__pn_.__r_.__value_.__r.__words[0];
        v305.__pn_.__r_.__value_.__r.__words[0] = v16;
        v18 = v305.__pn_.__r_.__value_.__r.__words[2];
        end = v307.__end_;
        *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
        v307.__end_ = v17;
        v307.__end_cap_.__value_ = v18;
        v307.__first_ = v17;
        v307.__begin_ = v17;
        std::__split_buffer<std::string>::~__split_buffer(&v307);
        v305.__pn_.__r_.__value_.__l.__size_ = end;
        if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v306.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *&v306.__r_.__value_.__l.__data_;
        *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v306.__r_.__value_.__l + 2);
        *size = v10;
        v305.__pn_.__r_.__value_.__l.__size_ = size + 24;
      }

      if ((v311 & 1) != 0 && SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v310.__r_.__value_.__l.__data_);
      }
    }

    v19 = (this + 8);
    v20 = (this + 8);
    if (*(this + 31) < 0)
    {
      v20 = *v19;
    }

    v307.__first_ = v20;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&v307, this, 0);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 0);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
    if (SHIBYTE(v307.__end_) >= 0)
    {
      v21 = &v307;
    }

    else
    {
      v21 = v307.__first_;
    }

    if (SHIBYTE(v307.__end_) >= 0)
    {
      begin = HIBYTE(v307.__end_);
    }

    else
    {
      begin = v307.__begin_;
    }

    std::string::append(&v310, v21, begin);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    std::string::append(&v310, ".dspg", 5uLL);
    v23 = v305.__pn_.__r_.__value_.__l.__size_;
    if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_715;
      }

      if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v26)
      {
        v26 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v27 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v27 = v26;
      }

      v307.__end_cap_.__value_ = &v305;
      if (v27)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v27);
      }

      v28 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
      v307.__first_ = 0;
      v307.__begin_ = v28;
      v307.__end_cap_.__value_ = 0;
      v29 = *&v310.__r_.__value_.__l.__data_;
      v28->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
      *&v28->__r_.__value_.__l.__data_ = v29;
      memset(&v310, 0, sizeof(v310));
      v307.__end_ = (24 * v25 + 24);
      v30 = 24 * v25 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v28 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
      v31 = v305.__pn_.__r_.__value_.__r.__words[0];
      v305.__pn_.__r_.__value_.__r.__words[0] = v30;
      v32 = v305.__pn_.__r_.__value_.__r.__words[2];
      v275 = v307.__end_;
      *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
      v307.__end_ = v31;
      v307.__end_cap_.__value_ = v32;
      v307.__first_ = v31;
      v307.__begin_ = v31;
      std::__split_buffer<std::string>::~__split_buffer(&v307);
      v305.__pn_.__r_.__value_.__l.__size_ = v275;
      if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v310.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v24 = *&v310.__r_.__value_.__l.__data_;
      *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
      *v23 = v24;
      v305.__pn_.__r_.__value_.__l.__size_ = v23 + 24;
    }

    v33 = (this + 8);
    if (*(this + 31) < 0)
    {
      v33 = *v19;
    }

    v307.__first_ = v33;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
    std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
    if (SHIBYTE(v307.__end_) >= 0)
    {
      v34 = &v307;
    }

    else
    {
      v34 = v307.__first_;
    }

    if (SHIBYTE(v307.__end_) >= 0)
    {
      v35 = HIBYTE(v307.__end_);
    }

    else
    {
      v35 = v307.__begin_;
    }

    std::string::append(&v310, v34, v35);
    if (SHIBYTE(v307.__end_) < 0)
    {
      operator delete(v307.__first_);
    }

    std::string::append(&v310, ".dspg", 5uLL);
    v36 = v305.__pn_.__r_.__value_.__l.__size_;
    v273 = (this + 8);
    if (v305.__pn_.__r_.__value_.__l.__size_ < v305.__pn_.__r_.__value_.__r.__words[2])
    {
      v37 = *&v310.__r_.__value_.__l.__data_;
      *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
      *v36 = v37;
      v38 = v36 + 24;
      v305.__pn_.__r_.__value_.__l.__size_ = v36 + 24;
      goto LABEL_100;
    }

    v39 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
    v40 = v39 + 1;
    if (v39 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v40)
      {
        v40 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v41 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v40;
      }

      v307.__end_cap_.__value_ = &v305;
      if (v41)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v41);
      }

      v42 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
      v307.__first_ = 0;
      v307.__begin_ = v42;
      v307.__end_cap_.__value_ = 0;
      v43 = *&v310.__r_.__value_.__l.__data_;
      v42->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
      *&v42->__r_.__value_.__l.__data_ = v43;
      memset(&v310, 0, sizeof(v310));
      v307.__end_ = (24 * v39 + 24);
      v44 = 24 * v39 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v42 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
      v45 = v305.__pn_.__r_.__value_.__r.__words[0];
      v305.__pn_.__r_.__value_.__r.__words[0] = v44;
      v46 = v305.__pn_.__r_.__value_.__r.__words[2];
      v276 = v307.__end_;
      *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
      v307.__end_ = v45;
      v307.__end_cap_.__value_ = v46;
      v307.__first_ = v45;
      v307.__begin_ = v45;
      std::__split_buffer<std::string>::~__split_buffer(&v307);
      v38 = v276;
      v305.__pn_.__r_.__value_.__l.__size_ = v276;
      if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v310.__r_.__value_.__l.__data_);
        v38 = v305.__pn_.__r_.__value_.__l.__size_;
      }

LABEL_100:
      v47 = v305.__pn_.__r_.__value_.__r.__words[0];
      if (v305.__pn_.__r_.__value_.__r.__words[0] != v38)
      {
        while (1)
        {
          std::__fs::filesystem::__status(v47, 0);
          if (v301)
          {
            if (v301 != 255)
            {
              break;
            }
          }

          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v298, v47);
          v47 += 24;
          if (v47 == v38)
          {
            goto LABEL_166;
          }
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v48 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v49 = (*v48 ? *v48 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v47;
            if (*(v47 + 23) < 0)
            {
              v50 = *v47;
            }

            LODWORD(v307.__first_) = 136315650;
            *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
            WORD2(v307.__begin_) = 1024;
            *(&v307.__begin_ + 6) = 66;
            WORD1(v307.__end_) = 2080;
            *(&v307.__end_ + 4) = v50;
            _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix graph %s", &v307, 0x1Cu);
          }
        }

        v51 = *(this + 1588);
        if (v51 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v52 = v47;
          if (*(v47 + 23) < 0)
          {
            v52 = *v47;
          }

          CALegacyLog::log(v51, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 66, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix graph %s", v52);
        }

        if (*(v47 + 23) < 0)
        {
          v53 = *v47;
        }

        std::ifstream::basic_ifstream(&v307);
        std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v310, *&v308[v307.__first_[-1].__r_.__value_.__r.__words[0]]);
        if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v310;
        }

        else
        {
          v54 = v310.__r_.__value_.__r.__words[0];
        }

        if (v54)
        {
          if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = v310.__r_.__value_.__l.__size_;
          }

          v56 = CFStringCreateWithBytes(0, v54, v55, 0x8000100u, 0);
          v306.__r_.__value_.__r.__words[0] = v56;
          if (!v56)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          v56 = 0;
        }

        v58 = *(this + 2027);
        *(this + 2027) = v56;
        v306.__r_.__value_.__r.__words[0] = v58;
        if (v58)
        {
          CFRelease(v58);
        }

        std::__fs::filesystem::path::filename[abi:ne200100](&v312, v47);
        memset(&__replacement, 0, sizeof(__replacement));
        v59 = std::__fs::filesystem::path::replace_extension(&v312, &__replacement);
        if (SHIBYTE(v59->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v306, v59->__pn_.__r_.__value_.__l.__data_, v59->__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = *&v59->__pn_.__r_.__value_.__l.__data_;
          v306.__r_.__value_.__r.__words[2] = v59->__pn_.__r_.__value_.__r.__words[2];
          *&v306.__r_.__value_.__l.__data_ = v60;
        }

        if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v312.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v312.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v306.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v306;
        }

        else
        {
          v61 = v306.__r_.__value_.__r.__words[0];
        }

        if (v61)
        {
          if ((v306.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v62 = HIBYTE(v306.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v62 = v306.__r_.__value_.__l.__size_;
          }

          v63 = CFStringCreateWithBytes(0, v61, v62, 0x8000100u, 0);
          v312.__pn_.__r_.__value_.__r.__words[0] = v63;
          if (!v63)
          {
            v64 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v64, "Could not construct");
          }
        }

        else
        {
          v63 = 0;
        }

        v65 = *(this + 2028);
        *(this + 2028) = v63;
        v312.__pn_.__r_.__value_.__r.__words[0] = v65;
        if (v65)
        {
          CFRelease(v65);
        }

        v66 = v298;
        v67 = v299;
        while (v67 != v66)
        {
          v68 = *(v67 - 1);
          v67 -= 3;
          if (v68 < 0)
          {
            operator delete(*v67);
          }
        }

        v299 = v66;
        if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v306.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v310.__r_.__value_.__l.__data_);
        }

        v307.__first_ = *MEMORY[0x277D82808];
        *(&v307.__first_ + v307.__first_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x277D82808] + 24);
        MEMORY[0x2743CBA00](&v307.__end_);
        std::istream::~istream();
        MEMORY[0x2743CBE30](&v309);
      }

LABEL_166:
      v307.__first_ = &v305;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v307);
      v70 = v298;
      v69 = v299;
      if (v298 != v299)
      {
        v71 = MEMORY[0x277D86220];
        do
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v72 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v73 = (*v72 ? *v72 : v71);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = v70;
              if (*(v70 + 23) < 0)
              {
                v74 = *v70;
              }

              LODWORD(v307.__first_) = 136315650;
              *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
              WORD2(v307.__begin_) = 1024;
              *(&v307.__begin_ + 6) = 84;
              WORD1(v307.__end_) = 2080;
              *(&v307.__end_ + 4) = v74;
              _os_log_impl(&dword_2724B4000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v307, 0x1Cu);
            }
          }

          v75 = *(this + 1588);
          if (v75 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v76 = v70;
            if (*(v70 + 23) < 0)
            {
              v76 = *v70;
            }

            CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 84, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v76);
          }

          v70 += 3;
        }

        while (v70 != v69);
      }

      v295 = 0;
      v296 = 0;
      v297 = 0;
      memset(&v305, 0, sizeof(v305));
      VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v310, this);
      if (v311 == 1)
      {
        v77 = (this + 8);
        if (*(this + 31) < 0)
        {
          v77 = *v273;
        }

        v307.__first_ = v77;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v306, &v307.__first_);
        std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        std::__fs::filesystem::path::operator/=[abi:ne200100](&v306, &v310);
        VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
        if (SHIBYTE(v307.__end_) >= 0)
        {
          v78 = &v307;
        }

        else
        {
          v78 = v307.__first_;
        }

        if (SHIBYTE(v307.__end_) >= 0)
        {
          v79 = HIBYTE(v307.__end_);
        }

        else
        {
          v79 = v307.__begin_;
        }

        std::string::append(&v306, v78, v79);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        std::string::append(&v306, ".austrip", 8uLL);
        v80 = v305.__pn_.__r_.__value_.__l.__size_;
        if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
        {
          v82 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          v83 = v82 + 1;
          if (v82 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_716;
          }

          if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v83)
          {
            v83 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v84 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v84 = v83;
          }

          v307.__end_cap_.__value_ = &v305;
          if (v84)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v84);
          }

          v85 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v307.__first_ = 0;
          v307.__begin_ = v85;
          v307.__end_cap_.__value_ = 0;
          v86 = *&v306.__r_.__value_.__l.__data_;
          v85->__r_.__value_.__r.__words[2] = v306.__r_.__value_.__r.__words[2];
          *&v85->__r_.__value_.__l.__data_ = v86;
          memset(&v306, 0, sizeof(v306));
          v307.__end_ = (24 * v82 + 24);
          v87 = 24 * v82 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v85 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
          v88 = v305.__pn_.__r_.__value_.__r.__words[0];
          v305.__pn_.__r_.__value_.__r.__words[0] = v87;
          v89 = v305.__pn_.__r_.__value_.__r.__words[2];
          v277 = v307.__end_;
          *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
          v307.__end_ = v88;
          v307.__end_cap_.__value_ = v89;
          v307.__first_ = v88;
          v307.__begin_ = v88;
          std::__split_buffer<std::string>::~__split_buffer(&v307);
          v305.__pn_.__r_.__value_.__l.__size_ = v277;
          if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v306.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v81 = *&v306.__r_.__value_.__l.__data_;
          *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v306.__r_.__value_.__l + 2);
          *v80 = v81;
          v305.__pn_.__r_.__value_.__l.__size_ = v80 + 24;
        }

        if ((v311 & 1) != 0 && SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v310.__r_.__value_.__l.__data_);
        }
      }

      v90 = (this + 8);
      if (*(this + 31) < 0)
      {
        v90 = *v273;
      }

      v307.__first_ = v90;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
      VoiceProcessorV2::GetHardwareModelNameForTuning(&v307, this, 0);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 0);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
      if (SHIBYTE(v307.__end_) >= 0)
      {
        v91 = &v307;
      }

      else
      {
        v91 = v307.__first_;
      }

      if (SHIBYTE(v307.__end_) >= 0)
      {
        v92 = HIBYTE(v307.__end_);
      }

      else
      {
        v92 = v307.__begin_;
      }

      std::string::append(&v310, v91, v92);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
      {
        v93 = 1885892727;
        if ((**(this + 294) | 0x20) != 0x70687062)
        {
          v93 = **(this + 294);
        }

        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v312, v93);
        std::string::basic_string[abi:ne200100]<0>(&v306, &v312);
        v94 = std::string::insert(&v306, 0, "_", 1uLL);
        v95 = *&v94->__r_.__value_.__l.__data_;
        v307.__end_ = v94->__r_.__value_.__r.__words[2];
        *&v307.__first_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v307.__end_) >= 0)
        {
          v96 = &v307;
        }

        else
        {
          v96 = v307.__first_;
        }

        if (SHIBYTE(v307.__end_) >= 0)
        {
          v97 = HIBYTE(v307.__end_);
        }

        else
        {
          v97 = v307.__begin_;
        }

        std::string::append(&v310, v96, v97);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v306.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v310, ".austrip", 8uLL);
      v98 = v305.__pn_.__r_.__value_.__l.__size_;
      if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
      {
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v101 = v100 + 1;
        if (v100 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_716;
        }

        if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v101)
        {
          v101 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v102 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v102 = v101;
        }

        v307.__end_cap_.__value_ = &v305;
        if (v102)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v102);
        }

        v103 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v307.__first_ = 0;
        v307.__begin_ = v103;
        v307.__end_cap_.__value_ = 0;
        v104 = *&v310.__r_.__value_.__l.__data_;
        v103->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
        *&v103->__r_.__value_.__l.__data_ = v104;
        memset(&v310, 0, sizeof(v310));
        v307.__end_ = (24 * v100 + 24);
        v105 = 24 * v100 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v103 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
        v106 = v305.__pn_.__r_.__value_.__r.__words[0];
        v305.__pn_.__r_.__value_.__r.__words[0] = v105;
        v107 = v305.__pn_.__r_.__value_.__r.__words[2];
        v278 = v307.__end_;
        *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
        v307.__end_ = v106;
        v307.__end_cap_.__value_ = v107;
        v307.__first_ = v106;
        v307.__begin_ = v106;
        std::__split_buffer<std::string>::~__split_buffer(&v307);
        v305.__pn_.__r_.__value_.__l.__size_ = v278;
        if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v310.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v99 = *&v310.__r_.__value_.__l.__data_;
        *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
        *v98 = v99;
        v305.__pn_.__r_.__value_.__l.__size_ = v98 + 24;
      }

      v108 = (this + 8);
      if (*(this + 31) < 0)
      {
        v108 = *v273;
      }

      v307.__first_ = v108;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
      std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
      if (SHIBYTE(v307.__end_) >= 0)
      {
        v109 = &v307;
      }

      else
      {
        v109 = v307.__first_;
      }

      if (SHIBYTE(v307.__end_) >= 0)
      {
        v110 = HIBYTE(v307.__end_);
      }

      else
      {
        v110 = v307.__begin_;
      }

      std::string::append(&v310, v109, v110);
      if (SHIBYTE(v307.__end_) < 0)
      {
        operator delete(v307.__first_);
      }

      if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
      {
        v111 = 1885892727;
        if ((**(this + 294) | 0x20) != 0x70687062)
        {
          v111 = **(this + 294);
        }

        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v312, v111);
        std::string::basic_string[abi:ne200100]<0>(&v306, &v312);
        v112 = std::string::insert(&v306, 0, "_", 1uLL);
        v113 = *&v112->__r_.__value_.__l.__data_;
        v307.__end_ = v112->__r_.__value_.__r.__words[2];
        *&v307.__first_ = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v307.__end_) >= 0)
        {
          v114 = &v307;
        }

        else
        {
          v114 = v307.__first_;
        }

        if (SHIBYTE(v307.__end_) >= 0)
        {
          v115 = HIBYTE(v307.__end_);
        }

        else
        {
          v115 = v307.__begin_;
        }

        std::string::append(&v310, v114, v115);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v306.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v310, ".austrip", 8uLL);
      v116 = v305.__pn_.__r_.__value_.__l.__size_;
      if (v305.__pn_.__r_.__value_.__l.__size_ < v305.__pn_.__r_.__value_.__r.__words[2])
      {
        v117 = *&v310.__r_.__value_.__l.__data_;
        *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
        *v116 = v117;
        v118 = v116 + 24;
        v305.__pn_.__r_.__value_.__l.__size_ = v116 + 24;
        goto LABEL_302;
      }

      v119 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
      v120 = v119 + 1;
      if (v119 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v120)
        {
          v120 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v121 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v121 = v120;
        }

        v307.__end_cap_.__value_ = &v305;
        if (v121)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](v121);
        }

        v122 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
        v307.__first_ = 0;
        v307.__begin_ = v122;
        v307.__end_cap_.__value_ = 0;
        v123 = *&v310.__r_.__value_.__l.__data_;
        v122->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
        *&v122->__r_.__value_.__l.__data_ = v123;
        memset(&v310, 0, sizeof(v310));
        v307.__end_ = (24 * v119 + 24);
        v124 = 24 * v119 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v122 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
        v125 = v305.__pn_.__r_.__value_.__r.__words[0];
        v305.__pn_.__r_.__value_.__r.__words[0] = v124;
        v126 = v305.__pn_.__r_.__value_.__r.__words[2];
        v279 = v307.__end_;
        *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
        v307.__end_ = v125;
        v307.__end_cap_.__value_ = v126;
        v307.__first_ = v125;
        v307.__begin_ = v125;
        std::__split_buffer<std::string>::~__split_buffer(&v307);
        v118 = v279;
        v305.__pn_.__r_.__value_.__l.__size_ = v279;
        if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v310.__r_.__value_.__l.__data_);
          v118 = v305.__pn_.__r_.__value_.__l.__size_;
        }

LABEL_302:
        v127 = v305.__pn_.__r_.__value_.__r.__words[0];
        if (v305.__pn_.__r_.__value_.__r.__words[0] != v118)
        {
          while (1)
          {
            std::__fs::filesystem::__status(v127, 0);
            if (v302)
            {
              if (v302 != 255)
              {
                break;
              }
            }

            std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v295, v127);
            v127 += 24;
            if (v127 == v118)
            {
              goto LABEL_339;
            }
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v128 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
          {
            v129 = (*v128 ? *v128 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              v130 = v127;
              if (*(v127 + 23) < 0)
              {
                v130 = *v127;
              }

              LODWORD(v307.__first_) = 136315650;
              *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
              WORD2(v307.__begin_) = 1024;
              *(&v307.__begin_ + 6) = 93;
              WORD1(v307.__end_) = 2080;
              *(&v307.__end_ + 4) = v130;
              _os_log_impl(&dword_2724B4000, v129, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix AU strip %s", &v307, 0x1Cu);
            }
          }

          v131 = *(this + 1588);
          if (v131 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v132 = v127;
            if (*(v127 + 23) < 0)
            {
              v132 = *v127;
            }

            CALegacyLog::log(v131, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 93, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix AU strip %s", v132);
          }

          if (*(v127 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v307, *v127, *(v127 + 8));
          }

          else
          {
            v133 = *v127;
            v307.__end_ = *(v127 + 16);
            *&v307.__first_ = v133;
          }

          applesauce::CF::make_DataRef(&v310, &v307);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          applesauce::CF::make_DictionaryRef(&v307, v310.__r_.__value_.__l.__data_);
          v134 = *(this + 2029);
          *(this + 2029) = v307.__first_;
          v307.__first_ = v134;
          if (v134)
          {
            CFRelease(v134);
          }

          v135 = v295;
          v136 = v296;
          while (v136 != v135)
          {
            v137 = *(v136 - 1);
            v136 -= 3;
            if (v137 < 0)
            {
              operator delete(*v136);
            }
          }

          v296 = v135;
          if (v310.__r_.__value_.__r.__words[0])
          {
            CFRelease(v310.__r_.__value_.__l.__data_);
          }
        }

LABEL_339:
        v307.__first_ = &v305;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v307);
        v139 = v295;
        v138 = v296;
        if (v295 != v296)
        {
          v140 = MEMORY[0x277D86220];
          do
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v141 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v142 = (*v141 ? *v141 : v140);
              if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
              {
                v143 = v139;
                if (*(v139 + 23) < 0)
                {
                  v143 = *v139;
                }

                LODWORD(v307.__first_) = 136315650;
                *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v307.__begin_) = 1024;
                *(&v307.__begin_ + 6) = 109;
                WORD1(v307.__end_) = 2080;
                *(&v307.__end_ + 4) = v143;
                _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v307, 0x1Cu);
              }
            }

            v144 = *(this + 1588);
            if (v144 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v145 = v139;
              if (*(v139 + 23) < 0)
              {
                v145 = *v139;
              }

              CALegacyLog::log(v144, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 109, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v145);
            }

            v139 += 3;
          }

          while (v139 != v138);
        }

        v292 = 0;
        v293 = 0;
        v294 = 0;
        memset(&v305, 0, sizeof(v305));
        VoiceProcessorV2::GetRouteSpecificGenericTuningSubDir(&v310, this);
        if (v311 == 1)
        {
          v146 = (this + 8);
          if (*(this + 31) < 0)
          {
            v146 = *v273;
          }

          v307.__first_ = v146;
          std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v306, &v307.__first_);
          std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          std::__fs::filesystem::path::operator/=[abi:ne200100](&v306, &v310);
          VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
          std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v306, &v307);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
          if (SHIBYTE(v307.__end_) >= 0)
          {
            v147 = &v307;
          }

          else
          {
            v147 = v307.__first_;
          }

          if (SHIBYTE(v307.__end_) >= 0)
          {
            v148 = HIBYTE(v307.__end_);
          }

          else
          {
            v148 = v307.__begin_;
          }

          std::string::append(&v306, v147, v148);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          std::string::append(&v306, ".propstrip", 0xAuLL);
          v149 = v305.__pn_.__r_.__value_.__l.__size_;
          if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
          {
            v151 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
            v152 = v151 + 1;
            if (v151 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_717;
            }

            if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v152)
            {
              v152 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
            {
              v153 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v153 = v152;
            }

            v307.__end_cap_.__value_ = &v305;
            if (v153)
            {
              std::allocator<std::string>::allocate_at_least[abi:ne200100](v153);
            }

            v154 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
            v307.__first_ = 0;
            v307.__begin_ = v154;
            v307.__end_cap_.__value_ = 0;
            v155 = *&v306.__r_.__value_.__l.__data_;
            v154->__r_.__value_.__r.__words[2] = v306.__r_.__value_.__r.__words[2];
            *&v154->__r_.__value_.__l.__data_ = v155;
            memset(&v306, 0, sizeof(v306));
            v307.__end_ = (24 * v151 + 24);
            v156 = 24 * v151 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v154 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
            v157 = v305.__pn_.__r_.__value_.__r.__words[0];
            v305.__pn_.__r_.__value_.__r.__words[0] = v156;
            v158 = v305.__pn_.__r_.__value_.__r.__words[2];
            v280 = v307.__end_;
            *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
            v307.__end_ = v157;
            v307.__end_cap_.__value_ = v158;
            v307.__first_ = v157;
            v307.__begin_ = v157;
            std::__split_buffer<std::string>::~__split_buffer(&v307);
            v305.__pn_.__r_.__value_.__l.__size_ = v280;
            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v150 = *&v306.__r_.__value_.__l.__data_;
            *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v306.__r_.__value_.__l + 2);
            *v149 = v150;
            v305.__pn_.__r_.__value_.__l.__size_ = v149 + 24;
          }

          if ((v311 & 1) != 0 && SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v310.__r_.__value_.__l.__data_);
          }
        }

        v159 = (this + 8);
        if (*(this + 31) < 0)
        {
          v159 = *v273;
        }

        v307.__first_ = v159;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
        VoiceProcessorV2::GetHardwareModelNameForTuning(&v307, this, 0);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 0);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
        if (SHIBYTE(v307.__end_) >= 0)
        {
          v160 = &v307;
        }

        else
        {
          v160 = v307.__first_;
        }

        if (SHIBYTE(v307.__end_) >= 0)
        {
          v161 = HIBYTE(v307.__end_);
        }

        else
        {
          v161 = v307.__begin_;
        }

        std::string::append(&v310, v160, v161);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
        {
          v162 = 1885892727;
          if ((**(this + 294) | 0x20) != 0x70687062)
          {
            v162 = **(this + 294);
          }

          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v312, v162);
          std::string::basic_string[abi:ne200100]<0>(&v306, &v312);
          v163 = std::string::insert(&v306, 0, "_", 1uLL);
          v164 = *&v163->__r_.__value_.__l.__data_;
          v307.__end_ = v163->__r_.__value_.__r.__words[2];
          *&v307.__first_ = v164;
          v163->__r_.__value_.__l.__size_ = 0;
          v163->__r_.__value_.__r.__words[2] = 0;
          v163->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v307.__end_) >= 0)
          {
            v165 = &v307;
          }

          else
          {
            v165 = v307.__first_;
          }

          if (SHIBYTE(v307.__end_) >= 0)
          {
            v166 = HIBYTE(v307.__end_);
          }

          else
          {
            v166 = v307.__begin_;
          }

          std::string::append(&v310, v165, v166);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v306.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v310, ".propstrip", 0xAuLL);
        v167 = v305.__pn_.__r_.__value_.__l.__size_;
        if (v305.__pn_.__r_.__value_.__l.__size_ >= v305.__pn_.__r_.__value_.__r.__words[2])
        {
          v169 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          v170 = v169 + 1;
          if (v169 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_717;
          }

          if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v170)
          {
            v170 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v171 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v171 = v170;
          }

          v307.__end_cap_.__value_ = &v305;
          if (v171)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v171);
          }

          v172 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v307.__first_ = 0;
          v307.__begin_ = v172;
          v307.__end_cap_.__value_ = 0;
          v173 = *&v310.__r_.__value_.__l.__data_;
          v172->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
          *&v172->__r_.__value_.__l.__data_ = v173;
          memset(&v310, 0, sizeof(v310));
          v307.__end_ = (24 * v169 + 24);
          v174 = 24 * v169 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v172 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
          v175 = v305.__pn_.__r_.__value_.__r.__words[0];
          v305.__pn_.__r_.__value_.__r.__words[0] = v174;
          v176 = v305.__pn_.__r_.__value_.__r.__words[2];
          v281 = v307.__end_;
          *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
          v307.__end_ = v175;
          v307.__end_cap_.__value_ = v176;
          v307.__first_ = v175;
          v307.__begin_ = v175;
          std::__split_buffer<std::string>::~__split_buffer(&v307);
          v305.__pn_.__r_.__value_.__l.__size_ = v281;
          if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v310.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v168 = *&v310.__r_.__value_.__l.__data_;
          *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
          *v167 = v168;
          v305.__pn_.__r_.__value_.__l.__size_ = v167 + 24;
        }

        v177 = (this + 8);
        if (*(this + 31) < 0)
        {
          v177 = *v273;
        }

        v307.__first_ = v177;
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v310, &v307.__first_);
        std::string::basic_string[abi:ne200100]<0>(&v307, "Generic");
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetVersionNameForTuning(&v307, this);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixGraphFileNamePrefix(&v307, this, 1);
        std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v310, &v307);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        VoiceProcessorV2::GetFarEndVoiceMixType(&v307, this);
        if (SHIBYTE(v307.__end_) >= 0)
        {
          v178 = &v307;
        }

        else
        {
          v178 = v307.__first_;
        }

        if (SHIBYTE(v307.__end_) >= 0)
        {
          v179 = HIBYTE(v307.__end_);
        }

        else
        {
          v179 = v307.__begin_;
        }

        std::string::append(&v310, v178, v179);
        if (SHIBYTE(v307.__end_) < 0)
        {
          operator delete(v307.__first_);
        }

        if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) != 1)
        {
          v180 = 1885892727;
          if ((**(this + 294) | 0x20) != 0x70687062)
          {
            v180 = **(this + 294);
          }

          CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v312, v180);
          std::string::basic_string[abi:ne200100]<0>(&v306, &v312);
          v181 = std::string::insert(&v306, 0, "_", 1uLL);
          v182 = *&v181->__r_.__value_.__l.__data_;
          v307.__end_ = v181->__r_.__value_.__r.__words[2];
          *&v307.__first_ = v182;
          v181->__r_.__value_.__l.__size_ = 0;
          v181->__r_.__value_.__r.__words[2] = 0;
          v181->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v307.__end_) >= 0)
          {
            v183 = &v307;
          }

          else
          {
            v183 = v307.__first_;
          }

          if (SHIBYTE(v307.__end_) >= 0)
          {
            v184 = HIBYTE(v307.__end_);
          }

          else
          {
            v184 = v307.__begin_;
          }

          std::string::append(&v310, v183, v184);
          if (SHIBYTE(v307.__end_) < 0)
          {
            operator delete(v307.__first_);
          }

          if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v306.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v310, ".propstrip", 0xAuLL);
        v185 = v305.__pn_.__r_.__value_.__l.__size_;
        if (v305.__pn_.__r_.__value_.__l.__size_ < v305.__pn_.__r_.__value_.__r.__words[2])
        {
          v186 = *&v310.__r_.__value_.__l.__data_;
          *(v305.__pn_.__r_.__value_.__l.__size_ + 16) = *(&v310.__r_.__value_.__l + 2);
          *v185 = v186;
          v187 = v185 + 24;
          v305.__pn_.__r_.__value_.__l.__size_ = v185 + 24;
          goto LABEL_475;
        }

        v188 = 0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
        v189 = v188 + 1;
        if (v188 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          if (0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) > v189)
          {
            v189 = 0x5555555555555556 * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v305.__pn_.__r_.__value_.__r.__words[2] - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v190 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v190 = v189;
          }

          v307.__end_cap_.__value_ = &v305;
          if (v190)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100](v190);
          }

          v191 = (8 * ((v305.__pn_.__r_.__value_.__l.__size_ - v305.__pn_.__r_.__value_.__r.__words[0]) >> 3));
          v307.__first_ = 0;
          v307.__begin_ = v191;
          v307.__end_cap_.__value_ = 0;
          v192 = *&v310.__r_.__value_.__l.__data_;
          v191->__r_.__value_.__r.__words[2] = v310.__r_.__value_.__r.__words[2];
          *&v191->__r_.__value_.__l.__data_ = v192;
          memset(&v310, 0, sizeof(v310));
          v307.__end_ = (24 * v188 + 24);
          v193 = 24 * v188 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(&v305, v305.__pn_.__r_.__value_.__l.__data_, v305.__pn_.__r_.__value_.__l.__size_, v191 + v305.__pn_.__r_.__value_.__r.__words[0] - v305.__pn_.__r_.__value_.__l.__size_);
          v194 = v305.__pn_.__r_.__value_.__r.__words[0];
          v305.__pn_.__r_.__value_.__r.__words[0] = v193;
          v195 = v305.__pn_.__r_.__value_.__r.__words[2];
          v282 = v307.__end_;
          *&v305.__pn_.__r_.__value_.__r.__words[1] = *&v307.__end_;
          v307.__end_ = v194;
          v307.__end_cap_.__value_ = v195;
          v307.__first_ = v194;
          v307.__begin_ = v194;
          std::__split_buffer<std::string>::~__split_buffer(&v307);
          v187 = v282;
          v305.__pn_.__r_.__value_.__l.__size_ = v282;
          if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v310.__r_.__value_.__l.__data_);
            v187 = v305.__pn_.__r_.__value_.__l.__size_;
          }

LABEL_475:
          v196 = v305.__pn_.__r_.__value_.__r.__words[0];
          if (v305.__pn_.__r_.__value_.__r.__words[0] != v187)
          {
            while (1)
            {
              std::__fs::filesystem::__status(v196, 0);
              if (v303)
              {
                if (v303 != 255)
                {
                  break;
                }
              }

              std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v292, v196);
              v196 += 24;
              if (v196 == v187)
              {
                goto LABEL_512;
              }
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v197 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v198 = (*v197 ? *v197 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                v199 = v196;
                if (*(v196 + 23) < 0)
                {
                  v199 = *v196;
                }

                LODWORD(v307.__first_) = 136315650;
                *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v307.__begin_) = 1024;
                *(&v307.__begin_ + 6) = 118;
                WORD1(v307.__end_) = 2080;
                *(&v307.__end_ + 4) = v199;
                _os_log_impl(&dword_2724B4000, v198, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix property strip %s", &v307, 0x1Cu);
              }
            }

            v200 = *(this + 1588);
            if (v200 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v201 = v196;
              if (*(v196 + 23) < 0)
              {
                v201 = *v196;
              }

              CALegacyLog::log(v200, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 118, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix property strip %s", v201);
            }

            if (*(v196 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v307, *v196, *(v196 + 8));
            }

            else
            {
              v202 = *v196;
              v307.__end_ = *(v196 + 16);
              *&v307.__first_ = v202;
            }

            applesauce::CF::make_DataRef(&v310, &v307);
            if (SHIBYTE(v307.__end_) < 0)
            {
              operator delete(v307.__first_);
            }

            applesauce::CF::make_DictionaryRef(&v307, v310.__r_.__value_.__l.__data_);
            v203 = *(this + 2030);
            *(this + 2030) = v307.__first_;
            v307.__first_ = v203;
            if (v203)
            {
              CFRelease(v203);
            }

            v204 = v292;
            v205 = v293;
            while (v205 != v204)
            {
              v206 = *(v205 - 1);
              v205 -= 3;
              if (v206 < 0)
              {
                operator delete(*v205);
              }
            }

            v293 = v204;
            if (v310.__r_.__value_.__r.__words[0])
            {
              CFRelease(v310.__r_.__value_.__l.__data_);
            }
          }

LABEL_512:
          v307.__first_ = &v305;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v307);
          v208 = v292;
          v207 = v293;
          if (v292 != v293)
          {
            v209 = MEMORY[0x277D86220];
            do
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v210 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
              {
                v211 = (*v210 ? *v210 : v209);
                if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
                {
                  v212 = v208;
                  if (*(v208 + 23) < 0)
                  {
                    v212 = *v208;
                  }

                  LODWORD(v307.__first_) = 136315650;
                  *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                  WORD2(v307.__begin_) = 1024;
                  *(&v307.__begin_ + 6) = 135;
                  WORD1(v307.__end_) = 2080;
                  *(&v307.__end_ + 4) = v212;
                  _os_log_impl(&dword_2724B4000, v211, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", &v307, 0x1Cu);
                }
              }

              v213 = *(this + 1588);
              if (v213 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v214 = v208;
                if (*(v208 + 23) < 0)
                {
                  v214 = *v208;
                }

                CALegacyLog::log(v213, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 135, "SetupDownlinkFarEndVoiceMixGraph", "file %s does not exist", v214);
              }

              v208 += 3;
            }

            while (v208 != v207);
          }

          v215 = **(this + 294) - 1885892674;
          v216 = v215 > 0x35;
          v217 = (1 << v215) & 0x20000100000001;
          v218 = v216 || v217 == 0;
          if (!v218 && (*(this + 16388) & 1) != 0 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) == 2)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v219 = 1885892727;
            v220 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v221 = (*v220 ? *v220 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v307.__first_) = 136315394;
                *(&v307.__first_ + 4) = "vpSetupDownlinkDSPChain.cpp";
                WORD2(v307.__begin_) = 1024;
                *(&v307.__begin_ + 6) = 139;
                _os_log_impl(&dword_2724B4000, v221, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> loading far end voice mix headtracking specific aupreset", &v307, 0x12u);
              }
            }

            v222 = *(this + 1588);
            if (v222 && ((*v283 & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v222, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 139, "SetupDownlinkFarEndVoiceMixGraph", "loading far end voice mix headtracking specific aupreset");
            }

            v289 = 0;
            v290 = 0;
            v291 = 0;
            v288 = 0uLL;
            v287 = 0;
            if (*(this + 31) < 0)
            {
              v223 = *v273;
            }

            else
            {
              v223 = (this + 8);
            }

            v307.__first_ = v223;
            std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v305.__pn_, &v307.__first_);
            VoiceProcessorV2::GetHardwareModelNameForTuning(&v307, this, 0);
            std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305.__pn_, &v307);
            if (SHIBYTE(v307.__end_) < 0)
            {
              operator delete(v307.__first_);
            }

            if (std::__fs::filesystem::path::__filename(&v305).__size_)
            {
              std::string::push_back(&v305.__pn_, 47);
            }

            std::string::append[abi:ne200100]<char const*,0>(&v305.__pn_, "AU", "");
            VoiceProcessorV2::GetDeviceCodeNameForTuning(&v312, this, 0);
            if (*(this + 60) == 1)
            {
              if (SHIBYTE(v312.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                v312.__pn_.__r_.__value_.__l.__size_ = 0;
                v225 = v312.__pn_.__r_.__value_.__r.__words[0];
              }

              else
              {
                *(&v312.__pn_.__r_.__value_.__s + 23) = 0;
                v225 = &v312;
              }

              v225->__pn_.__r_.__value_.__s.__data_[0] = 0;
            }

            if (SHIBYTE(v312.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__replacement.__pn_, v312.__pn_.__r_.__value_.__l.__data_, v312.__pn_.__r_.__value_.__l.__size_);
            }

            else
            {
              __replacement = v312;
            }

            if ((**(this + 294) | 0x20) != 0x70687062)
            {
              v219 = **(this + 294);
            }

            memset(&v307, 0, 24);
            if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v226 = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v226 = __replacement.__pn_.__r_.__value_.__l.__size_;
            }

            if (v226)
            {
              if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_replacement = &__replacement;
              }

              else
              {
                p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
              }

              std::string::append(&v307, p_replacement, v226);
              std::string::append(&v307, "-", 1uLL);
            }

            std::string::append(&v307, "vp", 2uLL);
            strcpy(__s, "aufx");
            std::string::basic_string[abi:ne200100]<0>(&v306, __s);
            v228 = std::string::insert(&v306, 0, "-", 1uLL);
            v229 = *&v228->__r_.__value_.__l.__data_;
            v310.__r_.__value_.__r.__words[2] = v228->__r_.__value_.__r.__words[2];
            *&v310.__r_.__value_.__l.__data_ = v229;
            v228->__r_.__value_.__l.__size_ = 0;
            v228->__r_.__value_.__r.__words[2] = 0;
            v228->__r_.__value_.__r.__words[0] = 0;
            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v230 = &v310;
            }

            else
            {
              v230 = v310.__r_.__value_.__r.__words[0];
            }

            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v231 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v231 = v310.__r_.__value_.__l.__size_;
            }

            std::string::append(&v307, v230, v231);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }

            strcpy(__s, "ftac");
            std::string::basic_string[abi:ne200100]<0>(&v306, __s);
            v232 = std::string::insert(&v306, 0, "-", 1uLL);
            v233 = *&v232->__r_.__value_.__l.__data_;
            v310.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
            *&v310.__r_.__value_.__l.__data_ = v233;
            v232->__r_.__value_.__l.__size_ = 0;
            v232->__r_.__value_.__r.__words[2] = 0;
            v232->__r_.__value_.__r.__words[0] = 0;
            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v234 = &v310;
            }

            else
            {
              v234 = v310.__r_.__value_.__r.__words[0];
            }

            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v235 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v235 = v310.__r_.__value_.__l.__size_;
            }

            std::string::append(&v307, v234, v235);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }

            strcpy(__s, "appl");
            std::string::basic_string[abi:ne200100]<0>(&v306, __s);
            v236 = std::string::insert(&v306, 0, "-", 1uLL);
            v237 = *&v236->__r_.__value_.__l.__data_;
            v310.__r_.__value_.__r.__words[2] = v236->__r_.__value_.__r.__words[2];
            *&v310.__r_.__value_.__l.__data_ = v237;
            v236->__r_.__value_.__l.__size_ = 0;
            v236->__r_.__value_.__r.__words[2] = 0;
            v236->__r_.__value_.__r.__words[0] = 0;
            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v238 = &v310;
            }

            else
            {
              v238 = v310.__r_.__value_.__r.__words[0];
            }

            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v239 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v239 = v310.__r_.__value_.__l.__size_;
            }

            std::string::append(&v307, v238, v239);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }

            v240 = bswap32(v219);
            *__s = v240;
            if ((v240 - 32) > 0x5E || ((v240 >> 8) - 32) > 0x5E || ((v240 << 8 >> 24) - 32) > 0x5E || ((v240 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v306, v219);
            }

            else
            {
              __s[4] = 0;
              std::string::basic_string[abi:ne200100]<0>(&v306, __s);
            }

            v241 = std::string::insert(&v306, 0, "-", 1uLL);
            v242 = *&v241->__r_.__value_.__l.__data_;
            v310.__r_.__value_.__r.__words[2] = v241->__r_.__value_.__r.__words[2];
            *&v310.__r_.__value_.__l.__data_ = v242;
            v241->__r_.__value_.__l.__size_ = 0;
            v241->__r_.__value_.__r.__words[2] = 0;
            v241->__r_.__value_.__r.__words[0] = 0;
            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v243 = &v310;
            }

            else
            {
              v243 = v310.__r_.__value_.__r.__words[0];
            }

            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v244 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v244 = v310.__r_.__value_.__l.__size_;
            }

            std::string::append(&v307, v243, v244);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }

            std::string::append(&v307, "-dlnk", 5uLL);
            strcpy(__s, "shtp");
            std::string::basic_string[abi:ne200100]<0>(&v306, __s);
            v245 = std::string::insert(&v306, 0, "-", 1uLL);
            v246 = *&v245->__r_.__value_.__l.__data_;
            v310.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
            *&v310.__r_.__value_.__l.__data_ = v246;
            v245->__r_.__value_.__l.__size_ = 0;
            v245->__r_.__value_.__r.__words[2] = 0;
            v245->__r_.__value_.__r.__words[0] = 0;
            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v247 = &v310;
            }

            else
            {
              v247 = v310.__r_.__value_.__r.__words[0];
            }

            if ((v310.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v248 = HIBYTE(v310.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v248 = v310.__r_.__value_.__l.__size_;
            }

            std::string::append(&v307, v247, v248);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v306.__r_.__value_.__l.__data_);
            }

            *&v310.__r_.__value_.__l.__data_ = *&v307.__first_;
            v310.__r_.__value_.__r.__words[2] = v307.__end_;
            std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v305.__pn_, &v310);
            if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v310.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
            }

            std::string::append(&v305.__pn_, ".aupreset", 9uLL);
            v307.__end_cap_.__value_ = &v287;
            std::allocator<std::string>::allocate_at_least[abi:ne200100](1uLL);
          }

          v224 = *(this + 2034);
          *(this + 2034) = 0;
          if (v224)
          {
            CFRelease(v224);
          }

          if (!*(this + 2027) || !*(this + 2028) || !*(this + 2029) || !*(this + 2030))
          {
            goto LABEL_713;
          }

          *(this + 4070) = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
          *(this + 16284) = 1;
          *(this + 1108) |= 1uLL;
          v249 = *(this + 544);
          if (v249)
          {
            applesauce::CF::make_DataRef(&__replacement, *(this + 271), 8 * v249);
            v250 = *(this + 16752);
            if (v250 == 1)
            {
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(&v310, "Data", &__replacement.__pn_.__r_.__value_.__l.__data_);
              v306.__r_.__value_.__r.__words[0] = &v310;
              v306.__r_.__value_.__l.__size_ = 1;
              CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v306);
            }

            else
            {
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v310, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphReporterIDsPropertyID);
              applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(&v310.__r_.__value_.__r.__words[2], "data", &__replacement.__pn_.__r_.__value_.__l.__data_);
              v305.__pn_.__r_.__value_.__r.__words[0] = &v310;
              v305.__pn_.__r_.__value_.__l.__size_ = 2;
              CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v305);
            }

            v253 = *(this + 2031);
            *(this + 2031) = CFDictionaryRef;
            if (v253)
            {
              CFRelease(v253);
            }

            if (v250)
            {
              if (v310.__r_.__value_.__l.__size_)
              {
                CFRelease(v310.__r_.__value_.__l.__size_);
              }

              if (v310.__r_.__value_.__r.__words[0])
              {
                CFRelease(v310.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              for (i = 0; i != -4; i -= 2)
              {
                v255 = *(&v310 + i * 8 + 24);
                if (v255)
                {
                  CFRelease(v255);
                }

                v256 = v310.__r_.__value_.__r.__words[i + 2];
                if (v256)
                {
                  CFRelease(v256);
                }
              }
            }

            v252 = __replacement.__pn_.__r_.__value_.__r.__words[0];
            if (!__replacement.__pn_.__r_.__value_.__r.__words[0])
            {
              goto LABEL_668;
            }
          }

          else
          {
            v252 = *(this + 2031);
            *(this + 2031) = 0;
            if (!v252)
            {
LABEL_668:
              if (VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this) == 2)
              {
                if (*(this + 16388) == 1)
                {
                  if (*(this + 20) == 2)
                  {
                    v257 = 4;
                  }

                  else
                  {
                    v257 = 5;
                  }
                }

                else
                {
                  v257 = 0;
                }

                v286 = v257;
                v260 = *(this + 16752);
                if (v260 == 1)
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v306, "UInt32", &v286);
                  v305.__pn_.__r_.__value_.__r.__words[0] = &v306;
                  v305.__pn_.__r_.__value_.__l.__size_ = 1;
                  v261 = applesauce::CF::details::make_CFDictionaryRef(&v305);
                }

                else
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v306, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphSpatialMixerHeadTrackingModePropertyID);
                  applesauce::CF::make_DataRef(&v285, &v286, 4);
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v306.__r_.__value_.__r.__words[2], "data", &v285);
                  __replacement.__pn_.__r_.__value_.__r.__words[0] = &v306;
                  __replacement.__pn_.__r_.__value_.__l.__size_ = 2;
                  v261 = applesauce::CF::details::make_CFDictionaryRef(&__replacement);
                }

                v262 = *(this + 2032);
                *(this + 2032) = v261;
                if (v262)
                {
                  CFRelease(v262);
                }

                if (v260)
                {
                  if (v306.__r_.__value_.__l.__size_)
                  {
                    CFRelease(v306.__r_.__value_.__l.__size_);
                  }

                  if (v306.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v306.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  for (j = 0; j != -4; j -= 2)
                  {
                    v264 = *(&v306 + j * 8 + 24);
                    if (v264)
                    {
                      CFRelease(v264);
                    }

                    v265 = v306.__r_.__value_.__r.__words[j + 2];
                    if (v265)
                    {
                      CFRelease(v265);
                    }
                  }

                  applesauce::CF::DataRef::~DataRef(&v285);
                }

                v284 = *(this + 16388);
                v266 = *(this + 16752);
                if (v266 == 1)
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v305, "UInt32", &v284);
                  __replacement.__pn_.__r_.__value_.__r.__words[0] = &v305;
                  __replacement.__pn_.__r_.__value_.__l.__size_ = 1;
                  v267 = applesauce::CF::details::make_CFDictionaryRef(&__replacement);
                }

                else
                {
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(&v305, "ID", &VoiceProcessorV2::kFarEndVoiceMixGraphSpatialMixerHeadTrackingEnablePropertyID);
                  applesauce::CF::make_DataRef(&v287, &v284, 4);
                  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v305.__pn_.__r_.__value_.__r.__words[2], "data", &v287);
                  v289 = &v305;
                  v290 = 2;
                  v267 = applesauce::CF::details::make_CFDictionaryRef(&v289);
                }

                v268 = *(this + 2033);
                *(this + 2033) = v267;
                if (v268)
                {
                  CFRelease(v268);
                }

                if (v266)
                {
                  if (v305.__pn_.__r_.__value_.__l.__size_)
                  {
                    CFRelease(v305.__pn_.__r_.__value_.__l.__size_);
                  }

                  if (v305.__pn_.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(v305.__pn_.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  for (k = 0; k != -4; k -= 2)
                  {
                    v270 = *(&v305 + k * 8 + 24);
                    if (v270)
                    {
                      CFRelease(v270);
                    }

                    v271 = v305.__pn_.__r_.__value_.__r.__words[k + 2];
                    if (v271)
                    {
                      CFRelease(v271);
                    }
                  }

                  applesauce::CF::DataRef::~DataRef(&v287);
                }
              }

              else
              {
                v258 = *(this + 2032);
                *(this + 2032) = 0;
                if (v258)
                {
                  CFRelease(v258);
                }

                v259 = *(this + 2033);
                *(this + 2033) = 0;
                if (v259)
                {
                  CFRelease(v259);
                }
              }

              atomic_fetch_add(this + 2047, 1uLL);
LABEL_713:
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v292;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v295;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              __replacement.__pn_.__r_.__value_.__r.__words[0] = &v298;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__replacement);
              goto LABEL_714;
            }
          }

          CFRelease(v252);
          goto LABEL_668;
        }

LABEL_717:
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

LABEL_716:
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

LABEL_715:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

LABEL_714:
  v272 = *MEMORY[0x277D85DE8];
}

void sub_2725935A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void ****a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void ***a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void ***a51)
{
  a51 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a51);
  *(v51 - 176) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 176));
  a21 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a27 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  a30 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(v52);
}

void sub_2725938D0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2725938D8);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x2743CB9F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_272593A74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (a2 && (a2[3] != a2[4] || (*(*a2 + 72))(a2) != -1))
  {
    v4 = a2[3];
    if (v4 == a2[4])
    {
      v5 = (*(*a2 + 72))(a2);
    }

    else
    {
      v5 = *v4;
    }

    std::string::push_back(this, v5);
    v6 = a2[3];
    if (v6 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v6 + 1;
    }
  }
}

void sub_272593BA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743CBA00](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2743CBE30](a1 + 53);
  return a1;
}

void std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = (24 * v6);
    v19.__end_ = (24 * v6);
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
    }

    else
    {
      v12 = *a2;
      *(24 * v6 + 0x10) = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v12;
      end = (24 * v6);
    }

    v19.__end_ = end + 1;
    v14 = *(a1 + 8);
    v15 = begin + *a1 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    v18 = v19.__end_;
    *(a1 + 8) = *&v19.__end_;
    v19.__end_ = v16;
    v19.__end_cap_.__value_ = v17;
    v19.__first_ = v16;
    v19.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
    v10 = v18;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

CFTypeID applesauce::CF::make_DataRef(applesauce::CF *this, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *this = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_272593F2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef &>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
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

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_272594040(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
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

void VoiceProcessorV2::SetupDownlinkFarEndVoiceDNNVADGraph(VoiceProcessorV2 *this, BOOL a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v71[20] = *MEMORY[0x277D85DE8];
  v61 = a2;
  *(this + 1108) &= ~2uLL;
  VoiceProcessorV2::ReadDefaultsOverride(@"vp_enable_far_end_voice_dnn_vad", 0, &v61, 0, a5);
  if (v61)
  {
    v6 = this + 8;
    v7 = this + 8;
    if (*(this + 31) < 0)
    {
      v7 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v7;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v68, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v67.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v68, &v67);
    VoiceProcessorV2::GetVersionNameForTuning(&v65, this);
    __replacement.__pn_ = v65;
    memset(&v65, 0, sizeof(v65));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.dspg", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v60, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v60, 0);
    if (v62 && v62 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = &v60;
          if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = v60.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 248;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v19;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD graph %s", buf, 0x1Cu);
        }
      }

      v20 = *(this + 1588);
      if (v20 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v21 = &v60;
        if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v60.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v20, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 248, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD graph %s", v21);
      }

      std::ifstream::basic_ifstream(buf);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&cf, *(&buf[1].__pn_.__r_.__value_.__r.__words[2] + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = cf.__r_.__value_.__r.__words[0];
      }

      if (p_cf)
      {
        if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = cf.__r_.__value_.__l.__size_;
        }

        v24 = CFStringCreateWithBytes(0, p_cf, size, 0x8000100u, 0);
        v68.__r_.__value_.__r.__words[0] = v24;
        if (!v24)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = *(this + 2049);
      *(this + 2049) = v24;
      v68.__r_.__value_.__r.__words[0] = v26;
      if (v26)
      {
        CFRelease(v26);
      }

      std::__fs::filesystem::path::filename[abi:ne200100](&v67, &v60);
      memset(&__replacement, 0, sizeof(__replacement));
      v27 = std::__fs::filesystem::path::replace_extension(&v67, &__replacement);
      if (SHIBYTE(v27->__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, v27->__pn_.__r_.__value_.__l.__data_, v27->__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = *&v27->__pn_.__r_.__value_.__l.__data_;
        v68.__r_.__value_.__r.__words[2] = v27->__pn_.__r_.__value_.__r.__words[2];
        *&v68.__r_.__value_.__l.__data_ = v28;
      }

      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__pn_.__r_.__value_.__l.__data_);
      }

      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v68;
      }

      else
      {
        v29 = v68.__r_.__value_.__r.__words[0];
      }

      if (v29)
      {
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v68.__r_.__value_.__l.__size_;
        }

        v31 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
        v67.__pn_.__r_.__value_.__r.__words[0] = v31;
        if (!v31)
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v32, "Could not construct");
        }
      }

      else
      {
        v31 = 0;
      }

      v33 = *(this + 2050);
      *(this + 2050) = v31;
      v67.__pn_.__r_.__value_.__r.__words[0] = v33;
      if (v33)
      {
        CFRelease(v33);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      buf[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
      *(buf[0].__pn_.__r_.__value_.__r.__words + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&buf[0].__pn_.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](v71);
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v8 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = &v60;
          if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v60.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 255;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v10;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v11 = *(this + 1588);
      if (v11 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v12 = &v60;
        if ((v60.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v60.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v11, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 255, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v12);
      }
    }

    v34 = this + 8;
    if (*(this + 31) < 0)
    {
      v34 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v34;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v68, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v67.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v68, &v67);
    VoiceProcessorV2::GetVersionNameForTuning(&v65, this);
    __replacement.__pn_ = v65;
    memset(&v65, 0, sizeof(v65));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.austrip", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v59, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v59, 0);
    if (v63 && v63 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v40 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v41 = (*v40 ? *v40 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = &v59;
          if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v42 = v59.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 266;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v42;
          _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD AU strip %s", buf, 0x1Cu);
        }
      }

      v43 = *(this + 1588);
      if (v43 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v44 = &v59;
        if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = v59.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v43, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 266, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD AU strip %s", v44);
      }

      if (SHIBYTE(v59.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf[0].__pn_, v59.__pn_.__r_.__value_.__l.__data_, v59.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        buf[0] = v59;
      }

      applesauce::CF::make_DataRef(&cf, buf);
      if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(buf, cf.__r_.__value_.__l.__data_);
      v45 = *(this + 2051);
      *(this + 2051) = buf[0].__pn_.__r_.__value_.__r.__words[0];
      buf[0].__pn_.__r_.__value_.__r.__words[0] = v45;
      if (v45)
      {
        CFRelease(v45);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v35 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = &v59;
          if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = v59.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 272;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v37;
          _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v38 = *(this + 1588);
      if (v38 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v39 = &v59;
        if ((v59.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = v59.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v38, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 272, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v39);
      }
    }

    if (*(this + 31) < 0)
    {
      v6 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v6;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v68, buf);
    std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v67.__pn_, "Generic");
    std::__fs::filesystem::operator/[abi:ne200100](&cf, &v68, &v67);
    VoiceProcessorV2::GetVersionNameForTuning(&v65, this);
    __replacement.__pn_ = v65;
    memset(&v65, 0, sizeof(v65));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &cf, &__replacement);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "gen_far_end_voice_nnvad.propstrip", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v58, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v58, 0);
    if (cf.__r_.__value_.__s.__data_[0] && cf.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v52 = (*v51 ? *v51 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = &v58;
          if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v58.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 283;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v53;
          _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading far end voice DNN VAD property strip %s", buf, 0x1Cu);
        }
      }

      v54 = *(this + 1588);
      if (v54 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v55 = &v58;
        if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = v58.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v54, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 283, "SetupDownlinkFarEndVoiceDNNVADGraph", "loading far end voice DNN VAD property strip %s", v55);
      }

      if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf[0].__pn_, v58.__pn_.__r_.__value_.__l.__data_, v58.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        buf[0] = v58;
      }

      applesauce::CF::make_DataRef(&cf, buf);
      if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(buf, cf.__r_.__value_.__l.__data_);
      v56 = *(this + 2052);
      *(this + 2052) = buf[0].__pn_.__r_.__value_.__r.__words[0];
      buf[0].__pn_.__r_.__value_.__r.__words[0] = v56;
      if (v56)
      {
        CFRelease(v56);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v46 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = &v58;
          if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v48 = v58.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupDownlinkDSPChain.cpp";
          WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 289;
          WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v48;
          _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
        }
      }

      v49 = *(this + 1588);
      if (v49 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v50 = &v58;
        if ((v58.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v58.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v49, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupDownlinkDSPChain.cpp", 289, "SetupDownlinkFarEndVoiceDNNVADGraph", "file %s does not exist", v50);
      }
    }

    if (*(this + 2049) && *(this + 2050) && *(this + 2051) && *(this + 2052))
    {
      *(this + 1108) |= 2uLL;
    }

    if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = *(this + 2049);
    *(this + 2049) = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(this + 2050);
    *(this + 2050) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(this + 2051);
    *(this + 2051) = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(this + 2052);
    *(this + 2052) = 0;
    if (v16)
    {
      CFRelease(v16);
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::SetupUplinkBasicAUChainForHwHasVP(int8x16_t *this)
{
  v2 = this + 1024;
  v6 = this + 293;
  v7 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v6);
  v4 = this[293];
  this[293] = vorrq_s8(v4, xmmword_272756330);
  if (v2[14].i32[0] && (this[141].i8[6] & 1) == 0)
  {
    v5 = v4.i64[1] | 0x50;
LABEL_8:
    this[293].i64[1] = v5;
    return;
  }

  if ((v2[11].i8[8] & 1) == 0)
  {
    if ((this[141].i8[6] & 1) != 0 || (this[143].i8[0] != 1 ? (AutomaticChatFlavor = v2[9].u32[2]) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this)), AutomaticChatFlavor == 2))
    {
      if ((this[1034].i8[0] & 4) != 0)
      {
        this[293].i64[0] |= 0x800000000000000uLL;
        if (this[141].i8[6] == 1)
        {
          if (VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(AutomaticChatFlavor))
          {
            v5 = this[293].i64[1] | 4;
            goto LABEL_8;
          }
        }
      }
    }
  }
}

void VoiceProcessorV2::SetupUplinkDNNVADGraph(VoiceProcessorV2 *this)
{
  v59[20] = *MEMORY[0x277D85DE8];
  v2 = this + 15881;
  if ((_os_feature_enabled_impl() & 1) != 0 || (*(this + 2260) & 1) != 0 || v2[680] == 1)
  {
    *(this + 586) &= ~0x2000000000000000uLL;
    v3 = this + 8;
    v4 = this + 8;
    if (*(this + 31) < 0)
    {
      v4 = *v3;
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = v4;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
    std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
    VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(&v57).__size_)
    {
      std::string::push_back(&v57.__pn_, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "nnvad.dspg", "");
    std::__fs::filesystem::__status(&v57, 0);
    if (v55 && v55 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v10 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v12 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 51;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v12;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD graph %s", __p, 0x1Cu);
        }
      }

      v13 = *(this + 1588);
      if (v13 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v13, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 51, "SetupUplinkDNNVADGraph", "loading DNN VAD graph %s", v14);
      }

      std::ifstream::basic_ifstream(__p);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__replacement.__pn_, *(&__p[1].__pn_.__r_.__value_.__r.__words[2] + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_replacement = &__replacement;
      }

      else
      {
        p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
      }

      if (p_replacement)
      {
        if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __replacement.__pn_.__r_.__value_.__l.__size_;
        }

        v17 = CFStringCreateWithBytes(0, p_replacement, size, 0x8000100u, 0);
        v53.__r_.__value_.__r.__words[0] = v17;
        if (!v17)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = *(this + 2056);
      *(this + 2056) = v17;
      v53.__r_.__value_.__r.__words[0] = v19;
      if (v19)
      {
        CFRelease(v19);
      }

      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      __p[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
      *(__p[0].__pn_.__r_.__value_.__r.__words + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&__p[0].__pn_.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](v59);
    }

    else
    {
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
          v7 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v7 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 56;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v7;
          _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v9 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 56, "SetupUplinkDNNVADGraph", "file %s does not exist", v9);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetDNNVADAUStripFilePath(&v57.__pn_, this);
    std::__fs::filesystem::path::filename[abi:ne200100](__p, &v57);
    memset(&__replacement, 0, sizeof(__replacement));
    v20 = std::__fs::filesystem::path::replace_extension(__p, &__replacement);
    if (SHIBYTE(v20->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, v20->__pn_.__r_.__value_.__l.__data_, v20->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = *&v20->__pn_.__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v20->__pn_.__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v21;
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v53;
    }

    else
    {
      v22 = v53.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v53.__r_.__value_.__l.__size_;
      }

      v24 = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
      v54 = v24;
      if (!v24)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v25, "Could not construct");
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = *(this + 2057);
    *(this + 2057) = v24;
    v54 = v26;
    if (v26)
    {
      CFRelease(v26);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetDNNVADAUStripFilePath(&v57.__pn_, this);
    std::__fs::filesystem::__status(&v57, 0);
    if (v53.__r_.__value_.__s.__data_[0] && v53.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 74;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v34;
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD AU strip %s", __p, 0x1Cu);
        }
      }

      v35 = *(this + 1588);
      if (v35 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v36 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v35, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 74, "SetupUplinkDNNVADGraph", "loading DNN VAD AU strip %s", v36);
      }

      if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v57;
      }

      applesauce::CF::make_DataRef(&__replacement, __p);
      if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
      v37 = *(this + 2058);
      *(this + 2058) = __p[0].__pn_.__r_.__value_.__r.__words[0];
      __p[0].__pn_.__r_.__value_.__r.__words[0] = v37;
      if (v37)
      {
        CFRelease(v37);
      }

      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v27 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 80;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v29;
          _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v30 = *(this + 1588);
      if (v30 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v31 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v30, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 80, "SetupUplinkDNNVADGraph", "file %s does not exist", v31);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = v3;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
    std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
    VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(&v57).__size_)
    {
      std::string::push_back(&v57.__pn_, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "nnvad.propstrip", "");
    std::__fs::filesystem::__status(&v57, 0);
    if (__replacement.__pn_.__r_.__value_.__s.__data_[0] && __replacement.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v43 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v44 = (*v43 ? *v43 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 92;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v45;
          _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading DNN VAD property strip %s", __p, 0x1Cu);
        }
      }

      v46 = *(this + 1588);
      if (v46 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v47 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v46, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 92, "SetupUplinkDNNVADGraph", "loading DNN VAD property strip %s", v47);
      }

      if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v57;
      }

      applesauce::CF::make_DataRef(&__replacement, __p);
      if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
      }

      applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
      v48 = *(this + 2059);
      *(this + 2059) = __p[0].__pn_.__r_.__value_.__r.__words[0];
      __p[0].__pn_.__r_.__value_.__r.__words[0] = v48;
      if (v48)
      {
        CFRelease(v48);
      }

      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = &v57;
          if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v57.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 98;
          WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v40;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
        }
      }

      v41 = *(this + 1588);
      if (v41 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v42 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v41, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 98, "SetupUplinkDNNVADGraph", "file %s does not exist", v42);
      }
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__pn_.__r_.__value_.__l.__data_);
    }

    if (*(this + 2056) && *(this + 2057) && *(this + 2058) && *(this + 2059))
    {
      *(this + 586) |= 0x2000000000000000uLL;
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v49 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v50 = (*v49 ? *v49 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
          *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
          WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 110;
          _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Not able to enable DNNVAD", __p, 0x12u);
        }
      }

      v51 = *(this + 1588);
      if (v51 && ((*v2 & 1) != 0 || v2[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v51, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 110, "SetupUplinkDNNVADGraph", "Not able to enable DNNVAD");
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::SetupUplinkGMCoexMitigationGraph(VoiceProcessorV2 *this)
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(this + 297);
  if (v1 != *(this + 298) && *v1 == 1886216809 && _os_feature_enabled_impl())
  {
    *(this + 586) &= ~0x40uLL;
    v3 = this + 8;
    v4 = this + 8;
    if (*(this + 31) < 0)
    {
      v4 = *v3;
    }

    *v58 = v4;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, v58);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&__replacement, this, 0);
    __p = __replacement;
    memset(&__replacement, 0, sizeof(__replacement));
    std::__fs::filesystem::operator/[abi:ne200100](v58, &pn, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&pn, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(v58, &pn);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(v58).__size_)
    {
      std::string::push_back(v58, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(v58, "vp-gm-coexkill.dspg", "");
    v5 = this + 12288;
    *v60 = *v58;
    *&v60[16] = *&v58[16];
    v60[24] = 1;
    std::__fs::filesystem::__status(v60, 0);
    if (v53 && v53 != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v11 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          if ((v60[24] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v13 = v60;
          if (v60[23] < 0)
          {
            v13 = *v60;
          }

          *v58 = 136315650;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 139;
          *&v58[18] = 2080;
          *&v58[20] = v13;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation graph %s", v58, 0x1Cu);
        }
      }

      v14 = *(this + 1588);
      if (v14 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        if ((v60[24] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v15 = v60;
        if (v60[23] < 0)
        {
          v15 = *v60;
        }

        CALegacyLog::log(v14, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 139, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation graph %s", v15);
      }

      if ((v60[24] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::ifstream::basic_ifstream(v58);
      std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&pn, *&v58[*(*v58 - 24) + 40]);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &pn;
      }

      else
      {
        v16 = pn.__r_.__value_.__r.__words[0];
      }

      if (v16)
      {
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = pn.__r_.__value_.__l.__size_;
        }

        v18 = CFStringCreateWithBytes(0, v16, size, 0x8000100u, 0);
        __p.__pn_.__r_.__value_.__r.__words[0] = v18;
        if (!v18)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v18 = 0;
      }

      v20 = *(this + 2089);
      *(this + 2089) = v18;
      __p.__pn_.__r_.__value_.__r.__words[0] = v20;
      if (v20)
      {
        CFRelease(v20);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      *v58 = *MEMORY[0x277D82808];
      *&v58[*(*v58 - 24)] = *(MEMORY[0x277D82808] + 24);
      MEMORY[0x2743CBA00](&v58[16]);
      std::istream::~istream();
      MEMORY[0x2743CBE30](&v59);
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v60;
          if (v60[23] < 0)
          {
            v8 = *v60;
          }

          *v58 = 136315650;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 144;
          *&v58[18] = 2080;
          *&v58[20] = v8;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v58, 0x1Cu);
        }
      }

      v9 = *(this + 1588);
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v10 = v60;
        if (v60[23] < 0)
        {
          v10 = *v60;
        }

        CALegacyLog::log(v9, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 144, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v10);
      }
    }

    if (v60[24] == 1 && (v60[23] & 0x80000000) != 0)
    {
      operator delete(*v60);
    }

    VoiceProcessorV2::GetGMCoexMitigationAUStripFilePath(v58, this);
    if (v58[24] == 1)
    {
      std::__fs::filesystem::path::filename[abi:ne200100](&__p, v58);
      memset(&__replacement, 0, sizeof(__replacement));
      v21 = std::__fs::filesystem::path::replace_extension(&__p, &__replacement);
      if (SHIBYTE(v21->__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&pn, v21->__pn_.__r_.__value_.__l.__data_, v21->__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        pn = v21->__pn_;
      }

      *v60 = pn;
      v60[24] = 1;
      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      if ((v58[24] & 1) != 0 && (v58[23] & 0x80000000) != 0)
      {
        operator delete(*v58);
      }
    }

    else
    {
      v60[0] = 0;
      v60[24] = 0;
    }

    if (v60[24] == 1)
    {
      if (v60[23] >= 0)
      {
        v22 = v60;
      }

      else
      {
        v22 = *v60;
      }

      if (v22)
      {
        if (v60[23] >= 0)
        {
          v23 = v60[23];
        }

        else
        {
          v23 = *&v60[8];
        }

        v24 = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
        *v58 = v24;
        if (!v24)
        {
          v25 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v25, "Could not construct");
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = *(this + 2090);
      *(this + 2090) = v24;
      *v58 = v26;
      if (v26)
      {
        CFRelease(v26);
      }

      if ((v60[24] & 1) != 0 && (v60[23] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }
    }

    VoiceProcessorV2::GetGMCoexMitigationAUStripFilePath(v58, this);
    if (v58[24] == 1)
    {
      std::__fs::filesystem::__status(v58, 0);
      if (v54 && v54 != 255)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v32 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
        {
          v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = v58;
            if (v58[23] < 0)
            {
              v34 = *v58;
            }

            *v60 = 136315650;
            *&v60[4] = "vpSetupUplinkDSPChain.cpp";
            *&v60[12] = 1024;
            *&v60[14] = 170;
            *&v60[18] = 2080;
            *&v60[20] = v34;
            _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation AU strip %s", v60, 0x1Cu);
          }
        }

        v35 = *(this + 1588);
        if (v35 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v36 = v58;
          if (v58[23] < 0)
          {
            v36 = *v58;
          }

          CALegacyLog::log(v35, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 170, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation AU strip %s", v36);
        }

        if ((v58[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v60, *v58, *&v58[8]);
        }

        else
        {
          *v60 = *v58;
          *&v60[16] = *&v58[16];
        }

        applesauce::CF::make_DataRef(&pn, v60);
        if ((v60[23] & 0x80000000) != 0)
        {
          operator delete(*v60);
        }

        applesauce::CF::make_DictionaryRef(v60, pn.__r_.__value_.__l.__data_);
        v37 = *(this + 2091);
        *(this + 2091) = *v60;
        *v60 = v37;
        if (v37)
        {
          CFRelease(v37);
        }

        if (pn.__r_.__value_.__r.__words[0])
        {
          CFRelease(pn.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v58;
            if (v58[23] < 0)
            {
              v29 = *v58;
            }

            *v60 = 136315650;
            *&v60[4] = "vpSetupUplinkDSPChain.cpp";
            *&v60[12] = 1024;
            *&v60[14] = 176;
            *&v60[18] = 2080;
            *&v60[20] = v29;
            _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v60, 0x1Cu);
          }
        }

        v30 = *(this + 1588);
        if (v30 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v31 = v58;
          if (v58[23] < 0)
          {
            v31 = *v58;
          }

          CALegacyLog::log(v30, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 176, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v31);
        }
      }
    }

    if (v58[24] == 1 && (v58[23] & 0x80000000) != 0)
    {
      operator delete(*v58);
    }

    if (*(this + 31) < 0)
    {
      v3 = *v3;
    }

    *v60 = v3;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, v60);
    VoiceProcessorV2::GetHardwareModelNameForTuning(&__replacement, this, 0);
    __p = __replacement;
    memset(&__replacement, 0, sizeof(__replacement));
    std::__fs::filesystem::operator/[abi:ne200100](v60, &pn, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    VoiceProcessorV2::GetVersionNameForTuning(&pn, this);
    std::__fs::filesystem::path::append[abi:ne200100]<std::string>(v60, &pn);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (std::__fs::filesystem::path::__filename(v60).__size_)
    {
      std::string::push_back(v60, 47);
    }

    std::string::append[abi:ne200100]<char const*,0>(v60, "vp-gm-coexkill.propstrip", "");
    *v58 = *v60;
    *&v58[16] = *&v60[16];
    v58[24] = 1;
    std::__fs::filesystem::__status(v58, 0);
    if (v60[0] && v60[0] != 255)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v43 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v44 = (*v43 ? *v43 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = v58;
          if (v58[23] < 0)
          {
            v45 = *v58;
          }

          *v60 = 136315650;
          *&v60[4] = "vpSetupUplinkDSPChain.cpp";
          *&v60[12] = 1024;
          *&v60[14] = 190;
          *&v60[18] = 2080;
          *&v60[20] = v45;
          _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading GM Coex Mitigation property strip %s", v60, 0x1Cu);
        }
      }

      v46 = *(this + 1588);
      if (v46 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v47 = v58;
        if (v58[23] < 0)
        {
          v47 = *v58;
        }

        CALegacyLog::log(v46, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 190, "SetupUplinkGMCoexMitigationGraph", "loading GM Coex Mitigation property strip %s", v47);
      }

      if ((v58[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v60, *v58, *&v58[8]);
      }

      else
      {
        *v60 = *v58;
        *&v60[16] = *&v58[16];
      }

      applesauce::CF::make_DataRef(&pn, v60);
      if ((v60[23] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }

      applesauce::CF::make_DictionaryRef(v60, pn.__r_.__value_.__l.__data_);
      v48 = *(this + 2092);
      *(this + 2092) = *v60;
      *v60 = v48;
      if (v48)
      {
        CFRelease(v48);
      }

      if (pn.__r_.__value_.__r.__words[0])
      {
        CFRelease(pn.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v58;
          if (v58[23] < 0)
          {
            v40 = *v58;
          }

          *v60 = 136315650;
          *&v60[4] = "vpSetupUplinkDSPChain.cpp";
          *&v60[12] = 1024;
          *&v60[14] = 196;
          *&v60[18] = 2080;
          *&v60[20] = v40;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> %s file does not exist", v60, 0x1Cu);
        }
      }

      v41 = *(this + 1588);
      if (v41 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v42 = v58;
        if (v58[23] < 0)
        {
          v42 = *v58;
        }

        CALegacyLog::log(v41, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 196, "SetupUplinkGMCoexMitigationGraph", "%s file does not exist", v42);
      }
    }

    if (v58[24] == 1 && (v58[23] & 0x80000000) != 0)
    {
      operator delete(*v58);
    }

    if (*(this + 2089) && *(this + 2090) && *(this + 2091) && *(this + 2092))
    {
      *(this + 586) |= 0x40uLL;
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v49 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v50 = (*v49 ? *v49 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 136315394;
          *&v58[4] = "vpSetupUplinkDSPChain.cpp";
          *&v58[12] = 1024;
          *&v58[14] = 211;
          _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Not able to enable GM Coex Mitigation graph", v58, 0x12u);
        }
      }

      v51 = *(this + 1588);
      if (v51 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v51, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 211, "SetupUplinkGMCoexMitigationGraph", "Not able to enable GM Coex Mitigation graph");
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::SetupReferenceSignalMixer(VoiceProcessorV2 *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = this + 12288;
  std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](this + 2008);
  v3 = *(this + 155);
  if (v3)
  {
    v4 = *(this + 125);
    if (v4)
    {
      if (**(this + 294) == 1886613611)
      {
        if ((*(this + 2260) & 1) != 0 || (*(this + 2261) & 1) != 0 || !*(this + 20) && *(this + 61) == 2)
        {
          v5 = *(this + 19);
          if ((v5 - 19) < 8 || (v5 - 31) <= 1)
          {
            vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
            std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
            v18 = &v23;
            std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
            v18 = (v22 + 2);
            std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
            (*(*this + 480))(this, this + 2008, this + 2080);
          }
        }

        else if ((*(this + 19) - 23) <= 3)
        {
          vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v15;
            vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, v14, 1.0, 0);
            v15 = 0;
            v14 = 1;
          }

          while ((v16 & 1) != 0);
          if (*(this + 155) >= 2u)
          {
            v17 = 1;
            do
            {
              vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, v17, 1.0, v17);
              ++v17;
            }

            while (v17 < *(this + 155));
          }

          std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
          vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(buf);
        }
      }

      else
      {
        v13 = *(this + 600);
        if ((v13 == 1781805623 || v13 == 1781740087) && v3 >= 6)
        {
          vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(buf, v3, *(this + 155), v4);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 0, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 2u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 3u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 5u, 1.0, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 0, 1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 2u, 1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 3u, -1.0, 1u);
          vp::utility::Audio_Buffer_Mixer::set_gain(v23, v24, 5u, -1.0, 1u);
          std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(this + 2008, buf);
          v18 = &v23;
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
          v18 = (v22 + 2);
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
        }
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "vpSetupUplinkDSPChain.cpp";
          v21 = 1024;
          v22[0] = 239;
          _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> skip reference mixer setup because reference block size is 0", buf, 0x12u);
        }
      }

      v11 = *(this + 1588);
      if (v11 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v11, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 239, "SetupReferenceSignalMixer", "skip reference mixer setup because reference block size is 0");
      }
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v6 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "vpSetupUplinkDSPChain.cpp";
        v21 = 1024;
        v22[0] = 232;
        _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> skip reference mixer setup because reference channel count is 0", buf, 0x12u);
      }
    }

    v8 = *(this + 1588);
    if (v8 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 232, "SetupReferenceSignalMixer", "skip reference mixer setup because reference channel count is 0");
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v4[0] = (a1 + 40);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (a1 + 16);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v4);
    *(a1 + 64) = 0;
  }
}

uint64_t std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v4 == 1)
  {
    std::vector<std::vector<float>>::__vdeallocate((a1 + 16));
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    std::vector<std::vector<float>>::__vdeallocate((a1 + 40));
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  return a1;
}

void vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(vp::utility::Audio_Buffer_Mixer *this)
{
  v2 = (this + 40);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void VoiceProcessorV2::SetupReferenceSignalMixer(void)::$_0::operator()(uint64_t a1)
{
  std::__optional_destruct_base<vp::utility::Audio_Buffer_Mixer,false>::reset[abi:ne200100](a1 + 2008);
  vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(&v5, *(a1 + 620), *(a1 + 620), *(a1 + 500));
  v2 = v5;
  if (v6 < v5)
  {
    v2 = v6;
  }

  if (v2)
  {
    for (i = 0; i < v4; ++i)
    {
      vp::utility::Audio_Buffer_Mixer::set_gain(v8[0], v8[1], i, 1.0, i);
      v4 = v5;
      if (v6 < v5)
      {
        v4 = v6;
      }
    }
  }

  std::optional<vp::utility::Audio_Buffer_Mixer>::operator=[abi:ne200100]<vp::utility::Audio_Buffer_Mixer,void>(a1 + 2008, &v5);
  v9 = v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = &v7;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_272599D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::utility::Audio_Buffer_Mixer::~Audio_Buffer_Mixer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void VoiceProcessorV2::UpdateReferenceSignalMixerGains(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (**(a1 + 2352) == 1886613611 && ((*(a1 + 2260) & 1) != 0 || (*(a1 + 2261) & 1) != 0 || !*(a1 + 80) && *(a1 + 244) == 2))
  {
    v5 = *(a1 + 76);
    if (v5 - 19 >= 8)
    {
      v16 = v5 > 0x20;
      v25 = (1 << v5) & 0x180000020;
      if (!v16 && v25 != 0)
      {
        v27 = *(a2 + 40);
        v28 = *(a2 + 48);
        if (v27 != v28)
        {
          v29 = *(a2 + 40);
          do
          {
            v30 = *(v29 + 8) - *v29;
            if (v30 >= 1)
            {
              bzero(*v29, v30);
            }

            v29 += 24;
          }

          while (v29 != v28);
        }

        v31 = *a2;
        v32 = *(a2 + 4);
        if (*a2 >= 4u && v32 > 1)
        {
          vp::utility::Audio_Buffer_Mixer::set_gain(v27, v28, 0, 0.5, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 1u, 0.5, 0);
          vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 2u, 0.5, 1u);
          v36 = *(a2 + 40);
          v37 = *(a2 + 48);

          vp::utility::Audio_Buffer_Mixer::set_gain(v36, v37, 3u, 0.5, 1u);
        }

        else
        {
          if (v32 < v31)
          {
            v31 = *(a2 + 4);
          }

          if (v31)
          {
            for (i = 0; i < v35; ++i)
            {
              vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), i, 1.0, i);
              v35 = *a2;
              if (*(a2 + 4) < *a2)
              {
                v35 = *(a2 + 4);
              }
            }
          }
        }
      }
    }

    else
    {
      v6 = *(a1 + 2320);
      v7 = *(a3 + 4);
      v8 = *a3;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      if (v9 != v10)
      {
        v11 = *(a2 + 40);
        do
        {
          v12 = *(v11 + 8) - *v11;
          if (v12 >= 1)
          {
            bzero(*v11, v12);
          }

          v11 += 24;
        }

        while (v11 != v10);
      }

      v13 = v6 - 1;
      v14 = *a2;
      v15 = *(a2 + 4);
      v16 = *a2 >= 8u && v15 > 1;
      if (v16)
      {
        if (v7)
        {
          v19 = v8;
        }

        else
        {
          v19 = 1;
        }

        if (v13 < 4)
        {
          v19 = v6;
        }

        v20 = v19 - 1;
        vp::utility::Audio_Buffer_Mixer::set_gain(v9, v10, 2u, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 3u, 1.0, 0);
        if (v20 >= 2)
        {
          v21 = 0;
        }

        else
        {
          v21 = 6;
        }

        if (v20 >= 2)
        {
          v22 = 1;
        }

        else
        {
          v22 = 7;
        }

        if (v20 >= 2)
        {
          v23 = 6;
        }

        else
        {
          v23 = 0;
        }

        if (v20 < 2)
        {
          v24 = 1;
        }

        else
        {
          v24 = 7;
        }

        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v21, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v22, 1.0, 0);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v23, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), v24, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 4u, 1.0, 1u);
        vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), 5u, 1.0, 1u);
      }

      else
      {
        if (v15 < v14)
        {
          v14 = *(a2 + 4);
        }

        if (v14)
        {
          for (j = 0; j < v18; ++j)
          {
            vp::utility::Audio_Buffer_Mixer::set_gain(*(a2 + 40), *(a2 + 48), j, 1.0, j);
            v18 = *a2;
            if (*(a2 + 4) < *a2)
            {
              v18 = *(a2 + 4);
            }
          }
        }
      }

      if (v13 <= 3)
      {
        *a3 = v6;
        *(a3 + 4) = 1;
      }
    }
  }
}

void VoiceProcessorV2::SetupUplinkEchoProcessingGraph(VoiceProcessorV2 *this)
{
  v104[2] = *MEMORY[0x277D85DE8];
  *(this + 586) &= ~0x10000000uLL;
  v2 = *(this + 2060);
  *(this + 2060) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2061);
  *(this + 2061) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2062);
  *(this + 2062) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 2063);
  *(this + 2063) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(this + 60) == 1)
  {
    v6 = (this + 8);
    if (*(this + 31) < 0)
    {
      v6 = *v6;
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = v6;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v99, buf);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&v97, *(this + 14));
    v7 = std::string::insert(&v97, 0, "AID", 3uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    v101.__pn_.__r_.__value_.__r.__words[0] = v7->__r_.__value_.__l.__size_;
    *(v101.__pn_.__r_.__value_.__r.__words + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
    v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    *(&v98.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v101.__pn_.__r_.__value_.__r.__words + 7);
    v98.__pn_.__r_.__value_.__r.__words[0] = v8;
    v98.__pn_.__r_.__value_.__l.__size_ = v101.__pn_.__r_.__value_.__r.__words[0];
    *(&v98.__pn_.__r_.__value_.__s + 23) = v9;
    v101.__pn_.__r_.__value_.__r.__words[0] = 0;
    *(v101.__pn_.__r_.__value_.__r.__words + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v98);
    VoiceProcessorV2::GetVersionNameForTuning(&v95.__pn_, this);
    pn = v95.__pn_;
    memset(&v95, 0, sizeof(v95));
    std::__fs::filesystem::operator/[abi:ne200100](buf, &v100, &pn);
    memset(&__p, 0, sizeof(__p));
    std::string::append[abi:ne200100]<char const*,0>(&__p, "echo_processing.dspg", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v93, buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v93.__pn_, "emptyAcousticID");
  }

  v10 = this + 15881;
  std::__fs::filesystem::__status(&v93, 0);
  if (v91 && v91 != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v16 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = &v93;
        if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = v93.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 474;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v18;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing graph %s", buf, 0x1Cu);
      }
    }

    v19 = *(this + 1588);
    if (v19 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v20 = &v93;
      if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v93.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v19, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 474, "SetupUplinkEchoProcessingGraph", "loading echo processing graph %s", v20);
    }

    std::ifstream::basic_ifstream(buf);
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v100, *(&buf[1].__pn_.__r_.__value_.__r.__words[2] + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v100;
    }

    else
    {
      v21 = v100.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v100.__r_.__value_.__l.__size_;
      }

      v23 = CFStringCreateWithBytes(0, v21, size, 0x8000100u, 0);
      v99.__r_.__value_.__r.__words[0] = v23;
      if (!v23)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = *(this + 2060);
    *(this + 2060) = v23;
    v99.__r_.__value_.__r.__words[0] = v25;
    if (v25)
    {
      CFRelease(v25);
    }

    std::__fs::filesystem::path::filename[abi:ne200100](&v98, &v93);
    memset(&v97, 0, sizeof(v97));
    v26 = std::__fs::filesystem::path::replace_extension(&v98, &v97);
    if (SHIBYTE(v26->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v99, v26->__pn_.__r_.__value_.__l.__data_, v26->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = *&v26->__pn_.__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v26->__pn_.__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = v27;
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v99;
    }

    else
    {
      v28 = v99.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v99.__r_.__value_.__l.__size_;
      }

      v30 = CFStringCreateWithBytes(0, v28, v29, 0x8000100u, 0);
      v98.__pn_.__r_.__value_.__r.__words[0] = v30;
      if (!v30)
      {
        v31 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v31, "Could not construct");
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = *(this + 2061);
    *(this + 2061) = v30;
    v98.__pn_.__r_.__value_.__r.__words[0] = v32;
    if (v32)
    {
      CFRelease(v32);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    buf[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
    *(buf[0].__pn_.__r_.__value_.__r.__words + *(buf[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x2743CBA00](&buf[0].__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x2743CBE30](&v103);
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = &v93;
        if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v93.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 483;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v13;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v14 = *(this + 1588);
    if (v14 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v15 = &v93;
      if ((v93.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v93.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v14, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 483, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v15);
    }
  }

  if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 60) == 1)
  {
    v33 = *(this + 104);
    v34 = "24";
    if (v33 == 16000.0)
    {
      v34 = "16";
    }

    if (v33 == 8000.0)
    {
      v35 = "08";
    }

    else
    {
      v35 = v34;
    }

    std::string::basic_string[abi:ne200100]<0>(&v99, v35);
    v36 = std::string::insert(&v99, 0, "echo_processing_", 0x10uLL);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v100, "kHz.austrip", 0xBuLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    buf[0].__pn_.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&buf[0].__pn_.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v40 = (this + 8);
    if (*(this + 31) < 0)
    {
      v40 = *v40;
    }

    v100.__r_.__value_.__r.__words[0] = v40;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v98.__pn_, &v100);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&pn, *(this + 14));
    v41 = std::string::insert(&pn, 0, "AID", 3uLL);
    v42 = v41->__r_.__value_.__r.__words[0];
    v104[0] = v41->__r_.__value_.__l.__size_;
    *(v104 + 7) = *(&v41->__r_.__value_.__r.__words[1] + 7);
    v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v104 + 7);
    v97.__r_.__value_.__r.__words[0] = v42;
    v97.__r_.__value_.__l.__size_ = v104[0];
    *(&v97.__r_.__value_.__s + 23) = v43;
    v104[0] = 0;
    *(v104 + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v99, &v98, &v97);
    VoiceProcessorV2::GetVersionNameForTuning(&__p, this);
    v95.__pn_ = __p;
    memset(&__p, 0, sizeof(__p));
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v95);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v93.__pn_, &buf[0].__pn_);
    std::__fs::filesystem::operator/[abi:ne200100](&v101, &v100, &v93);
    if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v101.__pn_, "emptyAcousticID");
  }

  std::__fs::filesystem::__status(&v101, 0);
  if (v92 && v92 != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v49 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v50 = (*v49 ? *v49 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 497;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v51;
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing AU strip %s", buf, 0x1Cu);
      }
    }

    v52 = *(this + 1588);
    if (v52 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v53 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v52, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 497, "SetupUplinkEchoProcessingGraph", "loading echo processing AU strip %s", v53);
    }

    if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf[0].__pn_, v101.__pn_.__r_.__value_.__l.__data_, v101.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      buf[0] = v101;
    }

    applesauce::CF::make_DataRef(&v100, buf);
    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(buf, v100.__r_.__value_.__l.__data_);
    v54 = *(this + 2062);
    *(this + 2062) = buf[0].__pn_.__r_.__value_.__r.__words[0];
    buf[0].__pn_.__r_.__value_.__r.__words[0] = v54;
    if (v54)
    {
      CFRelease(v54);
    }

    if (v100.__r_.__value_.__r.__words[0])
    {
      CFRelease(v100.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v44 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 504;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v46;
        _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v47 = *(this + 1588);
    if (v47 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v48 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v47, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 504, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v48);
    }
  }

  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 60) == 1)
  {
    v55 = *(this + 104);
    v56 = "24";
    if (v55 == 16000.0)
    {
      v56 = "16";
    }

    if (v55 == 8000.0)
    {
      v57 = "08";
    }

    else
    {
      v57 = v56;
    }

    std::string::basic_string[abi:ne200100]<0>(&v99, v57);
    v58 = std::string::insert(&v99, 0, "echo_processing_", 0x10uLL);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    v60 = std::string::append(&v100, "kHz.propstrip", 0xDuLL);
    v61 = *&v60->__r_.__value_.__l.__data_;
    buf[0].__pn_.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&buf[0].__pn_.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    v62 = (this + 8);
    if (*(this + 31) < 0)
    {
      v62 = *v62;
    }

    v100.__r_.__value_.__r.__words[0] = v62;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v98.__pn_, &v100);
    if ((*(this + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&pn, *(this + 14));
    v63 = std::string::insert(&pn, 0, "AID", 3uLL);
    v64 = v63->__r_.__value_.__r.__words[0];
    v104[0] = v63->__r_.__value_.__l.__size_;
    *(v104 + 7) = *(&v63->__r_.__value_.__r.__words[1] + 7);
    v65 = HIBYTE(v63->__r_.__value_.__r.__words[2]);
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v104 + 7);
    v97.__r_.__value_.__r.__words[0] = v64;
    v97.__r_.__value_.__l.__size_ = v104[0];
    *(&v97.__r_.__value_.__s + 23) = v65;
    v104[0] = 0;
    *(v104 + 7) = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v99, &v98, &v97);
    VoiceProcessorV2::GetVersionNameForTuning(&__p, this);
    v95.__pn_ = __p;
    memset(&__p, 0, sizeof(__p));
    std::__fs::filesystem::operator/[abi:ne200100](&v100, &v99, &v95);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v93.__pn_, &buf[0].__pn_);
    std::__fs::filesystem::operator/[abi:ne200100](&v101, &v100, &v93);
    if (SHIBYTE(v93.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v101.__pn_, "emptyAcousticID");
  }

  std::__fs::filesystem::__status(&v101, 0);
  if (!v100.__r_.__value_.__s.__data_[0] || v100.__r_.__value_.__s.__data_[0] == 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v66 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v67 = (*v66 ? *v66 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = &v101;
        if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v68 = v101.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 531;
        WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v68;
        _os_log_impl(&dword_2724B4000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", buf, 0x1Cu);
      }
    }

    v69 = *(this + 1588);
    if (v69 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v70 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v69, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 531, "SetupUplinkEchoProcessingGraph", "file %s does not exist", v70);
    }

    goto LABEL_292;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v71 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v72 = (*v71 ? *v71 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = &v101;
      if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v101.__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
      WORD2(buf[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 518;
      WORD1(buf[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
      *(&buf[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v73;
      _os_log_impl(&dword_2724B4000, v72, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading echo processing property strip %s", buf, 0x1Cu);
    }
  }

  v74 = *(this + 1588);
  if (v74 && ((*v10 & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v75 = &v101;
    if ((v101.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = v101.__pn_.__r_.__value_.__r.__words[0];
    }

    CALegacyLog::log(v74, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 518, "SetupUplinkEchoProcessingGraph", "loading echo processing property strip %s", v75);
  }

  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf[0].__pn_, v101.__pn_.__r_.__value_.__l.__data_, v101.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    buf[0] = v101;
  }

  applesauce::CF::make_DataRef(&v98, buf);
  if (SHIBYTE(buf[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__pn_.__r_.__value_.__l.__data_);
  }

  applesauce::CF::make_DictionaryRef(buf, v98.__pn_.__r_.__value_.__l.__data_);
  v76 = *(this + 2063);
  *(this + 2063) = buf[0].__pn_.__r_.__value_.__r.__words[0];
  buf[0].__pn_.__r_.__value_.__r.__words[0] = v76;
  if (v76)
  {
    CFRelease(v76);
  }

  v77 = this + 8;
  if ((*(this + 31) & 0x80000000) == 0)
  {
    v78 = strlen(this + 8);
    goto LABEL_267;
  }

  v77 = *v77;
  v78 = strlen(v77);
  if (v77)
  {
LABEL_267:
    v79 = CFStringCreateWithBytes(0, v77, v78, 0x8000100u, 0);
    buf[0].__pn_.__r_.__value_.__r.__words[0] = v79;
    if (!v79)
    {
      v90 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v90, "Could not construct");
    }

    goto LABEL_268;
  }

  v79 = 0;
LABEL_268:
  v80 = *(this + 2064);
  *(this + 2064) = v79;
  buf[0].__pn_.__r_.__value_.__r.__words[0] = v80;
  if (v80)
  {
    CFRelease(v80);
  }

  v81 = *(this + 16752);
  if (v81 == 1)
  {
    applesauce::CF::TypeRef::TypeRef(buf, "Value");
    v82 = *(this + 2064);
    if (v82)
    {
      CFRetain(*(this + 2064));
    }

    buf[0].__pn_.__r_.__value_.__l.__size_ = v82;
    v100.__r_.__value_.__r.__words[0] = buf;
    v100.__r_.__value_.__l.__size_ = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v100);
  }

  else
  {
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[3],unsigned int const&>(buf, "ID", &kVPDSPGraphTuningDirectoryPropertyID);
    applesauce::CF::TypeRef::TypeRef(&buf[0].__pn_.__r_.__value_.__r.__words[2], "cfobject");
    v84 = *(this + 2064);
    if (v84)
    {
      CFRetain(*(this + 2064));
    }

    buf[1].__pn_.__r_.__value_.__r.__words[0] = v84;
    v99.__r_.__value_.__r.__words[0] = buf;
    v99.__r_.__value_.__l.__size_ = 2;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v99);
  }

  v85 = *(this + 2065);
  *(this + 2065) = CFDictionaryRef;
  if (v85)
  {
    CFRelease(v85);
  }

  if (v81)
  {
    if (buf[0].__pn_.__r_.__value_.__l.__size_)
    {
      CFRelease(buf[0].__pn_.__r_.__value_.__l.__size_);
    }

    if (buf[0].__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf[0].__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    for (i = 0; i != -4; i -= 2)
    {
      v87 = *(&buf[1].__pn_.__r_.__value_.__l.__data_ + i * 8);
      if (v87)
      {
        CFRelease(v87);
      }

      v88 = buf[0].__pn_.__r_.__value_.__r.__words[i + 2];
      if (v88)
      {
        CFRelease(v88);
      }
    }
  }

  if (v98.__pn_.__r_.__value_.__r.__words[0])
  {
    CFRelease(v98.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_292:
  if (SHIBYTE(v101.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 2060) && *(this + 2061) && *(this + 2062) && *(this + 2063))
  {
    *(this + 586) |= 0x10000000uLL;
  }

  v89 = *MEMORY[0x277D85DE8];
}

void sub_27259B608(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VoiceProcessorV2::SetupUplinkAirPodsOffloadGraph(VoiceProcessorV2 *this)
{
  v59[20] = *MEMORY[0x277D85DE8];
  *(this + 587) &= ~0x40uLL;
  v2 = this + 8;
  v3 = this + 8;
  if (*(this + 31) < 0)
  {
    v3 = *v2;
  }

  __p[0].__pn_.__r_.__value_.__r.__words[0] = v3;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(&v57).__size_)
  {
    std::string::push_back(&v57.__pn_, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "uplink_echo_airpods_offload.dspg", "");
  v4 = this + 12288;
  std::__fs::filesystem::__status(&v57, 0);
  if (v55 && v55 != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 556;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v12;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP graph %s", __p, 0x1Cu);
      }
    }

    v13 = *(this + 1588);
    if (v13 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v13, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 556, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP graph %s", v14);
    }

    std::ifstream::basic_ifstream(__p);
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__replacement.__pn_, *(&__p[1].__pn_.__r_.__value_.__r.__words[2] + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)));
    if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_replacement = &__replacement;
    }

    else
    {
      p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
    }

    if (p_replacement)
    {
      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __replacement.__pn_.__r_.__value_.__l.__size_;
      }

      v17 = CFStringCreateWithBytes(0, p_replacement, size, 0x8000100u, 0);
      v53.__r_.__value_.__r.__words[0] = v17;
      if (!v17)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = *(this + 2083);
    *(this + 2083) = v17;
    v53.__r_.__value_.__r.__words[0] = v19;
    if (v19)
    {
      CFRelease(v19);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    __p[0].__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
    *(__p[0].__pn_.__r_.__value_.__r.__words + *(__p[0].__pn_.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x2743CBA00](&__p[0].__pn_.__r_.__value_.__r.__words[2]);
    std::istream::~istream();
    MEMORY[0x2743CBE30](v59);
  }

  else
  {
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
        v7 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v7 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 561;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v7;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v8 = *(this + 1588);
    if (v8 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 561, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v9);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  VoiceProcessorV2::GetAirPodsOffloadAUStripFilePath(&v57.__pn_, this);
  std::__fs::filesystem::path::filename[abi:ne200100](__p, &v57);
  memset(&__replacement, 0, sizeof(__replacement));
  v20 = std::__fs::filesystem::path::replace_extension(__p, &__replacement);
  if (SHIBYTE(v20->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v20->__pn_.__r_.__value_.__l.__data_, v20->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = *&v20->__pn_.__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v20->__pn_.__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v21;
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v53;
  }

  else
  {
    v22 = v53.__r_.__value_.__r.__words[0];
  }

  if (v22)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v53.__r_.__value_.__l.__size_;
    }

    v24 = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
    v54 = v24;
    if (!v24)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = *(this + 2084);
  *(this + 2084) = v24;
  v54 = v26;
  if (v26)
  {
    CFRelease(v26);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  VoiceProcessorV2::GetAirPodsOffloadAUStripFilePath(&v57.__pn_, this);
  std::__fs::filesystem::__status(&v57, 0);
  if (v53.__r_.__value_.__s.__data_[0] && v53.__r_.__value_.__s.__data_[0] != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v32 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 582;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v34;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP AU strip %s", __p, 0x1Cu);
      }
    }

    v35 = *(this + 1588);
    if (v35 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v36 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v35, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 582, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP AU strip %s", v36);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v57;
    }

    applesauce::CF::make_DataRef(&__replacement, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
    v37 = *(this + 2085);
    *(this + 2085) = __p[0].__pn_.__r_.__value_.__r.__words[0];
    __p[0].__pn_.__r_.__value_.__r.__words[0] = v37;
    if (v37)
    {
      CFRelease(v37);
    }

    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v27 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 588;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v29;
        _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v30 = *(this + 1588);
    if (v30 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v31 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v30, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 588, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v31);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  __p[0].__pn_.__r_.__value_.__r.__words[0] = v2;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v57.__pn_, __p);
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v57.__pn_, "Generic");
  VoiceProcessorV2::GetVersionNameForTuning(&__p[0].__pn_, this);
  std::__fs::filesystem::path::append[abi:ne200100]<std::string>(&v57.__pn_, __p);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (std::__fs::filesystem::path::__filename(&v57).__size_)
  {
    std::string::push_back(&v57.__pn_, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v57.__pn_, "uplink_echo_airpods_offload.propstrip", "");
  std::__fs::filesystem::__status(&v57, 0);
  if (__replacement.__pn_.__r_.__value_.__s.__data_[0] && __replacement.__pn_.__r_.__value_.__s.__data_[0] != 255)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v43 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
    {
      v44 = (*v43 ? *v43 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 601;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v45;
        _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> loading offload AirPods DSP property strip %s", __p, 0x1Cu);
      }
    }

    v46 = *(this + 1588);
    if (v46 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v47 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v46, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 601, "SetupUplinkAirPodsOffloadGraph", "loading offload AirPods DSP property strip %s", v47);
    }

    if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[0].__pn_, v57.__pn_.__r_.__value_.__l.__data_, v57.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v57;
    }

    applesauce::CF::make_DataRef(&__replacement, __p);
    if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
    }

    applesauce::CF::make_DictionaryRef(__p, __replacement.__pn_.__r_.__value_.__l.__data_);
    v48 = *(this + 2086);
    *(this + 2086) = __p[0].__pn_.__r_.__value_.__r.__words[0];
    __p[0].__pn_.__r_.__value_.__r.__words[0] = v48;
    if (v48)
    {
      CFRelease(v48);
    }

    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      CFRelease(__replacement.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v38 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = &v57;
        if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v57.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 607;
        WORD1(__p[0].__pn_.__r_.__value_.__r.__words[2]) = 2080;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[2] + 4) = v40;
        _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> file %s does not exist", __p, 0x1Cu);
      }
    }

    v41 = *(this + 1588);
    if (v41 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v42 = &v57;
      if ((v57.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v57.__pn_.__r_.__value_.__r.__words[0];
      }

      CALegacyLog::log(v41, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 607, "SetupUplinkAirPodsOffloadGraph", "file %s does not exist", v42);
    }
  }

  if (SHIBYTE(v57.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__pn_.__r_.__value_.__l.__data_);
  }

  if (*(this + 2083) && *(this + 2084) && *(this + 2085) && *(this + 2086))
  {
    *(this + 587) |= 0x40uLL;
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v49 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v50 = (*v49 ? *v49 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0].__pn_.__r_.__value_.__l.__data_) = 136315394;
        *(__p[0].__pn_.__r_.__value_.__r.__words + 4) = "vpSetupUplinkDSPChain.cpp";
        WORD2(__p[0].__pn_.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p[0].__pn_.__r_.__value_.__r.__words[1] + 6) = 621;
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Not able to enable offload AirPods DSP graph", __p, 0x12u);
      }
    }

    v51 = *(this + 1588);
    if (v51 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v51, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpSetupUplinkDSPChain.cpp", 621, "SetupUplinkAirPodsOffloadGraph", "Not able to enable offload AirPods DSP graph");
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t GetVPSmartCoverIsAttached(BOOL *a1)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v22 = 1768452981;
  if (GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef || (v2 = *MEMORY[0x277CBECE8], (GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef = IOHIDEventSystemClientCreate()) != 0))
  {
    v20 = a1;
    v28[0] = @"PrimaryUsagePage";
    v3 = [MEMORY[0x277CCABB0] numberWithInt:65280];
    v28[1] = @"PrimaryUsage";
    v29[0] = v3;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:41];
    v29[1] = v4;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    IOHIDEventSystemClientSetMatching();
    v5 = IOHIDEventSystemClientCopyServices(GetVPSmartCoverIsAttached::gIOHIDEventSystemClientRef);
    v6 = v5;
    if (v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v5;
      v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = *v24;
        v10 = *MEMORY[0x277CBECE8];
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            KeyboardEvent = IOHIDEventCreateKeyboardEvent();
            v14 = IOHIDServiceClientCopyEvent();
            if (!v14)
            {
              v22 = 1768452965;
LABEL_20:

              goto LABEL_21;
            }

            IntegerValue = IOHIDEventGetIntegerValue();
            v16 = IOHIDEventGetIntegerValue();
            if (IntegerValue == 65289 && v16 == 16)
            {
              v22 = 0;
              *v20 = IOHIDEventGetIntegerValue() != 0;
              goto LABEL_20;
            }
          }

          v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }

    else
    {
      v22 = 1768452963;
    }
  }

  else
  {
    v22 = 1768449395;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t VPStrategyManager::GetPropertyInfo(VPStrategyManager *this, uint64_t a2, unsigned int *a3, unsigned __int8 *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v21 = 1024;
          v22 = 542;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v19, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v21 = 1024;
    v22 = 545;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting property info with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v21 = 1024;
          v22 = 142;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v14 = (*(**(*(this + 25) + 224) + 152))(*(*(this + 25) + 224), a2, a3, a4);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v14 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v21 = 1024;
    v22 = 547;
    v23 = 1024;
    v24 = v14;
    v25 = 2080;
    v26 = "GetPropertyInfo";
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v19 + 4), 0xFFFFFFFF);
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL VPStrategyManager::CheckHasVP(VPStrategyManager *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    if (VPStrategyMgrScope(void)::once != -1)
    {
      dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
    }

    if (VPStrategyMgrScope(void)::scope)
    {
      v2 = *VPStrategyMgrScope(void)::scope;
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "vpStrategyManager.h";
      v8 = 1024;
      v9 = 163;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d vp is nullptr!", &v6, 0x12u);
    }
  }

LABEL_11:
  result = this != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VPStrategyManager::RemovePropertyListenerBlock(VPStrategyManager *this, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v6 = *VPStrategyMgrScope(void)::scope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v19 = 1024;
          v20 = 663;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v17, *(this + 25) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v8 = *VPStrategyMgrScope(void)::scope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v19 = 1024;
    v20 = 666;
    v21 = 1024;
    v22 = a2;
    _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing listener for property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v10 = *VPStrategyMgrScope(void)::scope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v19 = 1024;
          v20 = 142;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(this + 25) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)))
  {
    v12 = (*(**(*(this + 25) + 224) + 144))(*(*(this + 25) + 224), a2, a3);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v12 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v13 = *VPStrategyMgrScope(void)::scope;
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v19 = 1024;
    v20 = 669;
    v21 = 1024;
    v22 = v12;
    v23 = 2080;
    v24 = "RemovePropertyListenerBlock";
    _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v17 + 4), 0xFFFFFFFF);
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t VPStrategyManager::AddPropertyListenerBlock(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v8 = *VPStrategyMgrScope(void)::scope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.mm";
          v21 = 1024;
          v22 = 650;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v19, *(a1 + 200) + 320, 0);
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v10 = *VPStrategyMgrScope(void)::scope;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "vpStrategyManager.mm";
    v21 = 1024;
    v22 = 653;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding listener for property with ID: %u", buf, 0x18u);
  }

LABEL_18:
  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    if (*(VPStrategyMgrScope(void)::scope + 8))
    {
      v12 = *VPStrategyMgrScope(void)::scope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "vpStrategyManager.h";
          v21 = 1024;
          v22 = 142;
          _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ================", buf, 0x12u);
        }
      }
    }
  }

  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(buf, *(a1 + 200) + 320, 0);
  if (VPStrategyManager::CheckHasVP(*(*(a1 + 200) + 224)))
  {
    v14 = (*(**(*(a1 + 200) + 224) + 136))(*(*(a1 + 200) + 224), a2, v7, a4);
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
    atomic_fetch_add((*buf + 4), 0xFFFFFFFF);
    v14 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v15 = *VPStrategyMgrScope(void)::scope;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpStrategyManager.mm";
    v21 = 1024;
    v22 = 656;
    v23 = 1024;
    v24 = v14;
    v25 = 2080;
    v26 = "AddPropertyListenerBlock";
    _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", buf, 0x22u);
  }

LABEL_39:
  atomic_fetch_add((v19 + 4), 0xFFFFFFFF);

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_27259EEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  atomic_fetch_add((a10 + 4), 0xFFFFFFFF);

  _Unwind_Resume(a1);
}

uint64_t VPStrategyManager::AppendReferenceSignal(VPStrategyManager *this, const AudioBufferList *a2, const AudioTimeStamp *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(this + 25);
  atomic_fetch_add((v6 + 324), 1u);
  if (VPStrategyManager::CheckHasVP(*(*(this + 25) + 224)) && !*(v6 + 320))
  {
    VPStrategyManager::CheckRequiredState(this, 8);
    v7 = (*(**(*(this + 25) + 224) + 128))(*(*(this + 25) + 224), a2, a3);
    atomic_fetch_add((v6 + 324), 0xFFFFFFFF);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    atomic_fetch_add((v6 + 324), 0xFFFFFFFF);
    v7 = 2;
  }

  if (VPStrategyMgrScope(void)::once != -1)
  {
    dispatch_once(&VPStrategyMgrScope(void)::once, &__block_literal_global_4428);
  }

  if (VPStrategyMgrScope(void)::scope)
  {
    v8 = *VPStrategyMgrScope(void)::scope;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315906;
    v13 = "vpStrategyManager.mm";
    v14 = 1024;
    v15 = 642;
    v16 = 1024;
    v17 = v7;
    v18 = 2080;
    v19 = "AppendReferenceSignal";
    _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error code %i reported at %s", &v12, 0x22u);
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}