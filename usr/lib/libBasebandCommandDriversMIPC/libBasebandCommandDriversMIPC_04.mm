void sub_296E74818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v74);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a30);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a66);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a73);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a74);
  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFDictionary>::CFSharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v7 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
  {
    cf = v4;
    CFRetain(v4);
  }

  else
  {
    cf = 0;
  }

  (*(v3 + 16))(v3, &v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296E74C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296E74C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting RF calibration status", buf, 2u);
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[3] = v4;
  v29[4] = v4;
  v29[1] = v4;
  v29[2] = v4;
  v29[0] = v4;
  mipc::cust::Query_Cal_Missing_Req::Query_Cal_Missing_Req();
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v5;
  v41 = v5;
  v39 = v5;
  mipc::cust::Query_Cal_Missing_Req::serialize(&v39, v29);
  if (v42)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  *v31 = v6;
  *&v31[16] = v6;
  MEMORY[0x29C266720](v31, &v39);
  abb::router::SendProxy::SendProxy(buf, &v2[5].__on_zero_shared_weak, v31);
  MEMORY[0x29C266730](v31);
  if (v42 != -1)
  {
    *v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *&v31[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*&v31[8 * v42])(&v26, &v39);
  }

  v7 = abb::router::SendProxy::timeout();
  v26 = v2;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v9 = v2->~__shared_weak_count_0, (v10 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v27 = v9;
  *(&v27 + 1) = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v17);
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
LABEL_10:
      v12 = _Block_copy(shared_owners);
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
LABEL_11:
    dispatch_retain(shared_weak_owners);
  }

LABEL_12:
  v14 = v26;
  v15 = v27;
  v28 = 0u;
  v27 = 0u;
  *v31 = v26;
  *&v31[8] = v15;
  v39 = v26;
  *&v31[24] = v12;
  *&v32 = shared_weak_owners;
  *&v41 = 0;
  v40 = 0uLL;
  v16 = operator new(0x30uLL);
  *v16 = &unk_2A1E13078;
  v16[1] = v14;
  *(v16 + 1) = v15;
  v16[4] = v12;
  v16[5] = shared_weak_owners;
  v45 = v16;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v44, (v7 + 152));
  if (v45 == v44)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))(v45);
  }

  MEMORY[0x29C266750](buf);
  mipc::cust::Query_Cal_Missing_Req::~Query_Cal_Missing_Req(v29);
  if (__p)
  {
    v18 = __p->__shared_weak_owners_;
    if (v18)
    {
      dispatch_release(v18);
    }

    v19 = __p->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v20 = a1;
    }

    operator delete(v20);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_296E75144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void *radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}::~Query_Cal_Missing_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13078;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13078;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E13078;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(v2 + 4) = v4;
  *(v2 + 5) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E13078;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 40);
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v192 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v164 = v4;
  v165 = v4;
  v162 = v4;
  v163 = v4;
  *v161 = v4;
  *&v161[16] = v4;
  v160[0] = v4;
  v160[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&block, this);
    if ((block.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v176.__r_.__value_.__l.__data_ = *&block.__r_.__value_.__l.__data_;
    v6 = mipc::toErrorCode(LODWORD(block.__r_.__value_.__l.__data_), v5);
    std::error_code::message(&__p[1], &v176);
    __p[0] = v6;
    v179 = 0uLL;
    MEMORY[0x29C266E80](v160, __p, 1);
    v7 = *(&v179 + 1);
    if (*(&v179 + 1) && !atomic_fetch_add((*(&v179 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v178) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v178) < 0)
    {
LABEL_6:
      operator delete(__p[1]);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(__p, this);
    v8 = *__p[0];
    abb::router::Message::getRawMsg(&block, this);
    MEMORY[0x29C266E90](v160, v8, *(block.__r_.__value_.__r.__words[0] + 8) - *block.__r_.__value_.__l.__data_);
    size = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v10 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_278;
  }

  v158 = a1[1];
  v12 = std::__shared_weak_count::lock(v11);
  v190 = v12;
  if (!v12)
  {
    goto LABEL_278;
  }

  if (a1[2])
  {
    v187 = 0;
    v188 = 0;
    v186 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v185[7] = v13;
    v185[8] = v13;
    v185[5] = v13;
    v185[6] = v13;
    v185[3] = v13;
    v185[4] = v13;
    v185[1] = v13;
    v185[2] = v13;
    v184 = v13;
    v185[0] = v13;
    *v182 = v13;
    v183 = v13;
    v180 = v13;
    v181 = v13;
    v178 = v13;
    v179 = v13;
    *__p = v13;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
    v14 = mipc::operator==();
    v15 = MEMORY[0x29EDC9528];
    if (v14)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      if ((v161[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&block, *&v161[8], *&v161[16]);
      }

      else
      {
        block = *&v161[8];
      }

      v18 = std::string::insert(&block, 0, "Query cal missing confirmation error: ", 0x26uLL);
      v16 = v18->__r_.__value_.__r.__words[0];
      v19 = v18->__r_.__value_.__l.__size_;
      v20 = LODWORD(v18->__r_.__value_.__r.__words[2]) | ((WORD2(v18->__r_.__value_.__r.__words[2]) | (v18->__r_.__value_.__s.__data_[22] << 16)) << 32);
      v21 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
      v18->__r_.__value_.__r.__words[0] = 0;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
      }

      v17 = v20 | (v21 << 56);
      if (v21 < 0)
      {
        std::string::__init_copy_ctor_external(&v176, v16, v19);
      }

      else
      {
        v176.__r_.__value_.__r.__words[0] = v16;
        v176.__r_.__value_.__l.__size_ = v19;
        v176.__r_.__value_.__r.__words[2] = v20 | (v21 << 56);
      }

      CreateError();
      v22 = block.__r_.__value_.__r.__words[0];
      v188 = block.__r_.__value_.__r.__words[0];
      block.__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v176.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        goto LABEL_238;
      }
    }

    allocator = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v187 = Mutable;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&block);
    v24 = block.__r_.__value_.__l.__size_;
    block.__r_.__value_.__l.__size_ = __p[1];
    __p[1] = v24;
    v25 = (&block + *(block.__r_.__value_.__r.__words[0] - 24));
    v26 = (__p + *(__p[0] - 3));
    std::ios_base::swap(v25, v26);
    v27 = v25[1].__vftable;
    v25[1].__vftable = v26[1].__vftable;
    v26[1].__vftable = v27;
    LODWORD(v27) = v25[1].__fmtflags_;
    v25[1].__fmtflags_ = v26[1].__fmtflags_;
    v26[1].__fmtflags_ = v27;
    std::stringbuf::swap();
    block.__r_.__value_.__r.__words[0] = *v15;
    v157 = block.__r_.__value_.__r.__words[0];
    v28 = v15[9];
    v29 = v15[8];
    *(block.__r_.__value_.__r.__words + *(block.__r_.__value_.__r.__words[0] - 24)) = v29;
    v155 = v28;
    v156 = v29;
    block.__r_.__value_.__r.__words[2] = v28;
    v169 = (MEMORY[0x29EDC9570] + 16);
    if (v174 < 0)
    {
      operator delete(v173);
    }

    v169 = (MEMORY[0x29EDC9568] + 16);
    std::locale::~locale(&aBlock);
    std::iostream::~basic_iostream();
    MEMORY[0x29C267970](v175);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v178, &unk_296EC917B, 0);
    v31 = *v30;
    v32 = *v30;
    *(v30 + *(*v30 - 24) + 24) = 2;
    v33 = (v30 + *(v32 - 24));
    if (v33[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v33);
      v34 = std::locale::use_facet(&block, MEMORY[0x29EDC93D0]);
      v35 = (v34->__vftable[2].~facet_0)(v34, 32);
      std::locale::~locale(&block);
      v33[1].__fmtflags_ = v35;
      v31 = *v30;
    }

    v33[1].__fmtflags_ = 48;
    *(v30 + *(v31 - 24) + 8) = *(v30 + *(v31 - 24) + 8) & 0xFFFFFFB5 | 8;
    v36 = MEMORY[0x29C267790](v30, **(&v163 + 1));
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
    *(v37 + *(*v37 - 24) + 8) = *(v37 + *(*v37 - 24) + 8) & 0xFFFFFFB5 | 2;
    v151 = a1;
    if ((BYTE8(v184) & 0x10) != 0)
    {
      v40 = v184;
      if (v184 < *(&v181 + 1))
      {
        *&v184 = *(&v181 + 1);
        v40 = *(&v181 + 1);
      }

      v41 = v181;
      v38 = v40 - v181;
      if ((v40 - v181) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if ((BYTE8(v184) & 8) == 0)
      {
        v38 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        p_dst = &__dst;
        goto LABEL_50;
      }

      v41 = *(&v179 + 1);
      v38 = *(&v180 + 1) - *(&v179 + 1);
      if (*(&v180 + 1) - *(&v179 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_63:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v38 >= 0x17)
    {
      if ((v38 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v38 | 7) + 1;
      }

      p_dst = operator new(v42);
      __dst.__r_.__value_.__l.__size_ = v38;
      __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      a1 = v151;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v38;
      p_dst = &__dst;
      if (!v38)
      {
LABEL_50:
        p_dst->__r_.__value_.__s.__data_[v38] = 0;
        v43 = v187;
        v44 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&block, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          block = __dst;
        }

        ctu::cf::insert<__CFString const*,std::string>(v43, *MEMORY[0x29EDC8E60]);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if ((v44 & 0x80000000) == 0)
          {
LABEL_55:
            v45 = *(v158 + 40);
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_80;
            }

LABEL_59:
            if ((BYTE8(v184) & 0x10) != 0)
            {
              v48 = v184;
              if (v184 < *(&v181 + 1))
              {
                *&v184 = *(&v181 + 1);
                v48 = *(&v181 + 1);
              }

              v49 = v181;
              v46 = v48 - v181;
              if ((v48 - v181) > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_280;
              }
            }

            else
            {
              if ((BYTE8(v184) & 8) == 0)
              {
                v46 = 0;
                *(&block.__r_.__value_.__s + 23) = 0;
                p_block = &block;
LABEL_76:
                p_block[v46] = 0;
                v51 = &block;
                if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v51 = block.__r_.__value_.__r.__words[0];
                }

                LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                *(__dst.__r_.__value_.__r.__words + 4) = v51;
                _os_log_impl(&dword_296E3E000, v45, OS_LOG_TYPE_DEFAULT, "#I RF Calibration Type: %s", &__dst, 0xCu);
                if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(block.__r_.__value_.__l.__data_);
                }

LABEL_80:
                std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&block);
                v52 = block.__r_.__value_.__l.__size_;
                block.__r_.__value_.__l.__size_ = __p[1];
                __p[1] = v52;
                v53 = (&block + *(block.__r_.__value_.__r.__words[0] - 24));
                v54 = (__p + *(__p[0] - 3));
                std::ios_base::swap(v53, v54);
                v55 = v53[1].__vftable;
                v53[1].__vftable = v54[1].__vftable;
                v54[1].__vftable = v55;
                LODWORD(v55) = v53[1].__fmtflags_;
                v53[1].__fmtflags_ = v54[1].__fmtflags_;
                v54[1].__fmtflags_ = v55;
                std::stringbuf::swap();
                block.__r_.__value_.__r.__words[0] = v157;
                *(block.__r_.__value_.__r.__words + *(v157 - 24)) = v156;
                block.__r_.__value_.__r.__words[2] = v155;
                v169 = (MEMORY[0x29EDC9570] + 16);
                if (v174 < 0)
                {
                  operator delete(v173);
                }

                v169 = (MEMORY[0x29EDC9568] + 16);
                std::locale::~locale(&aBlock);
                std::iostream::~basic_iostream();
                MEMORY[0x29C267970](v175);
                v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v178, &unk_296EC917B, 0);
                v57 = *v56;
                v58 = *v56;
                *(v56 + *(*v56 - 24) + 24) = 2;
                v59 = (v56 + *(v58 - 24));
                if (v59[1].__fmtflags_ == -1)
                {
                  std::ios_base::getloc(v59);
                  v60 = std::locale::use_facet(&block, MEMORY[0x29EDC93D0]);
                  v61 = (v60->__vftable[2].~facet_0)(v60, 32);
                  std::locale::~locale(&block);
                  v59[1].__fmtflags_ = v61;
                  v57 = *v56;
                }

                v59[1].__fmtflags_ = 48;
                *(v56 + *(v57 - 24) + 8) = *(v56 + *(v57 - 24) + 8) & 0xFFFFFFB5 | 8;
                v62 = MEMORY[0x29C267790](v56, *v164);
                v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " ", 1);
                *(v63 + *(*v63 - 24) + 8) = *(v63 + *(*v63 - 24) + 8) & 0xFFFFFFB5 | 2;
                if ((BYTE8(v184) & 0x10) != 0)
                {
                  v66 = v184;
                  if (v184 < *(&v181 + 1))
                  {
                    *&v184 = *(&v181 + 1);
                    v66 = *(&v181 + 1);
                  }

                  v67 = v181;
                  v64 = v66 - v181;
                  if ((v66 - v181) > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  if ((BYTE8(v184) & 8) == 0)
                  {
                    v64 = 0;
                    *(&__dst.__r_.__value_.__s + 23) = 0;
                    v65 = &__dst;
                    goto LABEL_98;
                  }

                  v67 = *(&v179 + 1);
                  v64 = *(&v180 + 1) - *(&v179 + 1);
                  if (*(&v180 + 1) - *(&v179 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                  {
LABEL_111:
                    std::string::__throw_length_error[abi:ne200100]();
                  }
                }

                if (v64 >= 0x17)
                {
                  if ((v64 | 7) == 0x17)
                  {
                    v68 = 25;
                  }

                  else
                  {
                    v68 = (v64 | 7) + 1;
                  }

                  v65 = operator new(v68);
                  __dst.__r_.__value_.__l.__size_ = v64;
                  __dst.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
                  __dst.__r_.__value_.__r.__words[0] = v65;
                  a1 = v151;
                }

                else
                {
                  *(&__dst.__r_.__value_.__s + 23) = v64;
                  v65 = &__dst;
                  if (!v64)
                  {
LABEL_98:
                    v65->__r_.__value_.__s.__data_[v64] = 0;
                    v69 = v187;
                    v70 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&block, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      block = __dst;
                    }

                    ctu::cf::insert<__CFString const*,std::string>(v69, *MEMORY[0x29EDC8F78]);
                    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(block.__r_.__value_.__l.__data_);
                      if ((v70 & 0x80000000) == 0)
                      {
LABEL_103:
                        v71 = *(v158 + 40);
                        if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_128;
                        }

LABEL_107:
                        if ((BYTE8(v184) & 0x10) != 0)
                        {
                          v74 = v184;
                          if (v184 < *(&v181 + 1))
                          {
                            *&v184 = *(&v181 + 1);
                            v74 = *(&v181 + 1);
                          }

                          v75 = v181;
                          v72 = v74 - v181;
                          if ((v74 - v181) > 0x7FFFFFFFFFFFFFF7)
                          {
                            goto LABEL_282;
                          }
                        }

                        else
                        {
                          if ((BYTE8(v184) & 8) == 0)
                          {
                            v72 = 0;
                            *(&block.__r_.__value_.__s + 23) = 0;
                            v73 = &block;
LABEL_124:
                            v73[v72] = 0;
                            v77 = &block;
                            if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v77 = block.__r_.__value_.__r.__words[0];
                            }

                            LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                            *(__dst.__r_.__value_.__r.__words + 4) = v77;
                            _os_log_impl(&dword_296E3E000, v71, OS_LOG_TYPE_DEFAULT, "#I RF Calibration Status: %s", &__dst, 0xCu);
                            if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(block.__r_.__value_.__l.__data_);
                            }

LABEL_128:
                            if (*(&v164 + 1) != v165)
                            {
                              v167 = 0;
                              v149 = v16;
                              v150 = v17;
                              v78 = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
                              v79 = v78;
                              if (v78)
                              {
                                v167 = v78;
                              }

                              v80 = *(v158 + 40);
                              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(block.__r_.__value_.__l.__data_) = 0;
                                _os_log_impl(&dword_296E3E000, v80, OS_LOG_TYPE_DEFAULT, "#I Calibration Info TLV Array:", &block, 2u);
                              }

                              v81 = *(&v164 + 1);
                              v154 = v165;
                              if (*(&v164 + 1) != v165)
                              {
                                v82 = 0;
                                v153 = *MEMORY[0x29EDC8E48];
                                v152 = *MEMORY[0x29EDC8E58];
                                do
                                {
                                  *v166 = 0;
                                  v83 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                  if (v83)
                                  {
                                    *v166 = v83;
                                  }

                                  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&block);
                                  v84 = block.__r_.__value_.__l.__size_;
                                  block.__r_.__value_.__l.__size_ = __p[1];
                                  __p[1] = v84;
                                  v85 = (&block + *(block.__r_.__value_.__r.__words[0] - 24));
                                  v86 = (__p + *(__p[0] - 3));
                                  std::ios_base::swap(v85, v86);
                                  v87 = v85[1].__vftable;
                                  v85[1].__vftable = v86[1].__vftable;
                                  v86[1].__vftable = v87;
                                  LODWORD(v87) = v85[1].__fmtflags_;
                                  v85[1].__fmtflags_ = v86[1].__fmtflags_;
                                  v86[1].__fmtflags_ = v87;
                                  std::stringbuf::swap();
                                  block.__r_.__value_.__r.__words[0] = v157;
                                  *(block.__r_.__value_.__r.__words + *(v157 - 24)) = v156;
                                  block.__r_.__value_.__r.__words[2] = v155;
                                  v169 = (MEMORY[0x29EDC9570] + 16);
                                  if (v174 < 0)
                                  {
                                    operator delete(v173);
                                  }

                                  v169 = (MEMORY[0x29EDC9568] + 16);
                                  std::locale::~locale(&aBlock);
                                  std::iostream::~basic_iostream();
                                  MEMORY[0x29C267970](v175);
                                  v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v178, &unk_296EC917B, 0);
                                  v89 = *v88;
                                  v90 = *v88;
                                  *(v88 + *(*v88 - 24) + 24) = 2;
                                  v91 = (v88 + *(v90 - 24));
                                  if (v91[1].__fmtflags_ == -1)
                                  {
                                    std::ios_base::getloc(v91);
                                    v92 = std::locale::use_facet(&block, MEMORY[0x29EDC93D0]);
                                    v93 = (v92->__vftable[2].~facet_0)(v92, 32);
                                    std::locale::~locale(&block);
                                    v91[1].__fmtflags_ = v93;
                                    v89 = *v88;
                                  }

                                  v91[1].__fmtflags_ = 48;
                                  *(v88 + *(v89 - 24) + 8) = *(v88 + *(v89 - 24) + 8) & 0xFFFFFFB5 | 8;
                                  v94 = MEMORY[0x29C267790](v88, *v81);
                                  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, " ", 1);
                                  *(v95 + *(*v95 - 24) + 8) = *(v95 + *(*v95 - 24) + 8) & 0xFFFFFFB5 | 2;
                                  if ((BYTE8(v184) & 0x10) != 0)
                                  {
                                    v98 = v184;
                                    v99 = &v181;
                                    if (v184 < *(&v181 + 1))
                                    {
                                      *&v184 = *(&v181 + 1);
                                      v98 = *(&v181 + 1);
                                      v99 = &v181;
                                    }
                                  }

                                  else
                                  {
                                    if ((BYTE8(v184) & 8) == 0)
                                    {
                                      *(&__dst.__r_.__value_.__s + 23) = 0;
                                      __dst.__r_.__value_.__s.__data_[0] = 0;
                                      v96 = v166[0];
                                      v97 = 0;
LABEL_152:
                                      block = __dst;
                                      goto LABEL_159;
                                    }

                                    v98 = *(&v180 + 1);
                                    v99 = &v179 + 1;
                                  }

                                  v100 = *v99;
                                  v101 = v98 - *v99;
                                  if (v101 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v101 >= 0x17)
                                  {
                                    if ((v101 | 7) == 0x17)
                                    {
                                      v103 = 25;
                                    }

                                    else
                                    {
                                      v103 = (v101 | 7) + 1;
                                    }

                                    v102 = operator new(v103);
                                    __dst.__r_.__value_.__l.__size_ = v101;
                                    __dst.__r_.__value_.__r.__words[2] = v103 | 0x8000000000000000;
                                    __dst.__r_.__value_.__r.__words[0] = v102;
                                  }

                                  else
                                  {
                                    *(&__dst.__r_.__value_.__s + 23) = v98 - *v99;
                                    v102 = &__dst;
                                    if (!v101)
                                    {
                                      __dst.__r_.__value_.__s.__data_[0] = 0;
                                      v96 = v166[0];
                                      v97 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                                      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_152;
                                      }

                                      goto LABEL_158;
                                    }
                                  }

                                  memmove(v102, v100, v101);
                                  v102->__r_.__value_.__s.__data_[v101] = 0;
                                  v96 = v166[0];
                                  v97 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_152;
                                  }

LABEL_158:
                                  std::string::__init_copy_ctor_external(&block, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_159:
                                  ctu::cf::insert<__CFString const*,std::string>(v96, v153);
                                  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(block.__r_.__value_.__l.__data_);
                                    if (v97 < 0)
                                    {
LABEL_164:
                                      operator delete(__dst.__r_.__value_.__l.__data_);
                                      v104 = *(v158 + 40);
                                      if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_185;
                                      }

                                      goto LABEL_165;
                                    }
                                  }

                                  else if (v97 < 0)
                                  {
                                    goto LABEL_164;
                                  }

                                  v104 = *(v158 + 40);
                                  if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_185;
                                  }

LABEL_165:
                                  if ((BYTE8(v184) & 0x10) != 0)
                                  {
                                    v107 = v184;
                                    v108 = &v181;
                                    if (v184 < *(&v181 + 1))
                                    {
                                      *&v184 = *(&v181 + 1);
                                      v107 = *(&v181 + 1);
                                      v108 = &v181;
                                    }
                                  }

                                  else
                                  {
                                    if ((BYTE8(v184) & 8) == 0)
                                    {
                                      v105 = 0;
                                      *(&block.__r_.__value_.__s + 23) = 0;
                                      v106 = &block;
                                      goto LABEL_180;
                                    }

                                    v107 = *(&v180 + 1);
                                    v108 = &v179 + 1;
                                  }

                                  v109 = *v108;
                                  v105 = v107 - *v108;
                                  if (v105 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v105 >= 0x17)
                                  {
                                    if ((v105 | 7) == 0x17)
                                    {
                                      v110 = 25;
                                    }

                                    else
                                    {
                                      v110 = (v105 | 7) + 1;
                                    }

                                    v106 = operator new(v110);
                                    block.__r_.__value_.__l.__size_ = v105;
                                    block.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
                                    block.__r_.__value_.__r.__words[0] = v106;
LABEL_179:
                                    memmove(v106, v109, v105);
                                    goto LABEL_180;
                                  }

                                  *(&block.__r_.__value_.__s + 23) = v107 - *v108;
                                  v106 = &block;
                                  if (v105)
                                  {
                                    goto LABEL_179;
                                  }

LABEL_180:
                                  *(v106 + v105) = 0;
                                  if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v111 = &block;
                                  }

                                  else
                                  {
                                    v111 = block.__r_.__value_.__r.__words[0];
                                  }

                                  LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
                                  *(__dst.__r_.__value_.__r.__words + 4) = v82;
                                  WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
                                  *(&__dst.__r_.__value_.__r.__words[1] + 6) = v111;
                                  _os_log_impl(&dword_296E3E000, v104, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Rat: %s", &__dst, 0x16u);
                                  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(block.__r_.__value_.__l.__data_);
                                  }

LABEL_185:
                                  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&block);
                                  v112 = block.__r_.__value_.__l.__size_;
                                  block.__r_.__value_.__l.__size_ = __p[1];
                                  __p[1] = v112;
                                  v113 = (&block + *(block.__r_.__value_.__r.__words[0] - 24));
                                  v114 = (__p + *(__p[0] - 3));
                                  std::ios_base::swap(v113, v114);
                                  v115 = v113[1].__vftable;
                                  v113[1].__vftable = v114[1].__vftable;
                                  v114[1].__vftable = v115;
                                  LODWORD(v115) = v113[1].__fmtflags_;
                                  v113[1].__fmtflags_ = v114[1].__fmtflags_;
                                  v114[1].__fmtflags_ = v115;
                                  std::stringbuf::swap();
                                  block.__r_.__value_.__r.__words[0] = v157;
                                  *(block.__r_.__value_.__r.__words + *(v157 - 24)) = v156;
                                  block.__r_.__value_.__r.__words[2] = v155;
                                  v169 = (MEMORY[0x29EDC9570] + 16);
                                  if (v174 < 0)
                                  {
                                    operator delete(v173);
                                  }

                                  v169 = (MEMORY[0x29EDC9568] + 16);
                                  std::locale::~locale(&aBlock);
                                  std::iostream::~basic_iostream();
                                  MEMORY[0x29C267970](v175);
                                  v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v178, &unk_296EC917B, 0);
                                  v117 = *v116;
                                  v118 = *v116;
                                  *(v116 + *(*v116 - 24) + 24) = 2;
                                  v119 = (v116 + *(v118 - 24));
                                  if (v119[1].__fmtflags_ == -1)
                                  {
                                    std::ios_base::getloc(v119);
                                    v120 = std::locale::use_facet(&block, MEMORY[0x29EDC93D0]);
                                    v121 = (v120->__vftable[2].~facet_0)(v120, 32);
                                    std::locale::~locale(&block);
                                    v119[1].__fmtflags_ = v121;
                                    v117 = *v116;
                                  }

                                  v119[1].__fmtflags_ = 48;
                                  *(v116 + *(v117 - 24) + 8) = *(v116 + *(v117 - 24) + 8) & 0xFFFFFFB5 | 8;
                                  v122 = MEMORY[0x29C267790](v116, *(v81 + 1));
                                  v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, " ", 1);
                                  *(v123 + *(*v123 - 24) + 8) = *(v123 + *(*v123 - 24) + 8) & 0xFFFFFFB5 | 2;
                                  if ((BYTE8(v184) & 0x10) != 0)
                                  {
                                    v126 = v184;
                                    v127 = &v181;
                                    if (v184 < *(&v181 + 1))
                                    {
                                      *&v184 = *(&v181 + 1);
                                      v126 = *(&v181 + 1);
                                      v127 = &v181;
                                    }
                                  }

                                  else
                                  {
                                    if ((BYTE8(v184) & 8) == 0)
                                    {
                                      *(&__dst.__r_.__value_.__s + 23) = 0;
                                      __dst.__r_.__value_.__s.__data_[0] = 0;
                                      v124 = *v166;
                                      v125 = 0;
LABEL_199:
                                      block = __dst;
                                      goto LABEL_206;
                                    }

                                    v126 = *(&v180 + 1);
                                    v127 = &v179 + 1;
                                  }

                                  v128 = *v127;
                                  v129 = v126 - *v127;
                                  if (v129 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v129 >= 0x17)
                                  {
                                    if ((v129 | 7) == 0x17)
                                    {
                                      v131 = 25;
                                    }

                                    else
                                    {
                                      v131 = (v129 | 7) + 1;
                                    }

                                    v130 = operator new(v131);
                                    __dst.__r_.__value_.__l.__size_ = v129;
                                    __dst.__r_.__value_.__r.__words[2] = v131 | 0x8000000000000000;
                                    __dst.__r_.__value_.__r.__words[0] = v130;
                                  }

                                  else
                                  {
                                    *(&__dst.__r_.__value_.__s + 23) = v126 - *v127;
                                    v130 = &__dst;
                                    if (!v129)
                                    {
                                      __dst.__r_.__value_.__s.__data_[0] = 0;
                                      v124 = *v166;
                                      v125 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                                      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_199;
                                      }

                                      goto LABEL_205;
                                    }
                                  }

                                  memmove(v130, v128, v129);
                                  v130->__r_.__value_.__s.__data_[v129] = 0;
                                  v124 = *v166;
                                  v125 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_199;
                                  }

LABEL_205:
                                  std::string::__init_copy_ctor_external(&block, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_206:
                                  ctu::cf::insert<__CFString const*,std::string>(v124, v152);
                                  v15 = MEMORY[0x29EDC9528];
                                  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(block.__r_.__value_.__l.__data_);
                                    if ((v125 & 0x80000000) == 0)
                                    {
LABEL_208:
                                      v132 = *(v158 + 40);
                                      if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_214;
                                      }

                                      goto LABEL_209;
                                    }
                                  }

                                  else if ((v125 & 0x80000000) == 0)
                                  {
                                    goto LABEL_208;
                                  }

                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                  v132 = *(v158 + 40);
                                  if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_214:
                                    v79 = v167;
                                    block.__r_.__value_.__r.__words[0] = v124;
                                    if (!v124)
                                    {
                                      goto LABEL_135;
                                    }

                                    goto LABEL_235;
                                  }

LABEL_209:
                                  if ((BYTE8(v184) & 0x10) != 0)
                                  {
                                    v135 = v184;
                                    v136 = &v181;
                                    if (v184 < *(&v181 + 1))
                                    {
                                      *&v184 = *(&v181 + 1);
                                      v135 = *(&v181 + 1);
                                      v136 = &v181;
                                    }
                                  }

                                  else
                                  {
                                    if ((BYTE8(v184) & 8) == 0)
                                    {
                                      v133 = 0;
                                      *(&block.__r_.__value_.__s + 23) = 0;
                                      v134 = &block;
                                      goto LABEL_229;
                                    }

                                    v135 = *(&v180 + 1);
                                    v136 = &v179 + 1;
                                  }

                                  v137 = *v136;
                                  v133 = v135 - *v136;
                                  if (v133 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  if (v133 >= 0x17)
                                  {
                                    if ((v133 | 7) == 0x17)
                                    {
                                      v138 = 25;
                                    }

                                    else
                                    {
                                      v138 = (v133 | 7) + 1;
                                    }

                                    v134 = operator new(v138);
                                    block.__r_.__value_.__l.__size_ = v133;
                                    block.__r_.__value_.__r.__words[2] = v138 | 0x8000000000000000;
                                    block.__r_.__value_.__r.__words[0] = v134;
                                  }

                                  else
                                  {
                                    *(&block.__r_.__value_.__s + 23) = v135 - *v136;
                                    v134 = &block;
                                    if (!v133)
                                    {
                                      goto LABEL_228;
                                    }
                                  }

                                  memmove(v134, v137, v133);
LABEL_228:
                                  v15 = MEMORY[0x29EDC9528];
LABEL_229:
                                  *(v134 + v133) = 0;
                                  if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v139 = &block;
                                  }

                                  else
                                  {
                                    v139 = block.__r_.__value_.__r.__words[0];
                                  }

                                  LODWORD(__dst.__r_.__value_.__l.__data_) = 134218242;
                                  *(__dst.__r_.__value_.__r.__words + 4) = v82;
                                  WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
                                  *(&__dst.__r_.__value_.__r.__words[1] + 6) = v139;
                                  _os_log_impl(&dword_296E3E000, v132, OS_LOG_TYPE_DEFAULT, "#I \t[%td]: Band: %s", &__dst, 0x16u);
                                  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(block.__r_.__value_.__l.__data_);
                                  }

                                  v124 = *v166;
                                  v79 = v167;
                                  block.__r_.__value_.__r.__words[0] = *v166;
                                  if (!*v166)
                                  {
                                    goto LABEL_135;
                                  }

LABEL_235:
                                  CFRetain(v124);
                                  CFArrayAppendValue(v79, v124);
                                  CFRelease(v124);
                                  CFRelease(v124);
LABEL_135:
                                  ++v82;
                                  v81 += 4;
                                }

                                while (v81 != v154);
                              }

                              ctu::cf::insert<__CFString const*,__CFArray *>(v187, *MEMORY[0x29EDC8F30], v79);
                              v16 = v149;
                              v17 = v150;
                              a1 = v151;
                              if (v79)
                              {
                                CFRelease(v79);
                              }
                            }

LABEL_238:
                            if (!a1[4] || !a1[5])
                            {
                              goto LABEL_266;
                            }

                            v140 = v188;
                            if (v188)
                            {
                              CFRetain(v188);
                            }

                            v141 = v187;
                            if (v187)
                            {
                              CFRetain(v187);
                            }

                            v142 = a1[4];
                            if (v142)
                            {
                              v143 = _Block_copy(v142);
                            }

                            else
                            {
                              v143 = 0;
                            }

                            v144 = a1[5];
                            block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
                            block.__r_.__value_.__l.__size_ = 1174405120;
                            block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
                            v169 = &__block_descriptor_tmp_148;
                            if (v143)
                            {
                              aBlock = _Block_copy(v143);
                              v171 = v140;
                              if (!v140)
                              {
                                goto LABEL_252;
                              }
                            }

                            else
                            {
                              aBlock = 0;
                              v171 = v140;
                              if (!v140)
                              {
LABEL_252:
                                cf = v141;
                                if (v141)
                                {
                                  CFRetain(v141);
                                }

                                dispatch_async(v144, &block);
                                if (cf)
                                {
                                  CFRelease(cf);
                                }

                                if (v171)
                                {
                                  CFRelease(v171);
                                }

                                if (aBlock)
                                {
                                  _Block_release(aBlock);
                                }

                                if (v143)
                                {
                                  _Block_release(v143);
                                }

                                if (v141)
                                {
                                  CFRelease(v141);
                                }

                                if (v140)
                                {
                                  CFRelease(v140);
                                }

LABEL_266:
                                __p[0] = *v15;
                                v145 = v15[9];
                                *(__p + *(__p[0] - 3)) = v15[8];
                                *&v178 = v145;
                                *(&v178 + 1) = MEMORY[0x29EDC9570] + 16;
                                if (SHIBYTE(v183) < 0)
                                {
                                  operator delete(v182[1]);
                                }

                                *(&v178 + 1) = MEMORY[0x29EDC9568] + 16;
                                std::locale::~locale(&v179);
                                std::iostream::~basic_iostream();
                                MEMORY[0x29C267970](v185);
                                if (v187)
                                {
                                  CFRelease(v187);
                                }

                                if ((v17 & 0x8000000000000000) != 0)
                                {
                                  operator delete(v16);
                                  v146 = v188;
                                  if (!v188)
                                  {
                                    goto LABEL_275;
                                  }
                                }

                                else
                                {
                                  v146 = v188;
                                  if (!v188)
                                  {
LABEL_275:
                                    v12 = v190;
                                    if (!v190)
                                    {
                                      goto LABEL_278;
                                    }

                                    goto LABEL_276;
                                  }
                                }

                                CFRelease(v146);
                                goto LABEL_275;
                              }
                            }

                            CFRetain(v140);
                            goto LABEL_252;
                          }

                          v75 = *(&v179 + 1);
                          v72 = *(&v180 + 1) - *(&v179 + 1);
                          if (*(&v180 + 1) - *(&v179 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                          {
LABEL_282:
                            std::string::__throw_length_error[abi:ne200100]();
                          }
                        }

                        if (v72 >= 0x17)
                        {
                          if ((v72 | 7) == 0x17)
                          {
                            v76 = 25;
                          }

                          else
                          {
                            v76 = (v72 | 7) + 1;
                          }

                          v73 = operator new(v76);
                          block.__r_.__value_.__l.__size_ = v72;
                          block.__r_.__value_.__r.__words[2] = v76 | 0x8000000000000000;
                          block.__r_.__value_.__r.__words[0] = v73;
                          v15 = MEMORY[0x29EDC9528];
                        }

                        else
                        {
                          *(&block.__r_.__value_.__s + 23) = v72;
                          v73 = &block;
                          if (!v72)
                          {
                            goto LABEL_123;
                          }
                        }

                        memmove(v73, v75, v72);
LABEL_123:
                        a1 = v151;
                        goto LABEL_124;
                      }
                    }

                    else if ((v70 & 0x80000000) == 0)
                    {
                      goto LABEL_103;
                    }

                    operator delete(__dst.__r_.__value_.__l.__data_);
                    v71 = *(v158 + 40);
                    if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_128;
                    }

                    goto LABEL_107;
                  }
                }

                memmove(v65, v67, v64);
                goto LABEL_98;
              }

              v49 = *(&v179 + 1);
              v46 = *(&v180 + 1) - *(&v179 + 1);
              if (*(&v180 + 1) - *(&v179 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
              {
LABEL_280:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v46 >= 0x17)
            {
              if ((v46 | 7) == 0x17)
              {
                v50 = 25;
              }

              else
              {
                v50 = (v46 | 7) + 1;
              }

              p_block = operator new(v50);
              block.__r_.__value_.__l.__size_ = v46;
              block.__r_.__value_.__r.__words[2] = v50 | 0x8000000000000000;
              block.__r_.__value_.__r.__words[0] = p_block;
              v15 = MEMORY[0x29EDC9528];
            }

            else
            {
              *(&block.__r_.__value_.__s + 23) = v46;
              p_block = &block;
              if (!v46)
              {
                goto LABEL_75;
              }
            }

            memmove(p_block, v49, v46);
LABEL_75:
            a1 = v151;
            goto LABEL_76;
          }
        }

        else if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        v45 = *(v158 + 40);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        goto LABEL_59;
      }
    }

    memmove(p_dst, v41, v38);
    goto LABEL_50;
  }

LABEL_276:
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v147 = v12;
    (v12->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v147);
  }

LABEL_278:
  mipc::cust::Query_Cal_Missing_Cnf::~Query_Cal_Missing_Cnf(v160);
  v148 = *MEMORY[0x29EDCA608];
}

void sub_296E772D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x260]);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v29 - 160));
  if (v28 < 0)
  {
    operator delete(v27);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v29 - 152));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v29 - 144);
  mipc::cust::Query_Cal_Missing_Cnf::~Query_Cal_Missing_Cnf(&a27);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1}>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::cust::Query_Cal_Missing_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc4cust21Query_Cal_Missing_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc4cust21Query_Cal_Missing_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc4cust21Query_Cal_Missing_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc4cust21Query_Cal_Missing_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ctu::cf::insert<__CFString const*,__CFArray *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296E776A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296E776C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(unint64_t **a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[3] = v4;
  v25[4] = v4;
  v25[1] = v4;
  v25[2] = v4;
  v25[0] = v4;
  mipc::sys::Get_Pewake_Reason_Req::Get_Pewake_Reason_Req();
  if (v2[3] && v2[4])
  {
    v5 = *(v3 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband wake reason", buf, 2u);
    }

    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v6;
    v38 = v6;
    v36 = v6;
    mipc::sys::Get_Pewake_Reason_Req::serialize(&v36, v25);
    if (v39)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Serialization error");
      exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
      __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
    }

    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v7;
    v34 = v7;
    v31 = v7;
    v32 = v7;
    v29 = v7;
    v30 = v7;
    v27 = v7;
    v28 = v7;
    MEMORY[0x29C266720](&v27, &v36);
    abb::router::SendProxy::SendProxy(buf, (v3 + 232), &v27);
    MEMORY[0x29C266730](&v27);
    if (v39 != -1)
    {
      *&v27 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
      *(&v27 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
      (*(&v27 + v39))(&v22, &v36);
    }

    v8 = abb::router::SendProxy::timeout();
    v9 = v2[1];
    v10 = v2[2];
    v22 = v3;
    *&v23 = v9;
    *(&v23 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    }

    v11 = v2[3];
    if (v11)
    {
      v12 = _Block_copy(v11);
      v13 = v2[4];
      if (!v13)
      {
LABEL_13:
        v23 = 0u;
        v24 = 0u;
        *&v27 = v3;
        *(&v27 + 1) = v9;
        v36 = v3;
        *&v28 = v10;
        *(&v28 + 1) = v12;
        *&v29 = v13;
        *&v38 = 0;
        v37 = 0uLL;
        v14 = operator new(0x30uLL);
        *v14 = &unk_2A1E130F8;
        v14[1] = v3;
        v14[2] = v9;
        v14[3] = v10;
        v14[4] = v12;
        v14[5] = v13;
        v42 = v14;
        std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v41, (v8 + 152));
        if (v42 == v41)
        {
          (*(*v42 + 32))(v42);
        }

        else if (v42)
        {
          (*(*v42 + 40))(v42);
        }

        MEMORY[0x29C266750](buf);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
      v13 = v2[4];
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    dispatch_retain(v13);
    goto LABEL_13;
  }

  v15 = *(v3 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296E3E000, v15, OS_LOG_TYPE_ERROR, "Not getting baseband wake reason because callback is NULL", buf, 2u);
  }

LABEL_22:
  mipc::sys::Get_Pewake_Reason_Req::~Get_Pewake_Reason_Req(v25);
  v16 = v2[4];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = v2[3];
  if (v17)
  {
    _Block_release(v17);
  }

  v18 = v2[2];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296E77AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a47);
  mipc::sys::Get_Pewake_Reason_Req::~Get_Pewake_Reason_Req(&a17);
  std::unique_ptr<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
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

void *radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::~Get_Pewake_Reason_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E130F8;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E130F8;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E130F8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(v2 + 4) = v4;
  *(v2 + 5) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E130F8;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 40);
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v91 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v4;
  v77 = v4;
  v74 = v4;
  v75 = v4;
  v72 = v4;
  v73 = v4;
  v70 = v4;
  v71 = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v84.__val_, this);
    if ((v85 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    __dst = v84;
    v6 = mipc::toErrorCode(v84.__val_, v5);
    std::error_code::message(&__p, &__dst);
    aBlock = 0;
    *&v89[0] = 0;
    block = v6;
    MEMORY[0x29C266C90](&v70, &block, 1);
    v7 = *&v89[0];
    if (*&v89[0] && !atomic_fetch_add((*&v89[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&block, this);
    v8 = *block;
    abb::router::Message::getRawMsg(&v84.__val_, this);
    MEMORY[0x29C266CA0](&v70, v8, *(*&v84.__val_ + 8) - **&v84.__val_);
    cat = v84.__cat_;
    if (v84.__cat_ && !atomic_fetch_add(&v84.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0] && !atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_148;
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  v81 = v13;
  if (!v13)
  {
    goto LABEL_148;
  }

  if (a1[2])
  {
    cf = 0;
    if (mipc::operator==())
    {
      if (*(&v75 + 1))
      {
        if (*(&v76 + 1))
        {
          v21 = **(&v75 + 1);
          if (v21 <= 2)
          {
            if (**(&v75 + 1))
            {
              if (v21 == 1)
              {
                v39 = **(&v76 + 1);
                if (v39 < 8)
                {
                  v22 = v39 + 2;
                  goto LABEL_78;
                }
              }

              goto LABEL_71;
            }

            v22 = 1;
          }

          else
          {
            if (v21 != 3)
            {
              if (v21 == 6)
              {
                v22 = 11;
                goto LABEL_78;
              }

LABEL_71:
              v22 = 0;
              goto LABEL_78;
            }

            v22 = 10;
          }

LABEL_78:
          v40 = *MEMORY[0x29EDB8ED8];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v32 = Mutable;
          if (Mutable)
          {
            cf = Mutable;
            block = 0;
            ctu::cf::convert_copy(&block, "kKeyBasebandWakeChannel", 0x8000100, v40, v42);
            v43 = block;
            *&v84.__val_ = block;
            __dst.__val_ = v22;
            v44 = CFNumberCreate(v40, kCFNumberIntType, &__dst);
            v45 = v44;
            block = v44;
            if (v43)
            {
              v46 = v44 == 0;
            }

            else
            {
              v46 = 1;
            }

            v47 = !v46;
            if (v46)
            {
              if (!v44)
              {
                goto LABEL_98;
              }
            }

            else
            {
              CFDictionaryAddValue(v32, v43, v44);
            }

            CFRelease(v45);
LABEL_98:
            if (v43)
            {
              CFRelease(v43);
            }

            if (v47)
            {
              if (!*(&v77 + 1))
              {
                v62 = *(v12 + 40);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(block) = 0;
                  _os_log_debug_impl(&dword_296E3E000, v62, OS_LOG_TYPE_DEBUG, "#D Get wake reason confirmation does not contain data field", &block, 2u);
                }

                goto LABEL_123;
              }

              v51 = **(&v77 + 1);
              v50 = *(*(&v77 + 1) + 8);
              v52 = v50 - **(&v77 + 1);
              if (v50 == **(&v77 + 1))
              {
LABEL_123:
                CFRetain(v32);
                v63 = a1[4];
                if (v63)
                {
                  v64 = _Block_copy(v63);
                }

                else
                {
                  v64 = 0;
                }

                v65 = a1[5];
                block = MEMORY[0x29EDCA5F8];
                __p.__r_.__value_.__r.__words[0] = 1174405120;
                __p.__r_.__value_.__l.__size_ = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJDnNS3_IS6_EEEEEvDpT__block_invoke;
                __p.__r_.__value_.__r.__words[2] = &__block_descriptor_tmp_215;
                if (v64)
                {
                  v66 = _Block_copy(v64);
                }

                else
                {
                  v66 = 0;
                }

                aBlock = v66;
                *&v89[0] = 0;
                *(&v89[0] + 1) = v32;
                CFRetain(v32);
                dispatch_async(v65, &block);
                if (*(&v89[0] + 1))
                {
                  CFRelease(*(&v89[0] + 1));
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v64)
                {
                  _Block_release(v64);
                }

                CFRelease(v32);
                goto LABEL_144;
              }

              if ((v52 & 0x8000000000000000) != 0)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v53 = operator new(v50 - v51);
              memcpy(v53, v51, v52);
              if (v52 >= 0x40)
              {
                v54 = 64;
              }

              else
              {
                v54 = v52;
              }

              *&__dst.__val_ = 0xAAAAAAAAAAAAAAAALL;
              v55 = CFDataCreate(v40, v53, v54);
              *&__dst.__val_ = v55;
              if (v55)
              {
                if (ctu::cf::insert<char const*,__CFData const*>(v32, v55, v40, v56, v57))
                {
                  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&__dst);
                  operator delete(v53);
                  goto LABEL_123;
                }

                std::string::basic_string[abi:ne200100]<0>(&block, "Failed to insert wake data into wake reason dictionary");
                dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::callback(&v84, (a1 + 4));
                ctu::cf::CFSharedRef<__CFDictionary>::CFSharedRef(&v78, v32);
                radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &v78);
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&block, "Failed to create wake data");
                dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::callback(&v84, (a1 + 4));
                ctu::cf::CFSharedRef<__CFDictionary>::CFSharedRef(&v78, v32);
                radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &v78);
              }

              ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&v78);
              dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&v84);
              if (__p.__r_.__value_.__s.__data_[15] < 0)
              {
                operator delete(block);
              }

              ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&__dst);
              v61 = v53;
              goto LABEL_143;
            }

            block = operator new(0x40uLL);
            *&__p.__r_.__value_.__l.__data_ = xmmword_296EB9CC0;
            strcpy(block, "Failed to insert wake channel into wake reason dictionary");
            v58 = a1[4];
            if (v58)
            {
              v59 = _Block_copy(v58);
              v60 = a1[5];
              *&v84.__val_ = v59;
              v84.__cat_ = v60;
              if (!v60)
              {
LABEL_113:
                *&__dst.__val_ = v32;
                CFRetain(v32);
                radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &__dst);
                CFRelease(v32);
                if (v60)
                {
                  dispatch_release(v60);
                }

                if (v59)
                {
                  _Block_release(v59);
                }

                if ((__p.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
                {
                  goto LABEL_144;
                }

                v61 = block;
LABEL_143:
                operator delete(v61);
                goto LABEL_144;
              }
            }

            else
            {
              v59 = 0;
              v60 = a1[5];
              *&v84.__val_ = 0;
              v84.__cat_ = v60;
              if (!v60)
              {
                goto LABEL_113;
              }
            }

            dispatch_retain(v60);
            goto LABEL_113;
          }

          block = operator new(0x28uLL);
          *&__p.__r_.__value_.__l.__data_ = xmmword_296EB9C60;
          strcpy(block, "Failed to create wake reason dictionary");
          v48 = a1[4];
          if (v48)
          {
            v35 = _Block_copy(v48);
            v49 = a1[5];
            *&v84.__val_ = v35;
            v84.__cat_ = v49;
            if (!v49)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v35 = 0;
            v49 = a1[5];
            *&v84.__val_ = 0;
            v84.__cat_ = v49;
            if (!v49)
            {
LABEL_90:
              *&__dst.__val_ = 0;
              radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &__dst);
              if (v49)
              {
                dispatch_release(v49);
              }

              if (!v35)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }
          }

          dispatch_retain(v49);
          goto LABEL_90;
        }

        block = operator new(0x48uLL);
        *&__p.__r_.__value_.__l.__data_ = xmmword_296EB9CD0;
        strcpy(block, "Get wake reason confirmation mandatory channel id field is missing");
        v37 = a1[4];
        if (v37)
        {
          v35 = _Block_copy(v37);
          v38 = a1[5];
          *&v84.__val_ = v35;
          v84.__cat_ = v38;
          if (!v38)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v35 = 0;
          v38 = a1[5];
          *&v84.__val_ = 0;
          v84.__cat_ = v38;
          if (!v38)
          {
LABEL_63:
            *&__dst.__val_ = 0;
            radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &__dst);
            if (v38)
            {
              dispatch_release(v38);
            }

            if (!v35)
            {
              goto LABEL_94;
            }

            goto LABEL_93;
          }
        }

        dispatch_retain(v38);
        goto LABEL_63;
      }

      block = operator new(0x40uLL);
      *&__p.__r_.__value_.__l.__data_ = xmmword_296EB9CE0;
      strcpy(block, "Get wake reason confirmation mandatory user field is missing");
      v34 = a1[4];
      if (v34)
      {
        v35 = _Block_copy(v34);
        v36 = a1[5];
        *&v84.__val_ = v35;
        v84.__cat_ = v36;
        if (!v36)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v35 = 0;
        v36 = a1[5];
        *&v84.__val_ = 0;
        v84.__cat_ = v36;
        if (!v36)
        {
LABEL_52:
          *&__dst.__val_ = 0;
          radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &block, &v84, &__dst);
          if (v36)
          {
            dispatch_release(v36);
          }

          if (!v35)
          {
            goto LABEL_94;
          }

LABEL_93:
          _Block_release(v35);
LABEL_94:
          if (__p.__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(block);
          }

LABEL_145:
          v13 = v81;
          if (!v81)
          {
            goto LABEL_148;
          }

          goto LABEL_146;
        }
      }

      dispatch_retain(v36);
      goto LABEL_52;
    }

    v23 = mipc::asString();
    v84.__cat_ = 0xAAAAAAAAAAAAAAAALL;
    v85 = 12;
    *&v84.__val_ = v23;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v89[14] = v24;
    v89[15] = v24;
    v89[13] = v24;
    v89[12] = v24;
    v89[11] = v24;
    v89[10] = v24;
    v89[9] = v24;
    v89[8] = v24;
    v89[7] = v24;
    v89[6] = v24;
    v89[5] = v24;
    v89[4] = v24;
    v89[3] = v24;
    v89[2] = v24;
    v89[1] = v24;
    v89[0] = v24;
    block = v89;
    *&__p.__r_.__value_.__l.__data_ = xmmword_296EB9CA0;
    __p.__r_.__value_.__r.__words[2] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    aBlock = 0;
    __src = v89;
    *&__dst.__val_ = 1;
    __dst.__cat_ = &v84;
    v83 = 12;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, "Get wake reason request failed: {}", 34, &__dst.__val_);
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v26 = __src;
    if (__p.__r_.__value_.__l.__size_ >= 0x17)
    {
      if ((__p.__r_.__value_.__l.__size_ | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (__p.__r_.__value_.__l.__size_ | 7) + 1;
      }

      p_dst = operator new(v33);
      __dst.__cat_ = size;
      v83 = v33 | 0x8000000000000000;
      *&__dst.__val_ = p_dst;
    }

    else
    {
      HIBYTE(v83) = __p.__r_.__value_.__s.__data_[8];
      p_dst = &__dst;
      if (!__p.__r_.__value_.__l.__size_)
      {
        LOBYTE(__dst.__val_) = 0;
        v28 = __src;
        if (__src == v89)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    memmove(p_dst, v26, size);
    *(&size->__vftable + p_dst) = 0;
    v28 = __src;
    if (__src == v89)
    {
LABEL_29:
      v29 = a1[4];
      if (v29)
      {
        v30 = _Block_copy(v29);
        v31 = a1[5];
        block = v30;
        __p.__r_.__value_.__r.__words[0] = v31;
        if (!v31)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v30 = 0;
        v31 = a1[5];
        block = 0;
        __p.__r_.__value_.__r.__words[0] = v31;
        if (!v31)
        {
LABEL_32:
          v32 = cf;
          *&v84.__val_ = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(*(v12 + 40), &__dst, &block, &v84);
          if (v32)
          {
            CFRelease(v32);
          }

          if (v31)
          {
            dispatch_release(v31);
          }

          if (v30)
          {
            _Block_release(v30);
          }

          if (SHIBYTE(v83) < 0)
          {
            operator delete(*&__dst.__val_);
            if (!v32)
            {
              goto LABEL_145;
            }
          }

          else if (!v32)
          {
            goto LABEL_145;
          }

LABEL_144:
          CFRelease(v32);
          goto LABEL_145;
        }
      }

      dispatch_retain(v31);
      goto LABEL_32;
    }

LABEL_28:
    operator delete(v28);
    goto LABEL_29;
  }

LABEL_146:
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v67 = v13;
    (v13->__on_zero_shared)(v13, v14, v15, v16, v17, v18, v19, v20, v70, *(&v70 + 1), v71);
    std::__shared_weak_count::__release_weak(v67);
  }

LABEL_148:
  result = MEMORY[0x29C266CB0](&v70);
  v69 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E789F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26, __int16 a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a25);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a33);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a29);
  operator delete(v42);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x29C266CB0](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys21Get_Pewake_Reason_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys21Get_Pewake_Reason_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys21Get_Pewake_Reason_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc3sys21Get_Pewake_Reason_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Get_Pewake_Reason_Cnf const&)#1}::operator() const(mipc::sys::Get_Pewake_Reason_Cnf const&)::{lambda(std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary>)#1}::operator()(NSObject *a1, const char *a2, uint64_t a3, const void **a4)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    if (!*a3)
    {
      goto LABEL_46;
    }

LABEL_3:
    if (!*(a3 + 8))
    {
      goto LABEL_46;
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v8 = strlen(a2);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v8 | 7) + 1;
      }

      v10 = operator new(v11);
      __p[1] = v9;
      v19 = v11 | 0x8000000000000000;
      __p[0] = v10;
    }

    else
    {
      HIBYTE(v19) = v8;
      v10 = __p;
      if (!v8)
      {
LABEL_15:
        *(v9 + v10) = 0;
        CreateError();
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
          v12 = cf;
          if (!cf)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v12 = cf;
          if (!cf)
          {
LABEL_20:
            v13 = *a4;
            if (v13)
            {
              CFRetain(v13);
            }

            if (*a3)
            {
              v14 = _Block_copy(*a3);
            }

            else
            {
              v14 = 0;
            }

            v15 = *(a3 + 8);
            *&block = MEMORY[0x29EDCA5F8];
            *(&block + 1) = 1174405120;
            v22 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
            v23 = &__block_descriptor_tmp_148;
            if (v14)
            {
              aBlock = _Block_copy(v14);
              v25 = v12;
              if (!v12)
              {
                goto LABEL_30;
              }
            }

            else
            {
              aBlock = 0;
              v25 = v12;
              if (!v12)
              {
LABEL_30:
                v26 = v13;
                if (v13)
                {
                  CFRetain(v13);
                }

                dispatch_async(v15, &block);
                if (v26)
                {
                  CFRelease(v26);
                }

                if (v25)
                {
                  CFRelease(v25);
                }

                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v14)
                {
                  _Block_release(v14);
                }

                if (v13)
                {
                  CFRelease(v13);
                }

                if (v12)
                {
                  CFRelease(v12);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                goto LABEL_46;
              }
            }

            CFRetain(v12);
            goto LABEL_30;
          }
        }

        CFRetain(v12);
        goto LABEL_20;
      }
    }

    memmove(v10, a2, v9);
    goto LABEL_15;
  }

  v17 = a2;
  if (a2[23] < 0)
  {
    v17 = *a2;
  }

  LODWORD(block) = 136315138;
  *(&block + 4) = v17;
  _os_log_error_impl(&dword_296E3E000, a1, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
  if (*a3)
  {
    goto LABEL_3;
  }

LABEL_46:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296E78EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
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

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  v5 = &a2[a3];
  v31[0] = a2;
  v31[1] = &a2[a3];
  v32 = 0;
  v33 = 0;
  v34 = v4;
  v27 = *a4;
  v28 = a4[2];
  LOBYTE(v24.__locale_) = 0;
  v25 = 0;
  v26 = a1;
  LOBYTE(v29.__locale_) = 0;
  v30 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v8 = "The format string terminates at a '{'";
    do
    {
      while (1)
      {
        v9 = *v6;
        if (v9 != 125)
        {
          break;
        }

        if (++v6 == v5 || *v6 != 125)
        {
          v8 = "The format string contains an invalid escape sequence";
          goto LABEL_33;
        }

LABEL_17:
        v16 = v7[4];
        if (!v16 || (v18 = *v16, v17 = v16[1], v16[1] = v17 + 1, v17 < v18))
        {
          v19 = *v7;
          v20 = v7[2];
          v7[2] = v20 + 1;
          *(v19 + v20) = v9;
          if (v7[2] == v7[1])
          {
            (v7[3])(v7, 2);
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_26;
        }
      }

      if (v9 != 123)
      {
        goto LABEL_17;
      }

      if (++v6 == v5)
      {
        goto LABEL_33;
      }

      if (*v6 == 123)
      {
        goto LABEL_17;
      }

      v26 = v7;
      v10 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6, v5, v31);
      if (v5 == v10)
      {
        goto LABEL_32;
      }

      v12 = *v10;
      v36 = v12 == 58;
      if (v12 != 125)
      {
        if (v12 != 58)
        {
LABEL_32:
          v8 = "The argument index should end with a ':' or a '}'";
LABEL_33:
          std::__throw_format_error[abi:ne200100](v8);
        }

        ++v10;
      }

      v31[0] = v10;
      v35[0] = v31;
      v35[1] = &v26;
      v35[2] = &v36;
      if (v27 <= v11)
      {
        LOBYTE(v38) = 0;
      }

      else if (v27 > 0xC)
      {
        v21 = (*(&v27 + 1) + 32 * v11);
        v22 = v21[1];
        v37 = *v21;
        v38 = v22;
      }

      else
      {
        v13 = (*(&v27 + 1) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        *&v37 = v15;
        *(&v37 + 1) = v14;
        LOBYTE(v38) = (v28 >> (5 * v11)) & 0x1F;
      }

      std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v35, &v37);
      if (v31[0] == v5 || *v31[0] != 125)
      {
        v8 = "The replacement field misses a terminating '}'";
        goto LABEL_33;
      }

      v6 = (v31[0] + 1);
      v7 = v26;
    }

    while ((v31[0] + 1) != v5);
  }

LABEL_26:
  if (v30 == 1)
  {
    std::locale::~locale(&v29);
    if (v25)
    {
      std::locale::~locale(&v24);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_296E792BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E13180;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

void std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  v572[131] = *MEMORY[0x29EDCA608];
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      v571[0].__locale_ = 0;
      LODWORD(v571[1].__locale_) = -1;
      BYTE4(v571[1].__locale_) = 32;
      *(&v571[1].__locale_ + 5) = 0;
      HIBYTE(v571[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_332;
      }

      v4 = *a1;
      v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v571, *a1, 55);
      if (BYTE1(v571[0].__locale_) - 2 < 6)
      {
        *v4 = v5;
        v6 = *(a1 + 8);
        v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v6);
        goto LABEL_65;
      }

      if (BYTE1(v571[0].__locale_) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      if ((v571[0].__locale_ & 0x18) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "sign");
      }

      if ((v571[0].__locale_ & 0x20) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "alternate form");
      }

      if ((v571[0].__locale_ & 7) == 4)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "zero-padding");
      }

      if (LODWORD(v571[1].__locale_) != -1)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "precision");
      }

      if ((v571[0].__locale_ & 7) == 0)
      {
        LOBYTE(v571[0].__locale_) |= 1u;
      }

      *v4 = v5;
LABEL_332:
      v6 = *(a1 + 8);
      v182 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v6);
      v184 = v183;
      if ((v182 & 0x40) != 0)
      {
        if ((*(v6 + 40) & 1) == 0)
        {
          MEMORY[0x29C267870](v572);
          v188 = (v6 + 32);
          if (*(v6 + 40) == 1)
          {
            std::locale::operator=(v188, v572);
          }

          else
          {
            std::locale::locale(v188, v572);
            *(v6 + 40) = 1;
          }

          std::locale::~locale(v572);
        }

        std::locale::locale(v568, (v6 + 32));
        v217 = std::locale::use_facet(v568, MEMORY[0x29EDC93F8]);
        std::locale::~locale(v568);
        memset(v572, 170, 24);
        v218 = v217->__vftable;
        if (v3)
        {
          (v218[2].~facet)(v572, v217);
        }

        else
        {
          (v218[2].~facet_0)(v572, v217);
        }

        if (SHIBYTE(v572[2].__locale_) >= 0)
        {
          locale = v572;
        }

        else
        {
          locale = v572[0].__locale_;
        }

        if (SHIBYTE(v572[2].__locale_) >= 0)
        {
          locale_high = HIBYTE(v572[2].__locale_);
        }

        else
        {
          locale_high = v572[1].__locale_;
        }

        v28 = *v6;
        std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, locale_high, *v6, v182, v184);
        if (SHIBYTE(v572[2].__locale_) < 0)
        {
          operator delete(v572[0].__locale_);
        }
      }

      else
      {
        v185 = v3 == 0;
        if (v3)
        {
          v186 = 4;
        }

        else
        {
          v186 = 5;
        }

        v28 = *v6;
        if (v185)
        {
          v187 = "false";
        }

        else
        {
          v187 = "true";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v187, v186, *v6, v182, v184, v186);
      }

      goto LABEL_429;
    case 2u:
      v3 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16))
      {
        v42 = *a1;
        v43 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
        v44 = BYTE1(v572[0].__locale_);
        if (BYTE1(v572[0].__locale_) - 2 >= 6)
        {
          if (BYTE1(v572[0].__locale_) > 0x13u || ((1 << SBYTE1(v572[0].__locale_)) & 0x80401) == 0)
          {
            std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
          }

          if ((v572[0].__locale_ & 0x18) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "sign");
          }

          if ((v572[0].__locale_ & 0x20) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "alternate form");
          }

          if ((v572[0].__locale_ & 7) == 4)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "zero-padding");
          }

          if (LODWORD(v572[1].__locale_) != -1)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "precision");
          }

          if ((v572[0].__locale_ & 7) == 0)
          {
            LOBYTE(v572[0].__locale_) |= 1u;
          }
        }

        *v42 = v43;
        v6 = *(a1 + 8);
        if (v44 != 10 && v44 != 0)
        {
          v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
LABEL_65:
          v47 = v7;
          v48 = v8;
          v49 = v3;
          v50 = v6;
          goto LABEL_147;
        }
      }

      else
      {
        v6 = *(a1 + 8);
      }

      v74 = *v6;
      v89 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      LOBYTE(v571[0].__locale_) = v3;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v74, v89, v90, 1);
      goto LABEL_134;
    case 3u:
      LODWORD(v21) = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_73;
      }

      v51 = *a1;
      v52 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_72;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_72:
      *v51 = v52;
LABEL_73:
      v6 = *(a1 + 8);
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v27 = v54;
      if ((v25 & 0xFF00) != 0xA00)
      {
        if (v21 >= 0)
        {
          v49 = v21;
        }

        else
        {
          v49 = -v21;
        }

        v99 = v21 >> 31;
        v50 = v6;
        v47 = v25;
        v48 = v27;
        goto LABEL_148;
      }

      if (v21 == v21)
      {
        goto LABEL_28;
      }

      goto LABEL_1225;
    case 4u:
      v21 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_26;
      }

      v22 = *a1;
      v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_25;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_25:
      *v22 = v23;
LABEL_26:
      v6 = *(a1 + 8);
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v27 = v26;
      if ((v25 & 0xFF00) == 0xA00)
      {
        if (v21 == v21)
        {
LABEL_28:
          v28 = *v6;
          LOBYTE(v571[0].__locale_) = v21;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v28, v25, v27, 1);
LABEL_429:
          *v6 = v28;
          goto LABEL_1157;
        }

        goto LABEL_1225;
      }

      if (v21 >= 0)
      {
        v91 = v21;
      }

      else
      {
        v91 = -v21;
      }

      v41 = v21 >> 63;
      v92 = v6;
      v93 = v25;
      v94 = v27;
      goto LABEL_152;
    case 5u:
      v59 = *a2;
      v60 = *(a2 + 1);
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_93;
      }

      v61 = *a1;
      v62 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_92;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_92:
      *v61 = v62;
LABEL_93:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v64;
      if ((v39 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) < __PAIR128__((v59 >= 0x80) + v60 - 1, v59 - 128))
        {
          v28 = *v6;
          LOBYTE(v571[0].__locale_) = v59;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v28, v39, v64, 1);
          goto LABEL_429;
        }

LABEL_1225:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      v96 = (__PAIR128__(v60 ^ (v60 >> 63), v59 ^ (v60 >> 63)) - __PAIR128__(v60 >> 63, v60 >> 63)) >> 64;
      v95 = (v59 ^ (v60 >> 63)) - (v60 >> 63);
      v98 = v60 >> 63;
      v97 = v6;
      goto LABEL_150;
    case 6u:
      LODWORD(v34) = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_83;
      }

      v55 = *a1;
      v56 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_82;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_82:
      *v55 = v56;
LABEL_83:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v58;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v49 = v34;
        v50 = v6;
        v47 = v39;
        v48 = v41;
LABEL_147:
        LOBYTE(v99) = 0;
LABEL_148:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v49, v50, v47, v48, v99);
        goto LABEL_1157;
      }

      if (v34 < 0x80)
      {
        goto LABEL_114;
      }

      goto LABEL_1225;
    case 7u:
      v34 = *a2;
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_112;
      }

      v70 = *a1;
      v71 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_111;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
        goto LABEL_1228;
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1229;
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1230;
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
        goto LABEL_1231;
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
        goto LABEL_1232;
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_111:
      *v70 = v71;
LABEL_112:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v73;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v91 = v34;
        v92 = v6;
        v93 = v39;
        v94 = v41;
        LOBYTE(v41) = 0;
LABEL_152:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v91, v92, v93, v94, v41);
        goto LABEL_1157;
      }

      if (v34 >= 0x80)
      {
        goto LABEL_1225;
      }

      goto LABEL_114;
    case 8u:
      v34 = *a2;
      v35 = *(a2 + 1);
      v572[0].__locale_ = 0;
      LODWORD(v572[1].__locale_) = -1;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_45;
      }

      v36 = *a1;
      v37 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 55);
      if (BYTE1(v572[0].__locale_) - 2 < 6 || BYTE1(v572[0].__locale_) == 0)
      {
        goto LABEL_44;
      }

      if (BYTE1(v572[0].__locale_) != 10)
      {
LABEL_1228:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      if ((v572[0].__locale_ & 0x18) != 0)
      {
LABEL_1229:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "sign");
      }

      if ((v572[0].__locale_ & 0x20) != 0)
      {
LABEL_1230:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "alternate form");
      }

      if ((v572[0].__locale_ & 7) == 4)
      {
LABEL_1231:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "zero-padding");
      }

      if (LODWORD(v572[1].__locale_) != -1)
      {
LABEL_1232:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "precision");
      }

      if ((v572[0].__locale_ & 7) == 0)
      {
        LOBYTE(v572[0].__locale_) |= 1u;
      }

LABEL_44:
      *v36 = v37;
LABEL_45:
      v6 = *(a1 + 8);
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v6);
      v41 = v40;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v95 = v34;
        v96 = v35;
        v97 = v6;
        LOBYTE(v98) = 0;
LABEL_150:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v95, v96, v97, v39, v41, v98);
        goto LABEL_1157;
      }

      if (__PAIR128__(v35, v34) >= 0x80)
      {
        goto LABEL_1225;
      }

LABEL_114:
      v74 = *v6;
      LOBYTE(v571[0].__locale_) = v34;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v571, 1uLL, v74, v39, v41, 1);
LABEL_134:
      *v6 = v74;
      goto LABEL_1157;
    case 9u:
      v29 = *a2;
      v563.__locale_ = 0;
      v564 = -1;
      v565 = 32;
      v566 = 0;
      v567 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_158;
      }

      v30 = *a1;
      v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v563, *a1, 63);
      if (BYTE1(v563.__locale_) - 13 >= 6)
      {
        if (BYTE1(v563.__locale_) <= 0xCu && ((1 << SBYTE1(v563.__locale_)) & 0x1801) != 0)
        {
          goto LABEL_157;
        }

LABEL_1238:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      v32 = v564 != -1 || SWORD1(v563.__locale_) <= -1;
      if (v32)
      {
        v33 = v564;
      }

      else
      {
        v33 = 6;
      }

      v564 = v33;
LABEL_157:
      *v30 = v31;
LABEL_158:
      v101 = *(a1 + 8);
      v104 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v563, v101);
      v105 = v102;
      if ((LODWORD(v29) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *v101 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v101, v104, v102, v29 < 0.0, 0);
        goto LABEL_1157;
      }

      *&v106 = 0xAAAAAAAAAAAAAAAALL;
      *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v572[33].__locale_ = v106;
      *&v572[31].__locale_ = v106;
      *&v572[29].__locale_ = v106;
      *&v572[27].__locale_ = v106;
      *&v572[25].__locale_ = v106;
      *&v572[23].__locale_ = v106;
      *&v572[21].__locale_ = v106;
      *&v572[19].__locale_ = v106;
      *&v572[17].__locale_ = v106;
      *&v572[15].__locale_ = v106;
      *&v572[13].__locale_ = v106;
      *&v572[11].__locale_ = v106;
      *&v572[9].__locale_ = v106;
      *&v572[7].__locale_ = v106;
      *&v572[5].__locale_ = v106;
      *&v572[3].__locale_ = v106;
      *&v572[1].__locale_ = v106;
      if (v102 == -1)
      {
        v107 = 149;
      }

      else
      {
        v107 = v102;
      }

      v572[0].__locale_ = v107;
      if (v107 < 150)
      {
        v108 = v107 + 45;
        v572[1].__locale_ = v108;
        if ((v107 + 45) >= 0x101)
        {
          v109 = operator new(v107 + 45);
          v107 = v105;
          goto LABEL_167;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 149;
        HIDWORD(v572[0].__locale_) = v107 - 149;
        v108 = 194;
        v572[1].__locale_ = 194;
        v107 = 149;
      }

      v109 = &v572[3];
LABEL_167:
      v110 = v104;
      v561 = v104;
      v111 = BYTE1(v104);
      v572[2].__locale_ = v109;
      if ((LODWORD(v29) & 0x80000000) != 0)
      {
        v115 = 45;
        v113 = v110;
      }

      else
      {
        v112 = (v110 >> 3) & 3;
        v113 = v110;
        if (v112 == 2)
        {
          v115 = 43;
        }

        else
        {
          v114 = v109;
          if (v112 != 3)
          {
            goto LABEL_174;
          }

          v115 = 32;
        }
      }

      *v109 = v115;
      v114 = (v109 + 1);
LABEL_174:
      v116 = fabsf(v29);
      v559 = v105;
      if (v111 > 14)
      {
        if ((v111 - 15) >= 2)
        {
          if (v111 == 17)
          {
            HIDWORD(v572[0].__locale_) = 0;
            v118 = MEMORY[0x29C267960](v114, v109 + v108, 3, v107, v116);
            v127 = (v114 + 1);
            if ((v114 + 1) != v118)
            {
              v128 = v118 - v127;
              if (v118 - v127 >= 4)
              {
                v129 = 6;
                if (v128 < 6)
                {
                  v129 = v118 - v127;
                }

                v130 = -v129;
                while (*(v118 + v130) != 101)
                {
                  if (++v130 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                goto LABEL_554;
              }

              goto LABEL_353;
            }
          }

          else
          {
            HIDWORD(v572[0].__locale_) = 0;
            v118 = MEMORY[0x29C267960](v114, v109 + v108, 3, v107, v116);
            v127 = (v114 + 1);
            if ((v114 + 1) != v118)
            {
              v128 = v118 - v127;
              if (v118 - v127 >= 4)
              {
                v190 = 6;
                if (v128 < 6)
                {
                  v190 = v118 - v127;
                }

                v191 = -v190;
                while (*(v118 + v191) != 101)
                {
                  if (++v191 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                v119 = (v118 + v191);
                if (*v127 == 46)
                {
                  v122 = v114 + 1;
                }

                else
                {
                  v122 = v118;
                }

LABEL_574:
                *v119 = 69;
                goto LABEL_588;
              }

LABEL_353:
              v192 = memchr(v127, 46, v128);
              if (v192)
              {
                v122 = v192;
              }

              else
              {
                v122 = v118;
              }

              v119 = v118;
              goto LABEL_588;
            }
          }

LABEL_413:
          v122 = v118;
          v119 = v118;
          goto LABEL_588;
        }

        v123 = v109 + v108;
        v124 = v107;
        v125 = MEMORY[0x29C267960](v114, v123, 2, v116);
        v118 = v125;
        if (v124)
        {
          v126 = v124 + 1;
        }

        else
        {
          v126 = 0;
        }

        v122 = v125 - v126;
        v119 = v125;
      }

      else
      {
        if (v111 > 11)
        {
          if (v111 == 12)
          {
            if ((v105 & 0x80000000) != 0 || v107 == -1)
            {
              v189 = std::to_chars();
            }

            else
            {
              v189 = MEMORY[0x29C267960](v114, v109 + v108, 4, v116);
            }

            v118 = v189;
            v119 = (v114 + 1);
            if (*(v114 + 1) != 46 || ((v221 = memchr((v189 - 5), 112, 3uLL)) != 0 ? (v119 = v221) : (v119 = (v118 - 2)), v122 = v114 + 1, v189 = v114 + 1, v119 != v114))
            {
              v230 = v114;
              do
              {
                v231 = *v230;
                if ((v231 - 97) < 6)
                {
                  LOBYTE(v231) = v231 - 32;
                }

                *v230 = v231;
                v230 = (v230 + 1);
              }

              while (v230 != v119);
              v122 = v189;
            }

            *v119 = 80;
            goto LABEL_588;
          }

          if (v111 == 13)
          {
            v117 = MEMORY[0x29C267960](v114, v109 + v108, 1, v107, v116);
            v118 = v117;
            v119 = (v114 + 1);
            if (*(v114 + 1) == 46)
            {
              v120 = v117 - v114 - 2;
              if (v120 < 4)
              {
LABEL_185:
                v122 = v114 + 1;
                v119 = v117;
              }

              else
              {
                if (v120 >= 6)
                {
                  v120 = 6;
                }

                v121 = -v120;
                while (*(v117 + v121) != 101)
                {
                  if (++v121 == -3)
                  {
                    goto LABEL_185;
                  }
                }

                v122 = v114 + 1;
                v119 = (v117 + v121);
              }

              goto LABEL_588;
            }

            goto LABEL_527;
          }

          v193 = MEMORY[0x29C267960](v114, v109 + v108, 1, v107, v116);
          v118 = v193;
          v119 = (v114 + 1);
          if (*(v114 + 1) == 46)
          {
            v194 = v193 - v114 - 2;
            if (v194 < 4)
            {
LABEL_364:
              v122 = v114 + 1;
              v119 = v193;
            }

            else
            {
              if (v194 >= 6)
              {
                v194 = 6;
              }

              v195 = -v194;
              while (*(v193 + v195) != 101)
              {
                if (++v195 == -3)
                {
                  goto LABEL_364;
                }
              }

              v122 = v114 + 1;
              v119 = (v193 + v195);
            }
          }

          else
          {
            v122 = v193;
          }

          goto LABEL_574;
        }

        if (!v111)
        {
          if ((v105 & 0x80000000) != 0)
          {
            v234 = std::to_chars(v114, v109 + v108, v103, v116);
            v118 = v234;
            v235 = v234 - v114;
            if (v234 - v114 < 4)
            {
LABEL_520:
              v119 = v234;
            }

            else
            {
              if (v235 >= 6)
              {
                v235 = 6;
              }

              v236 = -v235;
              while (*(v234 + v236) != 101)
              {
                if (++v236 == -3)
                {
                  goto LABEL_520;
                }
              }

              v119 = (v234 + v236);
            }

            v259 = memchr(v114 + 1, 46, v119 - (v114 + 1));
            if (v259)
            {
              v260 = v259;
            }

            else
            {
              v260 = v119;
            }

            if (v260 == v119)
            {
              v122 = v118;
            }

            else
            {
              v122 = v260;
            }

            goto LABEL_588;
          }

          HIDWORD(v572[0].__locale_) = 0;
          v118 = MEMORY[0x29C267960](v114, v109 + v108, 3, v107, v116);
          v127 = (v114 + 1);
          if ((v114 + 1) != v118)
          {
            v128 = v118 - v127;
            if (v118 - v127 >= 4)
            {
              v131 = 6;
              if (v128 < 6)
              {
                v131 = v118 - v127;
              }

              v130 = -v131;
              while (*(v118 + v130) != 101)
              {
                if (++v130 == -3)
                {
                  goto LABEL_353;
                }
              }

LABEL_554:
              v119 = (v118 + v130);
              if (*v127 == 46)
              {
                v122 = v127;
              }

              else
              {
                v122 = v118;
              }

              goto LABEL_588;
            }

            goto LABEL_353;
          }

          goto LABEL_413;
        }

        if ((v105 & 0x80000000) != 0)
        {
          v196 = std::to_chars();
        }

        else
        {
          v196 = MEMORY[0x29C267960](v114, v109 + v108, 4, v107, v116);
        }

        v118 = v196;
        v119 = (v114 + 1);
        if (*(v114 + 1) != 46)
        {
LABEL_527:
          v122 = v118;
          goto LABEL_588;
        }

        v237 = memchr((v196 - 5), 112, 3uLL);
        if (v237)
        {
          v238 = v237;
        }

        else
        {
          v238 = (v118 - 2);
        }

        v122 = v114 + 1;
        v119 = v238;
      }

      if ((v113 & 0x20) == 0)
      {
        goto LABEL_605;
      }

LABEL_588:
      if (v122 == v118)
      {
        *v118 = 46;
        if (v119 != v118)
        {
          if ((v119 + 1) == v118)
          {
            v261 = *v119;
            *v119 = *(v119 + 1);
            *(v119 + 1) = v261;
          }

          else
          {
            memmove(v119 + 1, v119, v118 - v119);
            *v119 = 46;
          }
        }

        v262 = v119;
        v119 = (v119 + 1);
        v118 = (v118 + 1);
        v122 = v262;
      }

      if ((v111 - 17) <= 1)
      {
        v263 = v561;
        if (v559 <= 1)
        {
          v264 = 1;
        }

        else
        {
          v264 = v559;
        }

        if ((v559 & 0x80000000) != 0)
        {
          v264 = 6;
        }

        v265 = v114 - v122;
        if (v119 != v118)
        {
          v265 = -1;
        }

        v266 = v265 + v264;
        v267 = v119 + ~v122;
        if (v267 < v266)
        {
          HIDWORD(v572[0].__locale_) += v266 - v267;
        }
      }

      else
      {
LABEL_605:
        v263 = v561;
      }

      if ((v113 & 0x40) == 0)
      {
        v268 = v114;
        v269 = v119;
        v270 = v572[2].__locale_;
        v271 = v118;
        v272 = v118 - v572[2].__locale_;
        v273 = SHIDWORD(v572[0].__locale_);
        if (v118 - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v263 >> 32)
        {
          v274 = v113;
          v275 = *v101;
          if ((v274 & 7) == 4)
          {
            if (v572[2].__locale_ != v268)
            {
              v276 = *v572[2].__locale_;
              v277 = *(v275 + 32);
              if (!v277 || (v279 = *v277, v278 = v277[1], v277[1] = v278 + 1, v278 < v279))
              {
                v280 = *v275;
                v281 = *(v275 + 16);
                *(v275 + 16) = v281 + 1;
                *(v280 + v281) = v276;
                if (*(v275 + 16) == *(v275 + 8))
                {
                  v282 = v263;
                  (*(v275 + 24))(v275, 2);
                  v263 = v282;
                }
              }

              v270 = (v270 + 1);
            }

            v283 = v263 & 0xB8 | 3;
            v284 = 48;
            v285 = v559;
          }

          else
          {
            v283 = v263;
            v285 = v559;
            v284 = BYTE4(v559);
          }

          v303 = v263 & 0xFFFFFFFFFFFFFF00 | v283;
          v304 = v285 & 0xFFFFFF00FFFFFFFFLL | (v284 << 32);
          if (v273)
          {
            std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v270, v118, v275, v303, v304, v272, v269, v273);
          }

          else
          {
            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v270, v118 - v270, v275, v303, v304, v272);
          }

          goto LABEL_908;
        }

        v275 = *v101;
        if (HIDWORD(v572[0].__locale_) && v269 != v118)
        {
          v287 = v269 - v572[2].__locale_;
          v288 = *(v275 + 32);
          if (v288)
          {
            v289 = v101;
            v290 = *v288;
            v291 = v288[1];
            if (*v288 - v291 >= v287)
            {
              v292 = v269 - v572[2].__locale_;
            }

            else
            {
              v292 = *v288 - v291;
            }

            v32 = v290 > v291;
            v293 = v291 + v287;
            v288[1] = v293;
            if (!v32 || v292 == 0)
            {
              goto LABEL_742;
            }
          }

          else
          {
            v289 = v101;
            v292 = v269 - v572[2].__locale_;
          }

          v339 = *(v275 + 16);
          do
          {
            v340 = *(v275 + 8) - v339;
            if (v340 < v292 + 1)
            {
              (*(v275 + 24))(v275, v292 + 2);
              v339 = *(v275 + 16);
              v340 = *(v275 + 8) - v339;
            }

            if (v340 >= v292)
            {
              v341 = v292;
            }

            else
            {
              v341 = v340;
            }

            if (v341)
            {
              memmove((*v275 + v339), v270, v341);
              v339 = *(v275 + 16);
            }

            v339 += v341;
            *(v275 + 16) = v339;
            v270 = (v270 + v341);
            v32 = v292 > v340;
            v292 -= v341;
          }

          while (v32);
          v288 = *(v275 + 32);
          if (!v288)
          {
            goto LABEL_749;
          }

          v290 = *v288;
          v293 = v288[1];
LABEL_742:
          v342 = v293 + v273;
          v288[1] = v293 + v273;
          v343 = v290 >= v293;
          v344 = v290 - v293;
          if (v344 == 0 || !v343)
          {
            v347 = v269;
            v348 = v271 - v269;
            v101 = v289;
            goto LABEL_758;
          }

          if (v344 < v273)
          {
            v273 = v344;
          }

          v339 = *(v275 + 16);
          do
          {
LABEL_749:
            v345 = *(v275 + 8) - v339;
            if (v345 < v273 + 1)
            {
              (*(v275 + 24))(v275, v273 + 2);
              v339 = *(v275 + 16);
              v345 = *(v275 + 8) - v339;
            }

            if (v345 >= v273)
            {
              v346 = v273;
            }

            else
            {
              v346 = v345;
            }

            if (v346)
            {
              memset((*v275 + v339), 48, v346);
              v339 = *(v275 + 16);
            }

            v339 += v346;
            *(v275 + 16) = v339;
            v32 = v273 > v345;
            v273 -= v346;
          }

          while (v32);
          v288 = *(v275 + 32);
          v347 = v269;
          v348 = v271 - v269;
          v101 = v289;
          if (!v288)
          {
            v351 = v289;
            goto LABEL_786;
          }

          v290 = *v288;
          v342 = v288[1];
LABEL_758:
          v349 = v290 - v342;
          if (v290 - v342 >= v348)
          {
            v349 = v348;
          }

          v288[1] = v348 + v342;
          if (v290 <= v342 || v349 == 0)
          {
            goto LABEL_908;
          }

          v351 = v101;
          v339 = *(v275 + 16);
          v348 = v349;
          do
          {
LABEL_786:
            v358 = *(v275 + 8) - v339;
            if (v358 < v348 + 1)
            {
              (*(v275 + 24))(v275, v348 + 2);
              v339 = *(v275 + 16);
              v358 = *(v275 + 8) - v339;
            }

            if (v358 >= v348)
            {
              v359 = v348;
            }

            else
            {
              v359 = v358;
            }

            if (v359)
            {
              memmove((*v275 + v339), v347, v359);
              v339 = *(v275 + 16);
            }

            v339 += v359;
            *(v275 + 16) = v339;
            v347 = (v347 + v359);
            v32 = v348 > v358;
            v348 -= v359;
          }

          while (v32);
          v101 = v351;
          goto LABEL_908;
        }

        v295 = *(v275 + 32);
        if (!v295)
        {
          goto LABEL_638;
        }

        v296 = *v295;
        v297 = v295[1];
        v298 = v297 + v272;
        if (*v295 - v297 < v272)
        {
          v272 = *v295 - v297;
        }

        v295[1] = v298;
        if (v296 > v297 && v272 != 0)
        {
LABEL_638:
          v300 = *(v275 + 16);
          do
          {
            v301 = *(v275 + 8) - v300;
            if (v301 < v272 + 1)
            {
              (*(v275 + 24))(v275, v272 + 2);
              v300 = *(v275 + 16);
              v301 = *(v275 + 8) - v300;
            }

            if (v301 >= v272)
            {
              v302 = v272;
            }

            else
            {
              v302 = v301;
            }

            if (v302)
            {
              memmove((*v275 + v300), v270, v302);
              v300 = *(v275 + 16);
            }

            v300 += v302;
            *(v275 + 16) = v300;
            v270 = (v270 + v302);
            v32 = v272 > v301;
            v272 -= v302;
          }

          while (v32);
          v295 = *(v275 + 32);
          if (!v295)
          {
            goto LABEL_719;
          }

          v296 = *v295;
          v298 = v295[1];
        }

        v334 = v296 - v298;
        if (v296 - v298 >= v273)
        {
          v334 = v273;
        }

        v295[1] = v298 + v273;
        if (v296 <= v298 || v334 == 0)
        {
          goto LABEL_908;
        }

        v300 = *(v275 + 16);
        v273 = v334;
        do
        {
LABEL_719:
          v336 = *(v275 + 8) - v300;
          if (v336 < v273 + 1)
          {
            (*(v275 + 24))(v275, v273 + 2);
            v300 = *(v275 + 16);
            v336 = *(v275 + 8) - v300;
          }

          if (v336 >= v273)
          {
            v337 = v273;
          }

          else
          {
            v337 = v336;
          }

          if (v337)
          {
            memset((*v275 + v300), 48, v337);
            v300 = *(v275 + 16);
          }

          v300 += v337;
          *(v275 + 16) = v300;
          v32 = v273 > v336;
          v273 -= v337;
        }

        while (v32);
        goto LABEL_908;
      }

      v555 = v113;
      v275 = *v101;
      if ((*(v101 + 40) & 1) == 0)
      {
        MEMORY[0x29C267870](v571);
        v286 = (v101 + 32);
        if (*(v101 + 40) == 1)
        {
          std::locale::operator=(v286, v571);
        }

        else
        {
          std::locale::locale(v286, v571);
          *(v101 + 40) = 1;
        }

        std::locale::~locale(v571);
      }

      std::locale::locale(&v570, (v101 + 32));
      v305 = std::locale::use_facet(&v570, MEMORY[0x29EDC93F8]);
      memset(v571, 170, 24);
      (v305->__vftable[1].__on_zero_shared)(v571);
      if (v119 >= v122)
      {
        v306 = v122;
      }

      else
      {
        v306 = v119;
      }

      v557 = v306 - v114;
      v558 = v305;
      v552 = v101;
      v553 = v122;
      v556 = v118;
      v554 = v119;
      if ((SHIBYTE(v571[2].__locale_) & 0x8000000000000000) != 0)
      {
        v307 = v571[1].__locale_;
        if (!v571[1].__locale_)
        {
          goto LABEL_798;
        }

        v551 = v114;
        v310 = v571[0].__locale_;
        locale_low = *v571[0].__locale_;
        if (v557 <= locale_low)
        {
          *v571[0].__locale_ = 0;
          v571[1].__locale_ = 0;
          v114 = v551;
          goto LABEL_798;
        }

        v311 = *v571[0].__locale_;
        v308 = v571[0].__locale_;
      }

      else
      {
        if (!HIBYTE(v571[2].__locale_))
        {
          goto LABEL_798;
        }

        if (v557 <= SLOBYTE(v571[0].__locale_))
        {
          LOBYTE(v571[0].__locale_) = 0;
          HIBYTE(v571[2].__locale_) = 0;
          goto LABEL_798;
        }

        v551 = v114;
        v308 = v571[0].__locale_;
        v307 = v571[1].__locale_;
        locale_low = SLOBYTE(v571[0].__locale_);
        v310 = v571;
        v311 = v571[0].__locale_;
      }

      v568[0].__locale_ = 0;
      v568[1].__locale_ = 0;
      v569 = 0;
      v312 = v307 + v308;
      if (SHIBYTE(v571[2].__locale_) >= 0)
      {
        v313 = v571 + SHIBYTE(v571[2].__locale_);
      }

      else
      {
        v313 = v312;
      }

      v314 = v557 - locale_low;
      if (v557 <= locale_low)
      {
        v332 = 0;
        v331 = v311 + v314;
        v114 = v551;
        goto LABEL_728;
      }

      v315 = v313 - 1;
      do
      {
        while (1)
        {
          v316 = HIBYTE(v569);
          if ((SHIBYTE(v569) & 0x80000000) == 0)
          {
            break;
          }

          v318 = (v569 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v568[1].__locale_ != v318)
          {
            v324 = v568[0].__locale_;
            v318 = v568[1].__locale_;
            goto LABEL_693;
          }

          if ((v569 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v317 = v568[0].__locale_;
          if (v318 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_675;
          }

          v322 = 0;
          v321 = 0x7FFFFFFFFFFFFFF7;
LABEL_685:
          v323 = operator new(v321);
          v324 = v323;
          if (v318)
          {
            memmove(v323, v317, v318);
          }

          if (!v322)
          {
            operator delete(v317);
          }

          v568[0].__locale_ = v324;
          v569 = v321 | 0x8000000000000000;
LABEL_693:
          v568[1].__locale_ = (v318 + 1);
          v326 = v324 + v318;
          *v326 = v311;
          v326[1] = 0;
          if (v310 != v315)
          {
            goto LABEL_694;
          }

LABEL_668:
          v311 = *v310;
          v314 -= *v310;
          if (v314 <= 0)
          {
            goto LABEL_704;
          }
        }

        if (HIBYTE(v569) == 22)
        {
          v317 = v568;
          v318 = 22;
LABEL_675:
          if (v318 + 1 > 2 * v318)
          {
            v319 = v318 + 1;
          }

          else
          {
            v319 = 2 * v318;
          }

          if ((v319 | 7) == 0x17)
          {
            v320 = 25;
          }

          else
          {
            v320 = (v319 | 7) + 1;
          }

          if (v319 >= 0x17)
          {
            v321 = v320;
          }

          else
          {
            v321 = 23;
          }

          v322 = v318 == 22;
          goto LABEL_685;
        }

        HIBYTE(v569) = (HIBYTE(v569) + 1) & 0x7F;
        v325 = v568 + v316;
        *v325 = v311;
        v325[1] = 0;
        if (v310 == v315)
        {
          goto LABEL_668;
        }

LABEL_694:
        v327 = (v310 + 1);
        v328 = (v310 + 1);
        do
        {
          v329 = *v328++;
          v311 = v329;
          if (v329)
          {
            v330 = 1;
          }

          else
          {
            v330 = v327 == v315;
          }

          v327 = v328;
        }

        while (!v330);
        v310 = (v328 - 1);
        v314 -= v311;
      }

      while (v314 > 0);
LABEL_704:
      v331 = v311 + v314;
      if (SHIBYTE(v569) < 0)
      {
        v333 = (v569 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v118 = v556;
        v114 = v551;
        if (v568[1].__locale_ == v333)
        {
          if ((v569 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          __p = v568[0].__locale_;
          v352 = 0x7FFFFFFFFFFFFFF7;
          if (v333 >= 0x3FFFFFFFFFFFFFF3)
          {
            v355 = 0;
          }

          else
          {
LABEL_768:
            if (v333 + 1 > 2 * v333)
            {
              v353 = v333 + 1;
            }

            else
            {
              v353 = 2 * v333;
            }

            if ((v353 | 7) == 0x17)
            {
              v354 = 25;
            }

            else
            {
              v354 = (v353 | 7) + 1;
            }

            if (v353 >= 0x17)
            {
              v352 = v354;
            }

            else
            {
              v352 = 23;
            }

            v355 = v333 == 22;
          }

          v356 = v352;
          v357 = operator new(v352);
          v338 = v357;
          if (v333)
          {
            memmove(v357, __p, v333);
          }

          if (!v355)
          {
            operator delete(__p);
          }

          v568[0].__locale_ = v338;
          v569 = v356 | 0x8000000000000000;
        }

        else
        {
          v338 = v568[0].__locale_;
          v333 = v568[1].__locale_;
        }

        v568[1].__locale_ = (v333 + 1);
      }

      else
      {
        v332 = HIBYTE(v569);
        v118 = v556;
        v114 = v551;
        if (HIBYTE(v569) == 22)
        {
          __p = v568;
          v333 = 22;
          goto LABEL_768;
        }

LABEL_728:
        v333 = v332;
        HIBYTE(v569) = (v332 + 1) & 0x7F;
        v338 = v568;
      }

      v360 = v338 + v333;
      *v360 = v331;
      v360[1] = 0;
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        operator delete(v571[0].__locale_);
      }

      *&v571[0].__locale_ = *&v568[0].__locale_;
      v571[2].__locale_ = v569;
LABEL_798:
      v361 = HIBYTE(v571[2].__locale_);
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        v361 = v571[1].__locale_;
      }

      v362 = v361 + v118 - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) - (v361 != 0);
      v363 = v555 & 7;
      v364 = (v561 >> 32) - v362;
      if (v561 >> 32 <= v362)
      {
        v562 = 0;
        v364 = 0;
        v365 = HIDWORD(v559);
      }

      else
      {
        if (v363 == 4)
        {
          LOBYTE(v365) = 48;
        }

        else
        {
          v365 = HIDWORD(v559);
        }

        if (v363 == 4)
        {
          v366 = 3;
        }

        else
        {
          v366 = v555 & 7;
        }

        if (v366 > 1)
        {
          if (v366 == 3)
          {
            goto LABEL_812;
          }

          v562 = v364 - (v364 >> 1);
          v364 >>= 1;
        }

        else
        {
          if (v366)
          {
            v562 = v364;
            v364 = 0;
            goto LABEL_814;
          }

LABEL_812:
          v562 = 0;
        }
      }

LABEL_814:
      if (v363 == 4 && v114 != v572[2].__locale_)
      {
        v367 = *v572[2].__locale_;
        v368 = *(v275 + 32);
        if (!v368 || (v370 = *v368, v369 = v368[1], v368[1] = v369 + 1, v369 < v370))
        {
          v371 = *v275;
          v372 = *(v275 + 16);
          *(v275 + 16) = v372 + 1;
          *(v371 + v372) = v367;
          if (*(v275 + 16) == *(v275 + 8))
          {
            v373 = v364;
            (*(v275 + 24))(v275, 2);
            v364 = v373;
          }
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v275, v364, HIDWORD(v559) & 0xFFFFFF00 | v365);
      if (v363 != 4 && v114 != v572[2].__locale_)
      {
        v374 = *v572[2].__locale_;
        v375 = *(v275 + 32);
        if (!v375 || (v377 = *v375, v376 = v375[1], v375[1] = v376 + 1, v376 < v377))
        {
          v378 = *v275;
          v379 = *(v275 + 16);
          *(v275 + 16) = v379 + 1;
          *(v378 + v379) = v374;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
          }
        }
      }

      v380 = SHIBYTE(v571[2].__locale_);
      v560 = HIDWORD(v559) & 0xFFFFFF00 | v365;
      if ((SHIBYTE(v571[2].__locale_) & 0x8000000000000000) != 0)
      {
        v380 = v571[1].__locale_;
        if (!v571[1].__locale_)
        {
          goto LABEL_857;
        }

        v381 = v571[0].__locale_;
LABEL_831:
        v382 = v380 + v381;
        v383 = (v558->__vftable[1].~facet_0)();
        v384 = v381 + 1;
        while (1)
        {
          v385 = v114;
          v387 = v382 - 1;
          v386 = *(v382 - 1);
          v388 = *(v275 + 32);
          if (v388)
          {
            v390 = *v388;
            v389 = v388[1];
            if (*v388 - v389 >= v386)
            {
              v391 = *(v382 - 1);
            }

            else
            {
              v391 = *v388 - v389;
            }

            v388[1] = v389 + v386;
            if (v390 <= v389 || v391 == 0)
            {
              goto LABEL_841;
            }
          }

          else
          {
            v391 = *(v382 - 1);
          }

          v398 = *(v275 + 16);
          v399 = v114;
          do
          {
            v400 = *(v275 + 8) - v398;
            if (v400 < v391 + 1)
            {
              (*(v275 + 24))(v275, v391 + 2);
              v398 = *(v275 + 16);
              v400 = *(v275 + 8) - v398;
            }

            if (v400 >= v391)
            {
              v401 = v391;
            }

            else
            {
              v401 = v400;
            }

            if (v401)
            {
              memmove((*v275 + v398), v399, v401);
              v398 = *(v275 + 16);
            }

            v398 += v401;
            *(v275 + 16) = v398;
            v399 = (v399 + v401);
            v32 = v391 > v400;
            v391 -= v401;
          }

          while (v32);
LABEL_841:
          if (v382 == v384)
          {
            goto LABEL_863;
          }

          v114 = (v385 + *(v382 - 1));
          v393 = *(v275 + 32);
          if (v393)
          {
            v395 = *v393;
            v394 = v393[1];
            v393[1] = v394 + 1;
            --v382;
            if (v394 >= v395)
            {
              continue;
            }
          }

          v396 = *v275;
          v397 = *(v275 + 16);
          *(v275 + 16) = v397 + 1;
          *(v396 + v397) = v383;
          v382 = v387;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
            v382 = v387;
          }
        }
      }

      if (HIBYTE(v571[2].__locale_))
      {
        v381 = v571;
        goto LABEL_831;
      }

LABEL_857:
      v402 = *(v275 + 32);
      if (v402)
      {
        v404 = *v402;
        v403 = v402[1];
        if (*v402 - v403 >= v557)
        {
          v405 = v557;
        }

        else
        {
          v405 = *v402 - v403;
        }

        v402[1] = v403 + v557;
        if (v404 <= v403 || !v405)
        {
          goto LABEL_863;
        }
      }

      else
      {
        v405 = v557;
      }

      v437 = *(v275 + 16);
      do
      {
        v438 = *(v275 + 8) - v437;
        if (v438 < v405 + 1)
        {
          (*(v275 + 24))(v275, v405 + 2);
          v437 = *(v275 + 16);
          v438 = *(v275 + 8) - v437;
        }

        if (v438 >= v405)
        {
          v439 = v405;
        }

        else
        {
          v439 = v438;
        }

        if (v439)
        {
          memmove((*v275 + v437), v114, v439);
          v437 = *(v275 + 16);
        }

        v437 += v439;
        *(v275 + 16) = v437;
        v114 = (v114 + v439);
        v32 = v405 > v438;
        v405 -= v439;
      }

      while (v32);
LABEL_863:
      v406 = v554;
      if (v553 != v556)
      {
        v407 = (v558->__vftable[1].~facet)(v558);
        v408 = *(v275 + 32);
        if (!v408 || (v410 = *v408, v409 = v408[1], v408[1] = v409 + 1, v409 < v410))
        {
          v411 = *v275;
          v412 = *(v275 + 16);
          *(v275 + 16) = v412 + 1;
          *(v411 + v412) = v407;
          if (*(v275 + 16) == *(v275 + 8))
          {
            (*(v275 + 24))(v275, 2);
          }
        }

        v413 = (v553 + 1);
        v414 = v554 - v553 - 1;
        v415 = *(v275 + 32);
        if (v415)
        {
          v416 = *v415;
          v417 = v415[1];
          if (*v415 - v417 >= v414)
          {
            v418 = v554 - v553 - 1;
          }

          else
          {
            v418 = *v415 - v417;
          }

          v419 = &v414[v417];
          v415[1] = v419;
          if (v416 <= v417 || !v418)
          {
            v420 = SHIDWORD(v572[0].__locale_);
            goto LABEL_888;
          }
        }

        else
        {
          v418 = v554 - v553 - 1;
        }

        v421 = *(v275 + 16);
        do
        {
          v422 = *(v275 + 8) - v421;
          if (v422 < v418 + 1)
          {
            (*(v275 + 24))(v275, v418 + 2);
            v421 = *(v275 + 16);
            v422 = *(v275 + 8) - v421;
          }

          if (v422 >= v418)
          {
            v423 = v418;
          }

          else
          {
            v423 = v422;
          }

          if (v423)
          {
            memmove((*v275 + v421), v413, v423);
            v421 = *(v275 + 16);
          }

          v421 += v423;
          *(v275 + 16) = v421;
          v413 += v423;
          v32 = v418 > v422;
          v418 -= v423;
        }

        while (v32);
        v415 = *(v275 + 32);
        v420 = SHIDWORD(v572[0].__locale_);
        if (v415)
        {
          v416 = *v415;
          v419 = v415[1];
LABEL_888:
          v424 = v416 - v419;
          if (v416 - v419 >= v420)
          {
            v424 = v420;
          }

          v415[1] = &v419[v420];
          if (v416 > v419 && v424 != 0)
          {
            v421 = *(v275 + 16);
            v420 = v424;
            goto LABEL_924;
          }
        }

        else
        {
          do
          {
LABEL_924:
            v435 = *(v275 + 8) - v421;
            if (v435 < v420 + 1)
            {
              (*(v275 + 24))(v275, v420 + 2);
              v421 = *(v275 + 16);
              v435 = *(v275 + 8) - v421;
            }

            if (v435 >= v420)
            {
              v436 = v420;
            }

            else
            {
              v436 = v435;
            }

            if (v436)
            {
              memset((*v275 + v421), 48, v436);
              v421 = *(v275 + 16);
            }

            v421 += v436;
            *(v275 + 16) = v421;
            v32 = v420 > v435;
            v420 -= v436;
          }

          while (v32);
        }
      }

      if (v554 != v556)
      {
        v426 = v556 - v554;
        v427 = *(v275 + 32);
        if (v427)
        {
          v429 = *v427;
          v428 = v427[1];
          if (*v427 - v428 >= v426)
          {
            v430 = v556 - v554;
          }

          else
          {
            v430 = *v427 - v428;
          }

          v427[1] = v428 + v426;
          if (v429 > v428 && v430 != 0)
          {
            goto LABEL_912;
          }
        }

        else
        {
          v430 = v556 - v554;
LABEL_912:
          v432 = *(v275 + 16);
          do
          {
            v433 = *(v275 + 8) - v432;
            if (v433 < v430 + 1)
            {
              (*(v275 + 24))(v275, v430 + 2);
              v432 = *(v275 + 16);
              v433 = *(v275 + 8) - v432;
            }

            if (v433 >= v430)
            {
              v434 = v430;
            }

            else
            {
              v434 = v433;
            }

            if (v434)
            {
              memmove((*v275 + v432), v406, v434);
              v432 = *(v275 + 16);
            }

            v432 += v434;
            *(v275 + 16) = v432;
            v406 = (v406 + v434);
            v32 = v430 > v433;
            v430 -= v434;
          }

          while (v32);
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v275, v562, v560);
      v101 = v552;
      if (SHIBYTE(v571[2].__locale_) < 0)
      {
        operator delete(v571[0].__locale_);
      }

      std::locale::~locale(&v570);
LABEL_908:
      if (v572[1].__locale_ >= 0x101)
      {
        operator delete(v572[2].__locale_);
      }

      *v101 = v275;
LABEL_1157:
      v533 = *MEMORY[0x29EDCA608];
      return;
    case 0xAu:
      v75 = *a2;
      v568[0].__locale_ = 0;
      LODWORD(v568[1].__locale_) = -1;
      BYTE4(v568[1].__locale_) = 32;
      *(&v568[1].__locale_ + 5) = 0;
      HIBYTE(v568[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_272;
      }

      v76 = *a1;
      v77 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v568, *a1, 63);
      if (BYTE1(v568[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v568[0].__locale_) > 0xCu || ((1 << SBYTE1(v568[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1238;
        }
      }

      else
      {
        if (LODWORD(v568[1].__locale_) != -1 || SWORD1(v568[0].__locale_) <= -1)
        {
          v79 = v568[1].__locale_;
        }

        else
        {
          v79 = 6;
        }

        LODWORD(v568[1].__locale_) = v79;
      }

      *v76 = v77;
LABEL_272:
      v133 = *(a1 + 8);
      v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v568, v133);
      v136 = v160;
      v137 = *&v75;
      if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_1223;
      }

      memset(&v572[1], 170, 0x410uLL);
      if (v136 == -1)
      {
        v162 = 1074;
      }

      else
      {
        v162 = v136;
      }

      v572[0].__locale_ = v162;
      if (v162 < 1075)
      {
        v163 = v162 + 316;
        v572[1].__locale_ = v163;
        if ((v162 + 316) < 0x401)
        {
          v164 = &v572[3];
          v162 = v136;
LABEL_281:
          v572[2].__locale_ = v164;
          *&v165 = 0xAAAAAAAAAAAAAAAALL;
          *(&v165 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v571[0].__locale_ = v165;
          *&v571[2].__locale_ = v165;
          if ((*&v75 & 0x8000000000000000) != 0)
          {
            v168 = 45;
          }

          else
          {
            v166 = (v134 >> 3) & 3;
            if (v166 == 2)
            {
              v168 = 43;
            }

            else
            {
              v167 = v164;
              if (v166 != 3)
              {
                goto LABEL_288;
              }

              v168 = 32;
            }
          }

          *v164 = v168;
          v167 = (v164 + 1);
LABEL_288:
          v169 = fabs(v75);
          if (BYTE1(v134) > 0xEu)
          {
            if (BYTE1(v134) - 15 < 2)
            {
              v571[0].__locale_ = v167;
              v173 = MEMORY[0x29C267900](v167, v164 + v163, 2, v162, v169);
              v571[2].__locale_ = v173;
              v571[3].__locale_ = v173;
              if (v162)
              {
                v174 = v162 + 1;
              }

              else
              {
                v174 = 0;
              }

              v175 = (v173 - v174);
              goto LABEL_1086;
            }

            if (BYTE1(v134) == 17)
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              v176 = MEMORY[0x29C267900](v167, v164 + v163, 3, v162, v169);
              v571[3].__locale_ = v176;
              v177 = (v167 + 1);
              if ((v167 + 1) != v176)
              {
                v178 = v176 - v177;
                if (v176 - v177 >= 4)
                {
                  v179 = 6;
                  if (v178 < 6)
                  {
                    v179 = v176 - v177;
                  }

                  v180 = -v179;
                  while (*(v176 + v180) != 101)
                  {
                    if (++v180 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  goto LABEL_560;
                }

                goto LABEL_390;
              }
            }

            else
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              v176 = MEMORY[0x29C267900](v167, v164 + v163, 3, v162, v169);
              v571[3].__locale_ = v176;
              v177 = (v167 + 1);
              if ((v167 + 1) != v176)
              {
                v178 = v176 - v177;
                if (v176 - v177 >= 4)
                {
                  v203 = 6;
                  if (v178 < 6)
                  {
                    v203 = v176 - v177;
                  }

                  v204 = -v203;
                  while (*(v176 + v204) != 101)
                  {
                    if (++v204 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  if (*v177 != 46)
                  {
                    v177 = v176;
                  }

                  v571[1].__locale_ = v177;
                  v571[2].__locale_ = (v176 + v204);
                  *(v176 + v204) = 69;
                  goto LABEL_1087;
                }

LABEL_390:
                v571[2].__locale_ = v176;
                v205 = v176;
                v206 = memchr(v177, 46, v178);
                if (v206)
                {
                  v175 = v206;
                }

                else
                {
                  v175 = v205;
                }

LABEL_1086:
                v571[1].__locale_ = v175;
                goto LABEL_1087;
              }
            }
          }

          else
          {
            if (BYTE1(v134) > 0xBu)
            {
              if (BYTE1(v134) != 12)
              {
                if (BYTE1(v134) == 13)
                {
                  v571[0].__locale_ = v167;
                  v170 = MEMORY[0x29C267900](v167, v164 + v163, 1, v162, v169);
                  v571[3].__locale_ = v170;
                  if (*(v167 + 1) == 46)
                  {
                    v571[1].__locale_ = (v167 + 1);
                    v171 = v170 - v167 - 2;
                    if (v171 < 4)
                    {
LABEL_299:
                      v571[2].__locale_ = v170;
                    }

                    else
                    {
                      if (v171 >= 6)
                      {
                        v171 = 6;
                      }

                      v172 = -v171;
                      while (*(v170 + v172) != 101)
                      {
                        if (++v172 == -3)
                        {
                          goto LABEL_299;
                        }
                      }

                      v571[2].__locale_ = (v170 + v172);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v170;
                    v571[2].__locale_ = (v167 + 1);
                  }
                }

                else
                {
                  v571[0].__locale_ = v167;
                  v211 = MEMORY[0x29C267900](v167, v164 + v163, 1, v162, v169);
                  v571[3].__locale_ = v211;
                  v212 = (v167 + 1);
                  if (*(v167 + 1) == 46)
                  {
                    v571[1].__locale_ = (v167 + 1);
                    v213 = v211 - v167 - 2;
                    if (v213 < 4)
                    {
LABEL_408:
                      v212 = v211;
                    }

                    else
                    {
                      if (v213 >= 6)
                      {
                        v213 = 6;
                      }

                      v214 = -v213;
                      while (*(v211 + v214) != 101)
                      {
                        if (++v214 == -3)
                        {
                          goto LABEL_408;
                        }
                      }

                      v212 = (v211 + v214);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v211;
                  }

                  v571[2].__locale_ = v212;
                  *v212 = 69;
                }

                goto LABEL_1087;
              }

              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v167;
              if ((v136 & 0x80000000) != 0 || v162 == -1)
              {
                v198 = std::to_chars();
              }

              else
              {
                v198 = MEMORY[0x29C267900](v167, v164 + v163, 4, v162, v169);
              }

              v571[3].__locale_ = v198;
              v226 = (v167 + 1);
              if (*(v167 + 1) == 46)
              {
                v227 = (v198 - 2);
                v228 = memchr(v198 - 6, 112, 4uLL);
                if (v228)
                {
                  v229 = v228;
                }

                else
                {
                  v229 = v227;
                }

                v571[1].__locale_ = (v167 + 1);
                v571[2].__locale_ = v229;
                v226 = v229;
                if (v229 == v167)
                {
LABEL_509:
                  *v226 = 80;
                  goto LABEL_1087;
                }
              }

              else
              {
                v571[1].__locale_ = v198;
                v571[2].__locale_ = (v167 + 1);
              }

              do
              {
                v233 = *v167;
                if ((v233 - 97) < 6)
                {
                  LOBYTE(v233) = v233 - 32;
                }

                *v167 = v233;
                v167 = (v167 + 1);
              }

              while (v167 != v226);
              goto LABEL_509;
            }

            if (BYTE1(v134))
            {
              v571[0].__locale_ = v167;
              if ((v136 & 0x80000000) != 0)
              {
                v216 = std::to_chars();
              }

              else
              {
                v216 = MEMORY[0x29C267900](v167, v164 + v163, 4, v162, v169);
              }

              v571[3].__locale_ = v216;
              v254 = *(v167 + 1);
              v253 = (v167 + 1);
              if (v254 == 46)
              {
                v255 = (v216 - 2);
                v256 = memchr(v216 - 6, 112, 4uLL);
                v216 = v253;
                if (v256)
                {
                  v253 = v256;
                }

                else
                {
                  v253 = v255;
                }
              }

              v571[1].__locale_ = v216;
              v571[2].__locale_ = v253;
              goto LABEL_1087;
            }

            if ((v136 & 0x80000000) != 0)
            {
              v571[0].__locale_ = v167;
              v248 = std::to_chars(v167, v164 + v163, v161, v169);
              v249 = v248;
              v571[3].__locale_ = v248;
              v250 = v248 - v167;
              if (v248 - v167 < 4)
              {
LABEL_547:
                v252 = v248;
              }

              else
              {
                if (v250 >= 6)
                {
                  v250 = 6;
                }

                v251 = -v250;
                while (*(v248 + v251) != 101)
                {
                  if (++v251 == -3)
                  {
                    goto LABEL_547;
                  }
                }

                v252 = (v248 + v251);
              }

              v571[2].__locale_ = v252;
              v498 = memchr(v167 + 1, 46, v252 - (v167 + 1));
              if (v498)
              {
                v175 = v498;
              }

              else
              {
                v175 = v252;
              }

              if (v175 == v252)
              {
                v175 = v249;
              }

              goto LABEL_1086;
            }

            HIDWORD(v572[0].__locale_) = 0;
            v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[0].__locale_ = v167;
            v176 = MEMORY[0x29C267900](v167, v164 + v163, 3, v162, v169);
            v571[3].__locale_ = v176;
            v177 = (v167 + 1);
            if ((v167 + 1) != v176)
            {
              v178 = v176 - v177;
              if (v176 - v177 >= 4)
              {
                v181 = 6;
                if (v178 < 6)
                {
                  v181 = v176 - v177;
                }

                v180 = -v181;
                while (*(v176 + v180) != 101)
                {
                  if (++v180 == -3)
                  {
                    goto LABEL_390;
                  }
                }

LABEL_560:
                v258 = (v176 + v180);
                if (*v177 != 46)
                {
                  v177 = v176;
                }

                v571[1].__locale_ = v177;
                v571[2].__locale_ = v258;
                goto LABEL_1087;
              }

              goto LABEL_390;
            }
          }

          v571[1].__locale_ = v176;
          v571[2].__locale_ = v176;
LABEL_1087:
          if ((v134 & 0x20) != 0)
          {
            v499 = v571[1].__locale_;
            v500 = v571[3].__locale_;
            if (v571[1].__locale_ == v571[3].__locale_)
            {
              v502 = ++v571[3].__locale_;
              *v500 = 46;
              v501 = v571[2].__locale_;
              if (v571[2].__locale_ != v499)
              {
                if ((v571[2].__locale_ + 1) == v499)
                {
                  v503 = *v571[2].__locale_;
                  *v571[2].__locale_ = *(v571[2].__locale_ + 1);
                  *(v501 + 1) = v503;
                }

                else
                {
                  memmove(v502 - (v499 - v571[2].__locale_), v571[2].__locale_, v499 - v571[2].__locale_);
                  *v501 = 46;
                }
              }

              v571[1].__locale_ = v501;
              v571[2].__locale_ = (v501 + 1);
              v500 = v502;
            }

            else
            {
              v501 = v571[1].__locale_;
            }

            if (BYTE1(v134) - 17 <= 1)
            {
              if (v136 <= 1)
              {
                v504 = 1;
              }

              else
              {
                v504 = v136;
              }

              if ((v136 & 0x80000000) != 0)
              {
                v504 = 6;
              }

              if (v571[2].__locale_ == v500)
              {
                v505 = LODWORD(v571[0].__locale_) - v501;
              }

              else
              {
                v505 = -1;
              }

              v506 = v505 + v504;
              v507 = v571[2].__locale_ + ~v501;
              if (v507 < v506)
              {
                HIDWORD(v572[0].__locale_) += v506 - v507;
              }
            }
          }

          if ((v134 & 0x40) == 0)
          {
            v450 = v571[3].__locale_;
            v451 = v572[2].__locale_;
            v452 = v571[3].__locale_ - v572[2].__locale_;
            v453 = SHIDWORD(v572[0].__locale_);
            if (v571[3].__locale_ - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v134 >> 32)
            {
              v454 = *v133;
              if ((v134 & 7) == 4)
              {
                if (v572[2].__locale_ != v571[0].__locale_)
                {
                  v508 = *v572[2].__locale_;
                  v509 = *(v454 + 32);
                  if (!v509 || (v511 = *v509, v510 = v509[1], v509[1] = v510 + 1, v510 < v511))
                  {
                    v512 = *v454;
                    v513 = *(v454 + 16);
                    *(v454 + 16) = v513 + 1;
                    *(v512 + v513) = v508;
                    if (*(v454 + 16) == *(v454 + 8))
                    {
                      (*(v454 + 24))(v454, 2);
                    }
                  }

                  v451 = (v451 + 1);
                }

                v514 = v134 & 0xB8 | 3;
                v515 = 48;
              }

              else
              {
                v514 = v134;
                v515 = BYTE4(v136);
              }

              v480 = v134 & 0xFFFFFFFFFFFFFF00 | v514;
              v481 = v136 & 0xFFFFFF00FFFFFFFFLL | (v515 << 32);
              if (v453)
              {
LABEL_1012:
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v451, v450, v454, v480, v481, v452, v571[2].__locale_, v453);
LABEL_1154:
                if (v572[1].__locale_ >= 0x401)
                {
                  operator delete(v572[2].__locale_);
                }

                *v133 = v454;
                goto LABEL_1157;
              }

LABEL_1034:
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v451, v450 - v451, v454, v480, v481, v452);
              goto LABEL_1154;
            }

            if (HIDWORD(v572[0].__locale_))
            {
              v517 = v571[2].__locale_;
              if (v571[2].__locale_ != v571[3].__locale_)
              {
                v454 = *v133;
                v518 = v571[2].__locale_ - v572[2].__locale_;
                v519 = *(*v133 + 32);
                if (v519)
                {
                  v520 = *v519;
                  v521 = v519[1];
                  if (*v519 - v521 >= v518)
                  {
                    v522 = v571[2].__locale_ - v572[2].__locale_;
                  }

                  else
                  {
                    v522 = *v519 - v521;
                  }

                  v32 = v520 > v521;
                  v523 = v521 + v518;
                  v519[1] = v523;
                  if (!v32 || v522 == 0)
                  {
                    goto LABEL_1190;
                  }
                }

                else
                {
                  v522 = v571[2].__locale_ - v572[2].__locale_;
                }

                v538 = *(v454 + 16);
                do
                {
                  v539 = *(v454 + 8) - v538;
                  if (v539 < v522 + 1)
                  {
                    (*(v454 + 24))(v454, v522 + 2);
                    v538 = *(v454 + 16);
                    v539 = *(v454 + 8) - v538;
                  }

                  if (v539 >= v522)
                  {
                    v540 = v522;
                  }

                  else
                  {
                    v540 = v539;
                  }

                  if (v540)
                  {
                    memmove((*v454 + v538), v451, v540);
                    v538 = *(v454 + 16);
                  }

                  v538 += v540;
                  *(v454 + 16) = v538;
                  v451 = (v451 + v540);
                  v32 = v522 > v539;
                  v522 -= v540;
                }

                while (v32);
                v519 = *(v454 + 32);
                if (!v519)
                {
                  goto LABEL_1197;
                }

                v520 = *v519;
                v523 = v519[1];
LABEL_1190:
                v541 = v523 + v453;
                v519[1] = v523 + v453;
                v343 = v520 >= v523;
                v542 = v520 - v523;
                if (v542 == 0 || !v343)
                {
                  v545 = v450 - v517;
                  goto LABEL_1206;
                }

                if (v542 < v453)
                {
                  v453 = v542;
                }

                v538 = *(v454 + 16);
                do
                {
LABEL_1197:
                  v543 = *(v454 + 8) - v538;
                  if (v543 < v453 + 1)
                  {
                    (*(v454 + 24))(v454, v453 + 2);
                    v538 = *(v454 + 16);
                    v543 = *(v454 + 8) - v538;
                  }

                  if (v543 >= v453)
                  {
                    v544 = v453;
                  }

                  else
                  {
                    v544 = v543;
                  }

                  if (v544)
                  {
                    memset((*v454 + v538), 48, v544);
                    v538 = *(v454 + 16);
                  }

                  v538 += v544;
                  *(v454 + 16) = v538;
                  v32 = v453 > v543;
                  v453 -= v544;
                }

                while (v32);
                v519 = *(v454 + 32);
                v545 = v450 - v517;
                if (!v519)
                {
                  do
                  {
LABEL_1215:
                    v548 = *(v454 + 8) - v538;
                    if (v548 < v545 + 1)
                    {
                      (*(v454 + 24))(v454, v545 + 2);
                      v538 = *(v454 + 16);
                      v548 = *(v454 + 8) - v538;
                    }

                    if (v548 >= v545)
                    {
                      v549 = v545;
                    }

                    else
                    {
                      v549 = v548;
                    }

                    if (v549)
                    {
                      memmove((*v454 + v538), v517, v549);
                      v538 = *(v454 + 16);
                    }

                    v538 += v549;
                    *(v454 + 16) = v538;
                    v517 = (v517 + v549);
                    v32 = v545 > v548;
                    v545 -= v549;
                  }

                  while (v32);
                  goto LABEL_1154;
                }

                v520 = *v519;
                v541 = v519[1];
LABEL_1206:
                v546 = v520 - v541;
                if (v520 - v541 >= v545)
                {
                  v546 = v545;
                }

                v519[1] = v545 + v541;
                if (v520 <= v541 || v546 == 0)
                {
                  goto LABEL_1154;
                }

                v538 = *(v454 + 16);
                v545 = v546;
                goto LABEL_1215;
              }
            }

            v454 = *v133;
            v525 = *(*v133 + 32);
            if (!v525)
            {
              goto LABEL_1138;
            }

            v526 = *v525;
            v527 = v525[1];
            v528 = v527 + v452;
            if (*v525 - v527 < v452)
            {
              v452 = *v525 - v527;
            }

            v525[1] = v528;
            if (v526 > v527 && v452 != 0)
            {
LABEL_1138:
              v530 = *(v454 + 16);
              do
              {
                v531 = *(v454 + 8) - v530;
                if (v531 < v452 + 1)
                {
                  (*(v454 + 24))(v454, v452 + 2);
                  v530 = *(v454 + 16);
                  v531 = *(v454 + 8) - v530;
                }

                if (v531 >= v452)
                {
                  v532 = v452;
                }

                else
                {
                  v532 = v531;
                }

                if (v532)
                {
                  memmove((*v454 + v530), v451, v532);
                  v530 = *(v454 + 16);
                }

                v530 += v532;
                *(v454 + 16) = v530;
                v451 = (v451 + v532);
                v32 = v452 > v531;
                v452 -= v532;
              }

              while (v32);
              v525 = *(v454 + 32);
              if (!v525)
              {
                do
                {
LABEL_1169:
                  v536 = *(v454 + 8) - v530;
                  if (v536 < v453 + 1)
                  {
                    (*(v454 + 24))(v454, v453 + 2);
                    v530 = *(v454 + 16);
                    v536 = *(v454 + 8) - v530;
                  }

                  if (v536 >= v453)
                  {
                    v537 = v453;
                  }

                  else
                  {
                    v537 = v536;
                  }

                  if (v537)
                  {
                    memset((*v454 + v530), 48, v537);
                    v530 = *(v454 + 16);
                  }

                  v530 += v537;
                  *(v454 + 16) = v530;
                  v32 = v453 > v536;
                  v453 -= v537;
                }

                while (v32);
                goto LABEL_1154;
              }

              v526 = *v525;
              v528 = v525[1];
            }

            v534 = v526 - v528;
            if (v526 - v528 >= v453)
            {
              v534 = v453;
            }

            v525[1] = v528 + v453;
            if (v526 <= v528 || v534 == 0)
            {
              goto LABEL_1154;
            }

            v530 = *(v454 + 16);
            v453 = v534;
            goto LABEL_1169;
          }

          v454 = *v133;
          if ((*(v133 + 40) & 1) == 0)
          {
            MEMORY[0x29C267870](&v563);
            v516 = (v133 + 32);
            if (*(v133 + 40) == 1)
            {
              std::locale::operator=(v516, &v563);
            }

            else
            {
              std::locale::locale(v516, &v563);
              *(v133 + 40) = 1;
            }

            std::locale::~locale(&v563);
          }

LABEL_1153:
          std::locale::locale(&v570, (v133 + 32));
          std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v454, v572, v571, &v570, v134, v136);
          std::locale::~locale(&v570);
          goto LABEL_1154;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 1074;
        HIDWORD(v572[0].__locale_) = v162 - 1074;
        v163 = 1390;
        v572[1].__locale_ = 1390;
        v162 = 1074;
      }

      v164 = operator new(v163);
      goto LABEL_281;
    case 0xBu:
      v65 = *a2;
      v568[0].__locale_ = 0;
      LODWORD(v568[1].__locale_) = -1;
      BYTE4(v568[1].__locale_) = 32;
      *(&v568[1].__locale_ + 5) = 0;
      HIBYTE(v568[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_215;
      }

      v66 = *a1;
      v67 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v568, *a1, 63);
      if (BYTE1(v568[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v568[0].__locale_) > 0xCu || ((1 << SBYTE1(v568[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1238;
        }
      }

      else
      {
        if (LODWORD(v568[1].__locale_) != -1 || SWORD1(v568[0].__locale_) <= -1)
        {
          v69 = v568[1].__locale_;
        }

        else
        {
          v69 = 6;
        }

        LODWORD(v568[1].__locale_) = v69;
      }

      *v66 = v67;
LABEL_215:
      v133 = *(a1 + 8);
      v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v568, v133);
      v136 = v135;
      v137 = *&v65;
      if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
LABEL_1223:
        *v133 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v133, v134, v136, v137 < 0, 0);
        goto LABEL_1157;
      }

      memset(&v572[1], 170, 0x410uLL);
      if (v136 == -1)
      {
        v139 = 1074;
      }

      else
      {
        v139 = v136;
      }

      v572[0].__locale_ = v139;
      if (v139 < 1075)
      {
        v140 = v139 + 316;
        v572[1].__locale_ = v140;
        if ((v139 + 316) < 0x401)
        {
          v141 = &v572[3];
          v139 = v136;
LABEL_224:
          v572[2].__locale_ = v141;
          *&v142 = 0xAAAAAAAAAAAAAAAALL;
          *(&v142 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v571[0].__locale_ = v142;
          *&v571[2].__locale_ = v142;
          if ((*&v65 & 0x8000000000000000) != 0)
          {
            v145 = 45;
          }

          else
          {
            v143 = (v134 >> 3) & 3;
            if (v143 == 2)
            {
              v145 = 43;
            }

            else
            {
              v144 = v141;
              if (v143 != 3)
              {
                goto LABEL_231;
              }

              v145 = 32;
            }
          }

          *v141 = v145;
          v144 = (v141 + 1);
LABEL_231:
          v146 = fabs(v65);
          if (BYTE1(v134) > 0xEu)
          {
            if (BYTE1(v134) - 15 < 2)
            {
              v571[0].__locale_ = v144;
              v150 = MEMORY[0x29C267930](v144, v141 + v140, 2, v139, v146);
              v571[2].__locale_ = v150;
              v571[3].__locale_ = v150;
              if (v139)
              {
                v151 = v139 + 1;
              }

              else
              {
                v151 = 0;
              }

              v152 = (v150 - v151);
              goto LABEL_948;
            }

            if (BYTE1(v134) == 17)
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              v153 = MEMORY[0x29C267930](v144, v141 + v140, 3, v139, v146);
              v571[3].__locale_ = v153;
              v154 = (v144 + 1);
              if ((v144 + 1) != v153)
              {
                v155 = v153 - v154;
                if (v153 - v154 >= 4)
                {
                  v156 = 6;
                  if (v155 < 6)
                  {
                    v156 = v153 - v154;
                  }

                  v157 = -v156;
                  while (*(v153 + v157) != 101)
                  {
                    if (++v157 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  goto LABEL_557;
                }

                goto LABEL_380;
              }
            }

            else
            {
              HIDWORD(v572[0].__locale_) = 0;
              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              v153 = MEMORY[0x29C267930](v144, v141 + v140, 3, v139, v146);
              v571[3].__locale_ = v153;
              v154 = (v144 + 1);
              if ((v144 + 1) != v153)
              {
                v155 = v153 - v154;
                if (v153 - v154 >= 4)
                {
                  v199 = 6;
                  if (v155 < 6)
                  {
                    v199 = v153 - v154;
                  }

                  v200 = -v199;
                  while (*(v153 + v200) != 101)
                  {
                    if (++v200 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  if (*v154 != 46)
                  {
                    v154 = v153;
                  }

                  v571[1].__locale_ = v154;
                  v571[2].__locale_ = (v153 + v200);
                  *(v153 + v200) = 69;
LABEL_949:
                  if ((v134 & 0x20) != 0)
                  {
                    v441 = v571[1].__locale_;
                    v442 = v571[3].__locale_;
                    if (v571[1].__locale_ == v571[3].__locale_)
                    {
                      v444 = ++v571[3].__locale_;
                      *v442 = 46;
                      v443 = v571[2].__locale_;
                      if (v571[2].__locale_ != v441)
                      {
                        if ((v571[2].__locale_ + 1) == v441)
                        {
                          v445 = *v571[2].__locale_;
                          *v571[2].__locale_ = *(v571[2].__locale_ + 1);
                          *(v443 + 1) = v445;
                        }

                        else
                        {
                          memmove(v444 - (v441 - v571[2].__locale_), v571[2].__locale_, v441 - v571[2].__locale_);
                          *v443 = 46;
                        }
                      }

                      v571[1].__locale_ = v443;
                      v571[2].__locale_ = (v443 + 1);
                      v442 = v444;
                    }

                    else
                    {
                      v443 = v571[1].__locale_;
                    }

                    if (BYTE1(v134) - 17 <= 1)
                    {
                      if (v136 <= 1)
                      {
                        v446 = 1;
                      }

                      else
                      {
                        v446 = v136;
                      }

                      if ((v136 & 0x80000000) != 0)
                      {
                        v446 = 6;
                      }

                      if (v571[2].__locale_ == v442)
                      {
                        v447 = LODWORD(v571[0].__locale_) - v443;
                      }

                      else
                      {
                        v447 = -1;
                      }

                      v448 = v447 + v446;
                      v449 = v571[2].__locale_ + ~v443;
                      if (v449 < v448)
                      {
                        HIDWORD(v572[0].__locale_) += v448 - v449;
                      }
                    }
                  }

                  if ((v134 & 0x40) != 0)
                  {
                    v454 = *v133;
                    if ((*(v133 + 40) & 1) == 0)
                    {
                      MEMORY[0x29C267870](&v563);
                      v463 = (v133 + 32);
                      if (*(v133 + 40) == 1)
                      {
                        std::locale::operator=(v463, &v563);
                      }

                      else
                      {
                        std::locale::locale(v463, &v563);
                        *(v133 + 40) = 1;
                      }

                      std::locale::~locale(&v563);
                    }

                    goto LABEL_1153;
                  }

                  v450 = v571[3].__locale_;
                  v451 = v572[2].__locale_;
                  v452 = v571[3].__locale_ - v572[2].__locale_;
                  v453 = SHIDWORD(v572[0].__locale_);
                  if (v571[3].__locale_ - v572[2].__locale_ + SHIDWORD(v572[0].__locale_) < v134 >> 32)
                  {
                    v454 = *v133;
                    if ((v134 & 7) == 4)
                    {
                      if (v572[2].__locale_ != v571[0].__locale_)
                      {
                        v455 = *v572[2].__locale_;
                        v456 = *(v454 + 32);
                        if (!v456 || (v458 = *v456, v457 = v456[1], v456[1] = v457 + 1, v457 < v458))
                        {
                          v459 = *v454;
                          v460 = *(v454 + 16);
                          *(v454 + 16) = v460 + 1;
                          *(v459 + v460) = v455;
                          if (*(v454 + 16) == *(v454 + 8))
                          {
                            (*(v454 + 24))(v454, 2);
                          }
                        }

                        v451 = (v451 + 1);
                      }

                      v461 = v134 & 0xB8 | 3;
                      v462 = 48;
                    }

                    else
                    {
                      v461 = v134;
                      v462 = BYTE4(v136);
                    }

                    v480 = v134 & 0xFFFFFFFFFFFFFF00 | v461;
                    v481 = v136 & 0xFFFFFF00FFFFFFFFLL | (v462 << 32);
                    if (v453)
                    {
                      goto LABEL_1012;
                    }

                    goto LABEL_1034;
                  }

                  if (HIDWORD(v572[0].__locale_))
                  {
                    v464 = v571[2].__locale_;
                    if (v571[2].__locale_ != v571[3].__locale_)
                    {
                      v454 = *v133;
                      v465 = v571[2].__locale_ - v572[2].__locale_;
                      v466 = *(*v133 + 32);
                      if (v466)
                      {
                        v467 = *v466;
                        v468 = v466[1];
                        if (*v466 - v468 >= v465)
                        {
                          v469 = v571[2].__locale_ - v572[2].__locale_;
                        }

                        else
                        {
                          v469 = *v466 - v468;
                        }

                        v32 = v467 > v468;
                        v470 = v468 + v465;
                        v466[1] = v470;
                        if (!v32 || v469 == 0)
                        {
                          goto LABEL_1048;
                        }
                      }

                      else
                      {
                        v469 = v571[2].__locale_ - v572[2].__locale_;
                      }

                      v486 = *(v454 + 16);
                      do
                      {
                        v487 = *(v454 + 8) - v486;
                        if (v487 < v469 + 1)
                        {
                          (*(v454 + 24))(v454, v469 + 2);
                          v486 = *(v454 + 16);
                          v487 = *(v454 + 8) - v486;
                        }

                        if (v487 >= v469)
                        {
                          v488 = v469;
                        }

                        else
                        {
                          v488 = v487;
                        }

                        if (v488)
                        {
                          memmove((*v454 + v486), v451, v488);
                          v486 = *(v454 + 16);
                        }

                        v486 += v488;
                        *(v454 + 16) = v486;
                        v451 = (v451 + v488);
                        v32 = v469 > v487;
                        v469 -= v488;
                      }

                      while (v32);
                      v466 = *(v454 + 32);
                      if (!v466)
                      {
                        goto LABEL_1055;
                      }

                      v467 = *v466;
                      v470 = v466[1];
LABEL_1048:
                      v489 = v470 + v453;
                      v466[1] = v470 + v453;
                      v343 = v467 >= v470;
                      v490 = v467 - v470;
                      if (v490 == 0 || !v343)
                      {
                        v493 = v450 - v464;
                        goto LABEL_1064;
                      }

                      if (v490 < v453)
                      {
                        v453 = v490;
                      }

                      v486 = *(v454 + 16);
                      do
                      {
LABEL_1055:
                        v491 = *(v454 + 8) - v486;
                        if (v491 < v453 + 1)
                        {
                          (*(v454 + 24))(v454, v453 + 2);
                          v486 = *(v454 + 16);
                          v491 = *(v454 + 8) - v486;
                        }

                        if (v491 >= v453)
                        {
                          v492 = v453;
                        }

                        else
                        {
                          v492 = v491;
                        }

                        if (v492)
                        {
                          memset((*v454 + v486), 48, v492);
                          v486 = *(v454 + 16);
                        }

                        v486 += v492;
                        *(v454 + 16) = v486;
                        v32 = v453 > v491;
                        v453 -= v492;
                      }

                      while (v32);
                      v466 = *(v454 + 32);
                      v493 = v450 - v464;
                      if (!v466)
                      {
                        do
                        {
LABEL_1073:
                          v496 = *(v454 + 8) - v486;
                          if (v496 < v493 + 1)
                          {
                            (*(v454 + 24))(v454, v493 + 2);
                            v486 = *(v454 + 16);
                            v496 = *(v454 + 8) - v486;
                          }

                          if (v496 >= v493)
                          {
                            v497 = v493;
                          }

                          else
                          {
                            v497 = v496;
                          }

                          if (v497)
                          {
                            memmove((*v454 + v486), v464, v497);
                            v486 = *(v454 + 16);
                          }

                          v486 += v497;
                          *(v454 + 16) = v486;
                          v464 = (v464 + v497);
                          v32 = v493 > v496;
                          v493 -= v497;
                        }

                        while (v32);
                        goto LABEL_1154;
                      }

                      v467 = *v466;
                      v489 = v466[1];
LABEL_1064:
                      v494 = v467 - v489;
                      if (v467 - v489 >= v493)
                      {
                        v494 = v493;
                      }

                      v466[1] = v493 + v489;
                      if (v467 <= v489 || v494 == 0)
                      {
                        goto LABEL_1154;
                      }

                      v486 = *(v454 + 16);
                      v493 = v494;
                      goto LABEL_1073;
                    }
                  }

                  v454 = *v133;
                  v472 = *(*v133 + 32);
                  if (!v472)
                  {
                    goto LABEL_1000;
                  }

                  v473 = *v472;
                  v474 = v472[1];
                  v475 = v474 + v452;
                  if (*v472 - v474 < v452)
                  {
                    v452 = *v472 - v474;
                  }

                  v472[1] = v475;
                  if (v473 > v474 && v452 != 0)
                  {
LABEL_1000:
                    v477 = *(v454 + 16);
                    do
                    {
                      v478 = *(v454 + 8) - v477;
                      if (v478 < v452 + 1)
                      {
                        (*(v454 + 24))(v454, v452 + 2);
                        v477 = *(v454 + 16);
                        v478 = *(v454 + 8) - v477;
                      }

                      if (v478 >= v452)
                      {
                        v479 = v452;
                      }

                      else
                      {
                        v479 = v478;
                      }

                      if (v479)
                      {
                        memmove((*v454 + v477), v451, v479);
                        v477 = *(v454 + 16);
                      }

                      v477 += v479;
                      *(v454 + 16) = v477;
                      v451 = (v451 + v479);
                      v32 = v452 > v478;
                      v452 -= v479;
                    }

                    while (v32);
                    v472 = *(v454 + 32);
                    if (!v472)
                    {
                      do
                      {
LABEL_1027:
                        v484 = *(v454 + 8) - v477;
                        if (v484 < v453 + 1)
                        {
                          (*(v454 + 24))(v454, v453 + 2);
                          v477 = *(v454 + 16);
                          v484 = *(v454 + 8) - v477;
                        }

                        if (v484 >= v453)
                        {
                          v485 = v453;
                        }

                        else
                        {
                          v485 = v484;
                        }

                        if (v485)
                        {
                          memset((*v454 + v477), 48, v485);
                          v477 = *(v454 + 16);
                        }

                        v477 += v485;
                        *(v454 + 16) = v477;
                        v32 = v453 > v484;
                        v453 -= v485;
                      }

                      while (v32);
                      goto LABEL_1154;
                    }

                    v473 = *v472;
                    v475 = v472[1];
                  }

                  v482 = v473 - v475;
                  if (v473 - v475 >= v453)
                  {
                    v482 = v453;
                  }

                  v472[1] = v475 + v453;
                  if (v473 <= v475 || v482 == 0)
                  {
                    goto LABEL_1154;
                  }

                  v477 = *(v454 + 16);
                  v453 = v482;
                  goto LABEL_1027;
                }

LABEL_380:
                v571[2].__locale_ = v153;
                v201 = v153;
                v202 = memchr(v154, 46, v155);
                if (v202)
                {
                  v152 = v202;
                }

                else
                {
                  v152 = v201;
                }

LABEL_948:
                v571[1].__locale_ = v152;
                goto LABEL_949;
              }
            }
          }

          else
          {
            if (BYTE1(v134) > 0xBu)
            {
              if (BYTE1(v134) != 12)
              {
                if (BYTE1(v134) == 13)
                {
                  v571[0].__locale_ = v144;
                  v147 = MEMORY[0x29C267930](v144, v141 + v140, 1, v139, v146);
                  v571[3].__locale_ = v147;
                  if (*(v144 + 1) == 46)
                  {
                    v571[1].__locale_ = (v144 + 1);
                    v148 = v147 - v144 - 2;
                    if (v148 < 4)
                    {
LABEL_242:
                      v571[2].__locale_ = v147;
                    }

                    else
                    {
                      if (v148 >= 6)
                      {
                        v148 = 6;
                      }

                      v149 = -v148;
                      while (*(v147 + v149) != 101)
                      {
                        if (++v149 == -3)
                        {
                          goto LABEL_242;
                        }
                      }

                      v571[2].__locale_ = (v147 + v149);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v147;
                    v571[2].__locale_ = (v144 + 1);
                  }
                }

                else
                {
                  v571[0].__locale_ = v144;
                  v207 = MEMORY[0x29C267930](v144, v141 + v140, 1, v139, v146);
                  v571[3].__locale_ = v207;
                  v208 = (v144 + 1);
                  if (*(v144 + 1) == 46)
                  {
                    v571[1].__locale_ = (v144 + 1);
                    v209 = v207 - v144 - 2;
                    if (v209 < 4)
                    {
LABEL_400:
                      v208 = v207;
                    }

                    else
                    {
                      if (v209 >= 6)
                      {
                        v209 = 6;
                      }

                      v210 = -v209;
                      while (*(v207 + v210) != 101)
                      {
                        if (++v210 == -3)
                        {
                          goto LABEL_400;
                        }
                      }

                      v208 = (v207 + v210);
                    }
                  }

                  else
                  {
                    v571[1].__locale_ = v207;
                  }

                  v571[2].__locale_ = v208;
                  *v208 = 69;
                }

                goto LABEL_949;
              }

              v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v571[0].__locale_ = v144;
              if ((v136 & 0x80000000) != 0 || v139 == -1)
              {
                v197 = std::to_chars();
              }

              else
              {
                v197 = MEMORY[0x29C267930](v144, v141 + v140, 4, v139, v146);
              }

              v571[3].__locale_ = v197;
              v222 = (v144 + 1);
              if (*(v144 + 1) == 46)
              {
                v223 = (v197 - 2);
                v224 = memchr(v197 - 6, 112, 4uLL);
                if (v224)
                {
                  v225 = v224;
                }

                else
                {
                  v225 = v223;
                }

                v571[1].__locale_ = (v144 + 1);
                v571[2].__locale_ = v225;
                v222 = v225;
                if (v225 == v144)
                {
LABEL_504:
                  *v222 = 80;
                  goto LABEL_949;
                }
              }

              else
              {
                v571[1].__locale_ = v197;
                v571[2].__locale_ = (v144 + 1);
              }

              do
              {
                v232 = *v144;
                if ((v232 - 97) < 6)
                {
                  LOBYTE(v232) = v232 - 32;
                }

                *v144 = v232;
                v144 = (v144 + 1);
              }

              while (v144 != v222);
              goto LABEL_504;
            }

            if (BYTE1(v134))
            {
              v571[0].__locale_ = v144;
              if ((v136 & 0x80000000) != 0)
              {
                v215 = std::to_chars();
              }

              else
              {
                v215 = MEMORY[0x29C267930](v144, v141 + v140, 4, v139, v146);
              }

              v571[3].__locale_ = v215;
              v245 = *(v144 + 1);
              v244 = (v144 + 1);
              if (v245 == 46)
              {
                v246 = (v215 - 2);
                v247 = memchr(v215 - 6, 112, 4uLL);
                v215 = v244;
                if (v247)
                {
                  v244 = v247;
                }

                else
                {
                  v244 = v246;
                }
              }

              v571[1].__locale_ = v215;
              v571[2].__locale_ = v244;
              goto LABEL_949;
            }

            if ((v136 & 0x80000000) != 0)
            {
              v571[0].__locale_ = v144;
              v239 = std::to_chars(v144, v141 + v140, v138, v146);
              v240 = v239;
              v571[3].__locale_ = v239;
              v241 = v239 - v144;
              if (v239 - v144 < 4)
              {
LABEL_534:
                v243 = v239;
              }

              else
              {
                if (v241 >= 6)
                {
                  v241 = 6;
                }

                v242 = -v241;
                while (*(v239 + v242) != 101)
                {
                  if (++v242 == -3)
                  {
                    goto LABEL_534;
                  }
                }

                v243 = (v239 + v242);
              }

              v571[2].__locale_ = v243;
              v440 = memchr(v144 + 1, 46, v243 - (v144 + 1));
              if (v440)
              {
                v152 = v440;
              }

              else
              {
                v152 = v243;
              }

              if (v152 == v243)
              {
                v152 = v240;
              }

              goto LABEL_948;
            }

            HIDWORD(v572[0].__locale_) = 0;
            v571[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v571[0].__locale_ = v144;
            v153 = MEMORY[0x29C267930](v144, v141 + v140, 3, v139, v146);
            v571[3].__locale_ = v153;
            v154 = (v144 + 1);
            if ((v144 + 1) != v153)
            {
              v155 = v153 - v154;
              if (v153 - v154 >= 4)
              {
                v158 = 6;
                if (v155 < 6)
                {
                  v158 = v153 - v154;
                }

                v157 = -v158;
                while (*(v153 + v157) != 101)
                {
                  if (++v157 == -3)
                  {
                    goto LABEL_380;
                  }
                }

LABEL_557:
                v257 = (v153 + v157);
                if (*v154 != 46)
                {
                  v154 = v153;
                }

                v571[1].__locale_ = v154;
                v571[2].__locale_ = v257;
                goto LABEL_949;
              }

              goto LABEL_380;
            }
          }

          v571[1].__locale_ = v153;
          v571[2].__locale_ = v153;
          goto LABEL_949;
        }
      }

      else
      {
        LODWORD(v572[0].__locale_) = 1074;
        HIDWORD(v572[0].__locale_) = v139 - 1074;
        v140 = 1390;
        v572[1].__locale_ = 1390;
        v139 = 1074;
      }

      v141 = operator new(v140);
      goto LABEL_224;
    case 0xCu:
      v80 = *a2;
      LODWORD(v572[0].__locale_) = 1;
      *(&v572[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_128;
      }

      v81 = *a1;
      v82 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 40);
      if (BYTE1(v572[0].__locale_) >= 2u && BYTE1(v572[0].__locale_) != 19)
      {
        goto LABEL_1233;
      }

      *v81 = v82;
LABEL_128:
      v13 = *(a1 + 8);
      v83 = strlen(v80);
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v80, v83, v13);
      goto LABEL_136;
    case 0xDu:
      v17 = *a2;
      v18 = *(a2 + 1);
      LODWORD(v572[0].__locale_) = 1;
      *(&v572[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v572[1].__locale_) = 32;
      *(&v572[1].__locale_ + 5) = 0;
      HIBYTE(v572[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_18;
      }

      v19 = *a1;
      v20 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v572, *a1, 40);
      if (BYTE1(v572[0].__locale_) >= 2u && BYTE1(v572[0].__locale_) != 19)
      {
LABEL_1233:
        std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
      }

      *v19 = v20;
LABEL_18:
      v13 = *(a1 + 8);
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v572, v17, v18, v13);
LABEL_136:
      *v13 = v16;
      goto LABEL_1157;
    case 0xEu:
      v9 = *a2;
      v571[0].__locale_ = 0;
      LODWORD(v571[1].__locale_) = -1;
      BYTE4(v571[1].__locale_) = 32;
      *(&v571[1].__locale_ + 5) = 0;
      HIBYTE(v571[1].__locale_) = 0;
      if (**(a1 + 16) == 1)
      {
        v10 = *a1;
        v11 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v571, *a1, 36);
        if (BYTE1(v571[0].__locale_) - 8 >= 2 && BYTE1(v571[0].__locale_) != 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *v10 = v11;
      }

      v13 = *(a1 + 8);
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v571, v13);
      v572[0].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      v572[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      *(&v572[1].__locale_ + 7) = -1431655766;
      if ((v14 & 0xFF00) == 0x900)
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x720, v15, v572, &v572[2].__locale_ + 3, "0X", 0x10u);
      }

      else
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x620, v15, v572, &v572[2].__locale_ + 3, "0x", 0x10u);
      }

      goto LABEL_136;
    case 0xFu:
      v84 = *a1;
      v85 = *a2;
      v86 = *(a2 + 1);
      v87 = *MEMORY[0x29EDCA608];
      v88 = *(a1 + 8);

      v86(v84, v88, v85);
      return;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void sub_296E7D1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, unint64_t a38, void *__p)
{
  if (a38 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v37[0] = *a2;
  v37[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v37) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v37[0];
  v10 = a3;
  if (v37[0] >= v3)
  {
    goto LABEL_9;
  }

  v11 = *v37[0];
  switch(v11)
  {
    case '<':
      v12 = 1;
LABEL_19:
      *a1 = *a1 & 0xF8 | v12;
      v14 = v9 - v4;
      if (v9 - v4 == 1)
      {
        v15 = *v4;
        if (v15 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }

        *(a1 + 12) = v15;
      }

      else if (v9 != v4)
      {
        memmove((a1 + 12), v4, v9 - v4);
        v10 = a3;
      }

      v4 += v14 + 1;
      if (v4 == v3)
      {
        return v4;
      }

      goto LABEL_25;
    case '>':
      v12 = 3;
      goto LABEL_19;
    case '^':
      v12 = 2;
      goto LABEL_19;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v13 = 1;
LABEL_15:
      *a1 = *a1 & 0xF8 | v13;
      if (++v4 == v3)
      {
        return v4;
      }

      break;
    case '>':
      v13 = 3;
      goto LABEL_15;
    case '^':
      v13 = 2;
      goto LABEL_15;
  }

LABEL_25:
  v16 = v10;
  if (v10)
  {
    v22 = *v4;
    switch(v22)
    {
      case ' ':
        *a1 |= 0x18u;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '+':
        *a1 = *a1 & 0xE7 | 0x10;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '-':
        *a1 = *a1 & 0xE7 | 8;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
    }
  }

  if ((v16 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((v16 & 4) == 0)
  {
    goto LABEL_34;
  }

  v17 = *v4;
  if (v17 != 48)
  {
    goto LABEL_35;
  }

  if ((*a1 & 7) == 0)
  {
    *a1 |= 4u;
  }

  if (++v4 != v3)
  {
LABEL_34:
    v17 = *v4;
LABEL_35:
    if (v17 == 123)
    {
      if (v4 + 1 == v3)
      {
        goto LABEL_124;
      }

      v23 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
      if (v3 == v23 || *v23 != 125)
      {
        goto LABEL_123;
      }

      v20 = v23 + 1;
      *(a1 + 2) |= 0x4000u;
    }

    else
    {
      LODWORD(v18) = v17 - 48;
      if (v17 == 48)
      {
        std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
      }

      if ((v17 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_55;
      }

      v19 = v4 + 9;
      if (v3 - v4 <= 9)
      {
        v19 = v3;
      }

      v20 = v4 + 1;
      if (v4 + 1 == v19)
      {
        v19 = v4 + 1;
LABEL_68:
        if (v19 == v3)
        {
          *(a1 + 4) = v18;
          return v3;
        }

        v28 = *v19;
        if ((v28 - 48) > 9)
        {
          v20 = v19;
        }

        else
        {
          v18 = v28 + 10 * v18 - 48;
          if (v18 >> 31 || (v20 = v4 + 2, v4 + 2 != v3) && *v20 - 48 <= 9)
          {
LABEL_91:
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }

      else
      {
        v4 = v19 - 1;
        while (1)
        {
          v21 = *v20;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v18) = v21 + 10 * v18 - 48;
          if (++v20 == v19)
          {
            goto LABEL_68;
          }
        }
      }
    }

    *(a1 + 4) = v18;
    v4 = v20;
    if (v20 == v3)
    {
      return v4;
    }

LABEL_55:
    if ((v16 & 8) == 0 || *v4 != 46)
    {
      goto LABEL_96;
    }

    v24 = v4 + 1;
    if (v4 + 1 == v3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v25 = *v24;
    if (v25 == 123)
    {
      if (v4 + 2 != v3)
      {
        v26 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
        if (v3 != v26 && *v26 == 125)
        {
          v4 = v26 + 1;
          *(a1 + 2) |= 0x8000u;
          *(a1 + 8) = v27;
          goto LABEL_95;
        }

LABEL_123:
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

LABEL_124:
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    if ((v25 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    if (v3 - v24 <= 9)
    {
      v29 = v3;
    }

    else
    {
      v29 = v4 + 10;
    }

    LODWORD(v30) = v25 - 48;
    v4 += 2;
    if (v4 != v29)
    {
      v24 = v29 - 1;
      while (1)
      {
        v31 = *v4;
        if ((v31 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_94;
        }

        LODWORD(v30) = v31 + 10 * v30 - 48;
        if (++v4 == v29)
        {
          goto LABEL_86;
        }
      }
    }

    v29 = v4;
LABEL_86:
    if (v29 == v3)
    {
      v4 = v3;
    }

    else
    {
      v32 = *v29;
      if ((v32 - 48) > 9)
      {
        v4 = v29;
      }

      else
      {
        v30 = v32 + 10 * v30 - 48;
        if (v30 >> 31)
        {
          goto LABEL_91;
        }

        v4 = v24 + 2;
        if (v24 + 2 != v3 && *v4 - 48 <= 9)
        {
          goto LABEL_91;
        }
      }
    }

LABEL_94:
    *(a1 + 8) = v30;
    *(a1 + 2) &= ~0x8000u;
LABEL_95:
    if (v4 == v3)
    {
      return v4;
    }

LABEL_96:
    if ((v16 & 0x10) != 0)
    {
      v33 = *v4;
      if (v33 != 76)
      {
LABEL_100:
        v34 = v33 - 65;
        v35 = 12;
        switch(v34)
        {
          case 0:
            goto LABEL_118;
          case 1:
            v35 = 3;
            goto LABEL_118;
          case 4:
            v35 = 14;
            goto LABEL_118;
          case 5:
            v35 = 16;
            goto LABEL_118;
          case 6:
            v35 = 18;
            goto LABEL_118;
          case 15:
            v35 = 9;
            goto LABEL_118;
          case 23:
            v35 = 7;
            goto LABEL_118;
          case 32:
            v35 = 11;
            goto LABEL_118;
          case 33:
            v35 = 2;
            goto LABEL_118;
          case 34:
            v35 = 10;
            goto LABEL_118;
          case 35:
            v35 = 5;
            goto LABEL_118;
          case 36:
            v35 = 13;
            goto LABEL_118;
          case 37:
            v35 = 15;
            goto LABEL_118;
          case 38:
            v35 = 17;
            goto LABEL_118;
          case 46:
            v35 = 4;
            goto LABEL_118;
          case 47:
            v35 = 8;
            goto LABEL_118;
          case 50:
            v35 = 1;
            goto LABEL_118;
          case 55:
            v35 = 6;
LABEL_118:
            *(a1 + 1) = v35;
            ++v4;
            break;
          default:
            break;
        }

        if (v4 != v3 && *v4 != 125)
        {
          std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
        }

        return v4;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v33 = *v4;
    goto LABEL_100;
  }

  return v4;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_296EB9CF0;
  strcpy(v21.__r_.__value_.__l.__data_, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v21, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v23 = v3->__r_.__value_.__r.__words[2];
  v22 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v5 = *(&v22 + 1);
    v6 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - *(&v22 + 1) < 0x14)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      v8 = *(&v22 + 1) + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v23 & 0x7FFFFFFFFFFFFFFFLL) < *(&v22 + 1) + 20 - v6)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v22;
      if (v6 > 0x3FFFFFFFFFFFFFF2)
      {
        v12 = 0;
LABEL_16:
        v13 = operator new(v7);
        v14 = v13;
        if (v5)
        {
          memmove(v13, v9, v5);
        }

        v15 = &v14[v5];
        *v15 = *" formatting argument";
        *(v15 + 4) = 1953391981;
        if (!v12)
        {
          operator delete(v9);
        }

        *(&v22 + 1) = v8;
        v23 = v7 | 0x8000000000000000;
        *&v22 = v14;
        v16 = &v14[v8];
LABEL_27:
        *v16 = 0;
        v25 = v23;
        v24 = v22;
        v23 = 0;
        v22 = 0uLL;
        if (v25 >= 0)
        {
          v20 = &v24;
        }

        else
        {
          v20 = v24;
        }

        std::__throw_format_error[abi:ne200100](v20);
      }

LABEL_7:
      v10 = 2 * v6;
      if (v8 > 2 * v6)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v7 = v11;
      }

      else
      {
        v7 = 23;
      }

      v12 = v6 == 22;
      goto LABEL_16;
    }

    v17 = v22;
  }

  else
  {
    if ((SHIBYTE(v23) - 3) < 0x14)
    {
      v8 = SHIBYTE(v23) + 20;
      v9 = &v22;
      v6 = 22;
      goto LABEL_7;
    }

    v17 = &v22;
  }

  v18 = v17 + v5;
  *v18 = *" formatting argument";
  *(v18 + 4) = 1953391981;
  v19 = v5 + 20;
  if (SHIBYTE(v23) < 0)
  {
    *(&v22 + 1) = v5 + 20;
  }

  else
  {
    HIBYTE(v23) = v19 & 0x7F;
  }

  v16 = v17 + v19;
  goto LABEL_27;
}

void sub_296E7DD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  v41.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v41.__r_.__value_.__r.__words[1] = xmmword_296EB9D00;
  strcpy(v41.__r_.__value_.__l.__data_, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v41, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
    v8 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v42.__r_.__value_.__l.__size_ < 0x14)
    {
      v9 = 0x7FFFFFFFFFFFFFF7;
      v10 = v42.__r_.__value_.__l.__size_ + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v42.__r_.__value_.__l.__size_ + 20 - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v42.__r_.__value_.__r.__words[0];
      if (v8 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0;
LABEL_16:
        v15 = operator new(v9);
        v16 = v15;
        if (size)
        {
          memmove(v15, v11, size);
        }

        v17 = v16 + size;
        *v17 = *" does not allow the ";
        *(v17 + 16) = 543516788;
        if (!v14)
        {
          operator delete(v11);
        }

        v42.__r_.__value_.__l.__size_ = v10;
        v42.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v16;
        v18 = (v16 + v10);
LABEL_27:
        *v18 = 0;
        v43 = v42;
        memset(&v42, 0, sizeof(v42));
        v22 = strlen(a2);
        v23 = std::string::append(&v43, a2, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v45 = v23->__r_.__value_.__r.__words[2];
        v44 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = SHIBYTE(v45);
        if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
        {
          v25 = *(&v44 + 1);
          v26 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&v44 + 1) < 7)
          {
            v27 = 0x7FFFFFFFFFFFFFF7;
            v28 = *(&v44 + 1) + 7;
            if (0x7FFFFFFFFFFFFFF7 - (v45 & 0x7FFFFFFFFFFFFFFFLL) < *(&v44 + 1) + 7 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v29 = v44;
            if (v26 >= 0x3FFFFFFFFFFFFFF3)
            {
              v32 = 0;
LABEL_42:
              v33 = operator new(v27);
              v34 = v33;
              if (v25)
              {
                memmove(v33, v29, v25);
              }

              v35 = &v34[v25];
              *(v35 + 3) = 1852795252;
              *v35 = 1953525536;
              if (!v32)
              {
                operator delete(v29);
              }

              *(&v44 + 1) = v28;
              v45 = v27 | 0x8000000000000000;
              *&v44 = v34;
              v36 = &v34[v28];
LABEL_55:
              *v36 = 0;
              v47 = v45;
              v46 = v44;
              v45 = 0;
              v44 = 0uLL;
              if (v47 >= 0)
              {
                v40 = &v46;
              }

              else
              {
                v40 = v46;
              }

              std::__throw_format_error[abi:ne200100](v40);
            }

LABEL_33:
            v30 = 2 * v26;
            if (v28 > 2 * v26)
            {
              v30 = v28;
            }

            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            if (v30 >= 0x17)
            {
              v27 = v31;
            }

            else
            {
              v27 = 23;
            }

            v32 = v26 == 22;
            goto LABEL_42;
          }

          v37 = v44;
        }

        else
        {
          if ((SHIBYTE(v45) - 16) < 7)
          {
            v28 = SHIBYTE(v45) + 7;
            v29 = &v44;
            v26 = 22;
            goto LABEL_33;
          }

          v37 = &v44;
        }

        v38 = (v37 + v25);
        *(v38 + 3) = 1852795252;
        *v38 = 1953525536;
        v39 = v25 + 7;
        if (SHIBYTE(v45) < 0)
        {
          *(&v44 + 1) = v25 + 7;
        }

        else
        {
          HIBYTE(v45) = v39 & 0x7F;
        }

        v36 = v37 + v39;
        goto LABEL_55;
      }

LABEL_7:
      v12 = 2 * v8;
      if (v10 > 2 * v8)
      {
        v12 = v10;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v9 = v13;
      }

      else
      {
        v9 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_16;
    }

    v19 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 3) < 0x14)
    {
      v10 = SHIBYTE(v42.__r_.__value_.__r.__words[2]) + 20;
      v11 = &v42;
      v8 = 22;
      goto LABEL_7;
    }

    v19 = &v42;
  }

  v20 = v19 + size;
  *v20 = *" does not allow the ";
  *(v20 + 4) = 543516788;
  v21 = size + 20;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    v42.__r_.__value_.__l.__size_ = size + 20;
  }

  else
  {
    *(&v42.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v18 = v19 + v21;
  goto LABEL_27;
}

void sub_296E7E15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v26[23] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v12) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v2 = *v13;
      v9 = *(v13 + 8);
      LOBYTE(v12) = *(v13 + 16);
      *v22 = *(v13 + 17);
      *&v22[7] = *(v13 + 24);
    }

    else
    {
      v11 = a2[2];
      v12 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v2 = *(v11 + 16 * v9);
      v9 = *(v11 + 16 * v9 + 8);
    }

    v23 = v2;
    v24 = v9;
    v25 = v12;
    *v26 = *v22;
    *&v26[7] = *&v22[7];
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v17) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v2 = *v18;
    v14 = *(v18 + 8);
    LOBYTE(v17) = *(v18 + 16);
    *v22 = *(v18 + 17);
    *&v22[7] = *(v18 + 24);
  }

  else
  {
    v16 = a2[2];
    v17 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v2 = *(v16 + 16 * v14);
    v14 = *(v16 + 16 * v14 + 8);
  }

  v23 = v2;
  v24 = v14;
  v25 = v17;
  *v26 = *v22;
  *&v26[7] = *&v22[7];
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v23);
LABEL_16:
  v19 = *MEMORY[0x29EDCA608];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v15[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v14[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v7;
    *v14 = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &__src, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &__src + 11;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, &__src, &__src + 11, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *(&__src + 5) = 0xAAAAAAAAAAAAAAAALL;
  *&__src = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, &__src, &__src + 13, v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, a2, a3, a4, a5, v19);
  return a3;
}

uint64_t std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v9 >> 1;
        v9 -= v9 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v11 = *(a3 + 32);
        if (v11)
        {
          goto LABEL_17;
        }

LABEL_39:
        v19 = a2;
        goto LABEL_40;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v11 = *(a3 + 32);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_17:
      v18 = *v11;
      v17 = v11[1];
      if (*v11 - v17 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *v11 - v17;
      }

      v11[1] = v17 + a2;
      if (v18 <= v17 || v19 == 0)
      {
LABEL_25:
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
        return a3;
      }

LABEL_40:
      v27 = *(a3 + 16);
      do
      {
        v28 = *(a3 + 8) - v27;
        if (v28 < v19 + 1)
        {
          (*(a3 + 24))(a3, v19 + 2);
          v27 = *(a3 + 16);
          v28 = *(a3 + 8) - v27;
        }

        if (v28 >= v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          memmove((*a3 + v27), __src, v29);
          v27 = *(a3 + 16);
        }

        v27 += v29;
        *(a3 + 16) = v27;
        __src += v29;
        v23 = v19 > v28;
        v19 -= v29;
      }

      while (v23);
      goto LABEL_25;
    }

    v9 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v11 = *(a3 + 32);
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v12 = *(a3 + 32);
  if (v12)
  {
    v14 = *v12;
    v13 = v12[1];
    if (*v12 - v13 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *v12 - v13;
    }

    v12[1] = v13 + a2;
    if (v14 <= v13 || v15 == 0)
    {
      return a3;
    }
  }

  else
  {
    v15 = a2;
  }

  v22 = *(a3 + 16);
  do
  {
    v24 = *(a3 + 8) - v22;
    if (v24 < v15 + 1)
    {
      (*(a3 + 24))(a3, v15 + 2);
      v22 = *(a3 + 16);
      v24 = *(a3 + 8) - v22;
    }

    if (v24 >= v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      memmove((*a3 + v22), __src, v25);
      v22 = *(a3 + 16);
    }

    v22 += v25;
    *(a3 + 16) = v22;
    __src += v25;
    v23 = v15 > v24;
    v15 -= v25;
  }

  while (v23);
  return a3;
}

unint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v147 = a1;
  v148 = a2;
  memset(v149, 170, sizeof(v149));
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v147);
  v6 = v5 & 0x7FFFFFFF;
  LODWORD(v149[0]) = v5 & 0x7FFFFFFF;
  v7 = (v5 << 11) | 0x7FF;
  v8 = 1496;
  v9 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v7 >= v13)
    {
      v9 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  while (v8);
  if (v9 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100] || (v14 = *(v9 - 1), ((v14 >> 4) & 0x7F) + (v14 >> 11) < v6))
  {
    LOBYTE(v15) = 16;
    BYTE4(v149[0]) = 16;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
  }

  else
  {
    v15 = v14 & 0xF;
    BYTE4(v149[0]) = v14 & 0xF;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
    if (v15 == 9)
    {
      v27 = 3;
      goto LABEL_25;
    }

    if (v15 == 3)
    {
      v27 = 2;
      goto LABEL_25;
    }
  }

  v19 = 201;
  v20 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v21 = v19 >> 1;
    v22 = &v20[v19 >> 1];
    v24 = *v22;
    v23 = v22 + 1;
    v19 += ~(v19 >> 1);
    if (v7 >= v24)
    {
      v20 = v23;
    }

    else
    {
      v19 = v21;
    }
  }

  while (v19);
  if (v20 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v25 = *(v20 - 1);
    v26 = (v25 & 3) == 0 && ((v25 >> 2) & 0x1FF) + (v25 >> 11) >= v6;
    if (v26)
    {
      v27 = 1;
LABEL_25:
      LODWORD(v149[1]) = v27;
    }
  }

  if (a1 == v17)
  {
    return 0;
  }

  if (v147 != v148)
  {
    result = 0;
    while (1)
    {
      v30 = v6;
      v31 = v147;
      if (v147 == v148)
      {
        v35 = v148;
        if (v6 - 262142 >= 0xFFFC1102)
        {
          goto LABEL_323;
        }

LABEL_334:
        v104 = result + 1;
        if (v18)
        {
          goto LABEL_29;
        }

LABEL_335:
        if (v104 <= v16)
        {
          goto LABEL_29;
        }

        return result;
      }

      v33 = v149[1];
      v32 = HIDWORD(v149[1]);
      v34 = v149[2];
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v35 = v31;
              v36 = v15;
              v37 = *v31;
              v38 = (__clz(v37 ^ 0xFF) - 24);
              if (v38 > 2)
              {
                if (v38 == 3)
                {
                  if (v148 - v35 >= 3)
                  {
                    v45 = (v35[1] & 0xC0) == 128;
                    if ((v35[1] & 0xC0) == 0x80)
                    {
                      v45 = (v35[2] & 0xC0) == 128;
                    }

                    if (v45)
                    {
                      v147 = v35 + 2;
                      v46 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6);
                      v31 = v35 + 3;
                      v147 = v35 + 3;
                      if (v46 >= 0x800)
                      {
                        if ((v46 & 0xF800) == 0xD800)
                        {
                          v37 = -2147418115;
                        }

                        else
                        {
                          v37 = v46 | v35[2] & 0x3F;
                        }

                        goto LABEL_69;
                      }

                      goto LABEL_68;
                    }
                  }

LABEL_67:
                  v31 = v35 + 1;
                  v147 = v35 + 1;
LABEL_68:
                  v37 = -2147418115;
                  goto LABEL_69;
                }

                if (v38 != 4 || v148 - v35 < 4)
                {
                  goto LABEL_67;
                }

                v42 = (v35[1] & 0xC0) == 128;
                if ((v35[1] & 0xC0) == 0x80)
                {
                  v42 = (v35[2] & 0xC0) == 128;
                  if ((v35[2] & 0xC0) == 0x80)
                  {
                    v42 = (v35[3] & 0xC0) == 128;
                  }
                }

                if (!v42)
                {
                  goto LABEL_67;
                }

                v147 = v35 + 2;
                v43 = ((v37 & 7) << 12) | ((v35[1] & 0x3F) << 6);
                v147 = v35 + 3;
                v44 = v35[2];
                v31 = v35 + 4;
                v147 = v35 + 4;
                if (v43 < 0x400)
                {
                  goto LABEL_68;
                }

                v37 = v35[3] & 0x3F | ((v43 | v44 & 0x3F) << 6);
                if (v43 >> 10 >= 0x11)
                {
                  v37 = -2147418115;
                }
              }

              else
              {
                if (v38)
                {
                  if (v38 == 2 && v148 - v35 >= 2)
                  {
                    v39 = v35[1];
                    if ((v39 & 0xC0) == 0x80)
                    {
                      v40 = v37 & 0x1F;
                      v31 = v35 + 2;
                      v147 = v35 + 2;
                      v41 = v39 & 0x3F | (v40 << 6);
                      if (v40 >= 2)
                      {
                        v37 = v41;
                      }

                      else
                      {
                        v37 = -2147418115;
                      }

                      goto LABEL_69;
                    }
                  }

                  goto LABEL_67;
                }

                v31 = v35 + 1;
                v147 = v35 + 1;
              }

LABEL_69:
              v47 = (v37 << 11) | 0x7FF;
              v48 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
              v49 = 1496;
              do
              {
                v50 = v49 >> 1;
                v51 = &v48[v49 >> 1];
                v53 = *v51;
                v52 = v51 + 1;
                v49 += ~(v49 >> 1);
                if (v47 >= v53)
                {
                  v48 = v52;
                }

                else
                {
                  v49 = v50;
                }
              }

              while (v49);
              v6 = v37 & 0x7FFFFFFF;
              if (v48 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
              {
                v15 = 16;
                if (v33 <= 1)
                {
                  break;
                }

                goto LABEL_91;
              }

              v54 = *(v48 - 1);
              v55 = ((v54 >> 4) & 0x7F) + (v54 >> 11);
              v56 = v54 & 0xF;
              v15 = v55 >= v6 ? v56 : 16;
              if (v33 <= 1)
              {
                break;
              }

LABEL_91:
              if (v33 == 2)
              {
                if (v32 == 2)
                {
                  if (v15 == 3)
                  {
                    v32 = 0;
                    HIDWORD(v149[1]) = 0;
LABEL_140:
                    v33 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }

                  else
                  {
                    LODWORD(v149[1]) = 0;
                    if (v15 == 5 && !v36)
                    {
                      goto LABEL_161;
                    }

                    if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                    {
                      goto LABEL_322;
                    }

                    if (v36 > 6u)
                    {
                      if (v36 == 7)
                      {
                        goto LABEL_236;
                      }

                      if (v36 != 12)
                      {
                        goto LABEL_245;
                      }

LABEL_234:
                      if (v15 - 11 < 2)
                      {
                        goto LABEL_161;
                      }

                      if (v36 == 7)
                      {
LABEL_236:
                        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_161;
                      }

                      goto LABEL_245;
                    }

                    if (v36 == 4)
                    {
                      if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                      {
                        goto LABEL_306;
                      }

                      goto LABEL_161;
                    }

                    if (v36 == 6)
                    {
                      goto LABEL_234;
                    }

LABEL_245:
                    if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                    {
LABEL_306:
                      v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                      v89 = 201;
                      do
                      {
                        v90 = v89 >> 1;
                        v91 = &v68[v89 >> 1];
                        v93 = *v91;
                        v92 = v91 + 1;
                        v89 += ~(v89 >> 1);
                        if (v47 >= v93)
                        {
                          v68 = v92;
                        }

                        else
                        {
                          v89 = v90;
                        }
                      }

                      while (v89);
                      goto LABEL_311;
                    }

LABEL_161:
                    v33 = 0;
                    v32 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                else
                {
                  if (v32 != 1)
                  {
                    if (v15 == 13)
                    {
                      goto LABEL_138;
                    }

                    if (v15 != 2)
                    {
LABEL_142:
                      LODWORD(v149[1]) = 0;
                      if (v15 == 5 && !v36)
                      {
                        goto LABEL_230;
                      }

                      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                      {
                        goto LABEL_322;
                      }

                      if (v36 > 6u)
                      {
                        if (v36 == 7)
                        {
                          goto LABEL_219;
                        }

                        if (v36 == 12)
                        {
                          goto LABEL_217;
                        }
                      }

                      else
                      {
                        if (v36 == 4)
                        {
                          if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }

                        if (v36 != 6)
                        {
                          goto LABEL_239;
                        }

LABEL_217:
                        if (v15 - 11 < 2)
                        {
                          goto LABEL_230;
                        }

                        if (v36 == 7)
                        {
LABEL_219:
                          if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }
                      }

LABEL_239:
                      if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                      {
LABEL_300:
                        v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                        v84 = 201;
                        do
                        {
                          v85 = v84 >> 1;
                          v86 = &v68[v84 >> 1];
                          v88 = *v86;
                          v87 = v86 + 1;
                          v84 += ~(v84 >> 1);
                          if (v47 >= v88)
                          {
                            v68 = v87;
                          }

                          else
                          {
                            v84 = v85;
                          }
                        }

                        while (v84);
                        goto LABEL_311;
                      }

                      goto LABEL_230;
                    }

                    v32 = 1;
LABEL_139:
                    HIDWORD(v149[1]) = v32;
                    goto LABEL_140;
                  }

                  if (v15 != 2)
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_142;
                    }

LABEL_138:
                    v32 = 2;
                    goto LABEL_139;
                  }

                  v32 = 1;
                  v33 = 2;
                  LODWORD(v149[0]) = v6;
                  BYTE4(v149[0]) = 2;
                  if (v31 == v148)
                  {
                    goto LABEL_280;
                  }
                }
              }

              else
              {
                LODWORD(v149[1]) = 0;
                if (v15 == 9 || v15 == 5 && !v36)
                {
                  goto LABEL_230;
                }

                if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                {
                  goto LABEL_322;
                }

                if (v36 > 6u)
                {
                  if (v36 == 7)
                  {
                    goto LABEL_186;
                  }

                  if (v36 != 12)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v36 == 4)
                  {
                    if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_230;
                  }

                  if (v36 != 6)
                  {
                    goto LABEL_206;
                  }
                }

                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_186:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_230;
                }

LABEL_206:
                if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                {
LABEL_294:
                  v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                  v79 = 201;
                  do
                  {
                    v80 = v79 >> 1;
                    v81 = &v68[v79 >> 1];
                    v83 = *v81;
                    v82 = v81 + 1;
                    v79 += ~(v79 >> 1);
                    if (v47 >= v83)
                    {
                      v68 = v82;
                    }

                    else
                    {
                      v79 = v80;
                    }
                  }

                  while (v79);
LABEL_311:
                  if (v68 != &std::__indic_conjunct_break::__entries[abi:ne200100] && ((v94 = *(v68 - 1), (v94 & 3) == 0) ? (v95 = ((v94 >> 2) & 0x1FF) + (v94 >> 11) >= v6) : (v95 = 0), v95))
                  {
                    v66 = 1;
                    v67 = 16;
                  }

                  else
                  {
                    if (v15 != 3)
                    {
                      goto LABEL_317;
                    }

LABEL_279:
                    v66 = 2;
                    v67 = 12;
                  }

LABEL_320:
                  v96 = 0;
                  LODWORD(v149[1]) = v66;
                  goto LABEL_321;
                }

LABEL_230:
                v33 = 0;
                LODWORD(v149[0]) = v6;
                BYTE4(v149[0]) = v15;
                if (v31 == v148)
                {
                  goto LABEL_280;
                }
              }
            }

            if (!v33)
            {
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_156;
                }

                if (v36 == 12)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_170;
                }

LABEL_154:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_156:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }
              }

LABEL_170:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_282:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v69 = 201;
                do
                {
                  v70 = v69 >> 1;
                  v71 = &v68[v69 >> 1];
                  v73 = *v71;
                  v72 = v71 + 1;
                  v69 += ~(v69 >> 1);
                  if (v47 >= v73)
                  {
                    v68 = v72;
                  }

                  else
                  {
                    v69 = v70;
                  }
                }

                while (v69);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            v57 = &std::__indic_conjunct_break::__entries[abi:ne200100];
            v58 = 201;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[v58 >> 1];
              v62 = *v60;
              v61 = v60 + 1;
              v58 += ~(v58 >> 1);
              if (v47 >= v62)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
            if (v57 == &std::__indic_conjunct_break::__entries[abi:ne200100] || ((v63 = *(v57 - 1), v64 = ((v63 >> 2) & 0x1FF) + (v63 >> 11), v33 = v63 & 3, v33 != 3) ? (v65 = v64 >= v6) : (v65 = 0), !v65))
            {
              LODWORD(v149[1]) = 0;
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_167;
                }

                if (v36 == 12)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_189;
                }

LABEL_165:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_167:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }
              }

LABEL_189:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_288:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v74 = 201;
                do
                {
                  v75 = v74 >> 1;
                  v76 = &v68[v74 >> 1];
                  v78 = *v76;
                  v77 = v76 + 1;
                  v74 += ~(v74 >> 1);
                  if (v47 >= v78)
                  {
                    v68 = v77;
                  }

                  else
                  {
                    v74 = v75;
                  }
                }

                while (v74);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            if (!v34)
            {
              break;
            }

            if ((v33 - 1) >= 2)
            {
              v34 = 0;
              LODWORD(v149[2]) = 0;
            }

            v33 = 1;
            LODWORD(v149[0]) = v6;
            BYTE4(v149[0]) = v15;
            if (v31 == v148)
            {
LABEL_280:
              v35 = v148;
              if (v30 - 262142 < 0xFFFC1102)
              {
                goto LABEL_334;
              }

              goto LABEL_323;
            }
          }

          if (v33 != 1)
          {
            break;
          }

          v34 = 0;
          LODWORD(v149[0]) = v6;
          BYTE4(v149[0]) = v15;
          if (v31 == v148)
          {
            goto LABEL_280;
          }
        }

        if (v33 != 2)
        {
          break;
        }

        v34 = 1;
        LODWORD(v149[2]) = 1;
        v33 = 1;
        LODWORD(v149[0]) = v6;
        BYTE4(v149[0]) = v15;
        if (v31 == v148)
        {
          goto LABEL_280;
        }
      }

      LODWORD(v149[1]) = 0;
      if (v15 == 5 && !v36)
      {
        goto LABEL_229;
      }

      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
      {
        goto LABEL_322;
      }

      if (v36 > 6u)
      {
        if (v36 != 7)
        {
          if (v36 != 12)
          {
            goto LABEL_269;
          }

          goto LABEL_267;
        }

LABEL_37:
        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 == 4)
      {
        if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 != 6)
      {
        goto LABEL_269;
      }

LABEL_267:
      if (v15 - 11 < 2)
      {
LABEL_229:
        v34 = 0;
        goto LABEL_230;
      }

      if (v36 == 7)
      {
        goto LABEL_37;
      }

LABEL_269:
      if (v15 == 11 && v36 == 11 || v15 <= 0xD && ((1 << v15) & 0x2404) != 0 || v36 == 8)
      {
        goto LABEL_229;
      }

LABEL_277:
      v143 = result;
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v6))
      {
        v66 = 1;
        v67 = 16;
        result = v143;
        v17 = a2;
        v16 = a3;
        v18 = a4;
        goto LABEL_320;
      }

      result = v143;
      v17 = a2;
      v16 = a3;
      v18 = a4;
      if (v15 == 3)
      {
        goto LABEL_279;
      }

LABEL_317:
      if (v15 != 9)
      {
        goto LABEL_322;
      }

      v96 = 3;
      v67 = 8;
LABEL_321:
      *(v149 + v67) = v96;
LABEL_322:
      LODWORD(v149[0]) = v6;
      BYTE4(v149[0]) = v15;
      if (v30 - 262142 < 0xFFFC1102)
      {
        goto LABEL_334;
      }

LABEL_323:
      v97 = &std::__width_estimation_table::__entries[abi:ne200100];
      v98 = 107;
      do
      {
        v99 = v98 >> 1;
        v100 = &v97[v98 >> 1];
        v102 = *v100;
        v101 = v100 + 1;
        v98 += ~(v98 >> 1);
        if (((v30 << 14) | 0x3FFF) >= v102)
        {
          v97 = v101;
        }

        else
        {
          v98 = v99;
        }
      }

      while (v98);
      if (v97 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        goto LABEL_334;
      }

      if ((*(v97 - 1) & 0x3FFF) + (*(v97 - 1) >> 14) < v30)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      v104 = v103 + result;
      if (!v18)
      {
        goto LABEL_335;
      }

LABEL_29:
      v29 = v35 == v17 || v104 > v16;
      result = v104;
      if (v29)
      {
        return result;
      }
    }
  }

  if (v6 - 262142 >= 0xFFFC1102)
  {
    v105 = (v5 << 14) | 0x3FFF;
    if (v18)
    {
      if (v147 == v17)
      {
        v121 = 107;
        v122 = &std::__width_estimation_table::__entries[abi:ne200100];
        do
        {
          v123 = v121 >> 1;
          v124 = &v122[v121 >> 1];
          v126 = *v124;
          v125 = v124 + 1;
          v121 += ~(v121 >> 1);
          if (v105 >= v126)
          {
            v122 = v125;
          }

          else
          {
            v121 = v123;
          }
        }

        while (v121);
        if (v122 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
          return 1;
        }

        else if ((*(v122 - 1) & 0x3FFFu) + (*(v122 - 1) >> 14) < v6)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        result = 0;
        do
        {
          while (1)
          {
            v106 = &std::__width_estimation_table::__entries[abi:ne200100];
            v107 = 107;
            do
            {
              v108 = v107 >> 1;
              v109 = &v106[v107 >> 1];
              v111 = *v109;
              v110 = v109 + 1;
              v107 += ~(v107 >> 1);
              if (v105 >= v111)
              {
                v106 = v110;
              }

              else
              {
                v107 = v108;
              }
            }

            while (v107);
            if (v106 != &std::__width_estimation_table::__entries[abi:ne200100])
            {
              break;
            }

            if (++result > v16)
            {
              return result;
            }
          }

          if ((*(v106 - 1) & 0x3FFFu) + (*(v106 - 1) >> 14) < v6)
          {
            v112 = 1;
          }

          else
          {
            v112 = 2;
          }

          result += v112;
        }

        while (result <= v16);
      }
    }

    else if (v147 == v17)
    {
      v134 = 107;
      v135 = &std::__width_estimation_table::__entries[abi:ne200100];
      do
      {
        v136 = v134 >> 1;
        v137 = &v135[v134 >> 1];
        v139 = *v137;
        v138 = v137 + 1;
        v134 += ~(v134 >> 1);
        if (v105 >= v139)
        {
          v135 = v138;
        }

        else
        {
          v134 = v136;
        }
      }

      while (v134);
      if (v135 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        v140 = 1;
      }

      else
      {
        v140 = 1;
        if ((*(v135 - 1) & 0x3FFFu) + (*(v135 - 1) >> 14) >= v6)
        {
          v140 = 2;
        }
      }

      if (v140 <= v16)
      {
        return v140;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v113 = 0;
      do
      {
        while (1)
        {
          result = v113;
          v114 = &std::__width_estimation_table::__entries[abi:ne200100];
          v115 = 107;
          do
          {
            v116 = v115 >> 1;
            v117 = &v114[v115 >> 1];
            v119 = *v117;
            v118 = v117 + 1;
            v115 += ~(v115 >> 1);
            if (v105 >= v119)
            {
              v114 = v118;
            }

            else
            {
              v115 = v116;
            }
          }

          while (v115);
          if (v114 != &std::__width_estimation_table::__entries[abi:ne200100])
          {
            break;
          }

          v113 = result + 1;
          if (result + 1 > v16)
          {
            return result;
          }
        }

        if ((*(v114 - 1) & 0x3FFFu) + (*(v114 - 1) >> 14) < v6)
        {
          v120 = 1;
        }

        else
        {
          v120 = 2;
        }

        v113 = v120 + result;
      }

      while (v113 <= v16);
    }
  }

  else
  {
    result = v18 != 0 || v16 != 0;
    if ((v18 != 0 || v16 != 0) && v147 != v17)
    {
      if (v18)
      {
        if (v16 + 1 > 1)
        {
          return v16 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (v16 <= 1)
      {
        v127 = 1;
      }

      else
      {
        v127 = v16;
      }

      v26 = v127 != 0;
      v128 = v127 - 1;
      if (__PAIR128__(v26 - 1, v128) >= v16)
      {
        v128 = v16;
      }

      if (v128 && (v16 <= 1 ? (v129 = 1) : (v129 = v16), (v26 = v129 != 0, v130 = v129 - 1, __PAIR128__(v26 - 1, v130) >= v16) ? (v131 = v16) : (v131 = v130), (~v131 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v141 = v128 + 1;
        result = (v128 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v132 = (v128 + 1) | 1;
        v142 = result;
        do
        {
          v142 -= 2;
        }

        while (v142);
        if (v141 == result)
        {
          return result;
        }
      }

      else
      {
        v132 = 1;
      }

      do
      {
        v133 = v132 + 1;
        if (v132 > v16)
        {
          break;
        }

        ++v132;
      }

      while (v133 <= v16);
      return v133 - 1;
    }
  }

  return result;
}