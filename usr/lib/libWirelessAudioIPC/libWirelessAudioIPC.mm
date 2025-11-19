uint64_t waipc::SampleTimeline::SampleTimeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  waipc::timesync::KalmanEstimator::fixed(a3, 0, 0, 0, a1 + 32, *(a2 + 16) / *(a2 + 24));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = mach_absolute_time();
  return a1;
}

__n128 waipc::SampleTimeline::updateTimesync(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a1 + 144) = *(a2 + 32);
    *(a1 + 160) = mach_absolute_time();
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 72) = *(a2 + 40);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  result = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(a1 + 136) = *(a2 + 104);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 88) = result;
  return result;
}

double waipc::SampleTimeline::timestampFromHost@<D0>(waipc::SampleTimeline *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = waipc::timesync::KalmanEstimator::hostToDevice(this + 32, a2, 0);
  result = v7;
  *a3 = *this * (*(this + 2) * (v7 - *(this + 19) + (v6 - *(this + 18))) / 1000000000.0);
  *(a3 + 8) = a2;
  *(a3 + 16) = v6 + llround(v7);
  *(a3 + 24) = *(this + 20);
  return result;
}

double waipc::SampleTimeline::timestampFromDevice@<D0>(waipc::SampleTimeline *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  waipc::timesync::KalmanEstimator::deviceToHost(this + 32, a2, 0);
  result = *this * (*(this + 2) * (0.0 - *(this + 19) + (a2 - *(this + 18))) / 1000000000.0);
  *a3 = result;
  *(a3 + 8) = v7 + llround(v6);
  *(a3 + 16) = a2;
  *(a3 + 24) = *(this + 20);
  return result;
}

double waipc::SampleTimeline::timestampFromSample@<D0>(waipc::SampleTimeline *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v6 = *(this + 18);
  v7 = *(this + 19) + a2 / *this * 1000000000.0 / *(this + 2);
  waipc::timesync::KalmanEstimator::deviceToHost(this + 32, v6, *&v7);
  result = v8;
  *a3 = a2;
  *(a3 + 8) = v10 + llround(v8);
  *(a3 + 16) = v6 + llround(v7);
  *(a3 + 24) = *(this + 20);
  return result;
}

double waipc::SampleTimeline::currentTimestamp@<D0>(waipc::SampleTimeline *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = waipc::timesync::KalmanEstimator::hostToDevice(this + 32, a2, 0);
  v6 = *(this + 18);
  v7 = *(this + 19);
  v9 = *(this + 2);
  v10 = floor(*this * (v9 * (v8 - v7 + (v5 - v6)) / 1000000000.0) / *(this + 1)) * *(this + 1);
  v11 = v7 + v10 / *this * 1000000000.0 / v9;
  waipc::timesync::KalmanEstimator::deviceToHost(this + 32, v6, *&v11);
  result = v12;
  *a3 = v10;
  *(a3 + 8) = v14 + llround(v12);
  *(a3 + 16) = v6 + llround(v11);
  *(a3 + 24) = *(this + 20);
  return result;
}

uint64_t waipc::SampleTimeline::nextHostTime(waipc::SampleTimeline *this, uint64_t a2)
{
  v3 = waipc::timesync::KalmanEstimator::hostToDevice(this + 32, a2, 0);
  waipc::timesync::KalmanEstimator::deviceToHost(this + 32, *(this + 18), COERCE__INT64(*(this + 19) + (floor(*this * (*(this + 2) * (v4 - *(this + 19) + (v3 - *(this + 18))) / 1000000000.0) / *(this + 1)) + 1.0) * *(this + 1) / *this * 1000000000.0 / *(this + 2)));
  return v6 + vcvtpd_s64_f64(v5);
}

double waipc::SampleTimeline::nextHostVariance(waipc::SampleTimeline *this, uint64_t a2)
{
  v3 = waipc::timesync::KalmanEstimator::hostToDevice(this + 32, a2, 0);
  v5 = v4;
  v6 = *(this + 18);
  v7 = *(this + 19) + (floor(*this * (*(this + 2) * (v5 - *(this + 19) + (v3 - v6)) / 1000000000.0) / *(this + 1)) + 1.0) * *(this + 1) / *this * 1000000000.0 / *(this + 2);

  return waipc::timesync::KalmanEstimator::deviceToHostVariance(this + 32, v6, *&v7);
}

uint64_t waipc::SampleTimeline::dumpState(waipc::SampleTimeline *this)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v9[0] = @"Estimator";
  v9[1] = waipc::timesync::KalmanEstimator::dumpState((this + 32));
  waipc::util::_kv::_kv<unsigned long long const&,void>(v10, @"Zero Device Time Int", this + 18);
  v10[2] = @"Zero Device Time Frac";
  valuePtr = *(this + 19);
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  waipc::util::_kv::_kv<unsigned long long const&,void>(v12, @"Seed", this + 20);
  waipc::util::createCFDictDropNull<4l>(v9, &v7);
  for (i = 7; i != -1; i -= 2)
  {
    v3 = v9[i];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  result = v7;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298307F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a17);
  applesauce::CF::TypeRef::~TypeRef(&a9);
  do
  {
    v17 = (v17 - 16);
    waipc::util::_kv::~_kv(v17);
  }

  while (v17 != &a12);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<4l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v15 = *MEMORY[0x29EDCA608];
  *keys = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  v4 = (a1 + 8);
  v5 = 64;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2983080B8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *waipc::util::_kv::_kv<unsigned long long const&,void>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void waipc::util::_kv::~_kv(waipc::util::_kv *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void waipc::timesync::BasebandProvider::create(waipc::timesync::BasebandProvider *this, const waipc::timesync::BasebandProvider::config *a2)
{
  if (TelephonyRadiosGetRadio() == 4)
  {
    waipc::timesync::BasebandProvider::BasebandProvider(v3, this);
    v3[0] = &unk_2A1EB7158;
    std::allocate_shared[abi:ne200100]<waipc::timesync::LegacyBasebandProvider,std::allocator<waipc::timesync::LegacyBasebandProvider>,waipc::timesync::LegacyBasebandProvider,0>();
  }

  waipc::timesync::BasebandProvider::BasebandProvider(v3, this);
  v3[0] = &unk_2A1EB70B8;
  std::allocate_shared[abi:ne200100]<waipc::timesync::ModernBasebandProvider,std::allocator<waipc::timesync::ModernBasebandProvider>,waipc::timesync::ModernBasebandProvider,0>();
}

void sub_2983083A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  waipc::timesync::BasebandProvider::~BasebandProvider(va);
  _Unwind_Resume(a1);
}

uint64_t waipc::timesync::BasebandProvider::init(os_unfair_lock_s *this)
{
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    waipc::timesync::BasebandProvider::init();
  }

  os_unfair_lock_lock(this + 28);
  v3 = waipc::timesync::BasebandProvider::setupTransport(this);
  if ((v3 & 1) == 0)
  {
    waipc::timesync::BasebandProvider::stop_nl(this);
  }

  os_unfair_lock_unlock(this + 28);
  return v3;
}

waipc::timesync::BasebandProvider *waipc::timesync::BasebandProvider::BasebandProvider(waipc::timesync::BasebandProvider *this, const waipc::timesync::BasebandProvider::config *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1EB6FA8;
  waipc::timesync::BasebandProvider::config::config(this + 24, a2);
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 212) = 0u;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 64) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  return this;
}

void sub_2983084F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t waipc::timesync::BasebandProvider::setupTransport(waipc::timesync::BasebandProvider *this)
{
  v25 = *MEMORY[0x29EDCA608];
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    waipc::timesync::BasebandProvider::setupTransport();
  }

  os_unfair_lock_assert_owner(this + 28);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3802000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&v15, this + 1);
  v3 = v16;
  v21[5] = v15;
  v22 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TelephonyBasebandPCITransportInitParameters();
  v16 = *(this + 3);
  v18 = *(this + 10);
  v19 |= 4u;
  LODWORD(v15) = 12;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 0x40000000;
  v14[2] = ___ZN5waipc8timesync16BasebandProvider14setupTransportEv_block_invoke;
  v14[3] = &unk_29EE90808;
  v14[4] = v21;
  v14[5] = this;
  v17 = v14;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN5waipc8timesync16BasebandProvider14setupTransportEv_block_invoke_2;
  v13[3] = &unk_29EE90830;
  v13[4] = v21;
  v13[5] = this;
  v20 = v13;
  if (((*(*this + 40))(this, &v15) & 1) == 0)
  {
    v6 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "failed to configure PCI transport";
LABEL_13:
      v8 = v6;
      v9 = 2;
LABEL_16:
      _os_log_impl(&dword_298307000, v8, OS_LOG_TYPE_INFO, v7, buf, v9);
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if ((TelephonyBasebandPCITransportCreate() & 1) == 0)
  {
    v10 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v24 = 12;
      v7 = "failed to create PCI transport for interface %d";
      v8 = v10;
      v9 = 8;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (((*(*this + 48))(this) & 1) == 0)
  {
    v6 = waipc::logging::getLogger(2u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v7 = "failed to engage PCI transport";
    goto LABEL_13;
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_async(*(this + 3), v4);
  }

  v5 = 1;
LABEL_18:
  _Block_object_dispose(v21, 8);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29830881C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 104), 8);
  v3 = *(v1 - 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandProvider::stop_nl(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 28);
  if ((this[29]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this[29]._os_unfair_lock_opaque) = 1;

    waipc::timesync::BasebandProvider::clearTransport(this);
  }
}

void waipc::timesync::BasebandProvider::~BasebandProvider(os_unfair_lock_s *this)
{
  *&this->_os_unfair_lock_opaque = &unk_2A1EB6FA8;
  waipc::timesync::BasebandProvider::stop(this);
  v2 = *&this[72]._os_unfair_lock_opaque;
  if (v2)
  {
    *&this[74]._os_unfair_lock_opaque = v2;
    operator delete(v2);
  }

  v3 = *&this[66]._os_unfair_lock_opaque;
  if (v3)
  {
    *&this[68]._os_unfair_lock_opaque = v3;
    operator delete(v3);
  }

  v4 = *&this[58]._os_unfair_lock_opaque;
  if (v4)
  {
    *&this[60]._os_unfair_lock_opaque = v4;
    operator delete(v4);
  }

  v5 = *&this[30]._os_unfair_lock_opaque;
  if (v5)
  {
    CFRelease(v5);
  }

  waipc::timesync::BasebandProvider::config::~config(&this[6]);
  v6 = *&this[4]._os_unfair_lock_opaque;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  waipc::timesync::BasebandProvider::~BasebandProvider(this);

  JUMPOUT(0x29C288190);
}

void waipc::timesync::BasebandProvider::stop(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 28);
  waipc::timesync::BasebandProvider::stop_nl(this);

  os_unfair_lock_unlock(this + 28);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void waipc::timesync::BasebandProvider::clearTransport(waipc::timesync::BasebandProvider *this)
{
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    waipc::timesync::BasebandProvider::clearTransport();
  }

  os_unfair_lock_assert_owner(this + 28);
  v3 = *(this + 23);
  if (v3)
  {
    if (v3(this + 128))
    {
      TelephonyUtilTransportFree();
      v4 = *(this + 6);
      if (v4)
      {
        v5 = _Block_copy(v4);
        v6 = *(this + 15);
        if (v6)
        {
          CFRetain(*(this + 15));
        }

        v7 = *(this + 3);
        v9[0] = MEMORY[0x29EDCA5F8];
        v9[1] = 1174405120;
        v9[2] = ___ZN5waipc8timesync16BasebandProvider14clearTransportEv_block_invoke;
        v9[3] = &__block_descriptor_tmp_4_0;
        if (v5)
        {
          v8 = _Block_copy(v5);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        if (v6)
        {
          CFRetain(v6);
        }

        cf = v6;
        dispatch_async(v7, v9);
        if (cf)
        {
          CFRelease(cf);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (v5)
        {
          _Block_release(v5);
        }
      }
    }
  }
}

void waipc::timesync::BasebandProvider::die(os_unfair_lock *this, const __CFString *a2)
{
  os_unfair_lock_assert_owner(this + 28);
  if (a2)
  {
    CFRetain(a2);
    v4 = CFGetTypeID(a2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v5 = *&this[30]._os_unfair_lock_opaque;
  *&this[30]._os_unfair_lock_opaque = a2;
  if (v5)
  {
    CFRelease(v5);
  }

  waipc::timesync::BasebandProvider::stop_nl(this);
}

void sub_298308C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5waipc8timesync16BasebandProvider14setupTransportEv_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        os_unfair_lock_lock(v6 + 28);
        waipc::timesync::BasebandProvider::transportStatus(v6, a2);
        os_unfair_lock_unlock(v6 + 28);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_298308D2C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandProvider::transportStatus(os_unfair_lock *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(a1 + 28);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "got transport status %d", v6, 8u);
  }

  if (a2 <= 1)
  {
    waipc::timesync::BasebandProvider::die(a1, @"timesync failed to open PCI transport");
  }

  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN5waipc8timesync16BasebandProvider14setupTransportEv_block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 48))
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(*(v6 + 48));
    if (v9 && *(v6 + 40))
    {
      os_unfair_lock_lock(v8 + 28);
      waipc::timesync::BasebandProvider::transportReadCompletion(v8, a2, a3, a4);
      os_unfair_lock_unlock(v8 + 28);
LABEL_10:

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      return;
    }
  }

  else
  {
    v9 = 0;
  }

  if (!a2 && a3)
  {
    free(a3);
  }

  if (v9)
  {
    goto LABEL_10;
  }
}

void sub_298308EE0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandProvider::transportReadCompletion(os_unfair_lock *this, int a2, void *a3, uint64_t a4)
{
  os_unfair_lock_assert_owner(this + 28);
  if (a2)
  {
    Logger = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
    {
      waipc::timesync::BasebandProvider::transportReadCompletion();
    }

    waipc::timesync::BasebandProvider::die(this, @"timesync PCI read failed");
  }

  else
  {
    if (!a3)
    {
      waipc::timesync::BasebandProvider::transportReadCompletion();
    }

    (*(*&this->_os_unfair_lock_opaque + 56))(this, a3, a4);

    free(a3);
  }
}

const void *__copy_helper_block_e8_32c55_ZTSN10applesauce8dispatch2v15blockIFvPK10__CFStringEEE40c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  v5 = *(a2 + 40);
  if (v5)
  {
    result = CFRetain(v5);
  }

  *(a1 + 40) = v5;
  return result;
}

void __destroy_helper_block_e8_32c55_ZTSN10applesauce8dispatch2v15blockIFvPK10__CFStringEEE40c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void waipc::timesync::BasebandProvider::triggerTimesyncMeasurement(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 28);
  LOBYTE(this[56]._os_unfair_lock_opaque) = 1;
  waipc::timesync::BasebandProvider::checkPendingTimesync(this);

  os_unfair_lock_unlock(this + 28);
}

void waipc::timesync::BasebandProvider::checkPendingTimesync(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 28);
  if (LOBYTE(this[56]._os_unfair_lock_opaque) == 1 && (this[56]._os_unfair_lock_opaque & 0x100) == 0 && (this[56]._os_unfair_lock_opaque & 0x10000) == 0)
  {
    BYTE1(this[56]._os_unfair_lock_opaque) = 1;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3802000000;
    v19[3] = __Block_byref_object_copy_;
    v19[4] = __Block_byref_object_dispose_;
    std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(&info, &this[2]._os_unfair_lock_opaque);
    v2 = v18;
    v19[5] = info;
    v20 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 0x40000000;
    v16[2] = ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke;
    v16[3] = &unk_29EE90858;
    v16[4] = v19;
    v16[5] = this;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v12 = ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17;
    v13 = &unk_29EE90880;
    v14 = v16;
    v15 = this;
    v3 = mach_absolute_time();
    mach_timebase_info(&info);
    v5 = *&this[54]._os_unfair_lock_opaque;
    if (v5 && (v6 = (v3 - v5) * info.numer / info.denom, v7 = 1000000 * this[23]._os_unfair_lock_opaque, v4 = v7 - v6, v7 > v6))
    {
      v8 = dispatch_time(0, v4);
      v9 = *&this[6]._os_unfair_lock_opaque;
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 0x40000000;
      v10[2] = ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_25;
      v10[3] = &unk_29EE908A8;
      v10[5] = v19;
      v10[6] = this;
      v10[4] = v11;
      dispatch_after(v8, v9, v10);
    }

    else
    {
      (v12)(v11, v4);
    }

    _Block_object_dispose(v19, 8);
    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_298309330(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 104), 8);
  v3 = *(v1 - 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke(uint64_t a1, int a2, int a3, int *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_cold_1();
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 48);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      if (*(v10 + 40))
      {
        os_unfair_lock_lock((v8 + 112));
        if ((*(v8 + 226) & 1) == 0)
        {
          __assert_rtn("checkPendingTimesync_block_invoke", "BasebandProvider.cpp", 321, "fTimesync.running");
        }

        if (a2)
        {
          v14 = waipc::logging::getLogger(2u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17[0] = 67109120;
            v17[1] = a2;
            _os_log_impl(&dword_298307000, v14, OS_LOG_TYPE_INFO, "time sync failed 0x%08x", v17, 8u);
          }

          if (a2 == -536870167 || a2 == -536870184)
          {
            v15 = waipc::logging::getLogger(2u);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              LOWORD(v17[0]) = 0;
              _os_log_impl(&dword_298307000, v15, OS_LOG_TYPE_INFO, "AP sleep, ignore time sync failure!", v17, 2u);
            }
          }

          else
          {
            waipc::timesync::BasebandProvider::die(v8, @"timesync measurement failed");
          }
        }

        else if ((*(v8 + 227) & 1) == 0 && (*(v8 + 117) & 1) == 0)
        {
          waipc::timesync::BasebandProvider::handleTimesync<PCITransportTimesyncMeasurement *>(v8, 0, a4, &a4[6 * a3]);
        }

        *(v8 + 216) = mach_absolute_time();
        *(v8 + 226) = 0;
        waipc::timesync::BasebandProvider::checkPendingTimesync(v8);
        os_unfair_lock_unlock((v8 + 112));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29830955C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandProvider::handleTimesync<PCITransportTimesyncMeasurement *>(uint64_t a1, int a2, int *a3, int *a4)
{
  os_unfair_lock_assert_owner((a1 + 112));
  if (*(a1 + 256) != a2)
  {
    v8 = *(a1 + 232);
    v9 = v8;
    while (a3 != a4 && v9 != *(a1 + 240))
    {
      if (*a3 == *v9)
      {
        waipc::timesync::BasebandProvider::timesyncMeasurement::complete(v9, a3);
        if (v9 != v8)
        {
          v10 = *v9;
          v11 = *(v9 + 1);
          v37 = *(v9 + 4);
          v35 = v10;
          v36 = v11;
          v12 = *v8;
          v13 = *(v8 + 16);
          *(v9 + 4) = *(v8 + 32);
          *v9 = v12;
          *(v9 + 1) = v13;
          v14 = v35;
          v15 = v36;
          *(v8 + 32) = v37;
          *v8 = v14;
          *(v8 + 16) = v15;
        }

        v8 += 40;
        v9 += 40;
        a3 += 6;
      }

      else if (*a3 - *v9 < 0)
      {
        a3 += 6;
      }

      else
      {
        v9 += 40;
      }
    }

    if ((*(a1 + 116) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v16 = *(a1 + 232);
        if (v8 != v16)
        {
          *&v35 = 0;
          *(&v35 + 1) = &v35;
          *&v36 = 0x4002000000;
          *(&v36 + 1) = __Block_byref_object_copy__164;
          v37 = __Block_byref_object_dispose__165;
          __p = 0;
          v39 = 0;
          v40 = 0;
          std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>,std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>>(&__p, v16, v8, 0xCCCCCCCCCCCCCCCDLL * ((v8 - v16) >> 3));
          waipc::timesync::BasebandProvider::logMeasurements(a1, *(*(&v35 + 1) + 40), *(*(&v35 + 1) + 48));
          v17 = *(a1 + 56);
          if (v17)
          {
            v18 = _Block_copy(v17);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a1 + 24);
          v33[0] = MEMORY[0x29EDCA5F8];
          v33[1] = 1174405120;
          v33[2] = ___ZN5waipc8timesync16BasebandProvider14handleTimesyncIP31PCITransportTimesyncMeasurementEEvNS1_16timesyncEndpointET_S6__block_invoke;
          v33[3] = &unk_2A1EB7258;
          if (v18)
          {
            v20 = _Block_copy(v18);
          }

          else
          {
            v20 = 0;
          }

          v33[4] = &v35;
          aBlock = v20;
          dispatch_async(v19, v33);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v18)
          {
            _Block_release(v18);
          }

          _Block_object_dispose(&v35, 8);
          if (__p)
          {
            v39 = __p;
            operator delete(__p);
          }
        }
      }
    }

    v21 = *(a1 + 232);
    if (v21 != v9)
    {
      v22 = *(a1 + 240);
      v23 = v22 - v9;
      if (v22 != v9)
      {
        memmove(*(a1 + 232), v9, v22 - v9);
      }

      *(a1 + 240) = &v21[v23];
    }
  }

  if (a3 != a4)
  {
    if (*(a1 + 256) == a2)
    {
      v24 = *(a1 + 240);
    }

    else
    {
      v24 = *(a1 + 240);
      if (*(a1 + 232) != v24)
      {
        waipc::timesync::BasebandProvider::handleTimesync<PCITransportTimesyncMeasurement *>();
      }
    }

    *(a1 + 256) = a2;
    std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<PCITransportTimesyncMeasurement *,PCITransportTimesyncMeasurement *>((a1 + 232), v24, a3, a4, 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 3));
  }

  v25 = (2 * *(a1 + 88));
  v27 = *(a1 + 232);
  v26 = *(a1 + 240);
  v28 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 3) > v25;
  v29 = -40 * v25;
  v30 = &v26[v29];
  if (v28 && v30 != v27)
  {
    v32 = -v29;
    if (v26 != v30)
    {
      memmove(*(a1 + 232), v30, -v29);
    }

    *(a1 + 240) = &v27[v32];
  }
}

void sub_2983098AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 40);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17_cold_1();
  }

  os_unfair_lock_assert_owner((v2 + 112));
  if ((*(v2 + 224) & 1) == 0)
  {
    ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17_cold_2();
  }

  if ((*(v2 + 225) & 1) == 0)
  {
    ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17_cold_3();
  }

  if (*(v2 + 226) == 1)
  {
    ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_17_cold_4();
  }

  *(v2 + 224) = 0;
  v4 = *(v2 + 184);
  if (v4 && (v4(v2 + 128) & 1) != 0)
  {
    v5 = *(v2 + 88);
    v6 = *(a1 + 32);
    if (TelephonyBasebandPCITransportTimesync())
    {
      *(v2 + 226) = 1;
    }

    else
    {
      v8 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_298307000, v8, OS_LOG_TYPE_INFO, "transport time sync start failed", v9, 2u);
      }

      waipc::timesync::BasebandProvider::die(v2, @"timesync measurement trigger failed");
    }
  }

  else
  {
    v7 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_298307000, v7, OS_LOG_TYPE_INFO, "unable to trigger timesync measurement because transport is not valid", buf, 2u);
    }
  }
}

void ___ZN5waipc8timesync16BasebandProvider20checkPendingTimesyncEv_block_invoke_25(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[6];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 40))
      {
        os_unfair_lock_lock(v4 + 28);
        (*(a1[4] + 16))();
        os_unfair_lock_unlock(v4 + 28);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_298309AC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandProvider::cancelTimesyncMeasurement(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 28);
  if (BYTE2(this[56]._os_unfair_lock_opaque) == 1)
  {
    HIBYTE(this[56]._os_unfair_lock_opaque) = 1;
  }

  *&this[60]._os_unfair_lock_opaque = *&this[58]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(this + 28);
}

void waipc::timesync::BasebandProvider::subscribe(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 28);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "subscribe not supported", v3, 2u);
  }

  os_unfair_lock_unlock(a1 + 28);
}

void waipc::timesync::BasebandProvider::mapBuffer(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 28);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "buffer map not supported", v3, 2u);
  }

  os_unfair_lock_unlock(a1 + 28);
}

void waipc::timesync::BasebandProvider::unmapBuffer(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 28);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "buffer unmap not supported", v3, 2u);
  }

  os_unfair_lock_unlock(a1 + 28);
}

void waipc::timesync::BasebandProvider::logTimestamp(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  os_unfair_lock_assert_owner((a1 + 112));
  v10 = *(a1 + 104);
  if (v10)
  {
    v11 = *(a1 + 288);
    v12 = *(a1 + 296);
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3);
    if (v13 + 1 > v10)
    {
      if (v11 + 40 * (v13 + 1 - v10) != v12)
      {
        v14 = 8 * ((v12 - v11) >> 3) - 40 * v10;
        do
        {
          *v11 = *(v11 + v14 + 40);
          v15 = *(v11 + v14 + 48);
          *(v11 + 24) = *(v11 + v14 + 64);
          *(v11 + 8) = v15;
          v11 += 40;
        }

        while (v11 + v14 + 40 != v12);
      }

      *(a1 + 296) = v11;
    }

    v16 = mach_absolute_time();
    v17 = *(a1 + 296);
    v18 = *(a1 + 304);
    if (v17 >= v18)
    {
      v20 = *(a1 + 288);
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v20) >> 3);
      v22 = v21 + 1;
      if (v21 + 1 > 0x666666666666666)
      {
        std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
      }

      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v20) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>>(a1 + 288, v24);
      }

      v25 = 40 * v21;
      *v25 = v16;
      *(v25 + 8) = a2;
      *(v25 + 16) = a3;
      *(v25 + 24) = a5;
      *(v25 + 32) = a4;
      v19 = 40 * v21 + 40;
      v26 = *(a1 + 288);
      v27 = *(a1 + 296) - v26;
      v28 = (40 * v21 - v27);
      memcpy(v28, v26, v27);
      v29 = *(a1 + 288);
      *(a1 + 288) = v28;
      *(a1 + 296) = v19;
      *(a1 + 304) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v17 = v16;
      *(v17 + 8) = a2;
      *(v17 + 16) = a3;
      *(v17 + 24) = a5;
      v19 = v17 + 40;
      *(v17 + 32) = a4;
    }

    *(a1 + 296) = v19;
  }
}

char *waipc::timesync::BasebandProvider::logMeasurements(uint64_t a1, uint64_t a2, char *a3)
{
  os_unfair_lock_assert_owner((a1 + 112));
  v6 = *(a1 + 96);
  if (0xCCCCCCCCCCCCCCCDLL * (&a3[-a2] >> 3) >= v6)
  {
    v7 = *(a1 + 96);
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (&a3[-a2] >> 3);
  }

  v8 = v6 - v7;
  v10 = *(a1 + 264);
  v9 = *(a1 + 272);
  if (v6 - v7 < 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3))
  {
    v11 = -40 * v8;
    v12 = &v9[-40 * v8];
    if (v12 != v10)
    {
      v13 = -v11;
      if (v9 != v12)
      {
        memmove(*(a1 + 264), v12, -v11);
      }

      v9 = &v10[v13];
      *(a1 + 272) = &v10[v13];
    }
  }

  return std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement const*>,std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement const*>>((a1 + 264), v9, &a3[-40 * v7], a3, 0xCCCCCCCCCCCCCCCDLL * ((40 * v7) >> 3));
}

CFTypeRef waipc::timesync::BasebandProvider::dumpState(waipc::timesync::BasebandProvider *this)
{
  v29[10] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 28);
  memset(v25, 0, sizeof(v25));
  std::vector<applesauce::CF::DictionaryRef>::reserve(v25, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 30) - *(this + 29)) >> 3));
  v2 = *(this + 29);
  v3 = *(this + 30);
  v24[0] = v25;
  while (v2 != v3)
  {
    ___ZNK5waipc8timesync16BasebandProvider9dumpStateEv_block_invoke(v2, cf);
    std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](v24, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v2 += 5;
  }

  memset(v24, 0, sizeof(v24));
  std::vector<applesauce::CF::DictionaryRef>::reserve(v24, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 34) - *(this + 33)) >> 3));
  v4 = *(this + 33);
  v5 = *(this + 34);
  cf[0] = v24;
  while (v4 != v5)
  {
    ___ZNK5waipc8timesync16BasebandProvider9dumpStateEv_block_invoke(v4, &v27);
    std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](cf, &v27);
    if (v27)
    {
      CFRelease(v27);
    }

    v4 += 5;
  }

  memset(cf, 0, sizeof(cf));
  std::vector<applesauce::CF::DictionaryRef>::reserve(cf, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 37) - *(this + 36)) >> 3));
  v6 = *(this + 36);
  v7 = *(this + 37);
  v27 = cf;
  while (v6 != v7)
  {
    ___ZNK5waipc8timesync16BasebandProvider9dumpStateEv_block_invoke_2(v6, &v26);
    std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](&v27, &v26);
    if (v26)
    {
      CFRelease(v26);
    }

    v6 += 40;
  }

  v8 = *MEMORY[0x29EDB8F00];
  v9 = *MEMORY[0x29EDB8EF8];
  if (*(this + 116))
  {
    v10 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v10 = *MEMORY[0x29EDB8EF8];
  }

  v28[0] = @"Stopped";
  v28[1] = v10;
  v28[2] = @"Error Reason";
  v11 = *(this + 15);
  if (v11)
  {
    CFRetain(*(this + 15));
  }

  v28[3] = v11;
  v28[4] = @"Timesync Pending";
  if (*(this + 224))
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v28[5] = v12;
  v28[6] = @"Timesync Triggering";
  if (*(this + 225))
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  v28[7] = v13;
  v28[8] = @"Timesync Running";
  if (*(this + 226))
  {
    v14 = v8;
  }

  else
  {
    v14 = v9;
  }

  v28[9] = v14;
  v28[10] = @"Timesync Cancelled";
  if (*(this + 227))
  {
    v15 = v8;
  }

  else
  {
    v15 = v9;
  }

  v28[11] = v15;
  waipc::util::_kv::_kv<unsigned long long const&,void>(v29, @"Last Timesync Trigger", this + 27);
  v29[2] = @"Partial Measurements";
  v16 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v25);
  if (*(this + 64))
  {
    v17 = @"device";
  }

  else
  {
    v17 = @"host";
  }

  v29[3] = v16;
  v29[4] = @"Partial Endpoint";
  CFRetain(v17);
  v29[5] = v17;
  v29[6] = @"Measurement Log";
  v29[7] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v24);
  v29[8] = @"Timestamp Log";
  v29[9] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(cf);
  waipc::util::createCFDictDropNull<11l>(v28, &v27);
  for (i = 21; i != -1; i -= 2)
  {
    v19 = v28[i];
    if (v19)
    {
      CFRelease(v19);
    }
  }

  v20 = v27;
  v28[0] = cf;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v24;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v25;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v28);
  os_unfair_lock_unlock(this + 28);
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_29830A2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK5waipc8timesync16BasebandProvider9dumpStateEv_block_invoke(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v9 = @"SEQ";
  valuePtr = *a1;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  waipc::util::_kv::_kv<unsigned long long const&,void>(&v11, @"Host Begin", a1 + 1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v12, @"Host Duration", a1 + 2);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v13, @"Device Time", a1 + 3);
  waipc::util::_kv::_kv<double const&,void>(v14, @"Device Granularity", a1 + 4);
  waipc::util::createCFDictDropNull<5l>(&v9, a2);
  for (i = 72; i != -8; i -= 16)
  {
    v5 = *(&v9 + i);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

const void *waipc::util::createCFDictDropNull<5l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0;
  *keys = 0u;
  v15 = 0u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v4 = (a1 + 8);
  v5 = 80;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29830A6C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *waipc::util::_kv::_kv<double const&,void>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void *std::vector<applesauce::CF::DictionaryRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(result, a2);
    }

    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_29830A834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZNK5waipc8timesync16BasebandProvider9dumpStateEv_block_invoke_2(uint64_t a1@<X1>, void *a2@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  waipc::util::_kv::_kv<unsigned long long const&,void>(v10, @"Mach Time", a1);
  v4 = *(a1 + 8);
  v10[2] = @"Type";
  valuePtr = v4;
  if (!CFNumberCreate(0, kCFNumberCharType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  waipc::util::_kv::_kv<unsigned long long const&,void>(&v12, @"Time", (a1 + 16));
  waipc::util::_kv::_kv<double const&,void>(&v13, @"Time Granularity", (a1 + 24));
  waipc::util::_kv::_kv<unsigned long long const&,void>(v14, @"Interval", (a1 + 32));
  waipc::util::createCFDictDropNull<5l>(v10, a2);
  for (i = 9; i != -1; i -= 2)
  {
    v6 = v10[i];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29830A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v11 + 24));
  do
  {
    v10 = (v10 - 16);
    waipc::util::_kv::~_kv(v10);
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<11l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v13 = 0;
  v4 = (a1 + 8);
  v5 = 176;
  memset(v12, 0, sizeof(v12));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29830AB64(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *waipc::timesync::BasebandProvider::getTimestampName(int a1)
{
  if (a1)
  {
    return @"unknown";
  }

  else
  {
    return @"Network Uplink Schedule";
  }
}

__CFString *waipc::timesync::BasebandProvider::getBufferName(int a1)
{
  if (a1)
  {
    return @"unknown";
  }

  else
  {
    return @"Disco";
  }
}

void waipc::timesync::ModernBasebandProvider::mapBuffer(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 16777984;
    buf[4] = a2;
    *&buf[5] = 2048;
    *&buf[7] = a3;
    *&buf[15] = 2048;
    *&buf[17] = a4;
    _os_log_debug_impl(&dword_298307000, Logger, OS_LOG_TYPE_DEBUG, "mapping buffer with id %hhu, addr %p, length %zu", buf, 0x19u);
  }

  if (a2)
  {
    v9 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 16777472;
      buf[4] = a2;
      _os_log_impl(&dword_298307000, v9, OS_LOG_TYPE_INFO, "unknown buffer id %hhu", buf, 5u);
    }
  }

  else
  {
    os_unfair_lock_lock((a1 + 112));
    v10 = *(a1 + 184);
    if (v10 && (v10(a1 + 128) & 1) != 0)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      *&buf[24] = __Block_byref_object_copy_;
      v18 = __Block_byref_object_dispose_;
      std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(v15, (a1 + 8));
      v11 = v16;
      v19 = *v15;
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if ((TelephonyBasebandPCITransportMapRegion() & 1) == 0)
      {
        v12 = waipc::logging::getLogger(2u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v15 = 16777472;
          v15[4] = 0;
          _os_log_impl(&dword_298307000, v12, OS_LOG_TYPE_INFO, "buffer map for buffer %hhu failed", v15, 5u);
        }

        waipc::timesync::BasebandProvider::die(a1, @"buffer map failed");
      }

      _Block_object_dispose(buf, 8);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }
    }

    else
    {
      v13 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_298307000, v13, OS_LOG_TYPE_INFO, "unable to map buffer because transport is not valid", buf, 2u);
      }
    }

    os_unfair_lock_unlock((a1 + 112));
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29830AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  _Block_object_dispose(&a19, 8);
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  os_unfair_lock_unlock(v25 + 28);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync22ModernBasebandProvider9mapBufferENS0_16BasebandProvider8bufferIdEPvm_block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    ___ZN5waipc8timesync22ModernBasebandProvider9mapBufferENS0_16BasebandProvider8bufferIdEPvm_block_invoke_cold_1(a1);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      if (*(v6 + 40))
      {
        os_unfair_lock_lock((v4 + 112));
        if ((*(v4 + 116) & 1) == 0)
        {
          if (a2)
          {
            v10 = waipc::logging::getLogger(2u);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = *(a1 + 48);
              *buf = 16777728;
              v22 = v11;
              v23 = 1024;
              v24 = a2;
              _os_log_impl(&dword_298307000, v10, OS_LOG_TYPE_INFO, "buffer map for buffer %hhu failed 0x%08x", buf, 0xBu);
            }

            waipc::timesync::BasebandProvider::die(v4, @"buffer map failed");
          }

          else
          {
            v13 = *(v4 + 72);
            if (v13)
            {
              v14 = _Block_copy(v13);
              v15 = v14;
              v16 = *(v4 + 24);
              v18[0] = MEMORY[0x29EDCA5F8];
              v18[1] = 1174405120;
              v18[2] = ___ZN5waipc8timesync22ModernBasebandProvider9mapBufferENS0_16BasebandProvider8bufferIdEPvm_block_invoke_114;
              v18[3] = &__block_descriptor_tmp_115;
              if (v14)
              {
                v17 = _Block_copy(v14);
              }

              else
              {
                v17 = 0;
              }

              aBlock = v17;
              v20 = *(a1 + 48);
              dispatch_async(v16, v18);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v15)
              {
                _Block_release(v15);
              }
            }
          }
        }

        os_unfair_lock_unlock((v4 + 112));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_29830B110(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c86_ZTSN10applesauce8dispatch2v15blockIFvN5waipc8timesync16BasebandProvider8bufferIdEbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c86_ZTSN10applesauce8dispatch2v15blockIFvN5waipc8timesync16BasebandProvider8bufferIdEbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void waipc::timesync::ModernBasebandProvider::unmapBuffer(uint64_t a1, int a2)
{
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    waipc::timesync::ModernBasebandProvider::unmapBuffer();
  }

  if (a2)
  {
    v5 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 16777472;
      buf[4] = a2;
      _os_log_impl(&dword_298307000, v5, OS_LOG_TYPE_INFO, "unknown buffer id %hhu", buf, 5u);
    }
  }

  else
  {
    os_unfair_lock_lock((a1 + 112));
    v6 = *(a1 + 184);
    if (v6 && (v6(a1 + 128) & 1) != 0)
    {
      *buf = 0;
      v13 = buf;
      v14 = 0x3802000000;
      v15 = __Block_byref_object_copy_;
      v16 = __Block_byref_object_dispose_;
      std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(v10, (a1 + 8));
      v7 = v11;
      v17 = *v10;
      v18 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if ((TelephonyBasebandPCITransportUnmapRegion() & 1) == 0)
      {
        v8 = waipc::logging::getLogger(2u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v10 = 16777472;
          v10[4] = 0;
          _os_log_impl(&dword_298307000, v8, OS_LOG_TYPE_INFO, "buffer unmap for buffer %hhu failed", v10, 5u);
        }

        waipc::timesync::BasebandProvider::die(a1, @"buffer unmap failed");
      }

      _Block_object_dispose(buf, 8);
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      v9 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_298307000, v9, OS_LOG_TYPE_INFO, "unable to unmap buffer because transport is not valid", buf, 2u);
      }
    }

    os_unfair_lock_unlock((a1 + 112));
  }
}

void sub_29830B41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  _Block_object_dispose(&a19, 8);
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  os_unfair_lock_unlock(v25 + 28);
  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync22ModernBasebandProvider11unmapBufferENS0_16BasebandProvider8bufferIdE_block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  Logger = waipc::logging::getLogger(2u);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    ___ZN5waipc8timesync22ModernBasebandProvider11unmapBufferENS0_16BasebandProvider8bufferIdE_block_invoke_cold_1(a1);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      if (*(v6 + 40))
      {
        os_unfair_lock_lock((v4 + 112));
        if ((*(v4 + 116) & 1) == 0)
        {
          if (a2)
          {
            v10 = waipc::logging::getLogger(2u);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = *(a1 + 48);
              *buf = 16777728;
              v22 = v11;
              v23 = 1024;
              v24 = a2;
              _os_log_impl(&dword_298307000, v10, OS_LOG_TYPE_INFO, "buffer unmap for buffer %hhu failed 0x%08x", buf, 0xBu);
            }

            waipc::timesync::BasebandProvider::die(v4, @"buffer unmap failed");
          }

          else
          {
            v13 = *(v4 + 72);
            if (v13)
            {
              v14 = _Block_copy(v13);
              v15 = v14;
              v16 = *(v4 + 24);
              v18[0] = MEMORY[0x29EDCA5F8];
              v18[1] = 1174405120;
              v18[2] = ___ZN5waipc8timesync22ModernBasebandProvider11unmapBufferENS0_16BasebandProvider8bufferIdE_block_invoke_121;
              v18[3] = &__block_descriptor_tmp_124;
              if (v14)
              {
                v17 = _Block_copy(v14);
              }

              else
              {
                v17 = 0;
              }

              aBlock = v17;
              v20 = *(a1 + 48);
              dispatch_async(v16, v18);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v15)
              {
                _Block_release(v15);
              }
            }
          }
        }

        os_unfair_lock_unlock((v4 + 112));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_29830B644(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t waipc::timesync::ModernBasebandProvider::configureTransport(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1 + 28);
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  return 1;
}

uint64_t waipc::timesync::ModernBasebandProvider::engageTransport(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 28);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3802000000;
  v10[3] = __Block_byref_object_copy_;
  v10[4] = __Block_byref_object_dispose_;
  std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(buf, &this[2]._os_unfair_lock_opaque);
  v2 = v9;
  v10[5] = *buf;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = TelephonyBasebandPCITransportRegisterTimeEvent();
  if ((v3 & 1) == 0)
  {
    Logger = waipc::logging::getLogger(2u);
    if (!os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v5 = "register time event failed";
    goto LABEL_13;
  }

  if (TelephonyBasebandPCITransportRegisterTimeEvent())
  {
    BYTE1(this[29]._os_unfair_lock_opaque) = 1;
  }

  else
  {
    v6 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_298307000, v6, OS_LOG_TYPE_INFO, "register host time event failed", buf, 2u);
    }
  }

  if ((TelephonyBasebandPCITransportRegisterTimeEvent() & 1) == 0)
  {
    Logger = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "register network time event failed";
LABEL_13:
      _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }

LABEL_14:
  _Block_object_dispose(v10, 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  return v3;
}

void sub_29830B8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a18, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  _Unwind_Resume(a1);
}

void ___ZN5waipc8timesync22ModernBasebandProvider15engageTransportEv_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(v3 + 40))
      {
        os_unfair_lock_lock(v6 + 28);
        waipc::timesync::ModernBasebandProvider::handleTimeEvent(v6, a2);
        os_unfair_lock_unlock(v6 + 28);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_29830B994(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void waipc::timesync::ModernBasebandProvider::handleTimeEvent(os_unfair_lock *a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(a1 + 28);
  v5 = a2 + 1;
  v4 = a2[1];
  if (v4 < 8 && ((0x8Fu >> v4) & 1) != 0)
  {
    v6 = qword_298321E20[v4];
    Logger = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
    {
      waipc::timesync::ModernBasebandProvider::handleTimeEvent(a2, a2 + 1);
    }

    v8 = *a2;
    if (v8 == 3)
    {
      v14 = *(a2 + 1);
      v13 = *(a2 + 1);
      v15 = 0;
      v16 = v13;
      waipc::timesync::BasebandProvider::handleTimesync<PCITransportTimesyncMeasurement *>(a1, 0, &v14, &v17);
    }

    else if (v8 == 1)
    {
      v9 = *(a2 + 1);
      v15 = *(a2 + 1);
      v14 = v9;
      v16 = v6;
      waipc::timesync::BasebandProvider::handleTimesync<waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *>(a1, 1, &v14, &v17);
    }
  }

  else
  {
    v10 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *v5;
      LODWORD(v14) = 67109120;
      HIDWORD(v14) = v11;
      _os_log_impl(&dword_298307000, v10, OS_LOG_TYPE_INFO, "got invalid timestamp unit (%u)", &v14, 8u);
    }

    waipc::timesync::BasebandProvider::die(a1, @"timesync got invalid timestamp unit");
  }

  v12 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::BasebandProvider::handleTimesync<waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *>(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  os_unfair_lock_assert_owner((a1 + 112));
  if (*(a1 + 256) != a2)
  {
    v8 = *(a1 + 232);
    v9 = v8;
    while (a3 != a4 && v9 != *(a1 + 240))
    {
      if (*a3 == *v9)
      {
        waipc::timesync::BasebandProvider::timesyncMeasurement::complete(v9, a3);
        if (v9 != v8)
        {
          v10 = *v9;
          v11 = *(v9 + 1);
          v37 = *(v9 + 4);
          v35 = v10;
          v36 = v11;
          v12 = *v8;
          v13 = *(v8 + 16);
          *(v9 + 4) = *(v8 + 32);
          *v9 = v12;
          *(v9 + 1) = v13;
          v14 = v35;
          v15 = v36;
          *(v8 + 32) = v37;
          *v8 = v14;
          *(v8 + 16) = v15;
        }

        v8 += 40;
        v9 += 40;
        a3 += 6;
      }

      else if (*a3 - *v9 < 0)
      {
        a3 += 6;
      }

      else
      {
        v9 += 40;
      }
    }

    if ((*(a1 + 116) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v16 = *(a1 + 232);
        if (v8 != v16)
        {
          *&v35 = 0;
          *(&v35 + 1) = &v35;
          *&v36 = 0x4002000000;
          *(&v36 + 1) = __Block_byref_object_copy__164;
          v37 = __Block_byref_object_dispose__165;
          __p = 0;
          v39 = 0;
          v40 = 0;
          std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>,std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>>(&__p, v16, v8, 0xCCCCCCCCCCCCCCCDLL * ((v8 - v16) >> 3));
          waipc::timesync::BasebandProvider::logMeasurements(a1, *(*(&v35 + 1) + 40), *(*(&v35 + 1) + 48));
          v17 = *(a1 + 56);
          if (v17)
          {
            v18 = _Block_copy(v17);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a1 + 24);
          v33[0] = MEMORY[0x29EDCA5F8];
          v33[1] = 1174405120;
          v33[2] = ___ZN5waipc8timesync16BasebandProvider14handleTimesyncIPNS1_25deviceTimesyncMeasurementEEEvNS1_16timesyncEndpointET_S6__block_invoke;
          v33[3] = &unk_2A1EB7290;
          if (v18)
          {
            v20 = _Block_copy(v18);
          }

          else
          {
            v20 = 0;
          }

          v33[4] = &v35;
          aBlock = v20;
          dispatch_async(v19, v33);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v18)
          {
            _Block_release(v18);
          }

          _Block_object_dispose(&v35, 8);
          if (__p)
          {
            v39 = __p;
            operator delete(__p);
          }
        }
      }
    }

    v21 = *(a1 + 232);
    if (v21 != v9)
    {
      v22 = *(a1 + 240);
      v23 = v22 - v9;
      if (v22 != v9)
      {
        memmove(*(a1 + 232), v9, v22 - v9);
      }

      *(a1 + 240) = &v21[v23];
    }
  }

  if (a3 != a4)
  {
    if (*(a1 + 256) == a2)
    {
      v24 = *(a1 + 240);
    }

    else
    {
      v24 = *(a1 + 240);
      if (*(a1 + 232) != v24)
      {
        waipc::timesync::BasebandProvider::handleTimesync<PCITransportTimesyncMeasurement *>();
      }
    }

    *(a1 + 256) = a2;
    std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *,waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *>((a1 + 232), v24, a3, a4, 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 3));
  }

  v25 = (2 * *(a1 + 88));
  v27 = *(a1 + 232);
  v26 = *(a1 + 240);
  v28 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 3) > v25;
  v29 = -40 * v25;
  v30 = &v26[v29];
  if (v28 && v30 != v27)
  {
    v32 = -v29;
    if (v26 != v30)
    {
      memmove(*(a1 + 232), v30, -v29);
    }

    *(a1 + 240) = &v27[v32];
  }
}

void sub_29830BE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void waipc::timesync::LegacyBasebandProvider::subscribe(os_unfair_lock *a1, int a2, unsigned __int8 a3)
{
  os_unfair_lock_lock(a1 + 28);
  if (a2)
  {
    __assert_rtn("subscribe", "BasebandProvider.cpp", 901, "type == timestampId::kNetworkUplinkSchedule");
  }

  waipc::timesync::LegacyBasebandProvider::sendSubscribeMessage(a1, a3);

  os_unfair_lock_unlock(a1 + 28);
}

void waipc::timesync::LegacyBasebandProvider::sendSubscribeMessage(os_unfair_lock *this, unsigned __int8 a2)
{
  os_unfair_lock_assert_owner(this + 28);
  v4 = *&this[46]._os_unfair_lock_opaque;
  if (v4 && (v4(this + 32) & 1) != 0)
  {
    v9 = 0;
    v10[0] = 1;
    v10[1] = a2 ^ 1;
    v5 = *&this[32]._os_unfair_lock_opaque;
    if (!v5 || (v5(this + 32, v10, 4, &v9, 0, 0xFFFFFFFFLL, 0) & 1) == 0)
    {
      Logger = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "failed to send subscribe message", v8, 2u);
      }

      waipc::timesync::BasebandProvider::die(this, @"timesync PCI write failed");
    }
  }

  else
  {
    v7 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_298307000, v7, OS_LOG_TYPE_INFO, "unable to send subscribe message because transport is not valid", buf, 2u);
    }
  }
}

uint64_t waipc::timesync::LegacyBasebandProvider::configureTransport(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1 + 28);
  *(a2 + 36) = a1[22]._os_unfair_lock_opaque + 1;
  *(a2 + 40) = 64;
  return 1;
}

void waipc::timesync::LegacyBasebandProvider::handleTransportRead(os_unfair_lock *this, char *a2, unsigned int a3)
{
  os_unfair_lock_assert_owner(this + 28);

  waipc::timesync::LegacyBasebandProvider::handleMessage(this, a2, a3);
}

void waipc::timesync::LegacyBasebandProvider::handleMessage(os_unfair_lock *this, char *a2, unint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(this + 28);
  if (a3 <= 1)
  {
    Logger = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "got undersized message header (%zu)", &v16, 0xCu);
    }

    v7 = @"timesync got undersized message header";
LABEL_24:
    waipc::timesync::BasebandProvider::die(this, v7);
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  if (*a2)
  {
    v8 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *a2;
      v16 = 16777472;
      LOBYTE(v17) = v9;
      _os_log_impl(&dword_298307000, v8, OS_LOG_TYPE_INFO, "got unrecognized message type (%hhu)", &v16, 5u);
    }

    v7 = @"timesync got unrecognized message type";
    goto LABEL_24;
  }

  if (a3 <= 0xF)
  {
    v10 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_298307000, v10, OS_LOG_TYPE_INFO, "got undersized time event (%zu)", &v16, 0xCu);
    }

    v7 = @"timesync got undersized time event";
    goto LABEL_24;
  }

  if (a2[2] == 1)
  {
    v12 = *MEMORY[0x29EDCA608];

    waipc::timesync::LegacyBasebandProvider::handleUplinkScheduleUpdate(this, a2, a3);
  }

  else
  {
    if (a2[2])
    {
      v13 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = a2[2];
        v16 = 16777472;
        LOBYTE(v17) = v14;
        _os_log_impl(&dword_298307000, v13, OS_LOG_TYPE_INFO, "got unrecognized time event type (%hhu)", &v16, 5u);
      }

      v7 = @"timesync got unrecognized time event type";
      goto LABEL_24;
    }

    v11 = *MEMORY[0x29EDCA608];

    waipc::timesync::LegacyBasebandProvider::handleDeviceTimesyncMeasurement(this, a2);
  }
}

void waipc::timesync::LegacyBasebandProvider::handleDeviceTimesyncMeasurement(os_unfair_lock *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(a1 + 28);
  v4 = *(a2 + 3);
  if (v4 >= 4)
  {
    Logger = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      v11 = *(a2 + 3);
      LODWORD(v17) = 16777472;
      BYTE4(v17) = v11;
      _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "got invalid timestamp unit (%hhu)", &v17, 5u);
    }

    waipc::timesync::BasebandProvider::die(a1, @"timesync got invalid timestamp unit");
  }

  else
  {
    v6 = (a2 + 8);
    v5 = *(a2 + 8);
    if ((v5 + 1) > 1)
    {
      v12 = qword_298321E60[v4];
      v14 = *(a2 + 4);
      v13 = (a2 + 4);
      *&v18 = v5;
      v17 = v14;
      *(&v18 + 1) = v12;
      v15 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        waipc::timesync::LegacyBasebandProvider::handleDeviceTimesyncMeasurement(v13, v6);
      }

      waipc::timesync::BasebandProvider::handleTimesync<waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *>(a1, 1, &v17, &v19);
    }

    else
    {
      v7 = waipc::logging::getLogger(2u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a2 + 4);
        v9 = *(a2 + 8);
        LODWORD(v17) = 67109376;
        HIDWORD(v17) = v8;
        LOWORD(v18) = 2048;
        *(&v18 + 2) = v9;
        _os_log_impl(&dword_298307000, v7, OS_LOG_TYPE_INFO, "got invalid timesync measurement seq %u, payload %llu", &v17, 0x12u);
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void waipc::timesync::LegacyBasebandProvider::handleUplinkScheduleUpdate(os_unfair_lock *this, _BYTE *a2, unint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(this + 28);
  Logger = waipc::logging::getLogger(2u);
  v7 = Logger;
  if (a3 <= 0x17)
  {
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v26 = a3;
      _os_log_impl(&dword_298307000, v7, OS_LOG_TYPE_INFO, "got undersized uplink schedule (%zu)", buf, 0xCu);
    }

    v8 = @"timesync got invalid uplink schedule";
LABEL_15:
    waipc::timesync::BasebandProvider::die(this, v8);
    goto LABEL_16;
  }

  if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEBUG))
  {
    waipc::timesync::LegacyBasebandProvider::handleUplinkScheduleUpdate(a2);
  }

  v9 = a2[3];
  if (v9 >= 4)
  {
    v15 = waipc::logging::getLogger(2u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = a2[3];
      *buf = 16777472;
      LOBYTE(v26) = v16;
      _os_log_impl(&dword_298307000, v15, OS_LOG_TYPE_INFO, "got invalid timestamp unit (%hhu)", buf, 5u);
    }

    v8 = @"timesync got invalid timestamp unit";
    goto LABEL_15;
  }

  if ((this[29]._os_unfair_lock_opaque & 1) == 0 && *&this[16]._os_unfair_lock_opaque)
  {
    v10 = *&qword_298321E60[v9];
    v12 = *(a2 + 1);
    v11 = *(a2 + 2);
    waipc::timesync::BasebandProvider::logTimestamp(this, 0, v12, v11, v10);
    v13 = *&this[16]._os_unfair_lock_opaque;
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v18 = *&this[6]._os_unfair_lock_opaque;
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 1174405120;
    v20[2] = ___ZN5waipc8timesync22LegacyBasebandProvider26handleUplinkScheduleUpdateEPKvm_block_invoke;
    v20[3] = &__block_descriptor_tmp_150;
    if (v14)
    {
      v19 = _Block_copy(v14);
    }

    else
    {
      v19 = 0;
    }

    aBlock = v19;
    v22 = v12;
    v23 = v10;
    v24 = v11;
    dispatch_async(v18, v20);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v14)
    {
      _Block_release(v14);
    }
  }

LABEL_16:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_29830C734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c92_ZTSN10applesauce8dispatch2v15blockIFvN5waipc8timesync16BasebandProvider11timestampIdEydyEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c92_ZTSN10applesauce8dispatch2v15blockIFvN5waipc8timesync16BasebandProvider11timestampIdEydyEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void waipc::timesync::ModernBasebandProvider::~ModernBasebandProvider(os_unfair_lock_s *this)
{
  waipc::timesync::BasebandProvider::~BasebandProvider(this);

  JUMPOUT(0x29C288190);
}

void waipc::timesync::LegacyBasebandProvider::~LegacyBasebandProvider(os_unfair_lock_s *this)
{
  waipc::timesync::BasebandProvider::~BasebandProvider(this);

  JUMPOUT(0x29C288190);
}

uint64_t waipc::timesync::BasebandProvider::config::config(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  *(a1 + 40) = v9;
  v10 = *(a2 + 48);
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  *(a1 + 48) = v10;
  v11 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v11;
  return a1;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void waipc::timesync::BasebandProvider::config::~config(waipc::timesync::BasebandProvider::config *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE907F8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

char *std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement const*>,std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v21 = 5 * a5;
        v22 = &__dst[40 * a5];
        v23 = &v8[-40 * a5];
        v24 = a1[1];
        while (v23 < v8)
        {
          v25 = *v23;
          v26 = *(v23 + 1);
          *(v24 + 32) = *(v23 + 4);
          *v24 = v25;
          *(v24 + 16) = v26;
          v23 += 40;
          v24 += 40;
        }

        a1[1] = v24;
        if (v8 != v22)
        {
          memmove(&__dst[40 * a5], __dst, v8 - v22);
        }

        v32 = 8 * v21;
        v33 = v5;
        v34 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          *(v18 + 32) = *(v16 + 4);
          *v18 = v19;
          *(v18 + 16) = v20;
          v16 += 40;
          v18 += 40;
          v17 += 40;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v27 = &__dst[40 * a5];
        v28 = v17 - 40 * a5;
        v29 = v17;
        while (v28 < v8)
        {
          v30 = *v28;
          v31 = *(v28 + 16);
          *(v29 + 32) = *(v28 + 32);
          *v29 = v30;
          *(v29 + 16) = v31;
          v28 += 40;
          v29 += 40;
        }

        a1[1] = v29;
        if (v18 != v27)
        {
          memmove(&__dst[40 * a5], __dst, v17 - v27);
        }

        v33 = v5;
        v34 = v6;
        v32 = v15;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * (&v8[-*a1] >> 3);
    if (v11 > 0x666666666666666)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<waipc::timesync::BasebandProvider::timesyncMeasurement>>(a1, v14);
    }

    v35 = 8 * (v12 >> 3);
    v36 = (v35 + 40 * a5);
    v37 = 40 * a5;
    v38 = v35;
    do
    {
      v39 = *v6;
      v40 = *(v6 + 1);
      *(v38 + 32) = *(v6 + 4);
      *v38 = v39;
      *(v38 + 16) = v40;
      v38 += 40;
      v6 += 40;
      v37 -= 40;
    }

    while (v37);
    memcpy(v36, v5, a1[1] - v5);
    v41 = *a1;
    v42 = &v36[a1[1] - v5];
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v35 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<waipc::timesync::BasebandProvider::timesyncMeasurement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::back_insert_iterator<std::vector<applesauce::CF::DictionaryRef>>::operator=[abi:ne200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17 = *a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v4, v11);
    }

    v13 = 0;
    v14 = (8 * v8);
    *v14 = *a2;
    *a2 = 0;
    v15 = 8 * v8 + 8;
    v16 = 0;
    std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(v4, &v13);
    v7 = v4[1];
    std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v13);
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
    *a2 = 0;
    v4[1] = v7;
  }

  v4[1] = v7;
  return a1;
}

void sub_29830D030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__shared_ptr_emplace<waipc::timesync::LegacyBasebandProvider>::__shared_ptr_emplace[abi:ne200100]<waipc::timesync::LegacyBasebandProvider,std::allocator<waipc::timesync::LegacyBasebandProvider>,0>(void *a1, const waipc::timesync::BasebandProvider *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB71C0;
  waipc::timesync::BasebandProvider::BasebandProvider((a1 + 3), a2);
  a1[3] = &unk_2A1EB7158;
  return a1;
}

void std::__shared_ptr_emplace<waipc::timesync::LegacyBasebandProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB71C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

waipc::timesync::BasebandProvider *waipc::timesync::BasebandProvider::BasebandProvider(waipc::timesync::BasebandProvider *this, const waipc::timesync::BasebandProvider *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1EB6FA8;
  waipc::timesync::BasebandProvider::config::config(this + 24, a2 + 24);
  v4 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v4;
  v5 = *(a2 + 15);
  if (v5)
  {
    CFRetain(*(a2 + 15));
  }

  *(this + 15) = v5;
  v6 = *(a2 + 12);
  v7 = *(a2 + 13);
  v8 = *(a2 + 28);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v12 = *(a2 + 10);
  v11 = *(a2 + 11);
  *(this + 29) = 0;
  *(this + 10) = v12;
  *(this + 9) = v10;
  *(this + 8) = v9;
  *(this + 28) = v8;
  *(this + 13) = v7;
  *(this + 12) = v6;
  *(this + 11) = v11;
  *(this + 30) = 0;
  *(this + 31) = 0;
  std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<waipc::timesync::BasebandProvider::timesyncMeasurement*,waipc::timesync::BasebandProvider::timesyncMeasurement*>(this + 232, *(a2 + 29), *(a2 + 30), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 30) - *(a2 + 29)) >> 3));
  *(this + 64) = *(a2 + 64);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<waipc::timesync::BasebandProvider::timesyncMeasurement*,waipc::timesync::BasebandProvider::timesyncMeasurement*>(this + 264, *(a2 + 33), *(a2 + 34), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__init_with_size[abi:ne200100]<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>*,std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>*>(this + 288, *(a2 + 36), *(a2 + 37), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  return this;
}

void sub_29830D3F4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 264);
  if (v4)
  {
    *(v1 + 272) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 240) = v5;
    operator delete(v5);
  }

  applesauce::CF::StringRef::~StringRef((v1 + 120));
  waipc::timesync::BasebandProvider::config::~config((v1 + 24));
  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<waipc::timesync::BasebandProvider::timesyncMeasurement*,waipc::timesync::BasebandProvider::timesyncMeasurement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29830D4B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<waipc::timesync::BasebandProvider::timesyncMeasurement>>(a1, a2);
  }

  std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__init_with_size[abi:ne200100]<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>*,std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29830D584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
}

void std::shared_ptr<waipc::timesync::LegacyBasebandProvider>::__enable_weak_this[abi:ne200100]<waipc::timesync::BasebandProvider,waipc::timesync::LegacyBasebandProvider,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *std::__shared_ptr_emplace<waipc::timesync::ModernBasebandProvider>::__shared_ptr_emplace[abi:ne200100]<waipc::timesync::ModernBasebandProvider,std::allocator<waipc::timesync::ModernBasebandProvider>,0>(void *a1, const waipc::timesync::BasebandProvider *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB7210;
  waipc::timesync::BasebandProvider::BasebandProvider((a1 + 3), a2);
  a1[3] = &unk_2A1EB70B8;
  return a1;
}

void std::__shared_ptr_emplace<waipc::timesync::ModernBasebandProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB7210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

void *std::shared_ptr<waipc::timesync::BasebandProvider>::shared_ptr[abi:ne200100]<waipc::timesync::BasebandProvider,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t waipc::timesync::BasebandProvider::timesyncMeasurement::complete(uint64_t result, uint64_t a2)
{
  if (*result != *a2)
  {
    waipc::timesync::BasebandProvider::timesyncMeasurement::complete();
  }

  v2 = *(a2 + 4);
  *(result + 8) = *(a2 + 16);
  *(result + 16) = v2;
  return result;
}

__n128 __Block_byref_object_copy__164(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__165(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *__copy_helper_block_e8_40c99_ZTSN10applesauce8dispatch2v15blockIFvPN5waipc8timesync16BasebandProvider19timesyncMeasurementEmEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c99_ZTSN10applesauce8dispatch2v15blockIFvPN5waipc8timesync16BasebandProvider19timesyncMeasurementEmEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__init_with_size[abi:ne200100]<std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>,std::__wrap_iter<waipc::timesync::BasebandProvider::timesyncMeasurement*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29830D9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<PCITransportTimesyncMeasurement *,PCITransportTimesyncMeasurement *>(void *a1, char *__src, int *a3, int *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3)) >= a5)
  {
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __src) >> 3)) >= a5)
    {
      v21 = &__src[40 * a5];
      v22 = &v9[-40 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v25 = *(v22 + 1);
        *(v23 + 32) = *(v22 + 4);
        *v23 = v24;
        *(v23 + 16) = v25;
        v22 += 40;
        v23 += 40;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[40 * a5], __src, v9 - v21);
      }

      v26 = &v7[6 * a5];
      v27 = __src;
      do
      {
        v28 = *(v7 + 2);
        v29 = *v7;
        v30 = v7[1];
        v7 += 6;
        *v27 = v29;
        *(v27 + 1) = v28;
        *(v27 + 2) = v30;
        v27 += 40;
      }

      while (v7 != v26);
    }

    else
    {
      v16 = &a3[0xCCCCCCCCCCCCCCELL * ((v9 - __src) >> 3)];
      v17 = a1[1];
      if (v16 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v18 = &a3[0xCCCCCCCCCCCCCCELL * ((v9 - __src) >> 3)];
        v19 = a1[1];
        do
        {
          v20 = v18[1];
          *v19 = *v18;
          *(v19 + 8) = *(v18 + 2);
          *(v19 + 16) = v20;
          v18 += 6;
          v19 += 40;
          v17 += 40;
        }

        while (v18 != a4);
      }

      a1[1] = v17;
      if (v9 - __src >= 1)
      {
        v40 = &__src[40 * a5];
        v41 = v17 - 40 * a5;
        v42 = v17;
        while (v41 < v9)
        {
          v43 = *v41;
          v44 = *(v41 + 16);
          *(v42 + 32) = *(v41 + 32);
          *v42 = v43;
          *(v42 + 16) = v44;
          v41 += 40;
          v42 += 40;
        }

        a1[1] = v42;
        if (v19 != v40)
        {
          memmove(&__src[40 * a5], __src, v17 - v40);
        }

        v45 = __src;
        do
        {
          v46 = *(v7 + 2);
          v47 = *v7;
          v48 = v7[1];
          v7 += 6;
          *v45 = v47;
          *(v45 + 1) = v46;
          *(v45 + 2) = v48;
          v45 += 40;
        }

        while (v7 != v16);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 - 0x3333333333333333 * (&v9[-*a1] >> 3);
  if (v12 > 0x666666666666666)
  {
    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3);
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x333333333333333)
  {
    v15 = 0x666666666666666;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<waipc::timesync::BasebandProvider::timesyncMeasurement>>(a1, v15);
  }

  v31 = 8 * (v13 >> 3);
  v32 = (v31 + 40 * a5);
  v33 = v31;
  do
  {
    v34 = v7[1];
    *v33 = *v7;
    *(v33 + 1) = *(v7 + 2);
    *(v33 + 2) = v34;
    v33 += 40;
    v7 += 6;
  }

  while (v33 != v32);
  memcpy(v32, __src, a1[1] - __src);
  v35 = *a1;
  v36 = &v32[a1[1] - __src];
  a1[1] = __src;
  v37 = (__src - v35);
  v38 = (v31 - (__src - v35));
  memcpy(v38, v35, v37);
  v39 = *a1;
  *a1 = v38;
  a1[1] = v36;
  a1[2] = 0;
  if (v39)
  {
    operator delete(v39);
  }

  return v31;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_29830DD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(uint64_t a1)
{
  result = CFArrayCreate(0, *a1, (*(a1 + 8) - *a1) >> 3, MEMORY[0x29EDB9000]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_29830DE38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double waipc::timesync::BasebandProvider::timesyncMeasurement::complete(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    waipc::timesync::BasebandProvider::timesyncMeasurement::complete();
  }

  *(a1 + 24) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 32) = result;
  return result;
}

char *std::vector<waipc::timesync::BasebandProvider::timesyncMeasurement>::__insert_with_size[abi:ne200100]<waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *,waipc::timesync::BasebandProvider::deviceTimesyncMeasurement *>(void *a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3)) >= a5)
  {
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __src) >> 3)) >= a5)
    {
      v20 = &__src[40 * a5];
      v21 = &v9[-40 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        *(v22 + 32) = *(v21 + 4);
        *v22 = v23;
        *(v22 + 16) = v24;
        v21 += 40;
        v22 += 40;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[40 * a5], __src, v9 - v20);
      }

      v25 = v7 + 24 * a5;
      v26 = __src;
      do
      {
        v27 = *(v7 + 8);
        v28 = *(v7 + 16);
        *v26 = *v7;
        *(v26 + 3) = v27;
        *(v26 + 4) = v28;
        v7 += 24;
        v26 += 40;
      }

      while (v7 != v25);
    }

    else
    {
      v16 = a3 + 0x3333333333333338 * ((v9 - __src) >> 3);
      v17 = a1[1];
      if (v16 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v18 = a3 + 0x3333333333333338 * ((v9 - __src) >> 3);
        v19 = a1[1];
        do
        {
          *v19 = *v18;
          *(v19 + 24) = *(v18 + 8);
          *(v19 + 32) = *(v18 + 16);
          v18 += 24;
          v19 += 40;
          v17 += 40;
        }

        while (v18 != a4);
      }

      a1[1] = v17;
      if (v9 - __src >= 1)
      {
        v37 = &__src[40 * a5];
        v38 = v17 - 40 * a5;
        v39 = v17;
        while (v38 < v9)
        {
          v40 = *v38;
          v41 = *(v38 + 16);
          *(v39 + 32) = *(v38 + 32);
          *v39 = v40;
          *(v39 + 16) = v41;
          v38 += 40;
          v39 += 40;
        }

        a1[1] = v39;
        if (v19 != v37)
        {
          memmove(&__src[40 * a5], __src, v17 - v37);
        }

        v42 = __src;
        do
        {
          v43 = *(v7 + 8);
          v44 = *(v7 + 16);
          *v42 = *v7;
          *(v42 + 3) = v43;
          *(v42 + 4) = v44;
          v7 += 24;
          v42 += 40;
        }

        while (v7 != v16);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 - 0x3333333333333333 * (&v9[-*a1] >> 3);
  if (v12 > 0x666666666666666)
  {
    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3);
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x333333333333333)
  {
    v15 = 0x666666666666666;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<waipc::timesync::BasebandProvider::timesyncMeasurement>>(a1, v15);
  }

  v29 = 8 * (v13 >> 3);
  v30 = (v29 + 40 * a5);
  v31 = v29;
  do
  {
    *v31 = *v7;
    *(v31 + 3) = *(v7 + 8);
    *(v31 + 4) = *(v7 + 16);
    v31 += 40;
    v7 += 24;
  }

  while (v31 != v30);
  memcpy(v30, __src, a1[1] - __src);
  v32 = *a1;
  v33 = &v30[a1[1] - __src];
  a1[1] = __src;
  v34 = (__src - v32);
  v35 = (v29 - (__src - v32));
  memcpy(v35, v32, v34);
  v36 = *a1;
  *a1 = v35;
  a1[1] = v33;
  a1[2] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  return v29;
}

uint64_t waipc::logging::getLogger(unsigned int a1)
{
  if (waipc::logging::getLogger(waipc::logging::LoggerID)::sOnce != -1)
  {
    waipc::logging::getLogger();
  }

  if (a1 > 5)
  {
    return MEMORY[0x29EDCA990];
  }

  else
  {
    return waipc::logging::getLogger(waipc::logging::LoggerID)::sLoggers[a1];
  }
}

os_log_t ___ZN5waipc7logging9getLoggerENS0_8LoggerIDE_block_invoke()
{
  for (i = 0; i != 6; ++i)
  {
    result = os_log_create("com.apple.WirelessIPC.audio", kWAIPCLogCategories[i]);
    waipc::logging::getLogger(waipc::logging::LoggerID)::sLoggers[i] = result;
  }

  return result;
}

BOOL waipc::logging::EnableCache::init(waipc::logging::EnableCache *this)
{
  v2 = 0;
  v3 = waipc::logging::getLogger(waipc::logging::LoggerID)::sOnce == -1;
  do
  {
    if (!v3)
    {
      waipc::logging::getLogger();
    }

    result = os_signpost_enabled(waipc::logging::getLogger(waipc::logging::LoggerID)::sLoggers[v2]);
    *(this + v2++) = result;
    v3 = 1;
  }

  while (v2 != 6);
  return result;
}

void *waipc::FlatCircularBuffer::FlatCircularBuffer(void *this, uint64_t a2)
{
  if (a2)
  {
    operator new[]();
  }

  *this = 0;
  this[1] = 0;
  return this;
}

void **waipc::FlatCircularBuffer::write(void **this, char *a2, unint64_t a3, size_t a4)
{
  if (a4)
  {
    v5 = this;
    v6 = this[1];
    if (v6 < a4)
    {
      waipc::FlatCircularBuffer::write();
    }

    v8 = a3 % v6;
    v9 = v6 - a3 % v6;
    if (v9 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9;
    }

    memcpy(*this + v8, a2, v10);
    v11 = *v5;

    return memcpy(v11, &a2[v10], a4 - v10);
  }

  return this;
}

const void **waipc::FlatCircularBuffer::read(const void **this, char *__dst, unint64_t a3, size_t a4)
{
  if (a4)
  {
    v5 = this;
    v6 = this[1];
    if (v6 < a4)
    {
      waipc::FlatCircularBuffer::read();
    }

    v8 = a3 % v6;
    v9 = v6 - a3 % v6;
    if (v9 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9;
    }

    memcpy(__dst, *this + v8, v10);
    v11 = *v5;

    return memcpy(&__dst[v10], v11, a4 - v10);
  }

  return this;
}

void waipc::FlatCircularBuffer::set(waipc::FlatCircularBuffer *this, char a2, unint64_t a3, size_t a4)
{
  if (a4)
  {
    v6 = *(this + 1);
    if (v6 < a4)
    {
      waipc::FlatCircularBuffer::set();
    }

    v7 = a3 % v6;
    v8 = v6 - a3 % v6;
    if (v8 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v8;
    }

    bzero((*this + v7), v9);
    v10 = *this;

    bzero(v10, a4 - v9);
  }
}

uint64_t waipc::PCIeAudioLink::computeBufferLayout@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 8) * *(result + 10) + 24;
  v3 = v2 * *(result + 12);
  v4 = v2 * *(result + 16);
  if (*(result + 64) == 1)
  {
    v5 = ~*MEMORY[0x29EDCA6C8];
    v6 = v5 & (*MEMORY[0x29EDCA6C8] + 40);
    v3 = v5 & (*MEMORY[0x29EDCA6C8] + v3);
    v4 = v5 & (*MEMORY[0x29EDCA6C8] + v4);
  }

  else
  {
    v6 = 40;
  }

  *a2 = v2;
  a2[1] = 0;
  a2[2] = v6;
  a2[3] = v6;
  a2[4] = v3;
  a2[5] = v6 + v3;
  a2[6] = v4;
  a2[7] = v6 + v3 + v4;
  return result;
}

uint64_t waipc::PCIeAudioLink::computeBufferLength(uint64_t a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  waipc::PCIeAudioLink::computeBufferLayout(a1, &v15);
  v4 = *MEMORY[0x29EDCA6C8];
  v5 = ~*MEMORY[0x29EDCA6C8];
  if (*(a1 + 64) != 1)
  {
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v8 = 0;
    v6 = 0;
    v7 = v5 & (v4 + *(&v18 + 1));
    if (!a2)
    {
      return *(&v18 + 1);
    }

LABEL_11:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 3;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v12;
    *(a2 + 44) = 0;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
    *(a2 + 64) = v13;
    *(a2 + 68) = 0;
    return *(&v18 + 1);
  }

  v6 = *(&v15 + 1);
  if ((*(&v15 + 1) & ~v5) != 0)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v7 = v16;
  if (((v16 + v4) & v5) != v16)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v8 = *(&v16 + 1);
  if ((*(&v16 + 1) & ~v5) != 0)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v9 = v17;
  if (((v17 + v4) & v5) != v17)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v10 = *(&v17 + 1);
  if ((*(&v17 + 1) & ~v5) != 0)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v11 = v18;
  if (((v18 + v4) & v5) != v18)
  {
    waipc::PCIeAudioLink::computeBufferLength();
  }

  v12 = 2;
  v13 = 1;
  if (a2)
  {
    goto LABEL_11;
  }

  return *(&v18 + 1);
}

void waipc::PCIeAudioLink::PCIeAudioLink(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 88) = 0;
  v9 = (a1 + 88);
  *(a1 + 32) = v6;
  *(a1 + 92) = 0;
  *(a1 + 96) = *a3;
  v10 = a3[1];
  *(a1 + 104) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = 0u;
  v11 = (a1 + 144);
  *(a1 + 112) = a4;
  v12 = (a1 + 72);
  v13 = vld1q_dup_f64(v12);
  v14 = vcvtq_u64_f64(vdivq_f64(vmulq_f64(*(a1 + 40), vdupq_n_s64(0x41CDCD6500000000uLL)), v13));
  *(a1 + 120) = vextq_s8(v14, v14, 8uLL);
  *(a1 + 136) = (*(a1 + 56) * 1000000000.0 / *(a1 + 80));
  *(a1 + 192) = 0u;
  v15 = (a1 + 192);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = mach_continuous_time();
  *(a1 + 328) = mach_absolute_time();
  *(a1 + 336) = *(a1 + 312);
  *(a1 + 352) = *(a1 + 328);
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 436) = 257;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  Logger = waipc::logging::getLogger(5u);
  v17 = waipc::logging::getLogger(5u);
  v18 = os_signpost_id_make_with_pointer(v17, a1);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(Logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PCIeAudioLink", &unk_298325FC1, buf, 2u);
    }
  }

  os_unfair_lock_lock(v9);
  v20 = *(a1 + 112);
  if (v20 < waipc::PCIeAudioLink::computeBufferLength(a1, 0))
  {
    v36 = "fBufferLength >= computeBufferLength( fConfig)";
    v37 = 280;
  }

  else
  {
    v21 = *(a1 + 8);
    if (!(*(a1 + 28) % v21))
    {
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      v42 = 0u;
      waipc::PCIeAudioLink::computeBufferLayout(a1, buf);
      v22 = *(a1 + 96);
      v23 = *(&v42 + 1);
      v24 = v22 + *&buf[8];
      v25 = *a1;
      v26 = *(a1 + 10);
      v27 = *(&v43 + 1);
      *v24 = 0x504349415544494FLL;
      *(v24 + 12) = v26;
      *(v24 + 14) = v21;
      v28 = *(a1 + 12);
      *(v24 + 8) = v25;
      *(v24 + 16) = v28;
      *(v24 + 24) = v23;
      *(v24 + 28) = v27;
      v29 = *buf;
      waipc::BlockRing::BlockRing(&v38, v24 + 32, v22 + v23, *buf, *(a1 + 12));
      v30 = v39;
      *v11 = v38;
      *(a1 + 160) = v30;
      *(a1 + 176) = v40;
      waipc::BlockRing::BlockRing(&v38, v24 + 36, *(a1 + 96) + v27, v29, *(a1 + 16));
      v31 = v39;
      *v15 = v38;
      *(a1 + 208) = v31;
      *(a1 + 224) = v40;
      v32 = *(a1 + 20) * *(a1 + 10);
      if (v32)
      {
        operator new[]();
      }

      v33 = *(a1 + 240);
      *(a1 + 240) = 0;
      if (v33)
      {
        MEMORY[0x29C288170](v33, 0x1000C8077774924);
      }

      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 248) = v32;
      v34 = *(a1 + 24) * *(a1 + 10);
      if (v34)
      {
        operator new[]();
      }

      v35 = *(a1 + 272);
      *(a1 + 272) = 0;
      if (v35)
      {
        MEMORY[0x29C288170](v35, 0x1000C8077774924);
      }

      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 280) = v34;
      operator new[]();
    }

    v36 = "fConfig.zeroTimestampInterval % fConfig.burstInterval == 0";
    v37 = 281;
  }

  __assert_rtn("PCIeAudioLink", "PCIeAudioLink.cpp", v37, v36);
}

void sub_29830ECC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3);
  std::unique_ptr<waipc::PCIeAudioLink::stateLogger>::reset[abi:ne200100](v1 + 56, 0);
  v5 = v1[38];
  v1[38] = 0;
  if (v5)
  {
    MEMORY[0x29C288170](v5, v2);
  }

  v6 = v1[34];
  v1[34] = 0;
  if (v6)
  {
    MEMORY[0x29C288170](v6, v2);
  }

  v7 = v1[30];
  v1[30] = 0;
  if (v7)
  {
    MEMORY[0x29C288170](v7, v2);
  }

  v8 = v1[13];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void waipc::PCIeAudioLink::logDLStallBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner((a1 + 88));
  v8 = *(a1 + 448);
  if (v8)
  {
    v9 = *(v8 + 1872);
    v10 = v8 + 88 * (v9 % 0xA);
    v11 = *(a3 + 16);
    *(v10 + 992) = *a3;
    *(v10 + 1008) = a4;
    *(v10 + 1016) = v11;
    *(v10 + 1024) = 0u;
    *(v10 + 1040) = 0u;
    *(v10 + 1056) = a2;
    *(v10 + 1064) = 0;
    *(v10 + 1072) = 1;
    v12 = *(v8 + 1880);
    if (v12 <= 9)
    {
      *(v8 + 1880) = v12 + 1;
    }

    *(v8 + 1872) = (v9 + 1) % 0xA;
  }
}

void waipc::PCIeAudioLink::logDLUnderrunBegin(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  os_unfair_lock_assert_owner((a1 + 88));
  v7 = *(a1 + 448);
  if (v7)
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = mach_continuous_time();
    v12 = *(v7 + 2848);
    v13 = v7 + 96 * (v12 % 0xA);
    *(v13 + 1888) = v8;
    *(v13 + 1896) = v9;
    *(v13 + 1904) = a4;
    *(v13 + 1912) = v10;
    *(v13 + 1920) = 0u;
    *(v13 + 1936) = 0u;
    *(v13 + 1952) = v11;
    *(v13 + 1968) = 0;
    *(v13 + 1960) = 0;
    *(v13 + 1976) = 1;
    v14 = *(v7 + 2856);
    if (v14 <= 9)
    {
      *(v7 + 2856) = v14 + 1;
    }

    *(v7 + 2848) = (v12 + 1) % 0xA;
  }
}

void waipc::PCIeAudioLink::updateLoggerState(waipc::PCIeAudioLink *this)
{
  os_unfair_lock_assert_owner(this + 22);
  v2 = *(this + 56);
  if (v2)
  {
    *v2 = *(this + 16);
    *(v2 + 16) = *(this + 18);
    v3 = *(this + 312);
    *(v2 + 48) = *(this + 41);
    *(v2 + 32) = v3;
    v4 = *(this + 21);
    *(v2 + 72) = *(this + 44);
    *(v2 + 56) = v4;
    *(v2 + 80) = *(this + 45);
    v5 = *(this + 23);
    *(v2 + 104) = *(this + 48);
    *(v2 + 88) = v5;
    *(v2 + 112) = waipc::BlockRing::getCurrentIndex(this + 36);
    v6 = *(this + 51);
    *(v2 + 116) = *(this + 392);
    *(v2 + 132) = v6;
    *(v2 + 140) = waipc::BlockRing::getCurrentIndex(this + 48);
    *(v2 + 144) = *(this + 26);
    *(v2 + 160) = *(this + 108);
    *(v2 + 164) = *(this + 218);
    v7 = *(this + 56);
    *(v2 + 168) = *(this + 55);

    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::put(v7 + 1444, v7);
  }
}

void waipc::PCIeAudioLink::~PCIeAudioLink(waipc::PCIeAudioLink *this)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(this + 436) == 1 && *(this + 461) == 1)
  {
    Logger = waipc::logging::getLogger(5u);
    v3 = waipc::logging::getLogger(5u);
    v4 = os_signpost_id_make_with_pointer(v3, this);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(Logger))
      {
        v20 = 67109120;
        v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_INTERVAL_END, v5, "PCIeAudioLink_DLStall", "anomalous %{BOOL}d", &v20, 8u);
      }
    }
  }

  if (*(this + 437) == 1 && *(this + 461) == 1)
  {
    v6 = waipc::logging::getLogger(5u);
    v7 = waipc::logging::getLogger(5u);
    v8 = os_signpost_id_make_with_pointer(v7, this);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v6))
      {
        v10 = *(this + 55);
        v20 = 67109376;
        v21 = 0;
        v22 = 2048;
        v23 = v10;
        _os_signpost_emit_with_name_impl(&dword_298307000, v6, OS_SIGNPOST_INTERVAL_END, v9, "PCIeAudioLink_DLUnderrun", "anomalous %{BOOL}d, length %llu", &v20, 0x12u);
      }
    }
  }

  v11 = waipc::logging::getLogger(5u);
  v12 = waipc::logging::getLogger(5u);
  v13 = os_signpost_id_make_with_pointer(v12, this);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v11))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_298307000, v11, OS_SIGNPOST_INTERVAL_END, v14, "PCIeAudioLink", &unk_298325FC1, &v20, 2u);
    }
  }

  std::unique_ptr<waipc::PCIeAudioLink::stateLogger>::reset[abi:ne200100](this + 56, 0);
  v15 = *(this + 38);
  *(this + 38) = 0;
  if (v15)
  {
    MEMORY[0x29C288170](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  *(this + 34) = 0;
  if (v16)
  {
    MEMORY[0x29C288170](v16, 0x1000C8077774924);
  }

  v17 = *(this + 30);
  *(this + 30) = 0;
  if (v17)
  {
    MEMORY[0x29C288170](v17, 0x1000C8077774924);
  }

  v18 = *(this + 13);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_29830F250(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void waipc::PCIeAudioLink::sync(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 88));
  if (*(a1 + 460) == 1)
  {
    Logger = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(Logger))
    {
      v8 = 134217984;
      v9 = a3;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_Sync", "currentTime: %llu", &v8, 0xCu);
    }
  }

  waipc::PCIeAudioLink::checkDownlink(a1, a2, a3);
  waipc::PCIeAudioLink::checkUplink(a1, a2);
  waipc::PCIeAudioLink::updateLoggerState(a1);
  os_unfair_lock_unlock((a1 + 88));
  v7 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::checkDownlink(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner((a1 + 88));
  v6 = *(a1 + 304);
  if (waipc::BlockRing::readNextBlock((a1 + 192), v6))
  {
    while (1)
    {
      v7 = (*(*a2 + 32))(a2, v6->n128_u64[1], 0);
      v9 = v7 + llround(v8);
      if (*(a1 + 460) == 1)
      {
        Logger = waipc::logging::getLogger(4u);
        if (os_signpost_enabled(Logger))
        {
          CurrentIndex = waipc::BlockRing::getCurrentIndex((a1 + 192));
          v12 = v6->n128_u64[0];
          v13 = v6->n128_u64[1];
          v14 = v6[1].n128_u64[0];
          *buf = 67110144;
          *v59 = CurrentIndex;
          *&v59[4] = 2048;
          *&v59[6] = v12;
          v60 = 2048;
          v61 = v13;
          v62 = 2048;
          v63 = v14;
          v64 = 2048;
          v65 = v9;
          _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_DLBlock", "id %u, sample %llu, deviceTime %llu, schedule %llu, hostTime %llu", buf, 0x30u);
        }
      }

      if (*(a1 + 460) == 1)
      {
        v15 = waipc::logging::getLogger(4u);
        if (os_signpost_enabled(v15))
        {
          v16 = waipc::BlockRing::getCurrentIndex((a1 + 192));
          *buf = 134218240;
          *v59 = v9;
          *&v59[8] = 1024;
          *&v59[10] = v16;
          _os_signpost_emit_with_name_impl(&dword_298307000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_DLBlockNominal", "%{signpost.description:event_time}llu id %u", buf, 0x12u);
        }
      }

      v17 = *(a1 + 8);
      if (v6->n128_u64[0] != *(a1 + 392) + v17)
      {
        break;
      }

      v18 = v17 / *a1 * 1000000000.0 / *(a1 + 72);
      v19 = *(a1 + 400) + v18;
      v20 = v6->n128_u64[1];
      if (v19 <= v20)
      {
        v21 = v6->n128_i64[1];
      }

      else
      {
        v21 = *(a1 + 400) + v18;
      }

      if (v20 < v19)
      {
        v19 = v6->n128_u64[1];
      }

      if (v21 - v19 > *(a1 + 120))
      {
        break;
      }

      v42 = *(a1 + 408) + v18;
      v43 = v6[1].n128_u64[0];
      if (v42 <= v43)
      {
        v44 = v6[1].n128_i64[0];
      }

      else
      {
        v44 = *(a1 + 408) + v18;
      }

      if (v43 < v42)
      {
        v42 = v6[1].n128_u64[0];
      }

      v45 = v44 - v42;
      v46 = *(a1 + 128);
      v22 = v45 > v46;
      if ((*(a1 + 436) & 1) != 0 || v45 > v46)
      {
        goto LABEL_16;
      }

      v22 = 0;
LABEL_18:
      v24 = *v6;
      *(a1 + 408) = v6[1].n128_u64[0];
      *(a1 + 392) = v24;
      *(a1 + 416) = v9;
      v25 = *(a1 + 360);
      v26 = v25 + v6->n128_u64[0];
      if (v26 >= 0)
      {
        waipc::PCIeAudioLink::updateTimeline(a1, v25 + v6->n128_u64[0], v9, v24.n128_f64[0]);
        waipc::FlatCircularBuffer::write((a1 + 272), &v6[1].n128_i8[8], v26 * *(a1 + 10), *(a1 + 8) * *(a1 + 10));
        v27 = *(a1 + 280) / *(a1 + 10);
        v28 = v26 + *(a1 + 8);
        v29 = v28 >= v27;
        v30 = v28 - v27;
        if (!v29)
        {
          v30 = 0;
        }

        if (*(a1 + 288) > v30)
        {
          v30 = *(a1 + 288);
        }

        *(a1 + 288) = v30;
        *(a1 + 296) = v28;
      }

      if (*(a1 + 436) == 1)
      {
        *(a1 + 436) = 0;
        if (*(a1 + 461) == 1)
        {
          v31 = waipc::logging::getLogger(5u);
          v32 = waipc::logging::getLogger(5u);
          v33 = os_signpost_id_make_with_pointer(v32, a1);
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = v33;
            if (os_signpost_enabled(v31))
            {
              *buf = 67109120;
              *v59 = !v22;
              _os_signpost_emit_with_name_impl(&dword_298307000, v31, OS_SIGNPOST_INTERVAL_END, v34, "PCIeAudioLink_DLStall", "anomalous %{BOOL}d", buf, 8u);
            }
          }
        }

        waipc::PCIeAudioLink::logDLStallEnd(a1, !v22, a3, v6, v9);
        if (!v22)
        {
          v35 = *(a1 + 448);
          if (v35)
          {
            ++*(v35 + 2864);
          }
        }
      }

      if (*(a1 + 437) == 1)
      {
        *(a1 + 437) = 0;
        if (*(a1 + 461) == 1)
        {
          v36 = waipc::logging::getLogger(5u);
          v37 = waipc::logging::getLogger(5u);
          v38 = os_signpost_id_make_with_pointer(v37, a1);
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v39 = v38;
            if (os_signpost_enabled(v36))
            {
              v40 = *(a1 + 440);
              *buf = 67109376;
              *v59 = !v22;
              *&v59[4] = 2048;
              *&v59[6] = v40;
              _os_signpost_emit_with_name_impl(&dword_298307000, v36, OS_SIGNPOST_INTERVAL_END, v39, "PCIeAudioLink_DLUnderrun", "anomalous %{BOOL}d, length %llu", buf, 0x12u);
            }
          }
        }

        waipc::PCIeAudioLink::logDLUnderrunEnd(a1, !v22, *(a1 + 440), v6, v9);
        if (!v22)
        {
          v41 = *(a1 + 448);
          if (v41)
          {
            ++*(v41 + 2868);
            *(v41 + 2872) += *(a1 + 440);
          }
        }
      }

      if (!waipc::BlockRing::readNextBlock((a1 + 192), v6))
      {
        goto LABEL_50;
      }
    }

    v22 = 1;
LABEL_16:
    waipc::PCIeAudioLink::reanchorDL(a1, v6->n128_u64[0], v9);
    waipc::PCIeAudioLink::realignUL(a1, *(a1 + 360) + v6->n128_u64[0] + (*a1 * (*(a1 + 72) * (v6[1].n128_u64[0] - v6->n128_u64[1]) / 1000000000.0)), *(a1 + 360) + v6->n128_u64[0] + (*a1 * (*(a1 + 80) * (a3 - v9) / 1000000000.0)));
    waipc::PCIeAudioLink::logReanchor(a1, (a1 + 392), *(a1 + 416), v6, v9, *(a1 + 360));
    v23 = *(a1 + 448);
    if (v23)
    {
      ++*(v23 + 2880);
    }

    goto LABEL_18;
  }

LABEL_50:
  if ((*(a1 + 436) & 1) == 0)
  {
    v47 = *(a1 + 312);
    v48 = *(a1 + 320);
    v49 = *a1;
    v50 = *(a1 + 80);
    v51 = v48 + ((*(a1 + 392) + *(a1 + 8) + *(a1 + 360) - v47) / *a1 * 1000000000.0 / v50);
    if (v51 + *(a1 + 136) <= a3)
    {
      *(a1 + 436) = 1;
      v52 = v49 * (v50 * (a3 - v48) / 1000000000.0);
      waipc::PCIeAudioLink::updateTimeline(a1, v52 + v47, a3, v52);
      if (*(a1 + 461) == 1)
      {
        v53 = waipc::logging::getLogger(5u);
        v54 = waipc::logging::getLogger(5u);
        v55 = os_signpost_id_make_with_pointer(v54, a1);
        if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v56 = v55;
          if (os_signpost_enabled(v53))
          {
            *buf = 134217984;
            *v59 = v51;
            _os_signpost_emit_with_name_impl(&dword_298307000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v56, "PCIeAudioLink_DLStall", "%{signpost.description:begin_time}llu", buf, 0xCu);
          }
        }
      }

      waipc::PCIeAudioLink::logDLStallBegin(a1, a3, a1 + 392, *(a1 + 416));
    }
  }

  v57 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::checkUplink(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner((a1 + 88));
  v4 = *(a1 + 424);
  v5 = *(a1 + 256);
  if (v5 >= v4)
  {
    *(a1 + 424) = *(a1 + 8) + (v5 - v4) / *(a1 + 8) * *(a1 + 8) + v4;
    if (*(a1 + 460) == 1)
    {
      Logger = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(Logger))
      {
        v7 = *(a1 + 424);
        *buf = 134218240;
        *v49 = v4;
        *&v49[8] = 2048;
        *&v49[10] = v7;
        _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULSkip", "oldSchedule %llu, newSchedule %llu", buf, 0x16u);
      }
    }

    v8 = *(a1 + 448);
    if (v8)
    {
      *(v8 + 2884) |= 1u;
    }
  }

  for (i = *(a1 + 424); ; *(a1 + 424) = i)
  {
    v10 = *(a1 + 264);
    v11 = i >= v10;
    v12 = i - v10;
    if (v12 != 0 && v11 && v12 >= *(a1 + 432))
    {
      break;
    }

    v13 = *(a1 + 8);
    if (i >= v13)
    {
      v14 = i - v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 360);
    v16 = i / v13 * v13;
    v17 = (v15 + *(a1 + 392)) % v13;
    if (i % v13 <= v17)
    {
      v13 = 0;
    }

    v18 = v16 + v17 + v13;
    v19 = i - v15;
    v20 = (*(*a2 + 24))(a2, *(a1 + 320) + ((i - *(a1 + 312)) / *a1 * 1000000000.0 / *(a1 + 80)), 0);
    v22 = v20 + llround(v21);
    v23 = (*(*a2 + 24))(a2, *(a1 + 320) + ((v18 - *(a1 + 312)) / *a1 * 1000000000.0 / *(a1 + 80)), 0);
    *(a1 + 368) = v19;
    *(a1 + 376) = v22;
    *(a1 + 384) = v23 + llround(v24);
    v25 = waipc::BlockRing::getNextWriteBlock((a1 + 144));
    v26 = *(a1 + 368);
    *(v25 + 16) = *(a1 + 384);
    *v25 = v26;
    v27 = (v25 + 24);
    v28 = *(a1 + 8);
    v29 = v28 - (i - v14);
    if (v28 > i - v14)
    {
      if (*(a1 + 460) == 1)
      {
        v30 = waipc::logging::getLogger(4u);
        if (os_signpost_enabled(v30))
        {
          *buf = 134218240;
          *v49 = i;
          *&v49[8] = 2048;
          *&v49[10] = v29;
          _os_signpost_emit_with_name_impl(&dword_298307000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULEarlySilence", "requested %llu, length %llu", buf, 0x16u);
        }
      }

      if (v29 >= *(a1 + 8))
      {
        waipc::PCIeAudioLink::checkUplink();
      }

      bzero(v27, v29 * *(a1 + 10));
      v27 += v29 * *(a1 + 10);
    }

    v31 = *(a1 + 256);
    v32 = v31 - v14;
    if (v31 > v14)
    {
      if (*(a1 + 460) == 1)
      {
        v33 = waipc::logging::getLogger(4u);
        if (os_signpost_enabled(v33))
        {
          *buf = 134218240;
          *v49 = v14;
          *&v49[8] = 2048;
          *&v49[10] = v31 - v14;
          _os_signpost_emit_with_name_impl(&dword_298307000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULPartialBlockFront", "begin %llu, length %llu", buf, 0x16u);
        }
      }

      if (v32 >= *(a1 + 8))
      {
        waipc::PCIeAudioLink::checkUplink();
      }

      bzero(v27, v32 * *(a1 + 10));
      v27 += v32 * *(a1 + 10);
      v14 = v31;
    }

    v34 = *(a1 + 264);
    if (v14 < v34)
    {
      if (v34 >= i)
      {
        v35 = i;
      }

      else
      {
        v35 = *(a1 + 264);
      }

      waipc::FlatCircularBuffer::read((a1 + 240), v27, v14 * *(a1 + 10), (v35 - v14) * *(a1 + 10));
      v27 += (v35 - v14) * *(a1 + 10);
      v14 = v35;
    }

    if (i > v14)
    {
      if (*(a1 + 460) == 1)
      {
        v36 = waipc::logging::getLogger(4u);
        if (os_signpost_enabled(v36))
        {
          *buf = 134218240;
          *v49 = v14;
          *&v49[8] = 2048;
          *&v49[10] = i - v14;
          _os_signpost_emit_with_name_impl(&dword_298307000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULPartialBlockBack", "begin %llu, length %llu", buf, 0x16u);
        }
      }

      bzero(v27, (i - v14) * *(a1 + 10));
    }

    waipc::BlockRing::commitWrite((a1 + 144));
    if (*(a1 + 460) == 1)
    {
      v37 = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(v37))
      {
        CurrentIndex = waipc::BlockRing::getCurrentIndex((a1 + 144));
        v39 = *(a1 + 376);
        v40 = *(a1 + 384);
        v41 = *(a1 + 368);
        v42 = ((*(a1 + 360) + v41 - *(a1 + 312)) / *a1 * 1000000000.0 / *(a1 + 80));
        v43 = *(a1 + 320);
        *buf = 67110144;
        *v49 = CurrentIndex;
        *&v49[4] = 2048;
        *&v49[6] = v41;
        *&v49[14] = 2048;
        *&v49[16] = v39;
        v50 = 2048;
        v51 = v40;
        v52 = 2048;
        v53 = v43 + v42;
        _os_signpost_emit_with_name_impl(&dword_298307000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULBlock", "id %u, sample %llu, deviceTime %llu, schedule %llu, hostTime %llu", buf, 0x30u);
      }
    }

    if (*(a1 + 460) == 1)
    {
      v44 = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(v44))
      {
        v45 = *(a1 + 320) + ((*(a1 + 360) + *(a1 + 368) - *(a1 + 312)) / *a1 * 1000000000.0 / *(a1 + 80));
        v46 = waipc::BlockRing::getCurrentIndex((a1 + 144));
        *buf = 134218240;
        *v49 = v45;
        *&v49[8] = 1024;
        *&v49[10] = v46;
        _os_signpost_emit_with_name_impl(&dword_298307000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULBlockNominal", "%{signpost.description:event_time}llu id %u", buf, 0x12u);
      }
    }

    i = *(a1 + 424) + *(a1 + 8);
  }

  v47 = *MEMORY[0x29EDCA608];
}

uint64_t waipc::PCIeAudioLink::absoluteDifference(waipc::PCIeAudioLink *this, unint64_t a2)
{
  if (this <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = this;
  }

  if (a2 >= this)
  {
    v3 = this;
  }

  else
  {
    v3 = a2;
  }

  return v2 - v3;
}

void waipc::PCIeAudioLink::reanchorDL(const os_unfair_lock *this, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(this + 22);
  v6 = *&this[90]._os_unfair_lock_opaque;
  v7 = (*&this->_os_unfair_lock_opaque * (*&this[20]._os_unfair_lock_opaque * (a3 - *&this[80]._os_unfair_lock_opaque) / 1000000000.0)) + *&this[78]._os_unfair_lock_opaque;
  *&this[90]._os_unfair_lock_opaque = v7 - a2;
  if (LOBYTE(this[115]._os_unfair_lock_opaque) == 1)
  {
    Logger = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(Logger))
    {
      v9 = *&this[90]._os_unfair_lock_opaque;
      v16 = 134218752;
      v17 = a2;
      v18 = 2048;
      v19 = v7;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v9;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_DLReanchor", "sample %llu, prevTimelineSample %lld, oldDeviceOffset %lld, newDeviceOffset %lld", &v16, 0x2Au);
    }
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    *&this[72]._os_unfair_lock_opaque = 0;
    *&this[74]._os_unfair_lock_opaque = 0;
  }

  else
  {
    v10 = *&this[74]._os_unfair_lock_opaque;
    v11 = v7 - v10;
    if (v7 >= v10)
    {
      os_unfair_lock_opaque_high = HIWORD(this[2]._os_unfair_lock_opaque);
      v14 = *&this[70]._os_unfair_lock_opaque / os_unfair_lock_opaque_high;
      if (v11 >= v14)
      {
        v11 = *&this[70]._os_unfair_lock_opaque / os_unfair_lock_opaque_high;
      }

      waipc::FlatCircularBuffer::set(&this[68], 0, v10 * os_unfair_lock_opaque_high, v11 * os_unfair_lock_opaque_high);
      v12 = v7 - v14;
      if (v7 < v14)
      {
        v12 = 0;
      }

      if (*&this[72]._os_unfair_lock_opaque > v12)
      {
        v12 = *&this[72]._os_unfair_lock_opaque;
      }
    }

    else
    {
      v12 = *&this[72]._os_unfair_lock_opaque;
      if (v7 < v12)
      {
        v12 = v7;
      }
    }

    *&this[72]._os_unfair_lock_opaque = v12;
    *&this[74]._os_unfair_lock_opaque = v7;
  }

  v15 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::realignUL(const os_unfair_lock *this, unint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(this + 22);
  v6 = *&this[106]._os_unfair_lock_opaque;
  *&this[106]._os_unfair_lock_opaque = a2;
  v7 = this[8]._os_unfair_lock_opaque + a3;
  if (v7 > a2)
  {
    os_unfair_lock_opaque_low = LOWORD(this[2]._os_unfair_lock_opaque);
    v9 = v7 / os_unfair_lock_opaque_low * os_unfair_lock_opaque_low;
    if (v7 % os_unfair_lock_opaque_low <= a2 % os_unfair_lock_opaque_low)
    {
      v10 = 0;
    }

    else
    {
      v10 = LOWORD(this[2]._os_unfair_lock_opaque);
    }

    *&this[106]._os_unfair_lock_opaque = v9 + a2 % os_unfair_lock_opaque_low + v10;
  }

  if (LOBYTE(this[115]._os_unfair_lock_opaque) == 1)
  {
    Logger = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(Logger))
    {
      v12 = *&this[106]._os_unfair_lock_opaque;
      v14 = 134218240;
      v15 = v6;
      v16 = 2048;
      v17 = v12;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULRealign", "oldSchedule %llu, newSchedule %llu", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::logReanchor(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_assert_owner((a1 + 88));
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[2];
    v16 = *a4;
    v17 = a4[1];
    v18 = a4[2];
    v19 = mach_continuous_time();
    v20 = *(v12 + 976);
    v21 = (v12 + 80 * (v20 % 0xA));
    v21[22] = v13;
    v21[23] = v14;
    v21[24] = a3;
    v21[25] = v15;
    v21[26] = v16;
    v21[27] = v17;
    v21[28] = a5;
    v21[29] = v18;
    v21[30] = v19;
    v21[31] = a6;
    v22 = *(v12 + 984);
    if (v22 <= 9)
    {
      *(v12 + 984) = v22 + 1;
    }

    *(v12 + 976) = (v20 + 1) % 0xA;
  }
}

double waipc::PCIeAudioLink::updateTimeline(waipc::PCIeAudioLink *this, unint64_t a2, uint64_t a3, double result)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    result = *(this + 42);
    v4 = *(this + 7);
    if (result + v4 <= a2)
    {
      v5 = *(this + 43);
      v6 = a2 - result;
      v7 = (a3 - v5) / v6;
      v8 = (v6 / v4 * v4);
      *(this + 39) = result + v8;
      result = v5 + v8 * v7;
      *(this + 40) = result;
    }
  }

  return result;
}

__n128 waipc::PCIeAudioLink::logDLStallEnd(uint64_t a1, char a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  os_unfair_lock_assert_owner((a1 + 88));
  v11 = *(a1 + 448);
  if (v11)
  {
    if (!*(v11 + 1880))
    {
      waipc::PCIeAudioLink::logDLStallEnd();
    }

    v12 = waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::back(v11 + 992);
    if ((*(v12 + 80) & 1) == 0)
    {
      waipc::PCIeAudioLink::logDLStallEnd();
    }

    *(v12 + 80) = 0;
    *(v12 + 72) = a3;
    v13 = a4[1].n128_u64[0];
    result = *a4;
    *(v12 + 32) = *a4;
    *(v12 + 48) = a5;
    *(v12 + 56) = v13;
    *(v12 + 81) = a2;
  }

  return result;
}

__n128 waipc::PCIeAudioLink::logDLUnderrunEnd(uint64_t a1, unsigned __int8 a2, unint64_t a3, __n128 *a4, unint64_t a5)
{
  os_unfair_lock_assert_owner((a1 + 88));
  v11 = *(a1 + 448);
  if (v11)
  {
    if (!*(v11 + 2856))
    {
      waipc::PCIeAudioLink::logDLUnderrunEnd();
    }

    v12 = waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::underrunReport,10ul>::back(v11 + 1888);
    if ((*(v12 + 88) & 1) == 0)
    {
      waipc::PCIeAudioLink::logDLUnderrunEnd();
    }

    v13 = v12;
    *(v12 + 88) = 0;
    *(v12 + 72) = mach_continuous_time();
    v14 = a4[1].n128_u64[0];
    result = *a4;
    v13[2] = *a4;
    v13[3].n128_u64[0] = a5;
    v13[3].n128_u64[1] = v14;
    v13[5].n128_u8[9] = a2;
    v13[5].n128_u64[0] = a3;
  }

  return result;
}

unint64_t waipc::PCIeAudioLink::increaseUntilEqualModulo(unint64_t this, unint64_t a2, unint64_t a3)
{
  if (this % a3 <= a2 % a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  return this / a3 * a3 + a2 % a3 + v3;
}

void waipc::PCIeAudioLink::readInput(waipc::PCIeAudioLink *this, unint64_t a2, char *a3, unsigned int a4)
{
  v35 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 22);
  v9 = a4 / *(this + 5) + a2;
  if (*(this + 460) == 1)
  {
    Logger = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(Logger))
    {
      v11 = *(this + 36);
      v12 = *(this + 37);
      v27 = 134218752;
      v28 = a2;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ReadInput", "range [%llu, %llu), available [%llu, %llu)", &v27, 0x2Au);
    }
  }

  v13 = *(this + 36);
  if (v13 > a2)
  {
    if (v13 >= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = *(this + 36);
    }

    v15 = v14 - a2;
    if (*(this + 460) == 1)
    {
      v16 = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(v16))
      {
        v27 = 134218240;
        v28 = a2;
        v29 = 2048;
        v30 = v14 - a2;
        _os_signpost_emit_with_name_impl(&dword_298307000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_DLOverflow", "begin %llu, length %llu", &v27, 0x16u);
      }
    }

    v17 = *(this + 56);
    if (v17)
    {
      *(v17 + 2884) |= 2u;
    }

    bzero(a3, v15 * *(this + 5));
    a3 += v15 * *(this + 5);
    a2 = v14;
  }

  v18 = *(this + 37);
  if (a2 < v18)
  {
    if (v18 >= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = *(this + 37);
    }

    waipc::FlatCircularBuffer::read(this + 34, a3, a2 * *(this + 5), (v19 - a2) * *(this + 5));
    a3 += (v19 - a2) * *(this + 5);
    a2 = v19;
  }

  v20 = v9 - a2;
  if (v9 > a2)
  {
    if ((*(this + 437) & 1) == 0)
    {
      *(this + 437) = 1;
      *(this + 55) = 0;
      if (*(this + 461) == 1)
      {
        v21 = waipc::logging::getLogger(5u);
        v22 = waipc::logging::getLogger(5u);
        v23 = os_signpost_id_make_with_pointer(v22, this);
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = v23;
          if (os_signpost_enabled(v21))
          {
            v25 = *(this + 40) + ((a2 - *(this + 39)) / *this * 1000000000.0 / *(this + 10));
            v27 = 134217984;
            v28 = v25;
            _os_signpost_emit_with_name_impl(&dword_298307000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PCIeAudioLink_DLUnderrun", "%{signpost.description:begin_time}llu", &v27, 0xCu);
          }
        }
      }

      waipc::PCIeAudioLink::logDLUnderrunBegin(this, v8, this + 49, *(this + 52));
    }

    *(this + 55) += v20;
    bzero(a3, v20 * *(this + 5));
  }

  waipc::PCIeAudioLink::updateLoggerState(this);
  os_unfair_lock_unlock(this + 22);
  v26 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::writeMix(os_unfair_lock_s *this, unint64_t a2, char *a3, unsigned int a4, uint32_t a5)
{
  v48 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 22);
  os_unfair_lock_opaque_high = HIWORD(this[2]._os_unfair_lock_opaque);
  v11 = *&this[62]._os_unfair_lock_opaque / os_unfair_lock_opaque_high;
  v12 = a4 / os_unfair_lock_opaque_high;
  v13 = v12 - v11;
  if (v12 <= v11)
  {
    v16 = a2;
  }

  else
  {
    if (LOBYTE(this[115]._os_unfair_lock_opaque) == 1)
    {
      Logger = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(Logger))
      {
        v36 = 134218240;
        v37 = a2;
        v38 = 2048;
        v39 = v12 - v11;
        _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULOverflow", "begin %llu, length %llu", &v36, 0x16u);
      }
    }

    v15 = *&this[112]._os_unfair_lock_opaque;
    if (v15)
    {
      *(v15 + 2884) |= 4u;
    }

    v16 = v13 + a2;
    os_unfair_lock_opaque_high = HIWORD(this[2]._os_unfair_lock_opaque);
    a3 += v13 * os_unfair_lock_opaque_high;
  }

  v17 = v12 + a2;
  v18 = *&this[66]._os_unfair_lock_opaque;
  v19 = v16 - v18;
  if (v16 != v18)
  {
    v20 = *&this[106]._os_unfair_lock_opaque;
    if (v16 >= v18)
    {
      if (v17 - v18 < v11 && *&this[64]._os_unfair_lock_opaque != v18)
      {
        if (v19 > v11)
        {
          __assert_rtn("writeMix", "PCIeAudioLink.cpp", 776, "skip <= capacity");
        }

        waipc::FlatCircularBuffer::set(&this[60], 0, v18 * os_unfair_lock_opaque_high, v19 * os_unfair_lock_opaque_high);
        v34 = v16 - v11;
        if (v16 >= v11)
        {
          v35 = v16 - v11;
        }

        else
        {
          v35 = 0;
        }

        if (*&this[64]._os_unfair_lock_opaque >= v35)
        {
          v34 = *&this[64]._os_unfair_lock_opaque;
        }

        *&this[64]._os_unfair_lock_opaque = v34;
        *&this[66]._os_unfair_lock_opaque = v16;
        goto LABEL_22;
      }

      *&this[64]._os_unfair_lock_opaque = v16;
      *&this[66]._os_unfair_lock_opaque = v16;
    }

    else
    {
      v21 = *&this[64]._os_unfair_lock_opaque;
      if (v21 >= v16)
      {
        v21 = v16;
      }

      *&this[64]._os_unfair_lock_opaque = v21;
      *&this[66]._os_unfair_lock_opaque = v16;
      if (v20 <= v16)
      {
        goto LABEL_22;
      }
    }

    os_unfair_lock_opaque_low = LOWORD(this[2]._os_unfair_lock_opaque);
    if ((v16 + 1) % os_unfair_lock_opaque_low <= v20 % os_unfair_lock_opaque_low)
    {
      v23 = 0;
    }

    else
    {
      v23 = LOWORD(this[2]._os_unfair_lock_opaque);
    }

    *&this[106]._os_unfair_lock_opaque = (v16 + 1) / os_unfair_lock_opaque_low * os_unfair_lock_opaque_low + v20 % os_unfair_lock_opaque_low + v23;
LABEL_22:
    if (LOBYTE(this[115]._os_unfair_lock_opaque) == 1)
    {
      v24 = waipc::logging::getLogger(4u);
      if (os_signpost_enabled(v24))
      {
        v25 = *&this[106]._os_unfair_lock_opaque;
        v36 = 134218752;
        v37 = v16;
        v38 = 2048;
        v39 = v18;
        v40 = 2048;
        v41 = v20;
        v42 = 2048;
        v43 = v25;
        _os_signpost_emit_with_name_impl(&dword_298307000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_ULJump", "begin %llu, expected %llu, oldSchedule %llu, newSchedule %llu", &v36, 0x2Au);
      }
    }
  }

  waipc::FlatCircularBuffer::write(&this[60], a3, v16 * HIWORD(this[2]._os_unfair_lock_opaque), (v17 - v16) * HIWORD(this[2]._os_unfair_lock_opaque));
  v26 = v17 - v11;
  if (v17 >= v11)
  {
    v27 = v17 - v11;
  }

  else
  {
    v27 = 0;
  }

  if (*&this[64]._os_unfair_lock_opaque >= v27)
  {
    v26 = *&this[64]._os_unfair_lock_opaque;
  }

  *&this[64]._os_unfair_lock_opaque = v26;
  *&this[66]._os_unfair_lock_opaque = v17;
  this[108]._os_unfair_lock_opaque = a5;
  if (LOBYTE(this[115]._os_unfair_lock_opaque) == 1)
  {
    v28 = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(v28))
    {
      v29 = *&this[64]._os_unfair_lock_opaque;
      v30 = *&this[66]._os_unfair_lock_opaque;
      v31 = *&this[106]._os_unfair_lock_opaque;
      v32 = v31 - LOWORD(this[2]._os_unfair_lock_opaque);
      v36 = 134219264;
      v37 = v16;
      v38 = 2048;
      v39 = v17;
      v40 = 2048;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      v44 = 2048;
      v45 = v32;
      v46 = 2048;
      v47 = v31;
      _os_signpost_emit_with_name_impl(&dword_298307000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_WriteMix", "range [%llu, %llu), available [%llu, %llu), scheduled [%llu, %llu)", &v36, 0x3Eu);
    }
  }

  waipc::PCIeAudioLink::updateLoggerState(this);
  os_unfair_lock_unlock(this + 22);
  v33 = *MEMORY[0x29EDCA608];
}

void waipc::PCIeAudioLink::getZeroTimestamp(waipc::PCIeAudioLink *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 22);
  if (*(this + 436) == 1)
  {
    v7 = *(this + 39);
    LODWORD(v6) = *(this + 7);
    v8 = (v7 + v6);
    v9 = (v8 - v7) / *this * 1000000000.0 / *(this + 10);
    v10 = *(this + 40) + v9;
    if (v10 <= a2)
    {
      waipc::PCIeAudioLink::updateTimeline(this, v8, v10, v9);
    }
  }

  if (*(this + 40) <= a2)
  {
    *(this + 44) = *(this + 41);
    *(this + 21) = *(this + 312);
  }

  if (*(this + 460) == 1)
  {
    Logger = waipc::logging::getLogger(4u);
    if (os_signpost_enabled(Logger))
    {
      v12 = *(this + 42);
      v13 = *(this + 43);
      v14 = *(this + 44);
      v16 = 134218496;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_signpost_emit_with_name_impl(&dword_298307000, Logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PCIeAudioLink_GetZeroTimestamp", "sample %lf, host %llu, seed %llu", &v16, 0x20u);
    }
  }

  waipc::PCIeAudioLink::updateLoggerState(this);
  *a3 = *(this + 21);
  *(a3 + 16) = *(this + 44);
  os_unfair_lock_unlock(this + 22);
  v15 = *MEMORY[0x29EDCA608];
}

BOOL waipc::PCIeAudioLink::isPeripheralActive(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 22);
  v2 = waipc::BlockRing::getLiveIndex(this + 48) != 0;
  os_unfair_lock_unlock(this + 22);
  return v2;
}

void waipc::PCIeAudioLink::getDLState(waipc::PCIeAudioLink *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 22);
  *a2 = waipc::BlockRing::getCurrentIndex(this + 48) - 1;
  *(a2 + 8) = *(this + 392);
  *(a2 + 24) = *(this + 51);

  os_unfair_lock_unlock(this + 22);
}

void waipc::PCIeAudioLink::getULState(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 22);
  *a2 = waipc::BlockRing::getCurrentIndex(this + 36) - 1;
  *(a2 + 8) = *&this[92]._os_unfair_lock_opaque;
  *(a2 + 24) = *&this[96]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(this + 22);
}

double waipc::PCIeAudioLink::getDLAlignmentAnchor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 22);
  v2 = (*&this[90]._os_unfair_lock_opaque + *&this[98]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 22);
  return v2;
}

double waipc::PCIeAudioLink::getULAlignmentAnchor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 22);
  v2 = *&this[106]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 22);
  return v2;
}

uint64_t waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::back(uint64_t a1)
{
  v1 = *(a1 + 888);
  if (!v1)
  {
    waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::back();
  }

  if (*(a1 + 880))
  {
    v1 = *(a1 + 880);
  }

  return a1 + 88 * ((v1 - 1) % 0xAuLL);
}

uint64_t waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::underrunReport,10ul>::back(uint64_t a1)
{
  v1 = *(a1 + 968);
  if (!v1)
  {
    waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::back();
  }

  if (*(a1 + 960))
  {
    v1 = *(a1 + 960);
  }

  return a1 + 96 * ((v1 - 1) % 0xAuLL);
}

void waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::put(os_unfair_lock_t lock, const void *a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v4 = waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::takeIdle(lock);
  memcpy(v4, a2, 0xB48uLL);
  v5 = atomic_exchange(&lock[2168], v4);
  if (v5)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle(lock, v5);
  }

  if (lock)
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_29831127C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t waipc::PCIeAudioLink::dumpState(waipc::PCIeAudioLink *this)
{
  v68[2] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(this + 23);
  v2 = *(this + 56);
  if (v2)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::take(v2 + 5776, (v2 + 2888));
    v3 = *(this + 56);
    v38 = 0;
    v39 = &v38;
    v40 = 0x4002000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    memset(v43, 0, sizeof(v43));
    std::vector<applesauce::CF::DictionaryRef>::reserve(v43, *(v3 + 3872));
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 0x40000000;
    v37[2] = ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_43;
    v37[3] = &unk_29EE909B8;
    v37[4] = &__block_literal_global_39;
    v37[5] = &v38;
    waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::reanchorReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::reanchorReport const&)>(v3 + 3064, v37);
    v31 = 0;
    v32 = &v31;
    v33 = 0x4002000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    memset(v36, 0, sizeof(v36));
    std::vector<applesauce::CF::DictionaryRef>::reserve(v36, *(v3 + 4768));
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 0x40000000;
    v30[2] = ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_2_58;
    v30[3] = &unk_29EE909E0;
    v30[4] = &__block_literal_global_39;
    v30[5] = &v31;
    waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::stallReport const&)>(v3 + 3880, v30);
    v24 = 0;
    v25 = &v24;
    v26 = 0x4002000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    memset(v29, 0, sizeof(v29));
    std::vector<applesauce::CF::DictionaryRef>::reserve(v29, *(v3 + 5744));
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v23[2] = ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_3_79;
    v23[3] = &unk_29EE90A08;
    v23[4] = &__block_literal_global_39;
    v23[5] = &v24;
    waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::underrunReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::underrunReport const&)>(v3 + 4776, v23);
    waipc::util::_kv::_kv<double const&,void>(v44, @"Sample Rate", this);
    waipc::util::_kv::_kv<unsigned short const&,void>(&v45, @"Burst Interval", this + 4);
    waipc::util::_kv::_kv<unsigned short const&,void>(&v46, @"Sample Width", this + 5);
    waipc::util::_kv::_kv<unsigned int const&,void>(&v47, @"UL Scratch Size", this + 5);
    waipc::util::_kv::_kv<unsigned int const&,void>(&v48, @"DL Scratch Size", this + 6);
    waipc::util::_kv::_kv<unsigned int const&,void>(&v49, @"Timestamp Interval", this + 7);
    waipc::util::_kv::_kv<double const&,void>(&v50, @"UL Reanchor Threshold", this + 5);
    waipc::util::_kv::_kv<double const&,void>(&v51, @"DL Reanchor Threshold", this + 6);
    waipc::util::_kv::_kv<double const&,void>(v52, @"DL Stall Detect Threshold", this + 7);
    v4 = waipc::BlockRing::dumpState((this + 144));
    v52[2] = @"UL Ring";
    v52[3] = v4;
    cf[2] = 0;
    v5 = waipc::BlockRing::dumpState((this + 192));
    v52[4] = @"DL Ring";
    v52[5] = v5;
    cf[1] = 0;
    waipc::util::_kv::_kv<unsigned long long &,void>(&v53, @"UL Scratch Head", (v3 + 2888));
    waipc::util::_kv::_kv<unsigned long long &,void>(&v54, @"UL Scratch Tail", (v3 + 2896));
    waipc::util::_kv::_kv<unsigned long long &,void>(&v55, @"DL Scratch Head", (v3 + 2904));
    waipc::util::_kv::_kv<unsigned long long &,void>(v56, @"DL Scratch Tail", (v3 + 2912));
    ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke((v3 + 2920), cf);
    v56[2] = @"Current Timestamp";
    v6 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    v56[3] = v6;
    ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke((v3 + 2944), &v20);
    v56[4] = @"Last Timestamp";
    v7 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    v56[5] = v7;
    waipc::util::_kv::_kv<unsigned long long &,void>(v57, @"Device Timeline Offset", (v3 + 2968));
    ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_2((v3 + 2976), &v19);
    v57[2] = @"UL Last Header";
    v8 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    v57[3] = v8;
    waipc::util::_kv::_kv<unsigned int &,void>(v58, @"UL Last Index", (v3 + 3000));
    ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_2((v3 + 3004), &v18);
    v58[2] = @"DL Last Header";
    v9 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v58[3] = v9;
    waipc::util::_kv::_kv<unsigned int &,void>(&v59, @"DL Last Index", (v3 + 3028));
    waipc::util::_kv::_kv<unsigned long long &,void>(&v60, @"DL Last Host Timestamp", (v3 + 3032));
    waipc::util::_kv::_kv<unsigned long long &,void>(&v61, @"UL Next Block", (v3 + 3040));
    waipc::util::_kv::_kv<unsigned int &,void>(v62, @"UL Tardiness", (v3 + 3048));
    v10 = *MEMORY[0x29EDB8F00];
    v11 = *MEMORY[0x29EDB8EF8];
    if (*(v3 + 3052))
    {
      v12 = *MEMORY[0x29EDB8F00];
    }

    else
    {
      v12 = *MEMORY[0x29EDB8EF8];
    }

    v62[2] = @"DL Stalled";
    v62[3] = v12;
    if (!*(v3 + 3053))
    {
      v10 = v11;
    }

    v62[4] = @"DL Underrun";
    v62[5] = v10;
    waipc::util::_kv::_kv<unsigned long long &,void>(v63, @"DL Underrun Length", (v3 + 3056));
    v63[2] = @"Reanchor Log";
    v63[3] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v39 + 5);
    v63[4] = @"DL Stall Log";
    v63[5] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v32 + 5);
    v63[6] = @"DL Underrun Log";
    v63[7] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(v25 + 5);
    waipc::util::_kv::_kv<unsigned int &,void>(&v64, @"DL Stall Anomaly Count", (v3 + 5752));
    waipc::util::_kv::_kv<unsigned int &,void>(&v65, @"DL Underrun Anomalies", (v3 + 5756));
    waipc::util::_kv::_kv<unsigned long long &,void>(&v66, @"DL Underrun Anomaly Length", (v3 + 5760));
    waipc::util::_kv::_kv<unsigned int &,void>(&v67, @"Reanchor Count", (v3 + 5768));
    waipc::util::_kv::_kv<unsigned int &,void>(v68, @"Exotic Errors", (v3 + 5772));
    waipc::util::createCFDictDropNull<36l>(v44, &v22);
    for (i = 71; i != -1; i -= 2)
    {
      v14 = v44[i];
      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v15 = v22;
    _Block_object_dispose(&v24, 8);
    v44[0] = v29;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v44);
    _Block_object_dispose(&v31, 8);
    v44[0] = v36;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v44);
    _Block_object_dispose(&v38, 8);
    v44[0] = v43;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v44);
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(this + 23);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_298311A24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::take(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 4));
  v4 = atomic_exchange((a1 + 8672), 0);
  if (v4)
  {
    if (a2)
    {
      memcpy(a2, v4, 0xB48uLL);
    }

    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle(a1, v4);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v4 != 0;
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  waipc::util::_kv::_kv<double const&,void>(v7, @"Sample", a1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v8, @"Host", a1 + 1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(v9, @"Seed", a1 + 2);
  waipc::util::createCFDictDropNull<3l>(v7, a2);
  for (i = 5; i != -1; i -= 2)
  {
    v5 = v7[i];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298311D14(_Unwind_Exception *a1)
{
  v3 = (v1 + 32);
  v4 = -48;
  do
  {
    waipc::util::_kv::~_kv(v3);
    v3 = (v5 - 16);
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<3l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  keys[3] = *MEMORY[0x29EDCA608];
  memset(keys, 0, 24);
  memset(values, 0, sizeof(values));
  v4 = (a1 + 8);
  v5 = 48;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        values[v3++] = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298311E9C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_2(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  waipc::util::_kv::_kv<unsigned long long const&,void>(v7, @"Sample", a1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v8, @"Timestamp", a1 + 1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(v9, @"Schedule", a1 + 2);
  waipc::util::createCFDictDropNull<3l>(v7, a2);
  for (i = 5; i != -1; i -= 2)
  {
    v5 = v7[i];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298311FB0(_Unwind_Exception *a1)
{
  v3 = (v1 + 32);
  v4 = -48;
  do
  {
    waipc::util::_kv::~_kv(v3);
    v3 = (v5 - 16);
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_3(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v10[2] = *MEMORY[0x29EDCA608];
  waipc::util::_kv::_kv<unsigned long long const&,void>(v7, @"Sample", a1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v8, @"Device", a1 + 1);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v9, @"Host", a1 + 2);
  waipc::util::_kv::_kv<unsigned long long const&,void>(v10, @"Schedule", a1 + 3);
  waipc::util::createCFDictDropNull<4l>(v7, a2);
  for (i = 7; i != -1; i -= 2)
  {
    v5 = v7[i];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298312100(_Unwind_Exception *a1)
{
  v3 = (v1 + 48);
  v4 = -64;
  do
  {
    waipc::util::_kv::~_kv(v3);
    v3 = (v5 - 16);
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::reanchorReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::reanchorReport const&)>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 800);
  v5 = 80 * v4;
  if (v4 != 10 && v4 != *(result + 808))
  {
    v7 = result + v5;
    v8 = 800 - v5;
    do
    {
      result = (*(a2 + 16))(a2, v7);
      v7 += 80;
      v8 -= 80;
    }

    while (v8);
  }

  if (v4)
  {
    do
    {
      result = (*(a2 + 16))(a2, v3);
      v3 += 80;
      v5 -= 80;
    }

    while (v5);
  }

  return result;
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_43(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 40) + 8);
  waipc::util::_kv::_kv<unsigned long long const&,void>(v13, @"Time", (a2 + 64));
  waipc::util::_kv::_kv<unsigned long long const&,void>(v14, @"Offset", (a2 + 72));
  (*(*(a1 + 32) + 16))(&cf);
  v14[2] = @"Before";
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v14[3] = v5;
  (*(*(a1 + 32) + 16))(&v10);
  v14[4] = @"After";
  v6 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v14[5] = v6;
  waipc::util::createCFDictDropNull<4l>(v13, &v12);
  std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100]((v4 + 40), &v12);
  if (v12)
  {
    CFRelease(v12);
  }

  for (i = 7; i != -1; i -= 2)
  {
    v8 = v13[i];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_2983123CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v15 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(result, v10);
    }

    v11 = 0;
    v12 = (8 * v7);
    *v12 = *a2;
    *a2 = 0;
    v13 = 8 * v7 + 8;
    v14 = 0;
    std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(result, &v11);
    v6 = v3[1];
    result = std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v11);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  v3[1] = v6;
  return result;
}

void sub_298312564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::stallReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::stallReport const&)>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 880);
  v5 = 88 * v4;
  if (v4 != 10 && v4 != *(result + 888))
  {
    v7 = result + v5;
    v8 = 880 - v5;
    do
    {
      result = (*(a2 + 16))(a2, v7);
      v7 += 88;
      v8 -= 88;
    }

    while (v8);
  }

  if (v4)
  {
    do
    {
      result = (*(a2 + 16))(a2, v3);
      v3 += 88;
      v5 -= 88;
    }

    while (v5);
  }

  return result;
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_2_58(uint64_t a1, uint64_t a2)
{
  v18[6] = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 40) + 8);
  v5 = *MEMORY[0x29EDB8F00];
  v6 = *MEMORY[0x29EDB8EF8];
  if (*(a2 + 80))
  {
    v7 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v7 = *MEMORY[0x29EDB8EF8];
  }

  v16[0] = @"Active";
  v16[1] = v7;
  if (!*(a2 + 81))
  {
    v5 = v6;
  }

  v16[2] = @"Anomalous";
  v16[3] = v5;
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v17, @"Begin Time", (a2 + 64));
  waipc::util::_kv::_kv<unsigned long long const&,void>(v18, @"End Time", (a2 + 72));
  (*(*(a1 + 32) + 16))(&cf);
  v18[2] = @"Begin";
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v18[3] = v8;
  (*(*(a1 + 32) + 16))(&v13);
  v18[4] = @"End";
  v9 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v18[5] = v9;
  waipc::util::createCFDictDropNull<6l>(v16, &v15);
  std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100]((v4 + 40), &v15);
  if (v15)
  {
    CFRelease(v15);
  }

  for (i = 11; i != -1; i -= 2)
  {
    v11 = v16[i];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2983127E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *waipc::util::createCFDictDropNull<6l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v14 = 0u;
  v15 = 0u;
  *keys = 0u;
  memset(v12, 0, sizeof(v12));
  v4 = (a1 + 8);
  v5 = 96;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2983129B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t waipc::PCIeAudioLink::ramlog<waipc::PCIeAudioLink::underrunReport,10ul>::for_each<void({block_pointer})(waipc::PCIeAudioLink::underrunReport const&)>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 960);
  v5 = 96 * v4;
  if (v4 != 10 && v4 != *(result + 968))
  {
    v7 = result + v5;
    v8 = 960 - v5;
    do
    {
      result = (*(a2 + 16))(a2, v7);
      v7 += 96;
      v8 -= 96;
    }

    while (v8);
  }

  if (v4)
  {
    do
    {
      result = (*(a2 + 16))(a2, v3);
      v3 += 96;
      v5 -= 96;
    }

    while (v5);
  }

  return result;
}

void ___ZNK5waipc13PCIeAudioLink9dumpStateEv_block_invoke_3_79(uint64_t a1, uint64_t a2)
{
  v19[6] = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 40) + 8);
  v5 = *MEMORY[0x29EDB8F00];
  v6 = *MEMORY[0x29EDB8EF8];
  if (*(a2 + 88))
  {
    v7 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v7 = *MEMORY[0x29EDB8EF8];
  }

  v16[0] = @"Active";
  v16[1] = v7;
  if (!*(a2 + 89))
  {
    v5 = v6;
  }

  v16[2] = @"Anomalous";
  v16[3] = v5;
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v17, @"Length", (a2 + 80));
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v18, @"Begin Time", (a2 + 64));
  waipc::util::_kv::_kv<unsigned long long const&,void>(v19, @"End Time", (a2 + 72));
  (*(*(a1 + 32) + 16))(&cf);
  v19[2] = @"Begin";
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v19[3] = v8;
  (*(*(a1 + 32) + 16))(&v13);
  v19[4] = @"End";
  v9 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v19[5] = v9;
  waipc::util::createCFDictDropNull<7l>(v16, &v15);
  std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100]((v4 + 40), &v15);
  if (v15)
  {
    CFRelease(v15);
  }

  for (i = 13; i != -1; i -= 2)
  {
    v11 = v16[i];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_298312C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *waipc::util::createCFDictDropNull<7l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v4 = (a1 + 8);
  v5 = 112;
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298312E50(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<36l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v31 = *MEMORY[0x29EDCA608];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *keys = 0u;
  v14 = 0u;
  v4 = (a1 + 8);
  v5 = 576;
  memset(v12, 0, sizeof(v12));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298312FF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *waipc::util::_kv::_kv<unsigned short const&,void>(void *a1, uint64_t a2, __int16 *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void *waipc::util::_kv::_kv<unsigned int const&,void>(void *a1, uint64_t a2, int *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void *waipc::util::_kv::_kv<unsigned long long &,void>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void *waipc::util::_kv::_kv<unsigned int &,void>(void *a1, uint64_t a2, int *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

uint64_t *std::unique_ptr<waipc::PCIeAudioLink::stateLogger>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::~StateStash(v2 + 5776);

    JUMPOUT(0x29C288190);
  }

  return result;
}

uint64_t waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::~StateStash(uint64_t a1)
{
  v2 = atomic_exchange((a1 + 8672), 0);
  if (v2)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle(a1, v2);
  }

  return a1;
}

uint64_t waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle(uint64_t result, unint64_t a2)
{
  if (!a2)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle();
  }

  v2 = a2 - result - 8;
  if (v2 < -2887 || (v3 = 0xF99E237502209ED9 * (v2 >> 3), v3 >= 3))
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle();
  }

  if (atomic_exchange((result + 8 * v3 + 8680), a2))
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::putIdle();
  }

  return result;
}

unint64_t waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::takeIdle(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 8680;
  do
  {
    result = atomic_exchange((v2 + 8 * v1), 0);
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = v1 >= 2;
    }

    ++v1;
  }

  while (!v4);
  if (!result)
  {
    waipc::util::StateStash<waipc::PCIeAudioLink::stateLogger::state>::takeIdle();
  }

  return result;
}

double waipc::timesync::BasebandConfig::getDefault@<D0>(uint64_t a1@<X8>)
{
  RadioVendor = TelephonyRadiosGetRadioVendor();
  *a1 = xmmword_298321EC0;
  *(a1 + 16) = xmmword_298321ED0;
  v4 = 52.0833333;
  if (RadioVendor != 1)
  {
    v4 = 1.0;
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = waipc::util::TimestampConverter::defaultHostPeriod(RadioVendor);
  *&result = 0x200002710;
  *(a1 + 48) = xmmword_298321EE0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t waipc::timesync::LinearEstimator::LinearEstimator(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2A1EB7310;
  v5 = *a2;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 8) = v5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  std::vector<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>::reserve((a1 + 24), *(a1 + 8));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 >= v8)
  {
    v10 = (v7 - *v6) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - *v6;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>>(v6, v13);
    }

    v14 = (32 * v10);
    *v14 = *a3;
    v14[1] = a3[1];
    v9 = 32 * v10 + 32;
    v15 = *(a1 + 24);
    v16 = *(a1 + 32) - v15;
    v17 = (32 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(a1 + 24);
    *(a1 + 24) = v17;
    *(a1 + 32) = v9;
    *(a1 + 40) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a3;
    v7[1] = a3[1];
    v9 = (v7 + 2);
  }

  *(a1 + 32) = v9;
  waipc::timesync::LinearEstimator::updateEstimate(a1);
  return a1;
}

void sub_29831362C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>>(result, a2);
    }

    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

double waipc::timesync::LinearEstimator::updateEstimate(waipc::timesync::LinearEstimator *this)
{
  v2 = *(this + 3);
  v1 = *(this + 4);
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = ((v1 - v2) >> 5);
  if (v1 != v2)
  {
    v7 = *(this + 3);
    do
    {
      v5 = v5 + (*v7 + vcvtmd_s64_f64(*(v7 + 8)));
      v4 = v4 + (*(v7 + 16) + vcvtmd_s64_f64(*(v7 + 24)));
      v7 += 32;
    }

    while (v7 != v1);
  }

  v8 = (v5 / v6);
  *(this + 7) = v8;
  *(this + 8) = 0;
  v9 = (v4 / v6);
  *(this + 9) = v9;
  *(this + 10) = 0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (v2 != v1)
  {
    v3 = 0.0;
    do
    {
      v13 = *(v2 + 8) + (*v2 - v8);
      v14 = *(v2 + 24) + (*(v2 + 16) - v9);
      v12 = v12 + v13;
      v11 = v11 + v14;
      v3 = v3 + v14 * v14;
      v10 = v10 + v13 * v14;
      v2 += 32;
    }

    while (v2 != v1);
  }

  v15 = 1.0 / (v6 * v3 - v11 * v11);
  v16 = -(v11 * v15);
  v17 = v3 * v15 * v12 + 0.0 + v16 * v10;
  v18 = v16 * v12 + 0.0 + v15 * v6 * v10;
  result = v17 + v12 / v6 - v18 * (v11 / v6);
  *(this + 11) = result;
  *(this + 12) = v18;
  return result;
}

double waipc::timesync::LinearEstimator::update(waipc::timesync::LinearEstimator *this, _OWORD *a2)
{
  v5 = *(this + 3);
  v6 = *(this + 4);
  v4 = this + 24;
  v7 = (v6 - v5) >> 5;
  if (v7 >= *(v4 - 2))
  {
    v10 = (v5 + 32 * *(this + 6));
    v11 = a2[1];
    *v10 = *a2;
    v10[1] = v11;
    *(this + 6) = (*(this + 6) + 1) % ((*(this + 4) - *(this + 3)) >> 5);
  }

  else
  {
    v8 = *(this + 5);
    if (v6 >= v8)
    {
      v12 = v7 + 1;
      if ((v7 + 1) >> 59)
      {
        std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v8 - v5;
      if (v13 >> 4 > v12)
      {
        v12 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>>(v4, v14);
      }

      v15 = (32 * v7);
      *v15 = *a2;
      v15[1] = a2[1];
      v9 = 32 * v7 + 32;
      v16 = *(this + 3);
      v17 = *(this + 4) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(this + 3);
      *(this + 3) = v18;
      *(this + 4) = v9;
      *(this + 5) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v6 = *a2;
      v6[1] = a2[1];
      v9 = (v6 + 2);
    }

    *(this + 4) = v9;
  }

  return waipc::timesync::LinearEstimator::updateEstimate(this);
}

double waipc::timesync::LinearEstimator::hostToDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = (*&a3 - *(a1 + 64) + (a2 - *(a1 + 56)) - *(a1 + 88)) / *(a1 + 96);
  v5 = *(a1 + 72);
  return v3 + v4;
}

uint64_t waipc::timesync::LinearEstimator::dumpState(waipc::timesync::LinearEstimator *this)
{
  v18[5] = *MEMORY[0x29EDCA608];
  memset(v8, 0, sizeof(v8));
  v11 = *(this + 88);
  std::vector<applesauce::CF::NumberRef>::reserve(v8, 2uLL);
  v2 = 0;
  v10 = v8;
  do
  {
    ___ZNK5waipc8timesync15LinearEstimator9dumpStateEv_block_invoke(&cf, *(&v11 + v2));
    std::back_insert_iterator<std::vector<applesauce::CF::NumberRef>>::operator=[abi:ne200100](&v10, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v2 += 8;
  }

  while (v2 != 16);
  *&v11 = @"Base";
  *(&v11 + 1) = 0;
  cf = 0;
  waipc::util::_kv::_kv<unsigned long const&,void>(&v12, @"Limit", this + 1);
  waipc::util::_kv::_kv<double const&,void>(&v13, @"Nominal Rate", this + 2);
  waipc::util::_kv::_kv<unsigned long const&,void>(&v14, @"Index", this + 6);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v15, @"Norm Host Int", this + 7);
  waipc::util::_kv::_kv<double const&,void>(&v16, @"Norm Host Frac", this + 8);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v17, @"Norm Device Int", this + 9);
  waipc::util::_kv::_kv<double const&,void>(v18, @"Norm Device Frac", this + 10);
  v18[2] = @"Estimate";
  v18[3] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(v8);
  waipc::util::createCFDictDropNull<9l>(&v11, &v10);
  for (i = 136; i != -8; i -= 16)
  {
    v4 = *(&v11 + i);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v5 = v10;
  *&v11 = v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_298313BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef ___ZNK5waipc8timesync15LinearEstimator9dumpStateEv_block_invoke@<X0>(CFNumberRef *a1@<X8>, double a2@<D0>)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(result, a2);
    }

    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_298313D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<9l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *keys = 0u;
  v15 = 0u;
  v13 = 0;
  v4 = (a1 + 8);
  v5 = 144;
  memset(v12, 0, sizeof(v12));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298313ECC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *waipc::util::_kv::_kv<unsigned long const&,void>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a2;
  valuePtr = *a3;
  v4 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  a1[1] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

double waipc::timesync::KalmanEstimator::KalmanEstimator(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_2A1EB7358;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v3;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = *a3;
  *&v3 = *a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  result = *(a3 + 32);
  v5 = *(a2 + 1);
  *(a1 + 80) = result;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v5;
  return result;
}

{
  *a1 = &unk_2A1EB7358;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v3;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = *a3;
  *&v3 = *a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  result = *(a3 + 32);
  v5 = *(a2 + 1);
  *(a1 + 80) = result;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v5;
  return result;
}

long double waipc::timesync::KalmanEstimator::computeEstimate@<D0>(waipc::timesync::KalmanEstimator *this@<X0>, long double a2@<D0>, double *a3@<X8>)
{
  v6 = pow(a2, 3.0);
  v7 = *(this + 8);
  v8 = *(this + 9);
  *a3 = v7 + 0.0 + a2 * v8;
  a3[1] = v8 + v7 * 0.0 + 0.0;
  v9 = *(this + 10);
  v10 = *(this + 11);
  v11 = *(this + 12);
  v12 = *(this + 13);
  v13 = v9 + 0.0 + a2 * v11;
  v14 = v10 + 0.0 + a2 * v12;
  v15 = v11 + v9 * 0.0 + 0.0;
  v16 = v12 + v10 * 0.0 + 0.0;
  v17 = v13 + 0.0 + v14 * a2;
  v18 = v13 * 0.0 + 0.0 + v14;
  v19 = v15 + 0.0 + v16 * a2;
  v20 = v15 * 0.0 + 0.0 + v16;
  v21 = *(this + 3);
  v22 = a2 * a2 * 0.5 * v21;
  a3[2] = v17 + v6 / 3.0 * v21;
  a3[3] = v18 + v22;
  result = v20 + v21 * a2;
  a3[4] = v19 + v22;
  a3[5] = result;
  return result;
}

double waipc::timesync::KalmanEstimator::computeGain@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v3 = a1[1];
  v4 = *a1 + 0.0;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v4 + v5 * 0.0 + 0.0 + (v3 + 0.0 + v6 * 0.0) * 0.0 + a3;
  v8 = (v4 + v3 * 0.0) / v7;
  v9 = (v5 + 0.0 + v6 * 0.0) / v7;
  *a2 = v8;
  a2[1] = v9;
  v10 = 0.0 - (v9 + 0.0);
  a2[2] = 1.0 - (v8 + 0.0);
  a2[3] = 0.0 - (v8 * 0.0 + 0.0);
  result = 1.0 - (v9 * 0.0 + 0.0);
  a2[4] = v10;
  a2[5] = result;
  return result;
}

void waipc::timesync::KalmanEstimator::update(uint64_t a1, uint64_t a2)
{
  waipc::timesync::Estimator::timestamp::normalize((a2 + 16));
  v5 = v4;
  v7 = v6;
  waipc::timesync::Estimator::timestamp::normalize((a1 + 32));
  v10 = v7 < v9;
  if (v5 != v8)
  {
    v10 = v5 < v8;
  }

  if (v10)
  {
    Logger = waipc::logging::getLogger(0);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_298307000, Logger, OS_LOG_TYPE_INFO, "out-of-order time sync measurement", &v33, 2u);
    }
  }

  else
  {
    v12 = *(a2 + 8) - *(a1 + 56) + (*a2 - *(a1 + 48));
    waipc::timesync::KalmanEstimator::computeEstimate(a1, *(a2 + 24) - *(a1 + 40) + (*(a2 + 16) - *(a1 + 32)), &v33);
    v13 = *(a2 + 32);
    v14 = v13 + v35 + 0.0 + v37 * 0.0 + 0.0 + (v36 + 0.0 + v38 * 0.0) * 0.0;
    v15 = (v35 + 0.0 + v36 * 0.0) / v14;
    v16 = (v37 + 0.0 + v38 * 0.0) / v14;
    v17 = 1.0 - (v15 + 0.0);
    v18 = 0.0 - (v15 * 0.0 + 0.0);
    v19 = 0.0 - (v16 + 0.0);
    v20 = 1.0 - (v16 * 0.0 + 0.0);
    v21 = v12 - (v33 + 0.0 + v34 * 0.0);
    v22 = v33 + v15 * v21;
    v23 = v34 + v16 * v21;
    v24 = v17 * v35 + 0.0 + v18 * v37;
    v25 = v17 * v36 + 0.0 + v18 * v38;
    v26 = v19 * v35 + 0.0 + v20 * v37;
    v27 = v19 * v36 + 0.0 + v20 * v38;
    v28 = v24 * v17 + 0.0 + v25 * v18;
    v29 = v26 * v17 + 0.0 + v27 * v18;
    v30 = v26 * v19 + 0.0 + v27 * v20;
    v31 = v13 * v15;
    v32 = v13 * v16;
    *(a1 + 64) = v22;
    *(a1 + 72) = v23;
    *(a1 + 80) = v31 * v15 + 0.0 + v28;
    *(a1 + 88) = v31 * v16 + 0.0 + v24 * v19 + 0.0 + v25 * v20;
    *(a1 + 96) = v32 * v15 + 0.0 + v29;
    *(a1 + 104) = v32 * v16 + 0.0 + v30;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 64) = v22 - v12;
  }
}

double waipc::timesync::KalmanEstimator::deviceToHost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64) + *(a1 + 72) * (*&a3 - *(a1 + 40) + (a2 - *(a1 + 32)));
  v5 = *(a1 + 48);
  return v4 + v3;
}

uint64_t waipc::timesync::KalmanEstimator::dumpState(waipc::timesync::KalmanEstimator *this)
{
  v33[7] = *MEMORY[0x29EDCA608];
  memset(v24, 0, sizeof(v24));
  v26 = *(this + 4);
  std::vector<applesauce::CF::NumberRef>::reserve(v24, 2uLL);
  v2 = 0;
  v21 = v24;
  do
  {
    ___ZNK5waipc8timesync15KalmanEstimator9dumpStateEv_block_invoke(&cf, *&v27[v2 - 2]);
    std::back_insert_iterator<std::vector<applesauce::CF::NumberRef>>::operator=[abi:ne200100](&v21, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    ++v2;
  }

  while (v2 != 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(this + 6);
  v20[0] = *(this + 5);
  v20[1] = v3;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v21, 2uLL);
  v4 = 0;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v17 = ___ZNK5waipc8timesync15KalmanEstimator9dumpStateEv_block_invoke_2;
  v18 = &unk_29EE90A50;
  v19 = &__block_literal_global_28;
  do
  {
    (v17)(&cf, v16, &v20[v4]);
    v5 = v22;
    if (v22 >= v23)
    {
      v6 = (v22 - v21) >> 3;
      v7 = v6 + 1;
      if ((v6 + 1) >> 61)
      {
        std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
      }

      v8 = v23 - v21;
      if ((v23 - v21) >> 2 > v7)
      {
        v7 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      v28 = &v21;
      if (v9)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(&v21, v9);
      }

      *&v26 = 0;
      *(&v26 + 1) = 8 * v6;
      v27[1] = 0;
      **(&v26 + 1) = cf;
      cf = 0;
      v27[0] = 8 * v6 + 8;
      std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(&v21, &v26);
      v10 = v22;
      std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(&v26);
      v22 = v10;
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *v22 = cf;
      v22 = v5 + 1;
    }

    ++v4;
  }

  while (v4 != 2);
  *&v26 = @"Base";
  *(&v26 + 1) = 0;
  cf = 0;
  waipc::util::_kv::_kv<double const&,void>(v27, @"Nominal Rate", this + 1);
  waipc::util::_kv::_kv<double const&,void>(&v28, @"Rate Variance", this + 2);
  waipc::util::_kv::_kv<double const&,void>(&v29, @"Process Variance", this + 3);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v30, @"Base Host Int", this + 6);
  waipc::util::_kv::_kv<double const&,void>(&v31, @"Base Host Frac", this + 7);
  waipc::util::_kv::_kv<unsigned long long const&,void>(&v32, @"Base Device Int", this + 4);
  waipc::util::_kv::_kv<double const&,void>(v33, @"Base Device Frac", this + 5);
  v33[2] = @"Estimate State";
  v33[3] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(v24);
  v33[4] = @"Estimate Covariance";
  v33[5] = applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(&v21);
  waipc::util::createCFDictDropNull<10l>(&v26, v20);
  for (i = 19; i != -1; i -= 2)
  {
    v12 = v27[i - 2];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *&v20[0];
  *&v26 = &v21;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&v26);
  *&v26 = v24;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v26);
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_298314820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef ___ZNK5waipc8timesync15KalmanEstimator9dumpStateEv_block_invoke@<X0>(CFNumberRef *a1@<X8>, double a2@<D0>)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

void *std::vector<applesauce::CF::ArrayRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(result, a2);
    }

    std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_298314A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZNK5waipc8timesync15KalmanEstimator9dumpStateEv_block_invoke_2(uint64_t a1@<X0>, uint64_t a2@<X1>, CFArrayRef *a3@<X8>)
{
  memset(v8, 0, sizeof(v8));
  std::vector<applesauce::CF::NumberRef>::reserve(v8, 2uLL);
  v6 = 0;
  v7 = *(a1 + 32);
  v10 = v8;
  do
  {
    (*(v7 + 16))(&cf, v7, *(a2 + v6));
    std::back_insert_iterator<std::vector<applesauce::CF::NumberRef>>::operator=[abi:ne200100](&v10, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v6 += 8;
  }

  while (v6 != 16);
  *a3 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(v8);
  v11 = v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_298314AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

const void *waipc::util::createCFDictDropNull<10l>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *keys = 0u;
  v4 = (a1 + 8);
  v5 = 160;
  memset(v12, 0, sizeof(v12));
  do
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = *v4;
      if (*v4)
      {
        keys[v3] = v6;
        *(v12 + v3++) = v7;
      }
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, v12, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a2 = result;
  if (result)
  {
    v9 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v9 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298314C54(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

double waipc::timesync::KalmanEstimator::fixed@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = &unk_2A1EB7358;
  *(a5 + 8) = a6;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *(a5 + 64) = 0;
  *(a5 + 72) = a6;
  result = 0.0;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  return result;
}

void waipc::timesync::LinearEstimator::~LinearEstimator(waipc::timesync::LinearEstimator *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C288190);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<waipc::timesync::Estimator::timestamp,waipc::timesync::Estimator::timestamp>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::back_insert_iterator<std::vector<applesauce::CF::NumberRef>>::operator=[abi:ne200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long long,waipc::timesync::BasebandProvider::deviceTimestamp>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17 = *a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v4, v11);
    }

    v13 = 0;
    v14 = (8 * v8);
    *v14 = *a2;
    *a2 = 0;
    v15 = 8 * v8 + 8;
    v16 = 0;
    std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(v4, &v13);
    v7 = v4[1];
    std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v13);
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
    *a2 = 0;
    v4[1] = v7;
  }

  v4[1] = v7;
  return a1;
}

void sub_298315048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double waipc::timesync::Estimator::timestamp::normalize(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  __y = 0.0;
  v3 = modf(v2, &__y);
  v4 = 0.0;
  if (v3 < 0.0)
  {
    v4 = 1.0;
  }

  return v3 + v4;
}

void std::vector<applesauce::CF::ArrayRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::ArrayRef,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_2983153A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::ArrayRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_298315438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double waipc::util::TimestampConverter::defaultHostPeriod(waipc::util::TimestampConverter *this)
{
  if (waipc::util::TimestampConverter::defaultHostPeriod(void)::sOnce != -1)
  {
    waipc::util::TimestampConverter::defaultHostPeriod();
  }

  return *&waipc::util::TimestampConverter::defaultHostPeriod(void)::result;
}

double ___ZN5waipc4util18TimestampConverter17defaultHostPeriodEv_block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  waipc::util::TimestampConverter::defaultHostPeriod(void)::result = *&result;
  return result;
}

void waipc::util::createSerialQueueWithQosAndTarget(waipc::util *this@<X0>, const char *a2@<X1>, NSObject *a3@<X2>, NSObject **a4@<X8>)
{
  v8 = dispatch_queue_attr_make_with_qos_class(0, a2, 0);
  v9 = dispatch_queue_create_with_target_V2(this, v8, a3);
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *a4 = v10;

  dispatch_release(v10);
}

CFDataRef waipc::util::createStateData(CFPropertyListRef propertyList, const char *a2, CFErrorRef *error, __CFError **a4)
{
  v6 = *MEMORY[0x29EDB8ED8];
  Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, error);
  v8 = Data;
  theData = Data;
  if (!Data)
  {
    return v8;
  }

  v9 = CFGetTypeID(Data);
  if (v9 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  Length = CFDataGetLength(v8);
  v11 = Length;
  if (Length <= 0x8000)
  {
    v13 = malloc_type_malloc(Length + 200, 0x1000040BEF03554uLL);
    v8 = v13;
    if (v13)
    {
      *v13 = 1;
      *(v13 + 1) = v11;
      *(v13 + 8) = 0u;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0u;
      *(v13 + 152) = 0u;
      *(v13 + 168) = 0u;
      *(v13 + 184) = 0u;
      *(v13 + 136) = 0u;
      strlcpy(v13 + 136, a2, 0x40uLL);
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(v8 + 200, BytePtr, v11);
      goto LABEL_12;
    }

    if (error)
    {
      v12 = CFErrorCreate(v6, *MEMORY[0x29EDB8F48], -536870211, 0);
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v12 = CFErrorCreate(v6, *MEMORY[0x29EDB8F48], -536870206, 0);
LABEL_10:
    v8 = 0;
    *error = v12;
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:
  if (theData)
  {
    CFRelease(theData);
  }

  return v8;
}

void sub_298315704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void *waipc::util::NonblockingEventSource::NonblockingEventSource(void *context)
{
  *context = 0;
  context[1] = 0;
  name = 0;
  options.8 = 0u;
  *&options.flags = 0x100000033;
  if (!mach_port_construct(*MEMORY[0x29EDCA6B0], &options, context, &name))
  {
    operator new();
  }

  return context;
}

void sub_298315948(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  while (1)
  {
    memset(v4, 0, sizeof(v4));
    result = mach_msg(v4, 258, 0, 0x20u, *(a1 + 48), 0, 0);
    if ((result & 0xFFFFC1FF) != 0)
    {
      break;
    }

    atomic_exchange(*(a1 + 40), 0);
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  if ((result & 0xFFFFC1FF) != 0x10004003)
  {
    ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_cold_1(result);
  }

  return result;
}

uint64_t ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  free(*(a1 + 40));
  mach_port_destruct(*MEMORY[0x29EDCA6B0], *(a1 + 56), -1, *(a1 + 48));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

intptr_t ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_3(uint64_t a1, unsigned int a2)
{
  result = dispatch_source_testcancel(**(a1 + 32));
  if (!result)
  {
    atomic_fetch_or(*(a1 + 40), a2);
    *&msg.msgh_voucher_port = 0;
    msg.msgh_remote_port = *(a1 + 48);
    msg.msgh_local_port = 0;
    *&msg.msgh_bits = 0x1800000013;
    result = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
    if ((result & 0xFFFFC1FF) != 0 && (result & 0xFFFFC1FF) != 0x10000004)
    {
      ___ZN5waipc4util22NonblockingEventSourceC2EP16dispatch_queue_sU13block_pointerFvjEU13block_pointerFvvE_block_invoke_3_cold_1(result);
    }
  }

  return result;
}

void waipc::util::NonblockingEventSource::~NonblockingEventSource(NSObject **this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = this[1];
  if (v3)
  {
    _Block_release(v3);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void waipc::util::NonblockingEventSource::cancel(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_source_cancel(v1);
  }
}

uint64_t waipc::util::NonblockingEventSource::trigger(waipc::util::NonblockingEventSource *this)
{
  if (!*this)
  {
    waipc::util::NonblockingEventSource::trigger();
  }

  v2 = *(*(this + 1) + 16);

  return v2();
}

BOOL waipc::util::NonblockingEventSource::testcancel(NSObject **this)
{
  v1 = *this;
  if (!v1)
  {
    waipc::util::NonblockingEventSource::testcancel();
  }

  return dispatch_source_testcancel(v1) != 0;
}

void waipc::util::GroupErrorTimer::GroupErrorTimer(void *a1, dispatch_object_t object, uint64_t a3, NSObject *a4, const void *a5)
{
  *a1 = 0;
  a1[1] = 0;
  if (object)
  {
    if (a4)
    {
      v12 = 0;
      dispatch_retain(object);
      v13 = object;
      v14 = a3;
      dispatch_retain(a4);
      v15 = a4;
      if (a5)
      {
        v9 = _Block_copy(a5);
      }

      else
      {
        v9 = 0;
      }

      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = v9;
      v19 = 0;
      std::allocate_shared[abi:ne200100]<waipc::util::GroupErrorTimer::state,std::allocator<waipc::util::GroupErrorTimer::state>,waipc::util::GroupErrorTimer::state,0>();
    }

    v10 = "group";
    v11 = 226;
  }

  else
  {
    v10 = "queue";
    v11 = 225;
  }

  __assert_rtn("GroupErrorTimer", "Util.cpp", v11, v10);
}

void sub_298315CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  waipc::util::GroupErrorTimer::state::~state(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void waipc::util::GroupErrorTimer::~GroupErrorTimer(os_unfair_lock_t *this)
{
  v2 = *this;
  if (*this)
  {
    os_unfair_lock_lock(*this);
    waipc::util::GroupErrorTimer::stopTimer(this);
    os_unfair_lock_unlock(v2);
  }

  else
  {
    waipc::util::GroupErrorTimer::stopTimer(this);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void waipc::util::GroupErrorTimer::stopTimer(const os_unfair_lock **a1)
{
  os_unfair_lock_assert_owner(*a1);
  v2 = *&(*a1)[10]._os_unfair_lock_opaque;
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *&(*a1)[10]._os_unfair_lock_opaque;
    *&(*a1)[10]._os_unfair_lock_opaque = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void waipc::util::GroupErrorTimer::start(os_unfair_lock_t *this, const __CFString *a2)
{
  v4 = *this;
  if (*this)
  {
    os_unfair_lock_lock(*this);
  }

  waipc::util::GroupErrorTimer::start_nl(this, a2);
  if (v4)
  {

    os_unfair_lock_unlock(v4);
  }
}

void sub_298315E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void waipc::util::GroupErrorTimer::start_nl(uint64_t a1, const void *a2)
{
  os_unfair_lock_assert_owner(*a1);
  v4 = *a1;
  if (*(*a1 + 40))
  {
    if ((v4[14]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(v4[14]._os_unfair_lock_opaque) = 1;
      applesauce::CF::StringRef::from_get(a2, v12);
      v5 = *(*a1 + 64);
      *(*a1 + 64) = v12[0];
      v12[0] = v5;
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    applesauce::CF::StringRef::from_get(a2, v12);
    v6 = *(*a1 + 48);
    *(*a1 + 48) = v12[0];
    v12[0] = v6;
    if (v6)
    {
      CFRelease(v6);
    }

    waipc::util::GroupErrorTimer::startTimer(a1);
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3802000000;
    v12[3] = __Block_byref_object_copy__1;
    v7 = *a1;
    v8 = *(a1 + 8);
    v12[4] = __Block_byref_object_dispose__1;
    v12[5] = v7;
    v13 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = *a1;
    }

    v9 = *&v7[6]._os_unfair_lock_opaque;
    v10 = *&v7[2]._os_unfair_lock_opaque;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZN5waipc4util15GroupErrorTimer8start_nlERKNSt3__110shared_ptrINS1_5stateEEEPK10__CFString_block_invoke;
    v11[3] = &unk_29EE90B08;
    v11[4] = v12;
    dispatch_group_notify(v9, v10, v11);
    _Block_object_dispose(v12, 8);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

const void *applesauce::CF::StringRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFStringGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C288110](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_298316078(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void waipc::util::GroupErrorTimer::startTimer(uint64_t a1)
{
  os_unfair_lock_assert_owner(*a1);
  v2 = *a1;
  if (*(*a1 + 40))
  {
    waipc::util::GroupErrorTimer::startTimer();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3802000000;
  v17[3] = __Block_byref_object_copy__1;
  v17[4] = __Block_byref_object_dispose__1;
  v17[5] = v2;
  v3 = *(a1 + 8);
  v18 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2 = *a1;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3002000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__14;
  object = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *&v2[2]._os_unfair_lock_opaque);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN5waipc4util15GroupErrorTimer10startTimerERKNSt3__110shared_ptrINS1_5stateEEE_block_invoke;
  handler[3] = &unk_29EE90B30;
  handler[4] = v17;
  handler[5] = &v11;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5waipc4util15GroupErrorTimer10startTimerERKNSt3__110shared_ptrINS1_5stateEEE_block_invoke_2;
  v9[3] = &unk_29EE90B58;
  v9[4] = &v11;
  v4 = *a1;
  v5 = v12[5];
  if (v5)
  {
    dispatch_retain(v12[5]);
  }

  v6 = *&v4[10]._os_unfair_lock_opaque;
  *&v4[10]._os_unfair_lock_opaque = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  dispatch_source_set_event_handler(*(*a1 + 40), handler);
  dispatch_source_set_cancel_handler(*(*a1 + 40), v9);
  v7 = *(*a1 + 40);
  v8 = dispatch_time(0, *(*a1 + 16));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, *(*a1 + 16));
  dispatch_activate(*(*a1 + 40));
  _Block_object_dispose(&v11, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(v17, 8);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5waipc4util15GroupErrorTimer8start_nlERKNSt3__110shared_ptrINS1_5stateEEEPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v8[1] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 40);
      v8[0] = v5;
      if (v5)
      {
        os_unfair_lock_lock(v5);
        waipc::util::GroupErrorTimer::stopTimer(v8);
        v6 = *(v5 + 48);
        *(v5 + 48) = 0;
        if (v6)
        {
          CFRelease(v6);
        }

        if (*(v5 + 56) == 1)
        {
          *(v5 + 56) = 0;
          v7 = *(v5 + 64);
          *(v5 + 64) = 0;
          if (*(v5 + 40))
          {
            __assert_rtn("start_nl_block_invoke", "Util.cpp", 288, "!s->source");
          }

          waipc::util::GroupErrorTimer::start_nl(v8, v7);
          if (v7)
          {
            CFRelease(v7);
          }
        }

        os_unfair_lock_unlock(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_298316410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  os_unfair_lock_unlock(v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN5waipc4util15GroupErrorTimer10startTimerERKNSt3__110shared_ptrINS1_5stateEEE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    v10[1] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 40);
      v10[0] = v6;
      if (v6)
      {
        os_unfair_lock_lock(v6);
        if (dispatch_source_testcancel(*(*(*(a1 + 40) + 8) + 40)))
        {
          os_unfair_lock_unlock(v6);
        }

        else
        {
          v7 = *(v6 + 32);
          if (v7)
          {
            v8 = _Block_copy(v7);
          }

          else
          {
            v8 = 0;
          }

          v9 = *(v6 + 48);
          if (v9)
          {
            CFRetain(*(v6 + 48));
          }

          waipc::util::GroupErrorTimer::stopTimer(v10);
          os_unfair_lock_unlock(v6);
          if (v8)
          {
            v8[2](v8, v9);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v8)
          {
            _Block_release(v8);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_298316574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Block_release(v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void ___ZN5waipc4util15GroupErrorTimer10startTimerERKNSt3__110shared_ptrINS1_5stateEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v2)
  {
    dispatch_release(v2);
  }
}

BOOL waipc::util::GroupErrorTimer::isRunning(os_unfair_lock_t *this)
{
  v1 = *this;
  if (*this)
  {
    os_unfair_lock_lock(*this);
    v3 = *&(*this)[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1);
  }

  else
  {
    v3 = MEMORY[0x28];
  }

  return v3 != 0;
}

CFTypeRef waipc::util::GroupErrorTimer::copyReason(os_unfair_lock_t *this)
{
  v2 = *this;
  os_unfair_lock_lock(*this);
  v3 = *&(*this)[12]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void waipc::util::GroupErrorTimer::state::~state(waipc::util::GroupErrorTimer::state *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    dispatch_release(v7);
  }
}

void *std::__shared_ptr_emplace<waipc::util::GroupErrorTimer::state>::__shared_ptr_emplace[abi:ne200100]<waipc::util::GroupErrorTimer::state,std::allocator<waipc::util::GroupErrorTimer::state>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB7420;
  std::allocator_traits<std::allocator<waipc::util::GroupErrorTimer::state>>::construct[abi:ne200100]<waipc::util::GroupErrorTimer::state,waipc::util::GroupErrorTimer::state,void,0>(&v4, (a1 + 3), a2);
  return a1;
}

double std::allocator_traits<std::allocator<waipc::util::GroupErrorTimer::state>>::construct[abi:ne200100]<waipc::util::GroupErrorTimer::state,waipc::util::GroupErrorTimer::state,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 16);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a3 + 24);
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 40) = 0u;
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 64) = 0;
  return result;
}

void std::__shared_ptr_emplace<waipc::util::GroupErrorTimer::state>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB7420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C288190);
}

uint64_t waipc::BlockRing::BlockRing(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  v5 = atomic_load(a2);
  v6 = a5 + a5 * (-a5 / a5) - 1;
  *(result + 36) = v5;
  *(result + 40) = v6;
  if (!a5)
  {
    waipc::BlockRing::BlockRing();
  }

  if (a5 > v6 >> 1)
  {
    waipc::BlockRing::BlockRing();
  }

  return result;
}

uint64_t waipc::BlockRing::getNextWriteBlock_nl(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  os_unfair_lock_opaque = this[9]._os_unfair_lock_opaque;
  os_unfair_lock_assert_owner(this);
  return *&this[4]._os_unfair_lock_opaque + *&this[6]._os_unfair_lock_opaque * (os_unfair_lock_opaque % this[8]._os_unfair_lock_opaque);
}

uint64_t waipc::BlockRing::getNextWriteBlock(os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_assert_owner(lock);
  os_unfair_lock_opaque = lock[9]._os_unfair_lock_opaque;
  os_unfair_lock_assert_owner(lock);
  v3 = *&lock[4]._os_unfair_lock_opaque + *&lock[6]._os_unfair_lock_opaque * (os_unfair_lock_opaque % lock[8]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(lock);
  return v3;
}

void waipc::BlockRing::commitWrite_nl(waipc::BlockRing *this)
{
  os_unfair_lock_assert_owner(this);
  v2 = waipc::BlockRing::addWrapped(this, *(this + 9), 1u);
  *(this + 9) = v2;
  atomic_store(v2, *(this + 1));
}

uint64_t waipc::BlockRing::addWrapped(waipc::BlockRing *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3 < a2)
  {
    waipc::BlockRing::addWrapped();
  }

  if (v3 < a3)
  {
    waipc::BlockRing::addWrapped();
  }

  if (v3 - a3 + 1 < a2)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = 0;
  }

  return a3 + a2 + v4;
}

void waipc::BlockRing::commitWrite(os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_assert_owner(lock);
  v2 = waipc::BlockRing::addWrapped(lock, lock[9]._os_unfair_lock_opaque, 1u);
  lock[9]._os_unfair_lock_opaque = v2;
  atomic_store(v2, *&lock[2]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(lock);
}

void waipc::BlockRing::writeBlock(os_unfair_lock_t lock, void *a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_assert_owner(lock);
  os_unfair_lock_opaque = lock[9]._os_unfair_lock_opaque;
  os_unfair_lock_assert_owner(lock);
  memcpy((*&lock[4]._os_unfair_lock_opaque + *&lock[6]._os_unfair_lock_opaque * (os_unfair_lock_opaque % lock[8]._os_unfair_lock_opaque)), a2, *&lock[6]._os_unfair_lock_opaque);
  os_unfair_lock_assert_owner(lock);
  v5 = waipc::BlockRing::addWrapped(lock, lock[9]._os_unfair_lock_opaque, 1u);
  lock[9]._os_unfair_lock_opaque = v5;
  atomic_store(v5, *&lock[2]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(lock);
}

BOOL waipc::BlockRing::readNextBlock(waipc::BlockRing *this, void *a2)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  v4 = atomic_load(*(this + 1));
  isWrappedLE = waipc::BlockRing::isWrappedLE(this, v4, *(this + 9));
  if (!isWrappedLE)
  {
    for (i = *(this + 9); ; *(this + 9) = i)
    {
      os_unfair_lock_assert_owner(this);
      memcpy(a2, (*(this + 2) + *(this + 3) * (i % *(this + 8))), *(this + 3));
      v7 = atomic_load(*(this + 1));
      v8 = waipc::BlockRing::subWrapped(this, v7, *(this + 8));
      if (!waipc::BlockRing::isWrappedLE(this, *(this + 9), v8))
      {
        break;
      }

      i = waipc::BlockRing::addWrapped(this, v8, 1u);
    }

    *(this + 9) = waipc::BlockRing::addWrapped(this, *(this + 9), 1u);
  }

  os_unfair_lock_unlock(this);
  return !isWrappedLE;
}

BOOL waipc::BlockRing::isWrappedLE(waipc::BlockRing *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3 < a2)
  {
    waipc::BlockRing::isWrappedLE();
  }

  if (v3 < a3)
  {
    waipc::BlockRing::isWrappedLE();
  }

  v4 = a3 - a2;
  if (a3 < a2)
  {
    v4 = a3 - a2 + v3 + 1;
  }

  return v4 < v3 >> 1;
}

uint64_t waipc::BlockRing::subWrapped(waipc::BlockRing *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3 < a2)
  {
    waipc::BlockRing::subWrapped();
  }

  if (v3 < a3)
  {
    waipc::BlockRing::subWrapped();
  }

  if (a2 < a3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  return a2 - a3 + v4;
}

BOOL waipc::BlockRing::readLatestBlock(waipc::BlockRing *this, void *a2)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  v4 = atomic_load(*(this + 1));
  isWrappedLE = waipc::BlockRing::isWrappedLE(this, v4, *(this + 9));
  if (!isWrappedLE)
  {
    do
    {
      v6 = waipc::BlockRing::subWrapped(this, v4, 1u);
      *(this + 9) = v6;
      os_unfair_lock_assert_owner(this);
      memcpy(a2, (*(this + 2) + *(this + 3) * (v6 % *(this + 8))), *(this + 3));
      v4 = atomic_load(*(this + 1));
      v7 = waipc::BlockRing::subWrapped(this, v4, *(this + 8));
    }

    while (waipc::BlockRing::isWrappedLE(this, *(this + 9), v7));
    *(this + 9) = waipc::BlockRing::addWrapped(this, *(this + 9), 1u);
  }

  os_unfair_lock_unlock(this);
  return !isWrappedLE;
}

uint64_t waipc::BlockRing::getCurrentIndex(os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_opaque = lock[9]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(lock);
  return os_unfair_lock_opaque;
}

uint64_t waipc::BlockRing::getLiveIndex(os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v2 = atomic_load(*&lock[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(lock);
  return v2;
}

uint64_t waipc::BlockRing::dumpState(waipc::BlockRing *this)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v2 = atomic_load(*(this + 1));
  v11 = @"Live Index";
  LODWORD(valuePtr) = v2;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v13 = @"Block Size";
  valuePtr = *(this + 3);
  if (!CFNumberCreate(0, kCFNumberLongType, &valuePtr))
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C288110](v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  waipc::util::_kv::_kv<unsigned int const&,void>(&v15, @"Block Count", this + 8);
  waipc::util::_kv::_kv<unsigned int const&,void>(v16, @"Wrap Index", this + 10);
  waipc::util::createCFDictDropNull<4l>(&v11, &v9);
  for (i = 56; i != -8; i -= 16)
  {
    v4 = *(&v11 + i);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  result = v9;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2983170F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  do
  {
    v4 = (v4 - 16);
    waipc::util::_kv::~_kv(v4);
  }

  while (v4 != va);
  _Unwind_Resume(a1);
}

void NetworkUplinkClock_setTimesyncOverride(uint64_t *a1)
{
  os_unfair_lock_lock(&sTimesyncOverrideLock);
  v2 = timesyncOverrideStorage();
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  os_unfair_lock_unlock(&sTimesyncOverrideLock);
}

uint64_t *timesyncOverrideStorage(void)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    timesyncOverrideStorage();
  }

  return &qword_2A13A9D50;
}

{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    timesyncOverrideStorage();
  }

  return &qword_2A13A9D70;
}

void NetworkUplinkClock_getTimesyncOverride(uint64_t *a1@<X8>)
{
  os_unfair_lock_lock(&sTimesyncOverrideLock);
  v2 = timesyncOverrideStorage();
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&sTimesyncOverrideLock);
}

void sub_298317348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t waipc::timesync::BasebandService::init(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  waipc::timesync::BasebandService::setupProvider(this);
  os_unfair_lock_unlock(this + 8);
  return 1;
}

void waipc::timesync::BasebandService::BasebandService(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  waipc::util::createSerialQueueWithQosAndTarget("com.apple.WirelessIPC.timesync.baseband", 0x15, a3, (a1 + 16));
  *(a1 + 24) = a3;
  if (a3)
  {
    dispatch_retain(a3);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 104) = *(a2 + 64);
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  v11 = *(a2 + 32);
  *(a1 + 112) = *(a2 + 16);
  *(a1 + 128) = v11;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  waipc::timesync::KalmanEstimator::fixed(a4, 0, 0, 0, a1 + 160, *(a2 + 32) / *(a2 + 40));
  *(a1 + 272) = 0;
  applesauce::CF::StringRef::from_get(@"not started", (a1 + 280));
  *(a1 + 288) = 1;
  _ZNSt3__115allocate_sharedB8ne200100IN5waipc4util11BroadcasterIFvPKNS1_8timesync16BasebandProvider19timesyncMeasurementEmEE7contextENS_9allocatorISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_298317524(_Unwind_Exception *a1)
{
  v3 = *(v1 + 320);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 304);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  applesauce::CF::StringRef::~StringRef((v1 + 280));
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

void waipc::timesync::BasebandService::~BasebandService(const os_unfair_lock *this)
{
  os_unfair_lock_assert_not_owner(this + 8);
  if (LOBYTE(this[68]._os_unfair_lock_opaque) == 1)
  {
    if (!*&this[36]._os_unfair_lock_opaque)
    {
      __assert_rtn("~BasebandService", "BasebandService.cpp", 76, "fProvider");
    }

    v2 = *&this[86]._os_unfair_lock_opaque;
    if (v2 != &this[88])
    {
      do
      {
        v3 = *(v2 + 6);
        if (v3)
        {
          v4 = *(v2 + 32);
          v5 = *(v2 + 5);
          atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v6 = std::__shared_weak_count::lock(v3);
          if (v6)
          {
            v7 = v6;
            if (v5)
            {
              (*(**&this[36]._os_unfair_lock_opaque + 16))(*&this[36]._os_unfair_lock_opaque, v4, 0);
              v8 = *(v5 + 56);
              *(v5 + 56) = 0;
              if (v8)
              {
                dispatch_group_leave(v8);
                dispatch_release(v8);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          std::__shared_weak_count::__release_weak(v3);
        }

        v9 = *(v2 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v2 + 2);
            v11 = *v10 == v2;
            v2 = v10;
          }

          while (!v11);
        }

        v2 = v10;
      }

      while (v10 != &this[88]);
    }

    v12 = *&this[92]._os_unfair_lock_opaque;
    v13 = &this[94];
    if (v12 != &this[94])
    {
      do
      {
        if ((v12[72] & 1) == 0)
        {
          v12[72] = 1;
          (*(**&this[36]._os_unfair_lock_opaque + 32))(*&this[36]._os_unfair_lock_opaque, v12[32]);
        }

        v14 = *(v12 + 1);
        v15 = v12;
        if (v14)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = *(v15 + 2);
            v11 = *v16 == v15;
            v15 = v16;
          }

          while (!v11);
        }

        if (v16 != v13)
        {
          v17 = v12[32];
          while (v16[32] == v17)
          {
            v18 = *(v16 + 1);
            if (v18)
            {
              do
              {
                v12 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v12 = *(v16 + 2);
                v11 = *v12 == v16;
                v16 = v12;
              }

              while (!v11);
            }

            v16 = v12;
            if (v12 == v13)
            {
              goto LABEL_36;
            }
          }
        }

        v12 = v16;
LABEL_36:
        ;
      }

      while (v12 != v13);
    }
  }

  v19 = *&this[108]._os_unfair_lock_opaque;
  if (v19)
  {
    dispatch_group_leave(v19);
    v20 = *&this[108]._os_unfair_lock_opaque;
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *&this[106]._os_unfair_lock_opaque;
  if (v21)
  {
    dispatch_group_leave(v21);
    v22 = *&this[106]._os_unfair_lock_opaque;
    if (v22)
    {
      dispatch_release(v22);
    }
  }

  v23 = *&this[104]._os_unfair_lock_opaque;
  if (v23)
  {
    dispatch_release(v23);
  }

  v24 = *&this[98]._os_unfair_lock_opaque;
  if (v24)
  {
    *&this[100]._os_unfair_lock_opaque = v24;
    operator delete(v24);
  }

  std::__tree<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::__map_value_compare<waipc::timesync::BasebandProvider::bufferId,std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>,std::less<waipc::timesync::BasebandProvider::bufferId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::bufferId,waipc::timesync::BasebandService::bufferInfo>>>::destroy(&this[92], *&this[94]._os_unfair_lock_opaque);
  std::__tree<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::__map_value_compare<waipc::timesync::BasebandProvider::timestampId,std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>,std::less<waipc::timesync::BasebandProvider::timestampId>,true>,std::allocator<std::__value_type<waipc::timesync::BasebandProvider::timestampId,std::weak_ptr<waipc::timesync::BasebandService::timestampSubscription>>>>::destroy(&this[86], *&this[88]._os_unfair_lock_opaque);
  v25 = *&this[84]._os_unfair_lock_opaque;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *&this[80]._os_unfair_lock_opaque;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *&this[76]._os_unfair_lock_opaque;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *&this[70]._os_unfair_lock_opaque;
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *&this[38]._os_unfair_lock_opaque;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *&this[6]._os_unfair_lock_opaque;
  if (v30)
  {
    dispatch_release(v30);
  }

  v31 = *&this[4]._os_unfair_lock_opaque;
  if (v31)
  {
    dispatch_release(v31);
  }

  v32 = *&this[2]._os_unfair_lock_opaque;
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }
}