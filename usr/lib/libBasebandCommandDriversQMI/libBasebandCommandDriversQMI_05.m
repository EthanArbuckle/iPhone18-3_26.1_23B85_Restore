void sub_296F07E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v31 + 40);
  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(&a31);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v3, a2, "sending battery info", &cf);
  v4 = a1[5];
  if (!v4 || !a1[6])
  {
    goto LABEL_20;
  }

  v5 = cf;
  if (cf && (CFRetain(cf), (v4 = a1[5]) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = a1[6];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_104;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v11 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v11 = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, block);
  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void radio::QMICommandDriverM20::enableResetSPMIEvent(radio::QMICommandDriverM20 *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = operator new(0x20uLL);
  strcpy(v2, "enable resetting SPMI event");
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18) = 136315138;
    *(&v18 + 4) = v2;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v18, 0xCu);
  }

  v4 = *(this + 2);
  if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v18 = this;
  *(&v18 + 1) = v5;
  v19 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  std::string::__init_copy_ctor_external(&__p, v2, 0x1BuLL);
  v9 = *(this + 2);
  if (!v9 || (v10 = *(this + 1), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  *&v13->__r_.__value_.__l.__data_ = v18;
  v13->__r_.__value_.__r.__words[2] = v19;
  *(&v18 + 1) = 0;
  v19 = 0;
  v13[1] = __p;
  memset(&__p, 0, sizeof(__p));
  v14 = *(this + 3);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>(radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
    v16 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v16 = v19;
  if (v19)
  {
LABEL_12:
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_13:
  std::__shared_weak_count::__release_weak(v7);
  operator delete(v2);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296F08280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

atomic_ullong *std::shared_ptr<radio::QMICommandDriverM20>::shared_ptr[abi:ne200100]<radio::QMICommandDriverM20,std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E16710;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296F08494(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20*)#1}::operator() const(radio::QMICommandDriverM20*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::QMICommandDriverM20 *,std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20 *)#1},std::allocator<radio::QMICommandDriverM20>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::QMICommandDriverM20 *,std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20 *)#1},std::allocator<radio::QMICommandDriverM20>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20*)#1}::operator() const(radio::QMICommandDriverM20*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t ctu::cf::insert<char const*,unsigned int>(__CFDictionary *a1, const __CFString **a2, unsigned int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_296F086A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F086C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL ctu::cf::insert<char const*,__CFData const*>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  v10 = 0;
  ctu::cf::convert_copy(&v10, a2, 0x8000100, a4, a5);
  v7 = v10;
  v10 = a3;
  if (!a3)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

LABEL_7:
    CFRelease(v7);
    return v8;
  }

  CFRetain(a3);
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a3);
  }

  CFRelease(a3);
  if (v7)
  {
    goto LABEL_7;
  }

  return v8;
}

void sub_296F087DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16GetWakeReasonIPA8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F088DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4apps3abm15GetWakeReasonV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F089F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v4;
  v27[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v27);
  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Getting field test config", buf, 2u);
  }

  v22 = v3 + 264;
  v23 = QMIServiceMsg::create();
  v24 = 25000;
  v25 = 0;
  v26 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v14 = 1174405120;
  v15 = ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke;
  v16 = &__block_descriptor_tmp_102;
  v17 = v3;
  v18 = v2[1];
  v6 = v2[2];
  v19 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v2[3];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v20 = v7;
  v8 = v2[4];
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20GetFieldTestConfigV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DBD0;
  aBlock[4] = buf;
  v26 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v26)
  {
    _Block_release(v26);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v27);
  v9 = v2[4];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[3];
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = v2[2];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_296F08D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  std::unique_ptr<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F08D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v78 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_49:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v18);
    }

    return;
  }

  v76 = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v5, a2, "getting field test config", &v76);
  v75 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (!Mutable || (v75 = Mutable, v76))
  {
    if (!a1[7])
    {
      goto LABEL_44;
    }

LABEL_7:
    if (!a1[8])
    {
      goto LABEL_44;
    }

    v9 = v76;
    if (v76)
    {
      CFRetain(v76);
    }

    if (v8)
    {
      CFRetain(v8);
    }

    v10 = a1[7];
    if (v10)
    {
      v11 = _Block_copy(v10);
    }

    else
    {
      v11 = 0;
    }

    v17 = a1[8];
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 1174405120;
    *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    *&block[24] = &__block_descriptor_tmp_91_2;
    if (v11)
    {
      *&block[32] = _Block_copy(v11);
      *&v82 = v9;
      if (!v9)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *&block[32] = 0;
      *&v82 = v9;
      if (!v9)
      {
LABEL_30:
        *(&v82 + 1) = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        dispatch_async(v17, block);
        if (*(&v82 + 1))
        {
          CFRelease(*(&v82 + 1));
        }

        if (v82)
        {
          CFRelease(v82);
        }

        if (*&block[32])
        {
          _Block_release(*&block[32]);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        goto LABEL_44;
      }
    }

    CFRetain(v9);
    goto LABEL_30;
  }

  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2000000000;
  v74 = 1;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2000000000;
  v72 = 1;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2000000000;
  v70 = 1;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2000000000;
  v68 = 1;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2000000000;
  v66 = 1;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2000000000;
  v64 = 1;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2000000000;
  v62 = 1;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2000000000;
  v60 = 1;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2000000000;
  v58 = 1;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2000000000;
  v56 = 1;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v54 = 1;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2000000000;
  v52 = 1;
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 0x40000000;
  v36 = ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke_2;
  v37 = &unk_29EE5DBA8;
  v49 = v51;
  v50 = v5;
  v38 = v73;
  v39 = v71;
  v40 = v69;
  v41 = v67;
  v42 = v65;
  v43 = v63;
  v44 = v61;
  v45 = v59;
  v46 = v57;
  v47 = v55;
  v48 = v53;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  if (TlvValue)
  {
    *&block[8] = 0;
    *block = 0;
    bsp::tlv::abm::parseField(TlvValue, (TlvValue + v13), block);
    v79 = *block;
    v80 = *&block[8];
    v36(v35, &v79);
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 1174405120;
  v20 = ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke_99;
  v21 = &unk_2A1E167C0;
  v8 = v75;
  v22 = v73;
  cf = v75;
  if (v75)
  {
    CFRetain(v75);
  }

  v23 = v71;
  v24 = v69;
  v25 = v67;
  v26 = v65;
  v27 = v63;
  v28 = v61;
  v29 = v59;
  v30 = v57;
  v31 = v55;
  v32 = v53;
  v33 = v51;
  v14 = qmi::MessageBase::findTlvValue(a2);
  if (v14)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&block[4] = v16;
    *&block[20] = v16;
    HIWORD(v82) = -21846;
    *block = 0;
    *&block[4] = 0;
    *&block[20] = 0;
    *&block[24] = 0;
    *&block[28] = 0;
    *&block[8] = 0;
    *&block[16] = 0;
    *&block[32] = 0;
    *&v82 = 0;
    *(&v82 + 6) = 0;
    bsp::tlv::abm::parseField(v14, (v14 + v15), block);
    v20(v19, block);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);
  if (a1[7])
  {
    goto LABEL_7;
  }

LABEL_44:
  if (v75)
  {
    CFRelease(v75);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  v6 = v78;
  if (v78)
  {
    goto LABEL_49;
  }
}

void sub_296F093A0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 3, v2, v3);
  JUMPOUT(0x296F0919CLL);
}

void sub_296F093D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 4, v1, v3);
  JUMPOUT(0x296F09080);
}

void sub_296F0942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v72 + 128));
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose((v73 - 232), 8);
  _Block_object_dispose((v73 - 200), 8);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v73 - 168));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v73 - 160));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v73 - 152);
  _Unwind_Resume(a1);
}

void ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke_2(void *a1, unsigned __int8 *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v4 = a1[16];
  v5 = *a2;
  if (!*a2 || (*(*(a1[4] + 8) + 24) = 0, v6 = *(v4 + 40), !os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    v7 = a2[1];
    if (!a2[1])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v30 = &unk_296FD7A67;
  if (v5 == 1)
  {
    v30 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v30;
  _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "Failed to read RxDiversityCDMA %s", &v42, 0xCu);
  v7 = a2[1];
  if (a2[1])
  {
LABEL_4:
    *(*(a1[5] + 8) + 24) = 0;
    v8 = *(v4 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v31 = &unk_296FD7A67;
      if (v7 == 1)
      {
        v31 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v31;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "Failed to read RxDiversityWCDMA %s", &v42, 0xCu);
    }
  }

LABEL_5:
  v9 = a2[2];
  if (!a2[2] || (*(*(a1[6] + 8) + 24) = 0, v10 = *(v4 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    v11 = a2[3];
    if (!a2[3])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v32 = &unk_296FD7A67;
  if (v9 == 1)
  {
    v32 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v32;
  _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Failed to read RxDiversityLTE %s", &v42, 0xCu);
  v11 = a2[3];
  if (a2[3])
  {
LABEL_8:
    *(*(a1[7] + 8) + 24) = 0;
    v12 = *(v4 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v33 = &unk_296FD7A67;
      if (v11 == 1)
      {
        v33 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v33;
      _os_log_error_impl(&dword_296ECF000, v12, OS_LOG_TYPE_ERROR, "Failed to read ARTD %s", &v42, 0xCu);
    }
  }

LABEL_9:
  v13 = a2[4];
  if (!a2[4] || (*(*(a1[8] + 8) + 24) = 0, v14 = *(v4 + 40), !os_log_type_enabled(v14, OS_LOG_TYPE_ERROR)))
  {
    v15 = a2[5];
    if (!a2[5])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v34 = &unk_296FD7A67;
  if (v13 == 1)
  {
    v34 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v34;
  _os_log_error_impl(&dword_296ECF000, v14, OS_LOG_TYPE_ERROR, "Failed to read Tx Antenna %s", &v42, 0xCu);
  v15 = a2[5];
  if (a2[5])
  {
LABEL_12:
    *(*(a1[9] + 8) + 24) = 0;
    v16 = *(v4 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v35 = &unk_296FD7A67;
      if (v15 == 1)
      {
        v35 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v35;
      _os_log_error_impl(&dword_296ECF000, v16, OS_LOG_TYPE_ERROR, "Failed to read UARFCN Lock %s", &v42, 0xCu);
    }
  }

LABEL_13:
  v17 = a2[6];
  if (!a2[6] || (*(*(a1[10] + 8) + 24) = 0, v18 = *(v4 + 40), !os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
  {
    v19 = a2[7];
    if (!a2[7])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v36 = &unk_296FD7A67;
  if (v17 == 1)
  {
    v36 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v36;
  _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "Failed to read EARFCN Lock %s", &v42, 0xCu);
  v19 = a2[7];
  if (a2[7])
  {
LABEL_16:
    *(*(a1[11] + 8) + 24) = 0;
    v20 = *(v4 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v37 = &unk_296FD7A67;
      if (v19 == 1)
      {
        v37 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v37;
      _os_log_error_impl(&dword_296ECF000, v20, OS_LOG_TYPE_ERROR, "Failed to read PCI Lock %s", &v42, 0xCu);
    }
  }

LABEL_17:
  v21 = a2[8];
  if (!a2[8] || (*(*(a1[12] + 8) + 24) = 0, v22 = *(v4 + 40), !os_log_type_enabled(v22, OS_LOG_TYPE_ERROR)))
  {
    v23 = a2[9];
    if (!a2[9])
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v38 = &unk_296FD7A67;
  if (v21 == 1)
  {
    v38 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v38;
  _os_log_error_impl(&dword_296ECF000, v22, OS_LOG_TYPE_ERROR, "Failed to read Lock Count %s", &v42, 0xCu);
  v23 = a2[9];
  if (a2[9])
  {
LABEL_20:
    *(*(a1[13] + 8) + 24) = 0;
    v24 = *(v4 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v39 = &unk_296FD7A67;
      if (v23 == 1)
      {
        v39 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v39;
      _os_log_error_impl(&dword_296ECF000, v24, OS_LOG_TYPE_ERROR, "Failed to read 5G EARFCN Lock %s", &v42, 0xCu);
    }
  }

LABEL_21:
  v25 = a2[10];
  if (!a2[10] || (*(*(a1[14] + 8) + 24) = 0, v26 = *(v4 + 40), !os_log_type_enabled(v26, OS_LOG_TYPE_ERROR)))
  {
    v27 = a2[11];
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v40 = &unk_296FD7A67;
  if (v25 == 1)
  {
    v40 = "- Invalid";
  }

  v42 = 136315138;
  v43 = v40;
  _os_log_error_impl(&dword_296ECF000, v26, OS_LOG_TYPE_ERROR, "Failed to read 5G SCS Lock %s", &v42, 0xCu);
  v27 = a2[11];
  if (v27)
  {
LABEL_24:
    *(*(a1[15] + 8) + 24) = 0;
    v28 = *(v4 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v41 = &unk_296FD7A67;
      if (v27 == 1)
      {
        v41 = "- Invalid";
      }

      v42 = 136315138;
      v43 = v41;
      _os_log_error_impl(&dword_296ECF000, v28, OS_LOG_TYPE_ERROR, "Failed to read uSleep %s", &v42, 0xCu);
    }
  }

LABEL_25:
  v29 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZZN5radio19QMICommandDriverM2018getFieldTestConfigEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEENK3__0clEv_block_invoke_99(uint64_t result, unsigned __int16 *a2)
{
  v3 = result;
  v4 = MEMORY[0x29EDB8ED8];
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    result = ctu::cf::insert<__CFString const*,int>(*(result + 128), *MEMORY[0x29EDC8D60], *a2, *MEMORY[0x29EDB8ED8]);
    if (*(*(*(v3 + 40) + 8) + 24) != 1)
    {
LABEL_3:
      if (*(*(*(v3 + 48) + 8) + 24) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if (*(*(*(result + 40) + 8) + 24) != 1)
  {
    goto LABEL_3;
  }

  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8D90], a2[1], *v4);
  if (*(*(*(v3 + 48) + 8) + 24) != 1)
  {
LABEL_4:
    if (*(*(*(v3 + 56) + 8) + 24) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8D30], a2[2], *v4);
  if (*(*(*(v3 + 56) + 8) + 24) != 1)
  {
LABEL_5:
    if (*(*(*(v3 + 64) + 8) + 24) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *v4;
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8D70], *(a2 + 8), *v4);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8C98], *(a2 + 9), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B30], *(a2 + 10), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B28], *(a2 + 11), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8C78], *(a2 + 12), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8CB0], *(a2 + 13), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B38], *(a2 + 14), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B58], *(a2 + 15), v9);
  ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B50], *(a2 + 16), v9);
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8C70], *(a2 + 17), v9);
  if (*(*(*(v3 + 64) + 8) + 24) != 1)
  {
LABEL_6:
    if (*(*(*(v3 + 72) + 8) + 24) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8C90], a2[12], *v4);
  if (*(*(*(v3 + 72) + 8) + 24) != 1)
  {
LABEL_7:
    if (*(*(*(v3 + 80) + 8) + 24) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8CA8], a2[14], *v4);
  if (*(*(*(v3 + 80) + 8) + 24) != 1)
  {
LABEL_8:
    if (*(*(*(v3 + 88) + 8) + 24) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8CA0], *(a2 + 8), *v4);
  if (*(*(*(v3 + 88) + 8) + 24) != 1)
  {
LABEL_9:
    if (*(*(*(v3 + 96) + 8) + 24) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8B40], *(a2 + 9), *v4);
  if (*(*(*(v3 + 96) + 8) + 24) != 1)
  {
LABEL_10:
    if (*(*(*(v3 + 104) + 8) + 24) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8D18], *(a2 + 10), *v4);
  if (*(*(*(v3 + 104) + 8) + 24) != 1)
  {
LABEL_11:
    if (*(*(*(v3 + 112) + 8) + 24) != 1)
    {
      goto LABEL_12;
    }

LABEL_26:
    result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8C60], *(a2 + 12), *v4);
    if (*(*(*(v3 + 120) + 8) + 24) != 1)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  result = ctu::cf::insert<__CFString const*,int>(*(v3 + 128), *MEMORY[0x29EDC8CE0], *(a2 + 11), *v4);
  if (*(*(*(v3 + 112) + 8) + 24) == 1)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (*(*(*(v3 + 120) + 8) + 24) != 1)
  {
    return result;
  }

LABEL_13:
  v5 = a2[26];
  v6 = *v4;
  v7 = *(v3 + 128);
  v8 = *MEMORY[0x29EDC8D08];

  return ctu::cf::insert<__CFString const*,int>(v7, v8, v5, v6);
}

CFTypeRef __copy_helper_block_e8_128c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 128);
  *(a1 + 128) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_128c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20GetFieldTestConfigV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0A14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,int>(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v9 = v8;
  if (cf)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  CFRelease(v9);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_296F0A248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F0A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F0A2DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
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

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v97 = v2;
  v3 = *v2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v133 = v4;
  v134 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v133);
  v132[0] = 0xAAAAAAAAAAAAAAAALL;
  v132[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v132, v2[3]);
  v128[0] = MEMORY[0x29EDCA5F8];
  v128[1] = 1174405120;
  v129 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v130 = &__block_descriptor_tmp_106;
  ctu::cf::dict_adapter::dict_adapter(v131, v132);
  v5 = *(&v133 + 1);
  v6 = v134;
  v7 = *(&v133 + 1);
  v95 = a1;
  v96 = v3;
  if (*(&v133 + 1) != v134)
  {
    v7 = *(&v133 + 1);
    while (*(*v7 + 8) != 16)
    {
      if (++v7 == v134)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v134)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v11[8] = 16;
    *v11 = &unk_2A1E16998;
    *(v11 + 10) = 0;
    v10 = v11 + 10;
    *(v11 + 7) = 0;
    if (v6 >= *(&v134 + 1))
    {
      v13 = v6 - v5;
      v14 = (v6 - v5) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = *(&v134 + 1) - v5;
      if ((*(&v134 + 1) - v5) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v11;
        v19 = v11 + 10;
        v20 = operator new(8 * v17);
        v11 = v18;
      }

      else
      {
        v19 = v11 + 10;
        v20 = 0;
      }

      v21 = &v20[8 * v14];
      *v21 = v11;
      v12 = v21 + 8;
      memcpy(v20, v5, v13);
      *(&v133 + 1) = v20;
      *&v134 = v12;
      *(&v134 + 1) = &v20[8 * v17];
      if (v5)
      {
        operator delete(v5);
      }

      v10 = v19;
    }

    else
    {
      *v6 = v11;
      v12 = v6 + 8;
    }

    *&v134 = v12;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 10;
  }

  v129(v128, v10);
  v124[0] = MEMORY[0x29EDCA5F8];
  v124[1] = 1174405120;
  v125 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_107;
  v126 = &__block_descriptor_tmp_111;
  ctu::cf::dict_adapter::dict_adapter(v127, v132);
  v22 = *(&v133 + 1);
  v23 = v134;
  v24 = *(&v133 + 1);
  if (*(&v133 + 1) != v134)
  {
    v24 = *(&v133 + 1);
    while (*(*v24 + 8) != 17)
    {
      if (++v24 == v134)
      {
        goto LABEL_33;
      }
    }
  }

  if (v24 == v134)
  {
LABEL_33:
    v28 = operator new(0x20uLL);
    v28[8] = 17;
    *v28 = &unk_2A1E169E8;
    *(v28 + 12) = 0;
    v27 = v28 + 12;
    *(v28 + 6) = 0;
    *(v28 + 10) = 0;
    if (v23 >= *(&v134 + 1))
    {
      v30 = v23 - v22;
      v31 = (v23 - v22) >> 3;
      v32 = v31 + 1;
      if ((v31 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v33 = *(&v134 + 1) - v22;
      if ((*(&v134 + 1) - v22) >> 2 > v32)
      {
        v32 = v33 >> 2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (v34 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v35 = v28;
        v36 = v28 + 12;
        v37 = operator new(8 * v34);
        v28 = v35;
      }

      else
      {
        v36 = v28 + 12;
        v37 = 0;
      }

      v38 = &v37[8 * v31];
      *v38 = v28;
      v29 = v38 + 8;
      memcpy(v37, v22, v30);
      *(&v133 + 1) = v37;
      *&v134 = v29;
      *(&v134 + 1) = &v37[8 * v34];
      if (v22)
      {
        operator delete(v22);
      }

      v27 = v36;
    }

    else
    {
      *v23 = v28;
      v29 = v23 + 8;
    }

    *&v134 = v29;
  }

  else
  {
    v25 = ***v24;
    if (!v26)
    {
      __cxa_bad_cast();
    }

    v27 = v26 + 12;
  }

  v125(v124, v27);
  v120[0] = MEMORY[0x29EDCA5F8];
  v120[1] = 1174405120;
  v121 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_112;
  v122 = &__block_descriptor_tmp_116_0;
  ctu::cf::dict_adapter::dict_adapter(v123, v132);
  v39 = *(&v133 + 1);
  v40 = v134;
  v41 = *(&v133 + 1);
  if (*(&v133 + 1) != v134)
  {
    v41 = *(&v133 + 1);
    while (*(*v41 + 8) != 18)
    {
      if (++v41 == v134)
      {
        goto LABEL_57;
      }
    }
  }

  if (v41 == v134)
  {
LABEL_57:
    v45 = operator new(0x10uLL);
    v45[8] = 18;
    *v45 = &unk_2A1E16A38;
    *(v45 + 5) = 0;
    v44 = v45 + 10;
    if (v40 >= *(&v134 + 1))
    {
      v47 = v40 - v39;
      v48 = (v40 - v39) >> 3;
      v49 = v48 + 1;
      if ((v48 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v50 = *(&v134 + 1) - v39;
      if ((*(&v134 + 1) - v39) >> 2 > v49)
      {
        v49 = v50 >> 2;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFF8)
      {
        v51 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (v51 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v52 = v45;
        v53 = v45 + 10;
        v54 = operator new(8 * v51);
        v45 = v52;
      }

      else
      {
        v53 = v45 + 10;
        v54 = 0;
      }

      v55 = &v54[8 * v48];
      *v55 = v45;
      v46 = v55 + 8;
      memcpy(v54, v39, v47);
      *(&v133 + 1) = v54;
      *&v134 = v46;
      *(&v134 + 1) = &v54[8 * v51];
      if (v39)
      {
        operator delete(v39);
      }

      v44 = v53;
    }

    else
    {
      *v40 = v45;
      v46 = v40 + 8;
    }

    *&v134 = v46;
  }

  else
  {
    v42 = ***v41;
    if (!v43)
    {
      __cxa_bad_cast();
    }

    v44 = v43 + 10;
  }

  v121(v120, v44);
  v116[0] = MEMORY[0x29EDCA5F8];
  v116[1] = 1174405120;
  v117 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_117;
  v118 = &__block_descriptor_tmp_121;
  ctu::cf::dict_adapter::dict_adapter(v119, v132);
  v56 = *(&v133 + 1);
  v57 = v134;
  v58 = *(&v133 + 1);
  if (*(&v133 + 1) != v134)
  {
    v58 = *(&v133 + 1);
    while (*(*v58 + 8) != 19)
    {
      if (++v58 == v134)
      {
        goto LABEL_81;
      }
    }
  }

  if (v58 == v134)
  {
LABEL_81:
    v62 = operator new(0x28uLL);
    v62[8] = 19;
    *(v62 + 6) = 0;
    v61 = v62 + 12;
    *v62 = &unk_2A1E16A88;
    *(v62 + 2) = 0;
    *(v62 + 3) = 0;
    *(v62 + 8) = 0;
    if (v57 >= *(&v134 + 1))
    {
      v64 = v57 - v56;
      v65 = (v57 - v56) >> 3;
      v66 = v65 + 1;
      if ((v65 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v67 = *(&v134 + 1) - v56;
      if ((*(&v134 + 1) - v56) >> 2 > v66)
      {
        v66 = v67 >> 2;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        if (v68 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v69 = v62;
        v70 = v62 + 12;
        v71 = operator new(8 * v68);
        v62 = v69;
      }

      else
      {
        v70 = v62 + 12;
        v71 = 0;
      }

      v72 = &v71[8 * v65];
      *v72 = v62;
      v63 = v72 + 8;
      memcpy(v71, v56, v64);
      *(&v133 + 1) = v71;
      *&v134 = v63;
      *(&v134 + 1) = &v71[8 * v68];
      if (v56)
      {
        operator delete(v56);
      }

      v61 = v70;
    }

    else
    {
      *v57 = v62;
      v63 = v57 + 8;
    }

    *&v134 = v63;
  }

  else
  {
    v59 = ***v58;
    if (!v60)
    {
      __cxa_bad_cast();
    }

    v61 = v60 + 12;
  }

  v117(v116, v61);
  v112[0] = MEMORY[0x29EDCA5F8];
  v112[1] = 1174405120;
  v113 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_122;
  v114 = &__block_descriptor_tmp_126_0;
  ctu::cf::dict_adapter::dict_adapter(v115, v132);
  v73 = *(&v133 + 1);
  v74 = v134;
  v75 = *(&v133 + 1);
  if (*(&v133 + 1) != v134)
  {
    v75 = *(&v133 + 1);
    while (*(*v75 + 8) != 20)
    {
      if (++v75 == v134)
      {
        goto LABEL_105;
      }
    }
  }

  if (v75 == v134)
  {
LABEL_105:
    v79 = operator new(0x10uLL);
    v79[8] = 20;
    *v79 = &unk_2A1E16AD8;
    *(v79 + 5) = 0;
    v78 = v79 + 10;
    if (v74 >= *(&v134 + 1))
    {
      v81 = v74 - v73;
      v82 = (v74 - v73) >> 3;
      v83 = v82 + 1;
      if ((v82 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v84 = *(&v134 + 1) - v73;
      if ((*(&v134 + 1) - v73) >> 2 > v83)
      {
        v83 = v84 >> 2;
      }

      if (v84 >= 0x7FFFFFFFFFFFFFF8)
      {
        v85 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v85 = v83;
      }

      if (v85)
      {
        if (v85 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v86 = v79;
        v87 = v79 + 10;
        v88 = operator new(8 * v85);
        v79 = v86;
      }

      else
      {
        v87 = v79 + 10;
        v88 = 0;
      }

      v89 = &v88[8 * v82];
      *v89 = v79;
      v80 = v89 + 8;
      memcpy(v88, v73, v81);
      *(&v133 + 1) = v88;
      *&v134 = v80;
      *(&v134 + 1) = &v88[8 * v85];
      if (v73)
      {
        operator delete(v73);
      }

      v78 = v87;
    }

    else
    {
      *v74 = v79;
      v80 = v74 + 8;
    }

    *&v134 = v80;
  }

  else
  {
    v76 = ***v75;
    if (!v77)
    {
      __cxa_bad_cast();
    }

    v78 = v77 + 10;
  }

  v113(v112, v78);
  v90 = *(v96 + 40);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v90, OS_LOG_TYPE_DEFAULT, "#I Setting field test config", buf, 2u);
  }

  v107 = v96 + 264;
  v108 = QMIServiceMsg::create();
  v109 = 25000;
  v110 = 0;
  v111 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v99 = 1174405120;
  v100 = ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_127;
  v101 = &__block_descriptor_tmp_131;
  v102 = v96;
  v103 = v2[1];
  v91 = v2[2];
  v104 = v91;
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v92 = v2[4];
  if (v92)
  {
    v92 = _Block_copy(v92);
  }

  v105 = v92;
  v93 = v2[5];
  object = v93;
  if (v93)
  {
    dispatch_retain(v93);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20SetFieldTestConfigV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DBF8;
  aBlock[4] = buf;
  v111 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v111)
  {
    _Block_release(v111);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v105)
  {
    _Block_release(v105);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_weak(v104);
  }

  MEMORY[0x29C268420](v115);
  MEMORY[0x29C268420](v119);
  MEMORY[0x29C268420](v123);
  MEMORY[0x29C268420](v127);
  MEMORY[0x29C268420](v131);
  MEMORY[0x29C268420](v132);
  qmi::MutableMessageBase::~MutableMessageBase(&v133);
  std::unique_ptr<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&v97);
  v94 = v95[2];
  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  operator delete(v95);
}

void sub_296F0AFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v49 + 56);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  qmi::Client::SendProxy::~SendProxy(&a22);
  MEMORY[0x29C268420](v50 + 32);
  MEMORY[0x29C268420](&a37);
  MEMORY[0x29C268420](&a43);
  MEMORY[0x29C268420](&a49);
  MEMORY[0x29C268420](v51 - 208);
  MEMORY[0x29C268420](v51 - 192);
  qmi::MutableMessageBase::~MutableMessageBase((v51 - 176));
  std::unique_ptr<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke(uint64_t a1, _WORD *a2)
{
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D60]);
  a2[1] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D90]);
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D30]);
  a2[2] = result;
  return result;
}

uint64_t ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_107(uint64_t a1, _BYTE *a2)
{
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D70]);
  a2[1] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8C98]);
  a2[2] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B30]);
  a2[3] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B28]);
  a2[4] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8C78]);
  a2[5] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8CB0]);
  a2[6] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B38]);
  a2[7] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B58]);
  a2[8] = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B50]);
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8C70]);
  a2[9] = result;
  return result;
}

uint64_t ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_112(uint64_t a1, _WORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8C90]);
  *a2 = result;
  return result;
}

uint64_t ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_117(uint64_t a1, uint64_t a2)
{
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8CA8]);
  *(a2 + 4) = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8CA0]);
  *(a2 + 8) = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8B40]);
  *(a2 + 12) = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D18]);
  *(a2 + 16) = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8CE0]);
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8C60]);
  *(a2 + 20) = result;
  return result;
}

uint64_t ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_122(uint64_t a1, _WORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8D08]);
  *a2 = result;
  return result;
}

void ___ZZN5radio19QMICommandDriverM2018setFieldTestConfigEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_127(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v14 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_25:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(v5, a2, "setting field test config", &cf);
      v8 = a1[7];
      if (!v8 || !a1[8])
      {
LABEL_23:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_25;
      }

      v9 = cf;
      if (cf && (CFRetain(cf), (v8 = a1[7]) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = _Block_copy(v8);
      }

      v11 = a1[8];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_104;
      if (v10)
      {
        aBlock = _Block_copy(v10);
        v17 = v9;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        aBlock = 0;
        v17 = v9;
        if (!v9)
        {
LABEL_15:
          dispatch_async(v11, block);
          if (v17)
          {
            CFRelease(v17);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v10)
          {
            _Block_release(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          goto LABEL_23;
        }
      }

      CFRetain(v9);
      goto LABEL_15;
    }
  }
}

void sub_296F0B600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RxDiversityConfigV2>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *(v3 + 5) = *(result + 12);
  *(v3 + 7) = *(result + 14);
  *a2 = v3 + 9;
  *v3 = v2;
  *(v3 + 1) = 6;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RxDiversityConfigV2>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E16998;
  *(result + 10) = *(a1 + 10);
  *(result + 7) = *(a1 + 14);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigV2>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 4) = *(result + 13);
  *(v3 + 5) = *(result + 14);
  *(v3 + 6) = *(result + 15);
  *(v3 + 7) = *(result + 16);
  *(v3 + 8) = *(result + 17);
  *(v3 + 9) = *(result + 18);
  *(v3 + 10) = *(result + 19);
  *(v3 + 11) = *(result + 20);
  *(v3 + 12) = *(result + 21);
  *(v3 + 13) = *(result + 24);
  *a2 = v3 + 17;
  *v3 = v2;
  *(v3 + 1) = 14;
  return result;
}

__n128 qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARTDConfigV2>::clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E169E8;
  result = *(a1 + 12);
  *(v2 + 12) = result;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TxAntennaConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E16A38;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARFCNLockConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 5) = *(result + 16);
  *(v3 + 9) = *(result + 20);
  *(v3 + 13) = *(result + 24);
  *(v3 + 17) = *(result + 28);
  *(v3 + 21) = *(result + 32);
  *a2 = v3 + 25;
  *v3 = v2;
  *(v3 + 1) = 22;
  return result;
}

__n128 qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ARFCNLockConfig>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *v2 = &unk_2A1E16A88;
  result = *(a1 + 12);
  *(v2 + 12) = result;
  *(v2 + 28) = *(a1 + 28);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SleepConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SleepConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E16AD8;
  *(result + 5) = *(a1 + 10);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20SetFieldTestConfigV28ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0BA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v1 = a1;
  v65 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v4;
  v53 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v52);
  v51[0] = 0xAAAAAAAAAAAAAAAALL;
  v51[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v51, v2[1]);
  Int = ctu::cf::map_adapter::getInt(v51, *MEMORY[0x29EDC8D58]);
  v6 = ctu::cf::map_adapter::getInt(v51, *MEMORY[0x29EDC8B70]);
  v7 = v3[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = Int;
    LOWORD(v59) = 1024;
    *(&v59 + 2) = v6;
    _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Request RF Self Test: measure type = %d, test type = %d", buf, 0xEu);
  }

  if (Int < 0 || v6 < 0)
  {
    if (!v2[2] || !v2[3])
    {
      goto LABEL_84;
    }

    HIBYTE(v55) = 12;
    strcpy(&__p, "Invalid type");
    CreateError();
    v11 = v2[2];
    if (v11)
    {
      v12 = _Block_copy(v11);
    }

    else
    {
      v12 = 0;
    }

    v24 = v2[3];
    *buf = MEMORY[0x29EDCA5F8];
    v59 = 1174405120;
    v60 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke;
    v61 = &__block_descriptor_tmp_136;
    if (v12)
    {
      v25 = _Block_copy(v12);
      v26 = cf;
      aBlock = v25;
      v63 = cf;
      if (!cf)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v26 = cf;
      aBlock = 0;
      v63 = cf;
      if (!cf)
      {
LABEL_35:
        v64 = 0;
        dispatch_async(v24, buf);
        if (v64)
        {
          CFRelease(v64);
        }

        if (v63)
        {
          CFRelease(v63);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_84;
      }
    }

    CFRetain(v26);
    goto LABEL_35;
  }

  v8 = *(&v52 + 1);
  v9 = v53;
  v10 = *(&v52 + 1);
  v48 = v1;
  if (*(&v52 + 1) != v53)
  {
    v10 = *(&v52 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v53)
      {
        goto LABEL_18;
      }
    }
  }

  if (v10 == v53)
  {
LABEL_18:
    v16 = operator new(0x10uLL);
    v17 = v16;
    v16[4] = 1;
    *v16 = &unk_2A1E16B88;
    if (v9 >= *(&v53 + 1))
    {
      v18 = v9 - v8;
      v19 = v9 - v8;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v53 + 1) - v8;
      if ((*(&v53 + 1) - v8) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = operator new(8 * v22);
      }

      else
      {
        v23 = 0;
      }

      v27 = &v23[8 * v19];
      *v27 = v17;
      v9 = (v27 + 8);
      memcpy(v23, v8, v18);
      *(&v52 + 1) = v23;
      *&v53 = v9;
      *(&v53 + 1) = &v23[8 * v22];
      if (v8)
      {
        operator delete(v8);
        v8 = *(&v52 + 1);
      }

      else
      {
        v8 = v23;
      }
    }

    else
    {
      *v9++ = v16;
    }

    v1 = v48;
    *&v53 = v9;
    *(v17 + 9) = Int;
    v15 = v8;
    if (v8 == v9)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v13 = ***v10;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v14[9] = Int;
    v15 = v8;
    if (v8 == v9)
    {
      goto LABEL_56;
    }
  }

  v15 = v8;
  while (*(*v15 + 8) != 16)
  {
    if (++v15 == v9)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v15 == v9)
  {
LABEL_59:
    v31 = operator new(0x10uLL);
    v32 = v31;
    v31[4] = 16;
    *v31 = &unk_2A1E16BD8;
    if (v9 >= *(&v53 + 1))
    {
      v34 = v9 - v8;
      v35 = v9 - v8;
      v36 = v35 + 1;
      if ((v35 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v37 = *(&v53 + 1) - v8;
      if ((*(&v53 + 1) - v8) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (v38 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v39 = operator new(8 * v38);
      }

      else
      {
        v39 = 0;
      }

      v40 = &v39[8 * v35];
      *v40 = v32;
      v33 = v40 + 8;
      memcpy(v39, v8, v34);
      *(&v52 + 1) = v39;
      *&v53 = v33;
      *(&v53 + 1) = &v39[8 * v38];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v9 = v31;
      v33 = v9 + 1;
    }

    v1 = v48;
    v30 = v32 + 9;
    *&v53 = v33;
  }

  else
  {
    v28 = ***v15;
    if (!v29)
    {
      __cxa_bad_cast();
    }

    v30 = v29 + 9;
  }

  *v30 = v6;
  QMIServiceMsg::create();
  *buf = MEMORY[0x29EDCA5F8];
  v59 = 1174405120;
  v60 = ___ZZN5radio19QMICommandDriverM2017sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEEENK3__0clEv_block_invoke;
  v61 = &__block_descriptor_tmp_142;
  aBlock = v3;
  v41 = v2[2];
  if (v41)
  {
    v41 = _Block_copy(v41);
  }

  v63 = v41;
  v42 = v2[3];
  v64 = v42;
  if (v42)
  {
    dispatch_retain(v42);
  }

  *&__p = MEMORY[0x29EDCA5F8];
  *(&__p + 1) = 0x40000000;
  v55 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17TriggerRFSelfTest8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v56 = &unk_29EE5DC20;
  v57 = buf;
  v50 = _Block_copy(&__p);
  qmi::Client::send();
  if (v50)
  {
    _Block_release(v50);
  }

  if (v64)
  {
    dispatch_release(v64);
  }

  if (v63)
  {
    _Block_release(v63);
  }

LABEL_84:
  MEMORY[0x29C268420](v51);
  qmi::MutableMessageBase::~MutableMessageBase(&v52);
  v43 = v2[3];
  if (v43)
  {
    dispatch_release(v43);
  }

  v44 = v2[2];
  if (v44)
  {
    _Block_release(v44);
  }

  v45 = v2[1];
  if (v45)
  {
    CFRelease(v45);
  }

  operator delete(v2);
  v46 = v1[2];
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  operator delete(v1);
  v47 = *MEMORY[0x29EDCA608];
}

void sub_296F0C1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2017sendRFSelfTestReqEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEEENK3__0clEv_block_invoke(void *a1, const qmi::ResponseBase *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v4, a2, "triggering RF Self Test", &cf);
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v7 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 1);
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = qmi::MessageBase::findTlvValue(a2);
  v11 = v9;
  if (v9)
  {
    tlv::throwIfNotEnoughBytes(v9, v9 + v10, 2);
    v12 = *v11;
    memset(&__p, 0, sizeof(__p));
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    memset(&__p, 0, sizeof(__p));
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&block.__r_.__value_.__r.__words[1] = xmmword_296FBC2E0;
  strcpy(block.__r_.__value_.__l.__data_, "Failed to trigger RF Self Test: ");
  if (v8 > 7)
  {
    v13 = "RFSelfTestErrorCode::kSuccess";
  }

  else
  {
    v13 = off_29EE5DED8[v8 - 1];
  }

  v14 = strlen(v13);
  v15 = std::string::append(&block, v13, v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  v33[0] = v15->__r_.__value_.__l.__size_;
  *(v33 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v16;
  __p.__r_.__value_.__l.__size_ = v33[0];
  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v33 + 7);
  *(&__p.__r_.__value_.__s + 23) = v17;
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  v18 = *(v4 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
    *(block.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (cf)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_16:
  if (cf)
  {
    goto LABEL_17;
  }

LABEL_58:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_17;
    }

    std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_17;
    }

    v30 = __p;
  }

  CreateError();
  v29 = cf;
  cf = block.__r_.__value_.__r.__words[0];
  block.__r_.__value_.__r.__words[0] = 0;
  if (v29)
  {
    CFRelease(v29);
    if (block.__r_.__value_.__r.__words[0])
    {
      CFRelease(block.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_17:
  if (!a1[5] || !a1[6])
  {
    goto LABEL_49;
  }

  v33[0] = 0;
  v19 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = Mutable;
  if (Mutable)
  {
    v33[0] = Mutable;
  }

  ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8CC8], v12, v19);
  v22 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v21)
  {
    CFRetain(v21);
  }

  v23 = a1[5];
  if (v23)
  {
    v24 = _Block_copy(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = a1[6];
  block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  block.__r_.__value_.__l.__size_ = 1174405120;
  block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
  v35 = &__block_descriptor_tmp_91_2;
  if (v24)
  {
    aBlock = _Block_copy(v24);
    v37 = v22;
    if (!v22)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  aBlock = 0;
  v37 = v22;
  if (v22)
  {
LABEL_32:
    CFRetain(v22);
  }

LABEL_33:
  v38 = v21;
  if (v21)
  {
    CFRetain(v21);
  }

  dispatch_async(v25, &block);
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_49:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v26 = cf;
    if (!cf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v26 = cf;
  if (cf)
  {
LABEL_53:
    CFRelease(v26);
  }

LABEL_54:
  v27 = *MEMORY[0x29EDCA608];
}

void sub_296F0C7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a22);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a22);
  _Unwind_Resume(a1);
}

void sub_296F0C868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::MeasureType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::MeasureType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16B88;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TestType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::TestType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16BD8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17TriggerRFSelfTest8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0CA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(xpc::object,xpc::object)>::operator()<xpc::dict const&,xpc::object const&>(uint64_t *a1, void **a2, void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  (*(v4 + 16))(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_296F0CB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c17_ZTSN3xpc6objectE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c15_ZTSN3xpc4dictE48c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::block<void({block_pointer})(xpc::object,xpc::object)>::operator()<xpc::object const&,xpc::object const&>(uint64_t *a1, void **a2, void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  (*(v4 + 16))(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_296F0CD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v4;
  v23[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v23);
  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Request RF Self Test Nonce", buf, 2u);
  }

  v18 = v3 + 264;
  v19 = QMIServiceMsg::create();
  v20 = 25000;
  v21 = 0;
  v22 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v12 = 1174405120;
  v13 = ___ZZN5radio19QMICommandDriverM2018getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v14 = &__block_descriptor_tmp_156;
  v15 = v3;
  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v16 = v6;
  v7 = v2[2];
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18GetRFSelfTestNonce8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DC98;
  aBlock[4] = buf;
  v22 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v22)
  {
    _Block_release(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v23);
  v8 = v2[2];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = v2[1];
  if (v9)
  {
    _Block_release(v9);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_296F0D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v23 + 40);
  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  std::unique_ptr<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F0D0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio19QMICommandDriverM2018getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, const qmi::ResponseBase *a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v40 = 0;
  v41 = &v40;
  v42 = 0x4002000000;
  v43 = __Block_byref_object_copy__146;
  v44 = __Block_byref_object_dispose__147;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v4, a2, "getting RF Self Test Nonce", &cf);
  if (cf)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 0x40000000;
    v28 = ___ZZN5radio19QMICommandDriverM2018getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
    v29 = &unk_29EE5DC70;
    v30 = &v31;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v7 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 2);
      LOWORD(block.__r_.__value_.__l.__data_) = *v7;
      v28(v27, &block);
    }

    memset(__p, 170, sizeof(__p));
    ctu::hex(*(v32 + 12));
    v8 = std::string::insert(&block, 0, "Failed to get Nonce: BBSecurityStatus: 0x", 0x29uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    __p[2] = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }

    v10 = *(v4 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v25 = __p[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v25;
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = xpc_string_create(v11);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v13 = xpc_null_create();
    v14 = a1[5];
    if (v14)
    {
      v15 = _Block_copy(v14);
    }

    else
    {
      v15 = 0;
    }

    v22 = a1[6];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v49 = &__block_descriptor_tmp_145;
    if (v15)
    {
      v50 = _Block_copy(v15);
      v51 = v12;
      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v50 = 0;
      v51 = v12;
      if (v12)
      {
LABEL_23:
        xpc_retain(v12);
        v52 = v13;
        if (v13)
        {
LABEL_24:
          xpc_retain(v13);
LABEL_28:
          dispatch_async(v22, &block);
          xpc_release(v52);
          v52 = 0;
          xpc_release(v51);
          v51 = 0;
          if (v50)
          {
            _Block_release(v50);
          }

          if (v15)
          {
            _Block_release(v15);
          }

          xpc_release(v13);
          xpc_release(v12);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          _Block_object_dispose(&v31, 8);
          goto LABEL_49;
        }

LABEL_27:
        v52 = xpc_null_create();
        goto LABEL_28;
      }
    }

    v51 = xpc_null_create();
    v52 = v13;
    if (v13)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 0x40000000;
  v36 = ___ZZN5radio19QMICommandDriverM2018getRFSelfTestNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_149;
  v37 = &unk_29EE5DC48;
  v38 = &v40;
  v17 = qmi::MessageBase::findTlvValue(a2);
  if (v17)
  {
    memset(&block, 0, sizeof(block));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&block, v17, &v17[v16], v16);
    v36(v35, &block.__r_.__value_.__l.__data_);
    if (block.__r_.__value_.__r.__words[0])
    {
      block.__r_.__value_.__l.__size_ = block.__r_.__value_.__r.__words[0];
      operator delete(block.__r_.__value_.__l.__data_);
    }
  }

  v18 = xpc_null_create();
  v19 = xpc_data_create(v41[5], v41[6] - v41[5]);
  if (v19)
  {
    v20 = a1[5];
    if (v20)
    {
LABEL_19:
      v21 = _Block_copy(v20);
      goto LABEL_37;
    }
  }

  else
  {
    v19 = xpc_null_create();
    v20 = a1[5];
    if (v20)
    {
      goto LABEL_19;
    }
  }

  v21 = 0;
LABEL_37:
  v23 = a1[6];
  block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  block.__r_.__value_.__l.__size_ = 1174405120;
  block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES2_EEEvDpT__block_invoke;
  v49 = &__block_descriptor_tmp_144;
  if (v21)
  {
    v50 = _Block_copy(v21);
    v51 = v18;
    if (v18)
    {
      goto LABEL_39;
    }

LABEL_42:
    v51 = xpc_null_create();
    v52 = v19;
    if (v19)
    {
      goto LABEL_40;
    }

LABEL_43:
    v52 = xpc_null_create();
    goto LABEL_44;
  }

  v50 = 0;
  v51 = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_39:
  xpc_retain(v18);
  v52 = v19;
  if (!v19)
  {
    goto LABEL_43;
  }

LABEL_40:
  xpc_retain(v19);
LABEL_44:
  dispatch_async(v23, &block);
  xpc_release(v52);
  v52 = 0;
  xpc_release(v51);
  v51 = 0;
  if (v50)
  {
    _Block_release(v50);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(v19);
  xpc_release(v18);
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v40, 8);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_296F0D6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__146(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__147(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18GetRFSelfTestNonce8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0D968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v5 = __src;
  v7 = a1[2];
  result = *a1;
  if (v7 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v7;
    if (2 * v7 <= a4)
    {
      v10 = a4;
    }

    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = operator new(v11);
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v11];
    v12 = a3 - v5;
    if (a3 == v5)
    {
      v13 = result;
    }

    else
    {
      if (v12 < 0x20)
      {
        goto LABEL_31;
      }

      if ((result - v5) < 0x20)
      {
        goto LABEL_31;
      }

      v13 = &result[v12 & 0xFFFFFFFFFFFFFFE0];
      v26 = result + 16;
      v27 = (v5 + 16);
      v28 = v12 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 32;
      }

      while (v28);
      v5 += v12 & 0xFFFFFFFFFFFFFFE0;
      result += v12 & 0xFFFFFFFFFFFFFFE0;
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_31:
        v13 = result;
        do
        {
          v30 = *v5++;
          *v13++ = v30;
        }

        while (v5 != a3);
      }
    }

    a1[1] = v13;
    return result;
  }

  v14 = a1[1];
  v15 = v14 - result;
  if (v14 - result < a4)
  {
    v16 = &__src[v15];
    if (v14 != result)
    {
      result = memmove(result, __src, v15);
      v14 = a1[1];
    }

    v17 = v14;
    v18 = a3 - v16;
    if (a3 == v16)
    {
      goto LABEL_36;
    }

    v19 = v16;
    if (v18 < 0x20)
    {
      v17 = v14;
    }

    else
    {
      v17 = v14;
      if ((v14 - v16) >= 0x20)
      {
        v19 = &v16[v18 & 0xFFFFFFFFFFFFFFE0];
        v17 = &v14[v18 & 0xFFFFFFFFFFFFFFE0];
        v20 = v14 + 16;
        v21 = (v16 + 16);
        v22 = v18 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 32;
        }

        while (v22);
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_36;
        }
      }
    }

    do
    {
      v31 = *v19++;
      *v17++ = v31;
    }

    while (v19 != a3);
LABEL_36:
    a1[1] = v17;
    return result;
  }

  v24 = a3 - __src;
  if (v24)
  {
    v25 = result;
    memmove(result, __src, v24);
    result = v25;
  }

  a1[1] = &result[v24];
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v4;
  v69 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v68);
  v52 = v3;
  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Set RF Self Test Ticket", buf, 2u);
  }

  v67[0] = 0xAAAAAAAAAAAAAAAALL;
  v67[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v67, v2[1]);
  v6 = ctu::cf::map_adapter::copyCFArrayRef(v67, *MEMORY[0x29EDC8D28]);
  v7 = v6;
  v66 = v6;
  if (!v6)
  {
    if (!v2[2] || !v2[3])
    {
      goto LABEL_61;
    }

    aBlock = operator new(0x28uLL);
    v71 = xmmword_296FBC2E0;
    strcpy(aBlock, "Ticket for RF Self Test is empty");
    CreateError();
    v14 = v2[2];
    if (v14)
    {
      v15 = _Block_copy(v14);
    }

    else
    {
      v15 = 0;
    }

    v48 = v2[3];
    *buf = MEMORY[0x29EDCA5F8];
    v55 = 1174405120;
    v56 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    v57 = &__block_descriptor_tmp_104;
    if (v15)
    {
      v49 = _Block_copy(v15);
      v50 = cf;
      v58 = v49;
      v59 = cf;
      if (!cf)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v50 = cf;
      v58 = 0;
      v59 = cf;
      if (!cf)
      {
LABEL_77:
        dispatch_async(v48, buf);
        if (v59)
        {
          CFRelease(v59);
        }

        if (v58)
        {
          _Block_release(v58);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(aBlock);
        }

        goto LABEL_61;
      }
    }

    CFRetain(v50);
    goto LABEL_77;
  }

  v53 = v2;
  *buf = v6;
  CFRetain(v6);
  v9 = *(&v68 + 1);
  v8 = v69;
  v10 = *(&v68 + 1);
  v51 = v1;
  if (*(&v68 + 1) != v69)
  {
    v10 = *(&v68 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v69)
      {
        goto LABEL_16;
      }
    }
  }

  if (v10 == v69)
  {
LABEL_16:
    v16 = operator new(0x28uLL);
    v16[8] = 1;
    *v16 = &unk_2A1E16CE8;
    *(v16 + 2) = 0;
    v13 = v16 + 16;
    *(v16 + 3) = 0;
    *(v16 + 4) = 0;
    if (v8 >= *(&v69 + 1))
    {
      v18 = v8 - v9;
      v19 = (v8 - v9) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v69 + 1) - v9;
      if ((*(&v69 + 1) - v9) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = v16;
        v24 = operator new(8 * v22);
        v16 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[8 * v19];
      *v25 = v16;
      v17 = v25 + 8;
      memcpy(v24, v9, v18);
      *(&v68 + 1) = v24;
      *&v69 = v17;
      *(&v69 + 1) = &v24[8 * v22];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v8 = v16;
      v17 = v8 + 8;
    }

    *&v69 = v17;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 16;
  }

  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
      v30 = ValueAtIndex;
      LOBYTE(aBlock) = 0;
      if (ValueAtIndex)
      {
        v31 = CFGetTypeID(ValueAtIndex);
        if (v31 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&aBlock, v30, v32);
        }
      }

      v33 = aBlock;
      v35 = *(v13 + 1);
      v34 = *(v13 + 2);
      if (v35 < v34)
      {
        *v35 = aBlock;
        v28 = (v35 + 1);
      }

      else
      {
        v36 = *v13;
        v37 = &v35[-*v13];
        v38 = v37 + 1;
        if ((v37 + 1) < 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v39 = v34 - v36;
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          v41 = operator new(v40);
        }

        else
        {
          v41 = 0;
        }

        v41[v37] = v33;
        v28 = &v41[v37 + 1];
        memcpy(v41, v36, v37);
        *v13 = v41;
        *(v13 + 1) = v28;
        *(v13 + 2) = &v41[v40];
        if (v36)
        {
          operator delete(v36);
        }
      }

      *(v13 + 1) = v28;
    }
  }

  CFRelease(v7);
  cf = (v52 + 264);
  v62 = QMIServiceMsg::create();
  v63 = 25000;
  v64 = 0;
  v65 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v55 = 1174405120;
  v56 = ___ZZN5radio19QMICommandDriverM2019setRFSelfTestTicketEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v57 = &__block_descriptor_tmp_162_0;
  v58 = v52;
  v42 = v53[2];
  v1 = v51;
  if (v42)
  {
    v42 = _Block_copy(v42);
  }

  v59 = v42;
  v43 = v53[3];
  object = v43;
  if (v43)
  {
    dispatch_retain(v43);
  }

  aBlock = MEMORY[0x29EDCA5F8];
  *&v71 = 0x40000000;
  *(&v71 + 1) = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm19SetRFSelfTestTicket8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v72 = &unk_29EE5DCC0;
  v73 = buf;
  v65 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v65)
  {
    _Block_release(v65);
  }

  v2 = v53;
  if (object)
  {
    dispatch_release(object);
  }

  if (v59)
  {
    _Block_release(v59);
  }

  CFRelease(v7);
LABEL_61:
  MEMORY[0x29C268420](v67);
  qmi::MutableMessageBase::~MutableMessageBase(&v68);
  v44 = v2[3];
  if (v44)
  {
    dispatch_release(v44);
  }

  v45 = v2[2];
  if (v45)
  {
    _Block_release(v45);
  }

  v46 = v2[1];
  if (v46)
  {
    CFRelease(v46);
  }

  operator delete(v2);
  v47 = v1[2];
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  operator delete(v1);
}

void sub_296F0E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, char a29)
{
  if (*(v29 - 105) < 0)
  {
    operator delete(*(v29 - 128));
  }

  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a28);
  MEMORY[0x29C268420](&a29);
  qmi::MutableMessageBase::~MutableMessageBase((v29 - 160));
  std::unique_ptr<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a14);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(v2);
  }

  return a1;
}

const void **radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(bsp::tlv::abm::RFSelfTestTicket &)#1}::~RFSelfTestTicket(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2019setRFSelfTestTicketEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v3, a2, "setting RF Self Test Ticket", &cf);
  v4 = a1[5];
  if (!v4 || !a1[6])
  {
    goto LABEL_20;
  }

  v5 = cf;
  if (cf && (CFRetain(cf), (v4 = a1[5]) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = a1[6];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_104;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v11 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v11 = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, block);
  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RFSelfTestTicket>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E16CE8;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RFSelfTestTicket>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E16CE8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RFSelfTestTicket>::write(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = (*a2 + 3);
  *a2 = v6;
  result = memcpy(v6, *(a1 + 16), *(a1 + 24) - *(a1 + 16));
  v8 = *(a1 + 24) - *(a1 + 16);
  *a2 = &v6[v8];
  *v5 = v4;
  *(v5 + 1) = v8;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::RFSelfTestTicket>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E16CE8;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F0E6F8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm19SetRFSelfTestTicket8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0E7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
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

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v4;
  v27[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v27);
  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Request to get antenna tx port", buf, 2u);
  }

  v22 = v3 + 264;
  v23 = QMIServiceMsg::create();
  v24 = 25000;
  v25 = 0;
  v26 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v14 = 1174405120;
  v15 = ___ZZN5radio19QMICommandDriverM2016getAntennaTxPortEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEESA_ENK3__0clEv_block_invoke;
  v16 = &__block_descriptor_tmp_169;
  v17 = v3;
  v18 = v2[1];
  v6 = v2[2];
  v19 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v2[3];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v20 = v7;
  v8 = v2[4];
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16GetTxAntennaPort8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DD10;
  aBlock[4] = buf;
  v26 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v26)
  {
    _Block_release(v26);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v27);
  v9 = v2[4];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[3];
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = v2[2];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_296F0EAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  std::unique_ptr<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F0EB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2016getAntennaTxPortEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEESA_ENK3__0clEv_block_invoke(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v25 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_44:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v17);
    }

    return;
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0;
  radio::QMICommandDriverBase::checkError(v5, a2, "setting antenna tx port", &cf);
  if (cf)
  {
    v7 = 0;
    if (!a1[7])
    {
      goto LABEL_39;
    }

LABEL_12:
    if (!a1[8])
    {
      goto LABEL_39;
    }

    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v7)
    {
      CFRetain(v7);
    }

    v14 = a1[7];
    if (v14)
    {
      v15 = _Block_copy(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = a1[8];
    block = MEMORY[0x29EDCA5F8];
    p_block = 1174405120;
    v28 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    v29 = &__block_descriptor_tmp_91_2;
    if (v15)
    {
      aBlock = _Block_copy(v15);
      v31 = v13;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      aBlock = 0;
      v31 = v13;
      if (!v13)
      {
LABEL_25:
        v32 = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        dispatch_async(v16, &block);
        if (v32)
        {
          CFRelease(v32);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_39;
      }
    }

    CFRetain(v13);
    goto LABEL_25;
  }

  block = 0;
  p_block = &block;
  v28 = 0x2000000000;
  LOBYTE(v29) = -86;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 0x40000000;
  v19 = ___ZZN5radio19QMICommandDriverM2016getAntennaTxPortEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEESA_ENK3__0clEv_block_invoke_2;
  v20 = &unk_29EE5DCE8;
  v21 = &block;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v10 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 1);
    v33 = *v10;
    v19(v18, &v33);
  }

  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    v23 = Mutable;
  }

  ctu::cf::insert<__CFString const*,unsigned char>(Mutable, *MEMORY[0x29EDC8C90], *(p_block + 24), v11);
  _Block_object_dispose(&block, 8);
  if (a1[7])
  {
    goto LABEL_12;
  }

LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v6 = v25;
  if (v25)
  {
    goto LABEL_44;
  }
}

void sub_296F0EECC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F0ECC0);
}

void sub_296F0EF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  _Block_object_dispose(va3, 8);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void sub_296F0EF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16GetTxAntennaPort8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,unsigned char>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  CFRelease(v9);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_296F0F15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F0F180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v30[0] = v2;
  v3 = *v2;
  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v40, v2[3]);
  Int = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8C90]);
  v29 = a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v5;
  v39 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v38);
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 0x40000000;
  v6 = ___ZZN5radio19QMICommandDriverM2016setAntennaTxPortEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v35 = ___ZZN5radio19QMICommandDriverM2016setAntennaTxPortEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke;
  v36 = &__block_descriptor_tmp_172;
  v37 = Int;
  v7 = *(&v38 + 1);
  v8 = v39;
  v9 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    v9 = *(&v38 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v39)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 == v39)
  {
LABEL_9:
    v13 = operator new(0x10uLL);
    v14 = v13;
    v13[4] = 1;
    *v13 = &unk_2A1E16D98;
    if (v8 >= *(&v39 + 1))
    {
      v16 = v8 - v7;
      v17 = (v8 - v7) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v39 + 1) - v7;
      if ((*(&v39 + 1) - v7) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = operator new(8 * v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = &v21[8 * v17];
      *v22 = v14;
      v15 = v22 + 8;
      memcpy(v21, v7, v16);
      *(&v38 + 1) = v21;
      *&v39 = v15;
      *(&v39 + 1) = &v21[8 * v20];
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v8 = v13;
      v15 = v8 + 8;
    }

    v12 = v14 + 9;
    *&v39 = v15;
    v6 = v35;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 9;
  }

  v6(v34, v12);
  v23 = *(v3 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Int;
    _os_log_impl(&dword_296ECF000, v23, OS_LOG_TYPE_DEFAULT, "#I Request to set antenna tx port to %d", buf, 8u);
  }

  v30[1] = (v3 + 264);
  v30[2] = QMIServiceMsg::create();
  v31 = 25000;
  v32 = 0;
  v33 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v43 = 1174405120;
  v44 = ___ZZN5radio19QMICommandDriverM2016setAntennaTxPortEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_173;
  v45 = &__block_descriptor_tmp_176;
  v46 = v3;
  v47 = v2[1];
  v24 = v2[2];
  v48 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v2[4];
  if (v25)
  {
    v25 = _Block_copy(v25);
  }

  v49 = v25;
  v26 = v2[5];
  v50 = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16SetTxAntennaPort8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DD58;
  aBlock[4] = buf;
  v33 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v33)
  {
    _Block_release(v33);
  }

  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v38);
  MEMORY[0x29C268420](v40);
  std::unique_ptr<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](v30);
  v27 = v29[2];
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  operator delete(v29);
  v28 = *MEMORY[0x29EDCA608];
}

void sub_296F0F624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2016setAntennaTxPortEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEEENK3__0clEv_block_invoke_173(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v14 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_25:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(v5, a2, "setting antenna tx port", &cf);
      v8 = a1[7];
      if (!v8 || !a1[8])
      {
LABEL_23:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_25;
      }

      v9 = cf;
      if (cf && (CFRetain(cf), (v8 = a1[7]) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = _Block_copy(v8);
      }

      v11 = a1[8];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_104;
      if (v10)
      {
        aBlock = _Block_copy(v10);
        v17 = v9;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        aBlock = 0;
        v17 = v9;
        if (!v9)
        {
LABEL_15:
          dispatch_async(v11, block);
          if (v17)
          {
            CFRelease(v17);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v10)
          {
            _Block_release(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          goto LABEL_23;
        }
      }

      CFRetain(v9);
      goto LABEL_15;
    }
  }
}

void sub_296F0F90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Port>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Port>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16D98;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16SetTxAntennaPort8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F0FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = CFDictionaryContainsKey(*(*a1 + 8), *MEMORY[0x29EDC8B20]);
  v5 = v2[1];
  if (v4)
  {
    v24.__r_.__value_.__r.__words[0] = v2[1];
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      v7 = _Block_copy(v6);
      v8 = v2[3];
      *&block = v7;
      *(&block + 1) = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
      v8 = v2[3];
      *&block = 0;
      *(&block + 1) = v8;
      if (!v8)
      {
LABEL_7:
        radio::QMICommandDriverM20::setLegacyMCC_sync(v3, &v24, &block);
        if (v8)
        {
          dispatch_release(v8);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v5)
        {
LABEL_24:
          CFRelease(v5);
        }

LABEL_25:
        v12 = v2[3];
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    dispatch_retain(v8);
    goto LABEL_7;
  }

  if (CFDictionaryContainsKey(v2[1], *MEMORY[0x29EDC8C88]))
  {
    v5 = v2[1];
    v24.__r_.__value_.__r.__words[0] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    v9 = v2[2];
    if (v9)
    {
      v10 = _Block_copy(v9);
      v11 = v2[3];
      *&block = v10;
      *(&block + 1) = v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0;
      v11 = v2[3];
      *&block = 0;
      *(&block + 1) = v11;
      if (!v11)
      {
LABEL_19:
        radio::QMICommandDriverM20::setSTxMCC_sync(v3, &v24, &block);
        if (v11)
        {
          dispatch_release(v11);
        }

        if (v10)
        {
          _Block_release(v10);
        }

        if (v5)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    dispatch_retain(v11);
    goto LABEL_19;
  }

  v17 = operator new(0x28uLL);
  strcpy(v17, "Set MCC: Enable key is required!");
  v18 = v3[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v17;
    _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
  }

  std::string::__init_copy_ctor_external(&v24, v17, 0x20uLL);
  CreateError();
  v19 = v2[2];
  if (v19)
  {
    v20 = _Block_copy(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[3];
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v27 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v28 = &__block_descriptor_tmp_104;
  if (!v20)
  {
    v23 = cf;
    aBlock = 0;
    v30 = cf;
    if (!cf)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v22 = _Block_copy(v20);
  v23 = cf;
  aBlock = v22;
  v30 = cf;
  if (cf)
  {
LABEL_48:
    CFRetain(v23);
  }

LABEL_49:
  dispatch_async(v21, &block);
  if (v30)
  {
    CFRelease(v30);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    operator delete(v17);
    v12 = v2[3];
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_26:
    dispatch_release(v12);
    goto LABEL_27;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  operator delete(v17);
  v12 = v2[3];
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_27:
  v13 = v2[2];
  if (v13)
  {
    _Block_release(v13);
  }

  v14 = v2[1];
  if (v14)
  {
    CFRelease(v14);
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296F0FE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(v2);
  }

  return a1;
}

char *qmi::MutableMessageBase::createTLV<bsp::tlv::abm::Enable>(void *a1)
{
  v2 = operator new(0x10uLL);
  v3 = v2;
  v2[4] = 1;
  *v2 = &unk_2A1E16DE8;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(8 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    *v14 = v3;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Enable>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Enable>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16DE8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18SettingLegacyTxMCC8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F101F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SettingSTxMCC8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F10310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryInfoList>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E16E38;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryInfoList>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E16E38;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

unint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryInfoList>::getSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 5;
  }

  else
  {
    return 12 * ((v2 - v1 - 12) / 0xCuLL) + 17;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryInfoList>::write(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = (*a2 + 5);
  v5 = *a2;
  *(v5 + 3) = -21845 * ((*(result + 24) - *(result + 16)) >> 2);
  v6 = v5 + 3;
  v7 = *(result + 16);
  for (i = *(result + 24); v7 != i; v7 += 6)
  {
    *v4 = *v7;
    v4[1] = v7[1];
    v4[2] = v7[2];
    v4[3] = v7[3];
    v4[4] = v7[4];
    v4[5] = v7[5];
    v4 += 6;
  }

  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = v4 - v6;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::AccessoryInfoList>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E16E38;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 2) >= 0x1555555555555556)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v5);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F105B8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17SendAccessoryInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F106A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15GetRFFEScanData8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F107C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18GetResetProperties8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F108DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::IsCharging>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::IsCharging>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16E88;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ChargeLevelPercentage>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::ChargeLevelPercentage>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E16ED8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15SendBatteryInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F10B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>(radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v13 = v3 + 264;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_189;
  v10[4] = v3;
  v5 = v2[2];
  v10[5] = v2[1];
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v2[3], v2[4]);
  }

  else
  {
    v6 = *(v2 + 3);
    __p.__r_.__value_.__r.__words[2] = v2[5];
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20EnableResetSPMIEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DE90;
  aBlock[4] = v10;
  v7 = _Block_copy(aBlock);
  v17 = v7;
  if (v14)
  {
    qmi::Client::send();
    v7 = v17;
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v18);
  if (*(v2 + 47) < 0)
  {
    operator delete(v2[3]);
  }

  v8 = v2[2];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_296F10D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  qmi::Client::SendProxy::~SendProxy(&a25);
  qmi::MutableMessageBase::~MutableMessageBase((v25 - 112));
  std::unique_ptr<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0,std::default_delete<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_296F10DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0,std::default_delete<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0,std::default_delete<radio::QMICommandDriverM20::enableResetSPMIEvent(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke(uint64_t a1, const qmi::ResponseBase *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v18 = v6;
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        cf = 0xAAAAAAAAAAAAAAAALL;
        v8 = (a1 + 56);
        v9 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v9 = *v8;
        }

        radio::QMICommandDriverBase::checkError(v5, a2, v9, &cf);
        if (cf)
        {
          v10 = *(v5 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            if (*(a1 + 79) < 0)
            {
              v8 = *v8;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v8;
            _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Failed to %s", &buf, 0xCu);
          }
        }

        else
        {
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 1174405120;
          v14[2] = ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke_185;
          v14[3] = &__block_descriptor_tmp_188;
          v12 = *(a1 + 40);
          v11 = *(a1 + 48);
          v14[4] = v5;
          v14[5] = v12;
          v15 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          *&buf = MEMORY[0x29EDCA5F8];
          *(&buf + 1) = 0x40000000;
          v20 = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm14ResetSPMIEvent10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
          v21 = &unk_29EE5DEB8;
          v22 = v14;
          qmi::Client::setIndHandler();
          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_296F11058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, const void *a16, __int16 a17, char a18, char a19)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke_185(void *a1, qmi::MessageBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v16 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 0x40000000;
        v12 = ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke_2;
        v13 = &__block_descriptor_tmp_187;
        v14 = v5;
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 4);
          v17 = *v10;
          v12(v11, &v17);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F111DC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F1116CLL);
}

void sub_296F11208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZZN5radio19QMICommandDriverM2020enableResetSPMIEventEvENK3__0clEv_block_invoke_2(uint64_t a1, int *a2)
{
  v67 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Resetting SPMI with data (0x%x)", buf, 8u);
  }

  v5 = *(v2 + 80);
  v41 = v3;
  v39 = 0;
  v40 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v6;
  v54 = v6;
  v51 = v6;
  v52 = v6;
  v49 = v6;
  v50 = v6;
  v47 = v6;
  v48 = v6;
  *buf = v6;
  v46 = v6;
  v7 = *(v5 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v56[0] = 0;
  v56[1] = v7;
  pthread_mutex_lock(v7);
  v8 = *(v5 + 8);
  if (!v8)
  {
    v10 = *v5;
    goto LABEL_15;
  }

  explicit = atomic_load_explicit(v8 + 2, memory_order_acquire);
  v10 = *v5;
  if (explicit == 1)
  {
    v11 = *v10;
    v12 = *(v5 + 16);
    if (v12 == *v10)
    {
      v12 = *(v11 + 8);
      *&v42 = v12;
      if (v11 == v12)
      {
LABEL_12:
        *(v5 + 16) = v12;
        goto LABEL_13;
      }
    }

    else
    {
      *&v42 = *(v5 + 16);
    }

    v13 = v12[2];
    if (*(v13 + 24))
    {
      v12 = v12[1];
    }

    else
    {
      v12 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>>::erase(v11, (v13 + 64), &v42);
      v10 = *v5;
    }

    goto LABEL_12;
  }

LABEL_13:
  v8 = *(v5 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
  }

LABEL_15:
  v14 = v40;
  v39 = v10;
  v40 = v8;
  if (v14)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
      if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v14 + 24))(v14);
      }
    }
  }

  pthread_mutex_unlock(v56[1]);
  v15 = __p[1];
  if (__p[1])
  {
    if (v56[0] > 0)
    {
      v31 = __p[1] + 16 * v56[0];
      do
      {
        v32 = *(v31 - 1);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v15);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v16;
  v59 = v16;
  *v56 = v16;
  v57 = v16;
  v54 = v16;
  *__p = v16;
  v52 = v16;
  v53 = v16;
  v50 = v16;
  v51 = v16;
  v48 = v16;
  v49 = v16;
  v46 = v16;
  v47 = v16;
  *buf = v16;
  buf[0] = 0;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 10;
  v62 = &buf[8];
  v63 = 0;
  v65 = 0;
  v66 = 0;
  v64 = &v41;
  v17 = v39;
  v18 = *v39;
  v36 = buf;
  v37 = v5;
  v38 = v18;
  *&v34 = *(v18 + 8);
  *(&v34 + 1) = v18;
  *&v35 = buf;
  *(&v35 + 1) = v18;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>::lock_next_callable(&v34);
  v33[0] = *v17;
  v33[1] = v33[0];
  v33[2] = buf;
  v33[3] = v33[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>::lock_next_callable(v33);
  v42 = v34;
  v43 = v35;
  v19 = v33[0];
  v20 = v34;
  if (v34 == v33[0])
  {
    if (HIDWORD(v65) <= v65)
    {
      goto LABEL_43;
    }

LABEL_42:
    boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::force_cleanup_connections(v37, v38);
    goto LABEL_43;
  }

  v21 = v43;
  if ((*v43 & 1) == 0)
  {
    v22 = *(*(v34 + 16) + 32);
    v23 = *(v22 + 24);
    if (!v23)
    {
      std::runtime_error::runtime_error(&v44, "call to empty boost::function");
      v44.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v44);
    }

    (*((v23 & 0xFFFFFFFFFFFFFFFELL) + 8))(v22 + 32, **(v43 + 272));
    if ((*v21 & 1) == 0)
    {
      *v21 = 1;
    }
  }

  *&v42 = *(v20 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>::lock_next_callable(&v42);
  v24 = v43;
  if (*v43 == 1)
  {
    *v43 = 0;
  }

  for (i = v42; v42 != v19; i = v42)
  {
    v26 = *(*(i + 16) + 32);
    v27 = *(v26 + 24);
    if (!v27)
    {
      std::runtime_error::runtime_error(&v44, "call to empty boost::function");
      v44.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v44);
    }

    (*((v27 & 0xFFFFFFFFFFFFFFFELL) + 8))(v26 + 32, **(v24 + 272));
    if ((*v24 & 1) == 0)
    {
      *v24 = 1;
    }

    *&v42 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>::lock_next_callable(&v42);
    v24 = v43;
    if (*v43 == 1)
    {
      *v43 = 0;
    }
  }

  if (*(v36 + 71) > *(v36 + 70))
  {
    goto LABEL_42;
  }

LABEL_43:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>>::~slot_call_iterator_cache(buf);
  v29 = v40;
  if (v40)
  {
    if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v29 + 16))(v29);
      if (atomic_fetch_add(v29 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v29 + 24))(v29);
      }
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F11844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  std::runtime_error::~runtime_error(&a27);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296F118A8(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F11878);
}

void sub_296F118F0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F1191CLL);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_296F119BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm20EnableResetSPMIEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F11AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm14ResetSPMIEvent10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F11C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_296F12AE0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E17158;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E170E0;
  *(a1 + 8) = &unk_2A1E17110;
  *(a1 + 24) = &unk_2A1E17138;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E171B0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E17158;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E17188;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E171B0;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E170E0;
  *(v2 + 1) = &unk_2A1E17110;
  *(v2 + 3) = &unk_2A1E17138;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_296F12DDC(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E171B0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E171B0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E171B0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E171B0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E171B0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E17158;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E17188;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E171B0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E170E0;
  *(a1 + 8) = &unk_2A1E17110;
  *(a1 + 24) = &unk_2A1E17138;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_296F134BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_296F134DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_296F134F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,unsigned int>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296F13BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F13BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      if (*(a1 + v6) == *(a1 + v6) >> 31)
      {
        v10 = *(v8 + 16);
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
        }
      }

      else
      {
        *(v7 + 8) = (*(*v9 + 16))(v9);
      }

      *v7 = *v8 ^ (*v8 >> 31);
      v6 += 24;
    }

    while (v8 + 24 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_296F13E68(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = (v1 + 8);
    do
    {
      if (*(v3 - 2) == *(v3 - 2) >> 31)
      {
        v4 = v3[1];
        if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 16))(v4);
          if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 24))(v4);
          }
        }
      }

      else if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  __cxa_rethrow();
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_296F13FB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296F13FA8);
}

uint64_t boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void (),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E16FD0;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E16F70;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F146C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}