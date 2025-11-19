void sub_296E56B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if ((a10 & 0x80) != 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
    mipc::dale_awd::Delete_Config_Cnf::~Delete_Config_Cnf(&a11);
    _Unwind_Resume(a1);
  }

  mipc::dale_awd::Delete_Config_Cnf::~Delete_Config_Cnf(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS3_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd17Delete_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS3_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd17Delete_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS3_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd17Delete_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS3_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd17Delete_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v2 = *((*a1)[3] + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Send update properties not supported on this device", buf, 2u);
  }

  v3 = *v1;
  v4 = v1[2];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *buf = v4;
  awd::AppContext::operator()();
  if (*buf)
  {
    _Block_release(*buf);
  }

  v5 = v1[2];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v1[1];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(v1);
  v7 = a1;
  if (a1)
  {
    v8 = a1[2];
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v7 = a1;
      }
    }

    operator delete(v7);
  }
}

void sub_296E56E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::unique_ptr<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(awd::AppContext ***a1)
{
  v77 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v39 = *a1;
  v2 = (*a1)[10];
  v4 = *(*a1 + 6);
  v3 = *(*a1 + 7);
  v5 = *(*a1 + 12);
  v6 = *(v2 + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    AppID = awd::AppContext::getAppID(*v1);
    *buf = 67109888;
    v67 = AppID;
    v68 = 1024;
    v69 = v4;
    v70 = 1024;
    v71 = v3;
    v72 = 1024;
    v73 = v5;
    _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Querying metric (appId: %d, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x)", buf, 0x1Au);
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v8;
  *v50 = v8;
  v48[3] = v8;
  v48[4] = v8;
  v48[1] = v8;
  v48[2] = v8;
  v48[0] = v8;
  mipc::dale_awd::Set_Queriable_Metrics_Req::Set_Queriable_Metrics_Req();
  v9 = awd::AppContext::getAppID(*v1);
  v10 = operator new(4uLL);
  *v10 = v9;
  v11 = __p[1];
  __p[1] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(4uLL);
  *v12 = v4;
  v13 = v51;
  v51 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(4uLL);
  *v14 = v3;
  v15 = v50[0];
  v50[0] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(4uLL);
  *v16 = v5;
  v17 = v50[1];
  v50[1] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v18;
  v54 = v18;
  v52 = v18;
  mipc::dale_awd::Set_Queriable_Metrics_Req::serialize(&v52, v48);
  if (v55)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v65 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v19;
  v64 = v19;
  v61 = v19;
  v62 = v19;
  v59 = v19;
  v60 = v19;
  v57 = v19;
  v58 = v19;
  MEMORY[0x29C266720](&v57, &v52);
  abb::router::SendProxy::SendProxy(buf, (v2 + 88), &v57);
  MEMORY[0x29C266730](&v57);
  if (v55 != -1)
  {
    *&v57 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v57 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v57 + v55))(&v40, &v52);
  }

  v20 = *(v2 + 2);
  if (!v20 || (v21 = *(v2 + 1), (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v40 = v21;
  v41 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v22;
    (v22->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v23);
  }

  v42 = v2;
  v24 = *v1;
  v43 = *v1;
  v25 = v1[1];
  v44 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  v26 = v1[9];
  if (v26)
  {
    v27 = _Block_copy(v26);
  }

  else
  {
    v27 = 0;
  }

  v46 = __PAIR64__(v3, v4);
  v47 = v5;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v55 = __PAIR64__(v3, v4);
  v29 = v40;
  v28 = v41;
  v40 = 0;
  v41 = 0;
  v56 = v5;
  *&v57 = v29;
  *(&v57 + 1) = v28;
  v52 = 0uLL;
  *&v58 = v2;
  *(&v58 + 1) = v24;
  v53 = v2;
  *&v59 = v25;
  *(&v59 + 1) = v27;
  v54 = 0uLL;
  *&v60 = v46;
  DWORD2(v60) = v5;
  v30 = operator new(0x48uLL);
  *v30 = &unk_2A1E11B50;
  v30[1] = v29;
  v30[2] = v28;
  v30[3] = v2;
  v30[4] = v24;
  v30[5] = v25;
  v31 = v46;
  v30[6] = v27;
  v30[7] = v31;
  *(v30 + 16) = v47;
  v76 = v30;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v75, v74);
  if (v76 == v75)
  {
    (*(*v76 + 32))(v76);
  }

  else if (v76)
  {
    (*(*v76 + 40))(v76);
  }

  MEMORY[0x29C266750](buf);
  mipc::dale_awd::Set_Queriable_Metrics_Req::~Set_Queriable_Metrics_Req(v48);
  if (v39)
  {
    v32 = v39[9];
    if (v32)
    {
      _Block_release(v32);
    }

    v33 = v39[1];
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    operator delete(v39);
  }

  v34 = a1;
  if (a1)
  {
    v35 = a1[2];
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
      v34 = a1;
    }

    operator delete(v34);
  }

  v36 = *MEMORY[0x29EDCA608];
}

void sub_296E57424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}::~Set_Queriable_Metrics_Cnf(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E11B50;
  v2 = a1[6];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E11B50;
  v2 = __p[6];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  v3 = v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v2 = &unk_2A1E11B50;
  *(v2 + 1) = v5;
  *(v2 + 2) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(v2 + 24) = *(a1 + 24);
  v6 = *(a1 + 40);
  *(v2 + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 56);
  *(v3 + 6) = v7;
  *(v3 + 7) = v8;
  *(v3 + 16) = *(a1 + 64);
  return v3;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2A1E11B50;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 40);
  *(a2 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a2 + 48) = result;
  v8 = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 56) = v8;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[2];
    if (!v4)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v40 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[4] = v4;
  v28[5] = v4;
  v28[2] = v4;
  v28[3] = v4;
  v28[0] = v4;
  v28[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(aBlock, this);
    if ((v30 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v31 = *aBlock;
    v6 = mipc::toErrorCode(LODWORD(aBlock[0]), v5);
    std::error_code::message(&buf[8], &v31);
    v38 = 0;
    v39 = 0;
    *buf = v6;
    MEMORY[0x29C267050](v28, buf, 1);
    v7 = v39;
    if (!v39 || atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (SHIBYTE(v37) < 0)
    {
LABEL_6:
      operator delete(*&buf[8]);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(aBlock, this);
    MEMORY[0x29C267060](v28, v8, *(aBlock[0] + 1) - *aBlock[0]);
    v9 = aBlock[1];
    if (aBlock[1] && !atomic_fetch_add(aBlock[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  *buf = 0;
  *&buf[8] = 0;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v11)
  {
    v13 = std::__shared_weak_count::lock(v11);
    v14 = v13;
    *&buf[8] = v13;
    if (v13)
    {
      *buf = *(a1 + 8);
      if (*buf)
      {
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_28:
          v18 = mipc::operator==();
          v19 = *(v12 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            AppID = awd::AppContext::getAppID(*(a1 + 32));
            v21 = "error";
            v22 = *(a1 + 56);
            v23 = *(a1 + 60);
            v24 = *(a1 + 64);
            if (v18)
            {
              v21 = "success";
            }

            *buf = 136316162;
            *&buf[4] = v21;
            *&buf[12] = 1024;
            *&buf[14] = AppID;
            v33 = 1024;
            v34 = v22;
            v35 = 1024;
            v36 = v23;
            v37 = 1024;
            LODWORD(v38) = v24;
            _os_log_impl(&dword_296E3E000, v19, OS_LOG_TYPE_DEFAULT, "#I Metric query %s (appId: %d, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x)", buf, 0x24u);
          }

          v25 = *(a1 + 32);
          v26 = *(a1 + 48);
          if (v26)
          {
            v26 = _Block_copy(v26);
          }

          *buf = v26;
          awd::AppContext::operator()();
          if (*buf)
          {
            _Block_release(*buf);
          }

          goto LABEL_36;
        }

        v15 = 0;
LABEL_27:
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v15)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  if (v17)
  {
    v17 = _Block_copy(v17);
  }

  aBlock[0] = v17;
  awd::AppContext::operator()();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = 1;
    goto LABEL_27;
  }

LABEL_36:
  mipc::dale_awd::Set_Queriable_Metrics_Cnf::~Set_Queriable_Metrics_Cnf(v28);
  v27 = *MEMORY[0x29EDCA608];
}

void sub_296E57E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1}>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Set_Queriable_Metrics_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS3_10AppContextEEERKNS3_10MetricInfoERKNS3_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd25Set_Queriable_Metrics_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS3_10AppContextEEERKNS3_10MetricInfoERKNS3_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd25Set_Queriable_Metrics_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS3_10AppContextEEERKNS3_10MetricInfoERKNS3_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd25Set_Queriable_Metrics_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS3_10AppContextEEERKNS3_10MetricInfoERKNS3_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd25Set_Queriable_Metrics_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::init(void)::$_0>(awd::MipcCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<awd::MipcCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v4 = v2->~__shared_weak_count_0, (v5 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Initializing", buf, 2u);
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E11BD0;
  *(v8 + 1) = v2;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v23 = v8;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E11C50;
  *(v9 + 1) = v2;
  *(v9 + 2) = v4;
  *(v9 + 3) = v6;
  v23 = v9;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E11CD0;
  *(v10 + 1) = v2;
  *(v10 + 2) = v4;
  *(v10 + 3) = v6;
  v23 = v10;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E11D50;
  *(v11 + 1) = v2;
  *(v11 + 2) = v4;
  *(v11 + 3) = v6;
  v23 = v11;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E11DD0;
  *(v12 + 1) = v2;
  *(v12 + 2) = v4;
  *(v12 + 3) = v6;
  v23 = v12;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E11E50;
  *(v13 + 1) = v2;
  *(v13 + 2) = v4;
  *(v13 + 3) = v6;
  v23 = v13;
  abb::router::Client::regIndHandlerInternal();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v23 = 0;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2A1E11ED0;
  *(v14 + 1) = v2;
  *(v14 + 2) = v4;
  *(v14 + 3) = v6;
  v23 = v14;
  abb::router::Client::regEventHandler();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x20uLL);
  *v15 = &unk_2A1E11F60;
  *(v15 + 1) = v2;
  *(v15 + 2) = v4;
  *(v15 + 3) = v6;
  v23 = v15;
  abb::router::Client::regEventHandler();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x20uLL);
  *v16 = &unk_2A1E11FE0;
  *(v16 + 1) = v2;
  *(v16 + 2) = v4;
  *(v16 + 3) = v6;
  v23 = v16;
  abb::router::Client::regEventHandler();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x20uLL);
  *v17 = &unk_2A1E12060;
  *(v17 + 1) = v2;
  *(v17 + 2) = v4;
  *(v17 + 3) = v6;
  v23 = v17;
  abb::router::Client::regEventHandler();
  if (v23 == buf)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  abb::router::Client::setIndShouldWake(&v2[2].~__shared_weak_count_0);
  abb::router::Client::setIndShouldWake(&v2[2].~__shared_weak_count_0);
  abb::router::Client::start(&v2[2].~__shared_weak_count_0);
  std::__shared_weak_count::__release_weak(v6);
  operator delete(v1);
  v18 = a1;
  if (a1)
  {
    v19 = a1[2];
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v18 = a1;
    }

    operator delete(v18);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_296E587A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void *);
  std::function<void ()(void)>::~function(va1);
  std::__shared_weak_count::__release_weak(v3);
  operator delete(v2);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11BD0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11BD0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11BD0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11BD0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[5] = v4;
  v17[6] = v4;
  v17[3] = v4;
  v17[4] = v4;
  v17[1] = v4;
  v17[2] = v4;
  v17[0] = v4;
  abb::router::Message::getRawMsg(&v15, this);
  v5 = *v15;
  abb::router::Message::getRawMsg(&v13, this);
  MEMORY[0x29C266FD0](v17, v5, v13[1] - *v13);
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleAddConfigResultInd_sync(v9, v17);
    }
  }

LABEL_15:
  mipc::dale_awd::Add_Config_Result_Ind::~Add_Config_Result_Ind(v17);
}

void sub_296E58C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mipc::dale_awd::Add_Config_Result_Ind::~Add_Config_Result_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E58C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_296E58C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Add_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Add_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Add_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Add_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11C50;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11C50;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11C50;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11C50;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[5] = v4;
  v17[6] = v4;
  v17[3] = v4;
  v17[4] = v4;
  v17[1] = v4;
  v17[2] = v4;
  v17[0] = v4;
  abb::router::Message::getRawMsg(&v15, this);
  v5 = *v15;
  abb::router::Message::getRawMsg(&v13, this);
  MEMORY[0x29C267010](v17, v5, v13[1] - *v13);
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleDeleteConfigResultInd_sync(v9, v17);
    }
  }

LABEL_15:
  mipc::dale_awd::Delete_Config_Result_Ind::~Delete_Config_Result_Ind(v17);
}

void sub_296E59024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mipc::dale_awd::Delete_Config_Result_Ind::~Delete_Config_Result_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E59038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_296E59054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Result_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd24Delete_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd24Delete_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd24Delete_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd24Delete_Config_Result_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11CD0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11CD0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11CD0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11CD0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[6] = v4;
  v18[7] = v4;
  v18[4] = v4;
  v18[5] = v4;
  v18[2] = v4;
  v18[3] = v4;
  v18[0] = v4;
  v18[1] = v4;
  abb::router::Message::getRawMsg(&v16, this);
  v5 = *v16;
  abb::router::Message::getRawMsg(&v14, this);
  MEMORY[0x29C266FB0](v18, v5, v14[1] - *v14);
  v6 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C266FC0](v18);
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C266FC0](v18);
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        return MEMORY[0x29C266FC0](v18);
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleSubmitTriggerInd_sync(v9, v18);
    }
  }

  return MEMORY[0x29C266FC0](v18);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Submit_Trigger_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd18Submit_Trigger_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd18Submit_Trigger_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd18Submit_Trigger_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd18Submit_Trigger_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11D50;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11D50;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11D50;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11D50;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[8] = v4;
  v18[9] = v4;
  v18[6] = v4;
  v18[7] = v4;
  v18[4] = v4;
  v18[5] = v4;
  v18[2] = v4;
  v18[3] = v4;
  v18[0] = v4;
  v18[1] = v4;
  abb::router::Message::getRawMsg(&v16, this);
  v5 = *v16;
  abb::router::Message::getRawMsg(&v14, this);
  MEMORY[0x29C266FF0](v18, v5, v14[1] - *v14);
  v6 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C267000](v18);
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C267000](v18);
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        return MEMORY[0x29C267000](v18);
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleMetricSubmissionInd_sync(v9, v18);
    }
  }

  return MEMORY[0x29C267000](v18);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd21Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11DD0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11DD0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11DD0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11DD0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[6] = v4;
  v18[7] = v4;
  v18[4] = v4;
  v18[5] = v4;
  v18[2] = v4;
  v18[3] = v4;
  v18[0] = v4;
  v18[1] = v4;
  abb::router::Message::getRawMsg(&v16, this);
  v5 = *v16;
  abb::router::Message::getRawMsg(&v14, this);
  MEMORY[0x29C267030](v18, v5, v14[1] - *v14);
  v6 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C267040](v18);
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      return MEMORY[0x29C267040](v18);
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        return MEMORY[0x29C267040](v18);
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleMetricSubmissionEndInd_sync(v9, v18);
    }
  }

  return MEMORY[0x29C267040](v18);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Metric_Submission_End_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd25Metric_Submission_End_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd25Metric_Submission_End_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd25Metric_Submission_End_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd25Metric_Submission_End_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11E50;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11E50;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11E50;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11E50;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(void *a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[4] = v4;
  v17[5] = v4;
  v17[2] = v4;
  v17[3] = v4;
  v17[0] = v4;
  v17[1] = v4;
  abb::router::Message::getRawMsg(&v15, this);
  v5 = *v15;
  abb::router::Message::getRawMsg(&v13, this);
  MEMORY[0x29C2670A0](v17, v5, v13[1] - *v13);
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (v10)
  {
    v11 = a1[2];
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (v11)
    {
LABEL_14:
      awd::MipcCommandDriver::handleBatchMetricSubmissionInd_sync(v9, v17);
    }
  }

LABEL_15:
  mipc::dale_awd::Batch_Metric_Submission_Ind::~Batch_Metric_Submission_Ind(v17);
}

void sub_296E5A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mipc::dale_awd::Batch_Metric_Submission_Ind::~Batch_Metric_Submission_Ind(va);
  _Unwind_Resume(a1);
}

void sub_296E5A038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_296E5A054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1}>(unsigned int,awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Batch_Metric_Submission_Ind const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd27Batch_Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd27Batch_Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd27Batch_Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlRKN4mipc8dale_awd27Batch_Metric_Submission_IndEE_EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11ED0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11ED0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11ED0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11ED0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[2];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v8 = 0;
          _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Started", v8, 2u);
        }

        awd::AwdCommandDriver::broadcastState_sync();
      }
    }
  }
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11F60;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11F60;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11F60;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11F60;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[2];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v8 = 0;
          _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Stopped", v8, 2u);
        }

        awd::AwdCommandDriver::broadcastState_sync();
      }
    }
  }
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E11FE0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E11FE0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E11FE0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E11FE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[2];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v8 = 0;
          _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Sleep", v8, 2u);
        }

        awd::AwdCommandDriver::broadcastState_sync();
      }
    }
  }
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#3}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE1_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE1_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE1_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE1_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12060;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12060;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E12060;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12060;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[2];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v8 = 0;
          _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Wakeup", v8, 2u);
        }

        awd::AwdCommandDriver::broadcastState_sync();
      }
    }
  }
}

uint64_t std::__function::__func<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4},std::allocator<awd::MipcCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#4}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE2_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE2_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE2_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3awd17MipcCommandDriver4initEvENK3$_0clEvEUlvE2_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void MipcWorkoutCommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x58uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MipcWorkoutCommandDriver::MipcWorkoutCommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<MipcWorkoutCommandDriver>::shared_ptr[abi:ne200100]<MipcWorkoutCommandDriver,std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;

  MipcWorkoutCommandDriver::init(v8);
}

void sub_296E5ADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void MipcWorkoutCommandDriver::init(MipcWorkoutCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<MipcWorkoutCommandDriver::init(void)::$_0>(MipcWorkoutCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcWorkoutCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<MipcWorkoutCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *MipcWorkoutCommandDriver::MipcWorkoutCommandDriver(void *a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  object[1] = *a2;
  object[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E121B8;
  ctu::OsLogContext::OsLogContext(&v18, "com.apple.telephony.abm", "workout.drv");
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v7 = dispatch_queue_create("workout.drv", v6);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    a1[4] = 0;
    dispatch_release(v8);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2667B0](a1 + 5, v14);
  MEMORY[0x29C2667C0](v14);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = &unk_2A1E121B8;
  a1[6] = v5;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v4 + 16))(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *a1 = &unk_2A1E120E0;
  v9 = a1[3];
  object[0] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  Registry::getRouterServer(&v18, *a2);
  v10 = v18;
  if (v18)
  {
    Registry::getRouterServer(v14, *a2);
    abb::router::Server::createLocalLink(&v15, v14[0]);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 8, "workout.drv", object, &v15);
  v11 = v16;
  if (v10)
  {
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v11 = v14[1];
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  return a1;
}

void sub_296E5B1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a17);
  if (object)
  {
    dispatch_release(object);
  }

  WorkoutCommandDriver::~WorkoutCommandDriver(v17);
  _Unwind_Resume(a1);
}

void WorkoutCommandDriver::~WorkoutCommandDriver(WorkoutCommandDriver *this)
{
  *this = &unk_2A1E121B8;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C2667C0](this + 40);
  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void MipcWorkoutCommandDriver::~MipcWorkoutCommandDriver(MipcWorkoutCommandDriver *this)
{
  *this = &unk_2A1E120E0;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v9, 2u);
  }

  *(this + 8) = &unk_2A1E11970;
  v4 = *(this + 10);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E121B8;
  v5 = *(this + 7);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C2667C0](v2);
  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

{
  MipcWorkoutCommandDriver::~MipcWorkoutCommandDriver(this);

  operator delete(v1);
}

void MipcWorkoutCommandDriver::sendWorkoutInfo(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  object = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    object = xpc_null_create();
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 == a3)
  {
    v18 = v17;
    (*(*v5 + 24))(v5, v17);
    goto LABEL_9;
  }

  v5 = (*(*v5 + 16))(v5);
LABEL_7:
  v18 = v5;
LABEL_9:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x30uLL);
  *v10 = a1;
  v10[1] = object;
  if (object)
  {
    xpc_retain(object);
    v11 = v18;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10[5] = 0;
    goto LABEL_18;
  }

  v10[1] = xpc_null_create();
  v11 = v18;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v11 == v17)
  {
    v10[5] = v10 + 2;
    (*(*v11 + 24))(v11);
  }

  else
  {
    v10[5] = v11;
    v18 = 0;
  }

LABEL_18:
  v12 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v18;
    if (v18 != v17)
    {
      goto LABEL_20;
    }

LABEL_23:
    (*(*v14 + 32))(v14);
    goto LABEL_24;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v14 = v18;
  if (v18 == v17)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

LABEL_24:
  xpc_release(object);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296E5B73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *ctu::SharedSynchronizable<WorkoutCommandDriver>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<MipcWorkoutCommandDriver>::shared_ptr[abi:ne200100]<MipcWorkoutCommandDriver,std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E121E0;
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

void sub_296E5B8EC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver*)#1}::operator() const(MipcWorkoutCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<MipcWorkoutCommandDriver *,std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver *)#1},std::allocator<MipcWorkoutCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<MipcWorkoutCommandDriver *,std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver *)#1},std::allocator<MipcWorkoutCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI24MipcWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI24MipcWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI24MipcWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI24MipcWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<MipcWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<MipcWorkoutCommandDriver>(MipcWorkoutCommandDriver*)::{lambda(MipcWorkoutCommandDriver*)#1}::operator() const(MipcWorkoutCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<MipcWorkoutCommandDriver::init(void)::$_0>(MipcWorkoutCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcWorkoutCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<MipcWorkoutCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v5 = v2->~__shared_weak_count_0, (v6 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
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

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E12230;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
  *(v9 + 3) = v2;
  v16 = v9;
  abb::router::Client::regEventHandler();
  if (v16 == buf)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E122B0;
  *(v10 + 1) = v5;
  *(v10 + 2) = v7;
  *(v10 + 3) = v2;
  v16 = v10;
  abb::router::Client::regEventHandler();
  if (v16 == buf)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  abb::router::Client::start(&v2[1].__get_deleter);
  std::__shared_weak_count::__release_weak(v7);
  operator delete(v1);
  v11 = a1;
  if (a1)
  {
    v12 = a1[2];
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      v11 = a1;
    }

    operator delete(v11);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_296E5BCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13)
{
  std::__shared_weak_count::__release_weak(v14);
  operator delete(v13);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_296E5BD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E12230;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E12230;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E12230;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E12230;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296E3E000, v6, OS_LOG_TYPE_DEFAULT, "#I Start event received", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::~__func(uint64_t result)
{
  *result = &unk_2A1E122B0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E122B0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E122B0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E122B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::operator()(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Stop event received", v9, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

uint64_t std::__function::__func<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1},std::allocator<MipcWorkoutCommandDriver::init(void)::$_0::operator() const(void)::{lambda(dispatch::group_session)#1}>,void ()(dispatch::group)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN24MipcWorkoutCommandDriver4initEvENK3$_0clEvEUlN8dispatch13group_sessionEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(dispatch::group)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v74 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v43 = *a1;
  v2 = (*a1)->__vftable;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  *v46 = v3;
  v44[3] = v3;
  v44[4] = v3;
  v44[1] = v3;
  v44[2] = v3;
  v44[0] = v3;
  mipc::dale_cps::Health_Activity_Req::Health_Activity_Req();
  value = xpc_dictionary_get_value(v1->__shared_owners_, "kKeyWorkoutType");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v6 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeyWorkoutState");
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v8 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeyWorkoutLocation");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v10 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeySwimLocation");
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v12 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(object) = 67109888;
    HIDWORD(object) = v5;
    v53 = 1024;
    v54 = v7;
    v55 = 1024;
    v56 = v9;
    v57 = 1024;
    v58 = v11;
    _os_log_impl(&dword_296E3E000, v12, OS_LOG_TYPE_DEFAULT, "#I Workout info: Type=%d State=%d Loc=%d SwimLoc=%d", &object, 0x1Au);
  }

  v13 = operator new(1uLL);
  *v13 = v5;
  v14 = __p[1];
  __p[1] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(1uLL);
  *v15 = v7;
  v16 = v46[0];
  v46[0] = v15;
  if (v16)
  {
    operator delete(v16);
  }

  if (v9)
  {
    v17 = operator new(1uLL);
    *v17 = v9;
    v18 = v46[1];
    v46[1] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  if (v11)
  {
    v19 = operator new(1uLL);
    *v19 = v11;
    v20 = v47;
    v47 = v19;
    if (v20)
    {
      operator delete(v20);
    }
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72[0] = v21;
  v72[1] = v21;
  v71 = v21;
  mipc::dale_cps::Health_Activity_Req::serialize(&v71, v44);
  if (v73)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v70 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v22;
  v69 = v22;
  v66 = v22;
  v67 = v22;
  v64 = v22;
  v65 = v22;
  v62 = v22;
  *v63 = v22;
  MEMORY[0x29C266720](&v62, &v71);
  abb::router::SendProxy::SendProxy(&object, &v2[1].__get_deleter, &v62);
  MEMORY[0x29C266730](&v62);
  if (v73 != -1)
  {
    *&v62 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v62 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (v63[v73 - 2])(&v48, &v71);
  }

  *&v48 = v2;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v24 = v2->~__shared_weak_count_0, (v25 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *(&v48 + 1) = v24;
  v49 = v25;
  atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    shared_weak_owners = v1[1].__shared_weak_owners_;
    if (shared_weak_owners)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = v25;
    (v25->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v27);
    shared_weak_owners = v1[1].__shared_weak_owners_;
    if (shared_weak_owners)
    {
LABEL_32:
      if (shared_weak_owners == &v1->__shared_weak_owners_)
      {
        v51 = v50;
        (*(*shared_weak_owners + 24))(shared_weak_owners, v50);
        shared_weak_owners = v51;
      }

      else
      {
        shared_weak_owners = (*(*shared_weak_owners + 16))(shared_weak_owners);
        v51 = shared_weak_owners;
      }

      goto LABEL_37;
    }
  }

  v51 = 0;
LABEL_37:
  v28 = v48;
  v71 = v48;
  v29 = v49;
  *&v72[0] = v49;
  *(&v48 + 1) = 0;
  v49 = 0;
  if (shared_weak_owners)
  {
    if (shared_weak_owners == v50)
    {
      v73 = v72 + 1;
      (*(*shared_weak_owners + 24))(shared_weak_owners, v72 + 8);
      v28 = v71;
      v29 = *&v72[0];
    }

    else
    {
      v73 = shared_weak_owners;
      v51 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v62 = v28;
  v63[0] = v29;
  *(&v71 + 1) = 0;
  *&v72[0] = 0;
  if (v73)
  {
    if (v73 == (v72 + 8))
    {
      *&v65 = &v63[1];
      (*(*v73 + 24))(v73, &v63[1]);
    }

    else
    {
      *&v65 = v73;
      v73 = 0;
    }
  }

  else
  {
    *&v65 = 0;
  }

  v61 = 0;
  v30 = operator new(0x40uLL);
  *v30 = &unk_2A1E12340;
  *(v30 + 8) = v62;
  v31 = v65;
  *(v30 + 3) = v63[0];
  *(&v62 + 1) = 0;
  v63[0] = 0;
  if (v31)
  {
    if (v31 == &v63[1])
    {
      *(v30 + 7) = v30 + 32;
      v32 = v30;
      ((*v31)[1].__vftable)(v31);
      v30 = v32;
    }

    else
    {
      *(v30 + 7) = v31;
      *&v65 = 0;
    }
  }

  else
  {
    *(v30 + 7) = 0;
  }

  v61 = v30;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v60, v59);
  if (v61 == v60)
  {
    (*(*v61 + 32))(v61);
    v33 = v65;
    if (v65 != &v63[1])
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (v61)
    {
      (*(*v61 + 40))();
    }

    v33 = v65;
    if (v65 != &v63[1])
    {
LABEL_56:
      if (v33)
      {
        (*(*v33 + 40))(v33);
      }

      v34 = v63[0];
      if (v63[0])
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }
  }

  (*(*v33 + 32))(v33);
  v34 = v63[0];
  if (v63[0])
  {
LABEL_59:
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_60:
  if (v73 == (v72 + 8))
  {
    (*(*v73 + 32))(v73);
    v35 = *&v72[0];
    if (*&v72[0])
    {
LABEL_64:
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  else
  {
    if (v73)
    {
      (*(*v73 + 40))(v73);
    }

    v35 = *&v72[0];
    if (*&v72[0])
    {
      goto LABEL_64;
    }
  }

  if (v51 == v50)
  {
    (*(*v51 + 32))(v51);
    v36 = v49;
    if (v49)
    {
LABEL_69:
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  else
  {
    if (v51)
    {
      (*(*v51 + 40))();
    }

    v36 = v49;
    if (v49)
    {
      goto LABEL_69;
    }
  }

  MEMORY[0x29C266750](&object);
  mipc::dale_cps::Health_Activity_Req::~Health_Activity_Req(v44);
  if (v43)
  {
    v37 = v43[1].__shared_weak_owners_;
    if (v37 == &v43->__shared_weak_owners_)
    {
      (*(*v37 + 32))(v37);
    }

    else if (v37)
    {
      (*(*v37 + 40))(v37);
    }

    xpc_release(v43->__shared_owners_);
    operator delete(v43);
  }

  v38 = a1;
  if (a1)
  {
    v39 = a1[2];
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      v38 = a1;
    }

    operator delete(v38);
  }

  v40 = *MEMORY[0x29EDCA608];
}

void sub_296E5CCE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3 == v1 + 16)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}::~Health_Activity_Cnf(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 16);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E12340;
  v2 = a1 + 4;
  v3 = a1[7];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(char *__p)
{
  *__p = &unk_2A1E12340;
  v2 = __p + 32;
  v3 = *(__p + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 3);
    if (v4)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 3);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E12340;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 != a1 + 32)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_6:
    *(v2 + 7) = v4;
    return v2;
  }

  *(v2 + 7) = v2 + 32;
  (*(*v4 + 24))(v4);
  return v2;
}

void sub_296E5D26C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E12340;
  *(a2 + 8) = *(result + 8);
  v3 = *(result + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  if (v4)
  {
    if (v4 == result + 32)
    {
      *(a2 + 56) = a2 + 32;
      return (*(**(result + 56) + 24))(*(result + 56));
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 56));
      *(a2 + 56) = result;
    }
  }

  else
  {
    *(a2 + 56) = 0;
  }

  return result;
}

void sub_296E5D36C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 24);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
LABEL_5:

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(char *__p)
{
  v2 = __p + 32;
  v3 = *(__p + 7);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(__p + 3);
    if (v4)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(__p + 3);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v30 = *MEMORY[0x29EDCA608];
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v4;
  v21 = v4;
  v18[1] = v4;
  v19 = v4;
  v18[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(buf, this);
    if ((v29 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v27 = *buf;
    v6 = mipc::toErrorCode(*buf, v5);
    std::error_code::message(&__p, &v27);
    v25 = 0;
    v26 = 0;
    v23 = v6;
    MEMORY[0x29C267160](v18, &v23, 1);
    v7 = v26;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
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
    abb::router::Message::getRawMsg(&v23, this);
    v8 = *v23;
    abb::router::Message::getRawMsg(buf, this);
    MEMORY[0x29C267170](v18, v8, *(*buf + 8) - **buf);
    v9 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
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
  if (v11)
  {
    v12 = a1[1];
    v13 = std::__shared_weak_count::lock(v11);
    __p.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      v14 = v13;
      v23 = a1[2];
      if (v23)
      {
        if ((mipc::operator==() & 1) == 0)
        {
          v15 = *(v12 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v19;
            _os_log_error_impl(&dword_296E3E000, v15, OS_LOG_TYPE_ERROR, "Sending workout info failed; %llu", buf, 0xCu);
          }
        }

        buf[0] = mipc::operator==();
        v16 = a1[7];
        if (!v16)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v16 + 48))(v16, buf);
      }

      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  mipc::dale_cps::Health_Activity_Cnf::~Health_Activity_Cnf(v18);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296E5D804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_296E5D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 80);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E5D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E5D848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  mipc::dale_cps::Health_Activity_Cnf::~Health_Activity_Cnf(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1}>(MipcWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_cps::Health_Activity_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN24MipcWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3$_0clEvEUlRN4mipc8dale_cps19Health_Activity_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN24MipcWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3$_0clEvEUlRN4mipc8dale_cps19Health_Activity_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN24MipcWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3$_0clEvEUlRN4mipc8dale_cps19Health_Activity_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN24MipcWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3$_0clEvEUlRN4mipc8dale_cps19Health_Activity_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

const char *abm::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5C7B0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5C800[a1];
  }
}

const char *abm::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5C820[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5C838[a1 - 1];
  }
}

void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_296E3E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x29EDCA608];
}

void Timestamp::Timestamp(Timestamp *this, const Timestamp **a2)
{
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *this = this + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    while (1)
    {
      v6 = *(v5 + 8);
      v8 = *this;
      v7 = *(this + 1);
      v9 = v3;
      if (*this != v3)
      {
        v10 = *(this + 1);
        v11 = v3;
        if (v7)
        {
          do
          {
            v9 = v10;
            v10 = *(v10 + 1);
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = *(v11 + 2);
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (v12);
        }

        if (*(v9 + 8) >= v6)
        {
          break;
        }
      }

      if (v7)
      {
        v13 = v9;
      }

      else
      {
        v13 = v3;
      }

      if (v7)
      {
        v14 = v9 + 8;
      }

      else
      {
        v14 = v3;
      }

      if (!*v14)
      {
        goto LABEL_25;
      }

LABEL_28:
      v19 = *(v5 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v5 + 2);
          v12 = *v20 == v5;
          v5 = v20;
        }

        while (!v12);
      }

      v5 = v20;
      if (v20 == v4)
      {
        return;
      }
    }

    v14 = v3;
    v13 = v3;
    if (v7)
    {
      v15 = *(this + 1);
      while (1)
      {
        while (1)
        {
          v13 = v15;
          v16 = *(v15 + 32);
          if (v16 <= v6)
          {
            break;
          }

          v15 = *v13;
          v14 = v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        if (v16 >= v6)
        {
          goto LABEL_28;
        }

        v15 = *(v13 + 1);
        if (!v15)
        {
          v14 = v13 + 8;
          break;
        }
      }
    }

LABEL_25:
    v17 = operator new(0x38uLL);
    v18 = *(v5 + 2);
    v17[6] = *(v5 + 6);
    *(v17 + 2) = v18;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v13;
    *v14 = v17;
    if (*v8)
    {
      *this = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v17);
    ++*(this + 2);
    goto LABEL_28;
  }
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v28 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v23 + 1) = 0xAAAAAAAA00000000;
  memset(&v24, 0, sizeof(v24));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v24))
  {
    v24.tm_isdst = -1;
    *&v23 = mktime(&v24);
    if (v23 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v27 = v20;
      _os_log_error_impl(&dword_296E3E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v27 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v23 = 0uLL;
  if (gettimeofday(&v23, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315138;
    v27 = v22;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_296E3E000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296E5E334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v8;
  v40[8] = v8;
  v40[5] = v8;
  v40[6] = v8;
  v40[3] = v8;
  v40[4] = v8;
  v40[1] = v8;
  v40[2] = v8;
  v39 = v8;
  v40[0] = v8;
  *__p = v8;
  v38 = v8;
  v35 = v8;
  v36 = v8;
  v33 = v8;
  v34 = v8;
  v32 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    v14 = *(v12 + 40);
    v13 = *(v12 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v30.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v31 = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v30.tm_mon = v15;
      *&v30.tm_isdst = v15;
      *&v30.tm_sec = v15;
      localtime_r(&v31, &v30);
      v45 = 0u;
      v46 = 0u;
      *__s = 0u;
      v44 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v16 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v16 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v16, &v30);
      v17 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, __s, v17);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "-", 1);
        v18 = v33;
        v19 = &v33 + *(v33 - 24);
        if (*(v19 + 36) == -1)
        {
          std::ios_base::getloc((&v33 + *(v33 - 24)));
          v20 = std::locale::use_facet(&v42, MEMORY[0x29EDC93D0]);
          (v20->__vftable[2].~facet_0)(v20, 32);
          std::locale::~locale(&v42);
          v18 = v33;
        }

        *(v19 + 36) = 48;
        *(&v34 + *(v18 - 24) + 8) = 3;
        MEMORY[0x29C267780](&v33, (v13 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x29C2677A0](&v33, v14);
  if ((a3 & 4) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
    v13 = (v13 / 1000);
  }

  MEMORY[0x29C267780](v21, v13);
LABEL_22:
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v23 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v23 = *(&v36 + 1);
    }

    v24 = v36;
    v22 = v23 - v36;
    if ((v23 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v22 = 0;
      a4[23] = 0;
      goto LABEL_36;
    }

    v24 = *(&v34 + 1);
    v22 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_40:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a4 + 1) = v22;
    *(a4 + 2) = v25 | 0x8000000000000000;
    *a4 = v26;
    a4 = v26;
    goto LABEL_35;
  }

  a4[23] = v22;
  if (v22)
  {
LABEL_35:
    memmove(a4, v24, v22);
  }

LABEL_36:
  a4[v22] = 0;
  *&v32 = *MEMORY[0x29EDC9528];
  v27 = *(MEMORY[0x29EDC9528] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v33 = v27;
  *(&v33 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C267970](v40);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E5E86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  MEMORY[0x29C267970](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C267870](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_296E5EB90(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](v1);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v8, v1);
  return v5;
}

void sub_296E5ECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C267970](a1 + 128);
  return a1;
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C267750](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C267760](v14);
  return a1;
}

void sub_296E5F3D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C267760](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296E5F3B8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_296E5F618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_1)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_1 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      capabilities::radio::maverick(v3);
    }
  }

  if (!qword_2A18B7D70)
  {
    qword_2A18B7D70 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a2)
  {
    v6 = "misc";
  }

  else
  {
    v6 = "send";
  }

  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  ctu::assign();
  v7 = _MergedGlobals_1;
  if (_MergedGlobals_1 && os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
    v9 = "recv";
    if (a2 != 1)
    {
      v9 = v6;
    }

    v10 = __p;
    *buf = 67109634;
    if (SHIBYTE(__p[2]) < 0)
    {
      v10 = __p[0];
    }

    v13 = a4;
    v14 = 2080;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_7;
    }
  }

  else if (SHIBYTE(__p[2]) < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_296E5F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v47 = v6;
  v46 = v6;
  v45 = v6;
  v44 = v6;
  v43 = v6;
  v42 = v6;
  v39 = v6;
  v38 = v6;
  *__p = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  v30 = v6;
  v31 = v6;
  v41 = 0;
  v7 = MEMORY[0x29EDC95A8] + 64;
  v37 = MEMORY[0x29EDC95A8] + 64;
  v8 = MEMORY[0x29EDC9538];
  v9 = *(MEMORY[0x29EDC9538] + 16);
  v29 = *(MEMORY[0x29EDC9538] + 8);
  *(&v29 + *(v29 - 24)) = v9;
  v10 = (&v29 + *(v29 - 24));
  std::ios_base::init(v10, &v30);
  v11 = MEMORY[0x29EDC95A8] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v29 = v11;
  v37 = v7;
  v12 = MEMORY[0x29EDC9568] + 16;
  *&v30 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C267870](&v30 + 8);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v13 = MEMORY[0x29EDC9570] + 16;
  *&v30 = MEMORY[0x29EDC9570] + 16;
  *__p = 0u;
  v35 = 0u;
  LODWORD(v36) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v30);
  v14 = MEMORY[0x29C267780](&v29, a2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
  v16 = strlen(a3);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a3, v16);
  memset(__dst, 170, sizeof(__dst));
  if ((v36 & 0x10) != 0)
  {
    v23 = *(&v35 + 1);
    if (*(&v35 + 1) < v33)
    {
      *(&v35 + 1) = v33;
      v23 = v33;
    }

    v24 = *(&v32 + 1);
    v21 = v23 - *(&v32 + 1);
    if ((v23 - *(&v32 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v21 = 0;
      HIBYTE(__dst[2]) = 0;
      v22 = __dst;
      goto LABEL_15;
    }

    v24 = v31;
    v21 = v32 - v31;
    if (v32 - v31 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    v22 = operator new(v25);
    __dst[1] = v21;
    __dst[2] = (v25 | 0x8000000000000000);
    __dst[0] = v22;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v21;
  v22 = __dst;
  if (v21)
  {
LABEL_14:
    v17 = memmove(v22, v24, v21);
  }

LABEL_15:
  *(v22 + v21) = 0;
  v26 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v26 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v17, v18, v19, v20, v26);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  v29 = *v8;
  *(&v29 + *(v29 - 24)) = v8[3];
  *&v30 = v13;
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p[0]);
  }

  *&v30 = v12;
  std::locale::~locale(&v30 + 1);
  std::ostream::~ostream();
  return MEMORY[0x29C267970](&v37);
}

void sub_296E5FC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a17);
    MEMORY[0x29C267970](v31);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a17);
  MEMORY[0x29C267970](v31);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = v8;
  v42[2] = v8;
  v42[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v42);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C266960](v42, a2);
    MEMORY[0x29C266960](v9, ": ");
  }

  MEMORY[0x29C266820](&v40, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C266840](&v40);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v39 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v39) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C266800](v42);
  ctu::LogMessageBuffer::takeMetadata(v42);
  ctu::LogMessage::LogMessage();
  v40 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E123D0;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v41 = v17;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if ((a1 - 1) < 2)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  v34 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v34[v27] = 0;
  if ((a1 - 1) < 2)
  {
    goto LABEL_49;
  }

LABEL_36:
  if (a1)
  {
    v31 = qword_2A18B7D70;
    if (qword_2A18B7D70 && os_log_type_enabled(qword_2A18B7D70, OS_LOG_TYPE_DEFAULT))
    {
      v33 = &v40[2];
      if (SHIBYTE(v40[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = v33->__words[0];
      }

      *buf = 136315138;
      v45 = v33;
      goto LABEL_47;
    }
  }

  else
  {
    v31 = _MergedGlobals_1;
    if (_MergedGlobals_1 && os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
    {
      v32 = &v40[2];
      if (SHIBYTE(v40[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v32 = v32->__words[0];
      }

      *buf = 136315138;
      v45 = v32;
LABEL_47:
      _os_log_impl(&dword_296E3E000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

LABEL_49:
  v35 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  result = MEMORY[0x29C266840](v42);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296EB9933)
  {
    if (((v2 & 0x8000000296EB9933 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296EB9933))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296EB9933 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void radio::MipcRFSCommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC8uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::MipcRFSCommandDriver::MipcRFSCommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::MipcRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::MipcRFSCommandDriver,std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5radio20MipcRFSCommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_0;
  v11[4] = v8;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((v8 + 8), v11);
}

void sub_296E605B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296E605C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void radio::MipcRFSCommandDriver::init(radio::MipcRFSCommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio20MipcRFSCommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_0;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t radio::MipcRFSCommandDriver::MipcRFSCommandDriver(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  object[1] = *a2;
  v17 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::RFSCommandDriver::RFSCommandDriver();
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  *a1 = &unk_2A1E12420;
  Name = radio::RFSCommandDriver::getName(a1);
  v6 = *(a1 + 24);
  object[0] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  Registry::getRouterServer(&v12, *a2);
  v7 = v12;
  if (v12)
  {
    Registry::getRouterServer(v11, *a2);
    abb::router::Server::createLocalLink(&v14, v11[0]);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 112, Name, object, &v14);
  v8 = v15;
  if (v7)
  {
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v8 = v11[1];
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

void sub_296E60884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
    radio::RFSCommandDriver::~RFSCommandDriver(v16);
    _Unwind_Resume(a1);
  }

  radio::RFSCommandDriver::~RFSCommandDriver(v16);
  _Unwind_Resume(a1);
}

void sub_296E608F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20MipcRFSCommandDriver4initEv_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", v10, 2u);
  }

  v3 = v1[2];
  if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E125A0;
  *(v8 + 1) = v1;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  v11 = v8;
  abb::router::Client::regIndHandlerInternal();
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  abb::router::Client::start((v1 + 14));
  std::__shared_weak_count::__release_weak(v6);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296E60AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::function<void ()(abb::router::Message const&)>::~function(&a9);
  std::__shared_weak_count::__release_weak(v9);
  _Unwind_Resume(a1);
}

void sub_296E60AF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void radio::MipcRFSCommandDriver::sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "sync";
    _os_log_debug_impl(&dword_296E3E000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v12 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke;
  v13 = &__block_descriptor_tmp_22;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v16 = 0;
  dispatch_async(v6, &block);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_296E60D0C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E60D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E60D38);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void radio::MipcRFSCommandDriver::checkRFSStatus(radio::MipcRFSCommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio20MipcRFSCommandDriver14checkRFSStatusEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(this + 1, v1);
}

void ___ZN5radio20MipcRFSCommandDriver14checkRFSStatusEv_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "checkRFSStatus_block_invoke";
    _os_log_impl(&dword_296E3E000, v1, OS_LOG_TYPE_DEFAULT, "#I %s: not supported", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::MipcRFSCommandDriver::setStartHandler(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20MipcRFSCommandDriver15setStartHandlerEN8dispatch8callbackIU13block_pointerFvjEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_4;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio20MipcRFSCommandDriver15setStartHandlerEN8dispatch8callbackIU13block_pointerFvjEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 144);
  *(v3 + 144) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvjEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvjEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::MipcRFSCommandDriver::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20MipcRFSCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_5;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio20MipcRFSCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 168);
  *(v3 + 168) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 176);
  *(v3 + 176) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c64_ZTSN8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c64_ZTSN8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::MipcRFSCommandDriver::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20MipcRFSCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_6;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio20MipcRFSCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 192);
  *(v3 + 192) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::MipcRFSCommandDriver::setIndicationHandler(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20MipcRFSCommandDriver20setIndicationHandlerEN8dispatch8callbackIU13block_pointerFvbyyEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_7;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio20MipcRFSCommandDriver20setIndicationHandlerEN8dispatch8callbackIU13block_pointerFvbyyEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 160);
  *(v3 + 160) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c48_ZTSN8dispatch8callbackIU13block_pointerFvbyyEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c48_ZTSN8dispatch8callbackIU13block_pointerFvbyyEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::MipcRFSCommandDriver::~MipcRFSCommandDriver(radio::MipcRFSCommandDriver *this)
{
  radio::MipcRFSCommandDriver::~MipcRFSCommandDriver(this);

  operator delete(v1);
}

{
  *this = &unk_2A1E12420;
  v2 = *(this + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 18);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 17);
  if (v9)
  {
    _Block_release(v9);
  }

  *(this + 14) = &unk_2A1E11970;
  v10 = *(this + 16);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = this;
  }

  else
  {
    v11 = this;
  }

  radio::RFSCommandDriver::~RFSCommandDriver(v11);
}

atomic_ullong *std::shared_ptr<radio::MipcRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::MipcRFSCommandDriver,std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E12550;
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

void sub_296E618E4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver*)#1}::operator() const(radio::MipcRFSCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::MipcRFSCommandDriver *,std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver *)#1},std::allocator<radio::MipcRFSCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::MipcRFSCommandDriver *,std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver *)#1},std::allocator<radio::MipcRFSCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_20MipcRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_20MipcRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_20MipcRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_20MipcRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::MipcRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::MipcRFSCommandDriver>(radio::MipcRFSCommandDriver*)::{lambda(radio::MipcRFSCommandDriver*)#1}::operator() const(radio::MipcRFSCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EED1Ev(uint64_t result)
{
  *result = &unk_2A1E125A0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EED0Ev(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E125A0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *_ZNKSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E125A0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EE7__cloneEPNS0_6__baseISH_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E125A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EEclESD_(void *a1, abb::router::Message *this)
{
  v46 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v4;
  v28 = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v26[0] = v4;
  abb::router::Message::getRawMsg(buf, this);
  v5 = **buf;
  abb::router::Message::getRawMsg(&v29, this);
  MEMORY[0x29C266E10](v26, v5, v29[1] - *v29);
  v6 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v35;
  if (v35 && !atomic_fetch_add((v35 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = a1[3];
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  v33 = v10;
  if (v10)
  {
    v11 = v10;
    if (a1[2])
    {
      if (mipc::operator==())
      {
        v12 = **(&v27 + 1);
        v13 = *v28;
        v14 = **(&v28 + 1);
        v15 = v9[5];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240704;
          *&buf[4] = v12;
          LOWORD(v35) = 1026;
          *(&v35 + 2) = v13;
          HIWORD(v35) = 1026;
          LODWORD(v36) = v14;
          _os_log_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEFAULT, "#I Control_Nvram_Ind: type: %{public}u, reason: %{public}u, reboot: %{public}u", buf, 0x14u);
        }

        v16 = v9[19];
        if (v16 && v9[20])
        {
          v17 = _Block_copy(v16);
          v18 = v17;
          v19 = v9[20];
          *buf = MEMORY[0x29EDCA5F8];
          v35 = 1174405120;
          v36 = ___ZNK8dispatch8callbackIU13block_pointerFvbyyEEclIJhhhEEEvDpT__block_invoke;
          v37 = &__block_descriptor_tmp_20;
          if (v17)
          {
            v20 = _Block_copy(v17);
          }

          else
          {
            v20 = 0;
          }

          v38 = v20;
          v39 = v14;
          v40 = v12;
          v41 = v13;
          dispatch_async(v19, buf);
          if (v38)
          {
            _Block_release(v38);
          }

          if (v18)
          {
            _Block_release(v18);
          }
        }

        else
        {
          v24 = v9[5];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296E3E000, v24, OS_LOG_TYPE_ERROR, "error: invalid client indication handler", buf, 2u);
          }
        }
      }

      else
      {
        v21 = v9[5];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          mipc::ResponseMessage::getError(v26, buf);
          v22 = mipc::asString();
          mipc::ResponseMessage::getError(v26, &v29);
          v23 = &v30;
          if (v31 < 0)
          {
            v23 = &v30->__vftable;
          }

          *v42 = 136315394;
          v43 = v22;
          v44 = 2080;
          v45 = v23;
          _os_log_error_impl(&dword_296E3E000, v21, OS_LOG_TYPE_ERROR, "Control_Nvram_Ind error: %s, %s\n", v42, 0x16u);
          mipc::Error::~Error(&v29);
          mipc::Error::~Error(buf);
        }
      }
    }

    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_31:
  mipc::cust::Control_Nvram_Ind::~Control_Nvram_Ind(v26);
  v25 = *MEMORY[0x29EDCA608];
}

void sub_296E61F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3__0EEvjOT_EUlRKNS3_7MessageEE_NS_9allocatorISE_EEFvSD_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3$_0EEvjOT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3$_0EEvjOT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3$_0EEvjOT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router6Client13regIndHandlerIZZN5radio20MipcRFSCommandDriver4initEvEUb_E3$_0EEvjOT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mipc::ResponseMessage::getError(mipc::ResponseMessage *this@<X0>, void *a2@<X8>)
{
  *a2 = *(this + 4);
  v4 = (a2 + 1);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 5), *(this + 6));
    v5 = *(this + 9);
    a2[4] = *(this + 8);
    a2[5] = v5;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 40);
    a2[3] = *(this + 7);
    v5 = *(this + 9);
    a2[4] = *(this + 8);
    a2[5] = v5;
    if (!v5)
    {
      return;
    }
  }

  atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
}

void *__copy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFvbyyEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFvbyyEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E12648;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::operator()<ctu::cf::CFSharedRef<__CFError> const&,ctu::cf::CFSharedRef<__CFDictionary const> const&>(uint64_t *a1, const void **a2, const void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  (*(v4 + 16))(v4, &v8, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296E62434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
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

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
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

void radio::MipcCommandDriver::create(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x158uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::MipcCommandDriver::MipcCommandDriver(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::MipcCommandDriver>::shared_ptr[abi:ne200100]<radio::MipcCommandDriver,std::shared_ptr<radio::MipcCommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::MipcCommandDriver>(radio::MipcCommandDriver*)::{lambda(radio::MipcCommandDriver*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v10 = *a3;

  radio::MipcCommandDriver::init(v10);
}

void sub_296E62624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v3)
  {
    dispatch_release(v3);
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::init(radio::MipcCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::init(void)::$_0>(radio::MipcCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t radio::MipcCommandDriver::MipcCommandDriver(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v20 = *a2;
  if (v20)
  {
    dispatch_retain(v20);
  }

  v5 = *(a3 + 8);
  object[1] = *a3;
  v19 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::CommandDriver::CommandDriver();
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  *a1 = &unk_2A1E126B8;
  Name = radio::CommandDriver::getName(a1);
  v7 = *(a1 + 24);
  object[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  Registry::getRouterServer(&v14, *a3);
  v8 = v14;
  if (v14)
  {
    Registry::getRouterServer(v13, *a3);
    abb::router::Server::createLocalLink(&v16, v13[0]);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 232, Name, object, &v16);
  v9 = v17;
  if (v8)
  {
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v9 = v13[1];
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object[0];
  if (object[0])
  {
    dispatch_release(object[0]);
  }

  radio::OpMode::create(v11);
  *(a1 + 272) = a1 + 272;
  *(a1 + 280) = a1 + 272;
  *(a1 + 336) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 313) = 0u;
  return a1;
}

void sub_296E629C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  if (object)
  {
    dispatch_release(object);
  }

  radio::CommandDriver::~CommandDriver(v15);
  _Unwind_Resume(a1);
}

void sub_296E62A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  v10 = *(v8 - 56);
  if (v10)
  {
    dispatch_release(v10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E62A28);
}

void radio::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E12918;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this[25];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[23];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[21];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[19];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[18];
  if (v6)
  {
    _Block_release(v6);
  }

  if (this[17])
  {
    v7 = this[16];
    v8 = *(this[15] + 1);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    this[17] = 0;
    if (v7 != (this + 15))
    {
      do
      {
        v19 = *(v7 + 1);
        v18 = *(v7 + 2);
        if (v18)
        {
          _Block_release(v18);
        }

        operator delete(v7);
        v7 = v19;
      }

      while (v19 != (this + 15));
    }
  }

  if (this[14])
  {
    v10 = this[13];
    v11 = *(this[12] + 1);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    this[14] = 0;
    if (v10 != (this + 12))
    {
      do
      {
        v21 = *(v10 + 1);
        v20 = *(v10 + 2);
        if (v20)
        {
          _Block_release(v20);
        }

        operator delete(v10);
        v10 = v21;
      }

      while (v21 != (this + 12));
    }
  }

  this[9] = &unk_2A1E12A98;
  v13 = this[11];
  if (v13)
  {
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
      if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v13 + 24))(v13);
      }
    }
  }

  this[6] = &unk_2A1E12B58;
  v14 = this[8];
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

  MEMORY[0x29C2667C0](this + 5);
  v15 = this[4];
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = this[3];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = this[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void radio::MipcCommandDriver::~MipcCommandDriver(radio::MipcCommandDriver *this)
{
  *this = &unk_2A1E126B8;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v3 = *(this + 42);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    _Block_release(v5);
  }

  if (*(this + 36))
  {
    v6 = *(this + 35);
    v7 = *(*(this + 34) + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 36) = 0;
    if (v6 != (this + 272))
    {
      do
      {
        v11 = *(v6 + 1);
        v12 = *(v6 + 3);
        if (v12)
        {
          dispatch_release(v12);
        }

        v13 = *(v6 + 2);
        if (v13)
        {
          _Block_release(v13);
        }

        operator delete(v6);
        v6 = v11;
      }

      while (v11 != (this + 272));
    }
  }

  v9 = *(this + 33);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *(this + 29) = &unk_2A1E11970;
  v10 = *(this + 31);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  radio::CommandDriver::~CommandDriver(this);
}

{
  radio::MipcCommandDriver::~MipcCommandDriver(this);

  operator delete(v1);
}

void radio::MipcCommandDriver::reset(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v6 = _Block_copy(*a3);
    v7 = *(a3 + 8);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = *(a3 + 8);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  radio::MipcCommandDriver::powerOff(a1, a2, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }
}

void radio::MipcCommandDriver::powerOff(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *a3;
    if (*a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v11 = 0;
    v12 = *(a3 + 8);
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  v11 = _Block_copy(v10);
  v12 = *(a3 + 8);
  if (v12)
  {
LABEL_6:
    dispatch_retain(v12);
  }

LABEL_7:
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x30uLL);
  *v17 = a1;
  v17[1] = v7;
  v17[2] = v9;
  v17[3] = a2;
  v17[4] = v11;
  v17[5] = v12;
  v18 = a1[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::powerOff(unsigned long long,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);

    std::__shared_weak_count::__release_weak(v16);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void radio::MipcCommandDriver::releaseResetDetect(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "releaseResetDetect";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  v12 = &__block_descriptor_tmp_120;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v5, &block);
  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296E6345C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E63494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E63484);
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

void radio::MipcCommandDriver::getBasebandTime(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getBasebandTime";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296E63754(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E63790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E63780);
}

void radio::MipcCommandDriver::getBasebandStatus(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getBasebandStatus";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296E639A8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E639E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E639D4);
}

void radio::MipcCommandDriver::getBasebandFWVersion(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getBasebandFWVersion(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void *dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void radio::MipcCommandDriver::getFactoryCalibrationStatus(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getFactoryCalibrationStatus";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296E63D84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296E63DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296E63DB0);
}

void radio::MipcCommandDriver::getRFCalibrationStatus(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getRFCalibrationStatus(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getWakeReason(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_12:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v5;
  v15[2] = v7;
  v15[3] = v9;
  v15[4] = v10;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getWakeReason(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);

    std::__shared_weak_count::__release_weak(v14);
  }
}

void radio::MipcCommandDriver::sendRadioStateChangeRequest(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = a1[2];
  if (!v5 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x28uLL);
  *v16 = a1;
  v16[1] = v9;
  v16[2] = v11;
  v16[3] = a2;
  *(v16 + 32) = a3;
  *(v16 + 33) = a4;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);

    std::__shared_weak_count::__release_weak(v15);
  }
}

void radio::MipcCommandDriver::sendServiceTypeChangeRequest(radio::MipcCommandDriver *this, uint64_t a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 2);
  if (!v10 || (v11 = *(this + 1), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = operator new(0x28uLL);
  *v14 = this;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = a2;
  *(v14 + 32) = a3;
  v15 = *(this + 3);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);

    std::__shared_weak_count::__release_weak(v13);
  }
}

void radio::MipcCommandDriver::sendSkipperModeSwitchRequest(radio::MipcCommandDriver *this, uint64_t a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 2);
  if (!v10 || (v11 = *(this + 1), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = operator new(0x28uLL);
  *v14 = this;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = a2;
  *(v14 + 32) = a3;
  v15 = *(this + 3);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);

    std::__shared_weak_count::__release_weak(v13);
  }
}

void radio::MipcCommandDriver::setOperatingMode(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = a1[5];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT) || ((v9 = a1[32], radio::OpMode::modeToString(), v16 >= 0) ? (p_p = &__p) : (p_p = __p), *buf = 136446210, v18 = p_p, _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to set operating mode to %{public}s", buf, 0xCu), (v16 & 0x80000000) == 0))
  {
    v11 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  v11 = *a4;
  if (*a4)
  {
LABEL_7:
    v11 = _Block_copy(v11);
  }

LABEL_8:
  v12 = *(a4 + 8);
  *&aBlock = v11;
  *(&aBlock + 1) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  radio::MipcCommandDriver::handleOpModeChangeRequest(a1, a2, a3, &aBlock);
  if (*(&aBlock + 1))
  {
    dispatch_release(*(&aBlock + 1));
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_296E646BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::MipcCommandDriver::handleOpModeChangeRequest(void *a1, uint64_t a2, char a3, __int128 *a4)
{
  v14 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v5 = a1[2];
  if (!v5 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = operator new(0x28uLL);
  *v11 = a1;
  *(v11 + 1) = a2;
  v11[16] = a3;
  *(v11 + 24) = v14;
  v12 = a1[3];
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v11;
  v13[1] = v8;
  v13[2] = v10;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::handleOpModeChangeRequest(unsigned long long,radio::OperatingMode,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void radio::MipcCommandDriver::forceOperatingMode(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*a4)
  {
    v8 = _Block_copy(*a4);
    v9 = *(a4 + 8);
    v10 = v8;
    v11 = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v9 = *(a4 + 8);
  v10 = 0;
  v11 = v9;
  if (v9)
  {
LABEL_3:
    dispatch_retain(v9);
  }

LABEL_4:
  radio::MipcCommandDriver::setOperatingMode(a1, a2, a3, &v10);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }
}

void radio::MipcCommandDriver::getOperatingMode(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void radio::MipcCommandDriver::getResetProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D not supported!", block, 2u);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v7 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  block[3] = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v11 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v11 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v12 = 0;
  dispatch_async(v5, block);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296E64BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::sendBatteryInfoUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEBUG, "#D not supported!", block, 2u);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v9 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a4)
  {
    v6 = _Block_copy(*a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 8);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_120;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  dispatch_async(v7, block);
  if (v13)
  {
    CFRelease(v13);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296E64DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::MipcCommandDriver::getAntennaTxPort(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getAntennaTxPort";
    _os_log_debug_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v12 = &__block_descriptor_tmp_140;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v5, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
  v6 = *MEMORY[0x29EDCA608];
}